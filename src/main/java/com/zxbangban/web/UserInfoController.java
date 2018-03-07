package com.zxbangban.web;

import com.zxbangban.entity.UserInfo;
import com.zxbangban.util.MD5Util;
import com.zxbangban.service.UserInfoService;
import com.zxbangban.util.WXAutoUtil;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Date;

/**
 * Created by pingyr on 2017/7/13.
 */
@Controller
@RequestMapping("/account")
@SessionAttributes({"uid","headimg","unionid"})
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;


    @RequestMapping("/signin")
    public String signin(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse,Model model){
        if(httpServletRequest.getSession().getAttribute("uid") == null){
            return "signin";
        }else {
            String uid = (String) httpServletRequest.getSession().getAttribute("uid");
            Cookie[] cookies = httpServletRequest.getCookies();
            if(cookies != null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("uid")){
                        cookie.setValue(uid);

                    }else {
                        cookie = new Cookie("uid",uid);
                    }
                    model.addAttribute("uid",uid);
                    cookie.setPath("/");
                    httpServletResponse.addCookie(cookie);
                }
            }

            return "redirect:/home";
        }
    }

    @RequestMapping("/signup")
    public String signUp(){
        return "signup";
    }

/*    @RequestMapping("/weixinlogin")
    public void weiXinLogin(HttpServletResponse httpServletResponse,Model model){
        String url = "https://open.weixin.qq.com/connect/qrconnect?appid=" + WXAutoUtil.appId +
                "&redirect_uri=https%3a%2f%2fwww.zxbangban.com%2faccount%2fwxtoken&response_type=code&scope=snsapi_login&state=STATE#wechat_redirect";
        httpServletResponse.setContentType("text/html;charset=UTF-8");
        try {
            httpServletResponse.sendRedirect(url);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }*/

    @RequestMapping(value = "/wxtoken")
    public String wxtoken(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse,Model model){

      httpServletResponse.setContentType("text/html;charset=UTF-8");
        String code = httpServletRequest.getParameter("code");
        String url1 = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + WXAutoUtil.appId + "&secret=" + WXAutoUtil.appSecret +
                "&code=" + code + "&grant_type=authorization_code";
        try {
            JSONObject jsonObject1 = WXAutoUtil.doGetJson(url1);
            String access_token = jsonObject1.getString("access_token");
            String refresh_token = jsonObject1.getString("refresh_token");
            String openid = jsonObject1.getString("openid");
            String unionid = jsonObject1.getString("unionid");
            UserInfo userInfo = userInfoService.queryByUnionId(unionid);
            //如果userinfo不为null，说明已经绑定微信；否则就是第一次绑定微信
            if (userInfo !=null){
                userLogin(httpServletRequest, httpServletResponse, model, userInfo.getUsername(), userInfo.getHeadImgUrl());
                return "redirect:/home";
            }else {
            String url2 = "https://api.weixin.qq.com/sns/userinfo?access_token=" + access_token + "&openid=" + openid;
            JSONObject jsonObject2 = WXAutoUtil.doGetJson(url2);
            String headimgurl = URLEncoder.encode(jsonObject2.getString("headimgurl"),"UTF-8");
            httpServletResponse.setCharacterEncoding("utf-8");
            Cookie userheadimg = new Cookie("headimg",headimgurl);
            Cookie userunionid = new Cookie("unionid",unionid);
            userheadimg.setPath("/");
            userunionid.setPath("/");
            httpServletResponse.addCookie(userheadimg);
            httpServletResponse.addCookie(userunionid);
            HttpSession httpSession = httpServletRequest.getSession();
            httpSession.setAttribute("unionid",unionid);
            httpSession.setAttribute("headimg",headimgurl);
            model.addAttribute("unionid",unionid);
            model.addAttribute("headimg",headimgurl);
            return "telbinding";
           }
        } catch (IOException e) {
            e.printStackTrace();
            return "signin";
        }

    }


    /*
    * 微信登陆手机绑定
    *
    * */
    @RequestMapping(value = "/bindingtel",method = RequestMethod.POST)
    public String bindingTel(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse,@RequestParam("tel")String telphone,@RequestParam("unionid")String unionid, Model model){
        try {
            //查询手机号，若存在则将用户信息返回；不存在将unionid和telphone保存让用户微信注册
            UserInfo userInfo = userInfoService.queryByTelphone(telphone);
            if(userInfo == null){
                //说明是新用户，让用户注册
               model.addAttribute("telphone",telphone);
                return "wxsignin";
            }else {
                userInfoService.updateUnionId(unionid,telphone);
                //说明用户已经是会员
                userLogin(httpServletRequest, httpServletResponse, model, userInfo.getUsername(), userInfo.getHeadImgUrl());
                return "redirect:/home";
            }
        }catch (Exception e){
            e.printStackTrace();
            return "signup";
        }
    }

    /*
    * 微信会员注册
    * */
    @RequestMapping(value = "/wxregister",method = RequestMethod.POST)
    public String wxRegister(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse, @RequestParam("name") String name,
                           @RequestParam("password")String password, @RequestParam("telphone")String telphone, Model model){
        String headimgurl = (String) httpServletRequest.getSession().getAttribute("headimg");
        String unionid = (String) httpServletRequest.getSession().getAttribute("unionid");
        try {
            userInfoService.newUserInfo(new UserInfo(name, MD5Util.EncryptedByMD5(password),new Date(),telphone,headimgurl,unionid));
            Cookie ucookie = new Cookie("uid",name);
            ucookie.setPath("/");
            httpServletResponse.addCookie(ucookie);
            String exnamesession = (String) httpServletRequest.getSession().getAttribute("uid");
            if(exnamesession != null){
                httpServletRequest.getSession().removeAttribute("uid");
            }
            model.addAttribute("uid",name);
            return "redirect:/home";
        }catch (Exception e){
            e.printStackTrace();
            model.addAttribute("errormsg","用户名已存在！");
            return "/signup";
        }
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, @RequestParam("name") String name,
                           @RequestParam("password")String password, @RequestParam("tel")String tel, Model model){
        try {
            UserInfo userInfo = userInfoService.queryByTelphone(tel);
            if(userInfo == null){
                userInfoService.newWorkerInfo(new UserInfo(name, MD5Util.EncryptedByMD5(password),new Date(),tel));

                Cookie ucookie = new Cookie("uid",name);
                ucookie.setPath("/");
                httpServletResponse.addCookie(ucookie);
                String exnamesession = (String) httpServletRequest.getSession().getAttribute("uid");
                if(exnamesession != null){
                    httpServletRequest.getSession().removeAttribute("uid");
                }
                model.addAttribute("uid",name);
                return "redirect:/home";

            }else {
                model.addAttribute("errormsg","一个手机只可以绑定一个会员！");
                return "signup";
            }

        }catch (Exception e){
            e.printStackTrace();
            model.addAttribute("errormsg","用户名已存在！");
            return "/signup";
        }
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse,
                        @RequestParam("username")String username,@RequestParam("password")String password,Model model){
        try{
            UserInfo userInfo = userInfoService.queryByUsername(username);
            if(MD5Util.EncryptedByMD5(password).equals(userInfo.getPassword())){
                userLogin(httpServletRequest, httpServletResponse, model, username, userInfo.getHeadImgUrl());
                return "redirect:/home";
            }else {
                model.addAttribute("errormsg","用户名或密码错误！");
                return "signin";
            }

        }catch (Exception e){
            model.addAttribute("errormsg","用户名或密码错误！");
            return "signin";
        }

    }
    @RequestMapping(value = "/exit")
    public String exit(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse){
        Cookie[] cookies = httpServletRequest.getCookies();
        if(cookies != null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("uid")){
                    cookie.setValue(null);

                }else if(cookie.getName().equals("authen")){
                    cookie.setValue(null);
                }
                cookie.setMaxAge(0);
                cookie.setPath("/");
                httpServletResponse.addCookie(cookie);
            }
        }
        return "redirect:/home";
    }
    private void userLogin(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Model model, String username, String headImgUrl) {
        httpServletResponse.setCharacterEncoding("utf-8");
        Cookie usercookie = new Cookie("uid", username);
        Cookie userheadimg = new Cookie("headimg", headImgUrl);
        usercookie.setPath("/");
        userheadimg.setPath("/");
        httpServletResponse.addCookie(usercookie);
        httpServletResponse.addCookie(userheadimg);
        HttpSession httpSession = httpServletRequest.getSession();
        httpSession.setAttribute("uid", username);
        httpSession.setAttribute("headimg", headImgUrl);
        model.addAttribute("uid", username);
        model.addAttribute("headimg", headImgUrl);
    }

}

package com.zxbangban.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zxbangban.entity.Customer;
import com.zxbangban.entity.UserProfile;
import com.zxbangban.entity.UserInfo;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.enums.RolesAuth;
import com.zxbangban.service.*;
import com.zxbangban.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

/**
 * Created by pingyr on 2017/7/15.
 */
@Controller
@RequestMapping("/my-account")
@SessionAttributes({"uid","headimg","unionid"})
public class MyAccountController {

    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private UserProfileService userProfileService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private WorkerInfoService workerInfoService;
    @Autowired
    private AliyunOSService aliyunOSService;

    @RequestMapping(value = "/center")
    public String center(@SessionAttribute("uid")String uid,HttpServletRequest httpServletRequest,Model model){
        Object unionId =  httpServletRequest.getSession().getAttribute("unionid");
        if (unionId == null) {
            try {
                UserInfo userInfo = userInfoService.queryByUsername(uid);
                model.addAttribute("userinfo", userInfo);
                model.addAttribute("headimg", userInfo.getHeadImgUrl());
                Integer roleId = userInfo.getRoleId();

                //权限不同，访问不同
                if (roleId.equals(RolesAuth.rolesAuthOf(1).getRoleId())) {
                    return "account/normal_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(2).getRoleId())) {
                    return "account/normal_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(3).getRoleId())) {
                    return "account/normal_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(4).getRoleId())) {
                    return "account/service_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(6).getRoleId())) {
                    return "account/service_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(5).getRoleId())) {
                    return "account/service_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(8).getRoleId())) {
                    return "account/manager_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(9).getRoleId())) {
                    return "account/manager_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(7).getRoleId())) {
                    return "account/manager_home";
                } else {
                    return "account/normal_home";
                }
            } catch (NullPointerException e) {
                return "signin";
            }
        } else {
            UserInfo userInfo = new UserInfo();
            String headImg =  (String )httpServletRequest.getSession().getAttribute("headimg");
            try {
                userInfo.setUsername(URLDecoder.decode(uid,"UTF-8"));
                userInfo.setHeadImgUrl(URLDecoder.decode(headImg,"UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

            model.addAttribute("userinfo", userInfo);
            return "account/normal_home";
        }
    }

    @RequestMapping(value = "/profile")
    public String profile(@SessionAttribute("uid")String uid,HttpServletRequest httpServletRequest,Model model){
        Object unionId =  httpServletRequest.getSession().getAttribute("unionid");
        if(unionId == null){
            //非微信登录用户
            try {
                UserInfo userInfo = userInfoService.queryByUsername(uid);
                UserProfile userProfile = userProfileService.queryUserProfileByUID(userInfo.getUserId());
                if(userProfile == null){
                    System.out.println("userprofile  is null");
                    userProfile = new UserProfile();
                    userProfile.setName(userInfo.getUsername());
                }
                model.addAttribute("userProfile",userProfile);
                model.addAttribute("userinfo", userInfo);
                model.addAttribute("headimg", userInfo.getHeadImgUrl());
                return "account/normal_profile";
            } catch (NullPointerException e) {
                return "signin";
            }

        }else {
            UserInfo userInfo = new UserInfo();
            String headImg =  (String )httpServletRequest.getSession().getAttribute("headimg");
            try {
                userInfo.setUsername(URLDecoder.decode(uid,"UTF-8"));
                userInfo.setHeadImgUrl(URLDecoder.decode(headImg,"UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

            userInfo.setRoleId(1);
            model.addAttribute("userinfo", userInfo);
            return "account/normal_profile";
        }
    }

    @RequestMapping(value = "/profile-workerinfo")
    public String profile_workerInfo(@SessionAttribute("uid")String uid,HttpServletRequest httpServletRequest,Model model){
        Object unionId =  httpServletRequest.getSession().getAttribute("unionid");
        if(unionId == null){
           try {
               UserInfo userInfo = userInfoService.queryByUsername(uid);
               String tel = userInfo.getTelphone();
               List<WorkerInfo> list = workerInfoService.queryByTelphone(tel);
               model.addAttribute("worker",list.get(0));
               model.addAttribute("userinfo", userInfo);
               return "/account/normal_profile_workinfo";
           }catch (Exception e){
               return "signin";
           }
        }
        return "/account/normal_profile_workinfo";
    }

    @RequestMapping(value = "/editpassword")
    public String editPassword(@SessionAttribute("uid")String uid,@SessionAttribute("headimg")String headimg, Model model){
        model.addAttribute("uid",uid);
        model.addAttribute("headimg",headimg);

        return "account/changepassword";
    }
    @RequestMapping(value = "/editheadimg")
    public String editHeadImg(@SessionAttribute("uid")String uid,@RequestParam("oldFile")String oldFile,@RequestParam(value = "file")MultipartFile file){
        try {
            UserInfo userInfo = userInfoService.queryByUsername(uid);
            String tel = userInfo.getTelphone();
            List<WorkerInfo> list = workerInfoService.queryByTelphone(tel);
            String imgName = aliyunOSService.updateHeadImages(userInfo.getUserId(),file,oldFile);
            String url = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + imgName + "?x-oss-process=style/headimg";
            System.out.println(url);
            for(WorkerInfo workerInfo : list){
                workerInfoService.editheadimg(workerInfo.getWorkerId(),url);
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return "redirect:/my-account/profile-workerinfo";
    }
    @RequestMapping(value = "/updatepassword",method = RequestMethod.POST)
    public String updatePassword(@SessionAttribute("uid")String uid,@RequestParam("oldpassword")String oldpassword,@RequestParam("repassword")String repassword,Model model){
        UserInfo userInfo = userInfoService.queryByUsername(uid);
        String password = userInfo.getPassword();
        if(MD5Util.EncryptedByMD5(oldpassword).equals(password)){
            int r = userInfoService.updatePassword(uid, MD5Util.EncryptedByMD5(repassword));
        }else {
            model.addAttribute("msg","旧密码不正确");
            return "account/changepassword";
        }

        System.out.println("旧密码"+oldpassword + ";新密码" + repassword);
        return "redirect:/my-account/center";
    }

    //获取预约信息
    @RequestMapping(value = "/getappoint",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String getAppoint(@RequestParam("uid")String uid, @RequestParam("roleid")Integer roleid) {
        int i = roleid;
        if(0 < i && i < 4){
            String t = userInfoService.queryTelByUsername(uid);
            List<Customer> list = customerService.queryByTel(t);
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                return objectMapper.writeValueAsString(list);
            } catch (JsonProcessingException e) {
                return "";
            }
        }else {
            return "";
        }
    }


    @RequestMapping(value = "/appoint",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String managerAppoint(@RequestParam("roleid")Integer roleid,@RequestParam("uid") String uid){
        int i = roleid;
        if(3 < i && i < 10){
            List<Customer> list = customerService.queryAll();
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                return objectMapper.writeValueAsString(list);
            } catch (JsonProcessingException e) {
                return "";
            }
        }else {
            return "";
        }
    }

    @RequestMapping(value = "/program",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String managerProgram(@RequestParam("roleid")Integer roleid, @RequestParam("uid") String uid){

        return "";
    }

    @RequestMapping(value = "/worker",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String managerWorker(@RequestParam("roleid")Integer roleId, @RequestParam("uid") String uid){
        int i = roleId;
        if(3 < i && i < 10){
            List<WorkerInfo> list = workerInfoService.queryNew();
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                return objectMapper.writeValueAsString(list);
            } catch (JsonProcessingException e) {
                return "";
            }
        }else {
            return "";
        }
    }
}

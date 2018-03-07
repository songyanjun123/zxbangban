package com.zxbangban.web;

import com.zxbangban.service.AliyunMNService;
import com.zxbangban.util.MD5Util;
import com.zxbangban.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by pingyr on 2017/7/18.
 */
@Controller
@RequestMapping("/account-support")
@SessionAttributes({"name","tel"})
public class AccountHelpController {

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private AliyunMNService aliyunMNService;


    @RequestMapping("/help")
    public String help(){
        return "account_support/can_not_login";
    }

    @RequestMapping(value = "/reset",method = RequestMethod.POST)
    public String resetOpt(@RequestParam("option")String option){
        if(option.equals("1")){
            return "account_support/resetpassword";
        }else {
            return "redirect:/account/signin";
        }
    }

    @RequestMapping(value = "/password/reset",method = RequestMethod.POST)
    public String resetName(HttpServletRequest httpServletRequest, @RequestParam("name")String name, Model model){
        try{
            String telPhone = userInfoService.queryTelByUsername(name);
            if(telPhone.length() == 11){
                System.out.println(telPhone);
                model.addAttribute("name",name);
                return "account_support/valididentity";
            }

            model.addAttribute("tel","用户名不存在");
            return "account_support/resetpassword";
        }catch (Exception e){
            model.addAttribute("tel","用户名不存在");
            return "account_support/resetpassword";
        }
    }

    @RequestMapping(value = "/help/validata",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String valiData(@RequestParam("name") String name,Model model){
        try {
            String tel = userInfoService.queryTelByUsername(name);
            model.addAttribute("tel",tel);
            return tel;
        }catch (Exception e){
            return "000001";
        }

    }

    @RequestMapping(value = "/valicode")
    public String valiCode(@RequestParam("number") String number,Model model){
        if(number.length() == 11){
            String code = aliyunMNService.SMSNotification(1,number);
            model.addAttribute("code",code);
            return "account_support/validata_code";
        }else {
            return "redirect:/error";
        }

    }

    @RequestMapping(value = "/setpassword",method = RequestMethod.POST)
    public String setPassword(@SessionAttribute("name")String name,Model model){
        model.addAttribute("name",name);
        return "account_support/new_password";
    }

    @RequestMapping(value = "/newpassword",method = RequestMethod.POST)
    public String newPassword(@SessionAttribute("name")String name,@RequestParam("password")String password){
        try{
            int result = userInfoService.updatePassword(name, MD5Util.EncryptedByMD5(password));
            return "account_support/help_success";
        }catch (Exception e){
            return "redirect:error";
        }
    }
}

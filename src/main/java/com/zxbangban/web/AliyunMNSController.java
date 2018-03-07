package com.zxbangban.web;


import com.zxbangban.service.AliyunMNService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;



/**
 * Created by pingyr on 2017/7/4.
 */
@Controller
public class AliyunMNSController {

    @Autowired
    private AliyunMNService aliyunMNService;

    @RequestMapping(value = "/valitel/aliyunMNSValidate",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String mnsValid(@RequestParam("tel") String number){
        try {
            return aliyunMNService.SMSNotification(1,number);
        }catch (Exception e){
            return "000000";
        }
    }
}

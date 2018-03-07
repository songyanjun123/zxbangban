package com.zxbangban.web;

import com.zxbangban.entity.Customer;
import com.zxbangban.entity.UserInfo;
import com.zxbangban.service.CustomerService;
import com.zxbangban.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/appoint-console")
@SessionAttributes({"uid", "auth"})
public class AppointmentServiceController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping(value = "/home")
    public String home(@SessionAttribute("uid") String uid, Model model) {
        UserInfo userInfo = userInfoService.queryByUsername(uid);
        Integer roleId = userInfo.getRoleId();
        if (roleId.equals(4) || roleId.equals(7) || roleId.equals(8)) {
            List<Customer> customers = customerService.queryAll();

            model.addAttribute("customers",customers);
            return "account/appoint_service_home";
        } else {
            model.addAttribute("msg", "权限等级不够!");
            return "account/appoint_service_home";
        }

    }

    @RequestMapping(value = "/delete",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String delete(@RequestParam("id")long id){
        int r = customerService.delete(id);
        return String.valueOf(r);
    }
}

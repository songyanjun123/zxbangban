package com.zxbangban.web;

import com.zxbangban.dto.Quoted;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;

@Controller
@RequestMapping(value = "/quoted")
public class ProcessQuotedController {

    @RequestMapping(value = "free",method = RequestMethod.GET)
    public String freeQuoted( @RequestParam("area") int area , Model model){
        BigDecimal a = new BigDecimal(String.valueOf(0.4));
        BigDecimal b = new BigDecimal(String.valueOf(0.6));
        BigDecimal cost = null;
        if(area < 90){
            cost = BigDecimal.valueOf(250*90);
        }else {
            cost = BigDecimal.valueOf(250*area);
        }
        Quoted quoted = new Quoted();
        quoted.setMaterialCost(a.multiply(cost));
        quoted.setLabourCost(b.multiply(cost));
        quoted.setDesignCost(BigDecimal.valueOf(30*area));
        quoted.setServiceCost(BigDecimal.valueOf(0));
        quoted.setTotalCost(cost);
        model.addAttribute("quoted",quoted);
        return "/appointment/project_quoted_price";
    }
}

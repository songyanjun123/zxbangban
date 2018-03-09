package com.zxbangban.web;

import com.zxbangban.entity.Company;
import com.zxbangban.entity.WorkerDetail;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.service.CompanyService;
import com.zxbangban.service.WorkerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

/**
 * Created by pingyr on 2017/4/20.
 */
@Controller

public class HomeController {
    @Autowired
    private WorkerInfoService workerInfoService;

    @Autowired
    private CompanyService companyService;
    /**
     *
     * @return 首页功能跳转控制
     */
    @RequestMapping("/home")
    public String home(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        Cookie[] cookies=request.getCookies();
        //查询工长，水电工，铺地工，腻子工
        WorkerDetail workerDetail = new WorkerDetail();
        WorkerInfo workerInfo = new WorkerInfo();
        workerInfo.setJobId(2);
        workerInfo.setWorkerId(8);
        if (cookies != null) {
            for (Cookie cookie:cookies) {
                if(cookie.getName().equals("loc")){
                    String location= cookie.getValue();
                    String location1= URLDecoder.decode(location,"utf8");
                    workerInfo.setLocation(location1);
                }else{
                    workerInfo.setLocation("山西省长治市市　区");
                }
            }
        }
        workerDetail.setWorkerInfo(workerInfo);
        List<WorkerInfo> headmans = workerInfoService.showWorkers(workerDetail);
        workerInfo.setJobId(3);
        workerInfo.setWorkerId(4);
        List<WorkerInfo> plumbers =workerInfoService.showWorkers(workerDetail);
        workerInfo.setJobId(5);
        List<WorkerInfo> pavings =workerInfoService.showWorkers(workerDetail);
        workerInfo.setJobId(7);
        List<WorkerInfo> Puttys =workerInfoService.showWorkers(workerDetail);
        List<Company> companies=companyService.queryAllByCtype(1);
        List<Company> industries=companyService.queryAllByCtype(2);
        List<Company> projects=companyService.queryAllByCtype(3);
        List<Company> decorates=companyService.queryAllByCtype(4);
        model.addAttribute("headmans",headmans);
        model.addAttribute("plumbers",plumbers );
        model.addAttribute("pavings",pavings );
        model.addAttribute("Puttys",Puttys );
        model.addAttribute("companies",companies );
        model.addAttribute("industries",industries );
        model.addAttribute("projects",projects );
        model.addAttribute("decorates",decorates );
        return "../../index2";
    }

    @RequestMapping(value = "/home",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    public String home(@RequestParam("location") String location, HttpServletResponse httpServletResponse, Model model) throws UnsupportedEncodingException {
        String location1 = location.replaceAll("-", "");
        //String location2=location1.replaceAll("","以");
        //查询工长，水电工，铺地工，腻子工  1company,2industry,3project,4 decorate
        WorkerDetail workerDetail = new WorkerDetail();
        WorkerInfo workerInfo = new WorkerInfo();
        workerInfo.setJobId(2);
        workerInfo.setWorkerId(8);
        workerInfo.setLocation(location1);
        workerDetail.setWorkerInfo(workerInfo);
        List<WorkerInfo> headmans = workerInfoService.showWorkers(workerDetail);
        workerInfo.setJobId(3);
        workerInfo.setWorkerId(4);
        List<WorkerInfo> plumbers =workerInfoService.showWorkers(workerDetail);
        workerInfo.setJobId(5);
        List<WorkerInfo> pavings =workerInfoService.showWorkers(workerDetail);
        workerInfo.setJobId(7);
        List<WorkerInfo> Puttys =workerInfoService.showWorkers(workerDetail);
        List<Company> companies=companyService.queryAllByCtype(1);
        List<Company> industries=companyService.queryAllByCtype(2);
        List<Company> projects=companyService.queryAllByCtype(3);
        List<Company> decorates=companyService.queryAllByCtype(4);
        httpServletResponse.setContentType("text/html;charset=UTF-8");
        httpServletResponse.setCharacterEncoding("utf-8");
        String location2=URLEncoder.encode(location1,"UTF-8");
        Cookie loc=new Cookie("loc",location2);
        loc.setPath("/");
        httpServletResponse.addCookie(loc);
        model.addAttribute("headmans",headmans);
        model.addAttribute("plumbers",plumbers );
        model.addAttribute("pavings",pavings );
        model.addAttribute("Puttys",Puttys );
        model.addAttribute("companies",companies );
        model.addAttribute("industries",industries );
        model.addAttribute("projects",projects );
        model.addAttribute("decorates",decorates );
        return "../../index2";
    }



    @RequestMapping("/testaa")
    public String testaa(){
        return "work";
    }



    @RequestMapping("/activity")
    public String activity(){
        return "activity/activity_01";
    }

    @RequestMapping("/about")
    public String online(){
        return "company/about";
    }

    @RequestMapping("/helpcenter")
    public String help_center(){
        return "support/helpcenter";
    }


    @RequestMapping("/customer-service")
    public String customerService(){
        return "support/customerService";
    }
    /**
     *材料品质有保证
     */
    @RequestMapping("/value1")
    public String value1(){
        return "company/values_1";
    }

    /**
     *装修质量有保障
     */
    @RequestMapping("/value2")
    public String value2(){
        return "company/values_2";
    }
    /**
     *工程延期不犯难
     */
    @RequestMapping("/value3")
    public String value3(){
        return "company/values_3";
    }
    /**
     *合同纠纷不纠结
     */
    @RequestMapping("/value4")
    public String value4(){
        return "company/values_4";
    }
    /**
     *售后维权不闹心
     */
    @RequestMapping("/value5")
    public String value5(){
        return "company/values_5";
    }

    /**
     *
     * @return 工人平台资质认证
     */
    @RequestMapping("/aptitude")
    public String apatitude(){
        return "company/worker_aptitude_introduce";
    }

    @RequestMapping("/aptitude_advantages")
    public String aptitudeAdentages(){
        return "company/worker_aptitude_advantages";
    }
    /**
     *
     * @return 网站页脚条款和声明跳转控制
     */
    @RequestMapping("/termsofuse")
    public String termsofuser(){
        return "support/termsofservice";
    }

    /**
     * @return 三维家装饰简介
     */
    @RequestMapping("/three-d-h")
    public String three_d_h(){
        return "/company/three_d_h";
    }

    @RequestMapping("/contact_us")
    public String contact_us(){
        return "/company/contact_us";
    }

    @RequestMapping("/privacy")
    public String privacy(){
        return "support/privacy";
    }

    /**
     * about us
     */
    @RequestMapping("/about-us")
    public String about_us(){
        return "company/about_us";
    }
    /**
     *
     * @return 错误页面跳转
     */
    @RequestMapping("/error")
    public String error(){
        return "common/errorpage";
    }

    /**
     *
     * @return 审批页面跳转控制
     */
    @RequestMapping("/record")
    public String record(){
        return "support/record";
    }


    @RequestMapping("/beta")
    public String warnning(){
        return "beta/warnning";
    }
    @RequestMapping("/comingsoon")
    public String comingsoon(){
        return "beta/comingsoon";
    }

    /**
     *
     * @return 招商页面跳转控制
     */
    @RequestMapping("/shop")
    public String invest(){
        return "shop/home";
    }


    /**
     *
     * @return 装修效果图页面
     */
    @RequestMapping("/effect")
    public String effect(){
        return "effect/effect";
    }

    /**
     *
     * @return 装修效果图列表页面
     */
    @RequestMapping("/details")
    public String details(){
        return "details/details";
    }

    /**
     *
     * @return 招贤纳士
     */
    @RequestMapping("/join")
    public String join(){
        return "join/join";
    }



    /**
     *
     * @return  装修效果图
     */
    @RequestMapping("/detail_list")
    public String detailsList(){
        return "details/detail_list";
    }


    /**
     *
     * @return  工人入驻页面跳转
     */
    @RequestMapping("/wokerregister")
    public String workerRegister(){
        return "worker_register";
    }


    /**
     *
     * @return 业主预约页面跳转
     */
    @RequestMapping("/appointment")
    public String appointment(){
        return "appointment/appointment";
    }

    @RequestMapping("/test")
    public String test(){
        return "beta/effect";
    }


    //Brand

    /**
     *
     * @return 家家乐橱柜
     */
    @RequestMapping("/brand/1")
    public String brand1(){
        return "brand/1";
    }

    /**
     *
     * @return 丽绣刺绣墙布
     */
    @RequestMapping("/brand/2")
    public String brand2(){
        return "brand/2";
    }

    /**
     *
     * @return 圣蒂诺壁纸
     */
    @RequestMapping("/brand/3")
    public String brand3(){
        return "brand/3";
    }

    /**
     *
     * @return 适而居定制家具
     */
    @RequestMapping("/brand/4")
    public String brand4(){
        return "brand/4";
    }

    /**
     *
     * @return 亿美达木门
     */
    @RequestMapping("/brand/5")
    public String brand5(){
        return "brand/5";
    }

    /**
     *
     * @return 诺斯菲尔定制家具
     */
    @RequestMapping("/brand/6")
    public String brand6(){
        return "brand/6";
    }

    /**
     *
     * @return 轩艺木门
     */
    @RequestMapping("/brand/7")
    public String brand7(){
        return "brand/7";
    }

    /**
     *
     * @return 爵士雅居
     */
    @RequestMapping("/brand/8")
    public String brand8(){
        return "brand/8";
    }




}

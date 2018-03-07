package com.zxbangban.web;

import com.zxbangban.entity.Jobs;
import com.zxbangban.service.JobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by pingyr on 2017/5/25.
 */
@Controller
@RequestMapping("/jobs")
public class JobController {
    @Autowired
    private JobsService jobsService;

    @RequestMapping("/register")
    public String register(Model model){
        List<Jobs> jobsList = jobsService.getJobs();
        model.addAttribute("jobsList",jobsList);
        return "worker_register";
    }
}

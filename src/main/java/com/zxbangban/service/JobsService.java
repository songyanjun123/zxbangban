package com.zxbangban.service;

import com.zxbangban.entity.Jobs;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface JobsService {

    List<Jobs> getJobs();

    int addJob(Jobs job);

}

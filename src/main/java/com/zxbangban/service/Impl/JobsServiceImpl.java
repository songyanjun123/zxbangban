package com.zxbangban.service.Impl;

import com.zxbangban.dao.JobsDao;
import com.zxbangban.entity.Jobs;
import com.zxbangban.service.JobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class JobsServiceImpl implements JobsService{
    @Autowired
    private JobsDao jobsDao;

    public List<Jobs> getJobs() {
        return jobsDao.getJobs();
    }

    public int addJob(Jobs job) {
        return jobsDao.addJob(job);
    }
}

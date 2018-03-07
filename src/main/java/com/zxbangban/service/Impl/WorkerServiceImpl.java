package com.zxbangban.service.Impl;

import com.zxbangban.entity.Worker;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.service.WorkerInfoService;
import com.zxbangban.service.WorkerProfileService;
import com.zxbangban.service.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkerServiceImpl implements WorkerService {
    @Autowired
    private WorkerInfoService workerInfoService;
    @Autowired
    private WorkerProfileService workerProfileService;

    public double queryRating(long workerId) {
        Worker worker = query(workerId);
        double w = workerProfileService.queryWeightedByWorkerId(workerId);
        return countRate(worker,w);
    }

    public List<Worker> queryWorkersByJob(String str) {
        List<Worker> workers;
        if(str.equals("ALL")){
            workers = workerInfoService.queryAll();
        }else {
            workers = workerInfoService.queryByJobName(str);
        }

        return workers;
    }

    private Worker query(long workerId){
        Worker worker = new Worker();
        WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(workerId);
        worker.setPr(workerInfo.getPr());
        worker.setCertificated(workerInfo.isCertificated());
        worker.setAuthenticated(workerInfo.isAuthenticated());
        return worker;
    }

    private double countRate(Worker worker,Double weight){
        double a = 0,b = 0,c = 0;
        if(worker.isAuthenticated()){
            a = 10;
        }
        if(worker.isCertificated()){
            b = 100;
        }
        if(worker.isPr()){
            c = 10;
        }
        return 600 + a + b + c + weight;
    }
}

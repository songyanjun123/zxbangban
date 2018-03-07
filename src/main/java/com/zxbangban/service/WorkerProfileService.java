package com.zxbangban.service;

import com.zxbangban.entity.WorkerProfile;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public interface WorkerProfileService {


    int newWorkerProfile(WorkerProfile workerProfile);

    WorkerProfile queryByWorkerId(long workerid);

    int updateWorkerProfile(WorkerProfile workerProfile);

    int updateView(long wid,int count);

    int updateNewView(WorkerProfile workerProfile);

    Integer queryViewByWorkerId(long workerid);

    WorkerProfile queryDetailByWorkerId(long workerid);

    int editDeposit(long workerid, BigDecimal deposit);

    short queryStarEvaluatedByWorkerId(long workerid);

    double queryWeightedByWorkerId(long workerid);

    int updateWeightedByWorkerId(long workerid,double weighted);

    int deleteWorkerProfile(long workerId);

}

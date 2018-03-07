package com.zxbangban.service.Impl;

import com.zxbangban.dao.WorkerProfileDao;
import com.zxbangban.entity.WorkerProfile;
import com.zxbangban.service.WorkerProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class WorkerProfileServiceImpl implements WorkerProfileService{

    @Autowired
    private WorkerProfileDao workerProfileDao;
    public int newWorkerProfile(WorkerProfile workerProfile) {
        return workerProfileDao.newWorkerProfile(workerProfile);
    }

    public WorkerProfile queryByWorkerId(long workerid) {
        return workerProfileDao.queryByWorkerId(workerid);
    }

    public int updateWorkerProfile(WorkerProfile workerProfile) {
        return workerProfileDao.updateWorkerProfile(workerProfile);
    }

    public int updateView(long wid, int count) {
        return workerProfileDao.updateView(wid,count);
    }

    public Integer queryViewByWorkerId(long workerid) {
        return workerProfileDao.queryViewByWorkerId(workerid);
    }

    public int updateNewView(WorkerProfile workerProfile) {
        return workerProfileDao.updateNewView(workerProfile);
    }

    public WorkerProfile queryDetailByWorkerId(long workerid) {
        return workerProfileDao.queryDetailByWorkerId(workerid);
    }

    public int editDeposit(long workerid, BigDecimal deposit) {
        return workerProfileDao.editDeposit(workerid,deposit);
    }

    public short queryStarEvaluatedByWorkerId(long workerid) {
        return workerProfileDao.queryStarEvaluatedByWorkerId(workerid);
    }

    public double queryWeightedByWorkerId(long workerid) {
        return workerProfileDao.queryWeightedByWorkerId(workerid);
    }

    public int updateWeightedByWorkerId(long workerid, double weighted) {
        return workerProfileDao.updateWeightedByWorkerId(workerid,weighted);
    }

    public int deleteWorkerProfile(long workerId) {
        return workerProfileDao.deleteWorkerProfile(workerId);
    }
}

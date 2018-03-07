package com.zxbangban.service.Impl;

import com.zxbangban.dao.WorkerInfoDao;
import com.zxbangban.dao.WorkerProfileDao;
import com.zxbangban.entity.*;
import com.zxbangban.service.WorkerInfoService;
import com.zxbangban.service.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by pingyr on 2017/7/11.
 */
@Service
public class WorkerInfoServiceImpl implements WorkerInfoService{

    @Autowired
    private WorkerInfoDao workerInfoDao;

    @Autowired
    private WorkerProfileDao workerProfileDao;

    @Autowired
    private WorkerService workerService;

    public int newWorkerInfo(WorkerInfo workerInfo) {
        return workerInfoDao.newWorkerInfo(workerInfo);
    }

    public List<WorkerInfo> showAllWorkersByJobId(Integer jobId) {
        return workerInfoDao.showAllWorkersByJobId(jobId);
    }

    public List<WorkerInfo> showWorkersByJobId(WorkerDetail workerDetail) {
        return workerInfoDao.showWorkersByJobId(workerDetail);
    }

    public List<WorkerInfo> showWorkers(WorkerDetail workerDetail) {
        return workerInfoDao.showWorkers(workerDetail);
    }
    public WorkerInfo queryWorkerByWorkerId(long workerid) {
        return workerInfoDao.queryWorkerByWorkerId(workerid);
    }

    public List<WorkerInfo> queryNew() {
        return workerInfoDao.queryNew();
    }

    public List<Worker> queryAll() {
        return workerInfoDao.queryAll();
    }

    public List<Worker> queryByJobId(Integer jobId) {
        return workerInfoDao.queryByJobId(jobId);
    }

    @Override
    public List<Worker> queryByJobName(String jobName) {
        return workerInfoDao.queryByJobName(jobName);
    }

    public int countWorkers() {
        return workerInfoDao.countWorkers();
    }

    public int countWorkersByJoBId(Integer jobId) {
        return workerInfoDao.countWorkersByJoBId(jobId);
    }

    @Override
    public int countWorkersByJobName(String jobName) {
        return workerInfoDao.countWorkersByJobName(jobName);
    }

    public String queryTelByWorkerId(long workerId) {
        return workerInfoDao.queryTelByWorkerId(workerId);
    }



    public WorkerInfo queryDetailByWorkerId(long workerId) {
        return workerInfoDao.queryDetailByWorkerId(workerId);
    }

    public int updateIsShow(long workerId) {
        return workerInfoDao.updateIsShow(workerId);
    }

    public int updateIsNotShow(long workerId) {
        return workerInfoDao.updateIsNotShow(workerId);
    }

    public int editName(long workerId, String name) {
        return workerInfoDao.editName(workerId,name);
    }

    public int editLocation(long workerId, String location) {
        return workerInfoDao.editLocation(workerId,location);
    }

    public int editAddress(long workerId, String address) {
        return workerInfoDao.editAddress(workerId,address);
    }

    public int editPR(long workerId, boolean pr) {
        return workerInfoDao.editPR(workerId,pr);
    }

    public int editAuth(long workerId, boolean auth) {  return workerInfoDao.editAuth(workerId,auth);  }

    public int editCert(long workerId, boolean cert) {
        return workerInfoDao.editCert(workerId,cert);
    }

    public void editheadimg(long workerId, String headimgurl) {
        workerInfoDao.editheadimg(workerId, headimgurl);
    }

    public boolean queryPRByWorkerId(long workerId) {
        return workerInfoDao.queryPRByWorkerId(workerId);
    }

    public int updateOARating(long workerId) {
        return workerInfoDao.updateOARating(workerId,workerService.queryRating(workerId));
    }

    public int editPorjectImg(long id, String projectImg) {
        return workerInfoDao.editProjectImg(id,projectImg);
    }

    public String  queryProjectImgByWorkerId(long workerId) {
        return workerInfoDao.queryProjectImgByWorkerId(workerId);
    }

    public List<WorkerInfo> queryByTelphone(String telphone) {
        return workerInfoDao.queryDetailByTelPhone(telphone);
    }

    public int changeStateTrue(long workerId) {
        return workerInfoDao.changeStateTrue(workerId);
    }

    public int saveDes(long id, String projectDes) {  return workerInfoDao.saveDes(id, projectDes); }

    public int changeStateFalse(long workerId) {
        return workerInfoDao.changeStateFalse(workerId);
    }

    public int deleteWorkerInfo(long workerId) {
        return workerInfoDao.deleteWorkerInfo(workerId);
    }

    public double queryOARatingByWorkerId(long workerId) {
        return workerInfoDao.queryOARatingByWorkerId(workerId);
    }

    public  WorkerInfo queryByTel(String tel){ return  workerInfoDao.queryByTel(tel);};

    public int updateWorkerState(boolean state,long workerId){ return workerInfoDao.updateWorkerState(state, workerId);};

    public int updateProjectImg(long workerId,String projectImg){return  workerInfoDao.updateProjectImg(workerId,projectImg);};

    public List<Province> queryProvinceAll(){ return  workerInfoDao.queryProvinceAll();};

    public List<City> queryCityByProvinceCode(String code){return workerInfoDao.queryCityByProvinceCode(code);}

    public List<Town>  queryTownByCityCode(String code){return workerInfoDao.queryTownByCityCode(code);}
}

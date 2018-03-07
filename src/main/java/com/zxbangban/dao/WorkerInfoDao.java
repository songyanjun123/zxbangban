package com.zxbangban.dao;

import com.zxbangban.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * Created by pingyr on 2017/7/11.
 */
@Repository
public interface WorkerInfoDao {

    /**
     * 创建新的工人信息
     * @param workerInfo 新的工人信息
     * @return int
     */
    int newWorkerInfo(@Param("workerInfo") WorkerInfo workerInfo);

    /**
     * 根据工种选择可显示的工人信息
     *
     * @param jobId 工种
     * @return 可显示的工人信息
     */
    List<WorkerInfo> showAllWorkersByJobId(Integer jobId);
    List<WorkerInfo> showWorkersByJobId(WorkerDetail workerDetail);
    List<WorkerInfo> showWorkers(WorkerDetail workerDetail);

    /**
     * 根据工人id查询工人信息
     *
     * @param workerid 工人id
     * @return 工人信息
     */
    WorkerInfo queryWorkerByWorkerId(long workerid);

    /**
     * 查询最新入驻的3个工人信息
     *
     * @return List<WorkerInfo>
     */
    List<WorkerInfo> queryNew();

    /**
     * 查询所有工人信息
     * @return List<WorkerInfo>
     */
    List<Worker> queryAll();

    /**
     * 查询对应工种下的所有工人信息
     * @return List<WorkerInfo>
     */
    List<Worker> queryByJobId(Integer jobId);

    List<Worker> queryByJobName(String jobName);

    int countWorkers();

    /**
     * 统计对应工种下的工人总数
     * @param jobId 工种
     * @return 工人总数
     */
    int countWorkersByJoBId(@Param("jobId") Integer jobId);

    int countWorkersByJobName(@Param("jobName") String jobName);

    List<WorkerInfo> queryDetailByTelPhone(String telphone);

    String queryTelByWorkerId(long workerid);


    /**
     * 根据工人id查询工人部分详细信息
     *
     * @param workerid 工人id
     * @return 工人信息
     */
    WorkerInfo queryDetailByWorkerId(long workerid);

    /**
     * 更新工人网站显示状态
     * @param workerid 工人id
     * @return int
     */
    int updateIsShow(long workerid);

    /**
     * 更新工人网站隐藏状态
     * @param workerid 工人id
     * @return int
     */
    int updateIsNotShow(long workerid);

    /**
     * 更新工人姓名
     * @param workerid 工人id
     * @param name 工人姓名
     * @return int
     */
    int editName(@Param("workerid")long workerid,@Param("name")String name);

    /**
     * 更新工人实名认证状态
     * @param workerid 工人id
     * @param auth 实名认证状态
     * @return int
     */
    int editAuth(@Param("workerid")long workerid,@Param("auth")boolean auth);

    /**
     * 更新工人认证状态
     * @param workerid 工人id
     * @param cert 认证状态
     * @return int
     */
    int editCert(@Param("workerid")long workerid,@Param("cert")boolean cert);

    /**
     * 更新工人头像
     * @param workerid 工人id
     * @param headimgurl 工人头像
     * @return int
     */
    int editheadimg(@Param("workerid")long workerid,@Param("headimgurl")String headimgurl);

    /**
     * 更新工人工程考察
     * @param workerid 工人id
     * @param pr 工程考察
     * @return int
     */
    int editPR(@Param("workerid")long workerid, @Param("pr")boolean pr);

    /**
     * 根据工人id查询工人等级信息
     * @param workerid 工人id
     * @return Integer
     */
    boolean queryPRByWorkerId(long workerid);

    /**
     * 根据工人id更新工人综合评分
     * @param workerid 工人id
     * @param oarating 综合评分
     * @return int
     */
    int updateOARating(@Param("workerid") long workerid,@Param("oarating") double oarating);

    int editLocation(@Param("workerid") long workerid,@Param("location") String location);

    int editAddress(@Param("workerid") long workerid,@Param("address") String address);

    int saveDes(@Param("workerid") long workerid,@Param("projectDes") String projectDes);

    int editProjectImg(@Param("workerid") long workerid,@Param("projectImg") String projectImg);

    String queryProjectImgByWorkerId(@Param("workerid") long workerid);


    int changeStateTrue(@Param("workerid") long workerId);

    int changeStateFalse(@Param("workerid") long workerId);

    int deleteWorkerInfo(@Param("workerid") long workerId);


    double queryOARatingByWorkerId(@Param("workerid") long workerId);

    WorkerInfo queryByTel(@Param("tel") String tel);

    int updateWorkerState(@Param("state")boolean state,@Param("workerId")long workerId);

    int updateProjectImg(@Param("workerid") long workerId,@Param("project_img_url") String projectImg);

    List<Province> queryProvinceAll();

    List<City> queryCityByProvinceCode(@Param("provinceCode")String code);

    List<Town> queryTownByCityCode(@Param("cityCode")String code);
}

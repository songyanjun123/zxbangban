package com.zxbangban.dao;

import com.zxbangban.entity.WorkerProfile;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;

@Repository
public interface WorkerProfileDao {

    /**
     * 更新工人的个人资料
     * @param workerProfile
     * @return
     */
    int newWorkerProfile(@Param("workerProfile") WorkerProfile workerProfile);

    /**
     * 根据工人id查询工人的个人资料
     * @param workerid
     * @return
     */
    WorkerProfile queryByWorkerId(long workerid);

    /**
     * 根据工人id更新工人的个人资料
     * @param workerProfile
     * @return
     */
    int updateWorkerProfile(WorkerProfile workerProfile);

    /**
     * 根据工人id创建工人的主页浏览量信息
     * @param workerProfile
     * @return
     */
    int updateNewView(@Param("workerProfile") WorkerProfile workerProfile);

    /**
     * 根据工人id更新工人的主页浏览量信息
     * @param workerid
     * @param count
     * @return
     */
    int updateView(@Param("workerid")long workerid,@Param("count")int count);

    /**
     * 根据工人id查询工人的主页浏览量
     * @param workerid
     * @return
     */
    Integer queryViewByWorkerId(long workerid);

    /**
     *根据工人id查询工人其他详细信息
     * @param workerid 工人id
     * @return  工人其他详细信息
     */
    WorkerProfile queryDetailByWorkerId(long workerid);

    /**
     * 根据工人id更新工人的担保金
     * @param workerid
     * @param deposit
     * @return
     */
    int editDeposit(@Param("workerid")long workerid, @Param("deposit")BigDecimal deposit);

    /**
     * 根据工人id查询星级评价等级
     * @param workerid
     * @return
     */
    short queryStarEvaluatedByWorkerId(long workerid);

    /**
     * 根据工人id查询网站权重等级
     * @param workerid
     * @return
     */
    double queryWeightedByWorkerId(long workerid);

    int updateWeightedByWorkerId(@Param("workerid") long workerid,@Param("weighted") double weighted);


    int deleteWorkerProfile(@Param("workerid")long workerId);
}

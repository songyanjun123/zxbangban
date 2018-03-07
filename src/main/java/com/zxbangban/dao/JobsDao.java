package com.zxbangban.dao;

import com.zxbangban.entity.Jobs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface JobsDao {

    List<Jobs> getJobs();

    int addJob(@Param("job") Jobs job);
}

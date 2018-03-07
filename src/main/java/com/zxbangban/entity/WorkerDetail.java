package com.zxbangban.entity;

import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.entity.WorkerProfile;
import org.springframework.stereotype.Repository;

@Repository
public class WorkerDetail {
    private WorkerInfo workerInfo;

    private WorkerProfile workerProfile;

    public WorkerInfo getWorkerInfo() {
        return workerInfo;
    }

    public void setWorkerInfo(WorkerInfo workerInfo) {
        this.workerInfo = workerInfo;
    }

    public WorkerProfile getWorkerProfile() {
        return workerProfile;
    }

    public void setWorkerProfile(WorkerProfile workerProfile) {
        this.workerProfile = workerProfile;
    }

    public WorkerDetail() {
    }

    public WorkerDetail(WorkerInfo workerInfo, WorkerProfile workerProfile) {
        this.workerInfo = workerInfo;
        this.workerProfile = workerProfile;
    }

    @Override
    public String toString() {
        return "Worker{" +
                "workerInfo=" + workerInfo +
                ", workerProfile=" + workerProfile +
                '}';
    }
}

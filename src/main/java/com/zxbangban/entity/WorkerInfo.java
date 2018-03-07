package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * Created by pingyr on 2017/7/11.
 */
@Repository
public class WorkerInfo {

    /**
     * 工人id
     */
    private long workerId;

    /**
     * 工人姓名
     */
    private String name;

    /**
     * 头像图标
     */
    private String headImgUrl;

    /**
     * 工人手机号
     */
    private String tel;

    /**
     * 工种
     */
    private Integer jobId;

    /**
     * 籍贯地址
     */
    private String address;

    /**
     * 现所在地
     */
    private String location;

    /*
    * 工程描述
    * */
    private  String projectDes;

    /**
     * 工程图片
     */
    private String projectImgUrl;

    /**
     * 工人施工状态，
     */
    private boolean state;

    /**
     * 实名认证状态，未认证false，已认证true
     */
    private boolean authenticated;

    /**
     * 平台工人资质认证状态，未认证false，已认证true
     */
    private boolean certificated;


    /**
     * 工人等级
     */
    private boolean pr;

    /**
     * 推荐人手机号
     */
    private String refererTel;

    /**
     * 工人信息是否展示
     */
    private boolean isShow;

    /**
     * 综合评分
     */
    private double overAllRating;

    /**
     * 信息创建时间
     */
    private Date createTime;


    public long getWorkerId() {
        return workerId;
    }

    public void setWorkerId(long workerId) {
        this.workerId = workerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHeadImgUrl() {
        return headImgUrl;
    }

    public void setHeadImgUrl(String headImgUrl) {
        this.headImgUrl = headImgUrl;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getProjectDes() {
        return projectDes;
    }

    public void setProjectDes(String projectDes) {
        this.projectDes = projectDes;
    }


    public String getProjectImgUrl() {
        return projectImgUrl;
    }

    public void setProjectImgUrl(String projectImgUrl) {
        this.projectImgUrl = projectImgUrl;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public boolean isAuthenticated() {
        return authenticated;
    }

    public void setAuthenticated(boolean authenticated) {
        this.authenticated = authenticated;
    }

    public boolean isCertificated() {
        return certificated;
    }

    public void setCertificated(boolean certificated) {
        this.certificated = certificated;
    }



    public boolean getPr() {
        return pr;
    }

    public void setPr(boolean pr) {
        this.pr = pr;
    }

    public String getRefererTel() {
        return refererTel;
    }

    public void setRefererTel(String refererTel) {
        this.refererTel = refererTel;
    }

    public boolean isShow() {
        return isShow;
    }

    public void setShow(boolean show) {
        isShow = show;
    }

    public double getOverAllRating() {
        return overAllRating;
    }

    public void setOverallRating(double overAllRating) {
        this.overAllRating = overAllRating;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public WorkerInfo() {
    }

    public WorkerInfo(long workerId, String name, String headImgUrl, Integer jobId, String location,
                      boolean state, boolean authenticated, boolean certificated, boolean pr, boolean isShow, double overAllRating) {
        this.workerId = workerId;
        this.name = name;
        this.headImgUrl = headImgUrl;
        this.jobId = jobId;
        this.location = location;
        this.state = state;
        this.authenticated = authenticated;
        this.certificated = certificated;
        this.pr = pr;
        this.isShow = isShow;
        this.overAllRating = overAllRating;
    }

    public WorkerInfo(String name, String tel, Integer jobId, Date createTime) {
        this.name = name;
        this.tel = tel;
        this.jobId = jobId;
        this.createTime = createTime;
    }

    public WorkerInfo(String name, String tel, Integer jobId, String refererTel, Date createTime) {
        this.name = name;
        this.tel = tel;
        this.jobId = jobId;
        this.refererTel = refererTel;
        this.createTime = createTime;
    }

    public WorkerInfo(long workerId, String name, String headImgUrl, String tel, Integer jobId, String address,
                      String location,String projectDes, String projectImgUrl, boolean state, boolean authenticated, boolean certificated,
                      boolean pr, String refererTel, boolean isShow, double overAllRating, Date createTime) {
        this.workerId = workerId;
        this.name = name;
        this.headImgUrl = headImgUrl;
        this.tel = tel;
        this.jobId = jobId;
        this.address = address;
        this.location = location;
        this.projectDes=projectDes;
        this.projectImgUrl = projectImgUrl;
        this.state = state;
        this.authenticated = authenticated;
        this.certificated = certificated;
        this.pr = pr;
        this.refererTel = refererTel;
        this.isShow = isShow;
        this.overAllRating = overAllRating;
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "WorkerInfo{" +
                "workerId=" + workerId +
                ", name='" + name + '\'' +
                ", headImgUrl='" + headImgUrl + '\'' +
                ", tel='" + tel + '\'' +
                ", jobId=" + jobId +
                ", address='" + address + '\'' +
                ", location='" + location + '\'' +
                ", projectDes='" + projectDes + '\'' +
                ", projectImgUrl='" + projectImgUrl + '\'' +
                ", state=" + state +
                ", authenticated=" + authenticated +
                ", certificated=" + certificated +
                ", pr=" + pr +
                ", refererTel='" + refererTel + '\'' +
                ", isShow=" + isShow +
                ", overAllRating=" + overAllRating +
                ", createTime=" + createTime +
                '}';
    }
}

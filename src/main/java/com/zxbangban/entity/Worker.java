package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public class Worker {
    private long id;
    private String name;
    private String HeadImgUrl;
    private String telPhone;
    private String job;
    private boolean state;
    private boolean authenticated;
    private boolean pr;
    private boolean certificated;
    private boolean isShow;
    private Date createTime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHeadImgUrl() {
        return HeadImgUrl;
    }

    public void setHeadImgUrl(String headImgUrl) {
        HeadImgUrl = headImgUrl;
    }

    public String getTelPhone() {
        return telPhone;
    }

    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
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

    public boolean isPr() {
        return pr;
    }

    public void setPr(boolean pr) {
        this.pr = pr;
    }

    public boolean isCertificated() {
        return certificated;
    }

    public void setCertificated(boolean certificated) {
        this.certificated = certificated;
    }

    public boolean isShow() {
        return isShow;
    }

    public void setShow(boolean show) {
        isShow = show;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Worker() {
    }

    public Worker(long id, String name, String headImgUrl, String telPhone, String job,
                  boolean state, boolean authenticated, boolean pr, boolean certificated, boolean isShow, Date createTime) {
        this.id = id;
        this.name = name;
        HeadImgUrl = headImgUrl;
        this.telPhone = telPhone;
        this.job = job;
        this.state = state;
        this.authenticated = authenticated;
        this.pr = pr;
        this.certificated = certificated;
        this.isShow = isShow;
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Worker{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", HeadImgUrl='" + HeadImgUrl + '\'' +
                ", telPhone='" + telPhone + '\'' +
                ", job='" + job + '\'' +
                ", state=" + state +
                ", authenticated=" + authenticated +
                ", pr=" + pr +
                ", certificated=" + certificated +
                ", isShow=" + isShow +
                ", createTime=" + createTime +
                '}';
    }
}

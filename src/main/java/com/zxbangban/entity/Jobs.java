package com.zxbangban.entity;

import java.util.Date;

public class Jobs {

    private long id;
    private String name;
    private String des;
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

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Jobs() {
    }

    public Jobs(long id, String des) {
        this.id = id;
        this.des = des;
    }

    public Jobs(long id, String name, String des) {
        this.id = id;
        this.name = name;
        this.des = des;
    }

    public Jobs(long id, String name, String des, Date createTime) {
        this.id = id;
        this.name = name;
        this.des = des;
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Jobs{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", des='" + des + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}

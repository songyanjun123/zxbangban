package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.math.BigDecimal;

@Repository
public class WorkerProfile {

    private long id;

    private long workerid;

    //工龄
    private int age;

    //担保金
    private BigDecimal deposit;

    //星级评价(1-5星)
    private short starEvaluated;

    //排名权重
    private double weighted;

    //个人主页流量
    private int homePV;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getWorkerid() {
        return workerid;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setWorkerid(long workerid) {
        this.workerid = workerid;
    }

    public BigDecimal getDeposit() {
        return deposit;
    }

    public void setDeposit(BigDecimal deposit) {
        this.deposit = deposit;
    }

    public short getStarEvaluated() {
        return starEvaluated;
    }

    public void setStarEvaluated(short starEvaluated) {
        this.starEvaluated = starEvaluated;
    }

    public double getWeighted() {
        return weighted;
    }

    public void setWeighted(double weighted) {
        this.weighted = weighted;
    }

    public int getHomePV() {
        return homePV;
    }

    public void setHomePV(int homePV) {
        this.homePV = homePV;
    }

    public WorkerProfile() {

    }

    public WorkerProfile(long workerid, int homePV) {
        this.workerid = workerid;
        this.homePV = homePV;
    }

    public WorkerProfile(long id, long workerid, int age, BigDecimal deposit, short starEvaluated, double weighted, int homePV) {
        this.id = id;
        this.workerid = workerid;
        this.age = age;
        this.deposit = deposit;
        this.starEvaluated = starEvaluated;
        this.weighted = weighted;
        this.homePV = homePV;
    }

    @Override
    public String toString() {
        return "WorkerProfile{" +
                "id=" + id +
                ", workerid=" + workerid +
                ", age=" + age +
                ", deposit=" + deposit +
                ", starEvaluated=" + starEvaluated +
                ", weighted=" + weighted +
                ", homePV=" + homePV +
                '}';
    }
}

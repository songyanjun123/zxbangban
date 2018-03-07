package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * 会员信息
 */
@Repository
public class MemberShip {

    private long id;

    private Integer level;

    private String description;

    private Integer points;

    private Date startTime;

    private Date endTime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPoints() {
        return points;
    }

    public void setPoints(Integer points) {
        this.points = points;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public MemberShip() {

    }

    public MemberShip(long id, Integer level,
                      String description, Integer points, Date startTime, Date endTime) {
        this.id = id;
        this.level = level;
        this.description = description;
        this.points = points;
        this.startTime = startTime;
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return "MemberShip{" +
                "id=" + id +
                ", level=" + level +
                ", description='" + description + '\'' +
                ", points=" + points +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                '}';
    }
}

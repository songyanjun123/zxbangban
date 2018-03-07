package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Date;

@Repository
public class UserProfile {

    private long id;

    private long userId;

    private String name;

    //性别
    private short gender;

    private int age;

    //注册会员等级
    private MemberShip memberShip;

    //卡券code
    private String[] code;

    private Date birthday;

    //身份证号码
    private String idCard;

    //钱包
    private BigDecimal wallet;

    //工程订单地址
    private ProjectAddress[] projectAddresses;

    private Date createTime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public short getGender() {
        return gender;
    }

    public void setGender(short gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public MemberShip getMemberShip() {
        return memberShip;
    }

    public void setMemberShip(MemberShip memberShip) {
        this.memberShip = memberShip;
    }

    public String[] getCode() {
        return code;
    }

    public void setCode(String[] code) {
        this.code = code;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public BigDecimal getWallet() {
        return wallet;
    }

    public void setWallet(BigDecimal wallet) {
        this.wallet = wallet;
    }

    public ProjectAddress[] getProjectAddresses() {
        return projectAddresses;
    }

    public void setProjectAddresses(ProjectAddress[] projectAddresses) {
        this.projectAddresses = projectAddresses;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public UserProfile() {
    }

    public UserProfile(long id, long userId, String name, short gender,
                       int age, MemberShip memberShip, String[] code, Date birthday, String idCard, BigDecimal wallet, ProjectAddress[] projectAddresses, Date createTime) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.memberShip = memberShip;
        this.code = code;
        this.birthday = birthday;
        this.idCard = idCard;
        this.wallet = wallet;
        this.projectAddresses = projectAddresses;
        this.createTime = createTime;
    }
}

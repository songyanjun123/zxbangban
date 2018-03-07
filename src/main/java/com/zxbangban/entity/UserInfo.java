package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * Created by pingyr on 2017/7/13.
 */
@Repository
public class UserInfo {

    private long userId;

    private String username;

    private String password;

    private String openId;

    private String unionId;

    private Integer roleId;

    private Integer authen;

    private boolean certificeted;

    private String headImgUrl;

    private Integer memberLevel;

    private Date createTime;

    private String telphone;

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getUnionId() {
        return unionId;
    }

    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getAuthen() {
        return authen;
    }

    public void setAuthen(Integer authen) {
        this.authen = authen;
    }

    public boolean isCertificeted() {
        return certificeted;
    }

    public void setCertificeted(boolean certificeted) {
        this.certificeted = certificeted;
    }

    public String getHeadImgUrl() {
        return headImgUrl;
    }

    public void setHeadImgUrl(String headImgUrl) {
        this.headImgUrl = headImgUrl;
    }

    public Integer getMemberLevel() {
        return memberLevel;
    }

    public void setMemberLevel(Integer memberLevel) {
        this.memberLevel = memberLevel;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }

    public UserInfo() {
    }

    public UserInfo(String username, String password, Date createTime, String telphone, String headImgUrl, String unionId) {
        this.username = username;
        this.password = password;
        this.unionId = unionId;
        this.headImgUrl = headImgUrl;
        this.createTime = createTime;
        this.telphone = telphone;
    }

    public UserInfo(String username, String password, Date createTime, String telphone) {
        this.username = username;
        this.password = password;
        this.createTime = createTime;
        this.telphone = telphone;
    }

    public UserInfo(String username, String password,
                    Integer roleId, Integer authen, boolean certificeted, String headImgUrl, Date createTime) {
        this.username = username;
        this.password = password;
        this.roleId = roleId;
        this.authen = authen;
        this.certificeted = certificeted;
        this.headImgUrl = headImgUrl;
        this.createTime = createTime;
    }

    public UserInfo(long userId, String username, String password, String openId,String unionId, Integer roleId, Integer authen,
                    boolean certificeted, String headImgUrl, Integer memberLevel, Date createTime, String telphone) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.openId = openId;
        this.unionId=unionId;
        this.roleId = roleId;
        this.authen = authen;
        this.certificeted = certificeted;
        this.headImgUrl = headImgUrl;
        this.memberLevel = memberLevel;
        this.createTime = createTime;
        this.telphone = telphone;
    }

    @Override
    public String toString() {
        return "Userinfo{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", openId='" + openId + '\'' +
                ", unionId='" + unionId + '\'' +
                ", roleId=" + roleId +
                ", authen=" + authen +
                ", certificeted=" + certificeted +
                ", headImgUrl='" + headImgUrl + '\'' +
                ", memberLevel=" + memberLevel +
                ", createTime=" + createTime +
                ", telphone='" + telphone + '\'' +
                '}';
    }
}

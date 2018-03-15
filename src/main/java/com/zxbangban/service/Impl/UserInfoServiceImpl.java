package com.zxbangban.service.Impl;

import com.zxbangban.dao.UserInfoDao;
import com.zxbangban.entity.UserInfo;
import com.zxbangban.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by pingyr on 2017/7/13.
 */
@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    private UserInfoDao userInfoDao;
    public int newWorkerInfo(UserInfo userInfo) {
        return userInfoDao.newWorkerInfo(userInfo);
    }

    public int newUserInfo(UserInfo userInfo) {
        return userInfoDao.newUserInfo(userInfo);
    }

    public UserInfo queryByUsername(String username) {
        return userInfoDao.queryByUsername(username);
    }

    public String queryTelByUsername(String username) {
        return userInfoDao.queryTelByUsername(username);
    }

    public int updatePassword(String username, String password) {
        return userInfoDao.updatePassword(username,password);
    }

    public UserInfo queryByRoleId(Integer roleId) {
        return userInfoDao.queryByRoleId(roleId);
    }

    public UserInfo queryByUnionId(String unionId) {
        return userInfoDao.queryByUnionId(unionId);
    }
    public UserInfo queryByTelphone(String telephone){
        return userInfoDao.queryByTelphone(telephone);
    }

    public int saveUserInfo(UserInfo userInfo){
        return  userInfoDao.saveUserInfo(userInfo);
    }
    public int saveUnameAndPassword(UserInfo userInfo){return  userInfoDao.saveUnameAndPassword(userInfo);}

    public int updateUnionId(String unionid,String telphone){return  userInfoDao.updateUnionId(unionid,telphone);}

    public int  updateHeadImg(String username,String headImgUrl){return userInfoDao.updateHeadImg(username,headImgUrl);};
}

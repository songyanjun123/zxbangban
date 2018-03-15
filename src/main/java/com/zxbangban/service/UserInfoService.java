package com.zxbangban.service;

import com.zxbangban.entity.UserInfo;
import org.springframework.stereotype.Service;

/**
 * Created by pingyr on 2017/7/13.
 */
@Service
public interface UserInfoService {
    int newWorkerInfo(UserInfo userInfo);
    int newUserInfo(UserInfo userInfo);
    UserInfo queryByUsername(String username);
    String queryTelByUsername(String username);
    int updatePassword(String username, String password);
    UserInfo queryByRoleId(Integer roleId);
    UserInfo queryByUnionId(String unionId);
    UserInfo queryByTelphone(String telphone);
    int saveUserInfo(UserInfo userInfo);
    int saveUnameAndPassword(UserInfo userInfo);
    int updateUnionId(String unionId, String telphone);
    int updateHeadImg(String username,String headImgUrl);
}

package com.zxbangban.service.Impl;

import com.zxbangban.dao.UserProfileDao;
import com.zxbangban.entity.UserProfile;
import com.zxbangban.service.UserProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserProfileServiceImpl implements UserProfileService {
    @Autowired
    private UserProfileDao userProfileDao;
    public UserProfile queryUserProfileByUID(long userId) {
        return userProfileDao.queryUserProfileByUID(userId);
    }
}

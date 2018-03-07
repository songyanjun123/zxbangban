package com.zxbangban.service;

import com.zxbangban.entity.UserProfile;
import org.springframework.stereotype.Service;

@Service
public interface UserProfileService {
    UserProfile queryUserProfileByUID(long userId);
}

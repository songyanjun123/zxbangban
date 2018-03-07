package com.zxbangban.dao;

import com.zxbangban.entity.UserProfile;
import org.springframework.stereotype.Repository;

@Repository
public interface UserProfileDao {

    UserProfile queryUserProfileByUID(long userId);


}

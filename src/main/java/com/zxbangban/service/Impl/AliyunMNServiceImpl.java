package com.zxbangban.service.Impl;

import com.zxbangban.service.AliyunMNService;
import com.zxbangban.util.AliyunMNSUtil;
import org.springframework.stereotype.Service;

/**
 * Created by pingyr on 2017/7/4.
 */
@Service
public class AliyunMNServiceImpl implements AliyunMNService{

    public String SMSNotification(int typeNumber, String phoneNumber) {
        return AliyunMNSUtil.doSMSNotification(typeNumber,phoneNumber);
    }
}

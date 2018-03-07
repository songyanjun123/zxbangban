package com.zxbangban.service.Impl;

import com.aliyun.oss.OSSClient;
import com.zxbangban.service.AliyunOSService;
import com.zxbangban.util.AliyunOSSUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

@Service
public class AliyunOSServiceImpl implements AliyunOSService{
    public String updateHeadImages(long id,MultipartFile multipartfile,String oldFile) {
        try {
            if(oldFile!=null){
                AliyunOSSUtil.doDelete(oldFile);
            };
            return AliyunOSSUtil.doPost(String.valueOf(id),multipartfile);
        } catch (IOException e) {
            return  "https://zxbangban.oss-cn-beijing.aliyuncs.com/headdefaultimg.png";
        }

    }

    public String updateProjectImages(long id,MultipartFile multipartFile){
        try {
            return AliyunOSSUtil.doPost(String.valueOf(id)+"projectImg",multipartFile);
        } catch (IOException e) {
            return  "";
        }
    }

    public void deleteProjectImage(String fileName) {
        try {
            AliyunOSSUtil.doDelete(fileName);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean isExist(String fileName) {
        try {
            return AliyunOSSUtil.isExist(fileName);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}

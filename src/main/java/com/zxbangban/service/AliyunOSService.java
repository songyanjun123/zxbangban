package com.zxbangban.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Service
public interface AliyunOSService {
    String updateHeadImages(long id,MultipartFile multipartfile,String oldFile);
    String updateProjectImages(long id,MultipartFile multipartFile);
    void deleteProjectImage(String fileName);
    boolean isExist(String fileName);
}

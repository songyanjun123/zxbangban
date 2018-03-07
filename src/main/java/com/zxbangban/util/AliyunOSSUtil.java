package com.zxbangban.util;

import com.aliyun.oss.OSSClient;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class AliyunOSSUtil {
    private static final String endpoint = "http://oss-cn-beijing.aliyuncs.com";
    private static final String accessKeyId = "LTAIGlJAZQCRcR78";
    private static final String accessKeySecret = "wVM6DBKxKqfwzrrWbIUKsHQtlth2BC";

    public static String doPost(String id, MultipartFile multipartFile) throws IOException{

        OSSClient ossClient = new OSSClient(endpoint,accessKeyId,accessKeySecret);
        long currentTime = System.currentTimeMillis();
        String filename = id + String.valueOf(currentTime)+".png";

        //创建缓存文件
        File f = null;

        f = File.createTempFile("tmp", null);
        multipartFile.transferTo(f);

        //缓存文件上传至OSS
        InputStream inputStream = new FileInputStream(f);
        ossClient.putObject("zxbangban", filename, inputStream);
        //关闭OSS实例，删除临时文件
        ossClient.shutdown();
        f.deleteOnExit();
        return filename;

    }

    public static void doDelete(String fileName) throws IOException{
        OSSClient ossClient = new OSSClient(endpoint,accessKeyId,accessKeySecret);
        ossClient.deleteObject("zxbangban",fileName);
        ossClient.shutdown();
    }

    public static boolean isExist(String filename) throws  IOException{
        OSSClient ossClient = new OSSClient(endpoint,accessKeyId,accessKeySecret);
        boolean found = ossClient.doesObjectExist("zxbangban",filename);
        ossClient.shutdown();
        return found;
    }
}

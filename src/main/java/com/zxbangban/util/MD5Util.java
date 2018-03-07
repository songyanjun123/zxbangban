package com.zxbangban.util;



import java.math.BigInteger;
import java.security.MessageDigest;

/**
 * Created by pingyr on 2017/5/4.
 */
public class MD5Util {

    public static String EncryptedByMD5(String arg) {
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(arg.getBytes());
            return new BigInteger(1,md5.digest()).toString(16);
        }catch (Exception e){
            e.printStackTrace();
            throw new IllegalArgumentException("MD5加密失败！");
        }
    }
}

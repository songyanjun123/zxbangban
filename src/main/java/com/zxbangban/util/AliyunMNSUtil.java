package com.zxbangban.util;

import com.aliyun.mns.client.CloudAccount;
import com.aliyun.mns.client.CloudTopic;
import com.aliyun.mns.client.MNSClient;
import com.aliyun.mns.common.ServiceException;
import com.aliyun.mns.model.BatchSmsAttributes;
import com.aliyun.mns.model.MessageAttributes;
import com.aliyun.mns.model.RawTopicMessage;
import com.aliyun.mns.model.TopicMessage;
import com.zxbangban.enums.AliyunMNSTemplateCode;

import java.util.Random;

public class AliyunMNSUtil {

    private static final String accessId = "LTAIGlJAZQCRcR78";
    private static final String accessKey = "wVM6DBKxKqfwzrrWbIUKsHQtlth2BC";
    private static final String acountEndpoint = "https://1564985939361524.mns.cn-beijing.aliyuncs.com/";

    private static final String topicRef = "sms.topic-cn-beijing";

    public static String doSMSNotification(int MessageType,String phoneNumber){
        return sendNotification(MessageType,phoneNumber);
    }

    private static String sendNotification(int messageType,String phoneNumber){
        CloudAccount cloudAccount = new CloudAccount(accessId, accessKey, acountEndpoint);
        MNSClient mnsClient = cloudAccount.getMNSClient();
        CloudTopic cloudTopic = mnsClient.getTopicRef(topicRef);

        RawTopicMessage rawTopicMessage = new RawTopicMessage();
        rawTopicMessage.setMessageBody("装修帮办短信验证服务");

        MessageAttributes messageAttributes = new MessageAttributes();
        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
        batchSmsAttributes.setFreeSignName("装修帮办");
        batchSmsAttributes.setTemplateCode(AliyunMNSTemplateCode.codeOf(messageType).getCode());

        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
        String code = "";
        if(messageType == 1){
            code = randomSMSCode();
            smsReceiverParams.setParam("code",code);
        }
        batchSmsAttributes.addSmsReceiver(phoneNumber,smsReceiverParams);
        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
        TopicMessage topicMessage = null;
        try {
            topicMessage = cloudTopic.publishMessage(rawTopicMessage,messageAttributes);
        }catch (ServiceException se){
            se.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }

        if(topicMessage!=null){
            mnsClient.close();
            if(code.length() >0){
                return code;
            }
                return "success";
        }else {
            return "failure";
        }
    }

    private static String randomSMSCode(){
        int min = 100000;
        int max = 999999;
        Random random = new Random();
        int mnscode = random.nextInt(max)%(max-min+1) + min;
        return String.valueOf(mnscode);
    }

}

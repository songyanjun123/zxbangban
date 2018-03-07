package com.zxbangban.enums;

public enum AliyunMNSTemplateCode {
    SMS_VERIFICATION(1,"SMS_77605024"), //短信验证码
    SMS_WORKER_BOOKING_UN_CERTIFICATED_NOTIFICATION(2,"SMS_78950013"), //未认证的工人被预约
    SMS_CUSTOMER_BOOKING_NOTIFICATION(3,"SMS_114225020"), //通知业主预约成功
    SMS_SERVICE_CUSTOMER_BOOKING_NOTIFICATION(4,"SMS_114435002"),//提醒客服有业主预约
    SMS_WORKER_BOOKING_CERTIFICATED_NOTIFICATION(5,"SMS_115125031"),//已认证工人被预约
    SMS_SERVICE_WORKER_SETTLE_NOTIFICATION(6,"SMS_115200026");//提醒客服有工人入驻
    private int number;
    private String code;

    public int getNumber() {
        return number;
    }

    public String getCode() {
        return code;
    }

    AliyunMNSTemplateCode(int number, String code) {
        this.number = number;
        this.code = code;
    }

    public static AliyunMNSTemplateCode codeOf(int number){
        for(AliyunMNSTemplateCode templateCode : values()){
            if(templateCode.getNumber() == number){
                return templateCode;
            }
        }
        return null;
    }
}

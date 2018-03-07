package com.zxbangban.enums;

/**
 * Created by pingyr on 2017/6/2.
 */
public enum OrderState {
    UNPROCESSED(0,"未处理"),
    PROCESSING(1,"处理中"),
    ACCEPTING(2,"验收中"),
    ACCEPTED(3,"已验收"),
    PROCESSED(4,"已处理");
    private int state;

    private String info;

    public int getState() {
        return state;
    }

    public String getInfo() {
        return info;
    }

    OrderState(int state, String info) {
        this.state = state;
        this.info = info;
    }

    public static OrderState infoOf(int jobId){
        for(OrderState type : values()){
            if(type.getState() == jobId){
                return type;
            }
        }
        return null;
    }
}

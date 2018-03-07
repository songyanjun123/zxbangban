package com.zxbangban.enums;
/**
 * Created by pingyr on 2017/6/1.
 */
public enum RolesAuth {
    CUSTOMER(1,"普通用户"),
    WORKER(2,"工人用户"),
    BUSINESS(3,"商家用户"),
    CUSTOMER_SERVICE(4,"预约客服"),
    WORKER_SERVICE(5,"工人客服"),
    BUSINESS_SERVICE(6,"商家客服"),
    SERVICE_MANAGER(7,"客服经理"),
    REGION_MANAGER(8,"地区经理"),
    ADMIN(9,"监控服务");



    private Integer roleId;

    private String info;

    RolesAuth(Integer roleId, String info) {
        this.roleId = roleId;
        this.info = info;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public String getInfo() {
        return info;
    }

    public static RolesAuth rolesAuthOf(Integer index){
        for(RolesAuth rolesAuth : values()){
            if(rolesAuth.getRoleId().equals(index)){
                return rolesAuth;
            }

        }
        return null;
    }
}

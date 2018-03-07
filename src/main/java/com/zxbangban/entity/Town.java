package com.zxbangban.entity;

public class Town {

    private long id;
    private  String name;
    private String code;
    private  String cityCode;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }

    public Town() {
    }

    public Town(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Town(long id, String name, String code) {
        this.id = id;
        this.name = name;
        this.code = code;
    }

    public Town(long id, String name, String code, String cityCode) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.cityCode = cityCode;
    }

    @Override
    public String toString() {
        return "Town{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", cityCode='" + cityCode + '\'' +
                '}';
    }
}

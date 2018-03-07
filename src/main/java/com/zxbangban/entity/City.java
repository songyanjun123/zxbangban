package com.zxbangban.entity;

public class City {

    private long id;
    private String name;
    private  String code;
    private String privinceCode;

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

    public String getPrivinceCode() {
        return privinceCode;
    }

    public void setPrivinceCode(String privinceCode) {
        this.privinceCode = privinceCode;
    }

    public City() {
    }

    public City(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public City(long id, String name, String code) {
        this.id = id;
        this.name = name;
        this.code = code;
    }

    public City(long id, String name, String code, String privinceCode) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.privinceCode = privinceCode;
    }


    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", privinceCode='" + privinceCode + '\'' +
                '}';
    }
}

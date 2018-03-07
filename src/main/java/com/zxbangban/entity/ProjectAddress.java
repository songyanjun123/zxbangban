package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

@Repository
public class ProjectAddress {

    private String name;

    private String tel;

    private String region;

    private String street;

    private String notes;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public ProjectAddress() {
    }

    public ProjectAddress(String name, String tel, String region, String street, String notes) {
        this.name = name;
        this.tel = tel;
        this.region = region;
        this.street = street;
        this.notes = notes;
    }
}

package com.zxbangban.entity;

public class Company {
    private long cid;
    private String cname;
    private String curl;
    private int ctype;//1是公司动态，2是行业新闻，3是最新工程，4是装修知识
    public Company() {
    }

    public Company(long cid, String cname, String curl, int ctype) {
        this.cid = cid;
        this.cname = cname;
        this.curl = curl;
        this.ctype = ctype;
    }

    public long getCid() {
        return cid;
    }

    public void setCid(long cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCurl() {
        return curl;
    }

    public void setCurl(String curl) {
        this.curl = curl;
    }

    public int getCtype() {
        return ctype;
    }

    public void setCtype(int ctype) {
        this.ctype = ctype;
    }

    @Override
    public String toString() {
        return "Company{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", curl='" + curl + '\'' +
                ", ctype=" + ctype +
                '}';
    }
}

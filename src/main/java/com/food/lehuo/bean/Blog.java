package com.food.lehuo.bean;

import java.util.Date;

public class Blog {
    private Integer bid;

    private Integer uid;

    private String bpicture;

    private String btitle;

    private Date btime;

    private String bdescribe;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getBpicture() {
        return bpicture;
    }

    public void setBpicture(String bpicture) {
        this.bpicture = bpicture == null ? null : bpicture.trim();
    }

    public String getBtitle() {
        return btitle;
    }

    public void setBtitle(String btitle) {
        this.btitle = btitle == null ? null : btitle.trim();
    }

    public Date getBtime() {
        return btime;
    }

    public void setBtime(Date btime) {
        this.btime = btime;
    }

    public String getBdescribe() {
        return bdescribe;
    }

    public void setBdescribe(String bdescribe) {
        this.bdescribe = bdescribe == null ? null : bdescribe.trim();
    }
}
package com.food.lehuo.bean;

public class Food {
    private Integer fid;

    private String fname;

    private String fportrait;

    private Double price;

    private String fdescribe;

    private Integer weight;

    private Integer recommend;

    private Integer cuisine;

    private Integer sid;

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname == null ? null : fname.trim();
    }

    public String getFportrait() {
        return fportrait;
    }

    public void setFportrait(String fportrait) {
        this.fportrait = fportrait == null ? null : fportrait.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getFdescribe() {
        return fdescribe;
    }

    public void setFdescribe(String fdescribe) {
        this.fdescribe = fdescribe == null ? null : fdescribe.trim();
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Integer getRecommend() {
        return recommend;
    }

    public void setRecommend(Integer recommend) {
        this.recommend = recommend;
    }

    public Integer getCuisine() {
        return cuisine;
    }

    public void setCuisine(Integer cuisine) {
        this.cuisine = cuisine;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }
}
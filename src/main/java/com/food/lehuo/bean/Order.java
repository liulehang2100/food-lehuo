package com.food.lehuo.bean;

import java.util.Date;

public class Order {
    private Integer oid;

    private Integer uid;

    private Date otime;

    private Integer fid;

    private Double totalprice;

    private Integer foodnum;

    private Date tijiaotime;
    
    private Food food;
    
    

    public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Date getOtime() {
        return otime;
    }

    public void setOtime(Date otime) {
        this.otime = otime;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public Double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(Double totalprice) {
        this.totalprice = totalprice;
    }

    public Integer getFoodnum() {
        return foodnum;
    }

    public void setFoodnum(Integer foodnum) {
        this.foodnum = foodnum;
    }

    public Date getTijiaotime() {
        return tijiaotime;
    }

    public void setTijiaotime(Date tijiaotime) {
        this.tijiaotime = tijiaotime;
    }
}
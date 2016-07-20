package com.chinasoft.sm.model.entity;

import java.util.Date;

public class Classes {
    private String id;

    private String clano;

    private String claname;

    private Date createtime;

    private Integer state;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getClano() {
        return clano;
    }

    public void setClano(String clano) {
        this.clano = clano == null ? null : clano.trim();
    }

    public String getClaname() {
        return claname;
    }

    public void setClaname(String claname) {
        this.claname = claname == null ? null : claname.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
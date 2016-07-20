package com.chinasoft.sm.model.entity;

import java.util.Date;

public class Students {
    private String id;

    private String stuname;

    private String stuno;

    private Date stubrithday;

    private Boolean stusex;

    private String stuclass;

    private Date intime;

    private Integer state;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname == null ? null : stuname.trim();
    }

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno == null ? null : stuno.trim();
    }

    public Date getStubrithday() {
        return stubrithday;
    }

    public void setStubrithday(Date stubrithday) {
        this.stubrithday = stubrithday;
    }

    public Boolean getStusex() {
        return stusex;
    }

    public void setStusex(Boolean stusex) {
        this.stusex = stusex;
    }

    public String getStuclass() {
        return stuclass;
    }

    public void setStuclass(String stuclass) {
        this.stuclass = stuclass == null ? null : stuclass.trim();
    }

    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
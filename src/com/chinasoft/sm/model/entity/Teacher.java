package com.chinasoft.sm.model.entity;

import java.util.Date;

public class Teacher {
    private String id;

    private String teano;

    private String teaname;

    private Date teabrithday;

    private String introduction;

    private Date intime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getTeano() {
        return teano;
    }

    public void setTeano(String teano) {
        this.teano = teano == null ? null : teano.trim();
    }

    public String getTeaname() {
        return teaname;
    }

    public void setTeaname(String teaname) {
        this.teaname = teaname == null ? null : teaname.trim();
    }

    public Date getTeabrithday() {
        return teabrithday;
    }

    public void setTeabrithday(Date teabrithday) {
        this.teabrithday = teabrithday;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }

    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }
}
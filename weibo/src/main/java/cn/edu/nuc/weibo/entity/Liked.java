package cn.edu.nuc.weibo.entity;

import java.util.Date;

public class Liked extends LikedKey {
    private Date ltime;

    public Date getLtime() {
        return ltime;
    }

    public void setLtime(Date ltime) {
        this.ltime = ltime;
    }
}
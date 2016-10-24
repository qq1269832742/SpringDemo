package cn.edu.nuc.weibo.entity;

import java.util.Date;

public class Weibo {
    private Integer wid;

    private Account account;

    private String wcontent;

    private Date lastUpdateTime;

    private String service;

    private Integer liked;

    private Integer comment;
    
    private Integer flag;

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getWcontent() {
        return wcontent;
    }

    public void setWcontent(String wcontent) {
        this.wcontent = wcontent == null ? null : wcontent.trim();
    }

    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service == null ? null : service.trim();
    }

    public Integer getLiked() {
        return liked;
    }

    public void setLiked(Integer liked) {
        this.liked = liked;
    }

    public Integer getComment() {
        return comment;
    }

    public void setComment(Integer comment) {
        this.comment = comment;
    }

	public Integer getFlag() {
		return flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		return "Weibo [wid=" + wid + ", account=" + account + ", wcontent=" + wcontent + ", lastUpdateTime="
				+ lastUpdateTime + ", service=" + service + ", liked=" + liked + ", comment=" + comment + ", flag="
				+ flag + "]";
	}
    
    
}
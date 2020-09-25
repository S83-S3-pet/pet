package com.yc.C83S3pet.bean;

import java.util.Date;

public class Pet_comment implements java.io.Serializable{

	/**
	 * 评论或回复
	 */
	private static final long serialVersionUID = 1L;
	private Integer bcid;
	private String bcname;
	private String bcdesc;
	private Date creattime;
	private Integer bid;
	public Integer getBcid() {
		return bcid;
	}
	public void setBcid(Integer bcid) {
		this.bcid = bcid;
	}
	public String getBcname() {
		return bcname;
	}
	public void setBcname(String bcname) {
		this.bcname = bcname;
	}
	public String getBcdesc() {
		return bcdesc;
	}
	public void setBcdesc(String bcdesc) {
		this.bcdesc = bcdesc;
	}
	public Date getCreattime() {
		return creattime;
	}
	public void setCreattime(Date creattime) {
		this.creattime = creattime;
	}
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	
	

}

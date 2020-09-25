package com.yc.C83S3pet.bean;

public class Comment implements java.io.Serializable{

	/**
	 * 评论或回复
	 */
	private static final long serialVersionUID = 1L;
	private Integer bcid;
	private String bcname;
	private String bcdesc;
	private String creatTime;
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
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	

}

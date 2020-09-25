package com.yc.C83S3pet.bean;

import java.util.Date;

public class Pet_blog implements java.io.Serializable{

	/**
	 * 博客
	 */
	private static final long serialVersionUID = 1L;
	private Integer bid;
	private String bname;
	private String title;
	private String bdesc;
	private Date createtime;
	private Integer uid;
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBdesc() {
		return bdesc;
	}
	public void setBdesc(String bdesc) {
		this.bdesc = bdesc;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	
	

}

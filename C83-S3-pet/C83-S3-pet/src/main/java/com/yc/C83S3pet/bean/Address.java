package com.yc.C83S3pet.bean;

public class Address implements java.io.Serializable{

	/**
	 * 地址实体类
	 */
	private static final long serialVersionUID = 1L;
	private Integer aid;
	private Integer uid;
	private String addr;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
}

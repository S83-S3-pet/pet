package com.yc.C83S3pet.bean;

public class Category implements java.io.Serializable{

	/**
	 * 分类
	 */
	private static final long serialVersionUID = 1L;
	private Integer cid;
	private String cname;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	

}

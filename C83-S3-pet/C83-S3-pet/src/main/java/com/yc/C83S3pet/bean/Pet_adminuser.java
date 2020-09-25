package com.yc.C83S3pet.bean;

public class Pet_adminuser implements java.io.Serializable{

	/**
	 * 管理员实体类
	 */
	private static final long serialVersionUID = 1L;
	private Integer uid;
	private String username;
	private String password;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}

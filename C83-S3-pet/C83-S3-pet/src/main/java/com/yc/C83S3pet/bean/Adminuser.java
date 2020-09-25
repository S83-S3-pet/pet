package com.yc.C83S3pet.bean;

public class Adminuser implements java.io.Serializable{

	/**
	 * 管理员实体类
	 */
	private static final long serialVersionUID = 1L;
	private Integer adminuid;
	private String adminUname;
	private String password;
	public Integer getAdminuid() {
		return adminuid;
	}
	public void setAdminuid(Integer adminuid) {
		this.adminuid = adminuid;
	}
	public String getAdminUname() {
		return adminUname;
	}
	public void setAdminUname(String adminUname) {
		this.adminUname = adminUname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}

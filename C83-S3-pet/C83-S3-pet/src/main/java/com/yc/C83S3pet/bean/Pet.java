package com.yc.C83S3pet.bean;

public class Pet implements java.io.Serializable{
	/**
	 * 宠物实体类
	 */
	private static final long serialVersionUID = 1L;
	private Integer pid;
	private String pname;
	private Integer shopPrice;
	private String image;
	private String pdesc;
	private Integer state;
	private Integer cid;
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getShopPrice() {
		return shopPrice;
	}
	public void setShopPrice(Integer shopPrice) {
		this.shopPrice = shopPrice;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	

}

package com.yc.C83S3pet.bean;

public class Cart implements java.io.Serializable{

	/**
	 * 购物车
	 */
	private static final long serialVersionUID = 1L;
	private Integer cartId;
	private Integer uid;
	private Integer pid;
	private Integer count;
	public Integer getCartId() {
		return cartId;
	}
	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	
}

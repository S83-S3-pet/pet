package com.yc.C83S3pet.bean;

public class Pet_orderitem implements java.io.Serializable{

	/**
	 * 订单明细
	 */
	private static final long serialVersionUID = 1L;
	private Integer itemid;
	private Integer count;
	private Integer subtotal;
	private Integer pid;
	private Integer cid;
	public Integer getItemid() {
		return itemid;
	}
	public void setItemid(Integer itemid) {
		this.itemid = itemid;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(Integer subtotal) {
		this.subtotal = subtotal;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	
	

}

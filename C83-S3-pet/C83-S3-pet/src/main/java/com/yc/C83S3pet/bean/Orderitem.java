package com.yc.C83S3pet.bean;

public class Orderitem implements java.io.Serializable{

	/**
	 * 订单明细
	 */
	private static final long serialVersionUID = 1L;
	private Integer itemId;
	private Integer count;
	private Integer subTotal;
	private Integer pid;
	private Integer cid;
	public Integer getItemId() {
		return itemId;
	}
	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(Integer subTotal) {
		this.subTotal = subTotal;
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

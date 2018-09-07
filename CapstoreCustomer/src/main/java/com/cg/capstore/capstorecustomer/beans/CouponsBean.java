package com.cg.capstore.capstorecustomer.beans;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class CouponsBean {


	private String couponCode;
	private int couponAmount;
	private Date startDate;
	private Date endDate;
	
	public String getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	public int getCouponAmount() {
		return couponAmount;
	}
	public void setCouponAmount(int couponAmount) {
		this.couponAmount = couponAmount;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public CouponsBean(String couponCode, int couponAmount, Date startDate, Date endDate) {
		super();
		this.couponCode = couponCode;
		this.couponAmount = couponAmount;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	public CouponsBean() {
		super();
	}
	
	
	
	
}

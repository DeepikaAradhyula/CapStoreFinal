package com.cg.capstore.capstorecustomer.beans;

import java.sql.Date;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class PromosBean {

	private String promoCode;
	private Integer discount;
	private Date timePeriod;
	
	public String getPromoCode() {
		return promoCode;
	}
	public void setPromoCode(String promoCode) {
		this.promoCode = promoCode;
	}
	public Date getTimePeriod() {
		return timePeriod;
	}
	public void setTimePeriod(Date timePeriod) {
		this.timePeriod = timePeriod;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	
	public Integer getDiscount() {
		return discount;
	}
	public PromosBean(String promoCode, Integer discount, Date timePeriod) {
		super();
		this.promoCode = promoCode;
		this.discount = discount;
		this.timePeriod = timePeriod;
	}
	public PromosBean() {
		super();
	}

}

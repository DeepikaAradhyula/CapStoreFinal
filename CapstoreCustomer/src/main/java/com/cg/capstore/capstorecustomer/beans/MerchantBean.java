package com.cg.capstore.capstorecustomer.beans;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class MerchantBean {

	private String emailId;
	private String merchantName;
	private String phoneNo;
	private String type;
	private List<ProductBean> products; 
	public List<ProductBean> getProducts() {
		return products;
	}
	public void setProducts(List<ProductBean> products) {
		this.products = products;
	}

	private List<OrderBean> order;
	private String password;
	private List<CouponsBean> coupons;
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMerchantName() {
		return merchantName;
	}
	public void setMerchantName(String merchantName) {
		this.merchantName = merchantName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public List<OrderBean> getOrder() {
		return order;
	}
	public void setOrder(List<OrderBean> order) {
		this.order = order;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<CouponsBean> getCoupons() {
		return coupons;
	}
	public void setCoupons(List<CouponsBean> coupons) {
		this.coupons = coupons;
	}
	
	
	public MerchantBean(String emailId, String merchantName, String phoneNo, String type, List<ProductBean> products,
			List<OrderBean> order, String password, List<CouponsBean> coupons) {
		super();
		this.emailId = emailId;
		this.merchantName = merchantName;
		this.phoneNo = phoneNo;
		this.type = type;
		this.products = products;
		this.order = order;
		this.password = password;
		this.coupons = coupons;
	}
	public MerchantBean() {
		super();
	}
	
	
}

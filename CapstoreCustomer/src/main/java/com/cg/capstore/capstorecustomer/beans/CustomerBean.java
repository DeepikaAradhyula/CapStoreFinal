package com.cg.capstore.capstorecustomer.beans;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class CustomerBean {


	private String email;

	private String password;

	private String customerName;

	private String mobileNo;

	private String address;
	
	
	private WishlistBean wishlist;


	private List<ProductBean> cart;

	private OrderBean order;

	public List<ProductBean> getCart() {
		return cart;
	}

	public void setCart(List<ProductBean> cart) {
		this.cart = cart;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public WishlistBean getWishlist() {
		return wishlist;
	}

	public void setWishlist(WishlistBean wishlist) {
		this.wishlist = wishlist;
	}

	/*public Map<String, ProductBean> getCart() {
		return cart;
	}

	public void setCart(Map<String, ProductBean> cart) {
		this.cart = cart;
	}*/

	public OrderBean getOrder() {
		return order;
	}

	public void setOrder(OrderBean order) {
		this.order = order;
	}
	
	public CustomerBean(String email, String password, String customerName, String mobileNo, String address,
			WishlistBean wishlist, List<ProductBean> cart, OrderBean order) {
		super();
		this.email = email;
		this.password = password;
		this.customerName = customerName;
		this.mobileNo = mobileNo;
		this.address = address;
		this.wishlist = wishlist;
		this.cart = cart;
		this.order = order;
	}

	public CustomerBean() {
		super();
	}
	
}

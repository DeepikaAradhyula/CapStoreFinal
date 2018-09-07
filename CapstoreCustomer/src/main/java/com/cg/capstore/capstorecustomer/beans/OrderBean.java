package com.cg.capstore.capstorecustomer.beans;

import java.sql.Date;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class OrderBean {
	private String orderId;
	private String orderStatus;
	private int quantity;
	private List<ProductBean> product;
	private String paymentMethod;
	private Date dateOfOrder; //sql.date
	private Date deliveryDate;  //sql.date
	private Integer minBillingAmount;
private double totalPrice;
	
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public List<ProductBean> getProduct() {
		return product;
	}
	public void setProduct(List<ProductBean> product) {
		this.product = product;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public Date getDateOfOrder() {
		return dateOfOrder;
	}
	public void setDateOfOrder(Date dateOfOrder) {
		this.dateOfOrder = dateOfOrder;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public Integer getMinBillingAmount() {
		return minBillingAmount;
	}
	public void setMinBillingAmount(Integer minBillingAmount) {
		this.minBillingAmount = minBillingAmount;
	}
	public OrderBean(String orderId, String orderStatus, int quantity, List<ProductBean> product, String paymentMethod,
			Date dateOfOrder, Date deliveryDate, Integer minBillingAmount) {
		super();
		this.orderId = orderId;
		this.orderStatus = orderStatus;
		this.quantity = quantity;
		this.product = product;
		this.paymentMethod = paymentMethod;
		this.dateOfOrder = dateOfOrder;
		this.deliveryDate = deliveryDate;
		this.minBillingAmount = minBillingAmount;
	}
	
	public OrderBean() {
		super();
	}

	

}

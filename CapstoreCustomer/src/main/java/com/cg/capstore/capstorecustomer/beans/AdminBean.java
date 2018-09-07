package com.cg.capstore.capstorecustomer.beans;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class AdminBean {

	private String emailId;

	private String Password;

	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		this.Password = password;
	}
	public AdminBean(String emailId, String password) {
		super();
		this.emailId = emailId;
		this.Password = password;
	}
	public AdminBean() {
		super();
	}
	
	
}

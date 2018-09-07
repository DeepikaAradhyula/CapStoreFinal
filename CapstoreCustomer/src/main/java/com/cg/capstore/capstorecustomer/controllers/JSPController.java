package com.cg.capstore.capstorecustomer.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JSPController {
	
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping("/adminlogin")
	public String adminLogin() {
		return "adminlogin";
	}
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/editprofile")
	public String editCustomerProfile() {
	return "editprofile"; 
	}
	
	@RequestMapping("/changepassword")
	public String changePassword() {
		return "changepassword";
	}
	@RequestMapping("/changepasswordadmin")
	public String changePasswordAdmin() {
		return "changepasswordadmin";
	}
	@RequestMapping("/categories")
	public String categories() {
		return "categories";
	}

}

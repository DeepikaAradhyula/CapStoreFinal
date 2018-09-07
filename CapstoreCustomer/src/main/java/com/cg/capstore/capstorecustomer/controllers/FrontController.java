package com.cg.capstore.capstorecustomer.controllers;


import java.util.List;

import org.springframework.ui.ModelMap;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.cg.capstore.capstorecustomer.beans.AdminBean;
import com.cg.capstore.capstorecustomer.beans.CustomerBean;
import com.cg.capstore.capstorecustomer.beans.MerchantBean;

@RestController
public class FrontController {
	private String email;
	@RequestMapping("/")
	public String test() {
		return "Spring Rest";
	}
	@RequestMapping("/home")
	public ModelAndView login() {
		RestTemplate restTemplate= new RestTemplate();
		CustomerBean customer=restTemplate.getForObject("http://localhost:9002/getcustomer?email="+email,CustomerBean.class);
		ModelAndView mav=new ModelAndView();
		if(customer!=null) {
			mav.addObject("customer", customer);
			mav.setViewName("home");
		}
		else {
			mav.setViewName("home");
		}
		return mav;
	}
	@RequestMapping("/home-page")
	public ModelAndView redirectToHome(String email,  String pass) {
		this.email=email;
		RestTemplate restTemplate= new RestTemplate();
		CustomerBean customer=restTemplate.getForObject("http://localhost:9002/validatecustomer?email="+email+"&password="+pass,CustomerBean.class);
		ModelAndView mav=new ModelAndView();
		if(customer!=null){
			/*this.customer.setEmail(customer.getEmail());
			this.customer.setCustomerName(customer.);*/
			mav.addObject("customer",customer);
			mav.setViewName("home");
			return mav;
		}else {
			mav.addObject("message", "Invalid username and password");
			mav.setViewName("login");
			return mav;
		}
		
	}
	
	@RequestMapping("/admin-home")
	public ModelAndView redirectToAdmin(String email,  String pass) {
		RestTemplate restTemplate= new RestTemplate();
		AdminBean admin=restTemplate.getForObject("http://localhost:9002/validateadmin?email="+email+"&password="+pass,AdminBean.class);
		ModelAndView mav=new ModelAndView();
		/*mav.addObject("admin",admin);*/
		if(admin!=null){
			mav.addObject("admin",admin);
			mav.setViewName("admin");
			return mav;
		}else {
			/*mav.addObject("message", "Invalid username and password");*/
			mav.setViewName("adminlogin");
			return mav;
		}
		
	}
	@RequestMapping("/customerprofile")
	public ModelMap customerProfile(ModelMap map) {
		RestTemplate restTemplate= new RestTemplate();
		CustomerBean customer=restTemplate.getForObject("http://localhost:9002/getcustomer?email="+email,CustomerBean.class);
			map.put("customer",customer);
			return map;
		
	}
	
	@RequestMapping("/change-password")
	public ModelAndView changePassword(String oldPassword, String newPassword) {
		RestTemplate restTemplate=new RestTemplate();
		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		map.add("oldPassword", oldPassword);
		map.add("newPassword", newPassword);
		Boolean success=restTemplate.postForObject("http://localhost:9002/changepassword", map,Boolean.class);
		ModelAndView mav=new ModelAndView();
		if(success) {
			mav.addObject(success);
			mav.setViewName("/home");
			return mav;
		}else {
			mav.setViewName("/changepassword");
			return mav;
		}
	}
		
		@RequestMapping("/change-password-admin")
		public ModelAndView changePasswordAdmin(String oldPassword, String newPassword) {
			RestTemplate restTemplate=new RestTemplate();
			MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
			map.add("oldPassword", oldPassword);
			map.add("newPassword", newPassword);
			Boolean success=restTemplate.postForObject("http://localhost:9002/changepasswordadmin", map,Boolean.class);
			ModelAndView mav=new ModelAndView();
			if(success) {
				mav.addObject(success);
				mav.setViewName("admin");
				return mav;
			}else {
				mav.setViewName("/changepasswordadmin");
				return mav;
			}
		
	}
	
	@RequestMapping("/edit-profile")
	public ModelAndView editCustomerProfile(String customerName,String address, String mobileNo) {
	RestTemplate restTemplate=new RestTemplate();
	MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
	map.add("email", email);
	map.add("customerName", customerName);
	map.add("address", address);
	map.add("mobileNo", mobileNo);
	CustomerBean customer=restTemplate.postForObject("http://localhost:9002/editprofilecustomer", map,CustomerBean.class);
	ModelAndView mav=new ModelAndView();
	if(customer!=null) {
		mav.addObject(customer);
		mav.setViewName("/home");
		return mav;
	}else {
		mav.setViewName("/editprofile");
		return mav;
	}
	}
	
	@RequestMapping("/confirmsignup")
	public ModelAndView confirmSignUp(String customerName, String mobileNo, String email, String password, String address) {
		RestTemplate restTemplate= new RestTemplate();
		ModelAndView mav = new ModelAndView();
		CustomerBean customer=restTemplate.getForObject("http://localhost:9002/getcustomer?email="+email,CustomerBean.class);
			if(customer==null) {
				MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
				map.add("customerName", customerName);
				map.add("mobileNo", mobileNo);
				map.add("email",email);
				map.add("password",password);
				map.add("address", address);
				Boolean success=restTemplate.getForObject("http://localhost:9002/signupcustomer?customerName="+customerName+"&mobileNo="+mobileNo+"&email="+email+"&password="+password+"&address="+address, Boolean.class);
			    if(success) {
			    	mav.setViewName("confirmsignup");
			    }else {
			    	mav.setViewName("signup");
			    }
			}else {
				mav.setViewName("signup");
			}
			return mav;
	}
	
	@RequestMapping("/customerlist")
	public ModelMap viewAllCustomerDetails(ModelMap model) {
		RestTemplate restTemplate = new RestTemplate();
		List<CustomerBean> response = restTemplate.getForObject("http://localhost:9002/viewallcust", List.class);
		model.put("customer", response);
		return model;
	}
	@RequestMapping("/merchantlist")
	public ModelMap viewAllMerchantDetails(ModelMap model) {
		RestTemplate restTemplate = new RestTemplate();

		List<MerchantBean> response = restTemplate.getForObject("http://localhost:9002/viewallmer", List.class);
		model.put("merchant", response);
		return model;

	}
	@RequestMapping("/adminmerchantsearch")
	public ModelMap logIn(String searchBox,ModelMap map) //the name of the input coming should be same as given in search.jsp,when request param not given
	{
		
		
	RestTemplate restTemplate=new RestTemplate();
	MerchantBean merchant = restTemplate.getForObject("http://localhost:9002/searchbymerchantname?name="+searchBox, MerchantBean.class);
	if(merchant!=null) {
		map.put("merchant", merchant);
	}else {
		CustomerBean customer = restTemplate.getForObject("http://localhost:9002/searchbycustomername?name="+searchBox, CustomerBean.class);
		map.put("customer", customer);
	}
	return map;

	}
}

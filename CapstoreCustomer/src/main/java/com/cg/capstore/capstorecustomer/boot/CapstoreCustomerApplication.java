package com.cg.capstore.capstorecustomer.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
@SpringBootApplication
@ComponentScan("com.cg.capstore.capstorecustomer.controllers")
public class CapstoreCustomerApplication {

	public static void main(String[] args) {
		SpringApplication.run(CapstoreCustomerApplication.class, args);
	}
}

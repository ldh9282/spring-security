package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	// Spring Security filter- login configure
	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		
		//return "plain-login";
		return "fancy-login";
	}
	
	// add request mapping for /access-denied
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		
		
		return "access-denied";
	}
}

package com.whozdahottest.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
 	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
 	}
	
	@RequestMapping(value="/loginFailed", method = RequestMethod.GET)
	public String loginFailed(ModelMap model) {
		model.addAttribute("error", "true");
		return "login";
 	}
	
	@RequestMapping(value="/welcome", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
 
		model.addAttribute("message", "Spring 3 MVC Hello World");
		return "welcome";
		
	}
 
}
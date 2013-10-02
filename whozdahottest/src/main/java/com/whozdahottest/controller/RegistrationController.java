package com.whozdahottest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.whozdahottest.form.Contestant;

@Controller
public class RegistrationController {
	
	@RequestMapping(value="registrationForm", method=RequestMethod.GET)
	public String loadFormPage(Model m) {
		m.addAttribute("constestant", new Contestant());
		return "registration";
	}
	
	@RequestMapping(value="registrationForm", method=RequestMethod.POST)
	public String submitForm(@ModelAttribute Contestant contestant, Model m) {
		m.addAttribute("message", "Successfully saved person: " + contestant.toString());
		return "registration";
	}

}

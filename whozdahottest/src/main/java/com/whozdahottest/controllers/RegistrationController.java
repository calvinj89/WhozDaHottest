package com.whozdahottest.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.whozdahottest.models.Contestant;
import com.whozdahottest.services.FileValidator;
import com.whozdahottest.services.UserExist;


@Controller
public class RegistrationController {
	
	@Autowired
	private UserExist userExist;
	
	@Autowired  
	FileValidator fileValidator;  
	
	ModelAndView modelAndView = null;
	
	/**
	 * 
	 */
	public RegistrationController(){
		//Constructor
	}
	
	/**
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value="registrationForm", method=RequestMethod.GET)
	public String  loadFormPage(ModelMap  model) {
		
		model.addAttribute("contestant", new Contestant());
		return "registration";
	}
	
	/**
	 * 
	 * @param contestant
	 * @param result
	 * @return
	 */
	@RequestMapping(value="registrationForm", method=RequestMethod.POST)
	public String submitForm(@Valid Contestant contestant, BindingResult result) {
		
		if (userExist == null){
			userExist = new UserExist();
		}
		
		
		if (userExist.checkUserExist(contestant.getUserName())){
			result.getFieldError("User Already exist");
		}
		
		if (contestant.getPassword().equals(contestant.getPasswordConfirmation())){
			result.getFieldError("Password doesn't match");
		}
		
		
		InputStream inputStream = null;  
		OutputStream outputStream = null;  
				  
		MultipartFile file = contestant.getFile();  
		fileValidator.validate(contestant, result);  
	
		if (result.hasErrors()) { 
			System.out.println("Result Error " + result.getObjectName() + " to string " + result.toString());
			return "registration";  
		}  
		
		String fileName = file.getOriginalFilename(); 
		
		try {  
			  
			inputStream = file.getInputStream();  
				  
			File newFile = new File("C:/temp/landing/" + fileName);  
			
			if (!newFile.exists()) {  
				newFile.createNewFile();  
			}  
			   
			outputStream = new FileOutputStream(newFile);  
			int read = 0;  
			byte[] bytes = new byte[1024];  
				  
			while ((read = inputStream.read(bytes)) != -1) {  
				outputStream.write(bytes, 0, read);  
			}  
			
		} catch (IOException e) {  
			// TODO Auto-generated catch block  
			e.printStackTrace();  
		}  
		
		 modelAndView = new ModelAndView("registrationConfirmation");
		 modelAndView.addObject("userName", contestant.getUserName());
		 modelAndView.addObject("stageName", contestant.getStageName());
		 modelAndView.addObject("whoOrWhereURepresent", contestant.getWhoOrWhereURepresent());
		 modelAndView.addObject("bio", contestant.getBio());
		 modelAndView.addObject("twitter", contestant.getTwitter());
		 modelAndView.addObject("instagram", contestant.getInstagram());
		 modelAndView.addObject("facebook", contestant.getFacebook());
		 modelAndView.addObject("googlePlus", contestant.getGooglePlus());
		
		return "registrationConfirmation";
	}

}

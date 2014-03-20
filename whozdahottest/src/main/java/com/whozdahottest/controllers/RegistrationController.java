package com.whozdahottest.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.whozdahottest.models.Contestant;
import com.whozdahottest.models.States;
import com.whozdahottest.models.StatusResponse;
import com.whozdahottest.services.FileValidator;
import com.whozdahottest.validation.RegistrationValidation;


@Controller
public class RegistrationController {
	
	
	@Autowired  
	FileValidator fileValidator; 
	
	
	@Autowired
    private RegistrationValidation registrationValidation;
	
	
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
	public String  loadFormPage(ModelMap model) {
		
		 model.addAttribute("statesMap", States.getStates());
		 model.addAttribute("contestant", new Contestant());
		 return "registration";
	}
	
	
	/**
	 * 
	 * @param file
	 * @param model
	 * @return
	 */
	@RequestMapping(value="Upload", method=RequestMethod.POST)
	public @ResponseBody String fileUpload(@RequestParam("file") MultipartFile file, ModelMap model) {
		
		Contestant contestant = new Contestant();
		contestant.setFile(file);
		BindingResult result = new BeanPropertyBindingResult(contestant, "contestant");
		fileValidator.validate(contestant, result ); 
		
		if (result.hasErrors()) { 
			FieldError error = result.getFieldError();
		    
			if(error.toString().contains("File is not valid format")){
		    	return "File is not valid format";  
		    }
			
		}  
		
		return "success";
	}

	/**
	 * 
	 * @param contestant
	 * @param result
	 * @return
	 */
	@RequestMapping(value="registrationForm", method=RequestMethod.POST)
	public String submitForm(@Valid Contestant contestant, BindingResult result) {
					
		registrationValidation.validate(contestant, result);
		
		InputStream inputStream = null;  
		OutputStream outputStream = null;  
				  
		MultipartFile file = contestant.getFile();  
		fileValidator.validate(contestant, result);  
	
		if (result.hasErrors()) { 
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
		 modelAndView.addObject("facebook", contestant.getFacebook());
		 modelAndView.addObject("twitter", contestant.getTwitter());
		 modelAndView.addObject("instagram", contestant.getInstagram());
		 modelAndView.addObject("googlePlus", contestant.getGooglePlus());
		
		
		return "registrationConfirmation";
	}

}

package com.example.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.Register;

@Controller
public class RegistrationController {

	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String displayRegisterationPage(Model model) {
		Register registeration = new Register();
		model.addAttribute("register", registeration);
		return "register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String processEvent(@Valid @ModelAttribute("register") Register registeration, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			return "register";
		} 

		return "redirect:index.html";
	}

}

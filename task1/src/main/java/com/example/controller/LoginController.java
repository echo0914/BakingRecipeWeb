package com.example.controller;


import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.Login;


@Controller
public class LoginController {
	
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String displayLoginPage(Model model) {
		Login login = new Login();
		model.addAttribute("login", login);
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String processEvent(@Valid @ModelAttribute("login") Login login, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			return "login";
		} 

		return "redirect:index.html";
	}
}
	


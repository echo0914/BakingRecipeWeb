package com.example.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.model.Recipe;


@Controller
@SessionAttributes("recipe")
public class RecipeController {
	
	@RequestMapping(value="/recipe", method=RequestMethod.GET)
	public String displayEventPage(Model model) {
		Recipe recipe = new Recipe();
		recipe.setTitle("test");
		model.addAttribute("recipe", recipe);
		return "recipe";		
	}
	
	@RequestMapping(value="/recipe", method=RequestMethod.POST)
	public String processEvent(@ModelAttribute("recipe") Recipe recipe, Model model) {
		System.out.print(recipe);
		return "recipe.html";
		
	}
	
	

}

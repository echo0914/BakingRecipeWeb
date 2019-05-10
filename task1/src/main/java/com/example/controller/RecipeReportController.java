package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.Recipe;

@RestController
public class RecipeReportController {

	@RequestMapping("/recipes")
	public @ResponseBody List<Recipe> getRecipes(){
		List<Recipe> recipes = new ArrayList<>();
		Recipe recipe1 = new Recipe();
		recipe1.setTitle("Classic Cheese Cake");
		List<String> ingredients1 = new ArrayList<String>();
		ingredients1.add("Cream Cheese");
		ingredients1.add("Vanilla");
		ingredients1.add("Grahan Cracker");
		ingredients1.add("Vanilla Extract");
		ingredients1.add("Sugar");
		ingredients1.add("Condensed Milk");
		recipe1.setIngredients(ingredients1);
		
		recipes.add(recipe1);
		
		Recipe recipe2 = new Recipe();
		recipe2.setTitle("Chewy Chocolate Chip Cookies");
		List<String> ingredients2 = new ArrayList<String>();
		ingredients2.add("Chocolate Chips");
		ingredients2.add("Butter");
		ingredients2.add("2 Eggs");
		recipe2.setIngredients(ingredients2);

		recipes.add(recipe2);
		return recipes;
	}
}

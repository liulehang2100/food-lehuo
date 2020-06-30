package com.food.lehuo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.food.lehuo.bean.Food;
import com.food.lehuo.service.FoodService;

@Controller
public class FoodController {
	@Autowired
	private FoodService foodService;
	
	@RequestMapping(value="/home")
	public String getAll(Model model) {
		List<Food> list=foodService.getAll();
		model.addAttribute("list", list);
		return "index";
	}
}

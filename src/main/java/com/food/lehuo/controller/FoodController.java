package com.food.lehuo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.lehuo.bean.Food;
import com.food.lehuo.service.FoodService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
public class FoodController {
	@Autowired
	private FoodService foodService;
	
	@RequestMapping(value="/home")
	public String getAll(HttpSession session) {
		List<Food> hlist=foodService.getAll();
		session.setAttribute("hlist", hlist);
		return "index";
	}
	@RequestMapping(value="/foodList",method=RequestMethod.GET)
	public String pageInfo(@RequestParam(name="currpage",required = false,defaultValue="1") int currpage,Model model) {
		 PageHelper.startPage(currpage, 6);
	     List<Food> list = foodService.getAll();
	     PageInfo pageInfo = new PageInfo(list, 6);
	     model.addAttribute("pageInfo",pageInfo);
		return "menu";
	}
	
	@RequestMapping(value="/findFood",method=RequestMethod.GET)
	public Object findFood(int fid,HttpSession session) {
		Food food=foodService.selectByPrimaryKey(fid);
		session.setAttribute("food", food);
		return "details";
	}
	
	/*
	 * @RequestMapping(value="/carList",method=RequestMethod.GET) public Object
	 * car(HttpSession session) { List<Food> clist=foodService.carList();
	 * session.setAttribute("clist", clist); return "car"; }
	 */
}

package com.food.lehuo.service;

import java.util.List;

import com.food.lehuo.bean.Food;

public interface FoodService {
	List<Food> getrecommend(int sid);
	List<Food> getAll();
}

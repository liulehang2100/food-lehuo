package com.food.lehuo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.lehuo.bean.Food;
import com.food.lehuo.bean.FoodExample;
import com.food.lehuo.bean.FoodExample.Criteria;
import com.food.lehuo.dao.FoodMapper;
import com.food.lehuo.service.FoodService;
@Service
public class FoodServiceImpl implements FoodService {
	@Autowired
	private FoodMapper foodDao;

	
	/*
	 * public List<Food> getrecommend(int sid) { FoodExample foodExample = new
	 * FoodExample(); Criteria criteria = foodExample.createCriteria();
	 * criteria.andSidEqualTo(sid); List<Food> flist =
	 * foodDao.selectByExample(foodExample); return flist; }
	 */
	 	
	public List<Food> getAll() {
		// TODO Auto-generated method stub
		return foodDao.selectByExample(null);
	}

	public Food selectByPrimaryKey(Integer fid) {
		return foodDao.selectByPrimaryKey(fid);
	}

	public List<Food> carList() {
		// TODO Auto-generated method stub
		return foodDao.selectByExample(null);
	}

	/*
	 * public List<Food> carList(Integer iscar) { FoodExample foodExample = new
	 * FoodExample(); Criteria criteria = foodExample.createCriteria();
	 * criteria.andSidEqualTo(iscar); List<Food> clist =
	 * foodDao.selectByExample(foodExample); return clist; }
	 */
	
	

}

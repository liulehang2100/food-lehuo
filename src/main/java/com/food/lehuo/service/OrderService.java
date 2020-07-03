package com.food.lehuo.service;

import java.util.List;

import com.food.lehuo.bean.Order;

public interface OrderService {
	boolean insert (Order record);
	List<Order> getcarList();
	boolean deleteByPrimaryKey(Integer oid);
	Order findByFid(Integer fid);
	boolean updateOrder(Order fidlist);
}

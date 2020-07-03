package com.food.lehuo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.lehuo.bean.Order;
import com.food.lehuo.dao.OrderMapper;
import com.food.lehuo.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderDao;
	
	public boolean insert(Order record) {
		int result=orderDao.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	public List<Order> getcarList() {
		// TODO Auto-generated method stub
		return orderDao.getcarList();
	}

	public boolean deleteByPrimaryKey(Integer oid) {
		int result=orderDao.deleteByPrimaryKey(oid);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	public Order findByFid(Integer fid) {
		return orderDao.findByFid(fid);
	}

	public boolean updateOrder(Order fidlist) {
		int result=orderDao.updateOrder(fidlist);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	

	

}

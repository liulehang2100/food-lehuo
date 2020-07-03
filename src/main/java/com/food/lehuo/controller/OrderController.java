package com.food.lehuo.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.food.lehuo.bean.Order;
import com.food.lehuo.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/addcar",method=RequestMethod.POST)
	@ResponseBody
	public Object car(int fid,HttpSession session) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		int uid=1;
		Order fidlist=orderService.findByFid(fid);
		if(fidlist != null) {
			// 调用更新数据的方法
			fidlist.setFoodnum(fidlist.getFoodnum()+1);
			fidlist.setOtime(new Date());
			boolean isOk=orderService.updateOrder(fidlist);
			if(isOk) {
				map.put("result", 1);
			}else {
				map.put("result",0);
			}
		}else {
			Order record=new Order();
			record.setFid(fid);
			record.setOtime(new Date());
			record.setFoodnum(1);
			record.setUid(uid);
			boolean ture=orderService.insert(record);
			if(ture) {
				map.put("result", 1);
			}else {
				map.put("result", 0);
			}
		}
		 return JSON.toJSONString(map);
	}
	
	@RequestMapping(value="/carAll",method=RequestMethod.GET)
	public Object carAll(Model model) {
		List<Order> olist=orderService.getcarList();
		model.addAttribute("olist", olist);
		return "car";
	}
	
	@RequestMapping(value="/delcar",method=RequestMethod.POST)
	@ResponseBody
	public Object delcar(Integer oid) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		boolean isOk=orderService.deleteByPrimaryKey(oid);
		if (isOk) {
            map.put("result", 1);
        }else {
            map.put("result", 0);
        }
        return JSON.toJSONString(map);
	}
	
}

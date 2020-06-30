package com.food.lehuo.util;

import java.util.HashMap;
import java.util.Map;

public class CommonsResult {
	// 响应状态 100表示成功 200表示失败
	private Integer code;
	// 响应消息
	private String message;
	// 响应给浏览器的数据
	private Map<String,Object> data=new HashMap<String, Object>();
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Map<String, Object> getData() {
		return data;
	}
	public void setData(Map<String, Object> data) {
		this.data = data;
	}
	
	// 响应成功时调用的方法
	public static CommonsResult success() {
		CommonsResult result = new CommonsResult();
		result.setCode(100);
		result.setMessage("处理成功");
		return result;
	}
	//响应失败时调用的方法
	public static CommonsResult failed() {
		CommonsResult result = new CommonsResult();
		result.setCode(200);
		result.setMessage("处理失败");
		return result;
	}
	//响应成功时需要携带数据给浏览器的方法
	public CommonsResult addData(String key,Object value) {
		this.getData().put(key, value);
		return this;
	}
}

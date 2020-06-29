package com.food.lehuo.util;

public class CommonsResult<T> {
	// 响应状态 100表示成功 200表示失败
	private Integer code;
	// 响应消息
	private String message;
	// 响应数据
	private T data;
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
	public CommonsResult(Integer code, String message) {
		super();
		this.code = code;
		this.message = message;
	}
	public CommonsResult() {
		super();
	}
	
}

package com.food.lehuo.util;

public class CommonsResult<T> {
	// ��Ӧ״̬ 100��ʾ�ɹ� 200��ʾʧ��
	private Integer code;
	// ��Ӧ��Ϣ
	private String message;
	// ��Ӧ����
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

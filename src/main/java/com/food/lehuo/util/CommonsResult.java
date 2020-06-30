package com.food.lehuo.util;

import java.util.HashMap;
import java.util.Map;

public class CommonsResult {
	// ��Ӧ״̬ 100��ʾ�ɹ� 200��ʾʧ��
	private Integer code;
	// ��Ӧ��Ϣ
	private String message;
	// ��Ӧ�������������
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
	
	// ��Ӧ�ɹ�ʱ���õķ���
	public static CommonsResult success() {
		CommonsResult result = new CommonsResult();
		result.setCode(100);
		result.setMessage("����ɹ�");
		return result;
	}
	//��Ӧʧ��ʱ���õķ���
	public static CommonsResult failed() {
		CommonsResult result = new CommonsResult();
		result.setCode(200);
		result.setMessage("����ʧ��");
		return result;
	}
	//��Ӧ�ɹ�ʱ��ҪЯ�����ݸ�������ķ���
	public CommonsResult addData(String key,Object value) {
		this.getData().put(key, value);
		return this;
	}
}

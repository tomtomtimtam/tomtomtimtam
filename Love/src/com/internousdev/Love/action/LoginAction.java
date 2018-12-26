package com.internousdev.Love.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	private String loginId;
	private String loginPassword;
	private String userName;
	private int age;
	private String sex;
	private static final String MALE="男性";
	private static final String FEMALE="女性";
	private Map<String,Object> session;
	private List<String> sexList=new ArrayList<String>();
	
	public String execute() {
		
		String ret=ERROR;
		
		session.put("sex", sex);
		session.put("sexList", sexList);
		sexList.add(MALE);
		sexList.add(FEMALE);

		ret=SUCCESS;
		
		return ret;
		
	}

	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public static String getMale() {
		return MALE;
	}
	public static String getFemale() {
		return FEMALE;
	}

	public List<String> getSexList() {
		return sexList;
	}

	public void setSexList(List<String> sexList) {
		this.sexList = sexList;
	}

}

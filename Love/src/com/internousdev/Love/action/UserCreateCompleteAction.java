package com.internousdev.Love.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.Love.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{
	private String loginId;
	private String loginPassword;
	private String userName;
	private int age;
	private String sex;
	public Map<String,Object> session;
	private UserInfoDAO dao=new UserInfoDAO();

	public String execute() {
		String ret=ERROR;
		
		int count;
		count=dao.createUser(loginId, loginPassword, userName, age, sex);
		if(count>0) {
			ret=SUCCESS;
		}else {
			ret=ERROR;
			session.put("sex", sex);
			session.put("sexList", session.get("sexList"));
		}

		return ret;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId=loginId;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword=loginPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName=userName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age=age;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session=session;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}

}

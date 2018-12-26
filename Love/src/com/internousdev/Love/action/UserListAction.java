package com.internousdev.Love.action;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.Love.dao.UserInfoDAO;
import com.internousdev.Love.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport{
	private String id;
	private String loginId;
	private String loginPassword;
	private String userName;
	private int age;
	private String sex;
	private String insert_date;
	List<UserInfoDTO> list=new ArrayList<UserInfoDTO>();
	UserInfoDAO dao=new UserInfoDAO();
	
	public String execute(){
		
		list=dao.select();
		
		return SUCCESS;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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


	public String getInsert_date() {
		return insert_date;
	}

	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}

	public List<UserInfoDTO> getList() {
		return list;
	}

	public void setList(List<UserInfoDTO> list) {
		this.list = list;
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

	
	
	
}

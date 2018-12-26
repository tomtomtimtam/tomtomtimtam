package com.internousdev.Love.action;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.Love.dao.DeleteDAO;
import com.internousdev.Love.dao.UserInfoDAO;
import com.internousdev.Love.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteUserAction extends ActionSupport{
	private String id;
	private String loginId;
	private String loginPassword;
	private String userName;
	private String age;
	private String insert_date;
	List<UserInfoDTO> list=new ArrayList<UserInfoDTO>();
	UserInfoDAO Udao=new UserInfoDAO();
	DeleteDAO Ddao=new DeleteDAO();
	
	public String execute(){
		
		String ret=ERROR;
		if(Ddao.deleteUser(id)>0) {
			ret=SUCCESS;
		}
		list=Udao.select();
		
		return ret;
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

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
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

	

}

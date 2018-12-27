package com.internousdev.Love.dto;

public class UserInfoDTO {
	private String id;
	private String loginId;
	private String loginPassword;
	private String userName;
	private int age;
	private int loginflg;
	private String sex;
	public String insert_date;
	public String updated_date;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id=id;
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
		this.age = age;
	}
	public int getLoginflg() {
		return loginflg;
	}
	public void setLoginflg(int loginflg) {
		this.loginflg = loginflg;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}
	public String getUpdated_date() {
		return updated_date;
	}
	public void setUpdated_date(String updated_date) {
		this.updated_date = updated_date;
	}
	

}

package com.internousdev.Love.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.Love.dao.UserInfoDAO;
import com.internousdev.Love.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware{
	
	private String loginId;
	private String loginPassword;
	private String userName;
	private int age;
	private String sex;
	private List<String> sexList=new ArrayList<String>();
	
	private List<String> loginIdErrorMessageList=new ArrayList<String>();
	private List<String> loginPasswordErrorMessageList=new ArrayList<String>();
	private List<String> userNameErrorMessageList=new ArrayList<String>();
	private List<String> loginIdEqualsErrorMessageList=new ArrayList<String>();
	
	public Map<String,Object> session;
	
	public String execute() {
		String ret=ERROR;
		
		InputChecker inputChecker=new InputChecker();

		UserInfoDAO dao=new UserInfoDAO();
		
		//エラーメッセージ
		loginIdErrorMessageList=inputChecker.doCheck("ログインID", loginId, 2, 16, true, false, false, true, false, false, false, false, false);
		loginPasswordErrorMessageList=inputChecker.doCheck("パスワード", loginPassword, 2, 16, true, false, false, true, false, false, false, false, false);
		userNameErrorMessageList=inputChecker.doCheck("ユーザーネーム", userName, 1, 16, true, true, true, true, true, true, false, true, false);
		
		//エラーメッセージがなければ・・・
		if(loginIdErrorMessageList.size()==0
			&&loginPasswordErrorMessageList.size()==0
			&&userNameErrorMessageList.size()==0
			&&loginIdEqualsErrorMessageList.size()==0) {
			//既存のアカウントがあればエラーメッセージを表示させる
			if(dao.select(loginId)==true) {
			loginIdEqualsErrorMessageList.add("使用できないログインIDです。");
			ret=ERROR;
			}//既存のIDがなければSUCCESS;
			else {
			ret=SUCCESS;
			session.put("sex", sex);
			System.out.println(sex);
			}
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
	public List<String> getLoginIdErrorMessageList() {
		return loginIdErrorMessageList;
	}
	public void setLoginIdErrorMessageList(List<String> loginIdErrorMessageList) {
		this.loginIdErrorMessageList = loginIdErrorMessageList;
	}
	public List<String> getLoginPasswordErrorMessageList() {
		return loginPasswordErrorMessageList;
	}
	public void setLoginPasswordErrorMessageList(List<String> loginPasswordErrorMessageList) {
		this.loginPasswordErrorMessageList = loginPasswordErrorMessageList;
	}
	public List<String> getUserNameErrorMessageList() {
		return userNameErrorMessageList;
	}
	public void setUserNameErrorMessageList(List<String> userNameErrorMessageList) {
		this.userNameErrorMessageList = userNameErrorMessageList;
	}
	public List<String> getLoginIdEqualsErrorMessageList() {
		return loginIdEqualsErrorMessageList;
	}
	public void setLoginIdEqualsErrorMessageList(List<String> loginIdEqualsErrorMessageList) {
		this.loginIdEqualsErrorMessageList = loginIdEqualsErrorMessageList;
	}
	public List<String> getSexList() {
		return sexList;
	}
	public void setSexList(List<String> sexList) {
		this.sexList = sexList;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
}

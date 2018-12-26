package com.internousdev.hibiscus.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.hibiscus.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;
/**
 *新規ユーザー登録完了
 * @author Tom
 *
 */
public class CreateUserCompleteAction extends ActionSupport implements SessionAware{

	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private String sex;
	private String email;
	private String loginId;
	private String password;
	private Map<String,Object> session;


	public String execute() {
		String ret=ERROR;

		//sessionが切れた場合HomeActionが実行される
		if(!session.containsKey("mCategoryDtoList")){
			return "session";
		}

		//ユーザー情報をDBに格納
		UserInfoDAO userInfoDAO=new UserInfoDAO();
		int count=userInfoDAO.createUser(familyName, firstName, familyNameKana, firstNameKana, sex, email, loginId, password);

		if(count>0) {
		ret=SUCCESS;
		}

		return ret;
	}


	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getFamilyNameKana() {
		return familyNameKana;
	}
	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana = familyNameKana;
	}
	public String getFirstNameKana() {
		return firstNameKana;
	}
	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana = firstNameKana;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

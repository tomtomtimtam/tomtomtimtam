package com.internousdev.hibiscus.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 *パスワード再設定
 * @author Tom
 *
 */
public class ResetPasswordAction extends ActionSupport implements SessionAware{

	//value stack
	private String loginId;
	private String password;
	private String newPassword;
	private String reConfirmationNewPassword;

	private Map<String,Object> session;
	public String execute() {
		String ret=ERROR;

		//sessionが切れた場合HomeActionが実行される
		if(!session.containsKey("mCategoryDtoList")){
			return "session";
		}

		ret=SUCCESS;

		return ret;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
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
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getReConfirmationNewPassword() {
		return reConfirmationNewPassword;
	}
	public void setReConfirmationNewPassword(String reConfirmationNewPassword) {
		this.reConfirmationNewPassword = reConfirmationNewPassword;
	}


}

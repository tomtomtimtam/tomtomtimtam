package com.internousdev.Love.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.Love.dao.UserInfoDAO;
import com.internousdev.Love.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ForgetPasswordCompleteAction extends ActionSupport implements SessionAware{
	
	private String loginId;
	private String userName;
	private String loginPassword;
	public String errorMessage;
	public Map<String,Object> session;
	
	UserInfoDAO dao=new UserInfoDAO();
	UserInfoDTO dto=new UserInfoDTO();
	
	
	public String execute() {
		String ret=ERROR;
		
		if(!(loginId.equals("")) && !(userName.equals(""))) {
			dto=dao.getPassword(loginId, userName);
			
			if(loginId.equals(dto.getLoginId()) && userName.equals(dto.getUserName())) {
		
				ret=SUCCESS;
				session.put("loginPassword",dto.getLoginPassword());
			}else {
				setErrorMessage("入力内容が間違っています");
				ret=ERROR;
			}
		}
		
		return ret;
		
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

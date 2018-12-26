package com.internousdev.hibiscus.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.hibiscus.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

/**
 *パスワード再設定完了
 * @author Tom
 *
 */
public class ResetPasswordCompleteAction extends ActionSupport implements SessionAware{

	//value stack
	private String loginId;
	private String newPassword;
	private Map<String,Object> session;

	public String execute() {
		String ret=ERROR;

		//sessionが切れた場合HomeActionが実行される
		if(!session.containsKey("mCategoryDtoList")){
			return "session";
		}

		//DB操作
		UserInfoDAO userInfoDAO=new UserInfoDAO();
		int count=userInfoDAO.resetPassword(newPassword,loginId);

		if(count>0) {
			ret=SUCCESS;
		}else {
			ret=ERROR;
		}

		return ret;
	}

	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

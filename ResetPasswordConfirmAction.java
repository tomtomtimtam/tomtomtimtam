package com.internousdev.hibiscus.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.hibiscus.dao.UserInfoDAO;
import com.internousdev.hibiscus.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;
/**
 *パスワード再設定確認
 * @author Tom
 *
 */
public class ResetPasswordConfirmAction extends ActionSupport implements SessionAware{

	//value stack
	private String loginId;
	private String password;
	private String newPassword;
	private String reConfirmationNewPassword;
	private String concealPassword;
	private Map<String,Object> session;

	//エラーメッセージ
	private List<String> loginIdErrorMessageList=new ArrayList<String>();
	private List<String> passwordErrorMessageList=new ArrayList<String>();
	private List<String> passwordIncorrectErrorMessageList=new ArrayList<String>();
	private List<String> newPasswordErrorMessageList=new ArrayList<String>();
	private List<String> newPasswordIncorrectErrorMessageList=new ArrayList<String>();
	private List<String> reConfirmationNewPasswordErrorMessageList=new ArrayList<String>();

	public String execute() {
		String ret=ERROR;

		//sessionが切れた場合HomeActionが実行される
		if(!session.containsKey("mCategoryDtoList")){
			return "session";
		}

		InputChecker inputChecker=new InputChecker();

		loginIdErrorMessageList=inputChecker.doCheck("ユーザID", loginId, 1, 8, true, false, false, true, false, false, false, false, false);
		passwordErrorMessageList=inputChecker.doCheck("現在のパスワード", password, 1, 16, true, false, false, true, false, false, false, false, false);
		newPasswordErrorMessageList=inputChecker.doCheck("新しいパスワード", newPassword, 1, 16, true, false, false, true, false, false, false, false, false);
		reConfirmationNewPasswordErrorMessageList=inputChecker.doCheck("新しいパスワード（再確認）", reConfirmationNewPassword, 1, 16, true, false, false, true, false, false, false, false, false);
		newPasswordIncorrectErrorMessageList=inputChecker.doPasswordCheck(newPassword, reConfirmationNewPassword);

		//エラーメッセージがなければ・・・
		if(loginIdErrorMessageList.size()==0
				&& passwordErrorMessageList.size()==0
				&& newPasswordErrorMessageList.size()==0
				&& newPasswordIncorrectErrorMessageList.size()==0
				&& reConfirmationNewPasswordErrorMessageList.size()==0) {
			//エラーメッセージがない状態で既存のアカウントが確認できればpasswordをconcealしてSUCCESSを返す
			UserInfoDAO userInfoDAO=new UserInfoDAO();
			if(userInfoDAO.isExistsUserInfo(loginId, password)){
				passwordIncorrectErrorMessageList = inputChecker.doPasswordCheck(newPassword, reConfirmationNewPassword);
				if (passwordIncorrectErrorMessageList.size() == 0) {
					concealPassword=concealPassword(newPassword);
					ret=SUCCESS;
				}
				//エラーメッセージがあればそれを返す
				else {

					ret=ERROR;
				}

			}
			//エラーメッセージがない状態で既存のアカウントがなければERRORかつerrorMessageを渡す
			else {
				passwordIncorrectErrorMessageList.add("ユーザーIDまたは現在のパスワードが異なります。");
				ret=ERROR;
			}
		}
		//エラーメッセージがあればそれを返す
		else {
			ret=ERROR;
		}
		return ret;

	}

	//passwordを隠すメソッド
	private String concealPassword(String password) {
		int beginIndex = 0;
		int endIndex = 0;
		if(password.length() > 0) {
			endIndex = 1;
		}
		StringBuilder stringBuilder = new StringBuilder("****************");

		String concealPassword = stringBuilder.replace(beginIndex, endIndex, password.substring(beginIndex,endIndex)).toString();
		return concealPassword;
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
	public String getReConfirmationPassword() {
		return reConfirmationNewPassword;
	}
	public void setReConfirmationPassword(String reConfirmationNewPassword) {
		this.reConfirmationNewPassword = reConfirmationNewPassword;
	}
	public List<String> getLoginIdErrorMessageList() {
		return loginIdErrorMessageList;
	}
	public void setLoginIdErrorMessageList(List<String> loginIdErrorMessageList) {
		this.loginIdErrorMessageList = loginIdErrorMessageList;
	}
	public List<String> getPasswordErrorMessageList() {
		return passwordErrorMessageList;
	}
	public void setPasswordErrorMessageList(List<String> passwordErrorMessageList) {
		this.passwordErrorMessageList = passwordErrorMessageList;
	}
	public List<String> getPasswordIncorrectErrorMessageList() {
		return passwordIncorrectErrorMessageList;
	}
	public void setPasswordIncorrectErrorMessageList(List<String> passwordIncorrectErrorMessageList) {
		this.passwordIncorrectErrorMessageList = passwordIncorrectErrorMessageList;
	}
	public List<String> getNewPasswordErrorMessageList() {
		return newPasswordErrorMessageList;
	}
	public void setNewPasswordErrorMessageList(List<String> newPasswordErrorMessageList) {
		this.newPasswordErrorMessageList = newPasswordErrorMessageList;
	}
	public List<String> getNewPasswordIncorrectErrorMessageList() {
		return newPasswordIncorrectErrorMessageList;
	}
	public void setNewPasswordIncorrectErrorMessageList(List<String> newPasswordIncorrectErrorMessageList) {
		this.newPasswordIncorrectErrorMessageList = newPasswordIncorrectErrorMessageList;
	}
	public String getConcealPassword() {
		return concealPassword;
	}
	public void setConcealPassword(String concealPassword) {
		this.concealPassword = concealPassword;
	}
	public String getReConfirmationNewPassword() {
		return reConfirmationNewPassword;
	}
	public void setReConfirmationNewPassword(String reConfirmationNewPassword) {
		this.reConfirmationNewPassword = reConfirmationNewPassword;
	}
	public List<String> getReConfirmationNewPasswordErrorMessageList() {
		return reConfirmationNewPasswordErrorMessageList;
	}
	public void setReConfirmationNewPasswordErrorMessageList(List<String> reConfirmationNewPasswordErrorMessageList) {
		this.reConfirmationNewPasswordErrorMessageList = reConfirmationNewPasswordErrorMessageList;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

package com.internousdev.Love.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.Love.dao.CommentDAO;
import com.internousdev.Love.dao.UserInfoDAO;
import com.internousdev.Love.dto.CommentDTO;
import com.internousdev.Love.dto.UserInfoDTO;
import com.internousdev.Love.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class LoginCompleteAction extends ActionSupport implements SessionAware{
	private String loginId;
	private String loginPassword;
	public Map<String,Object> session;

	private String id;
	private String userName;
	private String place;
	private int time;
	private String comment;
	private String insert_date;
	private List<CommentDTO> list=new ArrayList<CommentDTO>();
	CommentDAO Cdao=new CommentDAO();
	CommentDTO Cdto=new CommentDTO();
	private List<String> loginIdErrorMessageList=new ArrayList<String>();
	private List<String> loginPasswordErrorMessageList=new ArrayList<String>();

	public String execute() {
		String ret=ERROR;
		UserInfoDAO dao=new UserInfoDAO();
		UserInfoDTO dto=new UserInfoDTO();
		InputChecker inputChecker=new InputChecker();

		//エラーメッセージ
		loginIdErrorMessageList=inputChecker.doCheck("ログインID", loginId, 2, 16, true, false, false, true, false, false, false, false, false);
		loginPasswordErrorMessageList=inputChecker.doCheck("パスワード", loginPassword, 2, 16, true, false, false, true, false, false, false, false, false);

		if(loginIdErrorMessageList.size()==0
				&&loginPasswordErrorMessageList.size()==0) {
			dto=dao.login(loginId,loginPassword);
			if(loginId.equals(dto.getLoginId()) && loginPassword.equals(dto.getLoginPassword())) {
				if(loginId.equals("root") && loginPassword.equals("root")) {
					ret="kanrisha";
				}else if(dto.getSex().equals("男性")){
					//男性の場合
					list=Cdao.select();
					ret="menlogin";
					session.put("list",list);
					session.put("loginId", loginId);
					session.put("sex", dto.getSex());
				}else if(dto.getSex().equals("女性")){
					//女性の場合
					list=Cdao.select();
					ret="ladylogin";
					session.put("list",list);
					session.put("loginId", loginId);
					session.put("loginPassword", loginPassword);
					session.put("userName",dto.getUserName());
					session.put("sex", dto.getSex());
				}else {
					ret=ERROR;
				}
			}
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
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}
	public List<CommentDTO> getList() {
		return list;
	}
	public void setList(List<CommentDTO> list) {
		this.list = list;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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


}

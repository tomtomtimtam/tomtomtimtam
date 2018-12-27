package com.internousdev.Love.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.Love.dao.CommentDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CommentCreateConfirmAction extends ActionSupport implements SessionAware{
	private String userName;
	private String place;
	private int time;
	private String comment;
	private String errorMessage;
	public Map<String,Object> session;
	
	public String execute() {
		String ret=ERROR;
		
		CommentDAO dao=new CommentDAO();
		
		if(!(userName.equals("")) && !(place.equals("")) && !(time==0) && !(comment.equals("")) ) {
			dao.comment(userName,place,time,comment);
			ret=SUCCESS;
		}
		
		if(userName.equals("") || place.equals("") || comment.equals("")){
			setErrorMessage("未入力の箇所があります");
			ret=ERROR;
		}
		
		return ret;
		
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

package com.internousdev.Love.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.Love.dao.CommentDAO;
import com.internousdev.Love.dao.UserInfoDAO;
import com.internousdev.Love.dto.CommentDTO;
import com.internousdev.Love.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class LadyCommentCompleteAction extends ActionSupport implements SessionAware{
	private String userName;
	private String place;
	private int time;
	private String comment;
	private String errorMessage;
	public Map<String,Object> session;
	private List<CommentDTO> list=new ArrayList<CommentDTO>();
	
	public String execute() {
		String ret=ERROR;
		
		UserInfoDAO userInfoDAO=new UserInfoDAO();
		UserInfoDTO userInfoDTO=new UserInfoDTO();
		CommentDAO commentDAO=new CommentDAO();
		
		if(!(userName.equals("")) && !(place.equals("")) && !(time==0) && !(comment.equals("")) ) {
			userInfoDTO=userInfoDAO.getUserName(userName);
			if(!(userName.equals(userInfoDTO.getUserName()))){
				setErrorMessage("ユーザーネームが違います　登録したユーザーネームを入力してください");
				ret=ERROR;
			}
			if(userName.equals("") || place.equals("") || comment.equals("")){
				setErrorMessage("未入力の箇所があります");
				ret=ERROR;
			}
			commentDAO.comment(userName,place,time,comment);
			session.put("place", place);
			session.put("time", time);
			session.put("comment", comment);
			list=commentDAO.select();
			session.put("list", list);
			
			ret=SUCCESS;
		}
		
		return ret;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName=userName;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place=place;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time=time;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment=comment;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage=errorMessage;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session=session;
	}
	

}

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


public class MyPageAction extends ActionSupport implements SessionAware{

	private String loginId;
	private String loginPassword;
	private String userName;
	private int age;
	private String sex;
	private String id;
	private String comment;
	private String place;
	private int time;
	private String insert_date;
	public Map<String,Object> session;
	private List<CommentDTO> list=new ArrayList<CommentDTO>();
	UserInfoDAO userInfoDAO=new UserInfoDAO(); 
	UserInfoDTO userInfoDTO=new UserInfoDTO();
	CommentDAO commentDAO=new  CommentDAO();
	CommentDTO commentDTO=new CommentDTO();

	public String execute() {
		if(!session.containsKey("loginId")) {
			return "session";
		}
		String ret=ERROR;
		loginId=session.get("loginId").toString();

		userInfoDTO=userInfoDAO.getUserInfo(loginId);

		loginPassword=userInfoDTO.getLoginPassword();
		userName=userInfoDTO.getUserName();
		age=userInfoDTO.getAge();
		sex=userInfoDTO.getSex();
		
		list=commentDAO.getOwnCommentInfo(userName);
		
		id=commentDTO.getId();

		ret=SUCCESS;

		return ret;

	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
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


}

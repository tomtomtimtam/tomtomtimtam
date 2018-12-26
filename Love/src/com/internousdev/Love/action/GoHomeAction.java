package com.internousdev.Love.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.Love.dao.CommentDAO;
import com.internousdev.Love.dto.CommentDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoHomeAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	
	private String id;
	private String userName;
	private String place;
	private int time;
	private String comment;
	private String insert_date;
	private String sex;
	private List<CommentDTO> list=new ArrayList<CommentDTO>();
	CommentDAO Cdao=new CommentDAO();
	CommentDTO Cdto=new CommentDTO();
	
	public String execute() {
		String ret=ERROR;
			list=Cdao.select();
			session.put("list", list);
		if(sex.equals("男性")) {
			ret="men";
		}else if(sex.equals("女性")) {
			ret="lady";
		}
		return ret;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName=userName;
	}
	@Override
	public void setSession(Map<String,Object> session) {
		this.session=session;
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
	public Map<String, Object> getSession() {
		return session;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
}
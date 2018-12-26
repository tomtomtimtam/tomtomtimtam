package com.internousdev.Love.action;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.Love.dao.CommentDAO;
import com.internousdev.Love.dto.CommentDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CommentListAction extends ActionSupport{
	
	private String id;
	private String userName;
	private String place;
	private int time;
	private String comment;
	private String insert_date;
	private List<CommentDTO> list=new ArrayList<CommentDTO>();
	CommentDAO Cdao=new CommentDAO();
	CommentDTO Cdto=new CommentDTO();
	
	public String execute() {
		
		String ret=SUCCESS;
		list=Cdao.select();
		
		return ret;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
	

}

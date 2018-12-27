package com.internousdev.Love.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.Love.dto.CommentDTO;
import com.internousdev.Love.dto.UserInfoDTO;
import com.internousdev.Love.util.DBConnector;

public class MyPageDAO {

	public UserInfoDTO getUserInfo(String loginId){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		UserInfoDTO dto=new UserInfoDTO();


		String sql="select * from user_transaction where login_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ResultSet rs=ps.executeQuery();

			if(rs.next()) {
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setAge(rs.getInt("age"));
				dto.setSex(rs.getString("sex"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}
	public UserInfoDTO getMyPageLadyInfo(String id){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		UserInfoDTO Ldto=new UserInfoDTO();


		String sql="select * from user_transaction where id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();

			System.out.println(id);
			if(rs.next()) {
				Ldto.setLoginId(rs.getString("login_id"));
				Ldto.setLoginPassword(rs.getString("login_pass"));
				Ldto.setUserName(rs.getString("user_name"));
				Ldto.setAge(rs.getInt("age"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return Ldto;
	}
	public UserInfoDTO getUserMenInfo(String loginId){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		UserInfoDTO Ldto=new UserInfoDTO();


		String sql="select * from user_mens_transaction where login_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ResultSet rs=ps.executeQuery();

			if(rs.next()) {
				Ldto.setLoginId(rs.getString("login_id"));
				Ldto.setLoginPassword(rs.getString("login_pass"));
				Ldto.setUserName(rs.getString("user_name"));
				Ldto.setAge(rs.getInt("age"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return Ldto;
	}
	public UserInfoDTO getLadyInfo(String userName){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		UserInfoDTO Ldto=new UserInfoDTO();


		String sql="select * from user_ladys_transaction where login_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();

			if(rs.next()) {
				Ldto.setLoginId(rs.getString("login_id"));
				Ldto.setLoginPassword(rs.getString("login_pass"));
				Ldto.setUserName(rs.getString("user_name"));
				Ldto.setAge(rs.getInt("age"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return Ldto;
	}
	public UserInfoDTO getMenInfo(String userName){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		UserInfoDTO Ldto=new UserInfoDTO();


		String sql="select * from user_mens_transaction where login_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();

			if(rs.next()) {
				Ldto.setLoginId(rs.getString("login_id"));
				Ldto.setLoginPassword(rs.getString("login_pass"));
				Ldto.setUserName(rs.getString("user_name"));
				Ldto.setAge(rs.getInt("age"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return Ldto;
	}

	public ArrayList<CommentDTO> getCommentInfo(String userName){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		ArrayList<CommentDTO> cList=new ArrayList<CommentDTO>();

		String sql="select * from comments_transaction where user_name=? order by insert_date desc";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				CommentDTO Cdto=new CommentDTO();
				Cdto.setComment(rs.getString("comments"));
				Cdto.setInsert_date(rs.getString("insert_date"));
				Cdto.setId(rs.getString("id"));
				cList.add(Cdto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}

		return cList;
	}


}

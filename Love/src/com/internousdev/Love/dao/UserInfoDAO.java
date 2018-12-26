package com.internousdev.Love.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.Love.dto.UserInfoDTO;
import com.internousdev.Love.util.DBConnector;
import com.internousdev.Love.util.DateUtil;

public class UserInfoDAO {
	DBConnector db=new DBConnector();
	Connection con=db.getConnection();
	DateUtil du=new DateUtil();

	//ユーザー登録
	public int createUser(String loginId,String loginPassword,String userName,int age,String sex) {
		String sql="insert into user_transaction(login_id,login_pass,user_name,age,sex,insert_date,updated_date) values(?,?,?,?,?,?,?)";
		int count=0;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,loginId);
			ps.setString(2, loginPassword);
			ps.setString(3, userName);
			ps.setInt(4, age);
			ps.setString(5, sex);
			ps.setString(6, du.getDate());
			ps.setString(7, du.getDate());

			count=ps.executeUpdate();

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}

	//loginId入力時にアカウントがあるか確認する
	public boolean select(String loginId) {
		boolean ret=false;
		String sql="select count(*) as COUNT from user_transaction where login_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,loginId);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				if(rs.getInt("COUNT")>0) {
					ret=true;
				}
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
		return ret;
	}

	//ログイン
	public UserInfoDTO login(String loginId,String loginPassword) {
		UserInfoDTO dto=new UserInfoDTO();
		String sql="select * from user_transaction where login_id=? and login_pass=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ps.setString(2, loginPassword);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
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

	//マイページ用 loginIdを渡し、ユーザー情報を持ってくる
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
				dto.setId(rs.getString("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setAge(rs.getInt("age"));
				dto.setSex(rs.getString("sex"));
				dto.setInsert_date(rs.getString("insert_date"));
				dto.setUpdated_date(rs.getString("updated_date"));
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

	public UserInfoDTO getUserName(String userName) {
		UserInfoDTO dto=new UserInfoDTO();
		String sql="select * from user_transaction where user_name=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();

			if(rs.next()) {
				dto.setUserName(rs.getString("user_name"));
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

	//UserList
	public List<UserInfoDTO> select(){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		List<UserInfoDTO> list=new ArrayList<UserInfoDTO>();


		String sql="select * from user_transaction";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				UserInfoDTO dto=new UserInfoDTO();
				dto.setId(rs.getString("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setAge(rs.getInt("age"));
				dto.setSex(rs.getString("sex"));
				dto.setInsert_date(rs.getString("insert_date"));
				list.add(dto);
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

		return list;

	}

	//パスワード忘れた時用
	public UserInfoDTO getPassword(String loginId,String userName) {
		UserInfoDTO dto=new UserInfoDTO();
		String sql="select * from user_transaction where login_id=? and user_name=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ps.setString(2, userName);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
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

}

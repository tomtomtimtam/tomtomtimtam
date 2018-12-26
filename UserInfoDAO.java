package com.internousdev.hibiscus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.hibiscus.dto.UserInfoDTO;
import com.internousdev.hibiscus.util.DBConnector;
/**
 *
 * @author Tom
 *
 */
public class UserInfoDAO {

	//新規ユーザー登録
	public int createUser(String familyName,String firstName,String familyNameKana,String firstNameKana
			,String sex,String email,String loginId,String password) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();

		int count=0;
		String sql="insert into user_info(user_id,password,family_name,first_name,family_name_kana,first_name_kana,sex,email,status,logined,regist_date,update_date)"
				+ "values(?,?,?,?,?,?,?,?,?,?,now(),now())";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ps.setString(2, password);
			ps.setString(3, familyName);
			ps.setString(4, firstName);
			ps.setString(5, familyNameKana);
			ps.setString(6, firstNameKana);
			ps.setString(7, sex);
			ps.setString(8, email);
			ps.setInt(9, 0);
			ps.setInt(10, 1);

			count=ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}

	//ユーザーの被り検索
	public boolean isExistsUserInfo(String loginId,String password) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		boolean ret=false;
		String sql="select count(*) as count from user_info where user_id=? and password=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				if(rs.getInt("count")>0) {
					ret=true;
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return ret;
	}

	public boolean isExistsUserInfo(String loginId) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		boolean ret=false;
		String sql="select count(*) as count from user_info where user_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				if(rs.getInt("count")>0) {
					ret=true;
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return ret;
	}

	//ユーザー情報取得(loginId入力時)
	public UserInfoDTO getUserInfo(String loginId) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();

		UserInfoDTO userInfoDTO=new UserInfoDTO();

		String sql="select * from user_info where user_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				userInfoDTO.setId(rs.getInt("id"));
				userInfoDTO.setFamilyName(rs.getString("family_name"));
				userInfoDTO.setFirstName(rs.getString("first_name"));
				userInfoDTO.setFamilyNameKana(rs.getString("family_name_kana"));
				userInfoDTO.setFirstNameKana(rs.getString("first_name_kana"));
				userInfoDTO.setSex(rs.getInt("sex"));
				userInfoDTO.setEmail(rs.getString("email"));
				userInfoDTO.setStatus(rs.getString("status"));
				userInfoDTO.setLogined(rs.getInt("logined"));
				userInfoDTO.setUserId(rs.getString("user_id"));
				userInfoDTO.setPassword(rs.getString("password"));
				userInfoDTO.setRegistDate(rs.getDate("regist_date"));
				userInfoDTO.setUpdateDate(rs.getDate("update_date"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return userInfoDTO;
	}

	//ユーザー情報取得(loginId,password入力時)
	public UserInfoDTO getUserInfo(String loginId,String password) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();

		UserInfoDTO userInfoDTO=new UserInfoDTO();

		String sql="select * from user_info where user_id=? and password=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				userInfoDTO.setId(rs.getInt("id"));
				userInfoDTO.setFamilyName(rs.getString("family_name"));
				userInfoDTO.setFirstName(rs.getString("first_name"));
				userInfoDTO.setFamilyNameKana(rs.getString("family_name_kana"));
				userInfoDTO.setFirstNameKana(rs.getString("first_name_kana"));
				userInfoDTO.setSex(rs.getInt("sex"));
				userInfoDTO.setEmail(rs.getString("email"));
				userInfoDTO.setStatus(rs.getString("status"));
				userInfoDTO.setLogined(rs.getInt("logined"));
				userInfoDTO.setUserId(rs.getString("user_id"));
				userInfoDTO.setPassword(rs.getString("password"));
				userInfoDTO.setRegistDate(rs.getDate("regist_date"));
				userInfoDTO.setUpdateDate(rs.getDate("update_date"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return userInfoDTO;
	}

	public int resetPassword(String newPassword,String loginId) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		String sql="update user_info set password=? where user_id=?";
		int count=0;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setString(2, loginId);
			count=ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}

	public int login(String loginId,String password) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		int count=0;
		String sql="update user_info set logined=1 where user_id=? and password=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ps.setString(2, password);
			count=ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}

	public int logout(String loginId) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		int count=0;
		String sql="update user_info set logined=0 where user_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			count=ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	


}

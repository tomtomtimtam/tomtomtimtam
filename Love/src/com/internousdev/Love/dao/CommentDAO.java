package com.internousdev.Love.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.Love.dto.CommentDTO;
import com.internousdev.Love.util.DBConnector;
import com.internousdev.Love.util.DateUtil;

public class CommentDAO {

	//コメント全て
	public ArrayList<CommentDTO> select(){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		ArrayList<CommentDTO> list=new ArrayList<CommentDTO>();

		String sql="select id,user_name,place,meet_time,comments,(DATE_FORMAT(insert_date,'%Y年%m月%d日 %H時%i分')) as insert_date from comments_transaction order by id desc";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				CommentDTO dto=new CommentDTO();
				dto.setId(rs.getString("id"));
				dto.setUserName(rs.getString("user_name"));
				dto.setPlace(rs.getString("place"));
				dto.setTime(rs.getInt("meet_time"));
				dto.setComment(rs.getString("comments"));
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

	//自分がコメントしたもののみ持ってくる
	public ArrayList<CommentDTO> getOwnCommentInfo(String userName){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		ArrayList<CommentDTO> cList=new ArrayList<CommentDTO>();

		String sql="select comments,place,meet_time,id,(DATE_FORMAT(insert_date,'%Y年%m月%d日 %H時%i分')) as insert_date from comments_transaction where user_name=? order by id desc";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				CommentDTO dto=new CommentDTO();
				dto.setComment(rs.getString("comments"));
				dto.setPlace(rs.getString("place"));
				dto.setTime(rs.getInt("meet_time"));
				dto.setId(rs.getString("id"));
				dto.setInsert_date(rs.getString("insert_date"));
				cList.add(dto);
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
	public CommentDTO comment(String userName,String place,int time,String comment){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		DateUtil du=new DateUtil();
		CommentDTO dto=new CommentDTO();

		String sql="insert into comments_transaction(user_name,place,meet_time,comments,insert_date) values(?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,userName);
			ps.setString(2,place);
			ps.setInt(3, time);
			ps.setString(4, comment);
			ps.setString(5, du.getDate());

			ps.executeUpdate();
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

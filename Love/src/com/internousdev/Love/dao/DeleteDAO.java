package com.internousdev.Love.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.Love.util.DBConnector;

public class DeleteDAO {

	public int deleteComment(String id){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();

		//選択した項目のコメント履歴を削除
		String sql="delete from comments_transaction where id=?";
		int count=0;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
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

	public int deleteUser(String id) {
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();

		//選択した項目のユーザーを削除
		String sql="delete from user_transaction where id=?";
		int count=0;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
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


}

package com.ja.classgroupware.base.dao;

import java.sql.*;
import java.sql.Date;
import java.util.*;
import com.ja.classgroupware.base.dto.*;
import com.ja.classgroupware.base.listener.DBCPInitListener;

public class CommentsDAO {

	private static final String CONNECTION_URL = DBCPInitListener.getConnectionUrl();

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public void insert(int bo_idx, int class_idx, int user_idx, int comm_parent_idx,
			String comm_content, Date comm_writedate, String comm_role) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("INSERT INTO comments VALUES(comments_seq.nextval,?,?,?,?,?,?,?)");
			pstmt.setInt(1, bo_idx);
			pstmt.setInt(2, class_idx);
			pstmt.setInt(3, user_idx);
			pstmt.setInt(4, comm_parent_idx);
			pstmt.setString(5, comm_content);
			pstmt.setDate(6, comm_writedate);
			pstmt.setString(7, comm_role);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}//insert()

	public ArrayList<CommentsDTO> selectAll() {
		ArrayList<CommentsDTO> list = new ArrayList<CommentsDTO>();

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM comments ORDER BY comment_idx DESC");
			rs = pstmt.executeQuery();

			// 데이터 구성 로직
			while (rs.next()) {
				CommentsDTO data = new CommentsDTO(rs.getInt("comment_idx"),rs.getInt("bo_idx"),rs.getInt("class_idx"),rs.getInt("user_idx"),
						rs.getInt("comm_parent_idx"),rs.getString("comm_content"), rs.getDate("comm_writedate"), rs.getString("comm_role"));
				list.add(data);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return list;
	}//selectAll()

	public CommentsDTO selectByIdx(int comment_idx) {
		CommentsDTO data = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM comments WHERE comment_idx=?");
			pstmt.setInt(1, comment_idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				data = new CommentsDTO(rs.getInt("comment_idx"),rs.getInt("bo_idx"),rs.getInt("class_idx"),rs.getInt("user_idx"),
						rs.getInt("comm_parent_idx"),rs.getString("comm_content"), rs.getDate("comm_writedate"), rs.getString("comm_role"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return data;
	}//selectByIdx()

	public void update(int comment_idx, String comm_content) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("UPDATE comments SET comm_content=? WHERE comment_idx=?");
			pstmt.setString(1, comm_content);
			pstmt.setInt(2, comment_idx);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}//update()

	public void delete(int comment_idx) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("DELETE FROM comments WHERE comment_idx=?");
			pstmt.setInt(1, comment_idx);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}//delete()

}

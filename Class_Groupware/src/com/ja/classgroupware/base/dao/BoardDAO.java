package com.ja.classgroupware.base.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ja.classgroupware.base.dto.BoardDTO;
import com.ja.classgroupware.base.listener.DBCPInitListener;

public class BoardDAO {

	private static final String CONNECTION_URL = DBCPInitListener.getConnectionUrl();

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public void insert(int bo_idx, int class_idx, int user_idx, String bo_title, String bo_content, Date bo_writedate, String bo_isnotice, String bo_role) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("INSERT INTO BOARD VALUES(SEQ_CONTENT_IDX.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)");

			pstmt.setInt(1, class_idx);
			pstmt.setInt(2, user_idx);
			pstmt.setString(3, bo_title);
			pstmt.setString(4, bo_content);
			pstmt.setDate(5, bo_writedate);
			pstmt.setString(6, bo_isnotice);
			pstmt.setString(7, bo_role);

			pstmt.executeUpdate();

			conn.commit();

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
	}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public ArrayList<BoardDTO> selectAll() {

		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

		BoardDTO data = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM BOARD ORDER BY bo_idx DESC");

			rs = pstmt.executeQuery();

			while (rs.next()) {
				data = new BoardDTO(rs.getInt("bo_idx"), rs.getInt("class_idx"), rs.getInt("user_idx"),
						rs.getString("bo_title"), rs.getString("bo_content"),rs.getDate("bo_writedate "),rs.getString("bo_isnotice"),rs.getString("bo_role"));
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

	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public BoardDTO selectByIdx(int bo_idx) {

		BoardDTO data = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM BOARD WHERE bo_idx = ?");

			pstmt.setInt(1, bo_idx);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				data = new BoardDTO(rs.getInt("bo_idx"), rs.getInt("class_idx"), rs.getInt("user_idx"),
						rs.getString("bo_title"), rs.getString("bo_content"),rs.getDate("bo_writedate "),rs.getString("bo_isnotice"),rs.getString("bo_role"));
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
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	

	//공지 여부도 수정에 넣엇는데 필요없으면 빼세요
	public void update(int bo_idx, String bo_title, String bo_content, String bo_isnotice) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("UPDATE BOARD SET bo_title = ?, bo_content = ?, bo_isnotice = ? WHERE bo_idx = ?");

			pstmt.setString(1, bo_title);
			pstmt.setString(2, bo_content);
			pstmt.setString(3, bo_isnotice);
			pstmt.setInt(4, bo_idx);

			pstmt.executeUpdate();

			conn.commit();

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
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	public void delete(int bo_idx) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("DELETE FROM BOARD WHERE bo_idx = ?");

			pstmt.setInt(1, bo_idx);

			pstmt.executeUpdate();

			conn.commit();

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
	}

}

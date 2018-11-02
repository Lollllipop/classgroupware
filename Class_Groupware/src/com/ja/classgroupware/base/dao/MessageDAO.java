package com.ja.classgroupware.base.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ja.classgroupware.base.dto.MessageDTO;

public class MessageDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public static final String DB_DRIVER = "jdbc:apache:commons:dbcp:oracleDBCP";

	public void insert(int message_sender_idx, int message_receiver_idx, String message_content) {

		try {
			System.out.println("MessageDAO.insert 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("INSERT INTO MESSAGE VALUES(message_seq.nextval,?,?,?,SYSDATE");
			pstmt.setInt(1, message_sender_idx);
			pstmt.setInt(2, message_receiver_idx);
			pstmt.setString(3, message_content);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void delete(int message_idx) {
		try {
			System.out.println("MessageDAO.delete 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("DELETE FROM MESSAGE WHERE message_idx=?");
			pstmt.setInt(1, message_idx);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 메세지를 선택해서 보는 로직
	public ArrayList<MessageDTO> selectByIdx(int message_idx) {
		ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
		try {
			System.out.println("MessageDAO.selectByIdx 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT FROM MESSAGE WHERE message_idx=?");
			pstmt.setInt(1, message_idx);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				MessageDTO data = new MessageDTO(rs.getInt("message_idx"), rs.getInt("message_sender_idx"),
						rs.getInt("message_receiver_idx"), rs.getString("message_content_idx"),
						rs.getDate("message_writedate"));
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	//메세지 목록을 보여주는 로직
	public ArrayList<MessageDTO> selectAll() {
		ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();

		try {
			System.out.println("MessageDAO.selectByIdx 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT * FROM MESSAGE");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				MessageDTO data = new MessageDTO(rs.getInt("message_idx"), rs.getInt("message_sender_idx"),
						rs.getInt("message_receiver_idx"), rs.getString("message_content_idx"),
						rs.getDate("message_writedate"));
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}

package com.ja.classgroupware.base.dao;

import com.ja.classgroupware.base.listener.DBCPInitListener;
import com.ja.classgroupware.base.dto.Hw_boardDTO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;

public class Hw_boardDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public static final String DB_DRIVER = "jdbc:apache:commons:dbcp:oracleDBCP";

	public void insertAlert() {

	}

	// 강사 - 글쓰기
	public void insert(int class_idx, int user_idx, String hw_title, String hw_content,
			Date hw_startdate, Date hw_enddate, Date hw_writedate, String hw_file_link, String hw_file_name) {

		try {
			System.out.println("Hw_boardDAO.insert 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("INSERT INTO HW_BOARD VALUES(hw_board_seq.nextval,?,?,?,?,?,?,SYSDATE,?,?");
			pstmt.setInt(1, class_idx);
			pstmt.setInt(2, user_idx);
			pstmt.setString(3, hw_title);
			pstmt.setString(4, hw_content);
			pstmt.setDate(5, hw_startdate);
			pstmt.setDate(6, hw_enddate);
			pstmt.setString(7, hw_file_link);
			pstmt.setString(8, hw_file_name);
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

	// 강사 - 글 수정
	public void update(String hw_title, String hw_content, Date hw_startdate, Date hw_enddate,
			String hw_file_link, String hw_file_name, int hw_idx) {

		try {
			System.out.println("Hw_boardDAO.update 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement(
					"UPDATE HW_BOARD SET hw_title=?,hw_content=?,hw_startdate=?,hw_enddate=?,hw_file_link=?,hw_file_name=? WHERE hw_idx=?");
			pstmt.setString(1, hw_title);
			pstmt.setString(2, hw_content);
			pstmt.setDate(3, hw_startdate);
			pstmt.setDate(4, hw_enddate);
			pstmt.setString(5, hw_file_link);
			pstmt.setString(6, hw_file_name);
			pstmt.setInt(7, hw_idx);

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

	// 강사 - 글 삭제
	public void delete(int hw_idx) {
		try {
			System.out.println("Hw_boardDAO.delete 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("DELETE FROM HW_BOARD WHERE hw_idx=?");
			pstmt.setInt(1, hw_idx);
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

	// 과제 게시판 리스트를 보여주는 로직
	public ArrayList<Hw_boardDTO> selectAllContent() {
		ArrayList<Hw_boardDTO> list = new ArrayList<Hw_boardDTO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			System.out.println("HWBoardDAO.selectAllContent 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT * FROM HW_BOARD ORDER BY hw_idx DESC");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Hw_boardDTO data = new Hw_boardDTO(rs.getInt("hw_idx"), rs.getInt("class_idx"),
						rs.getInt("user_idx"), rs.getString("hw_title"), rs.getString("hw_content"),
						rs.getDate("hw_startdate"), rs.getDate("hw_enddate"), rs.getDate("hw_writedate"),
						rs.getString("hw_file_link"), rs.getString("hw_file_name"));
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
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

		return list;
	}

	// 과제게시판 총 갯수
	public void countAll() {
		try {
			System.out.println("Hw_boardDAO.countAll 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT COUNT(*) FROM HW_BOARD");
			pstmt.executeUpdate();
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

}

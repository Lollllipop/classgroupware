package com.ja.classgroupware.base.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ja.classgroupware.base.dto.Hw_submitDTO;

public class Hw_submitDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public static final String DB_DRIVER = "jdbc:apache:commons:dbcp:oracleDBCP";

	// 학생-과제 제출
	public void insert(int hw_submit_idx, int class_idx, int user_idx,
			String hw_bo_submit_content, Date hw_bo_submit_cont_writedate) {

		try {
			System.out.println("Hw_submitDAO.insertIntoHWBoard 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("INSERT INTO HW_SUBMIT VALUES(hw_board_seq.nextval,?,?,?,?,?,?,SYSDATE,?,?");
			pstmt.setInt(1, hw_submit_idx);
			pstmt.setInt(2, class_idx);
			pstmt.setInt(3, user_idx);
			pstmt.setString(4, hw_bo_submit_content);
			pstmt.setDate(5, hw_bo_submit_cont_writedate);
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

	// 학생-과제 수정
	public void update(String hw_submit_content, Date hw_submit_content_writedate,
			String hw_submit_file_name, String hw_submit_file_link,int hw_submit_idx) {
		try {
			System.out.println("Hw_submitDAO.UpdateHWBoardContents 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement(
					"UPDATE HW_SUBMIT SET hw_submit_content=?, hw_submit_content_writedate=?, hw_submit_file_name=?,hw_file_link=?, hw_submit_file_link=? WHERE hw_submit_idx=?");
			pstmt.setString(1, hw_submit_content);
			pstmt.setDate(2, hw_submit_content_writedate);
			pstmt.setString(3, hw_submit_file_name);
			pstmt.setString(4, hw_submit_file_link);
			pstmt.setInt(5, hw_submit_idx);

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

	// 학생-과제 삭제
	public void delete(String hw_submit_idx) {
		try {
			System.out.println("Hw_submitDAO.UpdateHWBoardContents 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("DELETE FROM HW_SUBMIT WHERE hw_submit_idx=?");
			pstmt.setString(1, hw_submit_idx);
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

	// 학생이 자신이 제출한 과제만 볼수있게 하는 로직(과제게시판-리플형식 제출부분)
	public ArrayList<Hw_submitDTO> selectByIdx(int user_idx) {
		ArrayList<Hw_submitDTO> list = new ArrayList<Hw_submitDTO>();
		try {
			System.out.println("Hw_submitDAO.selectSubmitHWBoardByMyIdx 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT * FROM HW_SUBMIT WHERE user_idx=?");
			pstmt.setInt(1, user_idx);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				Hw_submitDTO data = new Hw_submitDTO(rs.getInt("hw_submit_idx"), rs.getInt("hw_idx"),
						rs.getInt("class_idx"), rs.getInt("user_idx"), rs.getString("hw_submit_content"),
						rs.getDate("hw_submit_content_writedate"), rs.getString("hw_submit_file_name"),
						rs.getString("hw_submit_file_link"));
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

	// 강사-학생이 제출한 모든 과제를 볼 수 있는 부분(과제게시판-리플형식 제출부분)
	public ArrayList<Hw_submitDTO> selectAllContent() {
		ArrayList<Hw_submitDTO> list = new ArrayList<Hw_submitDTO>();
		try {
			System.out.println("Hw_submitDAO.selectSubmitHWBoardByMyIdx 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT * FROM HW_SUBMIT");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Hw_submitDTO data = new Hw_submitDTO(rs.getInt("hw_submit_idx"), rs.getInt("hw_idx"),
						rs.getInt("class_idx"), rs.getInt("user_idx"), rs.getString("hw_submit_content"),
						rs.getDate("hw_submit_content_writedate"), rs.getString("hw_submit_file_name"),
						rs.getString("hw_submit_file_link"));
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
	
	public void countAll() {
		try {
			System.out.println("Hw_submitDAO.countAll 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT COUNT(*) FROM HW_SUBMIT");
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

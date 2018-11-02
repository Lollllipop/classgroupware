package com.ja.classgroupware.base.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ja.classgroupware.base.dto.GradeDTO;

public class GradeDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public static final String DB_DRIVER = "jdbc:apache:commons:dbcp:oracleDBCP";

	public void insert(int class_idx, int user_idx, String grade_name, int grade_score) {
		try {
			System.out.println("GradeDAO.insert 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("INSERT INTO GRADE VALUES(grade_seq.nextval,?,?,?,?");
			pstmt.setInt(1, class_idx);
			pstmt.setInt(2, user_idx);
			pstmt.setString(3, grade_name);
			pstmt.setInt(4, grade_score);
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

	// class는 고정 값인지? 반을 잘못 입력 할 가능성 o? x? , grade_name도 고정값인지? 무조건 과제명을 클릭해서 변경 할 수
	// 있는지 ?
	// idx로 식별할것인지 grade_name+user_name을 합쳐서 식별할것인지..
	public void update(int grade_score, int grade_idx) {
		try {
			System.out.println("GradeDAO.update 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("UPDATE GRADE SET grade_score=? WHERE grade_idx=?");
			pstmt.setInt(1, grade_score);
			pstmt.setInt(2, grade_idx);
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

	public ArrayList<GradeDTO> selectAllGrade() {
		ArrayList<GradeDTO> list = new ArrayList<GradeDTO>();

		try {
			System.out.println("GradeDAO.selectAllGrade 호출됨");
			conn = DriverManager.getConnection(DB_DRIVER);
			pstmt = conn.prepareStatement("SELECT * FROM GRADE ORDER BY grade_idx DESC");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				GradeDTO data = new GradeDTO(rs.getInt("grade_idx"), rs.getInt("class_idx"), rs.getInt("user_idx"),
						rs.getString("grade_name"), rs.getInt("grade_score"));
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
	
	

}

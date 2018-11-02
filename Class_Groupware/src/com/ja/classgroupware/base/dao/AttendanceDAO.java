package com.ja.classgroupware.base.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ja.classgroupware.base.dto.AttendanceDTO;
import com.ja.classgroupware.base.listener.DBCPInitListener;

public class AttendanceDAO {

	private static final String CONNECTION_URL = DBCPInitListener.getConnectionUrl();

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public void insert(int attendace_idx, int class_idx, int user_idx, String attendace_event, Date attendace_date) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("INSERT INTO ATTENDANCE VALUES(SEQ_CONTENT_IDX.NEXTVAL, ?, ?, ?, ?)");

			pstmt.setInt(1, class_idx);
			pstmt.setInt(2, user_idx);
			pstmt.setString(3, attendace_event);
			pstmt.setDate(4, attendace_date);

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
	public ArrayList<AttendanceDTO> selectAll() {

		ArrayList<AttendanceDTO> list = new ArrayList<AttendanceDTO>();

		AttendanceDTO data = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM ATTENDANCE ORDER BY attendance_idx DESC");

			rs = pstmt.executeQuery();

			while (rs.next()) {
				data = new AttendanceDTO(rs.getInt("attendance_idx"), rs.getInt("class_idx"), rs.getInt("user_idx"),
						rs.getString("attendance_event"), rs.getDate("attendance_date"));
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

	public AttendanceDTO selectByIdx(int attendance_idx) {

		AttendanceDTO data = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM ATTENDANCE WHERE attendance_idx = ?");

			pstmt.setInt(1, attendance_idx);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				data = new AttendanceDTO(rs.getInt("attendance_idx"), rs.getInt("class_idx"), rs.getInt("user_idx"),
						rs.getString("attendance_event"), rs.getDate("attendance_date "));
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

	public void update(int attendance_idx, String attendance_event) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("UPDATE ATTENDANCE SET attendance_event = ? WHERE attendance_idx = ?");

			pstmt.setString(1, attendance_event);
			pstmt.setInt(2, attendance_idx);

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

	public void delete(int attendance_idx) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("DELETE FROM ATTENDANCE WHERE attendance_idx = ?");

			pstmt.setInt(1, attendance_idx);

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

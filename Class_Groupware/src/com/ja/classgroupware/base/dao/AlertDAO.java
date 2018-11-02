package com.ja.classgroupware.base.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ja.classgroupware.base.dto.AlertDTO;
import com.ja.classgroupware.base.listener.DBCPInitListener;

public class AlertDAO {

	private static final String CONNECTION_URL = DBCPInitListener.getConnectionUrl();

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	//알림은 필요없을 것 같아서 수정 안만들엇어요 
	public void insert(int alert_idx, int user_idx, int class_idx, String alert_content, int alert_common_idx, String alert_role) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement( 
					"INSERT INTO ALERT VALUES(SEQ_CONTENT_IDX.NEXTVAL, ?, ?, ?, ?, ?)");

			pstmt.setInt(1, user_idx);
			pstmt.setInt(2, class_idx);
			pstmt.setString(3, alert_content);
			pstmt.setInt(4, alert_common_idx);
			pstmt.setString(5, alert_role);

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

	public ArrayList<AlertDTO> selectAll() {
		
		ArrayList<AlertDTO> list = new ArrayList<AlertDTO>();

		AlertDTO data = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM ALERT ORDER BY alert_idx DESC");

			rs = pstmt.executeQuery();

			while (rs.next()) {
				data = new AlertDTO(rs.getInt("alert_idx"), rs.getInt("user_idx"), rs.getInt("class_idx"),
						rs.getString("alert_content"), rs.getInt("alert_common_idx"), rs.getString("alert_role"));
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

	public AlertDTO selectByIdx(int alert_idx) {
		
		AlertDTO data = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM ALERT WHERE alert_idx = ?");

			pstmt.setInt(1, alert_idx);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				data = new AlertDTO(rs.getInt("alert_idx"), rs.getInt("user_idx"), rs.getInt("class_idx"),
						rs.getString("alert_content"), rs.getInt("alert_common_idx"), rs.getString("alert_role"));
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

	public void delete(int alert_idx) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement(
					"DELETE FROM ALERT WHERE alert_idx = ?");
			
			pstmt.setInt(1, alert_idx);

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

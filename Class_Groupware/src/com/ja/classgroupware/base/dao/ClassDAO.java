package com.ja.classgroupware.base.dao;

import java.sql.*;
import java.sql.Date;
import java.util.*;
import com.ja.classgroupware.base.dto.*;
import com.ja.classgroupware.base.listener.DBCPInitListener;

public class ClassDAO {

	private static final String CONNECTION_URL = DBCPInitListener.getConnectionUrl();

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public void insert(String class_name, String class_about, Date class_startdate, Date class_enddate) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("INSERT INTO class VALUES(class_seq.nextval,?,?,?,?)");
			pstmt.setString(1, class_name);
			pstmt.setString(2, class_about);
			pstmt.setDate(3, class_startdate);
			pstmt.setDate(4, class_enddate);
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
	}// insert()

	public ArrayList<ClassDTO> selectAll() {

		ArrayList<ClassDTO> list = new ArrayList<ClassDTO>();

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM class ORDER BY class_idx DESC");
			rs = pstmt.executeQuery();

			// 데이터 구성 로직
			while (rs.next()) {
				ClassDTO data = new ClassDTO(rs.getInt("class_idx"), rs.getString("class_name"),
						rs.getString("class_about"), rs.getDate("class_startdate"), rs.getDate("class_enddate"));
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
	}// selectAll()

	public ClassDTO selectByIdx(int class_idx) {
		ClassDTO data = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM class WHERE class_idx=?");
			pstmt.setInt(1, class_idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				data = new ClassDTO(rs.getInt("class_idx"), rs.getString("class_name"), rs.getString("class_about"),
						rs.getDate("class_startdate"), rs.getDate("class_enddate"));
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
	}// selectByIdx()

	public void update(int class_idx, String class_name, String class_about, Date class_startdate, Date class_enddate) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("UPDATE class SET class_name=?, class_about=?, class_startdate=?, class_enddate=? WHERE class_idx=?");
			pstmt.setString(1, class_name);
			pstmt.setString(2, class_about);
			pstmt.setDate(3, class_startdate);
			pstmt.setDate(4, class_enddate);
			pstmt.setInt(5, class_idx);
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
		
	}// update()

	public void delete(int class_idx) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("DELETE FROM class WHERE class_idx=?");
			pstmt.setInt(1, class_idx);
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

	}// delete()

}

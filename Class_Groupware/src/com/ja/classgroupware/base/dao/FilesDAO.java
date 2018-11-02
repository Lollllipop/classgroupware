package com.ja.classgroupware.base.dao;

import java.sql.*;
import java.util.*;
import com.ja.classgroupware.base.dto.*;
import com.ja.classgroupware.base.listener.DBCPInitListener;

public class FilesDAO {

	private static final String CONNECTION_URL = DBCPInitListener.getConnectionUrl();

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public void insert(int bo_idx, int class_idx, String file_link, 
			String file_name, String file_role) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("INSERT INTO files VALUES(files_seq.nextval,?,?,?,?,?)");
			pstmt.setInt(1, bo_idx);
			pstmt.setInt(2, class_idx);
			pstmt.setString(3, file_link);
			pstmt.setString(4, file_name);
			pstmt.setString(5, file_role);
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

	public ArrayList<FilesDTO> selectAll() {
		ArrayList<FilesDTO> list = new ArrayList<FilesDTO>();

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM files ORDER BY file_idx DESC");
			rs = pstmt.executeQuery();

			// 데이터 구성 로직
			while (rs.next()) {
				FilesDTO data = new FilesDTO(rs.getInt("file_idx"),rs.getInt("bo_idx"),rs.getInt("class_idx"),
						rs.getString("file_link"),rs.getString("file_name"), rs.getString("file_role"));
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

	public FilesDTO selectByIdx(int file_idx) {
		FilesDTO data = null;

		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("SELECT * FROM files WHERE file_idx=?");
			pstmt.setInt(1, file_idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				data = new FilesDTO(rs.getInt("file_idx"),rs.getInt("bo_idx"),rs.getInt("class_idx"),
						rs.getString("file_link"),rs.getString("file_name"), rs.getString("file_role"));
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

	public void update(int file_idx, String file_link, String file_name) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("UPDATE files SET file_link=?, file_name=? WHERE file_idx=?");
			pstmt.setString(1, file_link);
			pstmt.setString(2, file_name);
			pstmt.setInt(3, file_idx);
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

	public void delete(int file_idx) {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:oracleDBCP");
			pstmt = conn.prepareStatement("DELETE FROM files WHERE file_idx=?");
			pstmt.setInt(1, file_idx);
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

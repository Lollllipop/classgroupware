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

	public void insert(int alert_idx, int user_idx, int class_idx, String alert_content, int alert_common_idx,
			String alert_role) {
	}

	public ArrayList<AlertDTO> selectAll() {
		return null;
	}

	public AlertDTO selectById(int alert_idx) {
		return null;
	}

	public void update(int alert_idx) {

	}

	public void delete(int alert_idx) {

	}

}

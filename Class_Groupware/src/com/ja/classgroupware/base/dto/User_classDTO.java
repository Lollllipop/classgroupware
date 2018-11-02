package com.ja.classgroupware.base.dto;

public class User_classDTO {

	private String user_idx;
	private String class_idx;
	private String user_status;
	private String user_joindate;

	public User_classDTO(String user_idx, String class_idx, String user_status, String user_joindate) {
		super();
		this.user_idx = user_idx;
		this.class_idx = class_idx;
		this.user_status = user_status;
		this.user_joindate = user_joindate;
	}

	public String getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(String user_idx) {
		this.user_idx = user_idx;
	}

	public String getClass_idx() {
		return class_idx;
	}

	public void setClass_idx(String class_idx) {
		this.class_idx = class_idx;
	}

	public String getUser_status() {
		return user_status;
	}

	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}

	public String getUser_joindate() {
		return user_joindate;
	}

	public void setUser_joindate(String user_joindate) {
		this.user_joindate = user_joindate;
	}

}

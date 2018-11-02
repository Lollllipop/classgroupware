package com.ja.classgroupware.base.dao;

public class BoardDAO {

	private String bo_idx;
	private String class_idx;
	private String user_idx;
	private String bo_title;
	private String bo_content;
	private String bo_writedate;
	private String bo_isnotice;
	private String bo_role;

	public BoardDAO(String bo_idx, String class_idx, String user_idx, String bo_title, String bo_content,
			String bo_writedate, String bo_isnotice, String bo_role) {
		super();
		this.bo_idx = bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.bo_title = bo_title;
		this.bo_content = bo_content;
		this.bo_writedate = bo_writedate;
		this.bo_isnotice = bo_isnotice;
		this.bo_role = bo_role;
	}

	public String getBo_idx() {
		return bo_idx;
	}

	public void setBo_idx(String bo_idx) {
		this.bo_idx = bo_idx;
	}

	public String getClass_idx() {
		return class_idx;
	}

	public void setClass_idx(String class_idx) {
		this.class_idx = class_idx;
	}

	public String getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(String user_idx) {
		this.user_idx = user_idx;
	}

	public String getBo_title() {
		return bo_title;
	}

	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}

	public String getBo_content() {
		return bo_content;
	}

	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}

	public String getBo_writedate() {
		return bo_writedate;
	}

	public void setBo_writedate(String bo_writedate) {
		this.bo_writedate = bo_writedate;
	}

	public String getBo_isnotice() {
		return bo_isnotice;
	}

	public void setBo_isnotice(String bo_isnotice) {
		this.bo_isnotice = bo_isnotice;
	}

	public String getBo_role() {
		return bo_role;
	}

	public void setBo_role(String bo_role) {
		this.bo_role = bo_role;
	}

}

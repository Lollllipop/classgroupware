package com.ja.classgroupware.base.dao;

public class Hw_boardDAO {

	private String hw_idx;
	private String class_idx;
	private String user_idx;
	private String hw_title;
	private String hw_content;
	private String hw_startdate;
	private String hw_enddate;
	private String hw_writedate;
	private String hw_file_link;
	private String hw_file_name;

	public Hw_boardDAO(String hw_idx, String class_idx, String user_idx, String hw_title, String hw_content,
			String hw_startdate, String hw_enddate, String hw_writedate, String hw_file_link, String hw_file_name) {
		super();
		this.hw_idx = hw_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.hw_title = hw_title;
		this.hw_content = hw_content;
		this.hw_startdate = hw_startdate;
		this.hw_enddate = hw_enddate;
		this.hw_writedate = hw_writedate;
		this.hw_file_link = hw_file_link;
		this.hw_file_name = hw_file_name;
	}

	public String getHw_idx() {
		return hw_idx;
	}

	public void setHw_idx(String hw_idx) {
		this.hw_idx = hw_idx;
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

	public String getHw_title() {
		return hw_title;
	}

	public void setHw_title(String hw_title) {
		this.hw_title = hw_title;
	}

	public String getHw_content() {
		return hw_content;
	}

	public void setHw_content(String hw_content) {
		this.hw_content = hw_content;
	}

	public String getHw_startdate() {
		return hw_startdate;
	}

	public void setHw_startdate(String hw_startdate) {
		this.hw_startdate = hw_startdate;
	}

	public String getHw_enddate() {
		return hw_enddate;
	}

	public void setHw_enddate(String hw_enddate) {
		this.hw_enddate = hw_enddate;
	}

	public String getHw_writedate() {
		return hw_writedate;
	}

	public void setHw_writedate(String hw_writedate) {
		this.hw_writedate = hw_writedate;
	}

	public String getHw_file_link() {
		return hw_file_link;
	}

	public void setHw_file_link(String hw_file_link) {
		this.hw_file_link = hw_file_link;
	}

	public String getHw_file_name() {
		return hw_file_name;
	}

	public void setHw_file_name(String hw_file_name) {
		this.hw_file_name = hw_file_name;
	}

}

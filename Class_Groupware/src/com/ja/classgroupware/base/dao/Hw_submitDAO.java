package com.ja.classgroupware.base.dao;

public class Hw_submitDAO {

	private String hw_submit_idx;
	private String hw_idx;
	private String class_idx;
	private String user_idx;
	private String hw_submit_content;
	private String hw_submit_content_writedate;
	private String hw_submit_file_name;
	private String hw_submit_file_link;

	public Hw_submitDAO(String hw_submit_idx, String hw_idx, String class_idx, String user_idx,
			String hw_submit_content, String hw_submit_content_writedate, String hw_submit_file_name,
			String hw_submit_file_link) {
		super();
		this.hw_submit_idx = hw_submit_idx;
		this.hw_idx = hw_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.hw_submit_content = hw_submit_content;
		this.hw_submit_content_writedate = hw_submit_content_writedate;
		this.hw_submit_file_name = hw_submit_file_name;
		this.hw_submit_file_link = hw_submit_file_link;
	}

	public String getHw_submit_idx() {
		return hw_submit_idx;
	}

	public void setHw_submit_idx(String hw_submit_idx) {
		this.hw_submit_idx = hw_submit_idx;
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

	public String getHw_submit_content() {
		return hw_submit_content;
	}

	public void setHw_submit_content(String hw_submit_content) {
		this.hw_submit_content = hw_submit_content;
	}

	public String getHw_submit_content_writedate() {
		return hw_submit_content_writedate;
	}

	public void setHw_submit_content_writedate(String hw_submit_content_writedate) {
		this.hw_submit_content_writedate = hw_submit_content_writedate;
	}

	public String getHw_submit_file_name() {
		return hw_submit_file_name;
	}

	public void setHw_submit_file_name(String hw_submit_file_name) {
		this.hw_submit_file_name = hw_submit_file_name;
	}

	public String getHw_submit_file_link() {
		return hw_submit_file_link;
	}

	public void setHw_submit_file_link(String hw_submit_file_link) {
		this.hw_submit_file_link = hw_submit_file_link;
	}

}

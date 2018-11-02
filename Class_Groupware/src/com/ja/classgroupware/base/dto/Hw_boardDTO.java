package com.ja.classgroupware.base.dto;

import java.sql.Date;

public class Hw_boardDTO {

	private int hw_idx;
	private int class_idx;
	private int user_idx;
	private String hw_title;
	private String hw_content;
	private Date hw_startdate;
	private Date hw_enddate;
	private Date hw_writedate;
	private String hw_file_link;
	private String hw_file_name;

	public Hw_boardDTO(int hw_idx, int class_idx, int user_idx, String hw_title, String hw_content, Date hw_startdate,
			Date hw_enddate, Date hw_writedate, String hw_file_link, String hw_file_name) {
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

	public int getHw_idx() {
		return hw_idx;
	}

	public void setHw_idx(int hw_idx) {
		this.hw_idx = hw_idx;
	}

	public int getClass_idx() {
		return class_idx;
	}

	public void setClass_idx(int class_idx) {
		this.class_idx = class_idx;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
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

	public Date getHw_startdate() {
		return hw_startdate;
	}

	public void setHw_startdate(Date hw_startdate) {
		this.hw_startdate = hw_startdate;
	}

	public Date getHw_enddate() {
		return hw_enddate;
	}

	public void setHw_enddate(Date hw_enddate) {
		this.hw_enddate = hw_enddate;
	}

	public Date getHw_writedate() {
		return hw_writedate;
	}

	public void setHw_writedate(Date hw_writedate) {
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

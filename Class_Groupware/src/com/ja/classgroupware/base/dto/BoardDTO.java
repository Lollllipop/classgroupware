package com.ja.classgroupware.base.dto;

import java.sql.Date;

public class BoardDTO {

	private int bo_idx;
	private int class_idx;
	private int user_idx;
	private String bo_title;
	private String bo_content;
	private Date bo_writedate;
	private String bo_isnotice;
	private String bo_role;

	public BoardDTO(int bo_idx, int class_idx, int user_idx, String bo_title, String bo_content, Date bo_writedate,
			String bo_isnotice, String bo_role) {
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

	public int getBo_idx() {
		return bo_idx;
	}

	public void setBo_idx(int bo_idx) {
		this.bo_idx = bo_idx;
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

	public Date getBo_writedate() {
		return bo_writedate;
	}

	public void setBo_writedate(Date bo_writedate) {
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

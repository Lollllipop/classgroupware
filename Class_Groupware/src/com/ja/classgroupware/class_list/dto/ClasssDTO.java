package com.ja.classgroupware.class_list.dto;

public class ClasssDTO {
	private String class_idx;
	private String user_idx;
	private String class_name;
	private String class_startdate;
	private String class_enddate;

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

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public String getClass_startdate() {
		return class_startdate;
	}

	public void setClass_startdate(String class_startdate) {
		this.class_startdate = class_startdate;
	}

	public String getClass_enddate() {
		return class_enddate;
	}

	public void setClass_enddate(String class_enddate) {
		this.class_enddate = class_enddate;
	}

	public ClasssDTO(String class_idx, String user_idx, String class_name, String class_startdate,
			String class_enddate) {
		super();
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.class_name = class_name;
		this.class_startdate = class_startdate;
		this.class_enddate = class_enddate;
	}

}

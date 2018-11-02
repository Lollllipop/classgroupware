package com.ja.classgroupware.base.dao;

public class ClassDAO {

	private String class_idx;
	private String class_name;
	private String class_about;
	private String class_startdate;
	private String class_enddate;

	public ClassDAO(String class_idx, String class_name, String class_about, String class_startdate,
			String class_enddate) {
		super();
		this.class_idx = class_idx;
		this.class_name = class_name;
		this.class_about = class_about;
		this.class_startdate = class_startdate;
		this.class_enddate = class_enddate;
	}

	public String getClass_idx() {
		return class_idx;
	}

	public void setClass_idx(String class_idx) {
		this.class_idx = class_idx;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public String getClass_about() {
		return class_about;
	}

	public void setClass_about(String class_about) {
		this.class_about = class_about;
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

}

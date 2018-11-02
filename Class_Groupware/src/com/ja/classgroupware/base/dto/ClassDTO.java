package com.ja.classgroupware.base.dto;

import java.sql.Date;

public class ClassDTO {

	private int class_idx;
	private String class_name;
	private String class_about;
	private Date class_startdate;
	private Date class_enddate;

	public ClassDTO(int class_idx, String class_name, String class_about, Date class_startdate, Date class_enddate) {
		super();
		this.class_idx = class_idx;
		this.class_name = class_name;
		this.class_about = class_about;
		this.class_startdate = class_startdate;
		this.class_enddate = class_enddate;
	}

	public int getClass_idx() {
		return class_idx;
	}

	public void setClass_idx(int class_idx) {
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

	public Date getClass_startdate() {
		return class_startdate;
	}

	public void setClass_startdate(Date class_startdate) {
		this.class_startdate = class_startdate;
	}

	public Date getClass_enddate() {
		return class_enddate;
	}

	public void setClass_enddate(Date class_enddate) {
		this.class_enddate = class_enddate;
	}

}

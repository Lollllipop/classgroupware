package com.ja.classgroupware.base.dao;

public class AttendanceDAO {

	private String attendace_idx;
	private String class_idx;
	private String user_idx;
	private String attendace_event;
	private String attendace_date;

	public AttendanceDAO(String attendace_idx, String class_idx, String user_idx, String attendace_event,
			String attendace_date) {
		super();
		this.attendace_idx = attendace_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.attendace_event = attendace_event;
		this.attendace_date = attendace_date;
	}

	public String getAttendace_idx() {
		return attendace_idx;
	}

	public void setAttendace_idx(String attendace_idx) {
		this.attendace_idx = attendace_idx;
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

	public String getAttendace_event() {
		return attendace_event;
	}

	public void setAttendace_event(String attendace_event) {
		this.attendace_event = attendace_event;
	}

	public String getAttendace_date() {
		return attendace_date;
	}

	public void setAttendace_date(String attendace_date) {
		this.attendace_date = attendace_date;
	}

}

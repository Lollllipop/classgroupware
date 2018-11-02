package com.ja.classgroupware.base.dto;

import java.sql.Date;

public class AttendanceDTO {

	private int attendace_idx;
	private int class_idx;
	private int user_idx;
	private String attendace_event;
	private Date attendace_date;

	public AttendanceDTO(int attendace_idx, int class_idx, int user_idx, String attendace_event, Date attendace_date) {
		super();
		this.attendace_idx = attendace_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.attendace_event = attendace_event;
		this.attendace_date = attendace_date;
	}

	public int getAttendace_idx() {
		return attendace_idx;
	}

	public void setAttendace_idx(int attendace_idx) {
		this.attendace_idx = attendace_idx;
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

	public String getAttendace_event() {
		return attendace_event;
	}

	public void setAttendace_event(String attendace_event) {
		this.attendace_event = attendace_event;
	}

	public Date getAttendace_date() {
		return attendace_date;
	}

	public void setAttendace_date(Date attendace_date) {
		this.attendace_date = attendace_date;
	}

}

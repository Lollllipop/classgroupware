package com.ja.classgroupware.homework_board.dto;

public class HWBoardDTO {
	private String hw_bo_idx;
	private String class_idx;
	private String user_idx;
	private String scheduler_idx;
	private String hw_bo_title;
	private String hw_bo_content;
	private String hw_bo_startdate;
	private String hw_bo_enddate;
	private String hw_bo_writedate;

	public HWBoardDTO(String hw_bo_idx, String class_idx, String user_idx, String scheduler_idx, String hw_bo_title,
			String hw_bo_content, String hw_bo_startdate, String hw_bo_enddate, String hw_bo_writedate) {
		super();
		this.hw_bo_idx = hw_bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.scheduler_idx = scheduler_idx;
		this.hw_bo_title = hw_bo_title;
		this.hw_bo_content = hw_bo_content;
		this.hw_bo_startdate = hw_bo_startdate;
		this.hw_bo_enddate = hw_bo_enddate;
		this.hw_bo_writedate = hw_bo_writedate;
	}

	public String getHw_bo_idx() {
		return hw_bo_idx;
	}

	public void setHw_bo_idx(String hw_bo_idx) {
		this.hw_bo_idx = hw_bo_idx;
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

	public String getScheduler_idx() {
		return scheduler_idx;
	}

	public void setScheduler_idx(String scheduler_idx) {
		this.scheduler_idx = scheduler_idx;
	}

	public String getHw_bo_title() {
		return hw_bo_title;
	}

	public void setHw_bo_title(String hw_bo_title) {
		this.hw_bo_title = hw_bo_title;
	}

	public String getHw_bo_content() {
		return hw_bo_content;
	}

	public void setHw_bo_content(String hw_bo_content) {
		this.hw_bo_content = hw_bo_content;
	}

	public String getHw_bo_startdate() {
		return hw_bo_startdate;
	}

	public void setHw_bo_startdate(String hw_bo_startdate) {
		this.hw_bo_startdate = hw_bo_startdate;
	}

	public String getHw_bo_enddate() {
		return hw_bo_enddate;
	}

	public void setHw_bo_enddate(String hw_bo_enddate) {
		this.hw_bo_enddate = hw_bo_enddate;
	}

	public String getHw_bo_writedate() {
		return hw_bo_writedate;
	}

	public void setHw_bo_writedate(String hw_bo_writedate) {
		this.hw_bo_writedate = hw_bo_writedate;
	}

}

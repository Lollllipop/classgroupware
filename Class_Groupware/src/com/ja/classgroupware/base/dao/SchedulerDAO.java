package com.ja.classgroupware.base.dao;

public class SchedulerDAO {

	private String scheduler_idx;
	private String class_idx;
	private String scheduler_content;
	private String scheduler_startdate;
	private String scheduler_enddate;

	public SchedulerDAO(String scheduler_idx, String class_idx, String scheduler_content, String scheduler_startdate,
			String scheduler_enddate) {
		super();
		this.scheduler_idx = scheduler_idx;
		this.class_idx = class_idx;
		this.scheduler_content = scheduler_content;
		this.scheduler_startdate = scheduler_startdate;
		this.scheduler_enddate = scheduler_enddate;
	}

	public String getScheduler_idx() {
		return scheduler_idx;
	}

	public void setScheduler_idx(String scheduler_idx) {
		this.scheduler_idx = scheduler_idx;
	}

	public String getClass_idx() {
		return class_idx;
	}

	public void setClass_idx(String class_idx) {
		this.class_idx = class_idx;
	}

	public String getScheduler_content() {
		return scheduler_content;
	}

	public void setScheduler_content(String scheduler_content) {
		this.scheduler_content = scheduler_content;
	}

	public String getScheduler_startdate() {
		return scheduler_startdate;
	}

	public void setScheduler_startdate(String scheduler_startdate) {
		this.scheduler_startdate = scheduler_startdate;
	}

	public String getScheduler_enddate() {
		return scheduler_enddate;
	}

	public void setScheduler_enddate(String scheduler_enddate) {
		this.scheduler_enddate = scheduler_enddate;
	}

}

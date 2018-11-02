package com.ja.classgroupware.base.dto;

public class AlertDTO {

	private int alert_idx;
	private int user_idx;
	private int class_idx;
	private String alert_content;
	private int alert_common_idx;
	private String alert_role;

	public AlertDTO(int alert_idx, int user_idx, int class_idx, String alert_content, int alert_common_idx,
			String alert_role) {
		super();
		this.alert_idx = alert_idx;
		this.user_idx = user_idx;
		this.class_idx = class_idx;
		this.alert_content = alert_content;
		this.alert_common_idx = alert_common_idx;
		this.alert_role = alert_role;
	}

	public int getAlert_idx() {
		return alert_idx;
	}

	public void setAlert_idx(int alert_idx) {
		this.alert_idx = alert_idx;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public int getClass_idx() {
		return class_idx;
	}

	public void setClass_idx(int class_idx) {
		this.class_idx = class_idx;
	}

	public String getAlert_content() {
		return alert_content;
	}

	public void setAlert_content(String alert_content) {
		this.alert_content = alert_content;
	}

	public int getAlert_common_idx() {
		return alert_common_idx;
	}

	public void setAlert_common_idx(int alert_common_idx) {
		this.alert_common_idx = alert_common_idx;
	}

	public String getAlert_role() {
		return alert_role;
	}

	public void setAlert_role(String alert_role) {
		this.alert_role = alert_role;
	}

}

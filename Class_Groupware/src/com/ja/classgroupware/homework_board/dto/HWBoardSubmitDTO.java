package com.ja.classgroupware.homework_board.dto;

public class HWBoardSubmitDTO {
	private String hw_bo_submit_idx;
	private String hw_bo_idx;
	private String class_idx;
	private String user_idx;
	private String hw_bo_submit_content;
	private String hw_bo_submit_cont_writedate;

	public String getHw_bo_submit_idx() {
		return hw_bo_submit_idx;
	}

	public void setHw_bo_submit_idx(String hw_bo_submit_idx) {
		this.hw_bo_submit_idx = hw_bo_submit_idx;
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

	public String getHw_bo_submit_content() {
		return hw_bo_submit_content;
	}

	public void setHw_bo_submit_content(String hw_bo_submit_content) {
		this.hw_bo_submit_content = hw_bo_submit_content;
	}

	public String getHw_bo_submit_cont_writedate() {
		return hw_bo_submit_cont_writedate;
	}

	public void setHw_bo_submit_cont_writedate(String hw_bo_submit_cont_writedate) {
		this.hw_bo_submit_cont_writedate = hw_bo_submit_cont_writedate;
	}

	public HWBoardSubmitDTO(String hw_bo_submit_idx, String hw_bo_idx, String class_idx, String user_idx,
			String hw_bo_submit_content, String hw_bo_submit_cont_writedate) {
		super();
		this.hw_bo_submit_idx = hw_bo_submit_idx;
		this.hw_bo_idx = hw_bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.hw_bo_submit_content = hw_bo_submit_content;
		this.hw_bo_submit_cont_writedate = hw_bo_submit_cont_writedate;
	}

}

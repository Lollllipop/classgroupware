package com.ja.classgroupware.open_board.dto;

public class OpenBoardDTO {
	private String open_bo_idx;
	private String class_idx;
	private String user_idx;
	private String open_bo_title;
	private String open_bo_content;
	private String open_bo_writedate;

	public String getOpen_bo_idx() {
		return open_bo_idx;
	}

	public void setOpen_bo_idx(String open_bo_idx) {
		this.open_bo_idx = open_bo_idx;
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

	public String getOpen_bo_title() {
		return open_bo_title;
	}

	public void setOpen_bo_title(String open_bo_title) {
		this.open_bo_title = open_bo_title;
	}

	public String getOpen_bo_content() {
		return open_bo_content;
	}

	public void setOpen_bo_content(String open_bo_content) {
		this.open_bo_content = open_bo_content;
	}

	public String getOpen_bo_writedate() {
		return open_bo_writedate;
	}

	public void setOpen_bo_writedate(String open_bo_writedate) {
		this.open_bo_writedate = open_bo_writedate;
	}

	public OpenBoardDTO(String open_bo_idx, String class_idx, String user_idx, String open_bo_title,
			String open_bo_content, String open_bo_writedate) {
		super();
		this.open_bo_idx = open_bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.open_bo_title = open_bo_title;
		this.open_bo_content = open_bo_content;
		this.open_bo_writedate = open_bo_writedate;
	}

}

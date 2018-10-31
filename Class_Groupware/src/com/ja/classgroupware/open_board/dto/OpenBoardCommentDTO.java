package com.ja.classgroupware.open_board.dto;

public class OpenBoardCommentDTO {
	private String open_bo_comment_idx;
	private String open_bo_idx;
	private String class_idx;
	private String user_idx;
	private String open_bo_comm_parent_idx;
	private String open_bo_comm_content;
	private String open_bo_comm_writedate;

	public String getOpen_bo_comment_idx() {
		return open_bo_comment_idx;
	}

	public void setOpen_bo_comment_idx(String open_bo_comment_idx) {
		this.open_bo_comment_idx = open_bo_comment_idx;
	}

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

	public String getOpen_bo_comm_parent_idx() {
		return open_bo_comm_parent_idx;
	}

	public void setOpen_bo_comm_parent_idx(String open_bo_comm_parent_idx) {
		this.open_bo_comm_parent_idx = open_bo_comm_parent_idx;
	}

	public String getOpen_bo_comm_content() {
		return open_bo_comm_content;
	}

	public void setOpen_bo_comm_content(String open_bo_comm_content) {
		this.open_bo_comm_content = open_bo_comm_content;
	}

	public String getOpen_bo_comm_writedate() {
		return open_bo_comm_writedate;
	}

	public void setOpen_bo_comm_writedate(String open_bo_comm_writedate) {
		this.open_bo_comm_writedate = open_bo_comm_writedate;
	}

	public OpenBoardCommentDTO(String open_bo_comment_idx, String open_bo_idx, String class_idx, String user_idx,
			String open_bo_comm_parent_idx, String open_bo_comm_content, String open_bo_comm_writedate) {
		super();
		this.open_bo_comment_idx = open_bo_comment_idx;
		this.open_bo_idx = open_bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.open_bo_comm_parent_idx = open_bo_comm_parent_idx;
		this.open_bo_comm_content = open_bo_comm_content;
		this.open_bo_comm_writedate = open_bo_comm_writedate;
	}

}

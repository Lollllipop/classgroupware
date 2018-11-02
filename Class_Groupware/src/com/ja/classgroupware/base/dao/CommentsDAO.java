package com.ja.classgroupware.base.dao;

public class CommentsDAO {

	private String comment_idx;
	private String bo_idx;
	private String class_idx;
	private String user_idx;
	private String comm_parent_idx;
	private String comm_content;
	private String comm_writedate;
	private String comm_role;

	public CommentsDAO(String comment_idx, String bo_idx, String class_idx, String user_idx, String comm_parent_idx,
			String comm_content, String comm_writedate, String comm_role) {
		super();
		this.comment_idx = comment_idx;
		this.bo_idx = bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.comm_parent_idx = comm_parent_idx;
		this.comm_content = comm_content;
		this.comm_writedate = comm_writedate;
		this.comm_role = comm_role;
	}

	public String getComment_idx() {
		return comment_idx;
	}

	public void setComment_idx(String comment_idx) {
		this.comment_idx = comment_idx;
	}

	public String getBo_idx() {
		return bo_idx;
	}

	public void setBo_idx(String bo_idx) {
		this.bo_idx = bo_idx;
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

	public String getComm_parent_idx() {
		return comm_parent_idx;
	}

	public void setComm_parent_idx(String comm_parent_idx) {
		this.comm_parent_idx = comm_parent_idx;
	}

	public String getComm_content() {
		return comm_content;
	}

	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}

	public String getComm_writedate() {
		return comm_writedate;
	}

	public void setComm_writedate(String comm_writedate) {
		this.comm_writedate = comm_writedate;
	}

	public String getComm_role() {
		return comm_role;
	}

	public void setComm_role(String comm_role) {
		this.comm_role = comm_role;
	}

}

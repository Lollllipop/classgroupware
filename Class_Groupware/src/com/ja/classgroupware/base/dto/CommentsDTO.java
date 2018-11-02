package com.ja.classgroupware.base.dto;

import java.sql.Date;

public class CommentsDTO {

	private int comment_idx;
	private int bo_idx;
	private int class_idx;
	private int user_idx;
	private int comm_parent_idx;
	private String comm_content;
	private Date comm_writedate;
	private String comm_role;

	public CommentsDTO(int comment_idx, int bo_idx, int class_idx, int user_idx, int comm_parent_idx,
			String comm_content, Date comm_writedate, String comm_role) {
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

	public int getComment_idx() {
		return comment_idx;
	}

	public void setComment_idx(int comment_idx) {
		this.comment_idx = comment_idx;
	}

	public int getBo_idx() {
		return bo_idx;
	}

	public void setBo_idx(int bo_idx) {
		this.bo_idx = bo_idx;
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

	public int getComm_parent_idx() {
		return comm_parent_idx;
	}

	public void setComm_parent_idx(int comm_parent_idx) {
		this.comm_parent_idx = comm_parent_idx;
	}

	public String getComm_content() {
		return comm_content;
	}

	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}

	public Date getComm_writedate() {
		return comm_writedate;
	}

	public void setComm_writedate(Date comm_writedate) {
		this.comm_writedate = comm_writedate;
	}

	public String getComm_role() {
		return comm_role;
	}

	public void setComm_role(String comm_role) {
		this.comm_role = comm_role;
	}

}

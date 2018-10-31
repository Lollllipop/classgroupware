package com.ja.classgroupware.reference_board.dto;

public class ReferenceBoardCommentDTO {
	private String ref_bo_comm_idx;
	private String ref_bo_idx;
	private String class_idx;
	private String user_idx;
	private String ref_bo_comm_parent_idx;
	private String ref_bo_comm_content;
	private String ref_bo_comm_writedate;

	public String getRef_bo_comm_idx() {
		return ref_bo_comm_idx;
	}

	public void setRef_bo_comm_idx(String ref_bo_comm_idx) {
		this.ref_bo_comm_idx = ref_bo_comm_idx;
	}

	public String getRef_bo_idx() {
		return ref_bo_idx;
	}

	public void setRef_bo_idx(String ref_bo_idx) {
		this.ref_bo_idx = ref_bo_idx;
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

	public String getRef_bo_comm_parent_idx() {
		return ref_bo_comm_parent_idx;
	}

	public void setRef_bo_comm_parent_idx(String ref_bo_comm_parent_idx) {
		this.ref_bo_comm_parent_idx = ref_bo_comm_parent_idx;
	}

	public String getRef_bo_comm_content() {
		return ref_bo_comm_content;
	}

	public void setRef_bo_comm_content(String ref_bo_comm_content) {
		this.ref_bo_comm_content = ref_bo_comm_content;
	}

	public String getRef_bo_comm_writedate() {
		return ref_bo_comm_writedate;
	}

	public void setRef_bo_comm_writedate(String ref_bo_comm_writedate) {
		this.ref_bo_comm_writedate = ref_bo_comm_writedate;
	}

	public ReferenceBoardCommentDTO(String ref_bo_comm_idx, String ref_bo_idx, String class_idx, String user_idx,
			String ref_bo_comm_parent_idx, String ref_bo_comm_content, String ref_bo_comm_writedate) {
		super();
		this.ref_bo_comm_idx = ref_bo_comm_idx;
		this.ref_bo_idx = ref_bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.ref_bo_comm_parent_idx = ref_bo_comm_parent_idx;
		this.ref_bo_comm_content = ref_bo_comm_content;
		this.ref_bo_comm_writedate = ref_bo_comm_writedate;
	}

}

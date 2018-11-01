package com.ja.classgroupware.reference_board.dto;

public class ReferenceBoardDTO {
	private String ref_bo_idx;
	private String class_idx;
	private String user_idx;
	private String ref_bo_content;
	private String ref_bo_writedate;

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

	public String getRef_bo_content() {
		return ref_bo_content;
	}

	public void setRef_bo_content(String ref_bo_content) {
		this.ref_bo_content = ref_bo_content;
	}

	public String getRef_bo_writedate() {
		return ref_bo_writedate;
	}

	public void setRef_bo_writedate(String ref_bo_writedate) {
		this.ref_bo_writedate = ref_bo_writedate;
	}

	public ReferenceBoardDTO(String ref_bo_idx, String class_idx, String user_idx, String ref_bo_content,
			String ref_bo_writedate) {
		super();
		this.ref_bo_idx = ref_bo_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.ref_bo_content = ref_bo_content;
		this.ref_bo_writedate = ref_bo_writedate;
	}

}

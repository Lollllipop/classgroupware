package com.ja.classgroupware.base.dto;

public class FilesDTO {

	private int file_idx;
	private int bo_idx;
	private int class_idx;
	private String file_link;
	private String file_name;
	private String file_role;

	public FilesDTO(int file_idx, int bo_idx, int class_idx, String file_link, String file_name, String file_role) {
		super();
		this.file_idx = file_idx;
		this.bo_idx = bo_idx;
		this.class_idx = class_idx;
		this.file_link = file_link;
		this.file_name = file_name;
		this.file_role = file_role;
	}

	public int getFile_idx() {
		return file_idx;
	}

	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
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

	public String getFile_link() {
		return file_link;
	}

	public void setFile_link(String file_link) {
		this.file_link = file_link;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_role() {
		return file_role;
	}

	public void setFile_role(String file_role) {
		this.file_role = file_role;
	}

}

package com.ja.classgroupware.base.dao;

public class FilesDAO {

	private String file_idx;
	private String bo_idx;
	private String class_idx;
	private String file_link;
	private String file_name;
	private String file_role;

	public FilesDAO(String file_idx, String bo_idx, String class_idx, String file_link, String file_name,
			String file_role) {
		super();
		this.file_idx = file_idx;
		this.bo_idx = bo_idx;
		this.class_idx = class_idx;
		this.file_link = file_link;
		this.file_name = file_name;
		this.file_role = file_role;
	}

	public String getFile_idx() {
		return file_idx;
	}

	public void setFile_idx(String file_idx) {
		this.file_idx = file_idx;
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

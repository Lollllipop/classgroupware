package com.ja.classgroupware.base.dao;

public class GradeDAO {

	private String grade_idx;
	private String class_idx;
	private String user_idx;
	private String grade_name;
	private String grade_score;

	public GradeDAO(String grade_idx, String class_idx, String user_idx, String grade_name, String grade_score) {
		super();
		this.grade_idx = grade_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.grade_name = grade_name;
		this.grade_score = grade_score;
	}

	public String getGrade_idx() {
		return grade_idx;
	}

	public void setGrade_idx(String grade_idx) {
		this.grade_idx = grade_idx;
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

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public String getGrade_score() {
		return grade_score;
	}

	public void setGrade_score(String grade_score) {
		this.grade_score = grade_score;
	}

}

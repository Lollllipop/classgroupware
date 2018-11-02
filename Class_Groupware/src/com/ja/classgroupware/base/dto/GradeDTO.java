package com.ja.classgroupware.base.dto;

public class GradeDTO {

	private int grade_idx;
	private int class_idx;
	private int user_idx;
	private String grade_name;
	private int grade_score;

	public GradeDTO(int grade_idx, int class_idx, int user_idx, String grade_name, int grade_score) {
		super();
		this.grade_idx = grade_idx;
		this.class_idx = class_idx;
		this.user_idx = user_idx;
		this.grade_name = grade_name;
		this.grade_score = grade_score;
	}

	public int getGrade_idx() {
		return grade_idx;
	}

	public void setGrade_idx(int grade_idx) {
		this.grade_idx = grade_idx;
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

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public int getGrade_score() {
		return grade_score;
	}

	public void setGrade_score(int grade_score) {
		this.grade_score = grade_score;
	}

}

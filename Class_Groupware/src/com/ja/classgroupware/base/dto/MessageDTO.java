package com.ja.classgroupware.base.dto;

import java.sql.Date;

public class MessageDTO {

	private int message_idx;
	private int message_sender_idx;
	private int message_receiver_idx;
	private String message_content;
	private Date message_writedate;

	public int getMessage_idx() {
		return message_idx;
	}

	public void setMessage_idx(int message_idx) {
		this.message_idx = message_idx;
	}

	public int getMessage_sender_idx() {
		return message_sender_idx;
	}

	public void setMessage_sender_idx(int message_sender_idx) {
		this.message_sender_idx = message_sender_idx;
	}

	public int getMessage_receiver_idx() {
		return message_receiver_idx;
	}

	public void setMessage_receiver_idx(int message_receiver_idx) {
		this.message_receiver_idx = message_receiver_idx;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

	public Date getMessage_writedate() {
		return message_writedate;
	}

	public void setMessage_writedate(Date message_writedate) {
		this.message_writedate = message_writedate;
	}

	public MessageDTO(int message_idx, int message_sender_idx, int message_receiver_idx, String message_content,
			Date message_writedate) {
		super();
		this.message_idx = message_idx;
		this.message_sender_idx = message_sender_idx;
		this.message_receiver_idx = message_receiver_idx;
		this.message_content = message_content;
		this.message_writedate = message_writedate;
	}

}

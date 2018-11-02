package com.ja.classgroupware.base.dao;

public class MessageDAO {

	private String message_idx;
	private String message_sender_idx;
	private String message_receiver_idx;
	private String message_content;
	private String message_writedate;

	public MessageDAO(String message_idx, String message_sender_idx, String message_receiver_idx,
			String message_content, String message_writedate) {
		super();
		this.message_idx = message_idx;
		this.message_sender_idx = message_sender_idx;
		this.message_receiver_idx = message_receiver_idx;
		this.message_content = message_content;
		this.message_writedate = message_writedate;
	}

	public String getMessage_idx() {
		return message_idx;
	}

	public void setMessage_idx(String message_idx) {
		this.message_idx = message_idx;
	}

	public String getMessage_sender_idx() {
		return message_sender_idx;
	}

	public void setMessage_sender_idx(String message_sender_idx) {
		this.message_sender_idx = message_sender_idx;
	}

	public String getMessage_receiver_idx() {
		return message_receiver_idx;
	}

	public void setMessage_receiver_idx(String message_receiver_idx) {
		this.message_receiver_idx = message_receiver_idx;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

	public String getMessage_writedate() {
		return message_writedate;
	}

	public void setMessage_writedate(String message_writedate) {
		this.message_writedate = message_writedate;
	}

}

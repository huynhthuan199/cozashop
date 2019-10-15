package com.cozashop.entities;

public class ApiResponse {
	private Status status;
	private String message;
	private Object data;	
	
	public ApiResponse(Status status, String message) {
		super();
		this.status = status;
		this.message = message;
	}
	
	public ApiResponse(Status status, String message, Object data) {
		super();
		this.status = status;
		this.message = message;
		this.data = data;
	}
	public String getStatus() {
		return status.name();
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	public enum Status{
		warning, success, danger, info
	}
	
}

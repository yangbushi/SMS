package com.smsmsg.model;

public class JsonHttpPostRequest {
	private String descMessage;
	private String resultCode ;
	
	public JsonHttpPostRequest(String descMessage,String resultCode ){
		this.descMessage = descMessage;
		this.resultCode = resultCode;
	}
	
	public JsonHttpPostRequest(){
		
	}
	public String getDescMessage() {
		return descMessage;
	}
	public void setDescMessage(String descMessage) {
		this.descMessage = descMessage;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
}


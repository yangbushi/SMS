package com.vico.msgservice.core.model;

import java.util.List;

public class JsonSendMsg {
	private SendMsgConfig sendMsgConfig;
	private String destinationNumber;
	private List<String> args;
	
	public JsonSendMsg(SendMsgConfig sendMsgConfig){
		this.sendMsgConfig = sendMsgConfig;
	}
	/**
	 * invokerId
	 * @return
	 */
	public String getInvokerId() {
		return sendMsgConfig.getInvokerId();
	}

	public void setInvokerId(String invokerId) {
		sendMsgConfig.setInvokerId(invokerId);
	}
	/**
	 * templateId
	 * @return
	 */
	public String getTemplateId() {
		return sendMsgConfig.getTemplateId();
	}

	public void setTemplateId(String templateId) {
		sendMsgConfig.setTemplateId(templateId);
	}
	
	/**
	 * destinationNumber
	 * @return
	 */
	public String getDestinationNumber() {
		return destinationNumber;
	}

	public void setDestinationNumber(String destinationNumber) {
		this.destinationNumber = destinationNumber;
	}
	
	/**
	 * password
	 * @return
	 */
	public String getPassword() {
		return sendMsgConfig.getPassword();
	}

	public void setPassword(String password) {
		sendMsgConfig.setPassword(password);
	}

	/**
	 * isInstant
	 * @return
	 */
	public String getIsInstant() {
		return sendMsgConfig.getIsInstant();
	}

	public void setIsInstant(String isInstant) {
		sendMsgConfig.setIsInstant(isInstant);
	}

	
	/**
	 * args
	 * @return
	 */
	public List<String> getArgs() {
		return args;
	}

	public void setArgs(List<String> args) {
		this.args = args;
	}
	/**
	 * postUrl
	 * @return
	 */
	public String getPostUrl() {
		return sendMsgConfig.getPostUrl();
	}

	public void setPostUrl(String postUrl) {
		sendMsgConfig.setPostUrl(postUrl);
	}
	
	

	
	
}

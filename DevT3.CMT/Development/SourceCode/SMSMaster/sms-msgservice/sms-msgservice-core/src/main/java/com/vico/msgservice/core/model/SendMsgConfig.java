package com.vico.msgservice.core.model;

import org.codehaus.jackson.annotate.JsonIgnore;

/**
 * 短信发送的配置
 * @author Gaoliang.Zhou
 *
 */
public class SendMsgConfig {
	@JsonIgnore
	private String postUrl;
	private String invokerId;
	private String templateId;
	private String password;
	private String isInstant;
	
	public SendMsgConfig(){
		invokerId = "100019";
		password = "EB86CB7697786EAC40A22B0D195D6370";
		templateId ="4";
		isInstant = "false";
		postUrl = "http://sms.vico-lab.com:11319/sms/Json.do";//"http://121.40.225.121:8333/hr-sms-ws/sendMessage.sms";
	}

	public String getInvokerId() {
		return invokerId;
	}

	public void setInvokerId(String invokerId) {
		this.invokerId = invokerId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIsInstant() {
		return isInstant;
	}

	public void setIsInstant(String isInstant) {
		this.isInstant = isInstant;
	}

	public String getTemplateId() {
		return templateId;
	}

	public void setTemplateId(String templateId) {
		this.templateId = templateId;
	}

	public String getPostUrl() {
		return postUrl;
	}

	public void setPostUrl(String postUrl) {
		this.postUrl = postUrl;
	}
}

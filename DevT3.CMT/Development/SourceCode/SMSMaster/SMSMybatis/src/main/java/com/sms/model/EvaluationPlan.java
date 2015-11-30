package com.sms.model;

import java.util.Date;

import com.sms.enums.EnumCsrPlanStatus;

/**
 * 
 * 项目名称：SMSMybatis  
 * 类全名:com.sms.model.EvaluationPlan    
 * 类描述： 测评计划   
 * 创建人：DingYuanyuan  
 * 创建时间：2015-11-19 上午11:09:04    
 * 修改备注：
 */
public class EvaluationPlan {
	private Integer planId;

	private String planName;

	private Date startDateTime;

	private Date endDateTime;

	private String evaluateScope;

	private String evaluateOrgCode;

	private String evaluateOrgName;

	private Integer daySmsCountLimit;

	private String createOrgCode;

	private String createOrgName;

	private String creatorId;

	private String creatorName;

	private Date createDateTime;

	private Integer status;
	
	private String cancelPersonId;
	
	private String cancelPersonName;
	
	private Date cancelDateTime;
	
	public String getCancelPersonId() {
		return cancelPersonId;
	}

	public void setCancelPersonId(String cancelPersonId) {
		this.cancelPersonId = cancelPersonId;
	}

	public String getCancelPersonName() {
		return cancelPersonName;
	}

	public void setCancelPersonName(String cancelPersonName) {
		this.cancelPersonName = cancelPersonName;
	}

	public Date getCancelDateTime() {
		return cancelDateTime;
	}

	public void setCancelDateTime(Date cancelDateTime) {
		this.cancelDateTime = cancelDateTime;
	}
	
	public Integer getPlanId() {
		return planId;
	}

	public void setPlanId(Integer planId) {
		this.planId = planId;
	}

	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	public Date getStartDateTime() {
		return startDateTime;
	}

	public void setStartDateTime(Date startDateTime) {
		this.startDateTime = startDateTime;
	}

	public Date getEndDateTime() {
		return endDateTime;
	}

	public void setEndDateTime(Date endDateTime) {
		this.endDateTime = endDateTime;
	}

	public String getEvaluateScope() {
		return evaluateScope;
	}

	public void setEvaluateScope(String evaluateScope) {
		this.evaluateScope = evaluateScope;
	}

	public String getEvaluateOrgCode() {
		return evaluateOrgCode;
	}

	public void setEvaluateOrgCode(String evaluateOrgCode) {
		this.evaluateOrgCode = evaluateOrgCode;
	}

	public String getEvaluateOrgName() {
		return evaluateOrgName;
	}

	public void setEvaluateOrgName(String evaluateOrgName) {
		this.evaluateOrgName = evaluateOrgName;
	}

	public Integer getDaySmsCountLimit() {
		return daySmsCountLimit;
	}

	public void setDaySmsCountLimit(Integer daySmsCountLimit) {
		this.daySmsCountLimit = daySmsCountLimit;
	}

	public String getCreateOrgCode() {
		return createOrgCode;
	}

	public void setCreateOrgCode(String createOrgCode) {
		this.createOrgCode = createOrgCode;
	}

	public String getCreateOrgName() {
		return createOrgName;
	}

	public void setCreateOrgName(String createOrgName) {
		this.createOrgName = createOrgName;
	}

	public String getCreatorId() {
		return creatorId;
	}

	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}

	public String getCreatorName() {
		return creatorName;
	}

	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}

	public Date getCreateDateTime() {
		return createDateTime;
	}

	public void setCreateDateTime(Date createDateTime) {
		this.createDateTime = createDateTime;
	}

	public Integer getStatus() {
		return status;
	}

	public EnumCsrPlanStatus getEnumCsrPlanStatus() {
		return EnumCsrPlanStatus.getEnum(this.status.intValue());
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public void setEnumCsrPlanStatus(EnumCsrPlanStatus enumCsrPlanStatus) {
		this.status = enumCsrPlanStatus.getValue();
	}

}
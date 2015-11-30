package com.sms.model;

import java.util.Date;

import com.sms.enums.EnumVisitType;

public class EvaluationRecord {
    private Integer recordId;

    private Integer planId;

    private String identityNo;

    private String name;

    private String mobilePhoneNum;

    private String visitId;

    private String visitType;

    private Date visitStartDateTime;

    private String visitOrgCode;

    private String visitOrgName;

    private String hisDeptCode;

    private String hisDeptName;

    private String doctorName;

    private String smsSendContent;

    private Date sendDateTime;

    private Integer isReply;

    private String smsReplyContent;

    private Date replyDateTime;

    private String reflactContent;

    private Integer isSmsReplyContentValid;

    private Integer manualProcessed;

    private String processOrgCode;

    private String processOrgName;

    private String processPersonId;

    private String processPersonName;

    private Date processDateTime;

    private Integer isSatisfaction;

    private String csrResultCode;

    private String csrResultName;

    private String theBestDoctor;

    private String theWorstDoctor;

    private String doctorCode;

    public Integer getRecordId() {
        return recordId;
    }

    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
    }

    public Integer getPlanId() {
        return planId;
    }

    public void setPlanId(Integer planId) {
        this.planId = planId;
    }

    public String getIdentityNo() {
        return identityNo;
    }

    public void setIdentityNo(String identityNo) {
        this.identityNo = identityNo == null ? null : identityNo.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getMobilePhoneNum() {
        return mobilePhoneNum;
    }

    public void setMobilePhoneNum(String mobilePhoneNum) {
        this.mobilePhoneNum = mobilePhoneNum == null ? null : mobilePhoneNum.trim();
    }

    public String getVisitId() {
        return visitId;
    }

    public void setVisitId(String visitId) {
        this.visitId = visitId == null ? null : visitId.trim();
    }

    public String getVisitType() {
        return visitType;
    }

    public void setVisitType(String visitType) {
        this.visitType = visitType == null ? null : visitType.trim();
    }

    public Date getVisitStartDateTime() {
        return visitStartDateTime;
    }

    public void setVisitStartDateTime(Date visitStartDateTime) {
        this.visitStartDateTime = visitStartDateTime;
    }

    public String getVisitOrgCode() {
        return visitOrgCode;
    }

    public void setVisitOrgCode(String visitOrgCode) {
        this.visitOrgCode = visitOrgCode == null ? null : visitOrgCode.trim();
    }

    public String getVisitOrgName() {
        return visitOrgName;
    }

    public void setVisitOrgName(String visitOrgName) {
        this.visitOrgName = visitOrgName == null ? null : visitOrgName.trim();
    }

    public String getHisDeptCode() {
        return hisDeptCode;
    }

    public void setHisDeptCode(String hisDeptCode) {
        this.hisDeptCode = hisDeptCode == null ? null : hisDeptCode.trim();
    }

    public String getHisDeptName() {
        return hisDeptName;
    }

    public void setHisDeptName(String hisDeptName) {
        this.hisDeptName = hisDeptName == null ? null : hisDeptName.trim();
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName == null ? null : doctorName.trim();
    }

    public String getSmsSendContent() {
        return smsSendContent;
    }

    public void setSmsSendContent(String smsSendContent) {
        this.smsSendContent = smsSendContent == null ? null : smsSendContent.trim();
    }

    public Date getSendDateTime() {
        return sendDateTime;
    }

    public void setSendDateTime(Date sendDateTime) {
        this.sendDateTime = sendDateTime;
    }

    public Integer getIsReply() {
        return isReply;
    }

    public void setIsReply(Integer isReply) {
        this.isReply = isReply;
    }

    public String getSmsReplyContent() {
        return smsReplyContent;
    }

    public void setSmsReplyContent(String smsReplyContent) {
        this.smsReplyContent = smsReplyContent == null ? null : smsReplyContent.trim();
    }

    public Date getReplyDateTime() {
        return replyDateTime;
    }

    public void setReplyDateTime(Date replyDateTime) {
        this.replyDateTime = replyDateTime;
    }

    public String getReflactContent() {
        return reflactContent;
    }

    public void setReflactContent(String reflactContent) {
        this.reflactContent = reflactContent == null ? null : reflactContent.trim();
    }

    public Integer getIsSmsReplyContentValid() {
        return isSmsReplyContentValid;
    }

    public void setIsSmsReplyContentValid(Integer isSmsReplyContentValid) {
        this.isSmsReplyContentValid = isSmsReplyContentValid;
    }

    public Integer getManualProcessed() {
        return manualProcessed;
    }

    public void setManualProcessed(Integer manualProcessed) {
        this.manualProcessed = manualProcessed;
    }

    public String getProcessOrgCode() {
        return processOrgCode;
    }

    public void setProcessOrgCode(String processOrgCode) {
        this.processOrgCode = processOrgCode == null ? null : processOrgCode.trim();
    }

    public String getProcessOrgName() {
        return processOrgName;
    }

    public void setProcessOrgName(String processOrgName) {
        this.processOrgName = processOrgName == null ? null : processOrgName.trim();
    }

    public String getProcessPersonId() {
        return processPersonId;
    }

    public void setProcessPersonId(String processPersonId) {
        this.processPersonId = processPersonId == null ? null : processPersonId.trim();
    }

    public String getProcessPersonName() {
        return processPersonName;
    }

    public void setProcessPersonName(String processPersonName) {
        this.processPersonName = processPersonName == null ? null : processPersonName.trim();
    }

    public Date getProcessDateTime() {
        return processDateTime;
    }

    public void setProcessDateTime(Date processDateTime) {
        this.processDateTime = processDateTime;
    }

    public Integer getIsSatisfaction() {
        return isSatisfaction;
    }

    public void setIsSatisfaction(Integer isSatisfaction) {
        this.isSatisfaction = isSatisfaction;
    }

    public String getCsrResultCode() {
        return csrResultCode;
    }

    public void setCsrResultCode(String csrResultCode) {
        this.csrResultCode = csrResultCode == null ? null : csrResultCode.trim();
    }

    public String getCsrResultName() {
        return csrResultName;
    }

    public void setCsrResultName(String csrResultName) {
        this.csrResultName = csrResultName == null ? null : csrResultName.trim();
    }

    public String getTheBestDoctor() {
        return theBestDoctor;
    }

    public void setTheBestDoctor(String theBestDoctor) {
        this.theBestDoctor = theBestDoctor == null ? null : theBestDoctor.trim();
    }

    public String getTheWorstDoctor() {
        return theWorstDoctor;
    }

    public void setTheWorstDoctor(String theWorstDoctor) {
        this.theWorstDoctor = theWorstDoctor == null ? null : theWorstDoctor.trim();
    }

    public String getDoctorCode() {
        return doctorCode;
    }

    public void setDoctorCode(String doctorCode) {
        this.doctorCode = doctorCode == null ? null : doctorCode.trim();
    }

    public void setEnumVisitType(EnumVisitType enumVisitType){
    	this.visitType = enumVisitType.getValue();
    }

    public void setBoolReply(Boolean isReply){
    	this.isReply = isReply ? 1 : 0;
    }
}
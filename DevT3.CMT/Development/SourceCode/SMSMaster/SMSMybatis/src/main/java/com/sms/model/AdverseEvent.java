package com.sms.model;

import java.util.Date;

/**
 * 满意度不良事件
 * @author Ding.Yuanyuan
 *
 */
public class AdverseEvent {
    private Integer eventId;

    private String eventSourceCode;

    private String eventSourceName;

    private Integer planId;

    private Integer recordId;

    private String identityNo;

    private String name;

    private String calledFromNum;

    private String mobilePhoneNum;

    private String contactAddress;

    private String visitId;

    private String visitType;

    private Date visitStartDateTime;

    private String visitOrgCode;

    private String visitOrgName;

    private String hisDeptCode;

    private String hisDeptName;

    private String doctorCode;

    private String doctorName;

    private String reflactContent;

    private Date reflactDateTime;

    private Integer needSecurityProcess;

    private String reflactForCode;

    private String reflactForName;

    private String reflactContentClassCode;

    private String reflactContentClassName;

    private String acceptOrgCode;

    private String acceptOrgName;

    private String acceptorId;

    private String acceptorName;

    private Date acceptDateTime;

    private String handleOrgCode;

    private String handleOrgName;

    private Date handleClosingDate;

    private String assignOrgCode;

    private String assignOrgName;

    private String assignPersonId;

    private String assignPersonName;

    private Date assignDateTime;

    private String handleResult;

    private String feedbackResult;

    private String returnVisitResult;

    private Integer status;

    public Integer getEventId() {
        return eventId;
    }

    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }

    public String getEventSourceCode() {
        return eventSourceCode;
    }

    public void setEventSourceCode(String eventSourceCode) {
        this.eventSourceCode = eventSourceCode == null ? null : eventSourceCode.trim();
    }

    public String getEventSourceName() {
        return eventSourceName;
    }

    public void setEventSourceName(String eventSourceName) {
        this.eventSourceName = eventSourceName == null ? null : eventSourceName.trim();
    }

    public Integer getPlanId() {
        return planId;
    }

    public void setPlanId(Integer planId) {
        this.planId = planId;
    }

    public Integer getRecordId() {
        return recordId;
    }

    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
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

    public String getCalledFromNum() {
        return calledFromNum;
    }

    public void setCalledFromNum(String calledFromNum) {
        this.calledFromNum = calledFromNum == null ? null : calledFromNum.trim();
    }

    public String getMobilePhoneNum() {
        return mobilePhoneNum;
    }

    public void setMobilePhoneNum(String mobilePhoneNum) {
        this.mobilePhoneNum = mobilePhoneNum == null ? null : mobilePhoneNum.trim();
    }

    public String getContactAddress() {
        return contactAddress;
    }

    public void setContactAddress(String contactAddress) {
        this.contactAddress = contactAddress == null ? null : contactAddress.trim();
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

    public String getDoctorCode() {
        return doctorCode;
    }

    public void setDoctorCode(String doctorCode) {
        this.doctorCode = doctorCode == null ? null : doctorCode.trim();
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName == null ? null : doctorName.trim();
    }

    public String getReflactContent() {
        return reflactContent;
    }

    public void setReflactContent(String reflactContent) {
        this.reflactContent = reflactContent == null ? null : reflactContent.trim();
    }

    public Date getReflactDateTime() {
        return reflactDateTime;
    }

    public void setReflactDateTime(Date reflactDateTime) {
        this.reflactDateTime = reflactDateTime;
    }

    public Integer getNeedSecurityProcess() {
        return needSecurityProcess;
    }

    public void setNeedSecurityProcess(Integer needSecurityProcess) {
        this.needSecurityProcess = needSecurityProcess;
    }

    public String getReflactForCode() {
        return reflactForCode;
    }

    public void setReflactForCode(String reflactForCode) {
        this.reflactForCode = reflactForCode == null ? null : reflactForCode.trim();
    }

    public String getReflactForName() {
        return reflactForName;
    }

    public void setReflactForName(String reflactForName) {
        this.reflactForName = reflactForName == null ? null : reflactForName.trim();
    }

    public String getReflactContentClassCode() {
        return reflactContentClassCode;
    }

    public void setReflactContentClassCode(String reflactContentClassCode) {
        this.reflactContentClassCode = reflactContentClassCode == null ? null : reflactContentClassCode.trim();
    }

    public String getReflactContentClassName() {
        return reflactContentClassName;
    }

    public void setReflactContentClassName(String reflactContentClassName) {
        this.reflactContentClassName = reflactContentClassName == null ? null : reflactContentClassName.trim();
    }

    public String getAcceptOrgCode() {
        return acceptOrgCode;
    }

    public void setAcceptOrgCode(String acceptOrgCode) {
        this.acceptOrgCode = acceptOrgCode == null ? null : acceptOrgCode.trim();
    }

    public String getAcceptOrgName() {
        return acceptOrgName;
    }

    public void setAcceptOrgName(String acceptOrgName) {
        this.acceptOrgName = acceptOrgName == null ? null : acceptOrgName.trim();
    }

    public String getAcceptorId() {
        return acceptorId;
    }

    public void setAcceptorId(String acceptorId) {
        this.acceptorId = acceptorId == null ? null : acceptorId.trim();
    }

    public String getAcceptorName() {
        return acceptorName;
    }

    public void setAcceptorName(String acceptorName) {
        this.acceptorName = acceptorName == null ? null : acceptorName.trim();
    }

    public Date getAcceptDateTime() {
        return acceptDateTime;
    }

    public void setAcceptDateTime(Date acceptDateTime) {
        this.acceptDateTime = acceptDateTime;
    }

    public String getHandleOrgCode() {
        return handleOrgCode;
    }

    public void setHandleOrgCode(String handleOrgCode) {
        this.handleOrgCode = handleOrgCode == null ? null : handleOrgCode.trim();
    }

    public String getHandleOrgName() {
        return handleOrgName;
    }

    public void setHandleOrgName(String handleOrgName) {
        this.handleOrgName = handleOrgName == null ? null : handleOrgName.trim();
    }

    public Date getHandleClosingDate() {
        return handleClosingDate;
    }

    public void setHandleClosingDate(Date handleClosingDate) {
        this.handleClosingDate = handleClosingDate;
    }

    public String getAssignOrgCode() {
        return assignOrgCode;
    }

    public void setAssignOrgCode(String assignOrgCode) {
        this.assignOrgCode = assignOrgCode == null ? null : assignOrgCode.trim();
    }

    public String getAssignOrgName() {
        return assignOrgName;
    }

    public void setAssignOrgName(String assignOrgName) {
        this.assignOrgName = assignOrgName == null ? null : assignOrgName.trim();
    }

    public String getAssignPersonId() {
        return assignPersonId;
    }

    public void setAssignPersonId(String assignPersonId) {
        this.assignPersonId = assignPersonId == null ? null : assignPersonId.trim();
    }

    public String getAssignPersonName() {
        return assignPersonName;
    }

    public void setAssignPersonName(String assignPersonName) {
        this.assignPersonName = assignPersonName == null ? null : assignPersonName.trim();
    }

    public Date getAssignDateTime() {
        return assignDateTime;
    }

    public void setAssignDateTime(Date assignDateTime) {
        this.assignDateTime = assignDateTime;
    }

    public String getHandleResult() {
        return handleResult;
    }

    public void setHandleResult(String handleResult) {
        this.handleResult = handleResult == null ? null : handleResult.trim();
    }

    public String getFeedbackResult() {
        return feedbackResult;
    }

    public void setFeedbackResult(String feedbackResult) {
        this.feedbackResult = feedbackResult == null ? null : feedbackResult.trim();
    }

    public String getReturnVisitResult() {
        return returnVisitResult;
    }

    public void setReturnVisitResult(String returnVisitResult) {
        this.returnVisitResult = returnVisitResult == null ? null : returnVisitResult.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
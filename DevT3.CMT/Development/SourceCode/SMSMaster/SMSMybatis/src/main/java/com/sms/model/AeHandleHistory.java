package com.sms.model;

import java.util.Date;


/**
 * 办理情况历史记录
 * @author Ding.Yuanyuan
 *
 */
public class AeHandleHistory {
    private Integer id;

    private Integer eventId;

    private Date handleDateTime;

    private String handleOrgCode;

    private String handleOrgName;

    private String handlePersonId;

    private String handlePersonName;

    private String handleResult;

    private String feedbackSummary;

    private String feedbackMemo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getEventId() {
        return eventId;
    }

    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }

    public Date getHandleDateTime() {
        return handleDateTime;
    }

    public void setHandleDateTime(Date handleDateTime) {
        this.handleDateTime = handleDateTime;
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

    public String getHandlePersonId() {
        return handlePersonId;
    }

    public void setHandlePersonId(String handlePersonId) {
        this.handlePersonId = handlePersonId == null ? null : handlePersonId.trim();
    }

    public String getHandlePersonName() {
        return handlePersonName;
    }

    public void setHandlePersonName(String handlePersonName) {
        this.handlePersonName = handlePersonName == null ? null : handlePersonName.trim();
    }

    public String getHandleResult() {
        return handleResult;
    }

    public void setHandleResult(String handleResult) {
        this.handleResult = handleResult == null ? null : handleResult.trim();
    }

    public String getFeedbackSummary() {
        return feedbackSummary;
    }

    public void setFeedbackSummary(String feedbackSummary) {
        this.feedbackSummary = feedbackSummary == null ? null : feedbackSummary.trim();
    }

    public String getFeedbackMemo() {
        return feedbackMemo;
    }

    public void setFeedbackMemo(String feedbackMemo) {
        this.feedbackMemo = feedbackMemo == null ? null : feedbackMemo.trim();
    }
}
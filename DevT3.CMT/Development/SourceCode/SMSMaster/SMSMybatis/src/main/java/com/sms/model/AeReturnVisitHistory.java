package com.sms.model;

import java.util.Date;

/**
 * 回访情况历史记录
 * @author Ding.Yuanyuan
 *
 */
public class AeReturnVisitHistory {
    private Integer id;

    private Integer eventId;

    private Date returnVisitDateTime;

    private String returnVisitOrgCode;

    private String returnVisitOrgName;

    private String returnVisitPersonId;

    private String returnVisitPersonName;

    private String returnVisitResult;

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

    public Date getReturnVisitDateTime() {
        return returnVisitDateTime;
    }

    public void setReturnVisitDateTime(Date returnVisitDateTime) {
        this.returnVisitDateTime = returnVisitDateTime;
    }

    public String getReturnVisitOrgCode() {
        return returnVisitOrgCode;
    }

    public void setReturnVisitOrgCode(String returnVisitOrgCode) {
        this.returnVisitOrgCode = returnVisitOrgCode == null ? null : returnVisitOrgCode.trim();
    }

    public String getReturnVisitOrgName() {
        return returnVisitOrgName;
    }

    public void setReturnVisitOrgName(String returnVisitOrgName) {
        this.returnVisitOrgName = returnVisitOrgName == null ? null : returnVisitOrgName.trim();
    }

    public String getReturnVisitPersonId() {
        return returnVisitPersonId;
    }

    public void setReturnVisitPersonId(String returnVisitPersonId) {
        this.returnVisitPersonId = returnVisitPersonId == null ? null : returnVisitPersonId.trim();
    }

    public String getReturnVisitPersonName() {
        return returnVisitPersonName;
    }

    public void setReturnVisitPersonName(String returnVisitPersonName) {
        this.returnVisitPersonName = returnVisitPersonName == null ? null : returnVisitPersonName.trim();
    }

    public String getReturnVisitResult() {
        return returnVisitResult;
    }

    public void setReturnVisitResult(String returnVisitResult) {
        this.returnVisitResult = returnVisitResult == null ? null : returnVisitResult.trim();
    }
}
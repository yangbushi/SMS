package com.sms.model;

/**
 * 满意度调查短信发送队列
 * @author Ding.Yuanyuan
 *
 */
public class SendQueue {
    private Integer id;

    private Integer planId;

    private String mobilePhoneNum;

    private String smsContent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPlanId() {
        return planId;
    }

    public void setPlanId(Integer planId) {
        this.planId = planId;
    }

    public String getMobilePhoneNum() {
        return mobilePhoneNum;
    }

    public void setMobilePhoneNum(String mobilePhoneNum) {
        this.mobilePhoneNum = mobilePhoneNum == null ? null : mobilePhoneNum.trim();
    }

    public String getSmsContent() {
        return smsContent;
    }

    public void setSmsContent(String smsContent) {
        this.smsContent = smsContent == null ? null : smsContent.trim();
    }
}
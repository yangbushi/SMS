package com.sms.model;

import java.util.Date;

/**
 * 满意度不良事件用户关注表
 * @author Ding.Yuanyuan
 *
 */
public class AeUserFollowWith {
    private Integer id;

    private Integer eventId;

    private String personId;

    private Date followWithStartDateTime;

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

    public String getPersonId() {
        return personId;
    }

    public void setPersonId(String personId) {
        this.personId = personId == null ? null : personId.trim();
    }

    public Date getFollowWithStartDateTime() {
        return followWithStartDateTime;
    }

    public void setFollowWithStartDateTime(Date followWithStartDateTime) {
        this.followWithStartDateTime = followWithStartDateTime;
    }
}
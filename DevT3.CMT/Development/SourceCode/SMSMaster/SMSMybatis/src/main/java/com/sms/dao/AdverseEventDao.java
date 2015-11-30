package com.sms.dao;

import com.sms.model.AdverseEvent;

public interface AdverseEventDao {
    int deleteByPrimaryKey(Integer eventId);

    int insert(AdverseEvent record);

    int insertSelective(AdverseEvent record);

    AdverseEvent selectByPrimaryKey(Integer eventId);

    int updateByPrimaryKeySelective(AdverseEvent record);

    int updateByPrimaryKey(AdverseEvent record);
}
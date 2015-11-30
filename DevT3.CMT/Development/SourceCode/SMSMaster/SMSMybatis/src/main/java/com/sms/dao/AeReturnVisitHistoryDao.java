package com.sms.dao;

import com.sms.model.AeReturnVisitHistory;

public interface AeReturnVisitHistoryDao {
    int deleteByPrimaryKey(Integer id);

    int insert(AeReturnVisitHistory record);

    int insertSelective(AeReturnVisitHistory record);

    AeReturnVisitHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AeReturnVisitHistory record);

    int updateByPrimaryKey(AeReturnVisitHistory record);
}
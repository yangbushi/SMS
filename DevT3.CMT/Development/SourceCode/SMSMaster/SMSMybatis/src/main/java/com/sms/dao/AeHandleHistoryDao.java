package com.sms.dao;

import com.sms.model.AeHandleHistory;

public interface AeHandleHistoryDao {
    int deleteByPrimaryKey(Integer id);

    int insert(AeHandleHistory record);

    int insertSelective(AeHandleHistory record);

    AeHandleHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AeHandleHistory record);

    int updateByPrimaryKey(AeHandleHistory record);
}
package com.sms.dao;

import com.sms.model.SendQueue;

public interface SendQueueDao {
    int deleteByPrimaryKey(Integer id);

    int insert(SendQueue record);

    int insertSelective(SendQueue record);

    SendQueue selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SendQueue record);

    int updateByPrimaryKey(SendQueue record);
    
}
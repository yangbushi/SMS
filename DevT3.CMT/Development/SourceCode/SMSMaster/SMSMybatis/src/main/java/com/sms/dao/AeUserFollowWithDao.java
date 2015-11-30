package com.sms.dao;

import com.sms.model.AeUserFollowWith;

public interface AeUserFollowWithDao {
    int deleteByPrimaryKey(Integer id);

    int insert(AeUserFollowWith record);

    int insertSelective(AeUserFollowWith record);

    AeUserFollowWith selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AeUserFollowWith record);

    int updateByPrimaryKey(AeUserFollowWith record);
}
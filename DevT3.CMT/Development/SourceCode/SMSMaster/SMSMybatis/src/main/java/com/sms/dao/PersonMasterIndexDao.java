package com.sms.dao;

import java.util.List;

import com.sms.model.PersonMasterIndex;

public interface PersonMasterIndexDao {
    int deleteByPrimaryKey(String identityNo);

    int insert(PersonMasterIndex record);

    int insertSelective(PersonMasterIndex record);

    PersonMasterIndex selectByPrimaryKey(String identityNo);

    int updateByPrimaryKeySelective(PersonMasterIndex record);

    int updateByPrimaryKey(PersonMasterIndex record);
    
    List<PersonMasterIndex> getAllPersonMasterIndex();

	String getContactMobileByIdentityNo(String identityNo);

	String getMobileNumberByIdentityNo(String identityNo);
}
package com.sms.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.sms.model.EvaluationRecord;

public interface EvaluationRecordDao {
    int deleteByPrimaryKey(Integer recordId);

    int insert(EvaluationRecord record);

    int insertSelective(EvaluationRecord record);

    EvaluationRecord selectByPrimaryKey(Integer recordId);

    int updateByPrimaryKeySelective(EvaluationRecord record);

    int updateByPrimaryKey(EvaluationRecord record);
    
    List<EvaluationRecord> getAll();
    
    int getNumOfHasSendMsg(@SuppressWarnings("rawtypes") Map map);

	Date getSendDateByIdentityNo(String identityNo);

	int getTotalrecord();

	List<EvaluationRecord> getAllPageItems(int startindex, int pagesize);

	Integer getCountUnaudited();

	List<EvaluationRecord> getUnauditedPageItems(int startindex, int pagesize);
  
}
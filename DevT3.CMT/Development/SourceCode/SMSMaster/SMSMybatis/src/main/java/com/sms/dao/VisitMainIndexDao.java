package com.sms.dao;

import java.util.List;
import java.util.Map;

import com.sms.model.VisitMainIndex;

public interface VisitMainIndexDao {
    int deleteByPrimaryKey(Long visitId);

    int insert(VisitMainIndex record);

    int insertSelective(VisitMainIndex record);

    VisitMainIndex selectByPrimaryKey(Long visitId);

    int updateByPrimaryKeySelective(VisitMainIndex record);

    int updateByPrimaryKey(VisitMainIndex record);
    
	List<VisitMainIndex> getVisitMainIndexs(@SuppressWarnings("rawtypes") Map map);
	
	List<VisitMainIndex> getAll();
}
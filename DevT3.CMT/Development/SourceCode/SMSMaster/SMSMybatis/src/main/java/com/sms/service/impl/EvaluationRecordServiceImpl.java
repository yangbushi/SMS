package com.sms.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.enums.EnumVisitType;
import com.sms.model.EvaluationRecord;
import com.sms.model.Page;
import com.sms.service.EvaluationRecordService;
import com.sms.util.MybatisConst;
import com.sms.dao.EvaluationRecordDao;

@Service("EvaluationRecordService")
public class EvaluationRecordServiceImpl implements EvaluationRecordService {
	private static final Logger logger = Logger
			.getLogger(EvaluationRecordServiceImpl.class);
	
	@Autowired
	private EvaluationRecordDao evaluationRecordDao;
	
	@SuppressWarnings("unused")
	private static MybatisConst mybatisConst = new MybatisConst();
	

	@SuppressWarnings("unchecked")
	@Override
	public int getNumOfHasSendMsg(Date startCheckDateTime,
			Date endCheckDateTime, int planId, EnumVisitType[] enumVisitTypes) {
		String[] type = new String[]{"-1","-1","-1","-1","-1"};
		@SuppressWarnings("rawtypes")
		Map map = new HashMap();

		for(int i = 0;i < enumVisitTypes.length;i++){
			type[i] =  enumVisitTypes[i].getValue();
		}
		int countResult = 0;
		map.put("startCheckDateTime", startCheckDateTime);
		map.put("endCheckDateTime", endCheckDateTime);
		map.put("planId", planId);
		map.put("type", type);
		try{
			countResult = evaluationRecordDao.getNumOfHasSendMsg(map);
		}catch(Exception e){
			logger.error("Error in EvaluationRecordServiceImpl->getNumOfHasSendMsg"+e.toString());
			countResult = MybatisConst.RETURN_RESULT_FAIL;
		}
		return countResult;
	}

	@Override
	public int insert(EvaluationRecord evaluationRecord) {
		int insertResult = 0;
		try{
			insertResult = evaluationRecordDao.insert(evaluationRecord);
		}catch(Exception e){
			logger.error(e.toString());
			return MybatisConst.RETURN_RESULT_FAIL;
		}
		return insertResult;
	}

	@Override
	public Page getAllPageData(String pagenum, String url) {
		int totalrecord=evaluationRecordDao.getTotalrecord();
        if(pagenum==null){
            //用户访问第一页
            Page page =new Page(totalrecord, 1);
            List<EvaluationRecord> list =evaluationRecordDao.getAllPageItems(page.getStartindex(), page.getPagesize());
            page.setUrl(url);
            page.setList(list);
            return page;
            
        }else{
            //用户指定访问页码
            Page page =new Page(totalrecord, Integer.parseInt(pagenum));
            List<EvaluationRecord> list=evaluationRecordDao.getAllPageItems(page.getStartindex(), page.getPagesize());
            page.setUrl(url);
            page.setList(list);
            return page;
            
        }
	}

	@Override
	public Integer getCountUnaudited() {
		Integer count = 0;
		try{
			count = evaluationRecordDao.getCountUnaudited();
		}catch(Exception e){
			logger.error(e.toString());
			return null;
		}
		return count;
	}

	@Override
	public Page getUnauditedPageData(String pagenum, String url) {
		int totalrecord=evaluationRecordDao.getTotalrecord();
        if(pagenum==null){
            //用户访问第一页
            Page page =new Page(totalrecord, 1);
            List<EvaluationRecord> list =evaluationRecordDao.getUnauditedPageItems(page.getStartindex(), page.getPagesize());
            page.setUrl(url);
            page.setList(list);
            return page;
            
        }else{
            //用户指定访问页码
            Page page =new Page(totalrecord, Integer.parseInt(pagenum));
            List<EvaluationRecord> list=evaluationRecordDao.getUnauditedPageItems(page.getStartindex(), page.getPagesize());
            page.setUrl(url);
            page.setList(list);
            return page;
            
        }
	}


	
}

package com.sms.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.sms.model.EvaluationPlan;
import com.sms.model.VisitMainIndex;

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class VisitMainIndexServiceTest {
	private static final Logger logger = Logger
			.getLogger(VisitMainIndexServiceTest.class);
	
	@Autowired
	private VisitMainIndexService visitMainIndexService;
	
	@Test
	public void testGetVisitMainIndexs() throws ParseException{
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date startCheckDateTime = dateFormat.parse("2015-11-23 17:00:00");
		Date endCheckDateTime = dateFormat.parse("2015-11-23 17:59:59");
		Date currentDateTime = dateFormat.parse("2015-11-23 17:13:36");
		
		EvaluationPlan evaluationPlan = new EvaluationPlan();
		evaluationPlan.setEvaluateOrgCode("123");
		
		try{
			List<VisitMainIndex> list = visitMainIndexService.getVisitMainIndexs(evaluationPlan, startCheckDateTime, endCheckDateTime, currentDateTime, 5, 10);
			logger.info(JSON.toJSONStringWithDateFormat(list,"yyyy-MM-dd HH:mm:ss"));
			for (int i = 0;i < list.size();i++){
				logger.info(list.get(i).getPersonMasterIndex().getMobileNumber());
			}
		}catch(Exception e){
			logger.error(e.toString());
		}
	}
	
	//@Test
	public void testGetAll(){
		try{
			logger.info(JSON.toJSONStringWithDateFormat(visitMainIndexService.getAll(),
					"yyyy-MM-dd HH:mm:ss"));
		}catch(Exception e){
			logger.error(e.toString());
		}
	}
	
	//@Test
	public void testGetLimitDaysNoRepeatVisit(){
		List<VisitMainIndex> list = visitMainIndexService.getAll();
		Date currentDateTime = new Date();
		logger.info(JSON.toJSONStringWithDateFormat(visitMainIndexService.getLimitDaysNoRepeatVisit(list, currentDateTime, 7),
				"yyyy-MM-dd HH:mm:ss"));
	}
}

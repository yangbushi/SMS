package com.sms.dao;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.sms.dao.EvaluationRecordDao;
import com.sms.model.EvaluationRecord;
import com.sms.service.EvaluationPlanServiceTest;

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class EvaluationRecordDaoTest {
	private static final Logger logger = Logger
			.getLogger(EvaluationPlanServiceTest.class);
	@Autowired
	private EvaluationRecordDao evaluationPlanDao;
	
	@Test
	public void testFindAll() {
		List<EvaluationRecord> list = evaluationPlanDao.getAll();
		logger.info(JSON
				.toJSONStringWithDateFormat(list, "yyyy-MM-dd HH:mm:ss"));
	}
	
	@SuppressWarnings("deprecation")
	//@Test
	public void insert(){
		EvaluationRecord evaluationRecord = new EvaluationRecord();
		//DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date currentDate = new Date();
		//logger.info(currentDate);
		for (int i = 0;i < 5;i++){
			evaluationRecord.setPlanId(i);
			evaluationRecord.setVisitType("1");
			currentDate.setHours(currentDate.getHours() + 2);
			evaluationRecord.setSendDateTime(currentDate);
			evaluationPlanDao.insert(evaluationRecord);
		}
		for (int i = 10;i < 15;i++){
			evaluationRecord.setPlanId(i);
			evaluationRecord.setVisitType("2");
			currentDate.setHours(currentDate.getHours() + 2);
			evaluationRecord.setSendDateTime(currentDate);
			evaluationPlanDao.insert(evaluationRecord);
		}
		for (int i = 20;i < 25;i++){
			evaluationRecord.setPlanId(i);
			evaluationRecord.setVisitType("3");
			currentDate.setHours(currentDate.getHours() + 2);
			evaluationRecord.setSendDateTime(currentDate);
			evaluationPlanDao.insert(evaluationRecord);
		}
		for (int i = 30;i < 35;i++){
			evaluationRecord.setPlanId(i);
			evaluationRecord.setVisitType("4");
			currentDate.setHours(currentDate.getHours() + 2);
			evaluationRecord.setSendDateTime(currentDate);
			evaluationPlanDao.insert(evaluationRecord);
		}
	}
	
	//@Test
	public void deleteAll(){
		for (int i = 0;i < 40;i++)
			evaluationPlanDao.deleteByPrimaryKey(i);
	}
}

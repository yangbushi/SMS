package com.sms.dao;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sms.model.AeReturnVisitHistory;

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class AeReturnVisitHistoryDaoTest {
	private static final Logger logger = Logger
			.getLogger(AeReturnVisitHistoryDaoTest.class);
	@Autowired
	private AeReturnVisitHistoryDao aeReturnVisitHistoryDao;
	
	@Test
	public void testInsert(){
		AeReturnVisitHistory aeReturnVisitHistory = new AeReturnVisitHistory();
		aeReturnVisitHistory.setId(1);
		try{
			logger.info(aeReturnVisitHistoryDao.insert(aeReturnVisitHistory));
		}catch(Exception e){
			logger.error(e.toString());
		}finally{}
	}
}

package com.sms.dao;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sms.model.AeHandleHistory;

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class AeHandleHistoryDaoTest {
	private static final Logger logger = Logger
			.getLogger(AeHandleHistoryDaoTest.class);
	@Autowired
	private AeHandleHistoryDao aeHandleHistoryDao;
	
	@Test
	public void testInsert(){
		AeHandleHistory aeHandleHistory = new AeHandleHistory();
		aeHandleHistory.setId(1);
		try{
			logger.info(aeHandleHistoryDao.insert(aeHandleHistory));
		}catch(Exception e){
			logger.error(e.toString());
		}finally{}
	}
}

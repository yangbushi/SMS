package com.sms.dao;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sms.model.SendQueue;

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class SendQueueDaoTest {
	private static final Logger logger = Logger
			.getLogger(SendQueueDaoTest.class);
	@Autowired
	private SendQueueDao sendQueueDao;
	
	@Test
	public void testInsert(){
		SendQueue sendQueue = new SendQueue();
		sendQueue.setId(2);
		sendQueue.setPlanId(2);
		try{
			logger.info(sendQueueDao.insert(sendQueue));
		}catch(Exception e){
			logger.error(e.toString());
		}finally{}
		
	}
}

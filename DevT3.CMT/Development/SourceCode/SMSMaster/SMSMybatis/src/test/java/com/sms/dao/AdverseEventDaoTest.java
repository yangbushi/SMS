package com.sms.dao;

import java.util.Date;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sms.model.AdverseEvent;

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class AdverseEventDaoTest {
	private static final Logger logger = Logger
			.getLogger(AdverseEventDaoTest.class);
	@Autowired
	private AdverseEventDao adverseEventDao;
	
	@Test
	public void testInsert(){
		AdverseEvent adverseEvent = new AdverseEvent();
		adverseEvent.setEventId(1);
		adverseEvent.setEventSourceCode("1");
		adverseEvent.setEventSourceName("Wrong Number");
		adverseEvent.setName("abing");
		adverseEvent.setCalledFromNum("87612345678");
		adverseEvent.setReflactContent("aha");
		adverseEvent.setReflactDateTime(new Date());
		try{
			logger.info(adverseEventDao.insert(adverseEvent));
		}catch(Exception e){
			logger.error(e.toString());
		}finally{}
		
	}
}

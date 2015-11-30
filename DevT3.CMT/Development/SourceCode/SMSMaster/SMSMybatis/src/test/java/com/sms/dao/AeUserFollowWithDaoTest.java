package com.sms.dao;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sms.model.AeUserFollowWith;

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class AeUserFollowWithDaoTest {
	private static final Logger logger = Logger
			.getLogger(AeUserFollowWithDaoTest.class);
	@Autowired
	private AeUserFollowWithDao aeUserFollowWithDao;
	
	@Test
	public void testInsert(){
		AeUserFollowWith aeUserFollowWith = new AeUserFollowWith();
		aeUserFollowWith.setId(1);
		try{
			logger.info(aeUserFollowWithDao.insert(aeUserFollowWith));
		}catch(Exception e){
			logger.error(e.toString());
		}finally{}
	}
}

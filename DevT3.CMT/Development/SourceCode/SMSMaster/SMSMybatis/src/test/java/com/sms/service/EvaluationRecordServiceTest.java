package com.sms.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sms.enums.EnumVisitType;

@RunWith(SpringJUnit4ClassRunner.class)
// = extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml" })
public class EvaluationRecordServiceTest {
	private static final Logger logger = Logger
			.getLogger(EvaluationRecordServiceTest.class);
	@Autowired
	private EvaluationRecordService evaluationRecordService;

	@Test
	public void testGetNumOfHasSendMsg() throws ParseException {
		try {
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date startCheckDateTime = dateFormat.parse("2015-11-20 10:44:36");
			Date endCheckDateTime = dateFormat.parse("2015-11-21 10:44:36");
			EnumVisitType[] enumVisitTypes = new EnumVisitType[] {
					EnumVisitType.InHospital, EnumVisitType.NormalClinic };
			logger.info(evaluationRecordService.getNumOfHasSendMsg(
					startCheckDateTime, endCheckDateTime, 4, enumVisitTypes));
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}
}

package com.sms.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Random;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.sms.model.HealthcareOrganization;

@RunWith(SpringJUnit4ClassRunner.class)
// = extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml" })
public class HealthcareOrganizationServiceTest {
	private static final Logger logger = Logger
			.getLogger(EvaluationPlanServiceTest.class);

	@Autowired
	HealthcareOrganizationService healthcareOrganizationService;

//	@Test
	public void Insert() {
		try {
			int max = 999999999;
			int min = 0;
			Random random = new Random();
			int nCode = random.nextInt(max) % (max - min + 1) + min;

			HealthcareOrganization healthcareOrganization = new HealthcareOrganization();
			healthcareOrganization.setHcoName("杭州" + Integer.toString(nCode)
					+ "院");
			healthcareOrganization.setDivisionId(1);
			healthcareOrganization.setHcoType("市属");
			healthcareOrganization.setHospitalClass("甲");
			healthcareOrganization.setHcoCode(Integer.toString(nCode));
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			healthcareOrganization.setUpdateTime(dateFormat.parse("2015-11-24 12:55:55"));
			healthcareOrganizationService.insret(healthcareOrganization);
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}

	@Test
	public void GetAll() {
		try {
			List<HealthcareOrganization> lst = healthcareOrganizationService
					.getAll();
			logger.info(JSON.toJSONStringWithDateFormat(lst,
					"yyyy-MM-dd HH:mm:ss"));
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}
	
	@Test
	public void GetAllOnlyCodeName()
	{
		try {
			List<HealthcareOrganization> lst = healthcareOrganizationService
					.getAllOnlyHcoCodeName();
			logger.info(JSON.toJSONStringWithDateFormat(lst,
					"yyyy-MM-dd HH:mm:ss"));
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}
}

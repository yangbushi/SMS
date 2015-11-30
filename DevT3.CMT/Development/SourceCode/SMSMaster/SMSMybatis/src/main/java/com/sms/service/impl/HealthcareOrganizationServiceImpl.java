package com.sms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.HealthcareOrganizationDao;
import com.sms.model.HealthcareOrganization;
import com.sms.service.HealthcareOrganizationService;

@Service("HealthcareOrganizationService")
public class HealthcareOrganizationServiceImpl implements
		HealthcareOrganizationService {
	private static final Logger logger = Logger
			.getLogger(PersonMasterIndexServiceImpl.class);

	@Autowired
	private HealthcareOrganizationDao healthcareOrganizationDao;

	@Override
	public int insret(HealthcareOrganization record) {
		try {
			return healthcareOrganizationDao.insert(record);
		} catch (Exception e) {
			logger.error(e.toString());
			return -1;
		}
	}

	@Override
	public List<HealthcareOrganization> getAll() {
		try {
			return healthcareOrganizationDao.getAll();
		} catch (Exception e) {
			logger.error(e.toString());
			return null;
		}
	}
	
	@Override
	public List<HealthcareOrganization> getAllOnlyHcoCodeName()
	{
		try {
			return healthcareOrganizationDao.getAllOnlyHcoCodeName();
		} catch (Exception e) {
			logger.error(e.toString());
			return null;
		}
	}

	@Override
	public List<HealthcareOrganization> getAllOnlyHcoCodeNameByHcoType(
			String hcoType) {
		List<HealthcareOrganization> list = new ArrayList<HealthcareOrganization>();
		try{
			list = healthcareOrganizationDao.getAllOnlyHcoCodeNameByHcoType(hcoType);
		}catch(Exception e){
			logger.error(e.toString());
			return null;
		}
		return list;
	}
}

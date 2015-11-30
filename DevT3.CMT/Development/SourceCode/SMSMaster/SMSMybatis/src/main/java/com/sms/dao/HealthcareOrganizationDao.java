package com.sms.dao;

import java.util.List;

import com.sms.model.HealthcareOrganization;

public interface HealthcareOrganizationDao {
	int deleteByPrimaryKey(Integer hcoId);

	int insert(HealthcareOrganization record);

	int insertSelective(HealthcareOrganization record);

	HealthcareOrganization selectByPrimaryKey(Integer hcoId);

	int updateByPrimaryKeySelective(HealthcareOrganization record);

	int updateByPrimaryKey(HealthcareOrganization record);

	List<HealthcareOrganization> getAll();
	
	List<HealthcareOrganization> getAllOnlyHcoCodeName();

	List<HealthcareOrganization> getAllOnlyHcoCodeNameByHcoType(String hcoType);
}
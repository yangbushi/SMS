package com.sms.service;

import java.util.List;

import com.sms.model.HealthcareOrganization;

public interface HealthcareOrganizationService {
	int insret(HealthcareOrganization record);

	List<HealthcareOrganization> getAll();
	
	List<HealthcareOrganization> getAllOnlyHcoCodeName();
	
	List<HealthcareOrganization> getAllOnlyHcoCodeNameByHcoType(String hcoType);
}

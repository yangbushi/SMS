package com.sms.model;

import java.util.Date;

public class HealthcareOrganization {
	private Integer hcoId;

	private String hcoName;

	private Integer divisionId;

	private String hcoType;

	private String hospitalClass;

	private String hcoCode;

	private String contactName;

	private String contactTel;

	private String address;

	private String responsiblePerson;

	private String remarks;

	private Date updateTime;

	public Integer getHcoId() {
		return hcoId;
	}

	public void setHcoId(Integer hcoId) {
		this.hcoId = hcoId;
	}

	public String getHcoName() {
		return hcoName;
	}

	public void setHcoName(String hcoName) {
		this.hcoName = hcoName == null ? null : hcoName.trim();
	}

	public Integer getDivisionId() {
		return divisionId;
	}

	public void setDivisionId(Integer divisionId) {
		this.divisionId = divisionId;
	}

	public String getHcoType() {
		return hcoType;
	}

	public void setHcoType(String hcoType) {
		this.hcoType = hcoType == null ? null : hcoType.trim();
	}

	public String getHospitalClass() {
		return hospitalClass;
	}

	public void setHospitalClass(String hospitalClass) {
		this.hospitalClass = hospitalClass == null ? null : hospitalClass
				.trim();
	}

	public String getHcoCode() {
		return hcoCode;
	}

	public void setHcoCode(String hcoCode) {
		this.hcoCode = hcoCode == null ? null : hcoCode.trim();
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName == null ? null : contactName.trim();
	}

	public String getContactTel() {
		return contactTel;
	}

	public void setContactTel(String contactTel) {
		this.contactTel = contactTel == null ? null : contactTel.trim();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	public String getResponsiblePerson() {
		return responsiblePerson;
	}

	public void setResponsiblePerson(String responsiblePerson) {
		this.responsiblePerson = responsiblePerson == null ? null
				: responsiblePerson.trim();
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks == null ? null : remarks.trim();
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
}
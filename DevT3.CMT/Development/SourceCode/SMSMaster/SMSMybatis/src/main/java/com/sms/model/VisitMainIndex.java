package com.sms.model;

import java.util.Date;

import com.sms.enums.EnumVisitType;

/**
 * 
 * 项目名称：SMSMybatis  
 * 类全名:com.sms.model.VisitMainIndex    
 * 类描述：   就诊主索引 
 * 创建人：DingYuanyuan  
 * 创建时间：2015-11-19 上午11:16:30    
 * 修改备注：
 */
public class VisitMainIndex {
	private Long visitId;

	private String identityNo;

	private String name;

	private String sex;

	private Date dateOfBirth;

	private Date visitStartDateTime;

	private Date visitEndDateTime;

	private String visitType;

	private String visitDescription;

	private String visitHcoCode;

	private String visitHcoName;

	private String hisVisitId;

	private String hisDeptCode;

	private String hisDeptName;

	private String insuranceType;

	private String payType;

	private String doctorCode;

	private String doctorName;

	private String doctorTel;

	private String doctorIdentityCardNum;

	private Date archiveDate;

	private Integer uploadFlag;

	private Integer delSign;

	private String delUserCode;

	private String delUserName;

	private Date delDatetime;
	
	private PersonMasterIndex personMasterIndex;

	public Long getVisitId() {
		return visitId;
	}

	public void setVisitId(Long visitId) {
		this.visitId = visitId;
	}

	public String getIdentityNo() {
		return identityNo;
	}

	public void setIdentityNo(String identityNo) {
		this.identityNo = identityNo == null ? null : identityNo.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex == null ? null : sex.trim();
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getVisitStartDateTime() {
		return visitStartDateTime;
	}

	public void setVisitStartDateTime(Date visitStartDateTime) {
		this.visitStartDateTime = visitStartDateTime;
	}

	public Date getVisitEndDateTime() {
		return visitEndDateTime;
	}

	public void setVisitEndDateTime(Date visitEndDateTime) {
		this.visitEndDateTime = visitEndDateTime;
	}

	public String getVisitType() {
		return visitType;
	}

    public EnumVisitType getEnumVisitType(){
    	 return EnumVisitType.getEnum(visitType);
	 }

	public void setVisitType(String visitType) {
		this.visitType = visitType == null ? null : visitType.trim();
	}

	// public void setEnumVisitType(EnumVisitType visitType) {
	// this.visitType = visitType == null ? null : visitType.getValue();
	// }
	
	public String getVisitDescription() {
		return visitDescription;
	}

	public void setVisitDescription(String visitDescription) {
		this.visitDescription = visitDescription == null ? null
				: visitDescription.trim();
	}

	public String getVisitHcoCode() {
		return visitHcoCode;
	}

	public void setVisitHcoCode(String visitHcoCode) {
		this.visitHcoCode = visitHcoCode == null ? null : visitHcoCode.trim();
	}

	public String getVisitHcoName() {
		return visitHcoName;
	}

	public void setVisitHcoName(String visitHcoName) {
		this.visitHcoName = visitHcoName == null ? null : visitHcoName.trim();
	}

	public String getHisVisitId() {
		return hisVisitId;
	}

	public void setHisVisitId(String hisVisitId) {
		this.hisVisitId = hisVisitId == null ? null : hisVisitId.trim();
	}

	public String getHisDeptCode() {
		return hisDeptCode;
	}

	public void setHisDeptCode(String hisDeptCode) {
		this.hisDeptCode = hisDeptCode == null ? null : hisDeptCode.trim();
	}

	public String getHisDeptName() {
		return hisDeptName;
	}

	public void setHisDeptName(String hisDeptName) {
		this.hisDeptName = hisDeptName == null ? null : hisDeptName.trim();
	}

	public String getInsuranceType() {
		return insuranceType;
	}

	public void setInsuranceType(String insuranceType) {
		this.insuranceType = insuranceType == null ? null : insuranceType
				.trim();
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType == null ? null : payType.trim();
	}

	public String getDoctorCode() {
		return doctorCode;
	}

	public void setDoctorCode(String doctorCode) {
		this.doctorCode = doctorCode == null ? null : doctorCode.trim();
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName == null ? null : doctorName.trim();
	}

	public String getDoctorTel() {
		return doctorTel;
	}

	public void setDoctorTel(String doctorTel) {
		this.doctorTel = doctorTel == null ? null : doctorTel.trim();
	}

	public String getDoctorIdentityCardNum() {
		return doctorIdentityCardNum;
	}

	public void setDoctorIdentityCardNum(String doctorIdentityCardNum) {
		this.doctorIdentityCardNum = doctorIdentityCardNum == null ? null
				: doctorIdentityCardNum.trim();
	}

	public Date getArchiveDate() {
		return archiveDate;
	}

	public void setArchiveDate(Date archiveDate) {
		this.archiveDate = archiveDate;
	}

	public Integer getUploadFlag() {
		return uploadFlag;
	}

	public void setUploadFlag(Integer uploadFlag) {
		this.uploadFlag = uploadFlag;
	}

	public Integer getDelSign() {
		return delSign;
	}

	public void setDelSign(Integer delSign) {
		this.delSign = delSign;
	}

	public String getDelUserCode() {
		return delUserCode;
	}

	public void setDelUserCode(String delUserCode) {
		this.delUserCode = delUserCode == null ? null : delUserCode.trim();
	}

	public String getDelUserName() {
		return delUserName;
	}

	public void setDelUserName(String delUserName) {
		this.delUserName = delUserName == null ? null : delUserName.trim();
	}

	public Date getDelDatetime() {
		return delDatetime;
	}

	public void setDelDatetime(Date delDatetime) {
		this.delDatetime = delDatetime;
	}

	public PersonMasterIndex getPersonMasterIndex() {
		return personMasterIndex;
	}

	public void setPersonMasterIndex(PersonMasterIndex personMasterIndex) {
		this.personMasterIndex = personMasterIndex;
	}
}
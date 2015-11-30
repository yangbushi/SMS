package com.sms.model;

import java.math.BigDecimal;
import java.util.Date;

public class PersonMasterIndex {
    private String identityNo;

    private String createHcoCode;

    private String createHcoName;

    private String createUserName;

    private Date createDateTime;

    private Integer status;

    private Integer creditFlag;

    private BigDecimal creditAmmount;

    private String name;

    private String namePinyin;

    private String sex;

    private Date dateOfBirth;

    private String country;

    private String nation;

    private String marriageStatusName;

    private String marriageStatusCode;

    private String educationLevelCode;

    private String educationLevelName;

    private String politicalStatusCode;

    private String politicalStatusName;

    private String jobTypeCode;

    private String jobStatusCode;

    private String jobTypeName;

    private String jobStatusName;

    private String phoneNumber;

    private String mobileNumber;

    private String contactName;

    private String contactPhone;

    private String contactMobile;

    private String nativePlace;

    private String birthPlace;

    private String homeAddress;

    private String bloodTypeAbo;

    private String bloodTypeRh;

    private Integer childBirth;

    private Integer vaccinationHistory;

    private Integer allergyHistory;

    private String allergyDesc;

    private Integer pastHistory;

    private String pastDesc;

    private Integer geneticHistory;

    private Integer ivingHabits;

    private Integer hypertension;

    private String hypertensionDesc;

    private Integer tumor;

    private String tumorDesc;

    private Integer asthma;

    private Integer heartDease;

    private Integer cardioCerebrovascularDisease;

    private Integer epilepsy;

    private Integer psychosis;

    private String psychosisDesc;

    private Integer coagulopathy;

    private Integer diabetes;

    private String diabetesDesc;

    private Integer glaucoma;

    private Integer dialysis;

    private Integer transplant;

    private Integer organDeficiency;

    private Integer removableProsthesis;

    private Integer pacemaker;

    private String medicalWarnning;

    private String primaryHcoCode;

    private String primaryHcoName;

    private String updateUserName;

    private Date updateDateTime;

    public String getIdentityNo() {
        return identityNo;
    }

    public void setIdentityNo(String identityNo) {
        this.identityNo = identityNo == null ? null : identityNo.trim();
    }

    public String getCreateHcoCode() {
        return createHcoCode;
    }

    public void setCreateHcoCode(String createHcoCode) {
        this.createHcoCode = createHcoCode == null ? null : createHcoCode.trim();
    }

    public String getCreateHcoName() {
        return createHcoName;
    }

    public void setCreateHcoName(String createHcoName) {
        this.createHcoName = createHcoName == null ? null : createHcoName.trim();
    }

    public String getCreateUserName() {
        return createUserName;
    }

    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName == null ? null : createUserName.trim();
    }

    public Date getCreateDateTime() {
        return createDateTime;
    }

    public void setCreateDateTime(Date createDateTime) {
        this.createDateTime = createDateTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getCreditFlag() {
        return creditFlag;
    }

    public void setCreditFlag(Integer creditFlag) {
        this.creditFlag = creditFlag;
    }

    public BigDecimal getCreditAmmount() {
        return creditAmmount;
    }

    public void setCreditAmmount(BigDecimal creditAmmount) {
        this.creditAmmount = creditAmmount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNamePinyin() {
        return namePinyin;
    }

    public void setNamePinyin(String namePinyin) {
        this.namePinyin = namePinyin == null ? null : namePinyin.trim();
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getMarriageStatusName() {
        return marriageStatusName;
    }

    public void setMarriageStatusName(String marriageStatusName) {
        this.marriageStatusName = marriageStatusName == null ? null : marriageStatusName.trim();
    }

    public String getMarriageStatusCode() {
        return marriageStatusCode;
    }

    public void setMarriageStatusCode(String marriageStatusCode) {
        this.marriageStatusCode = marriageStatusCode == null ? null : marriageStatusCode.trim();
    }

    public String getEducationLevelCode() {
        return educationLevelCode;
    }

    public void setEducationLevelCode(String educationLevelCode) {
        this.educationLevelCode = educationLevelCode == null ? null : educationLevelCode.trim();
    }

    public String getEducationLevelName() {
        return educationLevelName;
    }

    public void setEducationLevelName(String educationLevelName) {
        this.educationLevelName = educationLevelName == null ? null : educationLevelName.trim();
    }

    public String getPoliticalStatusCode() {
        return politicalStatusCode;
    }

    public void setPoliticalStatusCode(String politicalStatusCode) {
        this.politicalStatusCode = politicalStatusCode == null ? null : politicalStatusCode.trim();
    }

    public String getPoliticalStatusName() {
        return politicalStatusName;
    }

    public void setPoliticalStatusName(String politicalStatusName) {
        this.politicalStatusName = politicalStatusName == null ? null : politicalStatusName.trim();
    }

    public String getJobTypeCode() {
        return jobTypeCode;
    }

    public void setJobTypeCode(String jobTypeCode) {
        this.jobTypeCode = jobTypeCode == null ? null : jobTypeCode.trim();
    }

    public String getJobStatusCode() {
        return jobStatusCode;
    }

    public void setJobStatusCode(String jobStatusCode) {
        this.jobStatusCode = jobStatusCode == null ? null : jobStatusCode.trim();
    }

    public String getJobTypeName() {
        return jobTypeName;
    }

    public void setJobTypeName(String jobTypeName) {
        this.jobTypeName = jobTypeName == null ? null : jobTypeName.trim();
    }

    public String getJobStatusName() {
        return jobStatusName;
    }

    public void setJobStatusName(String jobStatusName) {
        this.jobStatusName = jobStatusName == null ? null : jobStatusName.trim();
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber == null ? null : mobileNumber.trim();
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName == null ? null : contactName.trim();
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone == null ? null : contactPhone.trim();
    }

    public String getContactMobile() {
        return contactMobile;
    }

    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile == null ? null : contactMobile.trim();
    }

    public String getNativePlace() {
        return nativePlace;
    }

    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace == null ? null : nativePlace.trim();
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace == null ? null : birthPlace.trim();
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress == null ? null : homeAddress.trim();
    }

    public String getBloodTypeAbo() {
        return bloodTypeAbo;
    }

    public void setBloodTypeAbo(String bloodTypeAbo) {
        this.bloodTypeAbo = bloodTypeAbo == null ? null : bloodTypeAbo.trim();
    }

    public String getBloodTypeRh() {
        return bloodTypeRh;
    }

    public void setBloodTypeRh(String bloodTypeRh) {
        this.bloodTypeRh = bloodTypeRh == null ? null : bloodTypeRh.trim();
    }

    public Integer getChildBirth() {
        return childBirth;
    }

    public void setChildBirth(Integer childBirth) {
        this.childBirth = childBirth;
    }

    public Integer getVaccinationHistory() {
        return vaccinationHistory;
    }

    public void setVaccinationHistory(Integer vaccinationHistory) {
        this.vaccinationHistory = vaccinationHistory;
    }

    public Integer getAllergyHistory() {
        return allergyHistory;
    }

    public void setAllergyHistory(Integer allergyHistory) {
        this.allergyHistory = allergyHistory;
    }

    public String getAllergyDesc() {
        return allergyDesc;
    }

    public void setAllergyDesc(String allergyDesc) {
        this.allergyDesc = allergyDesc == null ? null : allergyDesc.trim();
    }

    public Integer getPastHistory() {
        return pastHistory;
    }

    public void setPastHistory(Integer pastHistory) {
        this.pastHistory = pastHistory;
    }

    public String getPastDesc() {
        return pastDesc;
    }

    public void setPastDesc(String pastDesc) {
        this.pastDesc = pastDesc == null ? null : pastDesc.trim();
    }

    public Integer getGeneticHistory() {
        return geneticHistory;
    }

    public void setGeneticHistory(Integer geneticHistory) {
        this.geneticHistory = geneticHistory;
    }

    public Integer getIvingHabits() {
        return ivingHabits;
    }

    public void setIvingHabits(Integer ivingHabits) {
        this.ivingHabits = ivingHabits;
    }

    public Integer getHypertension() {
        return hypertension;
    }

    public void setHypertension(Integer hypertension) {
        this.hypertension = hypertension;
    }

    public String getHypertensionDesc() {
        return hypertensionDesc;
    }

    public void setHypertensionDesc(String hypertensionDesc) {
        this.hypertensionDesc = hypertensionDesc == null ? null : hypertensionDesc.trim();
    }

    public Integer getTumor() {
        return tumor;
    }

    public void setTumor(Integer tumor) {
        this.tumor = tumor;
    }

    public String getTumorDesc() {
        return tumorDesc;
    }

    public void setTumorDesc(String tumorDesc) {
        this.tumorDesc = tumorDesc == null ? null : tumorDesc.trim();
    }

    public Integer getAsthma() {
        return asthma;
    }

    public void setAsthma(Integer asthma) {
        this.asthma = asthma;
    }

    public Integer getHeartDease() {
        return heartDease;
    }

    public void setHeartDease(Integer heartDease) {
        this.heartDease = heartDease;
    }

    public Integer getCardioCerebrovascularDisease() {
        return cardioCerebrovascularDisease;
    }

    public void setCardioCerebrovascularDisease(Integer cardioCerebrovascularDisease) {
        this.cardioCerebrovascularDisease = cardioCerebrovascularDisease;
    }

    public Integer getEpilepsy() {
        return epilepsy;
    }

    public void setEpilepsy(Integer epilepsy) {
        this.epilepsy = epilepsy;
    }

    public Integer getPsychosis() {
        return psychosis;
    }

    public void setPsychosis(Integer psychosis) {
        this.psychosis = psychosis;
    }

    public String getPsychosisDesc() {
        return psychosisDesc;
    }

    public void setPsychosisDesc(String psychosisDesc) {
        this.psychosisDesc = psychosisDesc == null ? null : psychosisDesc.trim();
    }

    public Integer getCoagulopathy() {
        return coagulopathy;
    }

    public void setCoagulopathy(Integer coagulopathy) {
        this.coagulopathy = coagulopathy;
    }

    public Integer getDiabetes() {
        return diabetes;
    }

    public void setDiabetes(Integer diabetes) {
        this.diabetes = diabetes;
    }

    public String getDiabetesDesc() {
        return diabetesDesc;
    }

    public void setDiabetesDesc(String diabetesDesc) {
        this.diabetesDesc = diabetesDesc == null ? null : diabetesDesc.trim();
    }

    public Integer getGlaucoma() {
        return glaucoma;
    }

    public void setGlaucoma(Integer glaucoma) {
        this.glaucoma = glaucoma;
    }

    public Integer getDialysis() {
        return dialysis;
    }

    public void setDialysis(Integer dialysis) {
        this.dialysis = dialysis;
    }

    public Integer getTransplant() {
        return transplant;
    }

    public void setTransplant(Integer transplant) {
        this.transplant = transplant;
    }

    public Integer getOrganDeficiency() {
        return organDeficiency;
    }

    public void setOrganDeficiency(Integer organDeficiency) {
        this.organDeficiency = organDeficiency;
    }

    public Integer getRemovableProsthesis() {
        return removableProsthesis;
    }

    public void setRemovableProsthesis(Integer removableProsthesis) {
        this.removableProsthesis = removableProsthesis;
    }

    public Integer getPacemaker() {
        return pacemaker;
    }

    public void setPacemaker(Integer pacemaker) {
        this.pacemaker = pacemaker;
    }

    public String getMedicalWarnning() {
        return medicalWarnning;
    }

    public void setMedicalWarnning(String medicalWarnning) {
        this.medicalWarnning = medicalWarnning == null ? null : medicalWarnning.trim();
    }

    public String getPrimaryHcoCode() {
        return primaryHcoCode;
    }

    public void setPrimaryHcoCode(String primaryHcoCode) {
        this.primaryHcoCode = primaryHcoCode == null ? null : primaryHcoCode.trim();
    }

    public String getPrimaryHcoName() {
        return primaryHcoName;
    }

    public void setPrimaryHcoName(String primaryHcoName) {
        this.primaryHcoName = primaryHcoName == null ? null : primaryHcoName.trim();
    }

    public String getUpdateUserName() {
        return updateUserName;
    }

    public void setUpdateUserName(String updateUserName) {
        this.updateUserName = updateUserName == null ? null : updateUserName.trim();
    }

    public Date getUpdateDateTime() {
        return updateDateTime;
    }

    public void setUpdateDateTime(Date updateDateTime) {
        this.updateDateTime = updateDateTime;
    }
}
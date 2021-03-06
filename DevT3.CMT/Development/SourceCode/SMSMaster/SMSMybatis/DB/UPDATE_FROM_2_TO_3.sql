ALTER TABLE `csr_record` 
ADD COLUMN `SEND_DATE_TIME` DATE NULL  AFTER `SMS_SEND_CONTENT` , 
ADD COLUMN `MANUAL_PROCESSED` INT(1) NULL  AFTER `NEED_MANUAL_PROCESS` , 
ADD COLUMN `PROCESS_ORG_CODE` VARCHAR(30) NULL  AFTER `MANUAL_PROCESSED` , 
ADD COLUMN `PROCESS_ORG_NAME` VARCHAR(70) NULL  AFTER `PROCESS_ORG_CODE` , 
ADD COLUMN `PROCESS_PERSON_ID` VARCHAR(30) NULL  AFTER `PROCESS_ORG_NAME` , 
ADD COLUMN `PROCESS_PERSON_NAME` VARCHAR(30) NULL  AFTER `PROCESS_PERSON_ID` , 
ADD COLUMN `PROCESS_DATE_TIME` DATE NULL  AFTER `PROCESS_PERSON_NAME` 
;

ALTER TABLE `csr_record` 
CHANGE COLUMN `NEED_MANUAL_PROCESS` `IS_SMS_REPLY_CONTENT_VALID` INT(1) NULL  AFTER `REPLY_DATE_TIME` ;
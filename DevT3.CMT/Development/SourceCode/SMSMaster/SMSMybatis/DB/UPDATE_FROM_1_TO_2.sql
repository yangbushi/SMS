ALTER TABLE `csr_plan` ADD COLUMN `CANCEL_PERSON_ID` VARCHAR(30) NULL  AFTER `STATUS` , ADD COLUMN `CANCEL_PERSON_NAME` VARCHAR(30) NULL  AFTER `CANCEL_PERSON_ID` , ADD COLUMN `CANCEL_DATE_TIME` DATE NULL  AFTER `CANCEL_PERSON_NAME` ;
ALTER TABLE `hc_visit_master_index` ADD INDEX `identityno` (`identity_no` ASC) ;

ALTER TABLE `hc_visit_master_index` ADD INDEX `visitendtime` (`VISIT_END_DATE_TIME` ASC) ;

ALTER TABLE `hc_visit_master_index` ADD INDEX `visitHcoCode` (`visit_hco_code` ASC) ;

ALTER TABLE `csr_record` ADD INDEX `identityNo` (`IDENTITY_NO` ASC) ;

ALTER TABLE `csr_record` ADD INDEX `planId` (`PLAN_ID` ASC) ;

ALTER TABLE `csr_record` ADD INDEX `sendDateTime` (`SEND_DATE_TIME` ASC) ;

ALTER TABLE `csr_record` ADD INDEX `visitType` (`VISIT_TYPE` ASC) ;

ALTER TABLE `csr_plan` ADD INDEX `status` (`STATUS` ASC) ;
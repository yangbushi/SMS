CREATE DATABASE  IF NOT EXISTS `smstest` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `smstest`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 172.16.100.131    Database: sms
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `csr_adverse_event`
--

DROP TABLE IF EXISTS `csr_adverse_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_adverse_event` (
  `EVENT_ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_SOURCE_CODE` varchar(10) NOT NULL,
  `EVENT_SOURCE_NAME` varchar(30) NOT NULL,
  `PLAN_ID` int(20) DEFAULT NULL,
  `RECORD_ID` int(20) DEFAULT NULL,
  `IDENTITY_NO` varchar(30) DEFAULT NULL,
  `NAME` varchar(30) NOT NULL,
  `CALLED_FROM_NUM` varchar(20) NOT NULL,
  `MOBILE_PHONE_NUM` varchar(20) DEFAULT NULL,
  `CONTACT_ADDRESS` varchar(70) DEFAULT NULL,
  `VISIT_ID` varchar(50) DEFAULT NULL,
  `VISIT_TYPE` varchar(2) DEFAULT NULL,
  `VISIT_START_DATE_TIME` timestamp NULL DEFAULT NULL,
  `VISIT_ORG_CODE` varchar(30) DEFAULT NULL,
  `VISIT_ORG_NAME` varchar(70) DEFAULT NULL,
  `HIS_DEPT_CODE` varchar(30) DEFAULT NULL,
  `HIS_DEPT_NAME` varchar(70) DEFAULT NULL,
  `DOCTOR_CODE` varchar(30) DEFAULT NULL,
  `DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `REFLACT_CONTENT` varchar(1000) NOT NULL,
  `REFLACT_DATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NEED_SECURITY_PROCESS` int(1) DEFAULT NULL,
  `REFLACT_FOR_CODE` varchar(10) DEFAULT NULL,
  `REFLACT_FOR_NAME` varchar(30) DEFAULT NULL,
  `REFLACT_CONTENT_CLASS_CODE` varchar(10) DEFAULT NULL,
  `REFLACT_CONTENT_CLASS_NAME` varchar(30) DEFAULT NULL,
  `ACCEPT_ORG_CODE` varchar(30) DEFAULT NULL,
  `ACCEPT_ORG_NAME` varchar(70) DEFAULT NULL,
  `ACCEPTOR_ID` varchar(30) DEFAULT NULL,
  `ACCEPTOR_NAME` varchar(30) DEFAULT NULL,
  `ACCEPT_DATE_TIME` timestamp NULL DEFAULT NULL,
  `HANDLE_ORG_CODE` varchar(30) DEFAULT NULL,
  `HANDLE_ORG_NAME` varchar(70) DEFAULT NULL,
  `HANDLE_CLOSING_DATE` timestamp NULL DEFAULT NULL,
  `ASSIGN_ORG_CODE` varchar(30) DEFAULT NULL,
  `ASSIGN_ORG_NAME` varchar(70) DEFAULT NULL,
  `ASSIGN_PERSON_ID` varchar(30) DEFAULT NULL,
  `ASSIGN_PERSON_NAME` varchar(30) DEFAULT NULL,
  `ASSIGN_DATE_TIME` timestamp NULL DEFAULT NULL,
  `HANDLE_RESULT` varchar(1000) DEFAULT NULL,
  `FEEDBACK_RESULT` varchar(1000) DEFAULT NULL,
  `RETURN_VISIT_RESULT` varchar(1000) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`EVENT_ID`),
  UNIQUE KEY `EVENT_ID_UNIQUE` (`EVENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_adverse_event`
--

LOCK TABLES `csr_adverse_event` WRITE;
/*!40000 ALTER TABLE `csr_adverse_event` DISABLE KEYS */;
INSERT INTO `csr_adverse_event` VALUES (1,'1','Wrong Number',NULL,NULL,NULL,'abing','87612345678',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aha','2015-11-24 02:59:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `csr_adverse_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_ae_handle_history`
--

DROP TABLE IF EXISTS `csr_ae_handle_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_ae_handle_history` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(20) DEFAULT NULL,
  `HANDLE_DATE_TIME` timestamp NULL DEFAULT NULL,
  `HANDLE_ORG_CODE` varchar(30) DEFAULT NULL,
  `HANDLE_ORG_NAME` varchar(70) DEFAULT NULL,
  `HANDLE_PERSON_ID` varchar(30) DEFAULT NULL,
  `HANDLE_PERSON_NAME` varchar(30) DEFAULT NULL,
  `HANDLE_RESULT` varchar(1000) DEFAULT NULL,
  `FEEDBACK_SUMMARY` varchar(30) DEFAULT NULL,
  `FEEDBACK_MEMO` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_ae_handle_history`
--

LOCK TABLES `csr_ae_handle_history` WRITE;
/*!40000 ALTER TABLE `csr_ae_handle_history` DISABLE KEYS */;
INSERT INTO `csr_ae_handle_history` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `csr_ae_handle_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_ae_return_visit_history`
--

DROP TABLE IF EXISTS `csr_ae_return_visit_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_ae_return_visit_history` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(20) DEFAULT NULL,
  `RETURN_VISIT_DATE_TIME` timestamp NULL DEFAULT NULL,
  `RETURN_VISIT_ORG_CODE` varchar(30) DEFAULT NULL,
  `RETURN_VISIT_ORG_NAME` varchar(70) DEFAULT NULL,
  `RETURN_VISIT_PERSON_ID` varchar(30) DEFAULT NULL,
  `RETURN_VISIT_PERSON_NAME` varchar(30) DEFAULT NULL,
  `RETURN_VISIT_RESULT` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_ae_return_visit_history`
--

LOCK TABLES `csr_ae_return_visit_history` WRITE;
/*!40000 ALTER TABLE `csr_ae_return_visit_history` DISABLE KEYS */;
INSERT INTO `csr_ae_return_visit_history` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `csr_ae_return_visit_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_ae_user_follow_with`
--

DROP TABLE IF EXISTS `csr_ae_user_follow_with`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_ae_user_follow_with` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(20) DEFAULT NULL,
  `PERSON_ID` varchar(30) DEFAULT NULL,
  `FOLLOW_WITH_START_DATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_ae_user_follow_with`
--

LOCK TABLES `csr_ae_user_follow_with` WRITE;
/*!40000 ALTER TABLE `csr_ae_user_follow_with` DISABLE KEYS */;
INSERT INTO `csr_ae_user_follow_with` VALUES (1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `csr_ae_user_follow_with` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_plan`
--

DROP TABLE IF EXISTS `csr_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_plan` (
  `PLAN_ID` int(20) NOT NULL AUTO_INCREMENT,
  `PLAN_NAME` varchar(100) NOT NULL,
  `START_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `END_DATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EVALUATE_SCOPE` varchar(100) DEFAULT NULL,
  `EVALUATE_ORG_CODE` varchar(500) NOT NULL,
  `EVALUATE_ORG_NAME` varchar(1000) NOT NULL,
  `DAY_SMS_COUNT_LIMIT` int(8) DEFAULT NULL,
  `CREATE_ORG_CODE` varchar(30) DEFAULT NULL,
  `CREATE_ORG_NAME` varchar(70) DEFAULT NULL,
  `CREATOR_ID` varchar(30) DEFAULT NULL,
  `CREATOR_NAME` varchar(30) NOT NULL,
  `CREATE_DATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `STATUS` int(2) NOT NULL,
  `CANCEL_PERSON_ID` varchar(30) DEFAULT NULL,
  `CANCEL_PERSON_NAME` varchar(30) DEFAULT NULL,
  `CANCEL_DATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`),
  UNIQUE KEY `PLAN_ID_UNIQUE` (`PLAN_ID`),
  KEY `status` (`STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_plan`
--

LOCK TABLES `csr_plan` WRITE;
/*!40000 ALTER TABLE `csr_plan` DISABLE KEYS */;
INSERT INTO `csr_plan` VALUES (106,'第三季度市属医院满意度测评','2015-11-20 05:40:11','2016-02-27 16:00:00','市属医院','110214','省妇保',100,'0004124','卫生局医改科','0004124108','张三','2015-09-30 16:00:00',2,NULL,NULL,NULL),(108,'第三季度社区卫生所满意度测评','2015-11-20 05:40:11','2016-02-27 16:00:00','社区卫生所','110215','梦想小镇卫生所',100,'0004124','卫生局医改科','0004124108','张三','2015-09-30 16:00:00',2,NULL,NULL,NULL),(112,'测试1','2015-11-23 16:00:00','2015-11-28 16:00:00','所有医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 21:37:44',2,NULL,NULL,NULL),(114,'测试12','2015-11-22 16:00:00','2015-11-29 16:00:00','所有医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 22:04:35',2,NULL,NULL,NULL),(115,'测试13','2015-11-23 16:00:00','2015-11-25 16:00:00','市属医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 22:17:09',2,NULL,NULL,NULL),(116,'测试3','2015-11-22 16:00:00','2015-11-28 16:00:00','所有医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 22:20:51',2,NULL,NULL,NULL),(117,'测试13','2015-11-22 16:00:00','2015-12-06 16:00:00','市属医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 23:15:27',2,NULL,NULL,NULL),(119,'测试1','2015-11-14 16:00:00','2015-11-28 16:00:00','市属医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 23:32:41',2,NULL,NULL,NULL),(120,'测试1','2015-11-21 16:00:00','2015-12-06 16:00:00','所有医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 23:53:50',2,NULL,NULL,NULL),(121,'测试13','2015-10-31 16:00:00','2015-11-29 16:00:00','所有医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 23:56:49',2,NULL,NULL,NULL),(122,'测试13','2015-11-22 16:00:00','2015-11-29 16:00:00','所有医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 23:57:51',2,NULL,NULL,NULL),(123,'测试13','2015-11-21 16:00:00','2015-11-21 16:00:00','所有医院','002125','杭州市第一人民医院',200,NULL,NULL,NULL,'张三','2015-11-24 23:58:48',3,NULL,NULL,NULL),(124,'CESHI111','2015-11-02 16:00:00','2015-11-19 16:00:00','指定医院...','002125','杭州市第一人民医院',2,NULL,NULL,NULL,'张三','2015-11-25 00:59:54',3,NULL,NULL,NULL),(125,'fdgdf','2015-11-24 16:00:00','2015-12-07 16:00:00','所有医院','002125','杭州市第一人民医院',120,NULL,NULL,NULL,'张三','2015-11-25 15:13:15',1,NULL,NULL,NULL),(126,'test','2015-11-25 01:23:25','2015-11-25 01:23:25',NULL,'1212;2112','医院;诊所',NULL,NULL,NULL,NULL,'阿饼','2015-11-25 01:23:25',2,NULL,'abing',NULL),(127,'aaaa','2015-11-01 16:00:00','2015-11-09 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 15:58:46',1,NULL,NULL,NULL),(128,'杨步时','2015-11-24 16:00:00','2015-11-25 16:00:00','所有医院','002125','杭州市第一人民医院',111,NULL,NULL,NULL,'张三','2015-11-25 16:07:24',1,NULL,NULL,NULL),(129,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(130,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(131,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(132,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(133,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(134,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(135,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(136,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(137,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(138,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(139,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(140,'yang11','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:16:19',1,NULL,NULL,NULL),(141,'测试','2015-11-22 16:00:00','2015-11-30 16:00:00','所有医院','002125','杭州市第一人民医院',120,NULL,NULL,NULL,'张三','2015-11-25 16:24:40',1,NULL,NULL,NULL),(142,'地方','2015-11-24 16:00:00','2015-11-08 16:00:00','所有医院','002125','杭州市第一人民医院',120,NULL,NULL,NULL,'张三','2015-11-25 16:27:28',1,NULL,NULL,NULL),(143,'yang1111','2015-11-25 16:00:00','2015-11-26 16:00:00','市属医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 16:52:30',1,NULL,NULL,NULL),(144,'yy','2015-11-25 16:00:00','2015-11-26 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 17:00:43',1,NULL,NULL,NULL),(145,'杨步时111','2015-11-17 16:00:00','2015-11-24 16:00:00','所有医院','002125','杭州市第一人民医院',11,NULL,NULL,NULL,'张三','2015-11-25 17:05:03',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `csr_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_record`
--

DROP TABLE IF EXISTS `csr_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_record` (
  `RECORD_ID` int(20) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(20) DEFAULT NULL,
  `IDENTITY_NO` varchar(30) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `MOBILE_PHONE_NUM` varchar(20) DEFAULT NULL,
  `VISIT_ID` varchar(50) DEFAULT NULL,
  `VISIT_TYPE` varchar(2) NOT NULL,
  `VISIT_START_DATE_TIME` timestamp NULL DEFAULT NULL,
  `VISIT_ORG_CODE` varchar(30) DEFAULT NULL,
  `VISIT_ORG_NAME` varchar(70) DEFAULT NULL,
  `HIS_DEPT_CODE` varchar(30) DEFAULT NULL,
  `HIS_DEPT_NAME` varchar(70) DEFAULT NULL,
  `DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `SMS_SEND_CONTENT` varchar(1000) DEFAULT NULL,
  `SEND_DATE_TIME` timestamp NULL DEFAULT NULL,
  `IS_REPLY` int(1) DEFAULT NULL,
  `SMS_REPLY_CONTENT` varchar(1000) DEFAULT NULL,
  `REPLY_DATE_TIME` timestamp NULL DEFAULT NULL,
  `REFLACT_CONTENT` varchar(1000) DEFAULT NULL,
  `IS_SMS_REPLY_CONTENT_VALID` int(1) DEFAULT NULL,
  `MANUAL_PROCESSED` int(1) DEFAULT NULL,
  `PROCESS_ORG_CODE` varchar(30) DEFAULT NULL,
  `PROCESS_ORG_NAME` varchar(70) DEFAULT NULL,
  `PROCESS_PERSON_ID` varchar(30) DEFAULT NULL,
  `PROCESS_PERSON_NAME` varchar(30) DEFAULT NULL,
  `PROCESS_DATE_TIME` timestamp NULL DEFAULT NULL,
  `IS_SATISFACTION` int(1) DEFAULT NULL,
  `CSR_RESULT_CODE` varchar(100) DEFAULT NULL,
  `CSR_RESULT_NAME` varchar(300) DEFAULT NULL,
  `THE_BEST_DOCTOR` varchar(100) DEFAULT NULL,
  `THE_WORST_DOCTOR` varchar(100) DEFAULT NULL,
  `DOCTOR_CODE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`RECORD_ID`),
  UNIQUE KEY `RECORD_ID_UNIQUE` (`RECORD_ID`),
  KEY `IS_SATISFACTION` (`IS_SATISFACTION`),
  KEY `identityNo` (`IDENTITY_NO`),
  KEY `planId` (`PLAN_ID`),
  KEY `sendDateTime` (`SEND_DATE_TIME`),
  KEY `visitType` (`VISIT_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_record`
--

LOCK TABLES `csr_record` WRITE;
/*!40000 ALTER TABLE `csr_record` DISABLE KEYS */;
INSERT INTO `csr_record` VALUES (40,34,'322428199202191412',NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 16:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,0,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 05:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,1,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 07:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,2,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 09:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,3,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 11:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,4,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 13:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,10,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 15:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,11,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 17:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,12,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 19:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,13,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 21:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,14,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 23:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,20,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 01:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,21,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 03:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,22,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 05:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,23,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 07:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,24,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 09:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,30,NULL,NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 11:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,31,NULL,NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 13:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,32,NULL,NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 15:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,33,NULL,NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 17:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,34,'322428199202191412',NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-21 19:34:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,106,'332428199202193435','刘小林','13760998423','2','1','2015-11-23 07:16:58','110214','省妇保','2367','妇保科','李学文','','2015-11-24 07:24:21',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2501'),(108,106,'332428199202193458','周润华','13760998423','5','1','2015-11-23 07:22:32','110214','省妇保','2367','妇保科','李学文','','2015-11-24 07:24:21',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2501'),(109,106,'332428199202193459','陈华','13760998423','6','1','2015-11-23 07:22:32','110214','省妇保','2367','妇保科','李学文','','2015-11-24 07:24:21',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2501'),(110,106,'332428199202193460','杨琛鹏','13760998423','7','1','2015-11-23 07:22:32','110214','省妇保','2367','妇保科','李学文','','2015-11-24 07:24:21',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2501'),(111,108,'332428199202193456','苗永峰','13760998423','4','1','2015-11-23 07:22:32','110215','梦想小镇卫生所','2367','保健科','李学文','','2015-11-24 07:24:21',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2501'),(125,108,'332428199002193490','张继花','13760998423','16','1','2015-11-24 08:30:20','110215','梦想小镇卫生所','2367','妇保科','李欣文','','2015-11-24 09:37:05',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2502');
/*!40000 ALTER TABLE `csr_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_sms_send_queue`
--

DROP TABLE IF EXISTS `csr_sms_send_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_sms_send_queue` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(20) DEFAULT NULL,
  `MOBILE_PHONE_NUM` varchar(20) DEFAULT NULL,
  `SMS_CONTENT` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_sms_send_queue`
--

LOCK TABLES `csr_sms_send_queue` WRITE;
/*!40000 ALTER TABLE `csr_sms_send_queue` DISABLE KEYS */;
INSERT INTO `csr_sms_send_queue` VALUES (1,NULL,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `csr_sms_send_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_个人照片`
--

DROP TABLE IF EXISTS `hc_个人照片`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_个人照片` (
  `identity_no` varchar(30) NOT NULL COMMENT 'PK，平台内个人唯一标识',
  `photo` longblob COMMENT '照片',
  PRIMARY KEY (`identity_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人照片';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_个人照片`
--

LOCK TABLES `hc_个人照片` WRITE;
/*!40000 ALTER TABLE `hc_个人照片` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_个人照片` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_居民地址表`
--

DROP TABLE IF EXISTS `hc_居民地址表`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_居民地址表` (
  `identity_no` varchar(30) NOT NULL COMMENT 'PK，平台内个人唯一标识',
  `serial_no` int(11) NOT NULL COMMENT '序号',
  `address_type` int(11) NOT NULL COMMENT '地址类型01-户籍地址02-工作地址03-家庭常住地址06-出生地址09-现住址98-籍贯99：其他地址',
  `full_address` varchar(400) NOT NULL COMMENT '地址名称',
  `postcode` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `division_id` int(11) DEFAULT NULL COMMENT '行政区划标识',
  `additional_address` varchar(140) DEFAULT NULL COMMENT '补充地址',
  PRIMARY KEY (`identity_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='居民地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_居民地址表`
--

LOCK TABLES `hc_居民地址表` WRITE;
/*!40000 ALTER TABLE `hc_居民地址表` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_居民地址表` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_居民联系方式表`
--

DROP TABLE IF EXISTS `hc_居民联系方式表`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_居民联系方式表` (
  `identity_no` varchar(30) NOT NULL COMMENT 'PK，平台内个人唯一标识',
  `serial_no` int(11) NOT NULL COMMENT '序号',
  `relationship` varchar(2) DEFAULT NULL COMMENT '联系人关系 1：配偶2：子3：女4：孙子、孙女或外孙子、外孙女5：父母6：祖父母或外祖父母7：兄、弟、姐、妹8：其他',
  `name` varchar(120) DEFAULT NULL COMMENT '联系人姓名',
  `phone_number` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `mobile_number` varchar(20) DEFAULT NULL COMMENT '联系人手机',
  PRIMARY KEY (`identity_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='居民联系方式表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_居民联系方式表`
--

LOCK TABLES `hc_居民联系方式表` WRITE;
/*!40000 ALTER TABLE `hc_居民联系方式表` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_居民联系方式表` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_allergy_history`
--

DROP TABLE IF EXISTS `hc_allergy_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_allergy_history` (
  `ID` int(6) NOT NULL AUTO_INCREMENT COMMENT '自增序列',
  `IDENTITY_NO` varchar(30) DEFAULT NULL COMMENT '平台内个人唯一标识，非建档人员该字段可空',
  `VISIT_ID` varchar(50) NOT NULL COMMENT '来自于就诊主索引',
  `HIS_ALLERGEN_ID` varchar(20) DEFAULT NULL COMMENT 'His中该条过敏史记录的ID',
  `INFO_SOURCE_TYPE` varchar(1) DEFAULT NULL COMMENT '1-测试；2-询问。通过检测（例如皮试、检验）获取则信息来源为测试，通过询问患者或家属获取则信息来源为询问',
  `ALLERGEN_CODE` varchar(20) DEFAULT NULL COMMENT '标准代码值表-CV05.01.038',
  `ALLERGEN_NAME` varchar(100) NOT NULL COMMENT '具体名称，例如过敏源编码字段值是101-青霉素类抗生素，这里是具体的青霉素类抗生药物的名称，例如阿莫西林',
  `ALLERGY_SYMPTOM` varchar(300) DEFAULT NULL,
  `EDITOR` varchar(30) DEFAULT NULL,
  `EDITOR_DATE_TIME` datetime DEFAULT NULL,
  `RECORD_HCO_CODE` varchar(30) DEFAULT NULL,
  `RECORD_HCO_NAME` varchar(70) DEFAULT NULL,
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='过敏史信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_allergy_history`
--

LOCK TABLES `hc_allergy_history` WRITE;
/*!40000 ALTER TABLE `hc_allergy_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_allergy_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_diagnosis`
--

DROP TABLE IF EXISTS `hc_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_diagnosis` (
  `DIAGNOSIS_ID` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK，自增长序列号',
  `VISIT_ID` varchar(60) NOT NULL COMMENT '来自于就诊主索引',
  `DIAGNOSIS_ITEM_TYPE` varchar(2) DEFAULT NULL COMMENT '诊断类型',
  `DIAGNOSIS_DOCTOR_NAME` varchar(30) DEFAULT NULL COMMENT '诊断医生姓名',
  `DIAGNOSIS_DATE_TIME` datetime DEFAULT NULL COMMENT '诊断时间',
  `HIS_DIAGNOSIS_ID` varchar(16) DEFAULT NULL COMMENT '来自机构内部的序号，便于追溯',
  `DIAGNOSIS_ITEM_NO` varchar(2) DEFAULT NULL COMMENT '表示主次关系，从1开始排列，1表示主要诊断，大于1的表示其他诊断',
  `DIAGNOSIS_ITEM_CODE` varchar(20) DEFAULT NULL COMMENT '使用标准代码，例如I10.x00',
  `DIAGNOSIS_ITEM_NAME` varchar(400) DEFAULT NULL COMMENT '诊断出来的疾病名称，例如高血压',
  `OLD_FLAG` int(11) DEFAULT NULL COMMENT '原有标志0-否1-是',
  `NEW_FLAG` int(11) DEFAULT NULL COMMENT '新发标志0-否1-是',
  `SUSPECTED_FLAG` int(11) DEFAULT NULL COMMENT '疑似标志0-否1-是',
  `DIAGNOSIS_ITEM_MEMO` varchar(400) DEFAULT NULL COMMENT '对诊断的补充说明，例如“高危”',
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL COMMENT '发生机构编码',
  `VISIT_HCO_NAME` varchar(140) DEFAULT NULL COMMENT '就诊机构名称',
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`DIAGNOSIS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='诊断记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_diagnosis`
--

LOCK TABLES `hc_diagnosis` WRITE;
/*!40000 ALTER TABLE `hc_diagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_document_index`
--

DROP TABLE IF EXISTS `hc_document_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_document_index` (
  `ID` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK，自增长序列号',
  `VISIT_ID` varchar(50) NOT NULL COMMENT '来源于就诊主索引',
  `HIS_DOCUMENT_ID` varchar(20) DEFAULT NULL COMMENT '机构内唯一标识一个病历记录',
  `DOCUMENT_NAME` varchar(100) DEFAULT NULL COMMENT '例如“入院记录”',
  `CREATOR` varchar(30) DEFAULT NULL,
  `CREAT_DATE_TIME` datetime DEFAULT NULL,
  `LAs_EDITOR` varchar(30) DEFAULT NULL,
  `LAST_EDIT_DATE_TIME` datetime DEFAULT NULL,
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL,
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL,
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_document_index`
--

LOCK TABLES `hc_document_index` WRITE;
/*!40000 ALTER TABLE `hc_document_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_document_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_exam_index`
--

DROP TABLE IF EXISTS `hc_exam_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_exam_index` (
  `ID` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK，自增长序列号',
  `VISIT_ID` varchar(50) DEFAULT NULL COMMENT '来自于就诊主索引',
  `IDENTITY_NO` varchar(30) DEFAULT NULL COMMENT '个人标识',
  `HIS_EXAM_NO` varchar(20) DEFAULT NULL COMMENT '机构内唯一标识一个检查主记录',
  `EXAM_CLASS` varchar(20) DEFAULT NULL COMMENT '区分各类检查',
  `EXAM_SUB_CLASS` varchar(20) DEFAULT NULL COMMENT '区分一种检查类下的各子类，如超声类下的腹部、心脏、妇产等子类',
  `EXAM_ITEMS_NAME` varchar(200) DEFAULT NULL COMMENT '如存在多个检查项目，则进行文本拼接',
  `REQUEST_DATE_TIME` datetime DEFAULT NULL COMMENT '本次检查的申请时间',
  `REQUEST_DEPT_CODE` varchar(30) DEFAULT NULL COMMENT '申请科室代码',
  `REQUEST_DEPT_NAME` varchar(70) DEFAULT NULL COMMENT '申请科室名称',
  `REQUEST_DOCTOR_NAME` varchar(30) DEFAULT NULL COMMENT '申请医生姓名',
  `EXAM_DATE_TIME` datetime DEFAULT NULL COMMENT '检查时间',
  `EXAM_DOCTOR_NAME` varchar(30) DEFAULT NULL COMMENT '检查医生姓名',
  `CONCLUSION` varchar(500) DEFAULT NULL COMMENT '检查结论',
  `REPORT_DATE_TIME` datetime DEFAULT NULL,
  `REPORT_DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `CHARGE_FLAG` varchar(1) DEFAULT NULL COMMENT '0未收费\n            1已收费\n            ',
  `BILL_NO` varchar(30) DEFAULT NULL,
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL,
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL,
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  `EXAM_ITEMS_CODE` varchar(200) DEFAULT NULL COMMENT '如存在多个检查项目，则进行文本拼接',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_exam_index`
--

LOCK TABLES `hc_exam_index` WRITE;
/*!40000 ALTER TABLE `hc_exam_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_exam_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_exam_report`
--

DROP TABLE IF EXISTS `hc_exam_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_exam_report` (
  `ID` int(11) NOT NULL COMMENT 'PK，自增长序列号',
  `VISIT_ID` varchar(50) NOT NULL COMMENT '来自于就诊主索引',
  `EXAM_NO` varchar(20) DEFAULT NULL COMMENT '机构内唯一标识一个检查主记录',
  `REPORT_ITEM_NO` int(11) DEFAULT NULL COMMENT '对同一申请的报告项目序号',
  `REPORT_ITEM_CODE` varchar(10) DEFAULT NULL COMMENT '报告项目对应的代码',
  `REPORT_ITEM_NAME` varchar(30) DEFAULT NULL COMMENT '此名称可能不同于申请项目名称',
  `EXAM_PARAMETER` varchar(200) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `IMPRESSION` varchar(200) DEFAULT NULL,
  `RECOMMENDATION` varchar(200) DEFAULT NULL,
  `IS_ABNORMAL` varchar(1) DEFAULT NULL COMMENT '1-阳性，即检查可能有病变，其他为阴性',
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FILE_PATH` varchar(255) DEFAULT NULL,
  `DATA_TYPE` varchar(50) DEFAULT NULL COMMENT '数据文件的存储格式类型，如PDF、HTML等',
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL COMMENT '使用编码',
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_exam_report`
--

LOCK TABLES `hc_exam_report` WRITE;
/*!40000 ALTER TABLE `hc_exam_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_exam_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_hospital`
--

DROP TABLE IF EXISTS `hc_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_hospital` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '平台代码',
  `HOS_NAME` varchar(100) DEFAULT NULL COMMENT '医院名称',
  `ALIAS_NAME` varchar(200) DEFAULT NULL COMMENT '医院别名(多个以逗号隔开)',
  `HOS_TYPE` varchar(10) DEFAULT NULL COMMENT '医院类型(字典)',
  `HOS_LEVEL` varchar(10) DEFAULT NULL COMMENT '医院等级(字典)',
  `TCM` varchar(10) DEFAULT NULL COMMENT '中西医',
  `TEL` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `ADDRES` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `URL` varchar(200) DEFAULT NULL COMMENT '官方网址',
  `PLAT_CODE` varchar(30) DEFAULT NULL COMMENT '组织机构代码',
  `INTRO` varchar(4000) DEFAULT NULL COMMENT '医院介绍',
  `BOOK_COUNT` int(11) DEFAULT NULL COMMENT '成功预约数',
  `WEIBO` varchar(50) DEFAULT NULL COMMENT '官方微博',
  `WEIXIN` varchar(50) DEFAULT NULL COMMENT '微信',
  `GIS_LNG` decimal(10,6) DEFAULT NULL COMMENT '地理经度',
  `GIS_LAT` decimal(10,6) DEFAULT NULL COMMENT '地理纬度',
  `SCH_TIME` varchar(10) DEFAULT NULL COMMENT '放号时间(HH24:MI)',
  `AREA_ID` varchar(30) DEFAULT NULL COMMENT '所属地区(字典)',
  `HOS_STATE` varchar(1) DEFAULT NULL COMMENT '医院状态(1-正常预约;2-暂停医院;3-注销)',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `HOS_ROUTE` varchar(2000) DEFAULT NULL COMMENT '交通路线',
  `FEATURE_DEPT` varchar(100) DEFAULT NULL COMMENT '特色科室',
  `PY_CODE` varchar(20) DEFAULT NULL COMMENT '拼音码',
  `IDX_NAME` varchar(200) DEFAULT NULL COMMENT '索引名(索引用不显示)',
  `SCAN` varchar(1) DEFAULT NULL COMMENT '检验二维码扫描（1走存储过程查询）',
  `APK_NAME` varchar(200) DEFAULT NULL COMMENT '对应apk维护',
  `CUSTOM_CODE` varchar(20) DEFAULT NULL COMMENT '自定义码',
  `HOS_PHOTO` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `INVALID_FLAG` varchar(1) DEFAULT NULL COMMENT '作废标志',
  `HIS_INTERFACE` varchar(100) DEFAULT NULL COMMENT '院内接口地址',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_hospital`
--

LOCK TABLES `hc_hospital` WRITE;
/*!40000 ALTER TABLE `hc_hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_lab_test_index`
--

DROP TABLE IF EXISTS `hc_lab_test_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_lab_test_index` (
  `ID` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `VISIT_ID` varchar(50) DEFAULT NULL COMMENT '来自于就诊主索引',
  `IDENTITY_NO` varchar(30) DEFAULT NULL COMMENT '个人标识',
  `HIS_LAB_TEST_NO` varchar(20) DEFAULT NULL COMMENT '机构内唯一标识一个检验主记录',
  `SUBJECT_CODE` varchar(200) DEFAULT NULL COMMENT '反映本检验的主要内容，如血液生化、大便常规等',
  `SUBJECT_NAME` varchar(200) DEFAULT NULL COMMENT '反映本检验的主要内容，如血液生化、大便常规等',
  `REQUEST_DATE_TIME` datetime DEFAULT NULL COMMENT '本次检查的申请时间',
  `REQUEST_DEPT_CODE` varchar(30) DEFAULT NULL COMMENT '申请科室代码',
  `REQUEST_DEPT_NAME` varchar(70) DEFAULT NULL COMMENT '申请科室名称',
  `REQUEST_DOCTOR_NAME` varchar(30) DEFAULT NULL COMMENT '申请医生姓名',
  `BLOOD_TEST_FLAG` varchar(1) DEFAULT NULL COMMENT '0 否 1 是',
  `SPECIMEN_CODE` varchar(20) DEFAULT NULL,
  `SPECIMEN_NAME` varchar(50) DEFAULT NULL COMMENT '使用标准描述，如血、尿等',
  `NOTES_FOR_SPECIMEN` varchar(100) DEFAULT NULL,
  `SAMPLE_DATE_TIME` datetime DEFAULT NULL,
  `SAMPLE_NAME` varchar(30) DEFAULT NULL,
  `SPECIMEN_RECEIVED_DATE_TIME` datetime DEFAULT NULL,
  `TEST_DEPT_CODE` varchar(30) DEFAULT NULL,
  `TEST_DEPT_NAME` varchar(70) DEFAULT NULL,
  `TEST_DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `CONCLUSION` varchar(500) DEFAULT NULL,
  `REPORT_DATE_TIME` datetime DEFAULT NULL,
  `REPORT_DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `CHARGE_FLAG` varchar(1) DEFAULT NULL COMMENT '0未收费\n            1已收费\n            ',
  `BILL_NO` varchar(30) DEFAULT NULL,
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL,
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL,
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_lab_test_index`
--

LOCK TABLES `hc_lab_test_index` WRITE;
/*!40000 ALTER TABLE `hc_lab_test_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_lab_test_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_lab_test_result`
--

DROP TABLE IF EXISTS `hc_lab_test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_lab_test_result` (
  `ID` int(11) NOT NULL,
  `VISIT_ID` varchar(50) NOT NULL COMMENT '来自于就诊主索引',
  `HIS_LAB_TEST_NO` varchar(20) DEFAULT NULL COMMENT '机构内唯一标识一个检验主记录',
  `REPORT_ITEM_NO` int(11) DEFAULT NULL COMMENT '对同一申请的报告项目序号',
  `REPORT_ITEM_CODE` varchar(10) DEFAULT NULL COMMENT '报告项目对应的代码',
  `REPORT_ITEM_NAME` varchar(30) DEFAULT NULL COMMENT '此名称可能不同于申请项目名称',
  `RESULT` varchar(200) DEFAULT NULL COMMENT '正文描述，可以是定性描述，也可以是定量数值，对于没有值的项目不使用此字段',
  `UNITS` varchar(20) DEFAULT NULL COMMENT '对检验结果为数值型的项目使用此字段',
  `ABNORMAL_FLAG` varchar(1) DEFAULT NULL COMMENT '结果正常与否标志，\n            N-正常 \n            L-低 \n            H-高\n            ',
  `INSTRUMENT_ID` varchar(8) DEFAULT NULL COMMENT '同检验仪器检验项目配置中定义的仪器编号，手工输入结果时为“手工”',
  `RESULT_DATE_TIME` datetime DEFAULT NULL COMMENT '结果产生的日期和时间。自动采集结果时由采集计算机生成，手工填写结果时由录入处理的计算机生成。',
  `REFER_CONTEXT` varchar(200) DEFAULT NULL COMMENT '检查项目所对应的正常参考范围 ',
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL,
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_lab_test_result`
--

LOCK TABLES `hc_lab_test_result` WRITE;
/*!40000 ALTER TABLE `hc_lab_test_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_lab_test_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_operation`
--

DROP TABLE IF EXISTS `hc_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_operation` (
  `ID` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK，自增长序列号',
  `VISIT_ID` varchar(50) DEFAULT NULL COMMENT '来自于就诊主索引',
  `HIS_OPERATION_NO` varchar(20) DEFAULT NULL,
  `OPERATION_DATE_TIME` datetime DEFAULT NULL COMMENT '可空，表示手术时间',
  `OPERATION_CODE` varchar(20) DEFAULT NULL COMMENT '手术/操作的分类代码\n            手术/操作的分类代码(国际疾病分类临床修订版ICD-9-CM)\n            ',
  `OPERATION_NAME` varchar(70) DEFAULT NULL COMMENT '手术名称',
  `ANESTHESIA_METHOD_CODE` varchar(2) DEFAULT NULL COMMENT '实施手术（操作）时所采用的麻醉方法代码\n            CV5201.24麻醉方法代码\n            ',
  `ANESTHESIA_METHOD_NAME` varchar(50) DEFAULT NULL,
  `ANESTHESIA_DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `WOUND_GRADE` varchar(2) DEFAULT NULL COMMENT '手术的切口等级，见手术切口等级字典，如I、II等',
  `HEAL_GRADE` varchar(20) DEFAULT NULL COMMENT '手术（操作）的切口愈合等级\n            CV5501.14手术切口愈合等级代码\n            ',
  `SURGEON_NAME` varchar(30) DEFAULT NULL COMMENT '手术医师姓名',
  `ASSISTANT1_NAME` varchar(30) DEFAULT NULL COMMENT '第一手术助手姓名',
  `ASSISTANT3_NAME` varchar(30) DEFAULT NULL COMMENT '第三手术助手姓名',
  `ASSISTANT2_NAME` varchar(30) DEFAULT NULL COMMENT '第二手术助手姓名',
  `ASSISTANT4_NAME` varchar(30) DEFAULT NULL COMMENT '第四手术助手姓名',
  `TARGET_SITE_CODE` varchar(2) DEFAULT NULL COMMENT 'CV5201.23手术/操作体表部位代码',
  `OPERATION_SCALE` varchar(2) DEFAULT NULL COMMENT '指手术规模，取值：特、大、中、小',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '实施手术/操作的名称的详细描述',
  `OPERATION_CLASS` varchar(1) DEFAULT NULL COMMENT '1-一般手术 2-急抢救手术 3-术中急抢救',
  `OPERATING_DEPT_CODE` varchar(30) DEFAULT NULL COMMENT '实施手术的科室代码',
  `OPERATING_DEPT_NAME` varchar(70) DEFAULT NULL COMMENT '实施手术科室的正式名称',
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL COMMENT '使用编码',
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL,
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  `TARGET_SITE_NAME` varchar(100) DEFAULT NULL COMMENT 'CV5201.23手术/操作体表部位',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_operation`
--

LOCK TABLES `hc_operation` WRITE;
/*!40000 ALTER TABLE `hc_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_person_identity`
--

DROP TABLE IF EXISTS `hc_person_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_person_identity` (
  `ID` decimal(6,0) NOT NULL,
  `identity_no` varchar(30) NOT NULL COMMENT '平台内个人唯一标识',
  `id_type` int(11) NOT NULL COMMENT '证件类别：01-居民身份证02-港澳居民身份证03-居民户口簿04-护照05-军官证06-文职干部证07-士兵证08-驾驶执照09-残疾证10-医疗保险证99-其他标识100-健康档案号101-医保卡102-银行卡103-市民卡',
  `id_no` varchar(60) NOT NULL COMMENT '证件号码',
  `issued_by` varchar(140) DEFAULT NULL COMMENT '签发单位',
  `issue_date` datetime DEFAULT NULL COMMENT '签发日期',
  `expire_date` datetime DEFAULT NULL COMMENT '证件有效期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人身份识别表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_person_identity`
--

LOCK TABLES `hc_person_identity` WRITE;
/*!40000 ALTER TABLE `hc_person_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_person_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_person_master_index`
--

DROP TABLE IF EXISTS `hc_person_master_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_person_master_index` (
  `identity_no` varchar(30) NOT NULL COMMENT 'PK，平台内个人信息唯一标识，采用18位居民本人身份证号码（外国人采用国家编码+护照号码），居民个人信息唯一标识，由系统在建档时生成',
  `create_hco_code` varchar(30) DEFAULT NULL COMMENT '建档机构代码',
  `create_hco_name` varchar(140) DEFAULT NULL COMMENT '建档机构名称',
  `create_user_name` varchar(120) DEFAULT NULL COMMENT '建档人员姓名',
  `create_date_time` datetime DEFAULT NULL COMMENT '建档时间',
  `status` int(11) DEFAULT NULL COMMENT '人员状态：0-正常1-转入2-转出3-死亡',
  `credit_flag` int(11) DEFAULT NULL COMMENT '签约状态是否先看病后付费签约：0-未签约1-医保签约2-银联卡签约9-黑名单',
  `credit_ammount` decimal(8,2) DEFAULT NULL COMMENT '先看病后付费信用额度',
  `name` varchar(60) DEFAULT NULL COMMENT '居民本人姓名',
  `name_pinyin` varchar(30) DEFAULT NULL COMMENT '姓名拼音',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `date_of_birth` datetime DEFAULT NULL COMMENT '本人出生当天的公元纪年日期',
  `country` varchar(3) DEFAULT NULL COMMENT '国籍',
  `nation` varchar(2) DEFAULT NULL COMMENT '民族',
  `marriage_status_name` varchar(20) DEFAULT NULL COMMENT '婚姻状况名称',
  `marriage_status_code` varchar(1) DEFAULT NULL COMMENT '婚姻状况代码',
  `education_level_code` varchar(2) DEFAULT NULL COMMENT '文化程度代码',
  `education_level_name` varchar(20) DEFAULT NULL COMMENT '文化程度名称',
  `political_status_code` varchar(2) DEFAULT NULL COMMENT '政治面貌代码',
  `political_status_name` varchar(20) DEFAULT NULL COMMENT '政治面貌名称',
  `job_type_code` varchar(3) DEFAULT NULL COMMENT '职业类别',
  `job_status_code` varchar(2) DEFAULT NULL,
  `job_type_name` varchar(50) DEFAULT NULL COMMENT '职业类别名称',
  `job_status_name` varchar(20) DEFAULT NULL COMMENT '在职状态名称',
  `phone_number` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `mobile_number` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `contact_name` varchar(60) DEFAULT NULL COMMENT '联系人姓名',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `contact_mobile` varchar(20) DEFAULT NULL COMMENT '联系人手机',
  `native_place` varchar(400) DEFAULT NULL COMMENT '籍贯名称',
  `birth_place` varchar(400) DEFAULT NULL COMMENT '出生地址名称',
  `home_address` varchar(400) DEFAULT NULL COMMENT '家庭地址名称',
  `blood_type_abo` varchar(2) DEFAULT NULL COMMENT 'ABO血型',
  `blood_type_rh` varchar(2) DEFAULT NULL COMMENT 'RH血型',
  `child_birth` int(11) DEFAULT NULL COMMENT '育子标志0-无 1-有',
  `vaccination_history` int(11) DEFAULT NULL COMMENT '免疫接种史标志0-无 1-有',
  `allergy_history` int(11) DEFAULT NULL COMMENT '过敏史标志0-无 1-有',
  `allergy_desc` varchar(400) DEFAULT NULL COMMENT '过敏史描述',
  `past_history` int(11) DEFAULT NULL COMMENT '既往史标志0-无 1-有',
  `past_desc` varchar(400) DEFAULT NULL COMMENT '既往史描述',
  `genetic_history` int(11) DEFAULT NULL COMMENT '遗传病史标志0-无 1-有',
  `iving_habits` int(11) DEFAULT NULL COMMENT '生活行为习惯标志0-无 1-有',
  `hypertension` int(11) DEFAULT NULL COMMENT '高血压标志0-无 1-有',
  `hypertension_desc` varchar(400) DEFAULT NULL COMMENT '高血压描述',
  `tumor` int(11) DEFAULT NULL COMMENT '肿瘤标志0-无 1-有',
  `tumor_desc` varchar(400) DEFAULT NULL COMMENT '肿瘤描述',
  `asthma` int(11) DEFAULT NULL COMMENT '哮喘标志0-无 1-有',
  `heart_dease` int(11) DEFAULT NULL COMMENT '心脏病标志0-无 1-有',
  `cardio_cerebrovascular_disease` int(11) DEFAULT NULL COMMENT '心血管病标志0-无 1-有',
  `epilepsy` int(11) DEFAULT NULL COMMENT '癫痫病标志0-无 1-有',
  `psychosis` int(11) DEFAULT NULL COMMENT '精神疾病标志0-无 1-有',
  `psychosis_desc` varchar(400) DEFAULT NULL COMMENT '精神疾病描述',
  `coagulopathy` int(11) DEFAULT NULL COMMENT '凝血紊乱标志0-无 1-有',
  `diabetes` int(11) DEFAULT NULL COMMENT '糖尿病标志0-无 1-有',
  `diabetes_desc` varchar(400) DEFAULT NULL COMMENT '糖尿病描述',
  `glaucoma` int(11) DEFAULT NULL COMMENT '青光眼标志0-无 1-有',
  `dialysis` int(11) DEFAULT NULL COMMENT '透析标志0-无 1-有',
  `transplant` int(11) DEFAULT NULL COMMENT '器官移植标志0-无 1-有',
  `organ_deficiency` int(11) DEFAULT NULL COMMENT '器官缺失标志0-无 1-有',
  `removable_prosthesis` int(11) DEFAULT NULL COMMENT '可装卸的义肢标志0-无 1-有',
  `pacemaker` int(11) DEFAULT NULL COMMENT '心脏起搏器标志0-无 1-有',
  `medical_warnning` varchar(80) DEFAULT NULL COMMENT '其他医学警示',
  `primary_hco_code` varchar(30) DEFAULT NULL COMMENT '基层医疗机构编码',
  `primary_hco_name` varchar(140) DEFAULT NULL COMMENT '基层医疗机构名称',
  `update_user_name` varchar(60) DEFAULT NULL COMMENT '更新人员姓名',
  `update_date_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`identity_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人档案主索引';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_person_master_index`
--

LOCK TABLES `hc_person_master_index` WRITE;
/*!40000 ALTER TABLE `hc_person_master_index` DISABLE KEYS */;
INSERT INTO `hc_person_master_index` VALUES ('123456199010109876',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'abing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00998782362',NULL,NULL,'12345678901',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('332428199002193490','000000','卫生局医政科','张座','2014-01-01 00:00:00',0,0,1000.00,'张继花','zhangjihua','F','1990-02-19 00:00:00','中国','汉','未婚','0','','本科','','团员','','','销售','在职','0751-4238509','13760998183','陈华','','13513586981','山西省太原市迎泽区县','山西省太原市迎泽区县','山西省太原市迎泽区县',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('332428199202193435','000000','卫生局医政科','张座','2014-01-01 00:00:00',0,0,1000.00,'刘小林','liuxiaoxian','M','1992-02-19 00:00:00','中国','汉','未婚','0','','高中','','党员','','','教师','在职','0751-4238592','13760998423','刘小林','','13513556618','山西省吕梁市兴县县','山西省吕梁市兴县县','山西省吕梁市兴县县牛石头村',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('332428199202193456','000000','卫生局医政科','张座','2014-01-01 00:00:00',0,0,1000.00,'苗永峰','miaoyongfeng','M','1992-02-19 00:00:00','中国','汉','未婚','0','','高中','','团员','','','厨师','在职','0751-4238592','13760998473','苗永峰','','13513586618','山西省运城市稷山县','山西省运城市稷山县','山西省运城市稷山县牛石头村',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('332428199202193458','000000','卫生局医政科','张座','2014-01-01 00:00:00',0,0,1000.00,'周润华','zhourunhua','M','1992-02-19 00:00:00','中国','汉','未婚','0','','高中','','团员','','','教师','在职','0751-4238592','13760998433','周润华','','13513586618','山西省运城市稷山县','山西省运城市稷山县','山西省运城市稷山县牛石头村',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('332428199202193459','000000','卫生局医政科','张座','2014-01-01 00:00:00',0,0,1000.00,'陈华','zhenhua','M','1992-02-19 00:00:00','中国','汉','未婚','0','','高中','','团员','','','厨师','在职','0751-4238592','13760998454','陈华','','13513586618','山西省运城市稷山县','山西省运城市稷山县','山西省运城市稷山县牛石头村',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('332428199202193460','000000','卫生局医政科','张座','2014-01-01 00:00:00',0,0,1000.00,'杨琛鹏','yangshenpen','M','1992-02-19 00:00:00','中国','汉','未婚','0','','高中','','团员','','','厨师','在职','0751-4238592','13760998464','陈华','','13513586987','山西省运城市稷山县','山西省运城市稷山县','山西省运城市稷山县牛石头村',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hc_person_master_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_presc_index`
--

DROP TABLE IF EXISTS `hc_presc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_presc_index` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `VISIT_ID` varchar(50) DEFAULT NULL,
  `HIS_PRESC_ID` varchar(20) DEFAULT NULL COMMENT '机构内唯一标识一个处方主记',
  `HIS_DEPT_CODE` varchar(30) DEFAULT NULL,
  `HIS_DEPT_NAME` varchar(70) DEFAULT NULL,
  `DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `PRESC_DATE_TIME` datetime DEFAULT NULL,
  `DRUG_TYPE_CODE` varchar(30) DEFAULT NULL COMMENT '西药、中成药、中药饮片、中药配方颗粒',
  `DRUG_TYPE_NAME` varchar(30) DEFAULT NULL COMMENT '西药、中成药、中药饮片、中药配方颗粒',
  `DOSE` int(11) DEFAULT NULL COMMENT '该字段仅用于中药饮片和配方颗粒，西药中成药默认为1',
  `PRESC_TYPE_CODE` varchar(1) DEFAULT NULL COMMENT '普通处方、儿科处方、精一、精二、麻醉处方',
  `PRESC_TYPE_NAME` varchar(20) DEFAULT NULL COMMENT '普通处方、儿科处方、精一、精二、麻醉处方',
  `INFUSION_FLAG` varchar(1) DEFAULT NULL COMMENT '0 否 1 是',
  `ANTIBIOTICS_FLAG` varchar(1) DEFAULT NULL COMMENT '0 否 1 是',
  `CHARGE_FLAG` varchar(1) DEFAULT NULL COMMENT '0 否 1 是',
  `TOTAL_AMOUNT` float DEFAULT NULL,
  `AMOUNT_BASIC_DRUG` float DEFAULT NULL,
  `AMOUNT_SUPPLEMENT_DRUG` float DEFAULT NULL,
  `AMOUNT_OTHER_DRUG` float DEFAULT NULL,
  `BILL_NO` varchar(30) DEFAULT NULL,
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL,
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL,
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_presc_index`
--

LOCK TABLES `hc_presc_index` WRITE;
/*!40000 ALTER TABLE `hc_presc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_presc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_schedule`
--

DROP TABLE IF EXISTS `hc_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_schedule` (
  `id` bigint(20) NOT NULL COMMENT 'PK，自增长序列号',
  `identity_card_num` varchar(30) DEFAULT NULL COMMENT '患者身份证号',
  `name` varchar(60) DEFAULT NULL COMMENT '患者姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '患者性别',
  `birthdate` datetime DEFAULT NULL COMMENT '患者出生日期',
  `address` varchar(400) DEFAULT NULL COMMENT '患者联系地址',
  `phone_num` varchar(20) DEFAULT NULL COMMENT '患者联系电话',
  `mobile_phone_num` varchar(20) DEFAULT NULL COMMENT '患者移动电话',
  `hospital_code` varchar(30) DEFAULT NULL COMMENT '医院的组织机构代码',
  `hospital_name` varchar(140) DEFAULT NULL COMMENT '预约医院名称',
  `department_code` varchar(30) DEFAULT NULL COMMENT '预约科室编码',
  `department_name` varchar(140) DEFAULT NULL COMMENT '预约科室名称',
  `department_location` varchar(200) DEFAULT NULL COMMENT '科室位置',
  `doctor_code` varchar(30) DEFAULT NULL COMMENT '预约医生编码',
  `doctor_name` varchar(60) DEFAULT NULL COMMENT '预约医生姓名',
  `is_expert` int(1) DEFAULT NULL COMMENT '0-普通，1-专家',
  `register_type` int(1) DEFAULT NULL COMMENT '1-普通挂号，2-急诊挂号',
  `workshift_id` varchar(30) DEFAULT NULL COMMENT '班次ID',
  `visit_date` datetime DEFAULT NULL COMMENT '就诊日期',
  `workshift_class` int(1) DEFAULT NULL COMMENT '1-上午，2-下午，3-白天，4-夜间，5-全天',
  `time_point_id` varchar(20) DEFAULT NULL COMMENT '号源ID',
  `visit_series_num` varchar(4) DEFAULT NULL COMMENT '就诊顺序号',
  `time_point_desc` varchar(100) DEFAULT NULL COMMENT '号源描述',
  `plan_visit_time_start` datetime DEFAULT NULL COMMENT '计划就诊开始时间',
  `plan_visit_time_end` datetime DEFAULT NULL COMMENT '计划就诊结束时间',
  `register_fee` decimal(9,2) DEFAULT NULL COMMENT '挂号费用',
  `payment_status` int(1) DEFAULT NULL COMMENT '支付状态',
  `payment_mode` int(1) DEFAULT NULL COMMENT '支付方式',
  `payment_series_num` varchar(50) DEFAULT NULL COMMENT '交易号',
  `payment_date_time` datetime DEFAULT NULL COMMENT '支付时间',
  `register_from` varchar(140) DEFAULT NULL COMMENT '挂号来源名称',
  `register_from_memo` varchar(30) DEFAULT NULL COMMENT '挂号来源备注',
  `regist_operator_name` varchar(60) DEFAULT NULL COMMENT '挂号操作人姓名',
  `regist_date_time` datetime DEFAULT NULL COMMENT '挂号时间',
  `his_register_series_num` varchar(30) DEFAULT NULL COMMENT 'HIS挂号流水号',
  `cancel_flag` int(1) DEFAULT NULL COMMENT '退号标志',
  `cancel_from` varchar(140) DEFAULT NULL COMMENT '退号来源',
  `cancel_from_memo` varchar(30) DEFAULT NULL COMMENT '退号来源备注',
  `cancel_operator_name` varchar(60) DEFAULT NULL COMMENT '退号操作人姓名',
  `cancel_date_time` datetime DEFAULT NULL COMMENT '退号时间',
  `stop_flag` int(1) DEFAULT NULL COMMENT '停诊标志',
  `stop_reason` varchar(400) DEFAULT NULL COMMENT '停诊原因',
  `stop_operator_name` varchar(60) DEFAULT NULL COMMENT '停诊操作人姓名',
  `stop_date_time` datetime DEFAULT NULL COMMENT '停诊时间',
  `visit_id` varchar(30) DEFAULT NULL COMMENT '就诊号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='挂号记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_schedule`
--

LOCK TABLES `hc_schedule` WRITE;
/*!40000 ALTER TABLE `hc_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_visit_bill_index`
--

DROP TABLE IF EXISTS `hc_visit_bill_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_visit_bill_index` (
  `ID` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK，自增长序列号',
  `VISIT_ID` varchar(50) NOT NULL COMMENT '来自于就诊主索引',
  `HIS_BILL_NO` varchar(30) NOT NULL COMMENT '费用单据号码',
  `INVOICE_DATE` datetime DEFAULT NULL COMMENT '发票日期',
  `TOTAL_AMOUNT` float DEFAULT NULL COMMENT '费用总额',
  `REIMBURSE_AMOUNT` float DEFAULT NULL COMMENT '报销金额',
  `PAYMENT_CARD` float DEFAULT NULL COMMENT '银联支付额',
  `PAYMENT_CASH` float DEFAULT NULL COMMENT '现金支付额',
  `RECORD_DATE` datetime DEFAULT NULL COMMENT '上传时间',
  `VOID_FLAG` varchar(30) DEFAULT NULL COMMENT '作废标志',
  `VISIT_HCO_CODE` varchar(30) DEFAULT NULL COMMENT '发生机构编码',
  `VISIT_HCO_NAME` varchar(70) DEFAULT NULL COMMENT '就诊机构名称',
  `WESTERN_MEDICINE` decimal(9,2) DEFAULT NULL COMMENT '西药费',
  `CHS_PATENT_DRUG` decimal(9,2) DEFAULT NULL COMMENT '中成药费',
  `CHS_HERBAL_DRUG` decimal(9,2) DEFAULT NULL COMMENT '中草药费',
  `DIAGNOSIS` decimal(9,2) DEFAULT NULL COMMENT '诊察费',
  `EXAM` decimal(9,2) DEFAULT NULL COMMENT '检查费',
  `LAB_TEST` decimal(9,2) DEFAULT NULL COMMENT '化验费',
  `RADIOLOGY` decimal(9,2) DEFAULT NULL COMMENT '放射费',
  `TREATMENT` decimal(9,2) DEFAULT NULL COMMENT '治疗费',
  `OPERATION` decimal(9,2) DEFAULT NULL COMMENT '手术费',
  `ETHNODRUG` decimal(9,2) DEFAULT NULL COMMENT '民族药费',
  `SPECIAL_EXAM` decimal(9,2) DEFAULT NULL COMMENT '特检费',
  `TRANSBLOOD` decimal(9,2) DEFAULT NULL COMMENT '输血费',
  `BED` decimal(9,2) DEFAULT NULL COMMENT '床位费',
  `NURSING` decimal(9,2) DEFAULT NULL COMMENT '护理费',
  `PREPARATION` decimal(9,2) DEFAULT NULL COMMENT '自制制剂费',
  `CHS_PRESCRIPTION` decimal(9,2) DEFAULT NULL COMMENT '辩证处方费',
  `OTHER` decimal(9,2) DEFAULT NULL COMMENT '其他费用',
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_visit_bill_index`
--

LOCK TABLES `hc_visit_bill_index` WRITE;
/*!40000 ALTER TABLE `hc_visit_bill_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_visit_bill_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_visit_master_index`
--

DROP TABLE IF EXISTS `hc_visit_master_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_visit_master_index` (
  `visit_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK，内部流水号，连续自增，发生机构唯一标识该事件的编号；通过此信息可在院内唯一确定此行为并查到详明细；此序号由患者到院内就诊时，由院内系统向中心报到时，中心派发的唯一码；',
  `identity_no` varchar(30) DEFAULT NULL COMMENT '平台内个人唯一标识',
  `name` varchar(60) DEFAULT NULL COMMENT '患者姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '患者性别',
  `DATE_OF_BIRTH` datetime DEFAULT NULL COMMENT '患者生日',
  `VISIT_START_DATE_TIME` datetime DEFAULT NULL COMMENT '就诊开始日期',
  `VISIT_END_DATE_TIME` datetime DEFAULT NULL COMMENT '就诊结束日期',
  `visit_type` varchar(2) DEFAULT NULL COMMENT '就诊类别1-普通门诊2-急诊3-体检4-住院',
  `visit_description` varchar(100) DEFAULT NULL COMMENT '就诊描述',
  `visit_hco_code` varchar(30) DEFAULT NULL COMMENT '就诊机构编码',
  `visit_hco_name` varchar(140) DEFAULT NULL COMMENT '就诊机构名称',
  `his_visit_id` varchar(30) DEFAULT NULL COMMENT '就诊机构内唯一就诊号，例如，门诊号或住院号',
  `his_dept_code` varchar(30) DEFAULT NULL COMMENT '就诊科室编码',
  `his_dept_name` varchar(140) DEFAULT NULL COMMENT '就诊科室名称',
  `insurance_type` varchar(2) DEFAULT NULL COMMENT '医疗费用支付方式1城镇职工基本医疗保险2城镇居民基本医疗保险3新型农村合作医疗4贫困救助5商业医疗保险6全公费7全自费9其他',
  `pay_type` varchar(1) DEFAULT NULL COMMENT '支付类型0-普通正常流程1-医保先看病后付费2-银联卡先看病后付费',
  `doctor_code` varchar(30) DEFAULT NULL COMMENT '接诊医生编码',
  `doctor_name` varchar(60) DEFAULT NULL COMMENT '接诊医生姓名',
  `DOCTOR_TEL` varchar(20) DEFAULT NULL COMMENT '接诊医生电话',
  `DOCTOR_IDENTITY_CARD_NUM` varchar(20) DEFAULT NULL COMMENT '接诊医生身份证号',
  `archive_date` datetime DEFAULT NULL COMMENT '就诊确认数据的上报的公元纪年日期',
  `upload_flag` int(11) DEFAULT NULL COMMENT '上传标志0-未上传，1-已上传',
  `del_sign` int(11) DEFAULT NULL COMMENT '删除标志',
  `del_user_code` varchar(20) DEFAULT NULL COMMENT '删除操作者编码',
  `del_user_name` varchar(50) DEFAULT NULL COMMENT '删除者名称',
  `del_datetime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`visit_id`),
  KEY `identityno` (`identity_no`),
  KEY `visitendtime` (`VISIT_END_DATE_TIME`),
  KEY `visitHcoCode` (`visit_hco_code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='就诊主索引';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_visit_master_index`
--

LOCK TABLES `hc_visit_master_index` WRITE;
/*!40000 ALTER TABLE `hc_visit_master_index` DISABLE KEYS */;
INSERT INTO `hc_visit_master_index` VALUES (2,'332428199202193435','刘小林','M','1992-02-19 00:00:00','2015-11-23 15:16:58','2015-11-24 17:29:37','1','普通门诊','110214','省妇保','114196','2367','妇保科','1','0','2501','李学文','17384955502','2501','2015-11-23 15:16:58',0,NULL,NULL,NULL,NULL),(3,'332428199202193435','刘小林','F','1992-02-19 00:00:00','2015-11-23 15:22:32','2015-11-24 17:29:37','1','普通门诊','110215','梦想小镇卫生所','114196','2367','妇保科','1','0','2501','李学文','17384955502','2501','2015-11-23 15:22:32',0,NULL,NULL,NULL,NULL),(4,'332428199202193456','苗永峰','M','1992-02-19 00:00:00','2015-11-23 15:22:32','2015-11-24 17:29:37','1','普通门诊','110215','梦想小镇卫生所','114196','2367','保健科','1','0','2501','李学文','17384955502','2501','2015-11-23 15:22:32',0,NULL,NULL,NULL,NULL),(5,'332428199202193458','周润华','M','1992-02-19 00:00:00','2015-11-23 15:22:32','2015-11-24 17:29:37','1','普通门诊','110214','省妇保','114196','2367','妇保科','1','0','2501','李学文','17384955502','2501','2015-11-23 15:22:32',0,NULL,NULL,NULL,NULL),(6,'332428199202193459','陈华','M','1992-02-19 00:00:00','2015-11-23 15:22:32','2015-11-24 17:29:37','1','普通门诊','110214','省妇保','114196','2367','妇保科','1','0','2501','李学文','17384955502','2501','2015-11-23 15:22:32',0,NULL,NULL,NULL,NULL),(7,'332428199202193460','杨琛鹏','F','1992-02-19 00:00:00','2015-11-23 15:22:32','2015-11-24 17:29:37','1','普通门诊','110214','省妇保','114196','2367','妇保科','1','0','2501','李学文','17384955502','2501','2015-11-23 15:22:32',0,NULL,NULL,NULL,NULL),(8,'123456199010109876','abing','m',NULL,NULL,'2015-11-23 17:01:58',NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'332428199002193490','张继花','F','1990-02-19 00:00:00','2015-11-24 16:30:20','2015-11-24 17:29:37','1','普通门诊','110215','梦想小镇卫生所','114196','2367','妇保科','1','0','2502','李欣文','17384955502','2501','2015-11-24 16:30:20',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hc_visit_master_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthcare_organization`
--

DROP TABLE IF EXISTS `healthcare_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `healthcare_organization` (
  `HCO_ID` int(12) NOT NULL AUTO_INCREMENT COMMENT '卫生服务机构标识',
  `HCO_NAME` varchar(100) NOT NULL COMMENT '机构名称',
  `DIVISION_ID` int(20) NOT NULL COMMENT '行政区划标识',
  `HCO_TYPE` varchar(4) NOT NULL COMMENT '卫生机构类别',
  `HOSPITAL_CLASS` varchar(2) DEFAULT NULL COMMENT '医院等级',
  `HCO_CODE` varchar(23) NOT NULL COMMENT '卫生机构（组织）代码',
  `CONTACT_NAME` varchar(30) DEFAULT NULL COMMENT '联系人',
  `CONTACT_TEL` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `ADDRESS` varchar(200) DEFAULT NULL COMMENT '地址',
  `RESPONSIBLE_PERSON` varchar(30) DEFAULT NULL COMMENT '负责人',
  `REMARKS` varchar(500) DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`HCO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthcare_organization`
--

LOCK TABLES `healthcare_organization` WRITE;
/*!40000 ALTER TABLE `healthcare_organization` DISABLE KEYS */;
INSERT INTO `healthcare_organization` VALUES (1,'杭州一院',1,'市属','甲','12345678901234567890123',NULL,NULL,NULL,NULL,NULL,'3915-12-24 12:55:55'),(2,'杭州23252639院',1,'市属','甲','23252639',NULL,NULL,NULL,NULL,NULL,'3915-12-24 12:55:55'),(3,'杭州993841426院',1,'市属','甲','993841426',NULL,NULL,NULL,NULL,NULL,'2015-11-24 12:55:55');
/*!40000 ALTER TABLE `healthcare_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_division`
--

DROP TABLE IF EXISTS `sys_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_division` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `DIVISION_CODE` varchar(30) DEFAULT NULL COMMENT '区划编码',
  `DIVISION_NAME` varchar(100) DEFAULT NULL COMMENT '区划名称',
  `DIVISION_TYPE` varchar(10) DEFAULT NULL COMMENT '1.省、2.市、3.县',
  `UP_DIVISION` varchar(30) DEFAULT NULL COMMENT '上级区划',
  `POSTAL_CODE` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `ORDER_NO` int(11) DEFAULT NULL COMMENT '顺序号',
  `PY_CODE` varchar(20) DEFAULT NULL COMMENT '拼音码',
  `INVALID_FLAG` varchar(1) DEFAULT NULL COMMENT '作废标志',
  `CREATER` int(11) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建日期',
  `MODIFIER` int(11) DEFAULT NULL COMMENT '修改人',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SYS_行政区划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_division`
--

LOCK TABLES `sys_division` WRITE;
/*!40000 ALTER TABLE `sys_division` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_terminology`
--

DROP TABLE IF EXISTS `ts_terminology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_terminology` (
  `ID` int(11) NOT NULL COMMENT '编号',
  `DOMAIN_ID` int(11) DEFAULT NULL COMMENT '术语域编号',
  `CODE` varchar(50) DEFAULT NULL COMMENT '值',
  `MEANING` varchar(255) DEFAULT NULL COMMENT '值含义',
  `DESCN` varchar(255) DEFAULT NULL COMMENT '描述',
  `ISSTANDARD` varchar(1) DEFAULT NULL COMMENT '是否为标准',
  `INPUT_CODE` varchar(50) DEFAULT NULL COMMENT '输入码',
  `LOW_LIMIT` varchar(100) DEFAULT NULL COMMENT '下限值',
  `HIGH_LIMIT` varchar(100) DEFAULT NULL COMMENT '上限值',
  `DEFAULT_FLAG` varchar(1) DEFAULT NULL COMMENT '默认标志',
  `INVALID_FLAG` varchar(1) DEFAULT NULL COMMENT '作废标志',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TS_术语表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_terminology`
--

LOCK TABLES `ts_terminology` WRITE;
/*!40000 ALTER TABLE `ts_terminology` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_terminology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_terminology_domain`
--

DROP TABLE IF EXISTS `ts_terminology_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_terminology_domain` (
  `ID` int(11) NOT NULL COMMENT '编号',
  `SYSTEM_ID` int(11) DEFAULT NULL COMMENT '所属术语系统',
  `CODE` varchar(50) DEFAULT NULL COMMENT '代号',
  `VERSION` varchar(50) DEFAULT NULL COMMENT '版本号',
  `INPUT_CODE` varchar(50) DEFAULT NULL COMMENT '输入码',
  `CNAME` varchar(100) DEFAULT NULL COMMENT '中文名称',
  `ENAME` varchar(100) DEFAULT NULL COMMENT '英文名称',
  `DESCN` varchar(255) DEFAULT NULL COMMENT '描述',
  `INVALID_FLAG` varchar(1) DEFAULT NULL COMMENT '作废标志',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TS_术语域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_terminology_domain`
--

LOCK TABLES `ts_terminology_domain` WRITE;
/*!40000 ALTER TABLE `ts_terminology_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_terminology_domain` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-25 11:13:39

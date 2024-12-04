CREATE DATABASE IF NOT EXISTS message5 DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci; 
use message5; 
-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: message5
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `mc_comment`
--

DROP TABLE IF EXISTS `mc_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mc_comment` (
  `ID` varchar(200) NOT NULL,
  `CONTENT` longtext,
  `ATTACHMENT` longtext,
  `CREATE_TIME` datetime DEFAULT NULL,
  `SENDER` varchar(200) DEFAULT NULL,
  `SENDER_ID` varchar(200) DEFAULT NULL,
  `MESSAGE_ID` varchar(200) DEFAULT NULL,
  `COMMENT_ID` varchar(200) DEFAULT NULL,
  `TO_USER` varchar(200) DEFAULT NULL,
  `TO_USER_ID` varchar(200) DEFAULT NULL,
  `MODULE` varchar(200) DEFAULT NULL,
  `DOMAIN_ID` varchar(200) DEFAULT NULL,
  `TO_CONTENT` varchar(200) DEFAULT NULL,
  `IS_READ` bit(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_ID` (`ID`) USING BTREE,
  KEY `index_MESSAGE_ID` (`MESSAGE_ID`) USING BTREE,
  KEY `index_TO_USER_ID` (`TO_USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mc_comment`
--

LOCK TABLES `mc_comment` WRITE;
/*!40000 ALTER TABLE `mc_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mc_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mc_message`
--

DROP TABLE IF EXISTS `mc_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mc_message` (
  `ID` varchar(200) NOT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `CONTENT` longtext,
  `ATTACHMENT` longtext,
  `CREATE_TIME` datetime DEFAULT NULL,
  `SENDER` varchar(200) DEFAULT NULL,
  `SENDER_DEPT` varchar(200) DEFAULT NULL,
  `SENDER_ID` varchar(200) DEFAULT NULL,
  `SENDER_DEPT_ID` varchar(200) DEFAULT NULL,
  `SCOPE` int(11) DEFAULT NULL,
  `RECEIVER_ID` longtext,
  `RECEIVER_DEPT_ID` longtext,
  `COMMENT_COUNT` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `MODULE` varchar(200) DEFAULT NULL,
  `DOMAIN_ID` varchar(200) DEFAULT NULL,
  `IS_COMMENT` bit(1) DEFAULT NULL,
  `IS_STICKY` bit(1) DEFAULT NULL,
  `RECEIVER_INFO` longtext,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_ID` (`ID`) USING BTREE,
  KEY `index_SENDER_ID` (`SENDER_ID`) USING BTREE,
  KEY `index_MODULE` (`MODULE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mc_message`
--

LOCK TABLES `mc_message` WRITE;
/*!40000 ALTER TABLE `mc_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mc_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mc_notice`
--

DROP TABLE IF EXISTS `mc_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mc_notice` (
  `ID` varchar(200) NOT NULL,
  `IS_READ` bit(1) DEFAULT NULL,
  `SUMMARY` longtext,
  `CONTENT` longtext,
  `TO_USER_ID` varchar(200) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `LINK_PARAMS` longtext,
  `MODULE` varchar(200) DEFAULT NULL,
  `DOMAIN_ID` varchar(200) DEFAULT NULL,
  `SUBJECT_TYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_ID` (`ID`) USING BTREE,
  KEY `index_TO_USER_ID` (`TO_USER_ID`) USING BTREE,
  KEY `index_MODULE` (`MODULE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mc_notice`
--

LOCK TABLES `mc_notice` WRITE;
/*!40000 ALTER TABLE `mc_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mc_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mc_notification`
--

DROP TABLE IF EXISTS `mc_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mc_notification` (
  `ID` varchar(200) NOT NULL,
  `SENDER` varchar(200) DEFAULT NULL,
  `SENDER_ID` varchar(200) DEFAULT NULL,
  `RECEIVER_ID` varchar(200) DEFAULT NULL,
  `MESSAGE_ID` varchar(200) DEFAULT NULL,
  `MESSAGE_TYPE` varchar(200) DEFAULT NULL,
  `MODULE` varchar(200) DEFAULT NULL,
  `LINK_PARAMS` longtext,
  `DOMAIN_ID` varchar(200) DEFAULT NULL,
  `SUMMARY` longtext,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_ID` (`ID`) USING BTREE,
  KEY `index_MESSAGE_ID` (`MESSAGE_ID`) USING BTREE,
  KEY `index_SENDER_ID` (`SENDER_ID`) USING BTREE,
  KEY `index_RECEIVER_ID` (`RECEIVER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mc_notification`
--

LOCK TABLES `mc_notification` WRITE;
/*!40000 ALTER TABLE `mc_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `mc_notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03  8:47:11

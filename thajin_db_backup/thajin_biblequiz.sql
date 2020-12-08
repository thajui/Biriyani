-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: thajin_biblequiz
-- ------------------------------------------------------
-- Server version	5.6.45

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
-- Table structure for table `bq_admin_types`
--

DROP TABLE IF EXISTS `bq_admin_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_admin_types` (
  `rt_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_role` varchar(20) NOT NULL,
  `is_active` tinyint(2) NOT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_admin_types`
--

LOCK TABLES `bq_admin_types` WRITE;
/*!40000 ALTER TABLE `bq_admin_types` DISABLE KEYS */;
INSERT INTO `bq_admin_types` VALUES (1,'superadmin',1),(2,'admin',2);
/*!40000 ALTER TABLE `bq_admin_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_answer_types`
--

DROP TABLE IF EXISTS `bq_answer_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_answer_types` (
  `at_id` int(11) NOT NULL AUTO_INCREMENT,
  `ans_type` varchar(25) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`at_id`),
  KEY `ans_type_1` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_answer_types`
--

LOCK TABLES `bq_answer_types` WRITE;
/*!40000 ALTER TABLE `bq_answer_types` DISABLE KEYS */;
INSERT INTO `bq_answer_types` VALUES (1,'True','2020-01-10 00:00:00',1),(2,'False','2020-01-10 15:06:56',1);
/*!40000 ALTER TABLE `bq_answer_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_answers`
--

DROP TABLE IF EXISTS `bq_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_answers` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id of the Answer',
  `qns_id` int(11) NOT NULL COMMENT 'Id of the Questions',
  `ans_type` int(11) NOT NULL COMMENT 'Is ans correct or wrong',
  `answer` text CHARACTER SET utf8 NOT NULL COMMENT 'answer content',
  `is_active` tinyint(2) DEFAULT NULL COMMENT 'is available or not 1-active 2-deac',
  `ans_on` datetime NOT NULL COMMENT 'answer created on',
  PRIMARY KEY (`ans_id`),
  KEY `bq_ans_1` (`qns_id`),
  KEY `bq_ans_2` (`ans_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_answers`
--

LOCK TABLES `bq_answers` WRITE;
/*!40000 ALTER TABLE `bq_answers` DISABLE KEYS */;
INSERT INTO `bq_answers` VALUES (1,1,1,'test crt1',1,'2020-02-04 12:44:00'),(2,1,2,'test wrng1',1,'2020-02-04 12:44:00'),(3,1,2,'test wrng2',1,'2020-02-04 12:44:00'),(4,1,2,'test wrng3',1,'2020-02-04 12:44:00'),(5,1,2,'test wrng4',1,'2020-02-04 12:44:00'),(6,2,1,'2',1,'2020-02-04 13:00:10'),(7,2,2,'1',1,'2020-02-04 13:00:10'),(8,3,1,'test 3',1,'2020-02-04 17:39:43'),(9,3,2,'test 4',1,'2020-02-04 17:39:43'),(10,3,2,'test 5',1,'2020-02-04 17:39:43'),(11,3,2,'test 6',1,'2020-02-04 17:39:43'),(12,3,2,'test 7',1,'2020-02-04 17:39:43'),(13,4,1,'1',1,'2020-02-04 17:40:49'),(14,4,2,'2',1,'2020-02-04 17:40:49'),(15,5,1,'??????,?????',1,'2020-07-13 22:33:53'),(16,5,2,'????????,????????',1,'2020-07-13 22:33:53'),(17,5,2,'????,?????',1,'2020-07-13 22:33:53'),(18,5,2,'????, ??????',1,'2020-07-13 22:33:53'),(19,5,2,'???????,????????',1,'2020-07-13 22:33:53'),(20,6,1,'వెలుగు,చీకటి',1,'2020-07-13 22:40:52'),(21,6,2,'సూర్యుడు,చంద్రుడు',1,'2020-07-13 22:40:52'),(22,6,2,'హవ్వ,ఆదాము',1,'2020-07-13 22:40:52'),(23,6,2,'భూమి, ఆకాశము',1,'2020-07-13 22:40:52'),(24,6,2,'మొక్కలు,జంతువులు',1,'2020-07-13 22:40:52');
/*!40000 ALTER TABLE `bq_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_books`
--

DROP TABLE IF EXISTS `bq_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_books` (
  `bk_id` int(11) NOT NULL AUTO_INCREMENT,
  `testament` tinyint(2) NOT NULL COMMENT 'Old or New',
  `book_name_tel` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'Name of the book in telugu',
  `book_name_eng` varchar(150) CHARACTER SET latin1 NOT NULL COMMENT 'Name of the book in English',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`bk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_books`
--

LOCK TABLES `bq_books` WRITE;
/*!40000 ALTER TABLE `bq_books` DISABLE KEYS */;
INSERT INTO `bq_books` VALUES (1,1,'ఆదికాండము','','2020-01-19 18:37:28'),(2,1,'నిర్గమకాండము','','2020-01-19 18:38:23'),(3,1,'లేవీయకాండము','','2020-01-19 00:00:00'),(4,1,'సంఖ్యాకాండము','','2020-01-19 00:00:00'),(5,1,'ద్వితియోపదేశకాండము','','2020-01-19 00:00:00'),(6,1,'యొహోషువ','','2020-01-19 00:00:00'),(7,1,'న్యాయాధిపతులు','','2020-01-19 00:00:00'),(8,1,'రూతు','','2020-01-19 00:00:00'),(9,1,'సమూయేలు మొదటి గ్రంధము','','2020-01-19 00:00:00'),(10,1,'సమూయేలు రెండవ గ్రంధము','','2020-01-19 00:00:00'),(11,1,'రాజులు మొదటి గ్రంధము','','2020-01-19 00:00:00'),(12,1,'రాజులు రెండవ గ్రంధము','','2020-01-19 00:00:00'),(13,1,'దినవృత్తాంతములు మొదటి గ్రంధము','','2020-01-19 00:00:00'),(14,1,'దినవృత్తాంతములుు రెండవ గ్రంధము','','2020-01-19 00:00:00'),(15,1,'ఎజ్రా','','2020-01-19 00:00:00'),(16,1,'నెహెమ్యా','','2020-01-19 00:00:00'),(17,1,'ఎస్తేరు','','2020-01-19 00:00:00'),(18,1,'యోబు గ్రంధము','','2020-01-19 00:00:00'),(19,1,'కీర్తనల గ్రంధము','','2020-01-19 00:00:00'),(20,1,'సామెతలు','','2020-01-19 00:00:00'),(21,1,'ప్రసంగి','','2020-01-19 00:00:00'),(22,1,'పరమగీతము','','2020-01-19 00:00:00'),(23,1,'యెషయా గ్రంధము','','2020-01-19 00:00:00'),(24,1,'యిర్మియా','','2020-01-19 00:00:00'),(25,1,'విలపవాక్యములు','','2020-01-19 00:00:00'),(26,1,'యెహెజ్కేలు','','2020-01-19 00:00:00'),(27,1,'దానియేలు','','2020-01-19 00:00:00'),(28,1,'హోషేయ','','2020-01-19 00:00:00'),(29,1,'యోవేలు','','2020-01-19 00:00:00'),(30,1,'ఆమోసు','','2020-01-19 00:00:00'),(31,1,'ఓబద్యా','','2020-01-19 00:00:00'),(32,1,'యోనా','','2020-01-19 00:00:00'),(33,1,'మీకా','','2020-01-19 00:00:00'),(34,1,'నహూము','','2020-01-19 00:00:00'),(35,1,'హబక్కూకు','','2020-01-19 00:00:00'),(36,1,'జెఫన్యా','','2020-01-19 00:00:00'),(37,1,'హగ్గయి','','2020-01-19 00:00:00'),(38,1,'జెకర్యా','','2020-01-19 00:00:00'),(39,1,'మలాకీ','','2020-01-19 00:00:00'),(40,2,'మత్తయి సువార్త','','2020-01-19 19:27:00'),(41,2,'మార్కు సువార్త','','2020-01-19 19:27:00'),(42,2,'లూకా సువార్త','','2020-01-19 19:27:00'),(43,2,'యోహాను సువార్త','','2020-01-19 19:27:00'),(44,2,'అపొస్తలుల కార్యములు గ్రంధము','','2020-01-19 19:27:00'),(45,2,'రోమీయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(46,2,'I కొరింధీయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(47,2,'II కొరింధీయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(48,2,'గలతీయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(49,2,'ఎఫెసీయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(50,2,'ఫిలిప్పీయులకు వ్రాసిన పత్రిక','','2020-01-19 00:00:00'),(51,2,'కొలస్సయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(52,2,'I ధెస్సలొనీకయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(53,2,'II ధెస్సలొనీకయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(54,2,'I తిమోతికి వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(55,2,'II తిమోతికి వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(56,2,'తీతుకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(57,2,'ఫిలేమోనుకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(58,2,'హెబ్రీయులకు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(59,2,'యాకోబు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(60,2,'I పేతురు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(61,2,'II పేతురు వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(62,2,'I యోహాను వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(63,2,'II యోహాను వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(64,2,'III యోహాను వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(65,2,'యూదా వ్రాసిన పత్రిక','','2020-01-19 19:27:00'),(66,2,'ప్రకటన గ్రంధము','','2020-01-19 19:27:00');
/*!40000 ALTER TABLE `bq_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_num_chapters`
--

DROP TABLE IF EXISTS `bq_num_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_num_chapters` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `bk_id` int(11) NOT NULL,
  `num_of_chapters` varchar(10) NOT NULL COMMENT 'No of chapters in a book',
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ch_id`),
  KEY `bq_ch_1` (`bk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_num_chapters`
--

LOCK TABLES `bq_num_chapters` WRITE;
/*!40000 ALTER TABLE `bq_num_chapters` DISABLE KEYS */;
INSERT INTO `bq_num_chapters` VALUES (1,1,'50','2020-01-19 17:49:00'),(2,2,'40','2020-01-19 19:54:41'),(3,3,'27','2020-01-19 19:54:41'),(4,4,'36','2020-01-19 19:54:41'),(5,5,'34','2020-01-19 19:54:41'),(6,6,'24','2020-01-19 19:54:41');
/*!40000 ALTER TABLE `bq_num_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_num_verses`
--

DROP TABLE IF EXISTS `bq_num_verses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_num_verses` (
  `vr_id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_id` int(11) NOT NULL,
  `num_of_verses` varchar(10) NOT NULL COMMENT 'No of verses in a chapter',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`vr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_num_verses`
--

LOCK TABLES `bq_num_verses` WRITE;
/*!40000 ALTER TABLE `bq_num_verses` DISABLE KEYS */;
/*!40000 ALTER TABLE `bq_num_verses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_question_types`
--

DROP TABLE IF EXISTS `bq_question_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_question_types` (
  `qt_id` int(11) NOT NULL AUTO_INCREMENT,
  `qns_type` varchar(150) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`qt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_question_types`
--

LOCK TABLES `bq_question_types` WRITE;
/*!40000 ALTER TABLE `bq_question_types` DISABLE KEYS */;
INSERT INTO `bq_question_types` VALUES (1,'Multiple Choice','2020-01-21 15:34:35',NULL),(2,'True or False','2020-01-21 15:34:35',NULL);
/*!40000 ALTER TABLE `bq_question_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_questions`
--

DROP TABLE IF EXISTS `bq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_questions` (
  `qns_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Question_id',
  `question` text CHARACTER SET utf8 NOT NULL COMMENT 'question content',
  `qns_type` int(11) NOT NULL COMMENT 'Multiple choice or trueorflase qns',
  `qns_by` int(11) NOT NULL COMMENT 'Who created qns',
  `qns_on` datetime NOT NULL COMMENT 'When created qns',
  `is_active` tinyint(2) NOT NULL COMMENT 'is available or not',
  `qns_attempts` varchar(10) DEFAULT NULL COMMENT 'How many times it is attempted',
  `qns_attempts_corct` varchar(10) DEFAULT NULL COMMENT 'How many times it is attempted correct',
  `qns_attempts_wrng` varchar(10) DEFAULT NULL COMMENT 'How many times it is attempted wrong',
  PRIMARY KEY (`qns_id`),
  KEY `bq_qns_1` (`qns_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_questions`
--

LOCK TABLES `bq_questions` WRITE;
/*!40000 ALTER TABLE `bq_questions` DISABLE KEYS */;
INSERT INTO `bq_questions` VALUES (1,'test question 1',1,0,'2020-02-04 12:44:00',1,NULL,NULL,NULL),(2,'test true or false',2,0,'2020-02-04 13:00:10',1,NULL,NULL,NULL),(3,'test 2',1,0,'2020-02-04 17:39:43',1,NULL,NULL,NULL),(4,'true 2',2,0,'2020-02-04 17:40:48',1,NULL,NULL,NULL),(5,'?????? ????? ?????? ??? ???????????',1,0,'2020-07-13 22:33:53',1,NULL,NULL,NULL),(6,'దేవుడు మొదటి దినమున ఏమి కలుగజేసెను?',1,0,'2020-07-13 22:40:52',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_reference`
--

DROP TABLE IF EXISTS `bq_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_reference` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `qns_id` int(11) NOT NULL COMMENT 'Unique id of the question',
  `ref_book` int(11) NOT NULL COMMENT 'Name of the book',
  `ref_chapter` int(11) NOT NULL COMMENT 'Number of the chapter in the book',
  `ref_verse` int(11) NOT NULL COMMENT 'Number of the verse in the chapter',
  PRIMARY KEY (`ref_id`),
  KEY `bq_ref_1` (`qns_id`),
  KEY `bq_ref_2` (`ref_book`),
  KEY `bq_ref_3` (`ref_chapter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_reference`
--

LOCK TABLES `bq_reference` WRITE;
/*!40000 ALTER TABLE `bq_reference` DISABLE KEYS */;
INSERT INTO `bq_reference` VALUES (1,1,1,1,2),(2,2,2,5,13),(3,3,2,2,2),(4,4,3,15,14),(5,5,1,1,5),(6,6,1,1,5);
/*!40000 ALTER TABLE `bq_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_test_qns`
--

DROP TABLE IF EXISTS `bq_test_qns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_test_qns` (
  `tq_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'Who taken the Test',
  `test_id` int(11) NOT NULL COMMENT 'Unique id of the test',
  `qns_id` int(11) NOT NULL COMMENT 'Unique id of the qns',
  `crt_ans` int(11) NOT NULL COMMENT 'Correct Ans id',
  `wrng_ans_1` int(11) NOT NULL COMMENT 'wrong ans id',
  `wrng_ans_2` int(11) DEFAULT NULL COMMENT 'wrong ans id',
  `wrng_ans_3` int(11) DEFAULT NULL COMMENT 'wrng_ans_2',
  PRIMARY KEY (`tq_id`),
  KEY `bq_tq_1` (`qns_id`),
  KEY `bq_tq_2` (`test_id`),
  KEY `bq_tq_3` (`crt_ans`),
  KEY `bq_tq_4` (`wrng_ans_1`),
  KEY `bq_tq_5` (`wrng_ans_2`),
  KEY `bq_tq_6` (`wrng_ans_3`),
  KEY `bq_tq_7` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='After taken the test, all qns will be enter here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_test_qns`
--

LOCK TABLES `bq_test_qns` WRITE;
/*!40000 ALTER TABLE `bq_test_qns` DISABLE KEYS */;
/*!40000 ALTER TABLE `bq_test_qns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_tests_create`
--

DROP TABLE IF EXISTS `bq_tests_create`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_tests_create` (
  `ts_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(250) NOT NULL COMMENT 'Name of the test',
  `test_on_book` varchar(20) NOT NULL COMMENT 'Test created on which book',
  `test_duration` varchar(25) NOT NULL COMMENT 'Time of the test',
  `num_qns` varchar(10) NOT NULL COMMENT 'How many qns in the test',
  `test_start_on` varchar(15) NOT NULL COMMENT 'Start date of the test',
  `test_end_on` varchar(15) NOT NULL COMMENT 'End date of the test',
  `test_marks` varchar(10) NOT NULL COMMENT 'Marks of the test',
  `test_created_on` varchar(25) NOT NULL COMMENT 'When is the test created',
  `test_created_by` int(11) NOT NULL COMMENT 'Who is created the test',
  PRIMARY KEY (`ts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_tests_create`
--

LOCK TABLES `bq_tests_create` WRITE;
/*!40000 ALTER TABLE `bq_tests_create` DISABLE KEYS */;
INSERT INTO `bq_tests_create` VALUES (1,'new test','2','3:10','45','02/24/2020','02/29/2020','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `bq_tests_create` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bq_users`
--

DROP TABLE IF EXISTS `bq_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bq_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(250) NOT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(33) NOT NULL,
  `profile_pic` varchar(150) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `is_active` tinyint(2) NOT NULL,
  `created_date_time` datetime NOT NULL,
  `de_activated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bq_users`
--

LOCK TABLES `bq_users` WRITE;
/*!40000 ALTER TABLE `bq_users` DISABLE KEYS */;
INSERT INTO `bq_users` VALUES (1,'Gummadi Surendra','8341876457','suren','e10adc3949ba59abbe56e057f20f883e','20200713105102.jpg','',1,'2019-12-19 15:48:54',NULL),(2,'Gummadi Surendra','9638527401','Suren123','ed2b1f468c5f915f3f1cf75d7068baae','','',1,'2019-12-19 15:56:11',NULL),(3,'Surendra G','9640689945','Suren456','e10adc3949ba59abbe56e057f20f883e','','',1,'2019-12-19 15:59:27',NULL),(4,'Surendra G','8523697410','mls123','e10adc3949ba59abbe56e057f20f883e','','',1,'2019-12-19 16:01:03',NULL),(5,'Time G','9856410237','suren789','e10adc3949ba59abbe56e057f20f883e','','',1,'2019-12-19 16:02:23',NULL),(6,'Time G','9856410237','suren741','e10adc3949ba59abbe56e057f20f883e','','',1,'2019-12-19 16:07:15',NULL),(7,'Time G','9856410237','suren147','e10adc3949ba59abbe56e057f20f883e','','',1,'2019-12-19 16:08:27',NULL),(8,'Time G','9856410237','suren258','e10adc3949ba59abbe56e057f20f883e','','',1,'2019-12-19 16:08:53',NULL),(9,'why it is ','9852360147','surendra','e10adc3949ba59abbe56e057f20f883e','20200109051024.png','',1,'2019-12-19 16:15:35',NULL),(10,'Jyothi','9856363652','karuna','733d7be2196ff70efaf6913fc8bdcabf','','',1,'2019-12-28 17:43:53',NULL),(11,'sdfas','9874562013','suren8','a709909b1ea5c2bee24248203b1728a5','','',1,'2019-12-28 17:52:05',NULL),(12,'fsdfsadf','9654782013','suren9','fb62579e990da4e2a8f15c3d1e123438','','',1,'2019-12-28 17:53:44',NULL),(13,'kjflaksj','9632014587','suren77','c8be3be0fc661008ffa807e59f723b68','','',1,'2019-12-28 17:54:28',NULL),(14,'me','8765412322','mine','e10adc3949ba59abbe56e057f20f883e','','',1,'2019-12-31 12:45:15',NULL);
/*!40000 ALTER TABLE `bq_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 15:01:58

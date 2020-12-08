-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: thajin_outdoorphotographer
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
-- Table structure for table `odp_photographer_diary`
--

DROP TABLE IF EXISTS `odp_photographer_diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odp_photographer_diary` (
  `opd_id` int(11) NOT NULL AUTO_INCREMENT,
  `ph_grapher_id` int(11) NOT NULL COMMENT 'Id of the photographer',
  `event_date` date NOT NULL,
  `event_time` varchar(25) DEFAULT NULL,
  `event_type` varchar(250) DEFAULT NULL,
  `description` text,
  `event_location` varchar(250) NOT NULL,
  `created_date_time` datetime NOT NULL,
  PRIMARY KEY (`opd_id`),
  KEY `pg_id_dry_1` (`ph_grapher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odp_photographer_diary`
--

LOCK TABLES `odp_photographer_diary` WRITE;
/*!40000 ALTER TABLE `odp_photographer_diary` DISABLE KEYS */;
INSERT INTO `odp_photographer_diary` VALUES (1,2,'2020-03-18',NULL,NULL,'Marriage Function','Rajahmundry','2020-03-13 17:38:35'),(2,2,'2020-03-24',NULL,NULL,'Birthday Event','Hyderabad','2020-03-13 17:43:13'),(3,28,'2020-03-04',NULL,NULL,'ddd','wedding','2020-03-15 09:04:01'),(4,28,'2020-03-04',NULL,NULL,'df','wedding','2020-03-15 09:04:15'),(5,30,'2020-06-25',NULL,NULL,'gjh','hj','2020-06-24 19:21:11'),(6,11,'2020-07-05',NULL,NULL,'vv','vcv','2020-07-28 11:37:33'),(7,2,'2020-08-06',NULL,NULL,'i have working on this day ','Testing','2020-08-06 08:33:24'),(8,26,'2020-09-02',NULL,NULL,'gfh','gh','2020-09-27 17:28:11');
/*!40000 ALTER TABLE `odp_photographer_diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odp_photographers`
--

DROP TABLE IF EXISTS `odp_photographers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odp_photographers` (
  `pg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL COMMENT 'Name of the photographer',
  `email` varchar(250) NOT NULL COMMENT 'Name of the photographer',
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL COMMENT 'Password of the user',
  `state` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `city` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `experience` varchar(10) NOT NULL,
  `cam_model` varchar(100) NOT NULL,
  `association_id_card` varchar(150) DEFAULT NULL,
  `identity_card` varchar(150) DEFAULT NULL,
  `profile_pic` varchar(150) DEFAULT NULL,
  `is_active` tinyint(2) NOT NULL,
  `created_date_time` datetime NOT NULL,
  `files_location` varchar(300) DEFAULT NULL COMMENT 'Location of the folder contains user files',
  PRIMARY KEY (`pg_id`),
  KEY `odp_st_1` (`state`),
  KEY `odp_pos_2` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odp_photographers`
--

LOCK TABLES `odp_photographers` WRITE;
/*!40000 ALTER TABLE `odp_photographers` DISABLE KEYS */;
INSERT INTO `odp_photographers` VALUES (2,'Suma','surendra.g@time4education.com','8341876457','912ec803b2ce49e4a541068d495ab570',1,2,'Rajahmundry','Gopalapuram','534316','4 yrs','CAM-1234','assc_id_card_20200308084404.jpg','identity_card_pic_20200308082855.jpg','profile_pic_20200312055153.png',1,'2020-02-29 17:16:35','fsadf_20200229051635'),(11,'Surendra','surendra.g@time4education.com','8341876457','e10adc3949ba59abbe56e057f20f883e',1,1,'hydrabad','hiii','534316','4 yrs ','12-yed','assc_id_card_20200302042928.png',NULL,'profile_pic_20200302042928.jpg',1,'2020-03-02 16:29:28','Surendra_20200302042928'),(12,'surendra','surendra.g@time4education.com','845120367','e10adc3949ba59abbe56e057f20f883e',2,1,'hyderabad','hi','jkj','kjf','45sadf','assc_id_card_20200302043111.png',NULL,'profile_pic_20200302043111.jpg',1,'2020-03-02 16:31:11','surendra_20200302043111'),(13,'surendra','surendra.g@time4education.com','845120367','e10adc3949ba59abbe56e057f20f883e',2,1,'hyderabad','hi','jkj','kjf','45sadf','assc_id_card_20200302043227.png',NULL,'profile_pic_20200302043227.jpg',1,'2020-03-02 16:32:27','surendra_20200302043227'),(14,'surendra','surendra.g@time4education.com','845120367','e10adc3949ba59abbe56e057f20f883e',2,1,'hyderabad','hi','jkj','kjf','45sadf','assc_id_card_20200302043432.png',NULL,'profile_pic_20200302043432.jpg',1,'2020-03-02 16:34:32','surendra_20200302043432'),(15,'sukjl','admin@auroraelabs.com','55555','a0046ad4c1bafc4ef04e41e755f28368',1,1,'sdf','sdaf','sdf','dsfa','asdf','assc_id_card_20200302043535.png',NULL,'profile_pic_20200302043535.jpg',1,'2020-03-02 16:35:35','sukjl_20200302043535'),(16,'sukjl','admin@auroraelabs.com','55555','a0046ad4c1bafc4ef04e41e755f28368',1,1,'sdf','sdaf','sdf','dsfa','asdf','assc_id_card_20200302043635.png',NULL,'profile_pic_20200302043635.jpg',1,'2020-03-02 16:36:35','sukjl_20200302043635'),(17,'sukjl','admin@auroraelabs.com','55555','a0046ad4c1bafc4ef04e41e755f28368',1,1,'sdf','sdaf','sdf','dsfa','asdf','assc_id_card_20200302043727.png','identity_card_pic_20200302043727.png','profile_pic_20200302043727.jpg',1,'2020-03-02 16:37:27','sukjl_20200302043727'),(18,'sure','admin@auroraelabs.com','55asdf','486ca0195df6d3445f9696403ef6a2a1',1,1,'fsadf','safasd','sfsf','dsfsf','fsd','assc_id_card_20200302044557.png','identity_card_pic_20200302044557.png','profile_pic_20200302044557.jpg',1,'2020-03-02 16:45:57','sure_20200302044557'),(19,'surendra','surendra.g@time4education.com','8974563210','e10adc3949ba59abbe56e057f20f883e',1,1,'hyderabad','456safsdf','456sfs','s54f','sdf','assc_id_card_20200302045336.png','identity_card_pic_20200302045336.png','profile_pic_20200302045336.jpg',1,'2020-03-02 16:53:36','surendra_20200302045336'),(20,'surendra','surendra.g@time4education.com','564sfdsad','b5e9f20e5598c7a5842de33b3aa168ba',1,1,'sfasdf','45dsfasdf','4f654sf','564f64','fsfs','assc_id_card_20200302045541.png','identity_card_pic_20200302045541.png','profile_pic_20200302045541.jpg',1,'2020-03-02 16:55:41','surendra_20200302045541'),(21,'Sreshta','surendra.g@time4education.com','845632107','8d97f3c880142b8997b051ad10482ef9',1,1,'fsf','hiii','fksjfakslj','lksjf','fsfkj','assc_id_card_20200302050428.png','identity_card_pic_20200302050428.png','profile_pic_20200302050428.jpg',1,'2020-03-02 17:04:28','Sreshta_20200302050428'),(22,'sreshtas','surendra.g@time4education.com','87455','3c12767ee0855b9348081de140b1fcf1',1,1,'fasfsf','sdf','sfdsaf','sfsadf','fasf','assc_id_card_20200302050738.png','identity_card_pic_20200302050738.png','profile_pic_20200302050738.jpg',1,'2020-03-02 17:07:38','sreshtas_20200302050738'),(23,'sreshtas','surendra.g@time4education.com','87455','10385d57b60baa7a904b3253325c4b7b',1,1,'fasfsf','sdf','sfdsaf','sfsadf','fasf','assc_id_card_20200302051756.png','identity_card_pic_20200302051756.png','profile_pic_20200302051756.jpg',1,'2020-03-02 17:17:56','sreshtas_20200302051756'),(24,'Thaj','thaj@gmail.com','8520136479','71b3b26aaa319e0cdf6fdb8429c112b0',1,1,'sfsafd','fasfd','sfsadf','sfsadf','fsaf','assc_id_card_20200302053619.png','identity_card_pic_20200302053619.png','profile_pic_20200302053619.jpg',1,'2020-03-02 17:36:19','Thaj_20200302053619'),(25,'shaik','','123456789','e10adc3949ba59abbe56e057f20f883e',2,2,'hyd','hyd','50103','1','5d','assc_id_card_20200309052917.jpg','identity_card_pic_20200309055538.jpg','profile_pic_20200309055535.jpg',1,'2020-03-03 11:20:08','shaik_20200303112008'),(26,'nayyum','nayyum@gmail.com','96355224','e10adc3949ba59abbe56e057f20f883e',1,2,'hyd','hyd','501200','5','5d','assc_id_card_20200303112503.png','identity_card_pic_20200303112506.png','profile_pic_20200303112506.PNG',1,'2020-03-03 11:25:03','nayyum_20200303112503'),(27,'test','jlklk@kkk.com','122333','e10adc3949ba59abbe56e057f20f883e',2,2,'hyderabad','dfser','509108','2','','assc_id_card_20200311102505.png','identity_card_pic_20200311102505.png','profile_pic_20200311103136.png',1,'2020-03-11 10:25:05','test_20200311102505'),(28,'Test2','N@abc.com','99999999','e10adc3949ba59abbe56e057f20f883e',2,2,'Ad','Ggg','5019190','Ujjj','Hh','assc_id_card_20200311105306.jpg','identity_card_pic_20200311105307.jpg','profile_pic_20200311105307.jpg',1,'2020-03-11 10:53:06','Test2_20200311105306'),(29,'bnf','abcd@gmail.com','6326522','e10adc3949ba59abbe56e057f20f883e',2,1,'hyd','212121','21212','121','21','assc_id_card_20200311043809.jpg','identity_card_pic_20200311043809.jpg','profile_pic_20200311043809.jpg',1,'2020-03-11 16:38:09','bnf_20200311043809'),(30,'ss','ss@gg.com','7054788882','61bd60c60d9fb60cc8fc7767669d40a1',2,2,'hyd','fg','fg','fd','fdg','assc_id_card_20200624071740.png','identity_card_pic_20200624071743.png','profile_pic_20200624071743.jpg',1,'2020-06-24 19:17:40','ss_20200624071740');
/*!40000 ALTER TABLE `odp_photographers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odp_positions`
--

DROP TABLE IF EXISTS `odp_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odp_positions` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Position id',
  `position_name` varchar(150) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odp_positions`
--

LOCK TABLES `odp_positions` WRITE;
/*!40000 ALTER TABLE `odp_positions` DISABLE KEYS */;
INSERT INTO `odp_positions` VALUES (1,'PhotoGrapher','2020-03-07 12:29:28'),(2,'Video Grapher','2020-03-07 12:29:28'),(3,'Both','2020-03-07 12:29:42');
/*!40000 ALTER TABLE `odp_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odp_states`
--

DROP TABLE IF EXISTS `odp_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odp_states` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(150) NOT NULL,
  `state_short_name` varchar(10) NOT NULL COMMENT 'Abbrevation of the state name',
  `country` int(11) DEFAULT NULL,
  `created_date_time` datetime NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odp_states`
--

LOCK TABLES `odp_states` WRITE;
/*!40000 ALTER TABLE `odp_states` DISABLE KEYS */;
INSERT INTO `odp_states` VALUES (1,'Andhrapradesh','AP',1,'2020-02-22 00:00:00'),(2,'Telangana','TS',1,'2020-02-22 00:00:00');
/*!40000 ALTER TABLE `odp_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odp_work_categories`
--

DROP TABLE IF EXISTS `odp_work_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odp_work_categories` (
  `wt_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_type` varchar(150) NOT NULL,
  `create_date_time` datetime NOT NULL,
  PRIMARY KEY (`wt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Work categories like event, mrg,etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odp_work_categories`
--

LOCK TABLES `odp_work_categories` WRITE;
/*!40000 ALTER TABLE `odp_work_categories` DISABLE KEYS */;
INSERT INTO `odp_work_categories` VALUES (1,'All','2020-03-02 12:11:00'),(2,'Wedding','2020-03-08 00:00:00'),(3,'Events','2020-03-08 00:00:00'),(4,'Birthday Party','2020-03-08 00:00:00'),(5,'Photo Shoot','2020-03-08 00:00:00');
/*!40000 ALTER TABLE `odp_work_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odp_work_demos`
--

DROP TABLE IF EXISTS `odp_work_demos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odp_work_demos` (
  `wd_id` int(11) NOT NULL AUTO_INCREMENT,
  `ph_grapher_id` int(11) NOT NULL COMMENT 'Id of the photographer',
  `work_category_id` int(11) NOT NULL COMMENT 'Category of the work',
  `work_pic` varchar(150) NOT NULL COMMENT 'Photo path',
  `created_date_time` datetime NOT NULL,
  PRIMARY KEY (`wd_id`),
  KEY `wc_id_1` (`work_category_id`),
  KEY `photo_graph_id` (`ph_grapher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odp_work_demos`
--

LOCK TABLES `odp_work_demos` WRITE;
/*!40000 ALTER TABLE `odp_work_demos` DISABLE KEYS */;
INSERT INTO `odp_work_demos` VALUES (1,20,1,'','2020-03-02 16:55:41'),(2,20,1,'','2020-03-02 16:55:41'),(3,20,1,'','2020-03-02 16:55:41'),(4,20,1,'','2020-03-02 16:55:41'),(5,22,1,'work_pics_1_20200302050738.png','2020-03-02 17:07:38'),(6,22,1,'work_pics_1_20200302050738.png','2020-03-02 17:07:38'),(7,22,1,'work_pics_1_20200302050738.jpg','2020-03-02 17:07:38'),(8,22,1,'work_pics_1_20200302050738.gif','2020-03-02 17:07:38'),(9,23,1,'work_pics_1_20200302051756.png','2020-03-02 17:17:56'),(10,23,1,'work_pics_1_20200302051756.png','2020-03-02 17:17:56'),(11,23,1,'work_pics_1_20200302051756.jpg','2020-03-02 17:17:56'),(12,23,1,'work_pics_1_20200302051756.gif','2020-03-02 17:17:56'),(13,24,1,'work_pics_1_20200302053619.png','2020-03-02 17:36:19'),(14,24,1,'work_pics_1_20200302053619.png','2020-03-02 17:36:19'),(15,24,1,'work_pics_1_20200302053619.jpg','2020-03-02 17:36:19'),(16,24,1,'work_pics_1_20200302053619.gif','2020-03-02 17:36:19'),(17,25,1,'work_pics_1_20200303112008.jpg','2020-03-03 11:20:08'),(18,26,1,'work_pics_1_20200303112506.jpg','2020-03-03 11:25:06'),(19,2,4,'work_pics_1_20200310094720.png','2020-03-10 09:47:20'),(20,2,4,'work_pics_1_20200310094720.PNG','2020-03-10 09:47:20'),(21,2,4,'work_pics_1_20200310094720.jpg','2020-03-10 09:47:20'),(22,2,4,'work_pics_1_20200310095127.png','2020-03-10 09:51:27'),(23,2,4,'work_pics_1_20200310095127.PNG','2020-03-10 09:51:27'),(24,2,4,'work_pics_1_20200310095127.jpg','2020-03-10 09:51:27'),(25,2,5,'work_pics_1_20200310095404.png','2020-03-10 09:54:04'),(26,2,5,'work_pics_1_20200310095404.gif','2020-03-10 09:54:04'),(27,2,3,'work_pics_1_20200310095538.PNG','2020-03-10 09:55:38'),(28,2,2,'work_pics_1_20200310104259.jpg','2020-03-10 22:42:59'),(29,2,2,'work_pics_1_20200310104510.jpg','2020-03-10 22:45:10'),(30,2,2,'work_pics_1_20200310104511.jpg','2020-03-10 22:45:10'),(31,2,3,'work_pics_3_20200310111903.jpg','2020-03-10 23:19:03'),(32,27,1,'','2020-03-11 10:25:06'),(33,27,2,'work_pics_2_20200311102802.png','2020-03-11 10:28:02'),(34,27,4,'work_pics_4_20200311102942.png','2020-03-11 10:29:42'),(35,28,1,'','2020-03-11 10:53:13'),(36,29,1,'work_pics_1_20200311043809.jpg','2020-03-11 16:38:09'),(37,2,4,'work_pics_4_20200620101336.jpg','2020-06-20 10:13:36'),(38,30,1,'work_pics_1_20200624071743.png','2020-06-24 19:17:43');
/*!40000 ALTER TABLE `odp_work_demos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 15:02:00

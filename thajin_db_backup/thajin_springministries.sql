-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: thajin_springministries
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` int(1) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `tw_role` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Springs','honey@gmail.com','b193d99cf80c32c8a374a0ad3327496b',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `evt_id` int(11) NOT NULL AUTO_INCREMENT,
  `evt_type` tinyint(2) NOT NULL COMMENT '1-Preaching,2-Meeting',
  `evt_img` varchar(150) NOT NULL,
  `evt_date` datetime NOT NULL,
  `evt_description` text NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`evt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'13082019044546.jpg','2019-08-21 00:00:00','testings on 20 Aug 2019','2019-08-13 04:45:46'),(3,2,'13082019060021.jpg','2019-08-30 00:00:00','testing for delete-edit/insert/update','2019-08-13 12:30:21'),(4,2,'15082019125527.jpeg','2019-08-21 00:00:00','Door.No 16-2-738/E/5/A,christian assembly,vanastali puram.HYD 500058','2019-08-15 07:25:27'),(5,1,'16092019125620.jpg','2019-09-18 00:00:00','Hi-tech city','2019-09-16 07:26:24'),(6,2,'16092019125815.jpg','2019-09-21 00:00:00','hydrabad','2019-09-16 07:28:17'),(7,1,'16092019125940.jpg','2019-09-18 00:00:00','gachibowli','2019-09-16 07:29:42'),(8,2,'16092019010032.jpg','2019-09-20 00:00:00','waragal','2019-09-16 07:30:34'),(9,1,'','2019-12-05 00:00:00','This is for testing','2019-12-02 06:29:58'),(10,2,'02122019120152.png','2019-12-05 00:00:00','This is also for testing','2019-12-02 06:31:52');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_title` varchar(250) NOT NULL,
  `image_name` varchar(150) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'test','19082019080442.png','2019-08-19 14:34:42'),(2,'again test','19082019080801.png','2019-08-19 14:38:01');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learntoday`
--

DROP TABLE IF EXISTS `learntoday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learntoday` (
  `lt_id` int(11) NOT NULL AUTO_INCREMENT,
  `lt_date` date NOT NULL,
  `lt_description` text NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learntoday`
--

LOCK TABLES `learntoday` WRITE;
/*!40000 ALTER TABLE `learntoday` DISABLE KEYS */;
INSERT INTO `learntoday` VALUES (1,'2019-08-23','This is for testing learn today content','2019-08-24 12:33:12'),(2,'2019-09-18','              \r\n          Psalm 94:23 - he shall cut them off\r\n-Psalm 34:10,17(cry, delivers)\r\n-Psalm 91:10 - no plague near dwelling \r\n-Psalm 37:10,34(wicked will cut off, you shall inherit\r\n-Psalm 17:8-9 apple of eye, from deadly enemies\r\n-Psal18:17-19 - large place\r\n-Psalm 18:40-42\r\n-Psalm 142:7 bring my soul out of prison\r\n-Psalm 143:12-cut off my enemies\r\n-Psalm 20:6 - saveth his anointed','2019-09-16 07:39:06');
/*!40000 ALTER TABLE `learntoday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `letuspray`
--

DROP TABLE IF EXISTS `letuspray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `letuspray` (
  `lp_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `created_date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `letuspray`
--

LOCK TABLES `letuspray` WRITE;
/*!40000 ALTER TABLE `letuspray` DISABLE KEYS */;
INSERT INTO `letuspray` VALUES (6,0,'Surendra','surendrag516@gmail.com','My health Recovered','please pray for us','2019-08-03 17:09:51'),(7,1,'test','test@gmail.com','for test','this is for testing the tipic','2019-08-19 19:02:51');
/*!40000 ALTER TABLE `letuspray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `tsm_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_published` tinyint(2) NOT NULL DEFAULT '1',
  `full_name` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `testimonial` text NOT NULL,
  `tsm_img` varchar(30) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tsm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,2,'Surendra','surendrag516@gmail.com','My health Recovered','Thank you jesus','20190713110937.jpg','2019-07-13 11:09:37'),(2,2,'prudhvi','prudhvikiran92@gmail.com','Healing','my knees were healed by moses brother prayer.i am so happy now.','20190715071133.jpeg','2019-07-15 07:11:33'),(4,2,'Surendra','surendrag516@gmail.com','My health Recovered','Thank you jesus','20190713110937.jpg','2019-07-13 11:09:37'),(5,2,'prudhvi','prudhvikiran92@gmail.com','Healing','my knees were healed by moses brother prayer.i am so happy now.','20190715071133.jpeg','2019-07-15 07:11:33');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(150) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'Health','2019-08-19 13:15:46'),(3,'Psalm 94:23 - he shall cut them off -Psalm 34:10,17(cry, delivers) -Psalm 91:10 - no plague near dwelling  -Psalm 37:10,34(wicked will cut off, you sh','2019-09-16 07:35:33'),(4,'Psalm 94:23 - he shall cut them off -Psalm 34:10,17(cry, delivers) -Psalm 91:10 - no plague near dwelling  -Psalm 37:10,34(wicked will cut off, you sh','2019-09-16 07:36:15');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(250) NOT NULL,
  `video_url` text NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`v_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'Preaching','https://www.youtube.com/embed/kUJPIQnFLlA','2019-08-19 13:54:07'),(2,'Preaching','https://www.youtube.com/embed/Vdu_e3PMBuM','2019-08-19 14:14:37'),(3,'Small video','https://www.youtube.com/embed/WnAr83zNJOs','2019-08-19 14:22:01');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 15:02:02

-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: thajin_busbooking
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
INSERT INTO `admin` VALUES (1,'Honey','honey@gmail.com','deaf19babbdde568846ab08faab3d77b',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(25) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Master Admin'),(2,'Admin'),(3,'Manager');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_buses`
--

DROP TABLE IF EXISTS `bb_buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_buses` (
  `bus_id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_expenditure` varchar(20) NOT NULL,
  `bus_service_num` varchar(20) NOT NULL,
  `jr_from_city` int(11) NOT NULL,
  `jr_to_city` int(11) NOT NULL,
  `jr_from_start_time` timestamp NULL DEFAULT NULL,
  `jr_to_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bus_id`),
  KEY `bb_bstop_1` (`jr_from_city`),
  KEY `bb_bstop_2` (`jr_to_city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_buses`
--

LOCK TABLES `bb_buses` WRITE;
/*!40000 ALTER TABLE `bb_buses` DISABLE KEYS */;
INSERT INTO `bb_buses` VALUES (1,'450','2728',1,2,'2019-07-05 13:20:00','2019-07-06 02:10:00','2019-07-05 15:17:59');
/*!40000 ALTER TABLE `bb_buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_cities`
--

DROP TABLE IF EXISTS `bb_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id of the city',
  `city_name` varchar(50) NOT NULL COMMENT 'Name of the city',
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_cities`
--

LOCK TABLES `bb_cities` WRITE;
/*!40000 ALTER TABLE `bb_cities` DISABLE KEYS */;
INSERT INTO `bb_cities` VALUES (1,'Hyderabad','2019-07-02 15:04:34'),(2,'HUBLI','2019-07-04 02:28:41'),(3,'RAICHUR','2019-07-04 02:42:49'),(4,'VIJAYAWADA','2019-07-14 11:10:27');
/*!40000 ALTER TABLE `bb_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_route_stops`
--

DROP TABLE IF EXISTS `bb_route_stops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_route_stops` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) NOT NULL,
  `from_stop_id` int(11) DEFAULT NULL,
  `to_stop_id` int(11) DEFAULT NULL,
  `from_stop_date_time` timestamp NULL DEFAULT NULL,
  `to_stop_date_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  KEY `bb_route_1` (`bus_id`),
  KEY `bb_route_2` (`from_stop_id`),
  KEY `bb_route_3` (`to_stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_route_stops`
--

LOCK TABLES `bb_route_stops` WRITE;
/*!40000 ALTER TABLE `bb_route_stops` DISABLE KEYS */;
INSERT INTO `bb_route_stops` VALUES (1,1,1,NULL,'2019-07-05 13:20:00',NULL),(2,1,2,NULL,'2019-07-05 13:30:00',NULL),(3,1,NULL,3,NULL,'2019-07-06 02:10:00');
/*!40000 ALTER TABLE `bb_route_stops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_stops`
--

DROP TABLE IF EXISTS `bb_stops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_stops` (
  `stop_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of the stop in a city',
  `city_id` int(11) NOT NULL COMMENT 'id of the city of the stop',
  `stop_name` varchar(50) NOT NULL COMMENT 'name of the stop',
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_stops`
--

LOCK TABLES `bb_stops` WRITE;
/*!40000 ALTER TABLE `bb_stops` DISABLE KEYS */;
INSERT INTO `bb_stops` VALUES (1,1,'Kukatpally','2019-07-03 15:48:47'),(2,1,'Ameerpet','2019-07-03 15:49:27'),(3,1,'ARAMGHAR','2019-07-04 02:44:59');
/*!40000 ALTER TABLE `bb_stops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_cart_billing`
--

DROP TABLE IF EXISTS `rb_cart_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rb_cart_billing` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `to_this_address` tinyint(2) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `created_date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_cart_billing`
--

LOCK TABLES `rb_cart_billing` WRITE;
/*!40000 ALTER TABLE `rb_cart_billing` DISABLE KEYS */;
INSERT INTO `rb_cart_billing` VALUES (1,1,1,'surendra','8341876457','Prakashnagar,Begumpet, Hyderabad','534316','2019-06-26 16:48:52'),(2,5,1,'surendra','9640689945','Hyderabad,TS','534316','2019-06-26 18:39:16');
/*!40000 ALTER TABLE `rb_cart_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_cart_items`
--

DROP TABLE IF EXISTS `rb_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rb_cart_items` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_cart_items`
--

LOCK TABLES `rb_cart_items` WRITE;
/*!40000 ALTER TABLE `rb_cart_items` DISABLE KEYS */;
INSERT INTO `rb_cart_items` VALUES (1,2,4718,2,'2019-06-26 17:19:02'),(2,2,4719,1,'2019-06-26 17:19:03'),(3,2,4729,3,'2019-06-26 17:19:03'),(4,2,4726,1,'2019-06-26 17:19:03'),(5,3,4743,2,'2019-06-26 18:43:19'),(6,3,4752,2,'2019-06-26 18:43:19'),(7,3,4754,3,'2019-06-26 18:43:19'),(8,3,4766,1,'2019-06-26 18:43:19'),(9,4,10955,2,'2019-07-01 17:11:24'),(10,4,10957,1,'2019-07-01 17:11:24'),(11,4,10961,1,'2019-07-01 17:11:24'),(12,5,10959,2,'2019-07-01 17:14:06'),(13,5,10963,2,'2019-07-01 17:14:06'),(14,5,10971,1,'2019-07-01 17:14:06'),(15,6,10970,3,'2019-07-01 17:15:42'),(16,6,10952,2,'2019-07-01 17:15:42'),(17,7,10970,3,'2019-07-01 17:17:44'),(18,7,10952,2,'2019-07-01 17:17:44'),(19,8,10970,3,'2019-07-01 17:19:05'),(20,8,10952,2,'2019-07-01 17:19:05'),(21,9,10970,3,'2019-07-01 17:19:30'),(22,9,10952,2,'2019-07-01 17:19:30'),(23,10,10970,3,'2019-07-01 17:21:13'),(24,10,10952,2,'2019-07-01 17:21:13'),(25,11,10970,3,'2019-07-01 17:21:39'),(26,11,10952,2,'2019-07-01 17:21:39'),(27,12,10970,3,'2019-07-01 17:22:05'),(28,12,10952,2,'2019-07-01 17:22:05'),(29,13,10970,3,'2019-07-01 17:22:20'),(30,13,10952,2,'2019-07-01 17:22:20'),(31,14,10970,3,'2019-07-01 17:22:22'),(32,14,10952,2,'2019-07-01 17:22:23'),(33,15,10970,3,'2019-07-01 17:22:46'),(34,15,10952,2,'2019-07-01 17:22:46'),(35,16,10970,3,'2019-07-01 17:24:12'),(36,16,10952,2,'2019-07-01 17:24:12'),(37,17,10970,3,'2019-07-01 17:24:55'),(38,17,10952,2,'2019-07-01 17:24:55'),(39,18,10970,3,'2019-07-01 17:25:11'),(40,18,10952,2,'2019-07-01 17:25:11'),(41,19,10970,3,'2019-07-01 17:26:35'),(42,19,10952,2,'2019-07-01 17:26:35'),(43,20,10970,3,'2019-07-01 17:26:44'),(44,20,10952,2,'2019-07-01 17:26:44'),(45,21,10970,3,'2019-07-01 17:27:42'),(46,21,10952,2,'2019-07-01 17:27:42'),(47,22,10970,3,'2019-07-01 17:27:45'),(48,22,10952,2,'2019-07-01 17:27:46'),(49,23,10970,3,'2019-07-01 17:27:47'),(50,23,10952,2,'2019-07-01 17:27:47'),(51,24,10964,2,'2019-07-01 17:29:34'),(52,24,10971,2,'2019-07-01 17:29:34'),(53,24,10963,1,'2019-07-01 17:29:34'),(54,25,10952,2,'2019-07-01 17:31:02'),(55,25,10961,1,'2019-07-01 17:31:02'),(56,25,10971,2,'2019-07-01 17:31:02'),(57,26,10952,2,'2019-07-01 17:32:27'),(58,26,10961,1,'2019-07-01 17:32:28'),(59,26,10971,2,'2019-07-01 17:32:28'),(60,27,10952,2,'2019-07-01 17:32:36'),(61,27,10961,1,'2019-07-01 17:32:36'),(62,27,10971,2,'2019-07-01 17:32:36'),(63,28,10952,2,'2019-07-01 17:32:50'),(64,28,10961,1,'2019-07-01 17:32:50'),(65,28,10971,2,'2019-07-01 17:32:50'),(66,29,10952,2,'2019-07-01 17:32:52'),(67,29,10961,1,'2019-07-01 17:32:52'),(68,29,10971,2,'2019-07-01 17:32:52'),(69,30,10952,2,'2019-07-01 17:33:02'),(70,30,10961,1,'2019-07-01 17:33:02'),(71,30,10971,2,'2019-07-01 17:33:02'),(72,31,10952,2,'2019-07-01 17:34:06'),(73,31,10954,2,'2019-07-01 17:34:06'),(74,32,10952,2,'2019-07-01 17:37:57'),(75,32,10954,2,'2019-07-01 17:37:57'),(76,33,10952,3,'2019-07-01 17:39:00'),(77,33,10954,2,'2019-07-01 17:39:00'),(78,33,10953,2,'2019-07-01 17:39:00'),(79,34,10952,3,'2019-07-01 17:40:05'),(80,34,10954,2,'2019-07-01 17:40:05'),(81,34,10953,2,'2019-07-01 17:40:05'),(82,35,10952,3,'2019-07-01 17:40:07'),(83,35,10954,2,'2019-07-01 17:40:07'),(84,35,10953,2,'2019-07-01 17:40:07'),(85,36,10952,3,'2019-07-01 17:41:38'),(86,36,10954,2,'2019-07-01 17:41:38'),(87,36,10953,2,'2019-07-01 17:41:38'),(88,37,10952,3,'2019-07-01 17:41:40'),(89,37,10954,2,'2019-07-01 17:41:40'),(90,37,10953,2,'2019-07-01 17:41:40'),(91,38,10952,3,'2019-07-01 17:41:40'),(92,38,10954,2,'2019-07-01 17:41:40'),(93,38,10953,2,'2019-07-01 17:41:40'),(94,39,10952,3,'2019-07-01 17:41:52'),(95,39,10954,2,'2019-07-01 17:41:52'),(96,39,10953,2,'2019-07-01 17:41:52'),(97,40,10952,3,'2019-07-01 17:41:54'),(98,40,10954,2,'2019-07-01 17:41:54'),(99,40,10953,2,'2019-07-01 17:41:54'),(100,41,10952,3,'2019-07-01 17:43:10'),(101,41,10954,2,'2019-07-01 17:43:10'),(102,41,10953,2,'2019-07-01 17:43:10'),(103,42,10953,2,'2019-07-01 17:52:13'),(104,42,10957,1,'2019-07-01 17:52:13');
/*!40000 ALTER TABLE `rb_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_orders`
--

DROP TABLE IF EXISTS `rb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rb_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `payment_id` varchar(25) NOT NULL,
  `payment_status` tinyint(2) NOT NULL,
  `order_status` tinyint(2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_orders`
--

LOCK TABLES `rb_orders` WRITE;
/*!40000 ALTER TABLE `rb_orders` DISABLE KEYS */;
INSERT INTO `rb_orders` VALUES (2,1,'','213','',0,2),(3,5,'','210','',0,1),(4,1,'','122','',0,0),(5,1,'','152','',0,0),(6,1,'','88','',0,0),(7,1,'','88','',0,0),(8,1,'','88','',0,0),(9,1,'','88','',0,0),(10,1,'','88','',0,0),(11,1,'','88','',0,0),(12,1,'','88','',0,0),(13,1,'','88','',0,0),(14,1,'','88','',0,0),(15,1,'','88','',0,0),(16,1,'','88','',0,0),(17,1,'','88','',0,0),(18,1,'','88','',0,0),(19,1,'','88','',0,0),(20,1,'','88','',0,0),(21,1,'','88','',0,0),(22,1,'','88','',0,0),(23,1,'','88','',0,0),(24,1,'','184','',0,0),(25,1,'','124','',0,0),(26,1,'','124','',0,0),(27,1,'','124','',0,0),(28,1,'','124','',0,0),(29,1,'','124','',0,0),(30,1,'','124','',0,0),(31,1,'','66','',0,0),(32,1,'','66','',0,0),(33,1,'','143','',0,0),(34,1,'','143','',0,0),(35,1,'','143','',0,0),(36,1,'','143','',0,0),(37,1,'','143','',0,0),(38,1,'','143','',0,0),(39,1,'','143','',0,0),(40,1,'','143','',0,0),(41,1,'','143','',0,0),(42,1,'','92','',0,0);
/*!40000 ALTER TABLE `rb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_screens`
--

DROP TABLE IF EXISTS `rb_screens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rb_screens` (
  `scr_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(2) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `screen_name` varchar(150) NOT NULL,
  `screen_size` varchar(150) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `on_off_line` tinyint(2) NOT NULL,
  `reason_id` tinyint(2) NOT NULL,
  PRIMARY KEY (`scr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_screens`
--

LOCK TABLES `rb_screens` WRITE;
/*!40000 ALTER TABLE `rb_screens` DISABLE KEYS */;
INSERT INTO `rb_screens` VALUES (1,2,1,'HINDHUPUR','7.5FTx6.3FT',1,1,0),(2,1,2,'TIRUPATHI','7.5X6.3 FT',1,1,0),(3,1,2,'chittoor','6.3 X 3.8 FT',1,2,3),(4,2,2,'PALAMENRU','7.5X6.3 FT',1,1,0),(5,2,2,'PUNGANUR','7.5X6.3 FT',1,2,2),(6,2,2,'MADHANPALLE','7.5X6.3 FT',1,1,0),(7,2,2,'KUPPAM','7.5X6.3 FT',1,1,0),(8,1,3,'Satellite city rajamundry','7.5X6.3 FT',0,2,3),(9,2,3,'RAVULAPLAM MARKET YARD','7.5X6.3 FT',1,1,0),(10,1,4,'sattenapalli','6.3 FTx3.8 FT',1,1,0),(11,1,4,'ponnur','6.3 FTx3.8 FT',1,1,0),(12,2,4,'guntur market yard','7.5FTx6.3FT',1,1,0),(13,2,4,'Duggirala','7.5FTx6.3FT',1,1,0),(14,2,4,'Dacheypalli','7.5FTx6.3FT',1,1,0),(15,1,5,'DWARAKA NAGAR ','7.5X6.3 FT',1,1,0),(16,2,5,'KADAPA MARKET YARD','7.5X6.3 FT',1,1,0),(18,1,6,'KEDERSWARPETA1','7.5x3.1 FT',1,1,0),(19,1,6,'PATAMATA','7.5X6.3 FT',1,1,0),(20,1,6,'AJITHSINGH NAGAR','6.3 X 3.8 FT',1,1,0),(21,1,6,'BHAVANIPURAM','7.5X6.3 FT',1,1,0),(22,1,6,'NUZVID','6.3 X 3.8 FT',1,1,0),(23,1,6,'NANDHIGAMA','7.5X6.3 FT',1,1,0),(24,1,6,'KANCHIKACHERLA','6.3 X 3.8 FT',1,1,0),(25,1,6,'Gudivada','7.5FTx6.3FT',1,1,0),(26,1,6,'MYLAVARAM','6.3 X 3.8 FT',1,2,1),(27,1,6,'IBRAHIMPATNAM','6.3 X 3.8 FT',1,1,0),(28,1,6,'KANKIPADU','7.5X6.3 FT',1,1,0),(29,1,6,'MACHALIPATNAM','7.5X6.3 FT',1,1,0),(30,1,6,'KAIKALURU','6.3 X 3.8 FT',1,1,0),(31,1,6,'TIRVUR','6.3 X 3.8 FT',1,1,0),(32,1,6,'KUCHIPUDI','6.3 X 3.8 FT',1,1,0),(33,1,6,'PAYAKAPURAM','7.5X6.3 FT',1,1,0),(34,1,7,'C Camp KURNOOL R','7.5FTx6.3FT',1,1,0),(35,1,7,'A A Nagar KURNOOL R','6.3 FTx3.8 FT',1,1,0),(36,1,7,'Nandyala KURNOOL R','6.3 FTx3.8 FT',1,1,0),(37,1,7,'Adoni KURNOOL R','6.3 FTx3.8 FT',1,2,1),(38,2,7,'ADONI market yard','7.5 ft X 6.3 ft ',1,1,0),(39,2,7,'YAMMIGUNUR','6.3 FTx3.8 FT',1,1,0),(40,2,7,'KURNOOL market yard','7.5FTx6.3FT',1,1,0),(41,1,8,'KAVALI','7.5X6.3 FT',1,2,2),(42,2,8,'PODALAKUR','7.5X6.3 FT',1,1,0),(43,1,9,'KothapatnamB Stand PRAKSAM R','6.3 FTx3.8 FT',1,1,0),(44,1,9,'Saibaba Temple PRAK R','6.3 FTx3.8 FT',1,1,0),(45,1,9,'Dibbala Bazar PRAK','7.5FTx6.3FT',1,1,0),(46,1,9,'Kandukur M.R.O Cmplx P','7.5FTx6.3FT',1,1,0),(47,1,11,'Seethammadhara','7.5FTx6.3FT',1,1,0),(48,1,11,'M.V.P.Colony','7.5FTx6.3FT',1,1,0),(49,1,11,'Narasim Nagar','7.5FTx6.3FT',1,2,2),(50,1,11,'Gopala Patnam Cent','7.5FTx6.3FT',1,1,0),(51,1,11,'GajuwakaMahila RBZ','6.3 FTx3.8 FT',1,1,0),(52,1,11,'Steel Plant','6.3 FTx3.8 FT',1,1,0),(53,1,11,'Mulagada','6.3 FTx3.8 FT',1,1,0),(54,1,12,'Ring Road Jn P V R','7.5FTx6.3FT',1,1,0),(55,1,12,'Old Maharaj Hospital','6.3 FTx3.8 FT',1,1,0),(56,1,12,'S Kota','7.5FTx6.3FT',1,2,1),(57,1,13,'Eluru 1','7.5FTx6.3FT',1,1,0),(58,1,13,'Eluru II','7.5FTx6.3FT',1,1,0),(59,1,13,'Narsapuram','7.5FTx6.3FT',1,2,1),(60,2,13,'Denduluru market yard','7.5FTx6.3FT',1,2,1),(61,1,6,'JAGGAIHPETA','7.5X6.3 FT',1,2,2),(62,1,6,'Vuyyuru','7.5FTx6.3FT',1,2,2),(63,1,6,'PWD GROUNDS','7.5 ft X 6.3 ft ',1,1,0);
/*!40000 ALTER TABLE `rb_screens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_states`
--

DROP TABLE IF EXISTS `rb_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rb_states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(30) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_states`
--

LOCK TABLES `rb_states` WRITE;
/*!40000 ALTER TABLE `rb_states` DISABLE KEYS */;
INSERT INTO `rb_states` VALUES (1,'AndhraPradesh'),(2,'Telangana');
/*!40000 ALTER TABLE `rb_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_users`
--

DROP TABLE IF EXISTS `rb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rb_users` (
  `ua_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ua_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_users`
--

LOCK TABLES `rb_users` WRITE;
/*!40000 ALTER TABLE `rb_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `rb_users` ENABLE KEYS */;
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

-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: thajin_restaurants
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
-- Table structure for table `rt_admin`
--

DROP TABLE IF EXISTS `rt_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ht_id` int(11) NOT NULL COMMENT 'AI id of the hotel',
  `admin_name` varchar(200) NOT NULL COMMENT 'name of the admin',
  `username` varchar(200) NOT NULL COMMENT 'login id of the admin',
  `password` varchar(32) NOT NULL COMMENT 'login pwd of the admin',
  `role` int(1) NOT NULL COMMENT '1-superadmin',
  `is_active` tinyint(2) NOT NULL COMMENT '1-active 2-Deactive',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_admin`
--

LOCK TABLES `rt_admin` WRITE;
/*!40000 ALTER TABLE `rt_admin` DISABLE KEYS */;
INSERT INTO `rt_admin` VALUES (1,1,'Admin-1','admin1@restaurants.com','32599e20c415e0eb35d156b67b662cc1',1,1,'2020-09-12 15:02:19'),(2,2,'Admin2','admin2@restaurants.com','c5cfd7e77439df08d432e444af7b1300',1,1,'2020-09-12 15:02:13');
/*!40000 ALTER TABLE `rt_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_hotelmenu`
--

DROP TABLE IF EXISTS `rt_hotelmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt_hotelmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ht_id` int(11) NOT NULL COMMENT 'id of the hotel',
  `menu_category` int(11) NOT NULL COMMENT 'category of the menu',
  `tab_num` int(11) NOT NULL COMMENT '1-soupsnstarters,2-breads&rotis,3',
  `menu_item` tinytext NOT NULL COMMENT 'name of the menu',
  `price` varchar(5) NOT NULL COMMENT 'cost of the item',
  `num_pcs` int(5) DEFAULT NULL COMMENT 'Number of pieces',
  `is_status` tinyint(2) DEFAULT NULL COMMENT 'Having status like mild, hot, etc.,1-Yes 2-No',
  `item_description` tinytext NOT NULL COMMENT 'item description',
  `is_active` tinyint(2) NOT NULL COMMENT '1-active 2-Deactive',
  `created_on` datetime NOT NULL COMMENT 'when it was created',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_hotelmenu`
--

LOCK TABLES `rt_hotelmenu` WRITE;
/*!40000 ALTER TABLE `rt_hotelmenu` DISABLE KEYS */;
INSERT INTO `rt_hotelmenu` VALUES (1,1,1,1,'1.Vegetable Soup','40',NULL,1,'Vegetable Soup',1,'2020-11-16 21:05:07'),(2,1,1,1,'2.Dhal Soup','40',NULL,1,'Dhal Soup',1,'2020-11-16 21:02:07'),(3,1,1,1,'3.Chicken Soup','45',NULL,1,'Made with chicken',1,'2020-11-16 21:02:07'),(4,1,2,1,'4.Potato Samosa','16',2,2,'Made with Potato',1,'2020-11-16 22:16:05'),(10,1,2,1,'10.Small Masala Chips  ','29',NULL,2,'',1,'2020-11-17 00:00:00'),(5,1,2,1,'5.Samosa ','16',2,2,'Cheese & Onion / Cheese & Corn ',1,'2020-11-17 00:00:00'),(6,1,2,1,'6. Chicken Samosa	 ','20',2,2,'',1,'2020-11-17 00:00:00'),(7,1,2,1,'7.Lamb Samosa','22',2,2,'',1,'2020-11-17 00:00:00'),(8,1,2,1,'8.Pakoda','22',5,2,'Onion/Potato/Brinjal',1,'2020-11-17 00:00:00'),(9,1,2,1,'9.Onion Bhajiya','22',5,2,'Onion ball battered in a Chickpea flour and deep fried until light and crispy ',1,'2020-11-17 00:00:00'),(11,1,2,1,'11.Masala Chips','39',NULL,2,'',1,'2020-11-17 00:00:00'),(12,1,2,1,' 12.Mixed Tandoori Platter for One','65',NULL,2,'1.Chicken Tikka, 1 Shish Kebab, 1 Pakoda, \r\n1 Chicken Samosa and 1 Onion Bhajiya',1,'2020-11-17 00:00:00'),(13,1,2,1,'13. Mixed Platter for Two','99',NULL,2,'2 Chicken Tikka, 2 Shish Kebab, 2 Pakoda’s,\r\n2 Chicken Samosa and 2 Onion Bhajiya   ',1,'2020-11-17 00:00:00'),(14,1,3,2,'14. Brown Roti ','15',NULL,2,'',1,'2020-11-17 00:00:00'),(15,1,3,2,'15.Plain Naan','17',NULL,2,'',1,'2020-11-24 00:00:00'),(16,1,3,2,'16.Paratha  ','20',NULL,2,'',1,'2020-11-24 00:00:00'),(17,1,3,2,'17.Butter Naan','20',NULL,2,'',1,'2020-11-24 00:00:00'),(18,1,3,2,'18. Rumali Roti','20',NULL,2,'',1,'2020-11-24 00:00:00'),(19,1,3,2,'19.Chapati','22',NULL,2,'',1,'2020-11-24 00:00:00'),(20,1,3,2,'20. Garlic Naan','22',NULL,2,'',1,'2020-11-24 00:00:00'),(21,1,3,2,'21. Stuffed Potato Naan','33',NULL,2,'Bread Stuffed with spiced potato and drizzled with butter',1,'2020-11-24 00:00:00'),(22,1,3,0,'22. Paneer Naan','33',NULL,2,'Bread with cheese and paneer',1,'2020-11-24 00:00:00'),(23,1,3,0,'23. Peshwari Naan','33',NULL,3,'Chopped raisins & nuts ',1,'2020-11-24 00:00:00'),(24,1,3,0,'24. Cheese Naan','33',NULL,2,'Bread with cheese',1,'2020-11-24 00:00:00'),(25,1,3,0,'25. Cheese Garlic Naan','35',NULL,2,'Bread with garlic & cheese',1,'2020-11-24 00:00:00'),(26,1,3,0,'26. Stuffed Keema Naan','39',NULL,2,'Bread stuffed with spiced mince',1,'2020-11-24 00:00:00'),(27,1,3,0,'27. Rogani Naan','22',NULL,2,'Sesame Seeds Naan',1,'2020-11-24 00:00:00'),(28,1,4,3,'28. Mix Veg ','75',NULL,1,' Mixed vegetable curry',1,'2020-11-24 00:00:00'),(29,1,4,3,'29. Beans','75',NULL,1,'Beans curry',1,'2020-11-24 00:00:00'),(30,1,4,3,'30. Paneer','85',NULL,1,'Paneer curry',1,'2020-11-24 00:00:00'),(31,1,4,3,'31. Chicken ','85',NULL,1,'Chicken curry with potatoes',1,'2020-11-24 00:00:00'),(32,1,4,3,'32. Chicken Tikka Wrap ','85',NULL,1,'Chicken tikka, chopped cucumber tomato and \r\n										Onion, lightly drizzled with tangy sauce\r\n\r\nOnion, lightly drizzled with tangy sauce',1,'2020-11-24 00:00:00'),(33,1,4,3,'33.Lamb','99',NULL,1,'',1,'2020-11-24 00:00:00'),(34,1,5,4,'34. BBQ Chicken with Chips for Kids','65',NULL,2,'',1,'2020-11-24 00:00:00'),(35,1,5,4,'35. Quarter Tandoori Chicken','65',NULL,1,' Served with salad, chips & naan',1,'2020-11-24 00:00:00'),(36,1,5,4,'36. Chicken Tikka Kebab','89',NULL,1,'Chicken pieces marinated in Indian Spices and cooked in a clay oven, served with chips',1,'2020-11-24 00:00:00'),(37,1,5,4,'37. Chicken Reshmi Kebab','89',NULL,1,'Chicken pieces marinated in yoghurt, garlic and ginger, grilled and served with chips',1,'2020-11-24 00:00:00'),(38,1,5,4,'38.Tandoori Chicken Half ','99',NULL,1,'Served with chips,1 naan and small gravy',1,'2020-11-24 00:00:00'),(39,1,5,4,'39. Lamb Seekh Kebab','99',NULL,1,'Lamb Mince cooked in a clay oven, served with chips',1,'2020-11-24 00:00:00'),(40,1,5,4,'40. Full Tandoori Chicken','145',NULL,1,'Full Tandoori Chicken served with 1 naan, chips, salad and small gravy',1,'2020-11-24 00:00:00'),(41,1,6,5,'41. Chicken Curry','99',NULL,1,'Chicken cooked In Indian Spices in a tasty masala gravy',1,'2020-11-24 00:00:00'),(42,1,6,5,'42. Chicken Vindaloo (Red Curry)','99',NULL,1,' Chicken cooked with potato in a mild/medium/hot gravy',1,'2020-11-24 00:00:00'),(43,1,6,5,'43. Chicken Rogan Josh','99',NULL,1,'Chicken cooked with garlic, ginger, chilli flakes, cumin, coriander with Indian Spices',1,'2020-11-24 00:00:00'),(44,1,6,5,'44. Chicken Palak (Green Curry) ','99',NULL,2,'Chicken cooked in spinach and cream',1,'2020-11-24 00:00:00'),(45,1,6,5,'45.Chicken Bhuna','99',NULL,1,'Chicken cooked in a dry thick gravy',1,'2020-11-24 00:00:00'),(46,1,6,5,'46. Chicken Beans Curry','99',NULL,1,'Chicken cooked in beans, onion and Indian Spices',1,'2020-11-24 00:00:00'),(47,1,6,5,'47. Chicken Kadai','102',NULL,1,'Chicken cooked with onion, pepper and special masala',1,'2020-11-24 00:00:00'),(48,1,6,5,'48.Chicken Jalfrezi','102',NULL,1,'Chicken cooked with onion, tomato and green pepper in special masala ',1,'2020-11-24 00:00:00'),(49,1,6,5,'49. Butter Chicken','102',NULL,1,'Chicken cooked in a tomato and butter gravy',1,'2020-11-24 00:00:00'),(50,1,6,5,'50. Chicken Madras','102',NULL,1,'Chicken prepared in traditional South Indian style with coconut flavour',1,'2020-11-24 00:00:00'),(51,1,6,5,'51.Chicken Badami','102',NULL,1,'Chicken with crushed almonds in a tasty gravy',1,'2020-11-24 00:00:00'),(52,1,6,5,'52.Chicken Korma (Yellow Curry)','102',NULL,1,'Chicken cooked in a cashew nut and cream sauce',1,'2020-11-24 00:00:00'),(53,1,6,5,'53.Chicken Tikka Masala','102',NULL,1,'Chicken cooked in an onion and tomato gravy',1,'2020-11-24 00:00:00'),(54,1,6,5,'54. Chicken Dal','102',NULL,1,'Chicken cooked in yellow lentils and flavoured with herbs ',1,'2020-11-24 00:00:00'),(55,1,6,5,'55.Chicken Do Pizza','102',NULL,1,'Chicken cooked in cream, cashew nut, green pepper and onion',1,'2020-11-24 00:00:00'),(56,1,6,5,'56.Chilli Chicken','115',NULL,1,'Chicken cooked with green pepper, yellow pepper, red pepper and soya sauce',1,'2020-11-24 00:00:00'),(57,1,6,5,'57. Chicken and Prawns Korma','135',NULL,1,'Chicken and Prawns cooked in a cashew nut and cream sauce ',1,'2020-11-24 00:00:00'),(58,1,7,0,'58.Lamb Curry ','125',NULL,1,'Lamb cooked with potato in a plain gravy',1,'2020-11-24 00:00:00'),(59,1,7,6,'59.Lamb Vindaloo','125',NULL,1,'Lamb cooked in a potato and red thick gravy',1,'2020-11-24 00:00:00'),(60,1,7,6,'60.Lamb Rogan Josh','125',NULL,1,'Authentic Kashmiri Lamb curry cooked in onion, tomato and aromatic spices',1,'2020-11-24 00:00:00'),(61,1,7,6,'61.Lamb Palak','125',NULL,1,'Lamb cooked in spinach and cream ',1,'2020-11-24 00:00:00'),(62,1,7,6,'62.Lamb Bhuna Gosht','125',NULL,1,'Lamb cooked with tomato and spices in an onion gravy',1,'2020-11-24 00:00:00'),(63,1,7,6,'63.Lamb Dhal Gosht','125',NULL,1,'Lamb prepared with traditional lentils and flavoured with herbs and spices',1,'2020-11-24 00:00:00'),(64,1,7,6,'64.Lamb Keema Masala','129',NULL,1,' Lamb Mince, cooked with green peas in a tasty masala gravy ',1,'2020-11-24 00:00:00'),(65,1,7,6,'65.Lamb Jalfrezi ','129',NULL,1,'Lamb pieces cooked with onion & tomato in special marinated masala',1,'2020-11-24 00:00:00'),(66,1,7,6,'66.Lamb Korma','129',NULL,1,'Lamb cooked in a cashew nut and cream sauce',1,'2020-11-24 00:00:00'),(67,1,7,6,'67.Lamb Gosht Badami ','129',NULL,1,'Lamb cooked in an almond and cream sauce.',1,'2020-11-24 00:00:00'),(68,1,7,6,'68. Lamb Beans curry','129',NULL,1,'Tender lamb pieces cooked with beans.',1,'2020-11-24 00:00:00'),(69,1,7,6,'69.Lamb Dopiaza','129',NULL,1,'Lamb cooked with onions, coriander springs and special masala.',1,'2020-11-24 00:00:00'),(70,1,8,7,'70. Fish Curry','142',NULL,1,'Pieces of Kingklip spiced and prepared in a delicious gravy ',1,'2020-11-24 00:00:00'),(71,1,8,7,' 71. Fish Vindaloo','142',NULL,1,'',1,'2020-11-24 00:00:00'),(72,1,8,7,'72.Prawn Masala','162',NULL,1,'Prawns in a blend of spices',1,'2020-11-24 00:00:00'),(73,1,8,7,'73.Prawn Vindaloo ','162',NULL,1,'Prawns prepared with mustard seed, whole red chilli and spices (10 Prawns)',1,'2020-11-24 00:00:00'),(74,1,8,7,'74.Prawn Korma','162',NULL,1,'Prawns cooked in a rich cream and crushed cashew nut sauce (10 Prawns)',1,'2020-11-24 00:00:00'),(75,1,8,7,'75.Prawn Makhana','162',NULL,1,'Prawns cooked with butter and tomato gravy',1,'2020-11-24 00:00:00'),(76,1,8,7,'76.Prawn Tikka Masala','162',NULL,1,'Prawns cooked in an onion and tomato gravy',1,'2020-11-24 00:00:00'),(77,1,8,7,'77.Prawn Jalfrezi','162',NULL,1,'Prawns cooked with onion & tomato in special marinated masala ',1,'2020-11-24 00:00:00'),(78,1,9,8,'78.Vegetable Biryani','79',NULL,1,'Steamed Basmati rice cooked with vegetables, includes 1 small Raita.',1,'2020-11-24 00:00:00'),(79,1,9,8,'79. Paneer Biryani','85',NULL,1,'Steamed Basmati rice cooked with Indian Cottage Cheese, includes 1 small Raita.',1,'2020-11-24 00:00:00'),(80,1,9,8,'80.Chicken Biryani','99',NULL,1,'Chicken marinated with herbs and spices, gradually cooked with lentils in basmati rice, includes 1 small Raita.',1,'2020-11-24 00:00:00'),(81,1,9,8,'81.Chicken Tikka Biryani','105',NULL,1,'Traditional South Indian Biryani, includes 1 small Raita.',1,'2020-11-24 00:00:00'),(82,1,9,8,'82.Lamb Biryani','129',NULL,1,'Lamb marinated with herbs and spices, gradually cooked with lentils in basmati rice, includes 1 small Raita. ',1,'2020-11-24 00:00:00'),(83,1,9,8,'83.Fish Biryani ','142',NULL,1,'Fish marinated with herbs and spices, gradually cooked with lentils in basmati rice, includes 1 small Raita. ',1,'2020-11-24 00:00:00'),(84,1,9,8,'84.Prawns biryani','162',NULL,1,'Prawns marinated with herbs and spices, gradually cooked with lentils in basmati rice, includes 1 small Raita.',1,'2020-11-24 00:00:00'),(85,1,10,9,'85.Plain Rice','18',NULL,2,'',1,'2020-11-24 00:00:00'),(86,1,10,9,'86.Jeera Rice','29',NULL,2,'Steamed Basmati Rice cooked with Cumin seeds.',1,'2020-11-24 00:00:00'),(87,1,10,9,'87.Lemon Rice','45',NULL,2,'Steamed Basmati rice cooked with lemon.',1,'2020-11-24 00:00:00'),(88,1,10,9,'88.Egg Fried Rice','55',NULL,1,'Steamed Basmati rice cooked with Egg.',1,'2020-11-24 00:00:00'),(89,1,10,9,'89. Vegetable Fried Rice','55',NULL,1,'Steamed Basmati rice cooked with vegetables.',1,'2020-11-24 00:00:00'),(90,1,10,9,'90. Chicken Fried Rice','59',NULL,1,'Steamed Basmati rice cooked with Chicken.',1,'2020-11-24 00:00:00'),(91,1,11,10,'91.Aloo Jeera','79',NULL,1,'Potato cooking in onion and Cumin seeds. ',1,'2020-11-24 00:00:00'),(92,1,11,10,'92. Bombay Potato','79',NULL,1,'Spiced and braised in a dry gravy.',1,'2020-11-24 00:00:00'),(93,1,11,10,'93. Yellow Dal','79',NULL,1,'Yellow lentils fried with onion & tomato.',1,'2020-11-24 00:00:00'),(94,1,11,10,'94.Corn & Palak','79',NULL,1,'Baby corn cooked with baby spinach & cream.',1,'2020-11-24 00:00:00'),(95,1,11,10,'95. Dal Makhani','85',NULL,1,'Black lentils cooked with red kidney beans in butter gravy. ',1,'2020-11-24 00:00:00'),(96,1,11,10,'96. Aloo Gobi Matar','86',NULL,1,'Cauliflower, Potato and Peas cooked in a tasty masala gravy.',1,'2020-11-24 00:00:00'),(97,1,11,10,'97. Aloo Palak','85',NULL,1,'Potato cooked with spinach.',1,'2020-11-24 00:00:00'),(98,1,11,10,'98. Mixed Vegetable','85',NULL,1,'Fresh mixed vegetables cooked in tangy gravy.',1,'2020-11-24 00:00:00'),(99,1,11,10,'99. Vegetable Jalfrezi','85',NULL,1,'Fresh mixed vegetables cooked in thick gravy.',1,'2020-11-24 00:00:00'),(100,1,11,10,'100.Vegetable Makhni','85',NULL,1,'Fresh mixed vegetables cooked in a tasty butter and tomato gravy.',1,'2020-11-24 00:00:00'),(101,1,11,10,'101. Vegetable Korma','89',NULL,1,'Vegetables cooked in a rich cream and crushed cashew nut sauce.',1,'2020-11-24 00:00:00'),(102,1,11,10,'102.Paneer Matar','89',NULL,1,'Indian cottage cheese with green peas in a delicate gravy.',1,'2020-11-24 00:00:00'),(103,1,11,10,'103.Paneer Masala','89',NULL,1,'Indian cottage cheese with tomato in a rich gravy.',1,'2020-11-24 00:00:00'),(104,1,11,10,'104.Paneer Korma','89',NULL,1,'Indian cottage cheese with cashew nuts and cream.',1,'2020-11-24 00:00:00'),(105,1,11,10,'105. Paneer Palak ','89',NULL,1,'Indian cottage cheese with spinach and cream.',1,'2020-11-24 00:00:00'),(106,1,11,10,'106.Paneer Makhni','89',NULL,1,'Indian cottage cheese in a tasty butter and tomato gravy.',1,'2020-11-24 00:00:00'),(107,1,11,10,'107.Paneer Tikka Masala','89',NULL,1,'Indian cottage cheese with special spices.',1,'2020-11-24 00:00:00'),(108,1,11,10,'108. Kadai Paneer','89',NULL,1,'',1,'2020-11-24 00:00:00'),(109,1,11,10,'109. Chilli Paneer','89',NULL,1,'Indian cottage cheese with chillies.',1,'2020-11-24 00:00:00'),(110,1,11,10,'110. Beans Curry','89',NULL,1,'',1,'2020-11-24 00:00:00'),(111,1,11,10,'111. Brinjal and Potato','89',NULL,1,'Eggplant cooked with potato and onion gravy.',1,'2020-11-24 00:00:00'),(112,1,12,11,'112. Papad','10',NULL,2,'',1,'2020-11-24 00:00:00'),(113,1,12,11,'113. Hot/Sweet Chutney','13',NULL,2,'',1,'2020-11-24 00:00:00'),(114,1,12,11,'114. Mango/Lemon Pickle','13',NULL,2,'',1,'2020-11-24 00:00:00'),(115,1,12,11,'115. Diced Tomato, Onion and Cucumber','35',NULL,2,' with chilli / without chilli',1,'2020-11-24 00:00:00'),(116,1,12,11,' 116. Cucumber Raita','35',NULL,2,'Plain whipped yoghurt with shredded cucumber slightly sweet ',1,'2020-11-24 00:00:00'),(117,1,12,11,'117. Yoghurt Drink / Lassi','36',NULL,2,'Sweet/Salt/Mango',1,'2020-11-24 00:00:00'),(118,1,13,12,'118.RicePudding(Kheer)','35',NULL,2,' ColdWarm',1,'2020-11-24 00:00:00'),(119,1,13,12,'119. Gulab Jamun (2pc)','22',NULL,2,'',1,'2020-11-24 00:00:00');
/*!40000 ALTER TABLE `rt_hotelmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_hotelnames`
--

DROP TABLE IF EXISTS `rt_hotelnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt_hotelnames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` text NOT NULL COMMENT 'name of the hotel',
  `is_active` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-Active 2-Deactive',
  `hotel_address` text NOT NULL COMMENT 'address of the restaurants',
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_hotelnames`
--

LOCK TABLES `rt_hotelnames` WRITE;
/*!40000 ALTER TABLE `rt_hotelnames` DISABLE KEYS */;
INSERT INTO `rt_hotelnames` VALUES (1,'Biryani Bowl Krugersdorp',1,'Key west shopping Center,Krudersdorp','0112730020','0785885599','2020-09-12 13:51:13'),(2,'Biryani Bowl Parkhurst',1,'34,4th Avenue,Parkhurst','0110496200','0603779900','2020-09-12 13:51:43');
/*!40000 ALTER TABLE `rt_hotelnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_menucategories`
--

DROP TABLE IF EXISTS `rt_menucategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt_menucategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` tinytext NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_menucategories`
--

LOCK TABLES `rt_menucategories` WRITE;
/*!40000 ALTER TABLE `rt_menucategories` DISABLE KEYS */;
INSERT INTO `rt_menucategories` VALUES (1,'Soup','2020-11-16 21:02:07'),(2,'Item','2020-11-16 21:02:07'),(3,'Chips','2020-11-16 22:09:17');
/*!40000 ALTER TABLE `rt_menucategories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 15:02:01

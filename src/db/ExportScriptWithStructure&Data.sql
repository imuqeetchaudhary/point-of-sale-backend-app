CREATE DATABASE  IF NOT EXISTS `pos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pos`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pos
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ad_customer`
--

DROP TABLE IF EXISTS `ad_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_customer` (
  `customer_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country_id` bigint unsigned NOT NULL,
  `city_id` bigint unsigned NOT NULL,
  `s_reg_st_no` varchar(255) DEFAULT NULL,
  `s_it_no` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `cell` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_wht` tinyint NOT NULL,
  `wht_tax` float NOT NULL,
  `i_wht_tax` float NOT NULL,
  `is_credit_limit` tinyint NOT NULL,
  `credit_amount` float NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `i_account_id` bigint DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT '1',
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  KEY `fk_customer_created_idx` (`created_by`),
  KEY `fk_customer_updated_idx` (`updated_by`),
  KEY `fk_customer_country_id_idx` (`country_id`),
  KEY `fk_customer_city_id_idx` (`city_id`),
  CONSTRAINT `fk_customer_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_customer`
--

LOCK TABLES `ad_customer` WRITE;
/*!40000 ALTER TABLE `ad_customer` DISABLE KEYS */;
INSERT INTO `ad_customer` VALUES (6,'Faisal','N/A','house # 211',16,8,'786','786','1234567890','1234567890','1234567890','faisal@gmail.com',1,100,100,1,100,'sheheryar',1,1,1,1,1,'2021-10-27 11:11:57','2021-10-27 11:11:57');
/*!40000 ALTER TABLE `ad_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_delivery_term`
--

DROP TABLE IF EXISTS `ad_delivery_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_delivery_term` (
  `delivery_term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `is_default` tinyint DEFAULT '1',
  `is_active` tinyint DEFAULT '1',
  `i_days` bigint unsigned DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`delivery_term_id`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  KEY `fk_delivery_created_idx` (`created_by`),
  KEY `fk_delivery_updated_idx` (`updated_by`),
  CONSTRAINT `fk_delivery_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_delivery_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_delivery_term`
--

LOCK TABLES `ad_delivery_term` WRITE;
/*!40000 ALTER TABLE `ad_delivery_term` DISABLE KEYS */;
INSERT INTO `ad_delivery_term` VALUES (4,'CAsh','N/A',1,1,1,1,1,'2021-10-27 11:11:10','2021-10-27 11:11:10'),(5,'Credit','N/A',1,1,1,1,1,'2021-10-27 11:11:13','2021-10-27 11:11:13');
/*!40000 ALTER TABLE `ad_delivery_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_measuring_unit`
--

DROP TABLE IF EXISTS `ad_measuring_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_measuring_unit` (
  `measuring_unit_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `is_default` tinyint DEFAULT '1',
  `is_active` tinyint DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`measuring_unit_id`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  KEY `fk_measuring_created_idx` (`created_by`),
  KEY `fk_measuring_updated_idx` (`updated_by`),
  CONSTRAINT `fk_measuring_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_measuring_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_measuring_unit`
--

LOCK TABLES `ad_measuring_unit` WRITE;
/*!40000 ALTER TABLE `ad_measuring_unit` DISABLE KEYS */;
INSERT INTO `ad_measuring_unit` VALUES (9,'Liter','N/A',1,1,1,1,'2021-10-27 11:10:48','2021-10-27 11:10:48'),(10,'Kilograms','N/A',1,1,1,1,'2021-10-27 11:10:55','2021-10-27 11:10:55');
/*!40000 ALTER TABLE `ad_measuring_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_menu`
--

DROP TABLE IF EXISTS `ad_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_menu` (
  `menu_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `description` (`description`),
  KEY `ad_menu_parent` (`parent_id`),
  KEY `ad_menu_created_by` (`created_by`),
  KEY `ad_menu_updated_by` (`updated_by`),
  CONSTRAINT `ad_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_menu_parent` FOREIGN KEY (`parent_id`) REFERENCES `ad_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_menu`
--

LOCK TABLES `ad_menu` WRITE;
/*!40000 ALTER TABLE `ad_menu` DISABLE KEYS */;
INSERT INTO `ad_menu` VALUES (1,'Programming','/programming',NULL,NULL,1,1,'2021-10-27 10:50:33','2021-10-27 10:50:33'),(2,'Python','/python',NULL,1,1,1,'2021-10-27 10:50:33','2021-10-27 10:50:33'),(3,'Django','/django',NULL,2,1,1,'2021-10-27 10:50:33','2021-10-27 10:50:33'),(4,'PHP','/php',NULL,1,1,1,'2021-10-27 10:50:33','2021-10-27 10:50:33');
/*!40000 ALTER TABLE `ad_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_menu_access_roles`
--

DROP TABLE IF EXISTS `ad_menu_access_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_menu_access_roles` (
  `menu_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`menu_id`,`role_id`),
  UNIQUE KEY `ad_menu_access_roles_menuId_roleId_unique` (`menu_id`,`role_id`),
  KEY `ad_mar_role_id` (`role_id`),
  KEY `ad_mar_created_by` (`created_by`),
  KEY `ad_mar_updated_by` (`updated_by`),
  CONSTRAINT `ad_mar_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_mar_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `ad_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_mar_role_id` FOREIGN KEY (`role_id`) REFERENCES `ad_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_mar_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_menu_access_roles`
--

LOCK TABLES `ad_menu_access_roles` WRITE;
/*!40000 ALTER TABLE `ad_menu_access_roles` DISABLE KEYS */;
INSERT INTO `ad_menu_access_roles` VALUES (1,1,1,1,'2021-10-27 10:50:38','2021-10-27 10:50:38'),(1,2,1,1,'2021-10-27 10:50:38','2021-10-27 10:50:38'),(2,2,1,1,'2021-10-27 10:50:38','2021-10-27 10:50:38'),(3,1,1,1,'2021-10-27 10:50:38','2021-10-27 10:50:38'),(3,2,1,1,'2021-10-27 10:50:38','2021-10-27 10:50:38');
/*!40000 ALTER TABLE `ad_menu_access_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_payment_term`
--

DROP TABLE IF EXISTS `ad_payment_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_payment_term` (
  `payment_term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `i_days` bigint unsigned DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`payment_term_id`),
  UNIQUE KEY `description` (`description`),
  KEY `ad_payment_created_idx` (`created_by`),
  KEY `ad_payment_updated_idx` (`updated_by`),
  CONSTRAINT `fk_payment_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_payment_term`
--

LOCK TABLES `ad_payment_term` WRITE;
/*!40000 ALTER TABLE `ad_payment_term` DISABLE KEYS */;
INSERT INTO `ad_payment_term` VALUES (4,'Credit','N/A',15,NULL,NULL,1,1,'2021-10-27 11:05:33','2021-10-27 11:05:33'),(5,'Cash','N/A',15,NULL,NULL,1,1,'2021-10-27 11:05:36','2021-10-27 11:05:36');
/*!40000 ALTER TABLE `ad_payment_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_product`
--

DROP TABLE IF EXISTS `ad_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_product` (
  `product_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_id` bigint unsigned NOT NULL,
  `unit_in_id` bigint unsigned NOT NULL,
  `unit_out_id` bigint unsigned NOT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_default` tinyint DEFAULT '1',
  `is_active` tinyint DEFAULT '1',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `it_head_urdu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `it_min_level` float DEFAULT '0',
  `it_max_level` float DEFAULT '0',
  `it_ro_level` float DEFAULT '0',
  `it_ro_qty` float DEFAULT '0',
  `it_rate` float DEFAULT '0',
  `is_serialized` tinyint DEFAULT '0',
  `s_tax_rate` float DEFAULT '0',
  `in_unit` float DEFAULT '0',
  `out_unit` float DEFAULT '0',
  `p_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'own',
  `p_type1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'parts',
  `bargen` tinyint DEFAULT '0',
  `brand_id` bigint unsigned NOT NULL,
  `is_stocked` tinyint DEFAULT '1',
  `is_finished` tinyint DEFAULT '0',
  `product_type_id` bigint unsigned NOT NULL,
  `int_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `open_bal` float DEFAULT '0',
  `hs_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  KEY `ad_product_created_idx` (`created_by`),
  KEY `fk_product_updated_idx` (`updated_by`),
  KEY `fk_product_type_id_idx` (`product_type_id`),
  KEY `fk_product_category_id_idx` (`category_id`),
  KEY `fk_unit_in_id_idx` (`unit_in_id`),
  KEY `fk_unit_out_id_idx` (`unit_out_id`),
  KEY `fk_product_brand_id_idx` (`brand_id`),
  CONSTRAINT `ad_product_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_category_id` FOREIGN KEY (`category_id`) REFERENCES `item_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_type_id` FOREIGN KEY (`product_type_id`) REFERENCES `ad_product_type` (`product_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_unit_in_id` FOREIGN KEY (`unit_in_id`) REFERENCES `ad_measuring_unit` (`measuring_unit_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_unit_out_id` FOREIGN KEY (`unit_out_id`) REFERENCES `ad_measuring_unit` (`measuring_unit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_product`
--

LOCK TABLES `ad_product` WRITE;
/*!40000 ALTER TABLE `ad_product` DISABLE KEYS */;
INSERT INTO `ad_product` VALUES (6,'HP Laptop','N/A',13,9,9,'barcode',1,1,'picture','urdu',10,10,10,10,10000,1,500,9,9,'parts','own',1,4,0,1,11,'internal code',3000,'hscode',1,1,'2021-10-27 11:14:23','2021-10-27 11:14:23'),(7,'Dell Laptop','N/A',13,9,9,'barcode',1,1,'picture','urdu',10,10,10,10,10000,1,500,9,9,'parts','own',1,4,0,1,11,'internal code',3000,'hscode',1,1,'2021-10-27 11:14:27','2021-10-27 11:14:27');
/*!40000 ALTER TABLE `ad_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_product_type`
--

DROP TABLE IF EXISTS `ad_product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_product_type` (
  `product_type_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`product_type_id`),
  UNIQUE KEY `description` (`description`),
  KEY `ad_product_type_created_idx` (`created_by`),
  KEY `ad_product_type_updated_idx` (`updated_by`),
  CONSTRAINT `fk_product_type_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_type_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_product_type`
--

LOCK TABLES `ad_product_type` WRITE;
/*!40000 ALTER TABLE `ad_product_type` DISABLE KEYS */;
INSERT INTO `ad_product_type` VALUES (8,'Medicines','N/A',1,1,1,1,'2021-10-27 11:12:22','2021-10-27 11:12:22'),(9,'Beauty Products','N/A',1,1,1,1,'2021-10-27 11:12:32','2021-10-27 11:12:32'),(10,'Fabrics','N/A',1,1,1,1,'2021-10-27 11:12:37','2021-10-27 11:12:37'),(11,'Electronics','N/A',1,1,1,1,'2021-10-27 11:12:59','2021-10-27 11:12:59');
/*!40000 ALTER TABLE `ad_product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_role`
--

DROP TABLE IF EXISTS `ad_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_role` (
  `role_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `description` (`description`),
  KEY `ad_role_created_by` (`created_by`),
  KEY `ad_role_updated_by` (`updated_by`),
  CONSTRAINT `ad_role_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_role_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_role`
--

LOCK TABLES `ad_role` WRITE;
/*!40000 ALTER TABLE `ad_role` DISABLE KEYS */;
INSERT INTO `ad_role` VALUES (1,'Accountant',1,1,'2021-10-27 10:50:28','2021-10-27 10:50:28'),(2,'Manager',1,1,'2021-10-27 10:50:28','2021-10-27 10:50:28');
/*!40000 ALTER TABLE `ad_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_user_access_roles`
--

DROP TABLE IF EXISTS `ad_user_access_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_user_access_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  UNIQUE KEY `ad_user_access_roles_roleId_userId_unique` (`user_id`,`role_id`),
  KEY `ad_uar_role_id` (`role_id`),
  KEY `ad_uar_created_by` (`created_by`),
  KEY `ad_uar_updated_by` (`updated_by`),
  CONSTRAINT `ad_uar_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_uar_role_id` FOREIGN KEY (`role_id`) REFERENCES `ad_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_uar_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ad_uar_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_user_access_roles`
--

LOCK TABLES `ad_user_access_roles` WRITE;
/*!40000 ALTER TABLE `ad_user_access_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_user_access_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_vendor`
--

DROP TABLE IF EXISTS `ad_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_vendor` (
  `vendor_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country_id` bigint unsigned NOT NULL,
  `city_id` bigint unsigned NOT NULL,
  `s_reg_st_no` varchar(255) DEFAULT NULL,
  `s_it_no` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `cell` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_wht` tinyint NOT NULL,
  `wht_tax` float NOT NULL,
  `i_wht_tax` float NOT NULL,
  `is_credit_limit` tinyint NOT NULL,
  `credit_amount` float NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `i_account_id` bigint DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT '1',
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  KEY `fk_vendor_created_idx` (`created_by`),
  KEY `fk_vendor_updated_idx` (`updated_by`),
  KEY `fk_vendor_country_id_idx` (`country_id`),
  KEY `fk_vendor_city_id_idx` (`city_id`),
  CONSTRAINT `fk_vendor_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vendor_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vendor_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vendor_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_vendor`
--

LOCK TABLES `ad_vendor` WRITE;
/*!40000 ALTER TABLE `ad_vendor` DISABLE KEYS */;
INSERT INTO `ad_vendor` VALUES (4,'Faisal','N/A','house # 211',16,8,'786','786','1234567890','1234567890','1234567890','faisal@gmail.com',1,100,100,1,100,'sheheryar',1,1,1,1,1,'2021-10-27 11:12:10','2021-10-27 11:12:10');
/*!40000 ALTER TABLE `ad_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_group`
--

DROP TABLE IF EXISTS `blood_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_group` (
  `bloodgroup_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`bloodgroup_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_blood_created_by_idx` (`created_by`),
  KEY `fk_blood_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_blood_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_blood_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_group`
--

LOCK TABLES `blood_group` WRITE;
/*!40000 ALTER TABLE `blood_group` DISABLE KEYS */;
INSERT INTO `blood_group` VALUES (1,'A Positive','N/A',1,1,1,1,'2021-10-27 10:56:58','2021-10-27 10:56:58'),(2,'B Positive','N/A',1,1,1,1,'2021-10-27 10:57:02','2021-10-27 10:57:02');
/*!40000 ALTER TABLE `blood_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `description` (`description`),
  KEY `brand_created_by` (`created_by`),
  KEY `brand_updated_by` (`updated_by`),
  CONSTRAINT `brand_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `brand_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (2,'Not Applicable (NA)',1,1,'2021-10-27 10:50:43','2021-10-27 10:50:43'),(3,'N/A',1,1,'2021-10-27 10:55:17','2021-10-27 10:55:17'),(4,'Apple',1,1,'2021-10-27 10:55:28','2021-10-27 10:55:28'),(5,'Samsung',1,1,'2021-10-27 10:55:35','2021-10-27 10:55:35'),(6,'Oppo',1,1,'2021-10-27 10:55:46','2021-10-27 10:55:46');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `province` varchar(150) NOT NULL,
  `dail_code` varchar(50) NOT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `province` (`province`),
  UNIQUE KEY `dail_code` (`dail_code`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_city_created_by_idx` (`created_by`),
  KEY `fk_city_updated_by_idx` (`updated_by`),
  KEY `fk_city_country` (`country_id`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_city_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_city_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (8,16,'Lahore','N/A','Punjab','+42',1,1,1,'2021-10-27 11:01:14','2021-10-27 11:01:14'),(10,16,'Karchi','N/A','Sindh','+21',1,1,1,'2021-10-27 11:01:29','2021-10-27 11:01:29');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` bigint unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `capital` varchar(150) NOT NULL,
  `dail_code` varchar(6) NOT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `capital` (`capital`),
  UNIQUE KEY `dail_code` (`dail_code`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_country_created_by_idx` (`created_by`),
  KEY `fk_country_updated_by_idx` (`updated_by`),
  KEY `fk_country_currency` (`currency_id`),
  CONSTRAINT `fk_country_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_country_currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  CONSTRAINT `fk_country_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (16,5,'Pakistan','N/A','Islamabad','+92',1,1,1,'2021-10-27 11:00:33','2021-10-27 11:00:33'),(17,6,'India','N/A','Dehli','+91',1,1,1,'2021-10-27 11:00:39','2021-10-27 11:00:39');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `currency_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `symbol` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_currency_created_by_idx` (`created_by`),
  KEY `fk_currency_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_currency_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_currency_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (5,'Pak Rupee','N/A','Rs',1,1,1,'2021-10-27 10:57:50','2021-10-27 10:57:50'),(6,'IND Rupee','N/A','INR',1,1,1,'2021-10-27 10:57:54','2021-10-27 10:57:54');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree` (
  `degree_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `qualification_id` bigint unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`degree_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_degree_created_by_idx` (`created_by`),
  KEY `fk_degree_updated_by_idx` (`updated_by`),
  KEY `fk_degree_qualification` (`qualification_id`),
  CONSTRAINT `fk_degree_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_degree_qualification` FOREIGN KEY (`qualification_id`) REFERENCES `qualification` (`qualification_id`),
  CONSTRAINT `fk_degree_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES (7,6,'Software Engineering','N/A',1,1,1,1,'2021-10-27 11:03:32','2021-10-27 11:03:32'),(8,7,'Civil Engineering','N/A',1,1,1,1,'2021-10-27 11:03:40','2021-10-27 11:03:40'),(9,8,'Electical Engineering','N/A',1,1,1,1,'2021-10-27 11:03:47','2021-10-27 11:03:47');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_category` (
  `category_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `category_code` varchar(255) NOT NULL,
  `custom_code` varchar(255) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_code` (`category_code`),
  KEY `item_category_parent` (`parent_id`),
  KEY `item_category_created_by` (`created_by`),
  KEY `item_category_updated_by` (`updated_by`),
  CONSTRAINT `item_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_category_parent` FOREIGN KEY (`parent_id`) REFERENCES `item_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_category`
--

LOCK TABLES `item_category` WRITE;
/*!40000 ALTER TABLE `item_category` DISABLE KEYS */;
INSERT INTO `item_category` VALUES (13,'Fabric','01','01',NULL,1,1,'2021-10-27 10:56:04','2021-10-27 10:56:04'),(14,'Man','01-01','01-01',NULL,1,1,'2021-10-27 10:56:14','2021-10-27 10:56:14'),(15,'Woman','01-02','01-02',NULL,1,1,'2021-10-27 10:56:24','2021-10-27 10:56:24'),(16,'T Shirts','01-01-01','01-01-01',NULL,1,1,'2021-10-27 10:56:41','2021-10-27 10:56:41');
/*!40000 ALTER TABLE `item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `product_type_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`product_type_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qua_levels`
--

DROP TABLE IF EXISTS `qua_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qua_levels` (
  `qua_levels_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `desc_degree` varchar(500) DEFAULT NULL,
  `level` bigint unsigned DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`qua_levels_id`),
  UNIQUE KEY `description` (`description`),
  UNIQUE KEY `desc_degree` (`desc_degree`),
  UNIQUE KEY `level` (`level`),
  KEY `fk_qualevels_created_by_idx` (`created_by`),
  KEY `fk_qualevels_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_qualevels_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_qualevels_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qua_levels`
--

LOCK TABLES `qua_levels` WRITE;
/*!40000 ALTER TABLE `qua_levels` DISABLE KEYS */;
INSERT INTO `qua_levels` VALUES (9,'QUA Levels','N/A','BS CS',1,1,1,1,1,'2021-10-27 11:02:13','2021-10-27 11:02:13');
/*!40000 ALTER TABLE `qua_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualification` (
  `qualification_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `qua_levels_id` bigint unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`qualification_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_qualification_created_by_idx` (`created_by`),
  KEY `fk_qualification_updated_by_idx` (`updated_by`),
  KEY `fk_qualification_qualevels` (`qua_levels_id`),
  CONSTRAINT `fk_qualification_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_qualification_qualevels` FOREIGN KEY (`qua_levels_id`) REFERENCES `qua_levels` (`qua_levels_id`),
  CONSTRAINT `fk_qualification_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (6,9,'Software Engineering','N/A',1,1,1,1,'2021-10-27 11:02:52','2021-10-27 11:02:52'),(7,9,'Civil Engineering','N/A',1,1,1,1,'2021-10-27 11:02:56','2021-10-27 11:02:56'),(8,9,'Electical Engineering','N/A',1,1,1,1,'2021-10-27 11:03:00','2021-10-27 11:03:00');
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_type`
--

DROP TABLE IF EXISTS `relation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_type` (
  `relation_type_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`relation_type_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_relation_created_by_idx` (`created_by`),
  KEY `fk_relation_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_relation_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_relation_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_type`
--

LOCK TABLES `relation_type` WRITE;
/*!40000 ALTER TABLE `relation_type` DISABLE KEYS */;
INSERT INTO `relation_type` VALUES (6,'Single','N/A',1,1,1,1,'2021-10-27 10:58:34','2021-10-27 10:58:34'),(7,'Married','N/A',1,1,1,1,'2021-10-27 10:58:38','2021-10-27 10:58:38');
/*!40000 ALTER TABLE `relation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religion`
--

DROP TABLE IF EXISTS `religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `religion` (
  `religion_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`religion_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_religion_created_by_idx` (`created_by`),
  KEY `fk_religion_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_religion_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_religion_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religion`
--

LOCK TABLES `religion` WRITE;
/*!40000 ALTER TABLE `religion` DISABLE KEYS */;
INSERT INTO `religion` VALUES (7,'Muslim','N/A',1,1,1,1,'2021-10-27 10:58:06','2021-10-27 10:58:06'),(8,'Christian','N/A',1,1,1,1,'2021-10-27 10:58:14','2021-10-27 10:58:14'),(9,'Jews','N/A',1,1,1,1,'2021-10-27 10:58:19','2021-10-27 10:58:19'),(10,'Hindu','N/A',1,1,1,1,'2021-10-27 10:58:21','2021-10-27 10:58:21');
/*!40000 ALTER TABLE `religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_opening`
--

DROP TABLE IF EXISTS `st_opening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_opening` (
  `st_opening_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `date` date NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`st_opening_id`),
  KEY `fk_product_st_opening_idx` (`product_id`),
  KEY `fk_st_opening_created_idx` (`created_by`),
  KEY `fk_st_opening_updated_idx` (`updated_by`),
  CONSTRAINT `fk_product_st_opening` FOREIGN KEY (`product_id`) REFERENCES `ad_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_st_opening_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_st_opening_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_opening`
--

LOCK TABLES `st_opening` WRITE;
/*!40000 ALTER TABLE `st_opening` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_opening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `auth_type` varchar(55) NOT NULL DEFAULT 'email',
  `is_active` tinyint(1) DEFAULT '1',
  `is_admin` tinyint(1) DEFAULT '0',
  `is_superuser` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@gmail.com','$2b$10$iaFIrUQ8f58vqECytvFe0uyu8AxSRIy6qyswi7DAizRWG1I7gKmLS','Super User','admin@gmail.com','email',1,0,1,'2021-10-27 10:49:57','2021-10-27 10:49:57');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-27 16:16:01

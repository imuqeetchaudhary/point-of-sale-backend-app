CREATE DATABASE  IF NOT EXISTS `pos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
  `customer_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country_id` int unsigned NOT NULL,
  `city_id` int unsigned NOT NULL,
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
  `i_account_id` int DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT '1',
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_delivery_term`
--

DROP TABLE IF EXISTS `ad_delivery_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_delivery_term` (
  `delivery_term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `is_default` tinyint DEFAULT '1',
  `is_active` tinyint DEFAULT '1',
  `i_days` int unsigned DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`delivery_term_id`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  KEY `fk_delivery_created_idx` (`created_by`),
  KEY `fk_delivery_updated_idx` (`updated_by`),
  CONSTRAINT `fk_delivery_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_delivery_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_measuring_unit`
--

DROP TABLE IF EXISTS `ad_measuring_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_measuring_unit` (
  `measuring_unit_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `is_default` tinyint DEFAULT '1',
  `is_active` tinyint DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`measuring_unit_id`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  KEY `fk_measuring_created_idx` (`created_by`),
  KEY `fk_measuring_updated_idx` (`updated_by`),
  CONSTRAINT `fk_measuring_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_measuring_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_menu`
--

DROP TABLE IF EXISTS `ad_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_menu` (
  `menu_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
-- Table structure for table `ad_menu_access_roles`
--

DROP TABLE IF EXISTS `ad_menu_access_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_menu_access_roles` (
  `menu_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
-- Table structure for table `ad_payment_term`
--

DROP TABLE IF EXISTS `ad_payment_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_payment_term` (
  `payment_term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `i_days` int unsigned DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`payment_term_id`),
  UNIQUE KEY `description` (`description`),
  KEY `ad_payment_created_idx` (`created_by`),
  KEY `ad_payment_updated_idx` (`updated_by`),
  CONSTRAINT `fk_payment_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_product_type`
--

DROP TABLE IF EXISTS `ad_product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_product_type` (
  `product_type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`product_type_id`),
  UNIQUE KEY `description` (`description`),
  KEY `ad_product_type_created_idx` (`created_by`),
  KEY `ad_product_type_updated_idx` (`updated_by`),
  CONSTRAINT `fk_product_type_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_type_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_role`
--

DROP TABLE IF EXISTS `ad_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_role` (
  `role_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
-- Table structure for table `ad_user_access_roles`
--

DROP TABLE IF EXISTS `ad_user_access_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_user_access_roles` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
-- Table structure for table `ad_vendor`
--

DROP TABLE IF EXISTS `ad_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_vendor` (
  `vendor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country_id` int unsigned NOT NULL,
  `city_id` int unsigned NOT NULL,
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
  `i_account_id` int DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT '1',
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blood_group`
--

DROP TABLE IF EXISTS `blood_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_group` (
  `bloodgroup_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`bloodgroup_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_blood_created_by_idx` (`created_by`),
  KEY `fk_blood_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_blood_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_blood_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `description` (`description`),
  KEY `brand_created_by` (`created_by`),
  KEY `brand_updated_by` (`updated_by`),
  CONSTRAINT `brand_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `brand_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `province` varchar(150) NOT NULL,
  `dail_code` varchar(50) NOT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `capital` varchar(150) NOT NULL,
  `dail_code` varchar(6) NOT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `currency_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `symbol` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_currency_created_by_idx` (`created_by`),
  KEY `fk_currency_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_currency_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_currency_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree` (
  `degree_id` int unsigned NOT NULL AUTO_INCREMENT,
  `qualification_id` int unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_category` (
  `category_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(55) NOT NULL,
  `category_code` varchar(255) NOT NULL,
  `custom_code` varchar(255) DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `product_type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`product_type_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qua_levels`
--

DROP TABLE IF EXISTS `qua_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qua_levels` (
  `qua_levels_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `desc_degree` varchar(500) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualification` (
  `qualification_id` int unsigned NOT NULL AUTO_INCREMENT,
  `qua_levels_id` int unsigned DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relation_type`
--

DROP TABLE IF EXISTS `relation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_type` (
  `relation_type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`relation_type_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_relation_created_by_idx` (`created_by`),
  KEY `fk_relation_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_relation_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_relation_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `religion`
--

DROP TABLE IF EXISTS `religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `religion` (
  `religion_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `alias` varchar(6) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`religion_id`),
  UNIQUE KEY `description` (`description`),
  KEY `fk_religion_created_by_idx` (`created_by`),
  KEY `fk_religion_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_religion_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_religion_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-20  5:55:47

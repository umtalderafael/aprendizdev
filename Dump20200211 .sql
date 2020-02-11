CREATE DATABASE  IF NOT EXISTS `aprendizdev_development` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aprendizdev_development`;
-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: aprendizdev_development
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (1,'avatar','User',11,1,'2020-02-06 13:35:40'),(2,'avatar','User',12,2,'2020-02-06 20:44:11'),(3,'avatar','User',13,3,'2020-02-06 20:51:59'),(4,'avatar','User',26,4,'2020-02-07 18:08:00'),(5,'avatar','User',27,5,'2020-02-10 11:10:21'),(13,'avatar','User',36,13,'2020-02-11 12:25:17'),(14,'avatar','User',1,14,'2020-02-11 16:44:04');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (1,'r3KqKqk5ub3LnmUSyuGutK1f','tiago.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}',41330,'Q2QVVo0PvCPzvRzwP0V4rA==','2020-02-06 13:35:40'),(2,'Hwd4CnsGncj3YK8UU58CKuGj','miracle-of-sound-online-982x653.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}',40123,'gv1XJLw0DQZYgN245OnuDQ==','2020-02-06 20:44:11'),(3,'6gh86HjjrZx5yCDrUh2CRyta','miracle of sound.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}',10811,'OrKYHlNMiCEvLFbjB2huEQ==','2020-02-06 20:51:59'),(4,'Bz9vJZhznJwtndEDMspLL64F','fred mercury.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}',25437,'4xQMO2eFTnQHKzlvpvV1UA==','2020-02-07 18:08:00'),(5,'UjbiDHUnxKqnRt4NA81gh92s','axl rose.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}',127815,'DE4PwZ/RTKs7a6Xrt5qJBQ==','2020-02-10 11:10:21'),(6,'AEDKC2TqWzX7feAKuicZmGFw','EU.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}',10779,'Ex4CYkyhcw+x4j7iBFpqKw==','2020-02-10 14:41:30'),(7,'8Hnaa9UUGsULebYZX29qjPYL','EU.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}',10779,'Ex4CYkyhcw+x4j7iBFpqKw==','2020-02-10 19:38:12'),(8,'J1pGGnZPvbtFZ6Sh8o841c5m','EU.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}',10779,'Ex4CYkyhcw+x4j7iBFpqKw==','2020-02-10 19:50:45'),(13,'5n78vYptV7J8GpYQKF4yUVZV','kurt cobain.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}',183721,'Oqsrbp3LOOfQERtcnDUZOQ==','2020-02-11 12:25:17'),(14,'dbf4aU15oV8fhz6bLzACRLCP','EU.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}',10779,'Ex4CYkyhcw+x4j7iBFpqKw==','2020-02-11 16:44:04');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-02-04 15:10:04','2020-02-04 15:10:04');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `careers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Desenvolvedor Front-end','2020-02-04 18:40:21','2020-02-04 18:40:21'),(2,'Desenvolvedor Back-end','2020-02-04 18:40:55','2020-02-05 13:59:57'),(3,'Analista de dados','2020-02-04 18:41:16','2020-02-04 18:41:16'),(4,'Desenvolvedor Mobile','2020-02-04 18:41:50','2020-02-04 18:41:50');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `classrooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ativa` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (4,1,'2020-02-11 18:25:35','2020-02-11 19:40:37','Sala de aula Rafael & Rony'),(5,1,'2020-02-11 19:23:07','2020-02-11 19:40:39','Sala de aula Rafael & Hyoran');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms_posts`
--

DROP TABLE IF EXISTS `classrooms_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `classrooms_posts` (
  `classroom_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  KEY `index_classrooms_posts_on_classroom_id_and_post_id` (`classroom_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms_posts`
--

LOCK TABLES `classrooms_posts` WRITE;
/*!40000 ALTER TABLE `classrooms_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `classrooms_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms_users`
--

DROP TABLE IF EXISTS `classrooms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `classrooms_users` (
  `classroom_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  KEY `index_classrooms_users_on_classroom_id_and_user_id` (`classroom_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms_users`
--

LOCK TABLES `classrooms_users` WRITE;
/*!40000 ALTER TABLE `classrooms_users` DISABLE KEYS */;
INSERT INTO `classrooms_users` VALUES (4,1),(4,34),(5,1),(5,21);
/*!40000 ALTER TABLE `classrooms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contacts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `languages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `career_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_languages_on_career_id` (`career_id`),
  CONSTRAINT `fk_rails_74376454f5` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Html','2020-02-04 18:56:50','2020-02-04 18:56:50',1),(2,'Css','2020-02-04 19:20:52','2020-02-04 19:20:52',1),(3,'Sass','2020-02-04 19:21:14','2020-02-04 19:21:14',1),(4,'Bootstrap','2020-02-04 19:22:25','2020-02-04 19:22:25',1),(5,'Materialize','2020-02-04 19:22:38','2020-02-04 19:22:38',1),(6,'JavaScript','2020-02-04 19:22:50','2020-02-04 19:22:50',1),(7,'Jquery','2020-02-04 19:23:03','2020-02-04 19:23:03',1),(8,'Angular','2020-02-04 19:23:15','2020-02-04 19:23:15',1),(9,'React','2020-02-04 19:23:25','2020-02-04 19:23:25',1),(10,'Vue','2020-02-04 19:23:36','2020-02-04 19:23:36',1),(11,'Ember','2020-02-04 19:23:46','2020-02-04 19:23:46',1),(12,'Java','2020-02-04 19:24:00','2020-02-04 19:24:00',2),(13,'C++','2020-02-04 19:24:13','2020-02-04 19:24:13',2),(14,'C#','2020-02-04 19:25:00','2020-02-04 19:25:00',2),(15,'TypeScript','2020-02-04 19:30:09','2020-02-05 13:58:59',1),(16,'Php','2020-02-04 19:31:24','2020-02-04 19:31:24',2),(17,'Dart','2020-02-04 19:31:37','2020-02-04 19:31:37',2),(18,'Ruby','2020-02-04 19:31:51','2020-02-04 19:31:51',2),(19,'NodeJS','2020-02-04 19:32:06','2020-02-04 19:32:06',2),(20,'Clojure','2020-02-04 19:32:28','2020-02-04 19:32:28',2),(21,'Go','2020-02-04 19:32:39','2020-02-04 19:32:39',2),(22,'Cobol','2020-02-04 19:32:50','2020-02-04 19:32:50',2),(23,'Laravel','2020-02-04 19:33:03','2020-02-04 19:33:03',2),(24,'CodeIgniter','2020-02-04 19:33:13','2020-02-04 19:33:13',2),(25,'Cake','2020-02-04 19:33:26','2020-02-04 19:33:26',2),(26,'Ruby on Rails','2020-02-04 19:33:44','2020-02-04 19:33:44',2),(27,'.NET','2020-02-04 19:34:05','2020-02-04 19:34:05',2),(28,'Entity','2020-02-04 19:34:14','2020-02-04 19:34:14',2),(29,'SQL','2020-02-04 19:34:30','2020-02-04 19:34:30',3),(30,'MySql','2020-02-04 19:34:40','2020-02-04 19:34:40',3),(31,'Oracle','2020-02-04 19:34:55','2020-02-04 19:34:55',3),(32,'Redis','2020-02-04 19:37:42','2020-02-04 19:37:42',3),(33,'MongoDB','2020-02-04 19:37:52','2020-02-04 19:37:52',3),(34,'Datomic','2020-02-04 19:38:02','2020-02-04 19:38:02',3),(35,'Python','2020-02-04 19:38:12','2020-02-04 19:38:12',3),(36,'Android','2020-02-04 19:38:29','2020-02-04 19:38:29',4),(37,'iOS','2020-02-04 19:38:39','2020-02-04 19:38:39',4),(38,'Xamarin','2020-02-04 19:38:48','2020-02-04 19:38:48',4),(39,'Cordova','2020-02-04 19:38:56','2020-02-04 19:38:56',4),(40,'Ionic','2020-02-04 19:39:05','2020-02-04 19:39:05',4),(41,'React Native','2020-02-04 19:39:16','2020-02-04 19:39:16',4),(42,'Flutter','2020-02-04 19:39:26','2020-02-04 19:39:26',4);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages_users`
--

DROP TABLE IF EXISTS `languages_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `languages_users` (
  `language_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  KEY `index_languages_users_on_language_id_and_user_id` (`language_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages_users`
--

LOCK TABLES `languages_users` WRITE;
/*!40000 ALTER TABLE `languages_users` DISABLE KEYS */;
INSERT INTO `languages_users` VALUES (1,1),(1,2),(1,5),(1,12),(1,13),(1,31),(1,34),(2,5),(2,12),(2,13),(2,31),(2,34),(3,10),(4,5),(4,11),(5,2),(5,7),(5,19),(5,32),(6,5),(6,12),(6,13),(6,18),(6,31),(6,36),(7,26),(7,33),(8,3),(8,34),(10,34),(11,30),(13,30),(14,28),(16,1),(16,8),(16,14),(16,21),(16,29),(16,31),(17,6),(17,19),(17,22),(18,24),(18,27),(18,33),(19,16),(19,17),(19,18),(20,7),(20,23),(20,32),(20,36),(21,20),(22,30),(23,6),(24,3),(24,14),(24,34),(25,26),(26,35),(27,25),(27,28),(28,9),(28,15),(28,28),(30,1),(30,14),(30,21),(30,31),(31,10),(31,15),(31,34),(32,9),(32,23),(33,6),(33,7),(33,8),(33,11),(33,17),(33,22),(33,33),(33,36),(34,20),(34,24),(34,26),(34,29),(35,16),(35,24),(35,27),(35,35),(36,1),(36,3),(36,10),(36,23),(37,1),(37,22),(37,34),(38,15),(38,25),(38,36),(39,8),(39,9),(39,11),(39,17),(39,32),(40,19),(40,20),(40,29),(41,1),(41,16),(42,1),(42,3),(42,27),(42,34),(42,35);
/*!40000 ALTER TABLE `languages_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `locations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_locations_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_5e107925c6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'15045530','São José do Rio Preto','SP','2020-02-04 17:37:24','2020-02-06 20:42:14',1),(2,'15081080','São José do Rio Preto','SP','2020-02-05 11:46:37','2020-02-05 11:46:37',2),(3,'15045520','São José do Rio Preto','SP','2020-02-05 12:48:01','2020-02-05 12:48:01',3),(4,'14020100','Ribeirão Preto','SP','2020-02-05 20:34:24','2020-02-05 20:34:24',4),(5,'14010200','Ribeirão Preto','SP','2020-02-05 20:38:41','2020-02-05 20:38:41',5),(6,'14020400','Ribeirão Preto','SP','2020-02-06 11:02:52','2020-02-06 11:02:52',6),(7,'14050300','Ribeirão Preto','SP','2020-02-06 11:04:06','2020-02-06 11:04:06',7),(8,'15020300','São José do Rio Preto','SP','2020-02-06 11:12:35','2020-02-06 11:12:35',8),(9,'15020300','São José do Rio Preto','SP','2020-02-06 12:46:53','2020-02-06 12:46:53',9),(10,'15045540','São José do Rio Preto','SP','2020-02-06 13:06:50','2020-02-06 13:06:50',10),(11,'15014400','São José do Rio Preto','SP','2020-02-06 13:35:48','2020-02-06 13:35:48',11),(12,'15135312','Mirassol','SP','2020-02-06 20:44:29','2020-02-06 20:44:29',12),(13,'15133320','Mirassol','SP','2020-02-06 20:52:05','2020-02-06 20:52:05',13),(14,'15800150','Catanduva','SP','2020-02-07 11:24:21','2020-02-07 11:24:21',14),(15,'15800215','Catanduva','SP','2020-02-07 11:37:56','2020-02-07 11:49:49',15),(16,'11010220','Santos','SP','2020-02-07 11:51:38','2020-02-07 11:51:38',16),(17,'30110-035','Belo Horizonte','MG','2020-02-07 12:12:42','2020-02-07 12:12:42',17),(18,'30110-035','Belo Horizonte','MG','2020-02-07 12:48:04','2020-02-07 12:48:04',18),(19,'30120-070','Belo Horizonte','MG','2020-02-07 14:27:30','2020-02-07 14:27:30',19),(20,'30120-070','Belo Horizonte','MG','2020-02-07 14:50:41','2020-02-07 14:50:41',20),(21,'15040300','São José do Rio Preto','SP','2020-02-07 16:46:54','2020-02-07 16:46:54',21),(22,'15080080','São José do Rio Preto','SP','2020-02-07 17:01:05','2020-02-07 17:01:05',22),(23,'15080080','','','2020-02-07 17:13:28','2020-02-07 17:13:28',22),(24,'15081080','São José do Rio Preto','SP','2020-02-07 17:14:56','2020-02-07 17:14:56',23),(25,'15081090','São José do Rio Preto','SP','2020-02-07 17:29:30','2020-02-07 17:29:30',24),(26,'15080090','São José do Rio Preto','SP','2020-02-07 17:46:34','2020-02-07 17:46:34',25),(27,'15080090','','','2020-02-07 17:48:49','2020-02-07 17:48:49',25),(28,'15020300','São José do Rio Preto','SP','2020-02-07 18:08:10','2020-02-07 18:08:10',26),(29,'15080090','São José do Rio Preto','SP','2020-02-10 11:10:36','2020-02-10 11:10:36',27),(30,'15080100','São José do Rio Preto','SP','2020-02-10 11:57:59','2020-02-10 11:57:59',28),(31,'15045540','São José do Rio Preto','SP','2020-02-10 12:17:38','2020-02-10 12:17:38',29),(32,'14050300','Ribeirão Preto','SP','2020-02-10 12:58:36','2020-02-10 12:58:36',30),(33,'15020300','São José do Rio Preto','SP','2020-02-10 18:18:18','2020-02-10 18:18:18',31),(34,'30110-063','Belo Horizonte','MG','2020-02-10 18:42:37','2020-02-10 18:42:37',32),(35,'30110072','Belo Horizonte','MG','2020-02-10 19:00:11','2020-02-10 19:00:11',33),(36,'15014100','São José do Rio Preto','SP','2020-02-10 20:42:27','2020-02-10 20:42:27',34),(37,'15020300','São José do Rio Preto','SP','2020-02-11 12:23:22','2020-02-11 12:23:22',35),(38,'15045510','São José do Rio Preto','SP','2020-02-11 12:25:30','2020-02-11 12:25:30',36);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `string` varchar(255) DEFAULT NULL,
  `texto` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_posts_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_5b5ddfd518` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20200131175248'),('20200201003848'),('20200201205304'),('20200202201905'),('20200202225342'),('20200204174212'),('20200204174334'),('20200204180248'),('20200204181712'),('20200204181746'),('20200204182029'),('20200204182212'),('20200205124018'),('20200205200359'),('20200205200500'),('20200205201046'),('20200206120449'),('20200206121023'),('20200206121745'),('20200206185930'),('20200207202206'),('20200210114642'),('20200211130358'),('20200211130956'),('20200211171333'),('20200211202713'),('20200211203526'),('20200211204330');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `imagem` varchar(255) DEFAULT NULL,
  `repositorio` varchar(255) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'umtalderafael@hotmail.com','$2a$12$cRxYB6gXVwJ5.gTaFrARReiAqCSRw1K8rYReM3kcOprDEiWxbxpX2','2020-02-04 17:37:15','2020-02-11 16:44:04','Rafael Carvalho','Desenvolvedor',32,'Sou programador Web e também possuo experiencia como desenvolvedor mobile. Já trabalhei em empresas como  a Guardião Digital e uma Startup chamada Farmacia na mão.',0,NULL,'https://github.com/umtalderafael','1988-01-05'),(2,'junior@raniel.com','$2a$12$TEghcuOijFnrWKxmodNGv.v6wUBU3tdu8S9nODhCbigQg7fZxcUiC','2020-02-05 11:46:25','2020-02-05 11:46:25','Junior Raniel','Aprendiz',16,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',0,NULL,NULL,'1977-01-05'),(3,'evanir@lima.com','$2a$12$occlgGch8XJT2bT0O.wxheBk6mXDOTyaiPO2JZm51RiOkJ2AuJN0G','2020-02-05 12:22:40','2020-02-05 12:22:40','Evanir Lima','Desenvolvedor',40,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',0,NULL,NULL,'1977-01-05'),(4,'ricardo@matias.com','$2a$12$8Dv7GbnWW8.gEKrbivUd/u7VQUk/nxEARLQkzw.2TlmsyZWiX8CQi','2020-02-05 20:34:02','2020-02-05 20:34:02','Ricardo Matias','Aprendiz',18,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',0,NULL,NULL,'1977-01-05'),(5,'livia@oliveira.com','$2a$12$nBFgXntsHlNW28LBQEk58eWStODwXleOKMhjQcomUOxc1FcXvcvIe','2020-02-05 20:38:20','2020-02-05 20:38:20','Livia Oliveira','Aprendiz',19,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',0,NULL,NULL,'1977-01-05'),(6,'gus@mafra.com','$2a$12$SmX.oVRxrEsbKKBu7fjbxeiNprppXLjRROVhopmJjbxvbJOyqdukG','2020-02-06 11:02:37','2020-02-06 11:02:37','Gustavo Mafra','Desenvolvedor',33,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',0,NULL,NULL,'1977-01-05'),(7,'helton@santos.com','$2a$12$NRmFKoIh4oygap6M98p3T.6q6AGukGwhO2AI6CQpbhbf5FwhxGq9O','2020-02-06 11:03:58','2020-02-06 11:03:58','Helton Santos','Aprendiz',17,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',0,NULL,NULL,'1977-01-05'),(8,'joao@castro.com','$2a$12$7fHeRG3jOOf92OD086.xa.jrRezKbHlGL4tgWdCqQ8O7GbJgYDAhq','2020-02-06 11:12:24','2020-02-06 11:12:24','Joao Castro','Aprendiz',20,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',0,NULL,NULL,'1977-01-05'),(9,'tiago@neves.com','$2a$12$MQopH8wWygz7ztunwjxiReF3BPXSoQbaILXJrCeoZFcYw/LXcX50m','2020-02-06 12:41:55','2020-02-06 12:41:55','Tiago Neves','Desenvolvedor',36,NULL,0,NULL,NULL,'1977-01-05'),(10,'lucas@ponde.com','$2a$12$Br2J0BCHngJmKHwOXHbKLeKnrZ3vbapRlRoCBlzBcX3D5C3FA2ImK','2020-02-06 13:06:24','2020-02-06 13:06:24','Lucas Ponde','Desenvolvedor',33,NULL,0,NULL,NULL,'1977-01-05'),(11,'lima@duarte.com','$2a$12$xPKO4vH9/a9apkIAbHnioeXzEEfx/U.Zbd8Qrq0uCK1m9o/tVyMGi','2020-02-06 13:35:40','2020-02-06 13:35:40','Lima Duarte','Desenvolvedor',45,NULL,0,NULL,NULL,'1977-01-05'),(12,'igor@mendes.com','$2a$12$CsEW9UMB9uqfrnb6uWohaeB3JzCDCBYClZ4a8osAwcela0ZHHpIi.','2020-02-06 20:44:11','2020-02-06 20:44:11','Igor Mendes','Aprendiz',22,NULL,0,NULL,NULL,'1977-01-05'),(13,'rubens@matos.com','$2a$12$TefZ/WVvoaqcEHUkRwtPk./9hc6h4TLD02xBKEdmddWaR6Zenn0.C','2020-02-06 20:51:59','2020-02-06 20:51:59','Rubens Matos','Desenvolvedor',31,NULL,0,NULL,NULL,'1977-01-05'),(14,'lucas@jose.com','$2a$12$plA4vofRIErKPyvDZMaZputr5Qj9WxwUf2xABjMNSS8H7aglbWSd6','2020-02-07 11:24:15','2020-02-07 11:24:15','Lucas Jose','Aprendiz',14,NULL,0,NULL,NULL,'1977-01-05'),(15,'fabio@lima.com','$2a$12$XJ.LiIj006svlcgVCUv.GOsZe1/NLsQXLD5hlbSkwfRhiUDkidQqa','2020-02-07 11:37:52','2020-02-07 11:37:52','Fabio Lima','Aprendiz',19,NULL,0,NULL,NULL,'1977-01-05'),(16,'vander@juca.com','$2a$12$gKaT3jt7EWZbxZeWg61oAu2w7VJZBZEuhfEi/UQqhTtSMVwsIE.Qu','2020-02-07 11:51:12','2020-02-07 11:51:12','Vander Juca','Aprendiz',16,NULL,0,NULL,NULL,'1977-01-05'),(17,'diego@souza.com','$2a$12$rsEMY0SoJn.VOmeTbDUs0.6msT9eA6slDY1g8YvPRrlra45uBqHKW','2020-02-07 12:12:37','2020-02-07 12:13:09','Diego Souza','Desenvolvedor',30,'Sou o diego, etc e tal.',0,NULL,'https://github.com/diego','1977-01-05'),(18,'doni@zete.com','$2a$12$CkLq0SNyx72X25QYKpn8dOvlEFkxb.sT2mVm2ylrevVkKA0jU6Vie','2020-02-07 12:47:55','2020-02-07 13:46:23','Doni Zete','Aprendiz',22,'Doni donizete',0,NULL,'https://github.com/doni','1977-01-05'),(19,'juca@oliveira.com','$2a$12$8kwqdZ.fDiRMJW2nuOV.eOb9.VEqwGK9U2r8fLj1Dm4yioFin6ioq','2020-02-07 14:22:55','2020-02-07 14:28:01','Juca Oliveira','Desenvolvedor',40,'Perfil do Juquinha master extreme programmer ',0,NULL,'https://github.com/juca','1977-01-05'),(20,'kelly@key.com','$2a$12$b8V.ndtHPUJHr21zQMA6bu.Xe4QEaeS8iap6ve0NwXHm9mgG2pNAa','2020-02-07 14:50:27','2020-02-07 14:53:27','Kelly Key','Aprendiz',11,'Kelly Key uma cantora programadora',0,NULL,'https://github.com/kelly','1977-01-05'),(21,'hyoran@kevin.com','$2a$12$gfkmzfsY8CoMGubVvvCqweoireNMeL89Xig2n3tHuWemqMgVONtRi','2020-02-07 16:46:31','2020-02-07 16:46:31','Hyoran Kevin','Aprendiz',22,NULL,0,NULL,NULL,'1977-01-05'),(22,'gabriel@pensador.com','$2a$12$637nX/S7xSb2Wb4cJTJtBupQLb9VpSMowgFfBCBsrId2wF7dl25eC','2020-02-07 17:00:55','2020-02-07 17:01:19','Gabriel Pensador','Aprendiz',16,'jghjghjg',0,NULL,'ghjghjg','1977-01-05'),(23,'rafaela@vieira.com','$2a$12$WQSfCjotbcKauN8Sn12ls.b2uI/hBY91omQmoz0yF3njOa1vI/4ka','2020-02-07 17:14:48','2020-02-07 17:14:48','Rafael Vieira','Desenvolvedor',25,NULL,0,NULL,NULL,'1977-01-05'),(24,'julia@nascimento.com','$2a$12$IKsbpwTcbt53b5b.mKAvn.R3ocY9tK5fL2F73bV0PknDqqDPM5gXy','2020-02-07 17:29:21','2020-02-07 17:35:29','Julia Nascimento','Desenvolvedor',26,'uuuuuuuuuuu',0,NULL,'oiuiou','1977-01-05'),(25,'fabiano@vaz.com','$2a$12$vgvoeuuA2K8jLwqE7kWNCOL0.N6lD4Li/meSkrrxO44v2viTO1TLm','2020-02-07 17:46:23','2020-02-07 17:53:12','Fabiano Vaz','Aprendiz',18,'bbbbbbbbbbbbb',0,NULL,'Aaaaaaaaaaaa','1977-01-05'),(26,'fred@mercury.com','$2a$12$M4W.CU6VmfJtIj2lKy9lGesJblCQfMLSZe5VcI2cS3ffZhezbD9qq','2020-02-07 18:08:00','2020-02-07 19:27:16','Fred Mercury','Aprendiz',20,'Cantor do Guns n Roses e programador nas horas vagas',0,NULL,'https://github.com/axl','1977-01-05'),(27,'axl@rose.com','$2a$12$D5weDfybXGy4D73uEPgQBehdD3x7nC8dbwtcCzkJXu7VX5A9GvCUy','2020-02-10 11:10:21','2020-02-10 11:10:21','Axl Rose','Desenvolvedor',NULL,NULL,0,NULL,NULL,'1977-01-05'),(28,'fran@ciele.com','$2a$12$w1Y7M3VRTUJY0vP1nitP/OKW.AwQyGyKy/4Y/8N16P2E68G7Z8AAO','2020-02-10 11:57:50','2020-02-10 12:03:47','Fran Ciele','Desenvolvedor',NULL,'fdsfdsf',0,NULL,'https://github.com/fran','1977-01-05'),(29,'juliano@fabricio.com','$2a$12$4WgZYP9FY6H0fOrVWPJxiOfwNONVt1OJtSVRBWJ/WH345GjKfXe3C','2020-02-10 12:17:30','2020-02-10 12:17:54','Juliano Fabricio','Desenvolvedor',NULL,'FFFFFFFFFF',0,NULL,'https://github.com/juliano','1988-01-05'),(30,'dani@di.com','$2a$12$vMzAXJkXp8dVAFxlTCGIc.LgP91/eYhxV5c3aSqCpL/Cwob.Q2ZRW','2020-02-10 12:58:27','2020-02-10 12:58:58','Dani Di','Desenvolvedor',NULL,'Dani diiiiiiiiiiiiiiii',0,NULL,'https://github.com/danidi','1975-02-11'),(31,'samanta@vasques.com','$2a$12$jkKeei.rNdt7J38icAhBIeVCUw1sIqv7D.x0v1X5qOIoAfJQIxAtS','2020-02-10 18:18:12','2020-02-10 18:19:28','Samanta Vasques','Aprendiz',NULL,'Ola, sou a samanta e gostaria de ter a oportunidade de ajudar um programador a aprender a programar.',0,NULL,'https://github.com/samanta','2005-02-10'),(32,'bruna@brunardi.com','$2a$12$Ve15EbTy.clULh0wSrZcPOT2j9Q9n/nWUuVimdta8nKpIiXLecBFe','2020-02-10 18:42:28','2020-02-10 18:42:28','Bruna Brunardi','Desenvolvedor',NULL,NULL,0,NULL,NULL,'1999-03-10'),(33,'nivaldo@lance.com','$2a$12$/innYOvhzXrb8Wuf2UJ3Re9L0VE8QluTRx7Ik1ijOFjyregvY/K.m','2020-02-10 18:59:57','2020-02-10 19:00:36','Nivaldo Lance','Desenvolvedor',NULL,'Nivaldo pereira dos santos super programador ',0,NULL,'https://github.com/nivaldo','1995-05-20'),(34,'rony@lessa.com','$2a$12$RAb52x7RouM3hqFWW7NSD.qgNFLaSthzxiXKqKwPnewhYeYK4ENiS','2020-02-10 20:42:12','2020-02-10 20:42:48','Rony Lessa','Aprendiz',NULL,'Sou o Rony ',0,NULL,'https://github.com/rony','2009-06-10'),(35,'fabiano@junior.com','$2a$12$e7.rYg5Ol78BzhZrAvQedusDc5sunbd08e3ASFqP34piyuhBcbXKK','2020-02-11 12:23:07','2020-02-11 12:23:56','Fabiano Junior','Aprendiz',NULL,'Sou o Fabiano e quero ser o melhor programador que existe no mundo.',0,NULL,'https://github.com/fabiano','2010-10-10'),(36,'kurt@cobain.com','$2a$12$3/ZjAZNNsqyuibH/WPYXGufUdY7z3qQYVvq7l6KhtjYbZLcAKMRNK','2020-02-11 12:25:17','2020-02-11 12:26:01','Kurt Cobain','Desenvolvedor',NULL,'Cantos e compositor do Nirvana e programador nas horas vagas',0,NULL,'https://github.com/kurt','1980-08-10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-11 17:53:43

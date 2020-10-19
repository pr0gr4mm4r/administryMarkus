-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: markus_administry
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `ausleihen_abgeben`
--

DROP TABLE IF EXISTS `ausleihen_abgeben`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ausleihen_abgeben` (
  `ausleihen_abgeben_id` int NOT NULL,
  `abgeben` bit(1) DEFAULT NULL,
  `datum` datetime(6) DEFAULT NULL,
  `student` int DEFAULT NULL,
  `fach_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ausleihen_abgeben_id`),
  KEY `FK58rd8vm2m2iu4vaotqu3m5368` (`student`),
  CONSTRAINT `FK58rd8vm2m2iu4vaotqu3m5368` FOREIGN KEY (`student`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ausleihen_abgeben`
--

LOCK TABLES `ausleihen_abgeben` WRITE;
/*!40000 ALTER TABLE `ausleihen_abgeben` DISABLE KEYS */;
/*!40000 ALTER TABLE `ausleihen_abgeben` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ausleihen_abgeben_gegenstand_list`
--

DROP TABLE IF EXISTS `ausleihen_abgeben_gegenstand_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ausleihen_abgeben_gegenstand_list` (
  `ausleihen_abgeben_list_ausleihen_abgeben_id` int NOT NULL,
  `gegenstand_list_gegenstand_id` int NOT NULL,
  KEY `FKjlgoopk542k0nljgva7trwbkl` (`ausleihen_abgeben_list_ausleihen_abgeben_id`),
  CONSTRAINT `FKjlgoopk542k0nljgva7trwbkl` FOREIGN KEY (`ausleihen_abgeben_list_ausleihen_abgeben_id`) REFERENCES `ausleihen_abgeben` (`ausleihen_abgeben_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ausleihen_abgeben_gegenstand_list`
--

LOCK TABLES `ausleihen_abgeben_gegenstand_list` WRITE;
/*!40000 ALTER TABLE `ausleihen_abgeben_gegenstand_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ausleihen_abgeben_gegenstand_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT  IGNORE INTO `category` VALUES (5,'Alle'),(4,'Beleuchtung'),(1,'Kameras'),(2,'Mikrofone'),(3,'Rekorder'),(6,'zzzNeue');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fach`
--

DROP TABLE IF EXISTS `fach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fach` (
  `fach_id` int NOT NULL,
  `fach_name` varchar(30) DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`fach_id`),
  UNIQUE KEY `fachname_unique` (`fach_name`),
  KEY `FKkufuy321w9vfxjoqfoxglfe3i` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fach`
--

LOCK TABLES `fach` WRITE;
/*!40000 ALTER TABLE `fach` DISABLE KEYS */;
INSERT  IGNORE INTO `fach` VALUES (180,'Pool',5);
/*!40000 ALTER TABLE `fach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gegenstand`
--

DROP TABLE IF EXISTS `gegenstand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gegenstand` (
  `gegenstand_id` int NOT NULL,
  `gegenstand_name` varchar(255) DEFAULT NULL,
  `fach` int DEFAULT NULL,
  `ausgeliehen` bit(1) DEFAULT NULL,
  `student` int DEFAULT NULL,
  `mvp` bit(1) DEFAULT NULL,
  PRIMARY KEY (`gegenstand_id`),
  KEY `FK3akv2ri380xxafe422ggohbdw` (`fach`),
  KEY `FK500cw6tdf48sx8ta49nudexoo` (`student`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gegenstand`
--

LOCK TABLES `gegenstand` WRITE;
/*!40000 ALTER TABLE `gegenstand` DISABLE KEYS */;
/*!40000 ALTER TABLE `gegenstand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `handy_nummer` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 10:59:34

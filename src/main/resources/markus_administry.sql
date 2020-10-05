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
  `abgabe_datum` date DEFAULT NULL,
  `ausleih_datum` date DEFAULT NULL,
  `gegenstand_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`ausleihen_abgeben_id`),
  KEY `FKqc3umrug89238le27gjwlr50o` (`student_id`),
  CONSTRAINT `FKqc3umrug89238le27gjwlr50o` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ausleihen_abgeben`
--

LOCK TABLES `ausleihen_abgeben` WRITE;
/*!40000 ALTER TABLE `ausleihen_abgeben` DISABLE KEYS */;
INSERT  IGNORE INTO `ausleihen_abgeben` VALUES (845,'2020-10-05','2020-10-05',600,699),(846,'2020-10-05','2020-10-05',601,699),(847,'2020-10-05','2020-10-05',601,824),(849,'2020-10-05','2020-10-05',442,699),(851,'2020-10-05','2020-10-05',553,850);
/*!40000 ALTER TABLE `ausleihen_abgeben` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fach`
--

DROP TABLE IF EXISTS `fach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fach` (
  `fach_id` int NOT NULL,
  `fach_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fach`
--

LOCK TABLES `fach` WRITE;
/*!40000 ALTER TABLE `fach` DISABLE KEYS */;
INSERT  IGNORE INTO `fach` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'11'),(12,'12'),(13,'13'),(14,'14'),(15,'15'),(16,'16'),(17,'17'),(18,'18'),(19,'19'),(20,'20'),(21,'21'),(22,'22'),(23,'23'),(24,'24'),(25,'25'),(26,'26'),(27,'27'),(28,'28'),(29,'29'),(30,'30a'),(31,'30b'),(32,'31'),(33,'32'),(34,'33'),(35,'34a'),(36,'34b'),(37,'35a'),(38,'35b'),(39,'36a'),(40,'36b'),(41,'37a'),(42,'37b'),(43,'38a'),(44,'38b'),(45,'39'),(46,'40'),(47,'41'),(48,'42'),(49,'43'),(50,'46'),(175,'47'),(176,'48'),(177,'49'),(178,'50'),(179,'51');
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
INSERT  IGNORE INTO `gegenstand` VALUES (51,'Sony Z 150',1,0x00,NULL),(52,'Akku groß',1,0x00,NULL),(53,'Akku groß',1,0x00,NULL),(55,'Akku klein',1,0x00,NULL),(56,'XLR-Kabel 1m',1,0x00,NULL),(57,'Funkset',1,0x00,NULL),(58,'Kopfhörer',1,0x00,NULL),(59,'Kopflicht',1,0x00,NULL),(60,'Kartenlesegerät',1,0x00,NULL),(61,'Sony Z150',2,0x00,NULL),(62,'Sd-Karten 128gb',2,0x00,NULL),(595,'Stativplatte',2,0x00,NULL),(73,'Sony Z150',3,0x00,NULL),(74,'128Gb SD-Karten',3,0x00,NULL),(75,'128Gb SD-Karten',3,0x00,NULL),(76,'Stativplatte',3,0x00,NULL),(77,'Schraube',3,0x00,NULL),(78,'Akkus groß',3,0x00,NULL),(79,'Akkus groß',3,0x00,NULL),(80,'Akkus klein',3,0x00,NULL),(81,'Akkus klein',3,0x00,NULL),(82,'Kopflicht',3,0x00,NULL),(83,'Fernbedienung',3,0x00,NULL),(84,'Rode Mikrofon, Popschutz, Tasche',3,0x00,NULL),(86,'XLR Kabel 5m',3,0x00,NULL),(87,'XLR Kabel 1m',3,0x00,NULL),(88,'SD-Kartenlesegerät',3,0x00,NULL),(89,'Funkset',3,0x00,NULL),(90,'Kopfhörer',3,0x00,NULL),(91,'Sony Z150',4,0x00,NULL),(92,'128GB SD-Karten',4,0x00,NULL),(93,'128GB SD-Karten',4,0x00,NULL),(94,'Stativplatte',4,0x00,NULL),(95,'Schraube',4,0x00,NULL),(96,'Sony Remote Bedienung			',4,0x00,NULL),(97,'Fernbedienung			',4,0x00,NULL),(98,'Imbusschlüssel	',4,0x00,NULL),(99,'Akku groß',4,0x00,NULL),(100,'Akku klein',4,0x00,NULL),(101,'Akku klein',4,0x00,NULL),(102,'Kopflicht',4,0x00,NULL),(103,'XLR Kabel 5m',4,0x00,NULL),(104,'XLR Kabel 1m',4,0x00,NULL),(105,'Rode Mikrofon,Popschutz, Tasche',4,0x00,NULL),(106,'Funkset',4,0x00,NULL),(107,'Kopfhörer',4,0x00,NULL),(108,'Sony PMW EX3',5,0x00,NULL),(109,'Speicherkartenadapter',5,0x00,NULL),(110,'Speicherkartenadapter',5,0x00,NULL),(111,'Akkus PB-u60 (groß)',5,0x00,NULL),(112,'Akkus PB-u60 (groß)',5,0x00,NULL),(113,'Akkuladegerät (Kamera)',5,0x00,NULL),(114,'XLR Kabel 1 m',5,0x00,NULL),(115,'XLR Kabel 7,5 m',5,0x00,NULL),(116,'Component Videokabel',5,0x00,NULL),(117,'Bedienunganleitung Rodemikrofon',5,0x00,NULL),(118,'Kopfhörer Sennheiser HD-25 c2',5,0x00,NULL),(119,'USB Datenkabel',5,0x00,NULL),(120,'Kamerasucher (zum Aufstecken)',5,0x00,NULL),(121,'Tasche Rodemikrofon mit Mikro und Popschutz',5,0x00,NULL),(122,'Funkmikrofon (Empfänger, Sender inkl. Kabel)',5,0x00,NULL),(123,'Kartenleseadaper auf USB',5,0x00,NULL),(124,'Imbusschlüssel/Innensechskantschlüssel',5,0x00,NULL),(125,'Fernbedienung',5,0x00,NULL),(126,'Stativplatte mit Schraube',5,0x00,NULL),(127,'Klettkabelbinder',5,0x00,NULL),(128,'Klettkabelbinder',5,0x00,NULL),(129,'Klettkabelbinder',5,0x00,NULL),(130,'Klettkabelbinder',5,0x00,NULL),(131,'Sony PMW EX3',6,0x00,NULL),(132,'Speicherkartenadapter',6,0x00,NULL),(133,'Speicherkartenadapter',6,0x00,NULL),(134,'32 GB Speicherkarten',6,0x00,NULL),(135,'32 GB Speicherkarten',6,0x00,NULL),(136,'Akkus PB-u30 1 (klein)',6,0x00,NULL),(137,'Akkus PB-u30 1 (klein)',6,0x00,NULL),(138,'Akkus PB-u60 (groß)',6,0x00,NULL),(139,'Akkuladegerät (Kamera)',6,0x00,NULL),(140,'XLR Kabel 1 m',6,0x00,NULL),(141,'Component Videokabel',6,0x00,NULL),(142,'Kopfhörer Sennheiser HD-25 c2',6,0x00,NULL),(143,'USB Datenkabel',6,0x00,NULL),(144,'Fernbedienung Kamera',6,0x00,NULL),(145,'Kamerasucher (zum Aufstecken)',6,0x00,NULL),(146,'Tasche Rodemikrofon, mit Rodemikro und Popschutz ',6,0x00,NULL),(147,'Funkmikrofon (Empfänger und Sender inkl. Kabel)',6,0x00,NULL),(148,'Imbusschlüssel/Innensechskantschlüssel',6,0x00,NULL),(149,'Klettkabelbinder',6,0x00,NULL),(150,'Klettkabelbinder',6,0x00,NULL),(151,'Klettkabelbinder',6,0x00,NULL),(152,'Klettkabelbinder',6,0x00,NULL),(153,'Stativplatte',6,0x00,NULL),(154,'Sony PMW EX3',7,0x00,NULL),(155,'Speicherkartenadapter',7,0x00,NULL),(156,'Speicherkartenadapter',7,0x00,NULL),(157,'32 GB Speicherkarten',7,0x00,NULL),(158,'32 GB Speicherkarten',7,0x00,NULL),(159,'Akkus PB-u30 klein',7,0x00,NULL),(160,'Akkus PB-u30 klein',7,0x00,NULL),(161,'Akkus PB-u60 groß',7,0x00,NULL),(162,'Akkus PB-u60 groß',7,0x00,NULL),(163,'Akkuladegerät Kamera',7,0x00,NULL),(164,'XLR Kabel 0,5 m',7,0x00,NULL),(165,'XLR Kabel 7,5 m',7,0x00,NULL),(166,'Fernbedienung Kamera + Remote Control',7,0x00,NULL),(167,'Fernbedienung Kamera + Remote Control',7,0x00,NULL),(168,'Kamerasucher (zum Aufstecken)',7,0x00,NULL),(169,'Tasche Rodemikrofon + Mikro + Popschutz',7,0x00,NULL),(170,'Funkmikrofon (Empfänger + Sender + Kabel)',7,0x00,NULL),(171,'Imbusschlüssel/Innensechskantschlüssel',7,0x00,NULL),(172,'Stativplatte + Schraube',7,0x00,NULL),(173,'Klettkabelbinder',7,0x00,NULL),(174,'Klettkabelbinder',7,0x00,NULL),(225,'Glidecam HD2000 inkl. 2 Gewichte',8,0x00,NULL),(243,'zusätzliche Gewichte',8,0x00,NULL),(242,'zusätzliche Gewichte',8,0x00,NULL),(241,'zusätzliche Gewichte',8,0x00,NULL),(240,'zusätzliche Gewichte',8,0x00,NULL),(239,'zusätzliche Gewichte',8,0x00,NULL),(238,'zusätzliche Gewichte',8,0x00,NULL),(237,'zusätzliche Gewichte',8,0x00,NULL),(236,'zusätzliche Gewichte',8,0x00,NULL),(235,'zusätzliche Gewichte',8,0x00,NULL),(244,'Gewindeschraube in extra Tasche',8,0x00,NULL),(245,'Popschutzkapsel inkl. Katze',8,0x00,NULL),(246,'Rodemmikrofon NTG1',8,0x00,NULL),(247,'XLR Kabel ca. 7,5 m',8,0x00,NULL),(248,'Sony Z 150',9,0x00,NULL),(249,'Speicherkarten 64 GB',9,0x00,NULL),(250,'Speicherkarten 64 GB',9,0x00,NULL),(251,'große Akkus',9,0x00,NULL),(252,'große Akkus',9,0x00,NULL),(253,'kleiner Akku',9,0x00,NULL),(254,'Akkuladegerät',9,0x00,NULL),(255,'RodeRichtmikrofon ',9,0x00,NULL),(256,'Popschutz',9,0x00,NULL),(257,'Tasche ',9,0x00,NULL),(258,'Ansteckmikroset',9,0x00,NULL),(259,'Manfrotteo Remote Control',9,0x00,NULL),(260,'XLR Kabel 6m',9,0x00,NULL),(261,'Stativplatte + Schraube',9,0x00,NULL),(262,'Sony Z 150',10,0x00,NULL),(263,'Speicherkarten 64 GB',10,0x00,NULL),(264,'Speicherkarten 64 GB',10,0x00,NULL),(265,'große Akkus',10,0x00,NULL),(266,'große Akkus',10,0x00,NULL),(267,'Akkuladegerät',10,0x00,NULL),(268,'RodeRichtmikrofon ',10,0x00,NULL),(269,'Popschutz',10,0x00,NULL),(270,'Tasche',10,0x00,NULL),(271,'Stativklemme',10,0x00,NULL),(272,'Ansteckmikroset',10,0x00,NULL),(273,'Manfrotteo Remote Control',10,0x00,NULL),(274,'XLR Kabel 5m',10,0x00,NULL),(275,'Stativplatte + Schraube',10,0x00,NULL),(276,'Sony Z 150',11,0x00,NULL),(277,'Speicherkarten 64 GB',11,0x00,NULL),(278,'Speicherkarten 64 GB',11,0x00,NULL),(279,'große Akkus',11,0x00,NULL),(280,'große Akkus',11,0x00,NULL),(281,'kleiner Akku',11,0x00,NULL),(282,'Akkuladegerät',11,0x00,NULL),(283,'RodeRichtmikrofon ',11,0x00,NULL),(284,'Popschutz',11,0x00,NULL),(285,'Stativhalterug',11,0x00,NULL),(286,'Tasche ',11,0x00,NULL),(287,'XLR Kabel 1m',11,0x00,NULL),(288,'Ansteckmikroset',11,0x00,NULL),(289,'Manfrotteo Remote Control',11,0x00,NULL),(290,'Stativplatte + Schraube',11,0x00,NULL),(291,'Sony Z 150',12,0x00,NULL),(292,'Speicherkarten 64 GB',12,0x00,NULL),(293,'Speicherkarten 64 GB',12,0x00,NULL),(294,'große Akkus',12,0x00,NULL),(295,'große Akkus',12,0x00,NULL),(296,'Akkuladegerät',12,0x00,NULL),(297,'RodeRichtmikrofon ',12,0x00,NULL),(298,'Popschutz',12,0x00,NULL),(299,'Tasche ',12,0x00,NULL),(300,'Stativhalterug',12,0x00,NULL),(301,'Ansteckmikroset',12,0x00,NULL),(302,'Manfrotteo Remote Control',12,0x00,NULL),(303,'XLR Kabel 1m',12,0x00,NULL),(304,'Klettkabelbinder',12,0x00,NULL),(305,'Stativplatte + Schraube',12,0x00,NULL),(306,'Canon EOS 5D MarkIII',13,0x00,NULL),(307,'Speicherkarten 32 GB ScanDisc',13,0x00,NULL),(308,'Speicherkarten 32 GB ScanDisc',13,0x00,NULL),(309,'Speicherkarten 128 GB CompactFlash',13,0x00,NULL),(310,'Halsriemen',13,0x00,NULL),(311,'Objektivdeckel',13,0x00,NULL),(312,' Akkus',13,0x00,NULL),(313,' Akkus',13,0x00,NULL),(314,' Akkus',13,0x00,NULL),(315,'Akkuladegerät',13,0x00,NULL),(316,'Stativplatte + Schraube',13,0x00,NULL),(317,'Sonnenblende',13,0x00,NULL),(318,'USBKabel',13,0x00,NULL),(319,'Klettkabelbinder',13,0x00,NULL),(320,'Gebrauchsanleitung',13,0x00,NULL),(321,'Objektivdeckel klein',13,0x00,NULL),(322,'Reinigungstuch',13,0x00,NULL),(323,'Tasche',13,0x00,NULL),(324,'Canon EOS 5D MarkIV',14,0x00,NULL),(325,'Speicherkarten 64 GB ScanDisc',14,0x00,NULL),(326,'Speicherkarten 64 GB ScanDisc',14,0x00,NULL),(327,'Speicherkarten 32GB CompactFlash',14,0x00,NULL),(328,'Objektivdeckel',14,0x00,NULL),(329,'zusätzlicher kleiner Objektivdeckel',14,0x00,NULL),(330,' Akkus',14,0x00,NULL),(331,' Akkus',14,0x00,NULL),(332,'Akkuladegerät',14,0x00,NULL),(333,'Halsgurt',14,0x00,NULL),(334,'Stativplatte + Schraube',14,0x00,NULL),(335,'USB Kabel',14,0x00,NULL),(336,'Bedienungsanleitung',14,0x00,NULL),(337,'Tasche (Reißverschluss defekt)',14,0x00,NULL),(338,'Canon EOS 5D MarkIV',15,0x00,NULL),(339,'Speicherkarten 128 GB ScanDisc',15,0x00,NULL),(340,'Speicherkarten 128 GB CompactFlash',15,0x00,NULL),(341,'Objektiv',15,0x00,NULL),(342,'Objektivdeckel',15,0x00,NULL),(343,'Sonnenblende',15,0x00,NULL),(344,'Akkus',15,0x00,NULL),(345,'Akkus',15,0x00,NULL),(346,'Akkuladegerät',15,0x00,NULL),(347,'Stativplatte + Schraube',15,0x00,NULL),(348,'Sony A7R3',16,0x00,NULL),(349,'Batterygrip',16,0x00,NULL),(350,'128GB SD-Karten ',16,0x00,NULL),(351,'128GB SD-Karten ',16,0x00,NULL),(352,'Akkus',16,0x00,NULL),(353,'Akkus',16,0x00,NULL),(354,'Akkuladegerät',16,0x00,NULL),(355,'Schulterstativ',17,0x00,NULL),(356,'Zahnriemen',17,0x00,NULL),(357,'Fotofokus',17,0x00,NULL),(358,'Stativplatte + Schraube',17,0x00,NULL),(359,'Sony A7R3',18,0x00,NULL),(360,'128GB Speicherkarten',18,0x00,NULL),(361,'128GB Speicherkarten',18,0x00,NULL),(362,'Akkus',18,0x00,NULL),(363,'Akkus',18,0x00,NULL),(364,'Batterygrip',18,0x00,NULL),(365,'Akkuladegerät',18,0x00,NULL),(366,'SONY A7R3',19,0x00,NULL),(367,'128GB SD-Karten',19,0x00,NULL),(368,'Akkus',19,0x00,NULL),(369,'Akkus',19,0x00,NULL),(370,'Batterygrip',19,0x00,NULL),(371,'Akkuladegerät',19,0x00,NULL),(372,'USB-C -> USB-A Kabel',19,0x00,NULL),(373,'Stativplatte, Schraube',19,0x00,NULL),(374,'Halsgurt',19,0x00,NULL),(375,'Sony A7R3',20,0x00,NULL),(376,'128GB SD-Karten',20,0x00,NULL),(377,'128GB SD-Karten',20,0x00,NULL),(378,'Akkus',20,0x00,NULL),(379,'Akkus',20,0x00,NULL),(380,'Batterygrip',20,0x00,NULL),(381,'USB-C -> USB-A Kabel',20,0x00,NULL),(382,'Akkuladegerät',20,0x00,NULL),(383,'Halsgurt',20,0x00,NULL),(385,'HTC Vive VR Brille',23,0x00,NULL),(386,'Controller',23,0x00,NULL),(387,'Controller',23,0x00,NULL),(388,'Powerbank',23,0x00,NULL),(389,'Ladegerät',23,0x00,NULL),(390,'Insta 360 Pro Kamera',24,0x00,NULL),(391,'Ladekabel',24,0x00,NULL),(392,'Koffer',24,0x00,NULL),(393,'Bedienungsanleitung',24,0x00,NULL),(394,'USB Kabel Typ C',24,0x00,NULL),(395,'LanKabel',24,0x00,NULL),(396,'Schultergurt',24,0x00,NULL),(397,'GoPro Hero 2',25,0x00,NULL),(398,'Käfig für GoPro',25,0x00,NULL),(399,'Speicherkarte 32 GB',25,0x00,NULL),(400,'Stirnband',26,0x00,NULL),(401,'Videokabel',26,0x00,NULL),(402,'Tasche',29,0x00,NULL),(403,'Kamera Monitor',30,0x00,NULL),(404,'Transporttasche',30,0x00,NULL),(405,'Akku',30,0x00,NULL),(406,'Ladekabel/Netzstecker',30,0x00,NULL),(407,'Ladegerät',30,0x00,NULL),(408,'Monitorarm',30,0x00,NULL),(409,'USB Kabel',30,0x00,NULL),(410,'Mikrofasertuch',30,0x00,NULL),(411,'Sonnenblende',30,0x00,NULL),(412,'HDMI Verlängerung',30,0x00,NULL),(413,'Kamera Monitor',31,0x00,NULL),(414,'Transporttasche',31,0x00,NULL),(415,'Akku',31,0x00,NULL),(416,'Ladegerät',31,0x00,NULL),(417,'Monitorarm',31,0x00,NULL),(418,'USB Kabel',31,0x00,NULL),(419,'HDMI auf Mikro HDMI',31,0x00,NULL),(420,'D-Tap Kabel',31,0x00,NULL),(421,'Mikrofasertuch',31,0x00,NULL),(422,'Sonnenblende',31,0x00,NULL),(423,'Kamera Monitor',32,0x00,NULL),(424,'Transporttasche',32,0x00,NULL),(425,'Akku',32,0x00,NULL),(426,'Ladegerät',32,0x00,NULL),(427,'Stromkabel',32,0x00,NULL),(428,'USB Kabel',32,0x00,NULL),(429,'HDMI auf HDMI (lang, weiß)',32,0x00,NULL),(430,'HDMI auf Micro HDMI',32,0x00,NULL),(431,'Mikrofasertuch',32,0x00,NULL),(432,'Sonnenblende',32,0x00,NULL),(433,'Blitzschuh Adapter ',32,0x00,NULL),(434,'ZOOM H4n',35,0x00,NULL),(435,'Zoom Plastikhülle',35,0x00,NULL),(436,'Speicherkarte 32 GB',35,0x00,NULL),(437,'Kopfhörer',35,0x00,NULL),(438,'Rodemikrofon inkl. Popschutz ',35,0x00,NULL),(439,'XLR-Kabel 3 m',35,0x00,NULL),(440,'USB Datenkabel',35,0x00,NULL),(441,'Netzstecker Zoom H4n',35,0x00,NULL),(442,'ZOOM H4n',36,0x00,NULL),(443,'Zoom Plastikhülle',36,0x00,NULL),(444,'Speicherkarte 4 GB',36,0x00,NULL),(445,'ZOOM H4n',37,0x00,NULL),(446,'Popschutz',37,0x00,NULL),(447,'Zoom Plastikhülle',37,0x00,NULL),(448,'Speicherkarte 32 GB',37,0x00,NULL),(449,'Rodemikrofon + Popschutz + Tasche',37,0x00,NULL),(450,'Cullmann Tasche',37,0x00,NULL),(451,'XLR-Kabel 3 m',37,0x00,NULL),(452,'USB Datenkabel',37,0x00,NULL),(453,'Netzstecker Zoom H4n',37,0x00,NULL),(454,'Bedienungsanleitung Zoom',37,0x00,NULL),(455,'Tischstativ 2 tlg.',37,0x00,NULL),(456,'Handstativ',37,0x00,NULL),(457,'ZOOM H4n',39,0x00,NULL),(458,'32Gb SD Karte',39,0x00,NULL),(459,'ZOOM H4n',40,0x00,NULL),(460,'32Gb SD Karte',40,0x00,NULL),(461,'ZOOM H4n',41,0x00,NULL),(462,'Zoom Plastikhülle',41,0x00,NULL),(463,'4Gb Speicherkarte',41,0x00,NULL),(464,'Popschutz',41,0x00,NULL),(465,'Handstativ',41,0x00,NULL),(466,'ZOOM H4n',42,0x00,NULL),(467,'Zoom Plastikhülle',42,0x00,NULL),(468,'Popschutz',42,0x00,NULL),(469,'Speicherkarte 16 GB',42,0x00,NULL),(470,'Rodemikrofon + Popschutz + Tasche',42,0x00,NULL),(471,'Cullmann Tasche',42,0x00,NULL),(472,'XLR-Kabel 5 m',42,0x00,NULL),(473,'Tischstativ 2 tlg.',42,0x00,NULL),(474,'Handstativ',42,0x00,NULL),(475,'ZOOM H4n',43,0x00,NULL),(476,'Plastikhülle',43,0x00,NULL),(477,'32Gb SD-Karte',43,0x00,NULL),(478,'Zoom H3-VR',44,0x00,NULL),(479,'Tascam in Tasche',45,0x00,NULL),(480,'Mikrofon mit Popschutz',45,0x00,NULL),(481,'XLR Kabel 1m',45,0x00,NULL),(482,'XLR 2 auf 1',45,0x00,NULL),(483,'Netzteil',45,0x00,NULL),(484,'usb-Kabel',45,0x00,NULL),(485,'Kopfhörer',45,0x00,NULL),(486,'Bedienungsanleitung',45,0x00,NULL),(487,'Rucksack',45,0x00,NULL),(488,'Sender',46,0x00,NULL),(489,'Empfänger',46,0x00,NULL),(490,'Senderkabel mit Mikro',46,0x00,NULL),(491,'Miniklinkeauf Miniklinke',46,0x00,NULL),(492,'XLR auf Miniklinke',46,0x00,NULL),(493,'Bedienungsanleitung',46,0x00,NULL),(494,'Sender',47,0x00,NULL),(495,'Empfänger',47,0x00,NULL),(496,'Senderkabel mit Mikro',47,0x00,NULL),(497,'Miniklinke auf Miniklinke',47,0x00,NULL),(498,'XLR auf Miniklinke',47,0x00,NULL),(499,'Bedienungsanleitung',47,0x00,NULL),(500,'Handfunkmikrofon ',48,0x00,NULL),(501,'Empfänger',48,0x00,NULL),(502,'XLR auf Miniklinke Kabel',48,0x00,NULL),(503,'Mikrofonhalterung Stativ',48,0x00,NULL),(504,'Klinkenadapter',48,0x00,NULL),(505,'Handmikrofon als Sender',49,0x00,NULL),(506,'Empfänger',49,0x00,NULL),(507,'XLR auf Miniklinke Kabel',49,0x00,NULL),(508,'Stativhalterung',49,0x00,NULL),(509,'Styropor Verpackung',49,0x00,NULL),(510,'Bedienungsanleitung',49,0x00,NULL),(511,'Kopflicht',50,0x00,NULL),(512,'Koffer',50,0x00,NULL),(513,'Bedienungsanleitung',50,0x00,NULL),(514,'Akku',50,0x00,NULL),(515,'Ladegerät',50,0x00,NULL),(516,'Netzkabel',50,0x00,NULL),(517,'Autostecker',50,0x00,NULL),(518,'Blitzschuhadapter',50,0x00,NULL),(519,'Kopflicht',175,0x00,NULL),(520,'Koffer',175,0x00,NULL),(521,'Bedienungsanleitung',175,0x00,NULL),(522,'Akku',175,0x00,NULL),(523,'Ladegerät',175,0x00,NULL),(524,'Netzkabel',175,0x00,NULL),(525,'Autostecker',175,0x00,NULL),(526,'Blitzschuhadapter',175,0x00,NULL),(527,'Kopflicht',176,0x00,NULL),(528,'Koffer',176,0x00,NULL),(529,'Bedienungsanleitung',176,0x00,NULL),(530,'Akku',176,0x00,NULL),(531,'Ladegerät',176,0x00,NULL),(532,'Netzkabel',176,0x00,NULL),(533,'Autostecker',176,0x00,NULL),(534,'Blitzschuhadapter',176,0x00,NULL),(535,'Kopflicht',177,0x00,NULL),(536,'Koffer',177,0x00,NULL),(537,'Bedienungsanleitung',177,0x00,NULL),(538,'Akku',177,0x00,NULL),(539,'Ladegerät',177,0x00,NULL),(540,'Netzkabel',177,0x00,NULL),(541,'Autostecker',177,0x00,NULL),(542,'Blitzschuhadapter',177,0x00,NULL),(543,'Kopflicht',178,0x00,NULL),(544,'Koffer',178,0x00,NULL),(545,'Bedienungsanleitung',178,0x00,NULL),(546,'Akku',178,0x00,NULL),(547,'Ladegerät',178,0x00,NULL),(548,'Netzkabel',178,0x00,NULL),(549,'Autostecker',178,0x00,NULL),(550,'Blitzschuhadapter',178,0x00,NULL),(551,'Kopflicht',179,0x00,NULL),(552,'Koffer',179,0x00,NULL),(553,'Bedienungsanleitung',179,0x00,NULL),(555,'Ladegerät',179,0x00,NULL),(556,'Netzkabel',179,0x00,NULL),(557,'Autostecker',179,0x00,NULL),(558,'Blitzschuhadapter',179,0x00,NULL),(566,'Akku',179,0x00,NULL),(598,'Akkus groß',2,0x00,NULL),(599,'Akkus klein',2,0x00,NULL),(600,'Kopflicht',2,0x00,NULL),(601,'Rode Mikrofon, Popschutz, Tasche',2,0x00,NULL),(602,'XLR Kabel 1m',2,0x00,NULL),(603,'XLR Kabel 5m',2,0x00,NULL),(604,'Funkset',2,0x00,NULL),(605,'Kopfhörer',2,0x00,NULL),(639,'Sd-Karten 128gb',2,0x00,NULL),(716,'Akku klein',1,0x00,NULL);
/*!40000 ALTER TABLE `gegenstand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT  IGNORE INTO `hibernate_sequence` VALUES (852),(852);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
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
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `hanynummerstudentname` (`handy_nummer`,`student_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT  IGNORE INTO `student` VALUES (848,'123','neuer'),(820,'1234','heinz'),(825,'1234','heinz2'),(824,'1234','neuer'),(699,'1234','peter'),(844,'1234','studentFachGegenstandList'),(850,'1234','test'),(733,'12343','peter'),(706,'12345','peter'),(831,'123456','heinz3');
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

-- Dump completed on 2020-10-05 19:04:20

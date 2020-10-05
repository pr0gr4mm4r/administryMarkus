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
  `ausleihen_id` int NOT NULL,
  `abgabe_datum` date DEFAULT NULL,
  `ausleih_datum` date DEFAULT NULL,
  `gegenstand_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`ausleihen_id`),
  KEY `FKqc3umrug89238le27gjwlr50o` (`student_id`),
  CONSTRAINT `FKqc3umrug89238le27gjwlr50o` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ausleihen_abgeben`
--

LOCK TABLES `ausleihen_abgeben` WRITE;
/*!40000 ALTER TABLE `ausleihen_abgeben` DISABLE KEYS */;
INSERT  IGNORE INTO `ausleihen_abgeben` VALUES (712,NULL,'2020-10-03',58,699);
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
  PRIMARY KEY (`gegenstand_id`),
  KEY `FK3akv2ri380xxafe422ggohbdw` (`fach`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gegenstand`
--

LOCK TABLES `gegenstand` WRITE;
/*!40000 ALTER TABLE `gegenstand` DISABLE KEYS */;
INSERT  IGNORE INTO `gegenstand` VALUES (51,'Sony Z 150',1,0x00),(52,'Akku groß',1,0x00),(53,'Akku groß',1,0x00),(667,'Akku klein',1,0x00),(55,'Akku klein',1,0x00),(56,'XLR-Kabel 1m',1,0x00),(57,'Funkset',1,0x00),(58,'Kopfhörer',1,0x00),(59,'Kopflicht',1,0x00),(60,'Kartenlesegerät',1,0x00),(61,'Sony Z150',2,0x00),(62,'Sd-Karten 128gb',2,0x00),(595,'Stativplatte',2,0x00),(73,'Sony Z150',3,0x00),(74,'128Gb SD-Karten',3,0x00),(75,'128Gb SD-Karten',3,0x00),(76,'Stativplatte',3,0x00),(77,'Schraube',3,0x00),(78,'Akkus groß',3,0x00),(79,'Akkus groß',3,0x00),(80,'Akkus klein',3,0x00),(81,'Akkus klein',3,0x00),(82,'Kopflicht',3,0x00),(83,'Fernbedienung',3,0x00),(84,'Rode Mikrofon, Popschutz, Tasche',3,0x00),(86,'XLR Kabel 5m',3,0x00),(87,'XLR Kabel 1m',3,0x00),(88,'SD-Kartenlesegerät',3,0x00),(89,'Funkset',3,0x00),(90,'Kopfhörer',3,0x00),(91,'Sony Z150',4,0x00),(92,'128GB SD-Karten',4,0x00),(93,'128GB SD-Karten',4,0x00),(94,'Stativplatte',4,0x00),(95,'Schraube',4,0x00),(96,'Sony Remote Bedienung			',4,0x00),(97,'Fernbedienung			',4,0x00),(98,'Imbusschlüssel	',4,0x00),(99,'Akku groß',4,0x00),(100,'Akku klein',4,0x00),(101,'Akku klein',4,0x00),(102,'Kopflicht',4,0x00),(103,'XLR Kabel 5m',4,0x00),(104,'XLR Kabel 1m',4,0x00),(105,'Rode Mikrofon,Popschutz, Tasche',4,0x00),(106,'Funkset',4,0x00),(107,'Kopfhörer',4,0x00),(108,'Sony PMW EX3',5,0x00),(109,'Speicherkartenadapter',5,0x00),(110,'Speicherkartenadapter',5,0x00),(111,'Akkus PB-u60 (groß)',5,0x00),(112,'Akkus PB-u60 (groß)',5,0x00),(113,'Akkuladegerät (Kamera)',5,0x00),(114,'XLR Kabel 1 m',5,0x00),(115,'XLR Kabel 7,5 m',5,0x00),(116,'Component Videokabel',5,0x00),(117,'Bedienunganleitung Rodemikrofon',5,0x00),(118,'Kopfhörer Sennheiser HD-25 c2',5,0x00),(119,'USB Datenkabel',5,0x00),(120,'Kamerasucher (zum Aufstecken)',5,0x00),(121,'Tasche Rodemikrofon mit Mikro und Popschutz',5,0x00),(122,'Funkmikrofon (Empfänger, Sender inkl. Kabel)',5,0x00),(123,'Kartenleseadaper auf USB',5,0x00),(124,'Imbusschlüssel/Innensechskantschlüssel',5,0x00),(125,'Fernbedienung',5,0x00),(126,'Stativplatte mit Schraube',5,0x00),(127,'Klettkabelbinder',5,0x00),(128,'Klettkabelbinder',5,0x00),(129,'Klettkabelbinder',5,0x00),(130,'Klettkabelbinder',5,0x00),(131,'Sony PMW EX3',6,0x00),(132,'Speicherkartenadapter',6,0x00),(133,'Speicherkartenadapter',6,0x00),(134,'32 GB Speicherkarten',6,0x00),(135,'32 GB Speicherkarten',6,0x00),(136,'Akkus PB-u30 1 (klein)',6,0x00),(137,'Akkus PB-u30 1 (klein)',6,0x00),(138,'Akkus PB-u60 (groß)',6,0x00),(139,'Akkuladegerät (Kamera)',6,0x00),(140,'XLR Kabel 1 m',6,0x00),(141,'Component Videokabel',6,0x00),(142,'Kopfhörer Sennheiser HD-25 c2',6,0x00),(143,'USB Datenkabel',6,0x00),(144,'Fernbedienung Kamera',6,0x00),(145,'Kamerasucher (zum Aufstecken)',6,0x00),(146,'Tasche Rodemikrofon, mit Rodemikro und Popschutz ',6,0x00),(147,'Funkmikrofon (Empfänger und Sender inkl. Kabel)',6,0x00),(148,'Imbusschlüssel/Innensechskantschlüssel',6,0x00),(149,'Klettkabelbinder',6,0x00),(150,'Klettkabelbinder',6,0x00),(151,'Klettkabelbinder',6,0x00),(152,'Klettkabelbinder',6,0x00),(153,'Stativplatte',6,0x00),(154,'Sony PMW EX3',7,0x00),(155,'Speicherkartenadapter',7,0x00),(156,'Speicherkartenadapter',7,0x00),(157,'32 GB Speicherkarten',7,0x00),(158,'32 GB Speicherkarten',7,0x00),(159,'Akkus PB-u30 klein',7,0x00),(160,'Akkus PB-u30 klein',7,0x00),(161,'Akkus PB-u60 groß',7,0x00),(162,'Akkus PB-u60 groß',7,0x00),(163,'Akkuladegerät Kamera',7,0x00),(164,'XLR Kabel 0,5 m',7,0x00),(165,'XLR Kabel 7,5 m',7,0x00),(166,'Fernbedienung Kamera + Remote Control',7,0x00),(167,'Fernbedienung Kamera + Remote Control',7,0x00),(168,'Kamerasucher (zum Aufstecken)',7,0x00),(169,'Tasche Rodemikrofon + Mikro + Popschutz',7,0x00),(170,'Funkmikrofon (Empfänger + Sender + Kabel)',7,0x00),(171,'Imbusschlüssel/Innensechskantschlüssel',7,0x00),(172,'Stativplatte + Schraube',7,0x00),(173,'Klettkabelbinder',7,0x00),(174,'Klettkabelbinder',7,0x00),(225,'Glidecam HD2000 inkl. 2 Gewichte',8,0x00),(243,'zusätzliche Gewichte',8,0x00),(242,'zusätzliche Gewichte',8,0x00),(241,'zusätzliche Gewichte',8,0x00),(240,'zusätzliche Gewichte',8,0x00),(239,'zusätzliche Gewichte',8,0x00),(238,'zusätzliche Gewichte',8,0x00),(237,'zusätzliche Gewichte',8,0x00),(236,'zusätzliche Gewichte',8,0x00),(235,'zusätzliche Gewichte',8,0x00),(244,'Gewindeschraube in extra Tasche',8,0x00),(245,'Popschutzkapsel inkl. Katze',8,0x00),(246,'Rodemmikrofon NTG1',8,0x00),(247,'XLR Kabel ca. 7,5 m',8,0x00),(248,'Sony Z 150',9,0x00),(249,'Speicherkarten 64 GB',9,0x00),(250,'Speicherkarten 64 GB',9,0x00),(251,'große Akkus',9,0x00),(252,'große Akkus',9,0x00),(253,'kleiner Akku',9,0x00),(254,'Akkuladegerät',9,0x00),(255,'RodeRichtmikrofon ',9,0x00),(256,'Popschutz',9,0x00),(257,'Tasche ',9,0x00),(258,'Ansteckmikroset',9,0x00),(259,'Manfrotteo Remote Control',9,0x00),(260,'XLR Kabel 6m',9,0x00),(261,'Stativplatte + Schraube',9,0x00),(262,'Sony Z 150',10,0x00),(263,'Speicherkarten 64 GB',10,0x00),(264,'Speicherkarten 64 GB',10,0x00),(265,'große Akkus',10,0x00),(266,'große Akkus',10,0x00),(267,'Akkuladegerät',10,0x00),(268,'RodeRichtmikrofon ',10,0x00),(269,'Popschutz',10,0x00),(270,'Tasche',10,0x00),(271,'Stativklemme',10,0x00),(272,'Ansteckmikroset',10,0x00),(273,'Manfrotteo Remote Control',10,0x00),(274,'XLR Kabel 5m',10,0x00),(275,'Stativplatte + Schraube',10,0x00),(276,'Sony Z 150',11,0x00),(277,'Speicherkarten 64 GB',11,0x00),(278,'Speicherkarten 64 GB',11,0x00),(279,'große Akkus',11,0x00),(280,'große Akkus',11,0x00),(281,'kleiner Akku',11,0x00),(282,'Akkuladegerät',11,0x00),(283,'RodeRichtmikrofon ',11,0x00),(284,'Popschutz',11,0x00),(285,'Stativhalterug',11,0x00),(286,'Tasche ',11,0x00),(287,'XLR Kabel 1m',11,0x00),(288,'Ansteckmikroset',11,0x00),(289,'Manfrotteo Remote Control',11,0x00),(290,'Stativplatte + Schraube',11,0x00),(291,'Sony Z 150',12,0x00),(292,'Speicherkarten 64 GB',12,0x00),(293,'Speicherkarten 64 GB',12,0x00),(294,'große Akkus',12,0x00),(295,'große Akkus',12,0x00),(296,'Akkuladegerät',12,0x00),(297,'RodeRichtmikrofon ',12,0x00),(298,'Popschutz',12,0x00),(299,'Tasche ',12,0x00),(300,'Stativhalterug',12,0x00),(301,'Ansteckmikroset',12,0x00),(302,'Manfrotteo Remote Control',12,0x00),(303,'XLR Kabel 1m',12,0x00),(304,'Klettkabelbinder',12,0x00),(305,'Stativplatte + Schraube',12,0x00),(306,'Canon EOS 5D MarkIII',13,0x00),(307,'Speicherkarten 32 GB ScanDisc',13,0x00),(308,'Speicherkarten 32 GB ScanDisc',13,0x00),(309,'Speicherkarten 128 GB CompactFlash',13,0x00),(310,'Halsriemen',13,0x00),(311,'Objektivdeckel',13,0x00),(312,' Akkus',13,0x00),(313,' Akkus',13,0x00),(314,' Akkus',13,0x00),(315,'Akkuladegerät',13,0x00),(316,'Stativplatte + Schraube',13,0x00),(317,'Sonnenblende',13,0x00),(318,'USBKabel',13,0x00),(319,'Klettkabelbinder',13,0x00),(320,'Gebrauchsanleitung',13,0x00),(321,'Objektivdeckel klein',13,0x00),(322,'Reinigungstuch',13,0x00),(323,'Tasche',13,0x00),(324,'Canon EOS 5D MarkIV',14,0x00),(325,'Speicherkarten 64 GB ScanDisc',14,0x00),(326,'Speicherkarten 64 GB ScanDisc',14,0x00),(327,'Speicherkarten 32GB CompactFlash',14,0x00),(328,'Objektivdeckel',14,0x00),(329,'zusätzlicher kleiner Objektivdeckel',14,0x00),(330,' Akkus',14,0x00),(331,' Akkus',14,0x00),(332,'Akkuladegerät',14,0x00),(333,'Halsgurt',14,0x00),(334,'Stativplatte + Schraube',14,0x00),(335,'USB Kabel',14,0x00),(336,'Bedienungsanleitung',14,0x00),(337,'Tasche (Reißverschluss defekt)',14,0x00),(338,'Canon EOS 5D MarkIV',15,0x00),(339,'Speicherkarten 128 GB ScanDisc',15,0x00),(340,'Speicherkarten 128 GB CompactFlash',15,0x00),(341,'Objektiv',15,0x00),(342,'Objektivdeckel',15,0x00),(343,'Sonnenblende',15,0x00),(344,'Akkus',15,0x00),(345,'Akkus',15,0x00),(346,'Akkuladegerät',15,0x00),(347,'Stativplatte + Schraube',15,0x00),(348,'Sony A7R3',16,0x00),(349,'Batterygrip',16,0x00),(350,'128GB SD-Karten ',16,0x00),(351,'128GB SD-Karten ',16,0x00),(352,'Akkus',16,0x00),(353,'Akkus',16,0x00),(354,'Akkuladegerät',16,0x00),(355,'Schulterstativ',17,0x00),(356,'Zahnriemen',17,0x00),(357,'Fotofokus',17,0x00),(358,'Stativplatte + Schraube',17,0x00),(359,'Sony A7R3',18,0x00),(360,'128GB Speicherkarten',18,0x00),(361,'128GB Speicherkarten',18,0x00),(362,'Akkus',18,0x00),(363,'Akkus',18,0x00),(364,'Batterygrip',18,0x00),(365,'Akkuladegerät',18,0x00),(366,'SONY A7R3',19,0x00),(367,'128GB SD-Karten',19,0x00),(368,'Akkus',19,0x00),(369,'Akkus',19,0x00),(370,'Batterygrip',19,0x00),(371,'Akkuladegerät',19,0x00),(372,'USB-C -> USB-A Kabel',19,0x00),(373,'Stativplatte, Schraube',19,0x00),(374,'Halsgurt',19,0x00),(375,'Sony A7R3',20,0x00),(376,'128GB SD-Karten',20,0x00),(377,'128GB SD-Karten',20,0x00),(378,'Akkus',20,0x00),(379,'Akkus',20,0x00),(380,'Batterygrip',20,0x00),(381,'USB-C -> USB-A Kabel',20,0x00),(382,'Akkuladegerät',20,0x00),(383,'Halsgurt',20,0x00),(385,'HTC Vive VR Brille',23,0x00),(386,'Controller',23,0x00),(387,'Controller',23,0x00),(388,'Powerbank',23,0x00),(389,'Ladegerät',23,0x00),(390,'Insta 360 Pro Kamera',24,0x00),(391,'Ladekabel',24,0x00),(392,'Koffer',24,0x00),(393,'Bedienungsanleitung',24,0x00),(394,'USB Kabel Typ C',24,0x00),(395,'LanKabel',24,0x00),(396,'Schultergurt',24,0x00),(397,'GoPro Hero 2',25,0x00),(398,'Käfig für GoPro',25,0x00),(399,'Speicherkarte 32 GB',25,0x00),(400,'Stirnband',26,0x00),(401,'Videokabel',26,0x00),(402,'Tasche',29,0x00),(403,'Kamera Monitor',30,0x00),(404,'Transporttasche',30,0x00),(405,'Akku',30,0x00),(406,'Ladekabel/Netzstecker',30,0x00),(407,'Ladegerät',30,0x00),(408,'Monitorarm',30,0x00),(409,'USB Kabel',30,0x00),(410,'Mikrofasertuch',30,0x00),(411,'Sonnenblende',30,0x00),(412,'HDMI Verlängerung',30,0x00),(413,'Kamera Monitor',31,0x00),(414,'Transporttasche',31,0x00),(415,'Akku',31,0x00),(416,'Ladegerät',31,0x00),(417,'Monitorarm',31,0x00),(418,'USB Kabel',31,0x00),(419,'HDMI auf Mikro HDMI',31,0x00),(420,'D-Tap Kabel',31,0x00),(421,'Mikrofasertuch',31,0x00),(422,'Sonnenblende',31,0x00),(423,'Kamera Monitor',32,0x00),(424,'Transporttasche',32,0x00),(425,'Akku',32,0x00),(426,'Ladegerät',32,0x00),(427,'Stromkabel',32,0x00),(428,'USB Kabel',32,0x00),(429,'HDMI auf HDMI (lang, weiß)',32,0x00),(430,'HDMI auf Micro HDMI',32,0x00),(431,'Mikrofasertuch',32,0x00),(432,'Sonnenblende',32,0x00),(433,'Blitzschuh Adapter ',32,0x00),(434,'ZOOM H4n',35,0x00),(435,'Zoom Plastikhülle',35,0x00),(436,'Speicherkarte 32 GB',35,0x00),(437,'Kopfhörer',35,0x00),(438,'Rodemikrofon inkl. Popschutz ',35,0x00),(439,'XLR-Kabel 3 m',35,0x00),(440,'USB Datenkabel',35,0x00),(441,'Netzstecker Zoom H4n',35,0x00),(442,'ZOOM H4n',36,0x00),(443,'Zoom Plastikhülle',36,0x00),(444,'Speicherkarte 4 GB',36,0x00),(445,'ZOOM H4n',37,0x00),(446,'Popschutz',37,0x00),(447,'Zoom Plastikhülle',37,0x00),(448,'Speicherkarte 32 GB',37,0x00),(449,'Rodemikrofon + Popschutz + Tasche',37,0x00),(450,'Cullmann Tasche',37,0x00),(451,'XLR-Kabel 3 m',37,0x00),(452,'USB Datenkabel',37,0x00),(453,'Netzstecker Zoom H4n',37,0x00),(454,'Bedienungsanleitung Zoom',37,0x00),(455,'Tischstativ 2 tlg.',37,0x00),(456,'Handstativ',37,0x00),(457,'ZOOM H4n',39,0x00),(458,'32Gb SD Karte',39,0x00),(459,'ZOOM H4n',40,0x00),(460,'32Gb SD Karte',40,0x00),(461,'ZOOM H4n',41,0x00),(462,'Zoom Plastikhülle',41,0x00),(463,'4Gb Speicherkarte',41,0x00),(464,'Popschutz',41,0x00),(465,'Handstativ',41,0x00),(466,'ZOOM H4n',42,0x00),(467,'Zoom Plastikhülle',42,0x00),(468,'Popschutz',42,0x00),(469,'Speicherkarte 16 GB',42,0x00),(470,'Rodemikrofon + Popschutz + Tasche',42,0x00),(471,'Cullmann Tasche',42,0x00),(472,'XLR-Kabel 5 m',42,0x00),(473,'Tischstativ 2 tlg.',42,0x00),(474,'Handstativ',42,0x00),(475,'ZOOM H4n',43,0x00),(476,'Plastikhülle',43,0x00),(477,'32Gb SD-Karte',43,0x00),(478,'Zoom H3-VR',44,0x00),(479,'Tascam in Tasche',45,0x00),(480,'Mikrofon mit Popschutz',45,0x00),(481,'XLR Kabel 1m',45,0x00),(482,'XLR 2 auf 1',45,0x00),(483,'Netzteil',45,0x00),(484,'usb-Kabel',45,0x00),(485,'Kopfhörer',45,0x00),(486,'Bedienungsanleitung',45,0x00),(487,'Rucksack',45,0x00),(488,'Sender',46,0x00),(489,'Empfänger',46,0x00),(490,'Senderkabel mit Mikro',46,0x00),(491,'Miniklinkeauf Miniklinke',46,0x00),(492,'XLR auf Miniklinke',46,0x00),(493,'Bedienungsanleitung',46,0x00),(494,'Sender',47,0x00),(495,'Empfänger',47,0x00),(496,'Senderkabel mit Mikro',47,0x00),(497,'Miniklinke auf Miniklinke',47,0x00),(498,'XLR auf Miniklinke',47,0x00),(499,'Bedienungsanleitung',47,0x00),(500,'Handfunkmikrofon ',48,0x00),(501,'Empfänger',48,0x00),(502,'XLR auf Miniklinke Kabel',48,0x00),(503,'Mikrofonhalterung Stativ',48,0x00),(504,'Klinkenadapter',48,0x00),(505,'Handmikrofon als Sender',49,0x00),(506,'Empfänger',49,0x00),(507,'XLR auf Miniklinke Kabel',49,0x00),(508,'Stativhalterung',49,0x00),(509,'Styropor Verpackung',49,0x00),(510,'Bedienungsanleitung',49,0x00),(511,'Kopflicht',50,0x00),(512,'Koffer',50,0x00),(513,'Bedienungsanleitung',50,0x00),(514,'Akku',50,0x00),(515,'Ladegerät',50,0x00),(516,'Netzkabel',50,0x00),(517,'Autostecker',50,0x00),(518,'Blitzschuhadapter',50,0x00),(519,'Kopflicht',175,0x00),(520,'Koffer',175,0x00),(521,'Bedienungsanleitung',175,0x00),(522,'Akku',175,0x00),(523,'Ladegerät',175,0x00),(524,'Netzkabel',175,0x00),(525,'Autostecker',175,0x00),(526,'Blitzschuhadapter',175,0x00),(527,'Kopflicht',176,0x00),(528,'Koffer',176,0x00),(529,'Bedienungsanleitung',176,0x00),(530,'Akku',176,0x00),(531,'Ladegerät',176,0x00),(532,'Netzkabel',176,0x00),(533,'Autostecker',176,0x00),(534,'Blitzschuhadapter',176,0x00),(535,'Kopflicht',177,0x00),(536,'Koffer',177,0x00),(537,'Bedienungsanleitung',177,0x00),(538,'Akku',177,0x00),(539,'Ladegerät',177,0x00),(540,'Netzkabel',177,0x00),(541,'Autostecker',177,0x00),(542,'Blitzschuhadapter',177,0x00),(543,'Kopflicht',178,0x00),(544,'Koffer',178,0x00),(545,'Bedienungsanleitung',178,0x00),(546,'Akku',178,0x00),(547,'Ladegerät',178,0x00),(548,'Netzkabel',178,0x00),(549,'Autostecker',178,0x00),(550,'Blitzschuhadapter',178,0x00),(551,'Kopflicht',179,0x00),(552,'Koffer',179,0x00),(553,'Bedienungsanleitung',179,0x00),(555,'Ladegerät',179,0x00),(556,'Netzkabel',179,0x00),(557,'Autostecker',179,0x00),(558,'Blitzschuhadapter',179,0x00),(566,'Akku',179,0x00),(598,'Akkus groß',2,0x00),(599,'Akkus klein',2,0x00),(600,'Kopflicht',2,0x00),(601,'Rode Mikrofon, Popschutz, Tasche',2,0x00),(602,'XLR Kabel 1m',2,0x00),(603,'XLR Kabel 5m',2,0x00),(604,'Funkset',2,0x00),(605,'Kopfhörer',2,0x00),(639,'Sd-Karten 128gb',2,0x00);
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
INSERT  IGNORE INTO `hibernate_sequence` VALUES (713),(713);
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
INSERT  IGNORE INTO `student` VALUES (699,'1234','peter'),(706,'12345','peter');
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

-- Dump completed on 2020-10-03 13:42:14

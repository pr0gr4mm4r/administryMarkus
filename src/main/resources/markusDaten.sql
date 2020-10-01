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
-- Table structure for table `fach`
--

DROP TABLE IF EXISTS `fach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fach` (
  `fach_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `fach` int DEFAULT NULL,
  PRIMARY KEY (`gegenstand_id`),
  KEY `FKkt6bbanisxj9k3noamxuc6etj` (`fach`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gegenstand`
--

LOCK TABLES `gegenstand` WRITE;
/*!40000 ALTER TABLE `gegenstand` DISABLE KEYS */;
INSERT  IGNORE INTO `gegenstand` VALUES (51,'Sony Z 150',1),(52,'Akku groß',1),(53,'Akku groß',1),(54,'Akku klein',1),(55,'Akku klein',1),(56,'XLR-Kabel 1m',1),(57,'Funkset',1),(58,'Kopfhörer',1),(59,'Kopflicht',1),(60,'Kartenlesegerät',1),(61,'Sony Z150',2),(62,'Sd-Karten 128gb',2),(63,'Sd-Karten 128gb',2),(64,'Stativplatte',2),(65,'Schraube',2),(66,'Akkus groß',2),(67,'Akkus klein',2),(68,'Kopflicht',2),(69,'XLR Kabel 1m',2),(70,'XLR Kabel 5m',2),(72,'Kopfhörer',2),(73,'Sony Z150',3),(74,'128Gb SD-Karten',3),(75,'128Gb SD-Karten',3),(76,'Stativplatte',3),(77,'Schraube',3),(78,'Akkus groß',3),(79,'Akkus groß',3),(80,'Akkus klein',3),(81,'Akkus klein',3),(82,'Kopflicht',3),(83,'Fernbedienung',3),(84,'Rode Mikrofon, Popschutz, Tasche',3),(85,'Rode Mikrofon, Popschutz, Tasche',2),(86,'XLR Kabel 5m',3),(87,'XLR Kabel 1m',3),(88,'SD-Kartenlesegerät',3),(89,'Funkset',3),(90,'Kopfhörer',3),(91,'Sony Z150',4),(92,'128GB SD-Karten',4),(93,'128GB SD-Karten',4),(94,'Stativplatte',4),(95,'Schraube',4),(96,'Sony Remote Bedienung			',4),(97,'Fernbedienung			',4),(98,'Imbusschlüssel	',4),(99,'Akku groß',4),(100,'Akku klein',4),(101,'Akku klein',4),(102,'Kopflicht',4),(103,'XLR Kabel 5m',4),(104,'XLR Kabel 1m',4),(105,'Rode Mikrofon,Popschutz, Tasche',4),(106,'Funkset',4),(107,'Kopfhörer',4),(108,'Sony PMW EX3',5),(109,'Speicherkartenadapter',5),(110,'Speicherkartenadapter',5),(111,'Akkus PB-u60 (groß)',5),(112,'Akkus PB-u60 (groß)',5),(113,'Akkuladegerät (Kamera)',5),(114,'XLR Kabel 1 m',5),(115,'XLR Kabel 7,5 m',5),(116,'Component Videokabel',5),(117,'Bedienunganleitung Rodemikrofon',5),(118,'Kopfhörer Sennheiser HD-25 c2',5),(119,'USB Datenkabel',5),(120,'Kamerasucher (zum Aufstecken)',5),(121,'Tasche Rodemikrofon mit Mikro und Popschutz',5),(122,'Funkmikrofon (Empfänger, Sender inkl. Kabel)',5),(123,'Kartenleseadaper auf USB',5),(124,'Imbusschlüssel/Innensechskantschlüssel',5),(125,'Fernbedienung',5),(126,'Stativplatte mit Schraube',5),(127,'Klettkabelbinder',5),(128,'Klettkabelbinder',5),(129,'Klettkabelbinder',5),(130,'Klettkabelbinder',5),(131,'Sony PMW EX3',6),(132,'Speicherkartenadapter',6),(133,'Speicherkartenadapter',6),(134,'32 GB Speicherkarten',6),(135,'32 GB Speicherkarten',6),(136,'Akkus PB-u30 1 (klein)',6),(137,'Akkus PB-u30 1 (klein)',6),(138,'Akkus PB-u60 (groß)',6),(139,'Akkuladegerät (Kamera)',6),(140,'XLR Kabel 1 m',6),(141,'Component Videokabel',6),(142,'Kopfhörer Sennheiser HD-25 c2',6),(143,'USB Datenkabel',6),(144,'Fernbedienung Kamera',6),(145,'Kamerasucher (zum Aufstecken)',6),(146,'Tasche Rodemikrofon, mit Rodemikro und Popschutz ',6),(147,'Funkmikrofon (Empfänger und Sender inkl. Kabel)',6),(148,'Imbusschlüssel/Innensechskantschlüssel',6),(149,'Klettkabelbinder',6),(150,'Klettkabelbinder',6),(151,'Klettkabelbinder',6),(152,'Klettkabelbinder',6),(153,'Stativplatte',6),(154,'Sony PMW EX3',7),(155,'Speicherkartenadapter',7),(156,'Speicherkartenadapter',7),(157,'32 GB Speicherkarten',7),(158,'32 GB Speicherkarten',7),(159,'Akkus PB-u30 klein',7),(160,'Akkus PB-u30 klein',7),(161,'Akkus PB-u60 groß',7),(162,'Akkus PB-u60 groß',7),(163,'Akkuladegerät Kamera',7),(164,'XLR Kabel 0,5 m',7),(165,'XLR Kabel 7,5 m',7),(166,'Fernbedienung Kamera + Remote Control',7),(167,'Fernbedienung Kamera + Remote Control',7),(168,'Kamerasucher (zum Aufstecken)',7),(169,'Tasche Rodemikrofon + Mikro + Popschutz',7),(170,'Funkmikrofon (Empfänger + Sender + Kabel)',7),(171,'Imbusschlüssel/Innensechskantschlüssel',7),(172,'Stativplatte + Schraube',7),(173,'Klettkabelbinder',7),(174,'Klettkabelbinder',7),(225,'Glidecam HD2000 inkl. 2 Gewichte',8),(243,'zusätzliche Gewichte',8),(242,'zusätzliche Gewichte',8),(241,'zusätzliche Gewichte',8),(240,'zusätzliche Gewichte',8),(239,'zusätzliche Gewichte',8),(238,'zusätzliche Gewichte',8),(237,'zusätzliche Gewichte',8),(236,'zusätzliche Gewichte',8),(235,'zusätzliche Gewichte',8),(244,'Gewindeschraube in extra Tasche',8),(245,'Popschutzkapsel inkl. Katze',8),(246,'Rodemmikrofon NTG1',8),(247,'XLR Kabel ca. 7,5 m',8),(248,'Sony Z 150',9),(249,'Speicherkarten 64 GB',9),(250,'Speicherkarten 64 GB',9),(251,'große Akkus',9),(252,'große Akkus',9),(253,'kleiner Akku',9),(254,'Akkuladegerät',9),(255,'RodeRichtmikrofon ',9),(256,'Popschutz',9),(257,'Tasche ',9),(258,'Ansteckmikroset',9),(259,'Manfrotteo Remote Control',9),(260,'XLR Kabel 6m',9),(261,'Stativplatte + Schraube',9),(262,'Sony Z 150',10),(263,'Speicherkarten 64 GB',10),(264,'Speicherkarten 64 GB',10),(265,'große Akkus',10),(266,'große Akkus',10),(267,'Akkuladegerät',10),(268,'RodeRichtmikrofon ',10),(269,'Popschutz',10),(270,'Tasche',10),(271,'Stativklemme',10),(272,'Ansteckmikroset',10),(273,'Manfrotteo Remote Control',10),(274,'XLR Kabel 5m',10),(275,'Stativplatte + Schraube',10),(276,'Sony Z 150',11),(277,'Speicherkarten 64 GB',11),(278,'Speicherkarten 64 GB',11),(279,'große Akkus',11),(280,'große Akkus',11),(281,'kleiner Akku',11),(282,'Akkuladegerät',11),(283,'RodeRichtmikrofon ',11),(284,'Popschutz',11),(285,'Stativhalterug',11),(286,'Tasche ',11),(287,'XLR Kabel 1m',11),(288,'Ansteckmikroset',11),(289,'Manfrotteo Remote Control',11),(290,'Stativplatte + Schraube',11),(291,'Sony Z 150',12),(292,'Speicherkarten 64 GB',12),(293,'Speicherkarten 64 GB',12),(294,'große Akkus',12),(295,'große Akkus',12),(296,'Akkuladegerät',12),(297,'RodeRichtmikrofon ',12),(298,'Popschutz',12),(299,'Tasche ',12),(300,'Stativhalterug',12),(301,'Ansteckmikroset',12),(302,'Manfrotteo Remote Control',12),(303,'XLR Kabel 1m',12),(304,'Klettkabelbinder',12),(305,'Stativplatte + Schraube',12),(306,'Canon EOS 5D MarkIII',13),(307,'Speicherkarten 32 GB ScanDisc',13),(308,'Speicherkarten 32 GB ScanDisc',13),(309,'Speicherkarten 128 GB CompactFlash',13),(310,'Halsriemen',13),(311,'Objektivdeckel',13),(312,' Akkus',13),(313,' Akkus',13),(314,' Akkus',13),(315,'Akkuladegerät',13),(316,'Stativplatte + Schraube',13),(317,'Sonnenblende',13),(318,'USBKabel',13),(319,'Klettkabelbinder',13),(320,'Gebrauchsanleitung',13),(321,'Objektivdeckel klein',13),(322,'Reinigungstuch',13),(323,'Tasche',13),(324,'Canon EOS 5D MarkIV',14),(325,'Speicherkarten 64 GB ScanDisc',14),(326,'Speicherkarten 64 GB ScanDisc',14),(327,'Speicherkarten 32GB CompactFlash',14),(328,'Objektivdeckel',14),(329,'zusätzlicher kleiner Objektivdeckel',14),(330,' Akkus',14),(331,' Akkus',14),(332,'Akkuladegerät',14),(333,'Halsgurt',14),(334,'Stativplatte + Schraube',14),(335,'USB Kabel',14),(336,'Bedienungsanleitung',14),(337,'Tasche (Reißverschluss defekt)',14),(338,'Canon EOS 5D MarkIV',15),(339,'Speicherkarten 128 GB ScanDisc',15),(340,'Speicherkarten 128 GB CompactFlash',15),(341,'Objektiv',15),(342,'Objektivdeckel',15),(343,'Sonnenblende',15),(344,'Akkus',15),(345,'Akkus',15),(346,'Akkuladegerät',15),(347,'Stativplatte + Schraube',15),(348,'Sony A7R3',16),(349,'Batterygrip',16),(350,'128GB SD-Karten ',16),(351,'128GB SD-Karten ',16),(352,'Akkus',16),(353,'Akkus',16),(354,'Akkuladegerät',16),(355,'Schulterstativ',17),(356,'Zahnriemen',17),(357,'Fotofokus',17),(358,'Stativplatte + Schraube',17),(359,'Sony A7R3',18),(360,'128GB Speicherkarten',18),(361,'128GB Speicherkarten',18),(362,'Akkus',18),(363,'Akkus',18),(364,'Batterygrip',18),(365,'Akkuladegerät',18),(366,'SONY A7R3',19),(367,'128GB SD-Karten',19),(368,'Akkus',19),(369,'Akkus',19),(370,'Batterygrip',19),(371,'Akkuladegerät',19),(372,'USB-C -> USB-A Kabel',19),(373,'Stativplatte, Schraube',19),(374,'Halsgurt',19),(375,'Sony A7R3',20),(376,'128GB SD-Karten',20),(377,'128GB SD-Karten',20),(378,'Akkus',20),(379,'Akkus',20),(380,'Batterygrip',20),(381,'USB-C -> USB-A Kabel',20),(382,'Akkuladegerät',20),(383,'Halsgurt',20),(385,'HTC Vive VR Brille',23),(386,'Controller',23),(387,'Controller',23),(388,'Powerbank',23),(389,'Ladegerät',23),(390,'Insta 360 Pro Kamera',24),(391,'Ladekabel',24),(392,'Koffer',24),(393,'Bedienungsanleitung',24),(394,'USB Kabel Typ C',24),(395,'LanKabel',24),(396,'Schultergurt',24),(397,'GoPro Hero 2',25),(398,'Käfig für GoPro',25),(399,'Speicherkarte 32 GB',25),(400,'Stirnband',26),(401,'Videokabel',26),(402,'Tasche',29),(403,'Kamera Monitor',30),(404,'Transporttasche',30),(405,'Akku',30),(406,'Ladekabel/Netzstecker',30),(407,'Ladegerät',30),(408,'Monitorarm',30),(409,'USB Kabel',30),(410,'Mikrofasertuch',30),(411,'Sonnenblende',30),(412,'HDMI Verlängerung',30),(413,'Kamera Monitor',31),(414,'Transporttasche',31),(415,'Akku',31),(416,'Ladegerät',31),(417,'Monitorarm',31),(418,'USB Kabel',31),(419,'HDMI auf Mikro HDMI',31),(420,'D-Tap Kabel',31),(421,'Mikrofasertuch',31),(422,'Sonnenblende',31),(423,'Kamera Monitor',32),(424,'Transporttasche',32),(425,'Akku',32),(426,'Ladegerät',32),(427,'Stromkabel',32),(428,'USB Kabel',32),(429,'HDMI auf HDMI (lang, weiß)',32),(430,'HDMI auf Micro HDMI',32),(431,'Mikrofasertuch',32),(432,'Sonnenblende',32),(433,'Blitzschuh Adapter ',32),(434,'ZOOM H4n',35),(435,'Zoom Plastikhülle',35),(436,'Speicherkarte 32 GB',35),(437,'Kopfhörer',35),(438,'Rodemikrofon inkl. Popschutz ',35),(439,'XLR-Kabel 3 m',35),(440,'USB Datenkabel',35),(441,'Netzstecker Zoom H4n',35),(442,'ZOOM H4n',36),(443,'Zoom Plastikhülle',36),(444,'Speicherkarte 4 GB',36),(445,'ZOOM H4n',37),(446,'Popschutz',37),(447,'Zoom Plastikhülle',37),(448,'Speicherkarte 32 GB',37),(449,'Rodemikrofon + Popschutz + Tasche',37),(450,'Cullmann Tasche',37),(451,'XLR-Kabel 3 m',37),(452,'USB Datenkabel',37),(453,'Netzstecker Zoom H4n',37),(454,'Bedienungsanleitung Zoom',37),(455,'Tischstativ 2 tlg.',37),(456,'Handstativ',37),(457,'ZOOM H4n',39),(458,'32Gb SD Karte',39),(459,'ZOOM H4n',40),(460,'32Gb SD Karte',40),(461,'ZOOM H4n',41),(462,'Zoom Plastikhülle',41),(463,'4Gb Speicherkarte',41),(464,'Popschutz',41),(465,'Handstativ',41),(466,'ZOOM H4n',42),(467,'Zoom Plastikhülle',42),(468,'Popschutz',42),(469,'Speicherkarte 16 GB',42),(470,'Rodemikrofon + Popschutz + Tasche',42),(471,'Cullmann Tasche',42),(472,'XLR-Kabel 5 m',42),(473,'Tischstativ 2 tlg.',42),(474,'Handstativ',42),(475,'ZOOM H4n',43),(476,'Plastikhülle',43),(477,'32Gb SD-Karte',43),(478,'Zoom H3-VR',44),(479,'Tascam in Tasche',45),(480,'Mikrofon mit Popschutz',45),(481,'XLR Kabel 1m',45),(482,'XLR 2 auf 1',45),(483,'Netzteil',45),(484,'usb-Kabel',45),(485,'Kopfhörer',45),(486,'Bedienungsanleitung',45),(487,'Rucksack',45),(488,'Sender',46),(489,'Empfänger',46),(490,'Senderkabel mit Mikro',46),(491,'Miniklinkeauf Miniklinke',46),(492,'XLR auf Miniklinke',46),(493,'Bedienungsanleitung',46),(494,'Sender',47),(495,'Empfänger',47),(496,'Senderkabel mit Mikro',47),(497,'Miniklinke auf Miniklinke',47),(498,'XLR auf Miniklinke',47),(499,'Bedienungsanleitung',47),(500,'Handfunkmikrofon ',48),(501,'Empfänger',48),(502,'XLR auf Miniklinke Kabel',48),(503,'Mikrofonhalterung Stativ',48),(504,'Klinkenadapter',48),(505,'Handmikrofon als Sender',49),(506,'Empfänger',49),(507,'XLR auf Miniklinke Kabel',49),(508,'Stativhalterung',49),(509,'Styropor Verpackung',49),(510,'Bedienungsanleitung',49),(511,'Kopflicht',50),(512,'Koffer',50),(513,'Bedienungsanleitung',50),(514,'Akku',50),(515,'Ladegerät',50),(516,'Netzkabel',50),(517,'Autostecker',50),(518,'Blitzschuhadapter',50),(519,'Kopflicht',175),(520,'Koffer',175),(521,'Bedienungsanleitung',175),(522,'Akku',175),(523,'Ladegerät',175),(524,'Netzkabel',175),(525,'Autostecker',175),(526,'Blitzschuhadapter',175),(527,'Kopflicht',176),(528,'Koffer',176),(529,'Bedienungsanleitung',176),(530,'Akku',176),(531,'Ladegerät',176),(532,'Netzkabel',176),(533,'Autostecker',176),(534,'Blitzschuhadapter',176),(535,'Kopflicht',177),(536,'Koffer',177),(537,'Bedienungsanleitung',177),(538,'Akku',177),(539,'Ladegerät',177),(540,'Netzkabel',177),(541,'Autostecker',177),(542,'Blitzschuhadapter',177),(543,'Kopflicht',178),(544,'Koffer',178),(545,'Bedienungsanleitung',178),(546,'Akku',178),(547,'Ladegerät',178),(548,'Netzkabel',178),(549,'Autostecker',178),(550,'Blitzschuhadapter',178),(551,'Kopflicht',179),(552,'Koffer',179),(553,'Bedienungsanleitung',179),(555,'Ladegerät',179),(556,'Netzkabel',179),(557,'Autostecker',179),(558,'Blitzschuhadapter',179),(566,'Akku',179);
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
INSERT  IGNORE INTO `hibernate_sequence` VALUES (586),(586);
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
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2020-10-01 21:37:20

-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: premier22_23
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `managerid` int NOT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `nation` varchar(4) DEFAULT NULL,
  `age` varchar(4) DEFAULT NULL,
  `club` varchar(200) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `finishdate` date DEFAULT NULL,
  `club_id` int NOT NULL,
  `loaddate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedata` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `seasonpoints` int DEFAULT NULL,
  PRIMARY KEY (`managerid`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `teams` (`clubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'Jesse Marsch','USA','49','Leeds United','2022-02-28','2023-02-06',19,'2024-08-10 03:42:13','2024-08-10 03:42:13',18),(2,'Michael Skubala','GBR','40','Leeds United','2023-02-06','2023-02-21',19,'2024-08-10 03:42:13','2024-08-10 03:42:13',1),(3,'Javi Gracia','ESP','53','Leeds United','2023-02-21','2023-05-03',19,'2024-08-10 03:42:13','2024-08-10 03:42:13',11),(4,'Sam Allardyce','GBR','68','Leeds United','2023-05-03',NULL,19,'2024-08-10 03:42:13','2024-08-10 03:42:13',1),(5,'Graham Potter','GBR','48','Brighton','2019-05-20','2022-09-08',6,'2024-08-10 03:42:13','2024-08-10 03:42:13',13),(6,'Roberto De Zerbi','ITA','43','Brighton','2022-09-18',NULL,6,'2024-08-10 03:42:13','2024-08-10 03:42:13',49),(7,'Bruno Lage','POR','46','Wolves','2021-06-01','2022-10-02',13,'2024-08-10 03:42:13','2024-08-10 03:42:13',6),(8,'Steve Davis (interino)','GBR','57','Wolves','2022-10-02','2022-11-14',13,'2024-08-10 03:42:13','2024-08-10 03:42:13',4),(9,'Julen Lopetegui','ESP','56','Wolves','2022-11-14',NULL,13,'2024-08-10 03:42:13','2024-08-10 03:42:13',31),(10,'Thomas Tuchel','GER','49','Chelsea','2021-01-26','2022-09-07',12,'2024-08-10 03:42:13','2024-08-10 03:42:13',10),(11,'Graham Potter','GBR','48','Chelsea','2022-09-08','2023-04-02',12,'2024-08-10 03:42:13','2024-08-10 03:42:13',28),(12,'Frank Lampard (interino)','GBR','45','Chelsea','2023-04-06',NULL,12,'2024-08-10 03:42:13','2024-08-10 03:42:13',6),(13,'Scott Parker','GBR','42','Bournemouth','2021-06-29','2022-08-30',15,'2024-08-10 03:42:13','2024-08-10 03:42:13',3),(14,'Gary O Neil','GBR','40','Bournemouth','2022-08-30',NULL,15,'2024-08-10 03:42:13','2024-08-10 03:42:13',36),(15,'Steven Gerrard','GBR','43','Aston Villa','2021-11-11','2022-10-20',7,'2024-08-10 03:42:13','2024-08-10 03:42:13',12),(16,'Aaron Danks (interino)','GBR','39','Aston Villa','2022-10-20','2022-11-01',7,'2024-08-10 03:42:13','2024-08-10 03:42:13',3),(17,'Unai Emery','ESP','52','Aston Villa','2022-11-01',NULL,7,'2024-08-10 03:42:13','2024-08-10 03:42:13',46),(18,'Ralph Hasenhüttl','AUT','56','Southampton','2018-12-06','2022-11-07',20,'2024-08-10 03:42:13','2024-08-10 03:42:13',12),(19,'Nathan Jones','GBR','50','Southampton','2022-11-10','2023-02-12',20,'2024-08-10 03:42:13','2024-08-10 03:42:13',3),(20,'Rubén Sellés','ESP','40','Southampton','2023-02-12',NULL,20,'2024-08-10 03:42:13','2024-08-10 03:42:13',10),(21,'Patrick Vieira','FRA','47','Crystal Palace','2021-07-04','2023-03-17',11,'2024-08-10 03:42:13','2024-08-10 03:42:13',27),(22,'Paddy McCarthy (interino)','IRL','40','Crystal Palace','2023-03-17','2023-03-21',11,'2024-08-10 03:42:13','2024-08-10 03:42:13',0),(23,'Roy Hodgson','GBR','75','Crystal Palace','2023-03-21',NULL,11,'2024-08-10 03:42:13','2024-08-10 03:42:13',18),(24,'Antonio Conte','ITA','54','Tottenham','2021-11-02','2023-03-26',8,'2024-08-10 03:42:13','2024-08-10 03:42:13',49),(25,'Cristian Stellini','ITA','49','Tottenham','2023-03-26','2023-04-24',8,'2024-08-10 03:42:13','2024-08-10 03:42:13',4),(26,'Ryan Mason (interino)','GBR','31','Tottenham','2023-04-24',NULL,8,'2024-08-10 03:42:13','2024-08-10 03:42:13',7),(27,'Brendan Rodgers','NIR','50','Leicester','2019-02-27','2023-04-02',18,'2024-08-10 03:42:13','2024-08-10 03:42:13',25),(28,'Adam Sadler (interino)','GBR','43','Leicester','2023-04-02','2023-04-10',18,'2024-08-10 03:42:13','2024-08-10 03:42:13',0),(29,'Dean Smith','GBR','52','Leicester','2023-04-10',NULL,18,'2024-08-10 03:42:13','2024-08-10 03:42:13',9),(30,'Ralph Rangnick','GER','64','Manchester United','2021-11-29','2022-05-22',3,'2024-08-10 03:42:13','2024-08-10 03:42:13',0),(31,'Erik ten Hag','NED','54','Manchester United','2022-05-23',NULL,3,'2024-08-10 03:42:13','2024-08-10 03:42:13',75),(32,'Eddie Howe','GBR','45','Newcastle','2021-11-08',NULL,4,'2024-08-10 03:42:13','2024-08-10 03:42:13',71),(33,'Steve Cooper','GBR','44','Nottingham Forest','2021-09-21',NULL,16,'2024-08-10 03:42:13','2024-08-10 03:42:13',38),(34,'Mikel Arteta','ESP','42','Arsenal','2019-12-20',NULL,2,'2024-08-10 03:42:13','2024-08-10 03:42:13',84),(35,'Sean Dyche','GBR','51','Everton','2023-01-30',NULL,17,'2024-08-10 03:42:13','2024-08-10 03:42:13',21),(36,'Frank Lampard','GBR','45','Everton','2022-01-31','2023-01-23',17,'2024-08-10 03:42:13','2024-08-10 03:42:13',15),(37,'Marco Silva','POR','46','Fulham','2021-07-01',NULL,10,'2024-08-10 03:42:13','2024-08-10 03:42:13',52),(38,'Jürgen Klopp','GER','57','Liverpool','2015-10-08',NULL,5,'2024-08-10 03:42:13','2024-08-10 03:42:13',67),(39,'Pep Guardiola','ESP','52','Manchester City','2016-07-01',NULL,1,'2024-08-10 03:42:13','2024-08-10 03:42:13',89),(40,'David Moyes','GBR','60','West Ham','2019-12-29',NULL,14,'2024-08-10 03:42:13','2024-08-10 03:42:13',40),(41,'Thomas Frank','DEN','49','Brentford','2016-10-16',NULL,9,'2024-08-10 03:56:01','2024-08-10 03:56:01',59);
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-26 22:18:08

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
-- Table structure for table `stadiums`
--

DROP TABLE IF EXISTS `stadiums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadiums` (
  `stadiumid` int NOT NULL AUTO_INCREMENT,
  `stadium` varchar(200) DEFAULT NULL,
  `club_id` int DEFAULT NULL,
  `club` varchar(200) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `opening` date DEFAULT NULL,
  `uefacategory` int DEFAULT NULL,
  `loaddata` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedata` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stadiumid`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `stadiums_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `teams` (`clubid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadiums`
--

LOCK TABLES `stadiums` WRITE;
/*!40000 ALTER TABLE `stadiums` DISABLE KEYS */;
INSERT INTO `stadiums` VALUES (1,'Emirates Stadium',2,'Arsenal',60704,'Holloway, Londres','2006-07-22',4,'2024-08-22 04:04:48','2024-08-22 04:04:48'),(2,'Old Trafford',3,'Manchester United',74310,'Sir Matt Busby Way, Trafford Greater Manchester','1910-02-19',4,'2024-08-22 04:08:40','2024-08-22 04:08:40'),(3,'Craven Cottage',10,'Fulham',24500,'SStevenage Road, Fulham, London','1896-01-01',3,'2024-08-24 19:15:59','2024-08-24 19:15:59'),(4,'Stamford Bridge',12,'Chelsea',41837,'Fulham, London','1877-04-28',4,'2024-08-24 20:12:16','2024-08-24 20:12:16');
/*!40000 ALTER TABLE `stadiums` ENABLE KEYS */;
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

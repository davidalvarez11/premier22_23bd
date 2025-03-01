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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `ranking` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `goalsdiff` int DEFAULT NULL,
  `clubid` int NOT NULL,
  `club` varchar(255) DEFAULT NULL,
  `matchesplayed` int DEFAULT NULL,
  `wins` int DEFAULT NULL,
  `draws` int DEFAULT NULL,
  `losses` int DEFAULT NULL,
  `goalsfor` int DEFAULT NULL,
  `goalsagainst` int DEFAULT NULL,
  `home` int DEFAULT NULL,
  `homewins` int DEFAULT NULL,
  `homedraw` int DEFAULT NULL,
  `homelose` int DEFAULT NULL,
  `homegoalsfor` int DEFAULT NULL,
  `homegoalsagainst` int DEFAULT NULL,
  `away` int DEFAULT NULL,
  `awaywins` int DEFAULT NULL,
  `awaydraw` int DEFAULT NULL,
  `awaylose` int DEFAULT NULL,
  `awaygoalsfor` int DEFAULT NULL,
  `awaygoalsagainst` int DEFAULT NULL,
  `loaddata` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedata` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,89,61,1,'Manchester City',38,28,5,5,94,33,19,17,1,1,60,17,19,11,4,4,34,16,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(2,84,45,2,'Arsenal',38,26,6,6,88,43,19,14,3,2,53,25,19,12,3,4,35,18,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(3,75,15,3,'Manchester United',38,23,6,9,58,43,19,15,3,1,36,10,19,8,3,8,22,33,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(4,71,35,4,'Newcastle',38,19,14,5,68,33,19,11,6,2,36,14,19,8,8,3,32,19,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(5,67,28,5,'Liverpool',38,19,10,9,75,47,19,13,5,1,46,17,19,6,5,8,29,30,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(6,62,19,6,'Brighton',38,18,8,12,72,53,19,10,4,5,37,21,19,8,4,7,35,32,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(7,61,5,7,'Aston Villa',38,18,7,13,51,46,19,12,2,5,33,21,19,6,5,8,18,25,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(8,60,7,8,'Tottenham',38,18,6,14,70,63,19,12,1,6,37,25,19,6,5,8,33,38,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(9,59,12,9,'Brentford',38,15,14,9,58,46,19,10,7,2,35,18,19,5,7,7,23,28,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(10,52,2,10,'Fulham',38,15,7,16,55,53,19,8,5,6,31,29,19,7,2,10,24,24,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(11,45,-9,11,'Crystal Palace',38,11,12,15,40,49,19,7,7,5,21,23,19,4,5,10,19,26,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(12,44,-9,12,'Chelsea',38,11,11,16,38,47,19,6,7,6,20,19,19,5,4,10,18,28,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(13,41,-27,13,'Wolves',38,11,8,19,31,58,19,9,3,7,19,20,19,2,5,12,12,38,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(14,40,-13,14,'West Ham',38,11,7,20,42,55,19,8,4,7,26,24,19,3,3,13,16,31,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(15,39,-34,15,'Bournemouth',38,11,6,21,37,71,19,6,4,9,20,28,19,5,2,12,17,43,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(16,38,-30,16,'Nottingham Forest',38,9,11,18,38,68,19,8,6,5,27,24,19,1,5,13,11,44,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(17,36,-23,17,'Everton',38,8,12,18,34,57,19,6,3,10,16,27,19,2,9,8,18,30,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(18,34,-17,18,'Leicester',38,9,7,22,51,68,19,5,4,10,23,27,19,4,3,12,28,41,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(19,31,-30,19,'Leeds United',38,7,10,21,48,78,19,5,7,7,26,37,19,2,3,14,22,41,'2024-07-30 04:09:00','2024-07-30 04:09:00'),(20,25,-37,20,'Southampton',38,6,7,25,36,73,19,2,5,12,19,37,19,4,2,13,17,36,'2024-07-30 04:09:00','2024-07-30 04:09:00');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
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

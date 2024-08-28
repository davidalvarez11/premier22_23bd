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
-- Temporary view structure for view `mfpasscomparition`
--

DROP TABLE IF EXISTS `mfpasscomparition`;
/*!50001 DROP VIEW IF EXISTS `mfpasscomparition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mfpasscomparition` AS SELECT 
 1 AS `playerid`,
 1 AS `player`,
 1 AS `pos`,
 1 AS `club`,
 1 AS `age`,
 1 AS `totalcomppasses`,
 1 AS `assist`,
 1 AS `totalpasrate`,
 1 AS `keypas`,
 1 AS `goals`,
 1 AS `shotontarget`,
 1 AS `ballwins`,
 1 AS `tackeleffective`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `mfpasscomparition`
--

/*!50001 DROP VIEW IF EXISTS `mfpasscomparition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mfpasscomparition` AS select `plapass`.`playerid` AS `playerid`,`plapass`.`player` AS `player`,`plapass`.`pos` AS `pos`,`plapass`.`club` AS `club`,`plapass`.`age` AS `age`,`plapass`.`totalcomppasses` AS `totalcomppasses`,`plapass`.`assist` AS `assist`,`plapass`.`totalpasrate` AS `totalpasrate`,`plapass`.`keypas` AS `keypas`,`plashoot`.`goals` AS `goals`,`plashoot`.`shotontarget` AS `shotontarget`,(`pladef`.`tacklewon` + `pladef`.`intercept`) AS `ballwins`,(`pladef`.`tacklewon` / `pladef`.`totaltackle`) AS `tackeleffective` from ((`plapass` join `plashoot` on((`plapass`.`playerid` = `plashoot`.`playerid`))) join `pladef` on((`plashoot`.`playerid` = `pladef`.`playerid`))) where ((`plapass`.`min90splayed` > 0) and (`plapass`.`pos` like 'M%')) order by `plapass`.`totalcomppasses` desc,`plapass`.`totalpasrate` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-26 22:18:09

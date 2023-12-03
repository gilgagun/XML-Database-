-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: newfire
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `accidentcause_fire`
--

DROP TABLE IF EXISTS `accidentcause_fire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accidentcause_fire` (
  `gu_id` int NOT NULL,
  `electricalproperty` int DEFAULT NULL,
  `mechanical` int DEFAULT NULL,
  `chemicalphenomena` int DEFAULT NULL,
  `gas` int DEFAULT NULL,
  `caraccident` int DEFAULT NULL,
  `carelessness` int DEFAULT NULL,
  `naturalphenomenon` int DEFAULT NULL,
  `unknown` int DEFAULT NULL,
  PRIMARY KEY (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accidentcause_fire`
--

LOCK TABLES `accidentcause_fire` WRITE;
/*!40000 ALTER TABLE `accidentcause_fire` DISABLE KEYS */;
INSERT INTO `accidentcause_fire` VALUES (1,58,8,3,0,2,106,0,32),(2,65,6,1,0,2,95,0,13),(3,43,8,0,0,2,122,0,15),(4,44,8,1,0,0,97,0,31),(5,54,13,0,0,1,100,0,14),(6,22,7,1,0,0,90,0,30),(7,41,3,1,1,0,156,0,15),(8,49,10,3,0,1,82,0,21),(9,41,7,2,2,0,111,0,16),(10,37,4,0,1,0,93,0,22),(11,43,12,1,0,2,93,1,15),(12,58,10,1,0,0,97,0,17),(13,34,6,1,2,0,147,1,22),(14,58,14,2,1,0,135,0,21),(15,54,5,1,0,1,74,1,9),(16,48,19,1,1,1,122,0,17),(17,49,9,0,1,0,80,0,11),(18,31,12,0,1,0,59,1,12),(19,52,7,2,1,1,139,0,17),(20,46,8,3,1,1,77,0,12),(21,53,7,0,0,0,135,0,20),(22,50,13,1,0,0,138,0,34),(23,102,21,4,0,2,231,0,23),(24,63,15,4,0,2,195,0,10),(25,70,9,3,2,0,116,1,13);
/*!40000 ALTER TABLE `accidentcause_fire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `gu_id` int NOT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`gu_id`),
  CONSTRAINT `building_ibfk_1` FOREIGN KEY (`gu_id`) REFERENCES `gu` (`gu_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,8399),(2,7144),(3,5369),(4,5503),(5,8442),(6,7727),(7,5936),(8,6375),(9,6124),(10,3863),(11,4157),(12,5026),(13,4371),(14,8704),(15,5167),(16,6640),(17,4908),(18,4006),(19,5380),(20,5323),(21,7282),(22,8328),(23,13131),(24,8265),(25,7331);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_fire`
--

DROP TABLE IF EXISTS `building_fire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_fire` (
  `gu_id` int NOT NULL,
  `occurrence` int DEFAULT NULL,
  `ratio` double DEFAULT NULL,
  PRIMARY KEY (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_fire`
--

LOCK TABLES `building_fire` WRITE;
/*!40000 ALTER TABLE `building_fire` DISABLE KEYS */;
INSERT INTO `building_fire` VALUES (1,50,0.6),(2,99,1.39),(3,48,0.89),(4,88,1.6),(5,82,0.97),(6,88,1.14),(7,60,1.01),(8,40,0.63),(9,71,1.16),(10,73,1.89),(11,141,3.39),(12,78,1.55),(13,46,1.05),(14,127,1.46),(15,81,1.57),(16,135,2.03),(17,81,1.65),(18,63,1.57),(19,100,1.86),(20,56,1.05),(21,103,1.41),(22,170,2.04),(23,290,2.21),(24,155,1.88),(25,130,1.77);
/*!40000 ALTER TABLE `building_fire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dayofweek_fire`
--

DROP TABLE IF EXISTS `dayofweek_fire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dayofweek_fire` (
  `gu_id` int NOT NULL,
  `monday` int DEFAULT NULL,
  `tuesday` int DEFAULT NULL,
  `wednesday` int DEFAULT NULL,
  `thursday` int DEFAULT NULL,
  `friday` int DEFAULT NULL,
  `saturday` int DEFAULT NULL,
  `sunday` int DEFAULT NULL,
  PRIMARY KEY (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dayofweek_fire`
--

LOCK TABLES `dayofweek_fire` WRITE;
/*!40000 ALTER TABLE `dayofweek_fire` DISABLE KEYS */;
INSERT INTO `dayofweek_fire` VALUES (1,26,30,36,31,36,27,31),(2,22,28,26,24,28,32,25),(3,28,38,33,22,26,21,24),(4,22,27,41,23,30,23,21),(5,30,30,26,17,24,20,39),(6,17,20,27,17,20,29,22),(7,30,33,30,29,32,28,43),(8,30,25,27,29,24,22,16),(9,29,25,29,32,36,17,18),(10,17,21,30,19,22,28,26),(11,31,22,26,20,27,20,26),(12,23,30,33,31,31,21,23),(13,28,30,31,33,29,37,32),(14,32,44,31,37,30,29,37),(15,24,27,23,25,10,22,22),(16,34,37,32,30,27,26,26),(17,33,20,23,22,20,21,17),(18,16,21,24,10,18,21,17),(19,23,36,33,43,36,27,27),(20,18,25,25,25,19,19,20),(21,24,36,36,16,38,36,33),(22,34,34,41,36,35,27,33),(23,58,64,55,51,50,49,60),(24,43,39,52,48,49,41,35),(25,29,26,33,31,37,33,32);
/*!40000 ALTER TABLE `dayofweek_fire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firesafetyscore`
--

DROP TABLE IF EXISTS `firesafetyscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firesafetyscore` (
  `gu_id` int NOT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firesafetyscore`
--

LOCK TABLES `firesafetyscore` WRITE;
/*!40000 ALTER TABLE `firesafetyscore` DISABLE KEYS */;
INSERT INTO `firesafetyscore` VALUES (1,44.46),(2,16.78),(3,26.59),(4,8.45),(5,14.25),(6,21.43),(7,16.38),(8,42.33),(9,14.17),(10,7.98),(11,6.67),(12,12.22),(13,18.46),(14,15.15),(15,13.22),(16,11.77),(17,9.62),(18,7.81),(19,16.9),(20,21.23),(21,17.87),(22,15.45),(23,14.78),(24,14.7),(25,12.45);
/*!40000 ALTER TABLE `firesafetyscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firewater`
--

DROP TABLE IF EXISTS `firewater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firewater` (
  `gu_id` int NOT NULL,
  `firewater_quantity` int DEFAULT NULL,
  PRIMARY KEY (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewater`
--

LOCK TABLES `firewater` WRITE;
/*!40000 ALTER TABLE `firewater` DISABLE KEYS */;
INSERT INTO `firewater` VALUES (1,2864),(2,2510),(3,2569),(4,1539),(5,1570),(6,2593),(7,1881),(8,2829),(9,1829),(10,1671),(11,2436),(12,2088),(13,2163),(14,2451),(15,2226),(16,2605),(17,1743),(18,1356),(19,3366),(20,2385),(21,2747),(22,3393),(23,3651),(24,3063),(25,2429);
/*!40000 ALTER TABLE `firewater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gu`
--

DROP TABLE IF EXISTS `gu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gu` (
  `gu_id` int NOT NULL DEFAULT '1',
  `gu_name` varchar(20) NOT NULL,
  PRIMARY KEY (`gu_id`,`gu_name`),
  CONSTRAINT `gu_id` FOREIGN KEY (`gu_id`) REFERENCES `building` (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gu`
--

LOCK TABLES `gu` WRITE;
/*!40000 ALTER TABLE `gu` DISABLE KEYS */;
INSERT INTO `gu` VALUES (1,'종로구'),(2,'중구'),(3,'용산구'),(4,'성동구'),(5,'광진구'),(6,'동대문구'),(7,'중랑구'),(8,'성북구'),(9,'강북구'),(10,'도봉구'),(11,'노원구'),(12,'은평구'),(13,'서대문구'),(14,'마포구'),(15,'양천구'),(16,'강서구'),(17,'구로구'),(18,'금천구'),(19,'영등포구'),(20,'동작구'),(21,'관악구'),(22,'서초구'),(23,'강남구'),(24,'송파구'),(25,'강동구');
/*!40000 ALTER TABLE `gu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `number_fire`
--

DROP TABLE IF EXISTS `number_fire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `number_fire` (
  `gu_id` int NOT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `number_fire`
--

LOCK TABLES `number_fire` WRITE;
/*!40000 ALTER TABLE `number_fire` DISABLE KEYS */;
INSERT INTO `number_fire` VALUES (1,217),(2,185),(3,192),(4,187),(5,186),(6,152),(7,225),(8,173),(9,186),(10,163),(11,172),(12,192),(13,220),(14,240),(15,153),(16,212),(17,156),(18,127),(19,225),(20,151),(21,219),(22,240),(23,387),(24,307),(25,221);
/*!40000 ALTER TABLE `number_fire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_fire`
--

DROP TABLE IF EXISTS `place_fire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_fire` (
  `gu_id` int NOT NULL,
  `house` int DEFAULT NULL,
  `school` int DEFAULT NULL,
  `office` int DEFAULT NULL,
  `localbusiness` int DEFAULT NULL,
  `workshop` int DEFAULT NULL,
  `transportationmean` int DEFAULT NULL,
  PRIMARY KEY (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_fire`
--

LOCK TABLES `place_fire` WRITE;
/*!40000 ALTER TABLE `place_fire` DISABLE KEYS */;
INSERT INTO `place_fire` VALUES (1,74,2,16,54,14,11),(2,34,2,22,53,17,8),(3,80,1,6,38,2,11),(4,64,0,8,42,26,5),(5,82,0,7,44,3,13),(6,64,1,9,38,2,6),(7,124,1,9,42,10,14),(8,62,4,3,35,9,16),(9,105,1,6,39,7,8),(10,91,0,1,21,9,10),(11,76,4,9,34,1,15),(12,107,0,5,36,5,11),(13,88,4,4,39,3,7),(14,84,2,24,62,2,21),(15,78,1,4,16,2,15),(16,81,0,17,44,1,17),(17,57,1,11,36,6,9),(18,59,2,10,21,14,8),(19,70,1,22,51,6,21),(20,65,1,4,38,2,11),(21,98,3,14,61,2,5),(22,66,0,20,48,1,29),(23,103,2,61,94,1,28),(24,122,1,22,54,1,26),(25,98,1,15,55,5,14);
/*!40000 ALTER TABLE `place_fire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 19:57:44

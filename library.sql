-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `authorId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'George','Orwell','website-1'),(2,'J.R.R.','Tolkien','website-2'),(3,'Suzanne','Collins','website-3'),(4,'Mary','Shelley','website-4'),(5,'Fyodor','Dostoevsky','website-5'),(6,'Batıkan','Akdeniz','website-batıkan'),(7,'asd','asd','website-0'),(8,'a','a','website-0');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bookId` int NOT NULL,
  `AUTHORID` int NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `YEAR` int DEFAULT NULL,
  `NUMBEROFPAGES` int DEFAULT NULL,
  `COVER` varchar(255) DEFAULT NULL,
  `ABOUT` text,
  `READ` int NOT NULL,
  `RATING` int NOT NULL,
  `COMMENTS` text,
  `RELEASEDATE` date DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  KEY `FK_BOOKS_AUTHOR` (`AUTHORID`),
  CONSTRAINT `FK_BOOKS_AUTHOR` FOREIGN KEY (`AUTHORID`) REFERENCES `authors` (`authorId`),
  CONSTRAINT `books_chk_1` CHECK ((`READ` in (1,2,3))),
  CONSTRAINT `CHK_BOOK_RATING_CORRECT` CHECK ((((`READ` = 1) and (`RATING` between 1 and 5)) or ((`READ` in (2,3)) and (`RATING` = 0))))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'1984',1949,328,'covers/1984.jpg','Dystopian novel.',1,5,'Brilliant!',NULL),(2,1,'Animal Farm',1945,112,'covers/animalfarm.jpg','Political satire.',2,0,NULL,NULL),(3,2,'The Silmarillion',1977,365,'covers/silmarillion.jpg','Epic lore.',3,0,'Can’t wait.','2025-07-10'),(4,3,'The Hunger Games',2008,374,'covers/hungergames.jpg','Dystopian survival story.',1,5,'Couldn’t put it down.',NULL),(5,3,'Catching Fire',2009,391,'covers/catchingfire.jpg','Rebellion begins.',1,2,'Not as good as first.',NULL),(6,4,'Frankenstein',1818,280,'covers/frankenstein.jpg','The modern Prometheus.',2,0,NULL,NULL),(7,5,'The Brothers Karamazov',1880,824,'covers/karamazov.jpg','Philosophical Russian epic.',3,0,'Ready to dive in.','2025-07-20'),(8,5,'Crime and Punishment',1866,671,'covers/crime.jpg','Psychological crime novel.',3,0,NULL,'2025-07-25');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `USERID` int NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `SHA256_PASSWORD` varchar(64) DEFAULT NULL,
  `USERTYPE` int NOT NULL,
  PRIMARY KEY (`USERID`),
  CONSTRAINT `users_chk_1` CHECK ((`USERTYPE` in (1,2)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'zeynep','e6f52840f058231ee847a6be51d7eff9210e6e6cf040bc057024cf2ecbddf479',1),(2,'batikan','e6f7cacb8fedfba37d071dacb2255bb84a991462e752f503a65a8f4223de8a8f',2);
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

-- Dump completed on 2025-06-22 16:52:05

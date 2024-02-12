-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: atelier
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `artisans`
--

DROP TABLE IF EXISTS `artisans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artisans` (
  `id_artisan` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_artisan`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisans`
--

LOCK TABLES `artisans` WRITE;
/*!40000 ALTER TABLE `artisans` DISABLE KEYS */;
INSERT INTO `artisans` VALUES (1,'Jean','Dupont','jean.dupont@email.com','1234567890','password111','2024-01-26 18:22:57'),(2,'Marie','Curie','marie.curie@email.com','0987654321','password333','2024-01-26 18:22:57'),(3,'Pierre','Bernard','pierre.bernard@email.com','1122334455','password444','2024-01-26 18:22:57'),(4,'aa','bb','aa.bb@email.com','1122356787','password 555','2024-01-02 15:10:27'),(5,'bb','cc','bb.cc@email.com','1111111111','11q222q222q','2024-01-02 15:10:27'),(6,'cc','dd','cc.dd@email.com','2431534466','13124352154','2024-01-02 15:10:27'),(7,'dd','ss','sas@gmail.com','1254642565','23526548899','2024-01-02 15:10:27'),(8,'ee','gg','wew@gmail.com','4325435435','12422355343','2024-01-02 15:10:27'),(9,'ww','ww','ww@gmail.com','2152464332','dvdgwetergrg','2024-01-02 15:10:27');
/*!40000 ALTER TABLE `artisans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ateliers`
--

DROP TABLE IF EXISTS `ateliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ateliers` (
  `id_atelier` int NOT NULL AUTO_INCREMENT,
  `id_artisan` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `max_participants` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_atelier`),
  KEY `ateliers_ibfk_1` (`id_artisan`),
  CONSTRAINT `ateliers_ibfk_1` FOREIGN KEY (`id_artisan`) REFERENCES `artisans` (`id_artisan`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ateliers`
--

LOCK TABLES `ateliers` WRITE;
/*!40000 ALTER TABLE `ateliers` DISABLE KEYS */;
INSERT INTO `ateliers` VALUES (1,1,'Atelier de poterie','Apprenez à faire de la poterie.','Montreal',10,'2024-02-01 09:00:00','2024-02-01 11:00:00','2024-01-26 18:22:57','video1.mp4'),(2,2,'Atelier de peinture','Cours de peinture pour débutants.','Montreal',1,'2024-02-02 10:00:00','2024-02-02 12:00:00','2024-01-26 18:22:57','video2.mp4'),(3,3,'Cuisine française','Découvrez la cuisine française.','Montreal',15,'2024-02-03 14:00:00','2024-02-03 16:00:00','2024-01-26 18:22:57','video3.mp4'),(4,4,'Yoga','Mes séance commencent par une méditation relaxante, suive d\'un ensemble d\'assanas pour améliorer la flexibilité','Montreal',13,'2024-02-03 10:00:00','2024-02-03 12:00:00','2024-01-29 18:22:57','video4.mp4'),(5,5,'CrossFit','Mes séances de CrossFit sont conçues pour la force fonctionnelle, l\'endurance et la flexbilité.','Montreal',20,'2024-02-04 10:00:00','2024-02-04 12:00:00','2024-01-30 18:22:57','video5.mp4'),(6,6,'Entraînement fonctionnel','Mes sessions d\'entrainement fonctionnel visent à amélior la force,la flexibilité','Marseille',15,'2024-02-05 10:00:00','2024-02-05 12:00:00','2024-01-30 15:22:57','video6.mp4'),(7,7,'Atelier de dance','Les débutants qui n\'ont aucune base en danse et qui sont prêts à s\'engager dans un spectacle de danse, ou dans un spectacle de danse à temps partiel','Montreal',10,'2024-02-06 10:00:00','2024-02-06 12:00:00','2024-01-30 15:22:57','video7.mp4'),(8,8,'Atelier de dance','Les débutants qui n\'ont aucune base en danse et qui sont prêts à s\'engager dans un spectacle de danse, ou dans un spectacle de danse à temps partiel','Montreal',12,'2024-02-09 10:00:00','2024-02-09 12:00:00','2024-01-30 15:22:57','video8.mp4'),(9,9,'Atelier de music','Les débutants qui n\'ont aucune base en danse et qui sont prêts à s\'engager dans un spectacle de danse, ou dans un spectacle de danse à temps partiel','Montreal',10,'2024-02-09 10:00:00','2024-02-09 12:00:00','2024-01-30 15:22:40','video9.mp4');
/*!40000 ALTER TABLE `ateliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `id_participant` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_participant`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (7,'yu','aa','b111@gmail.com','$2a$10$YxuVg3SwNstkIf1DFS30DOhxoVzXeEED4Wt/ehECvP9mko7PSENR6','2024-02-07 19:13:02'),(16,'aa','aa','aa@gmail.com','$2a$10$wY6LWzCeVhdTENImKF2GPeF0aWDsVrq67hZ8Q9g2Fxq6sr.nlGa.W','2024-02-11 05:04:10');
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id_reservation` int NOT NULL AUTO_INCREMENT,
  `id_participant` int DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `id_atelier` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `FK407x9d8nytj5398fesuns8dix` (`id_atelier`),
  KEY `reservations_ibfk_2` (`id_participant`),
  CONSTRAINT `FK407x9d8nytj5398fesuns8dix` FOREIGN KEY (`id_atelier`) REFERENCES `ateliers` (`id_atelier`),
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`id_participant`) REFERENCES `participants` (`id_participant`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (88,7,'2024-02-11 03:21:25','Confirmed',1,'2024-02-01 09:00:00','2024-02-01 11:00:00');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-10 19:13:41

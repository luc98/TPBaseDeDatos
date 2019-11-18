-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: supermercados
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `NumeroDeTicket` int(11) NOT NULL,
  `CodigoDeSucursal` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `MontoTotal` int(11) DEFAULT NULL,
  `MedioDePago` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NumeroDeTicket`),
  KEY `CodigoDeSucursal` (`CodigoDeSucursal`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`CodigoDeSucursal`) REFERENCES `sucursales` (`CodigoDeSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,'2018-10-10',800,'Debito'),(2,3,'2018-09-22',600,'Credito'),(3,3,'2018-10-31',700,'Debito'),(4,2,'2018-09-14',800,'Efectivo'),(5,1,'2018-09-05',900,'Efectivo'),(6,3,'2018-11-13',1200,'Efectivo'),(7,3,'2018-10-13',600,'Efectivo'),(8,4,'2018-11-09',800,'Efectivo'),(9,6,'2018-09-11',900,'Efectivo'),(10,8,'2018-11-13',1000,'Efectivo'),(11,9,'2018-09-13',700,'Efectivo'),(12,10,'2018-10-20',900,'Efectivo'),(13,5,'2018-09-09',1100,'Efectivo'),(14,6,'2018-10-19',900,'Efectivo'),(15,8,'2018-10-14',1400,'Efectivo'),(16,9,'2018-09-16',900,'Efectivo'),(17,10,'2018-10-19',1500,'Efectivo'),(18,10,'2018-09-20',600,'Efectivo'),(19,2,'2018-11-29',800,'Efectivo'),(20,6,'2018-10-30',900,'Efectivo'),(21,7,'2018-09-20',1000,'Efectivo'),(22,8,'2018-10-24',1300,'Efectivo'),(23,9,'2018-11-23',600,'Efectivo'),(24,5,'2018-11-20',1400,'Efectivo'),(25,1,'2018-09-10',900,'Efectivo');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-18 20:39:28

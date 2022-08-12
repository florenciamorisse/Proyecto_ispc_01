-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: peluqueria_canina
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
-- Table structure for table `duenio`
--

DROP TABLE IF EXISTS `duenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duenio` (
  `DNI` int NOT NULL,
  `Nombre` varchar(35) NOT NULL,
  `Apellido` varchar(35) NOT NULL,
  `Teléfono` varchar(35) NOT NULL,
  `Dirección` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duenio`
--

LOCK TABLES `duenio` WRITE;
/*!40000 ALTER TABLE `duenio` DISABLE KEYS */;
INSERT INTO `duenio` VALUES (20202202,'Florencia','Morisse','1132222222','Libertad 1230'),(30303303,'Laura','Garcia','1133333333','Libertad 123'),(40404404,'Juan','Torres','1134444444','Morón 2053'),(50505505,'Marcelo','Rios','1135555555','San Juan 2053'),(60606606,'Juan Pablo','Rocha','1136666666','Pavón 2525');
/*!40000 ALTER TABLE `duenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL AUTO_INCREMENT,
  `Perro` int NOT NULL,
  `Fecha` date NOT NULL,
  `Descripción` text,
  `Monto` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `Perro` (`Perro`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT INTO `historial` VALUES (101,1,'2021-12-03','Baño',5050.00),(102,2,'2022-10-02','Corte',2500.00),(103,10,'2021-02-02','uñas',11344.00),(104,1,'2020-10-09','Corte',11525.00),(105,3,'2020-01-22','baño',12542.00),(106,1,'2021-05-06','Corte',11363.52),(107,4,'2022-08-09','corte',11897.00),(108,10,'2021-05-18','Corte',11355.00),(109,1,'2022-07-06','Corte',11363.52),(110,4,'2022-07-09','corte',11897.00),(111,10,'2022-07-18','Corte',11355.00);
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perro`
--

DROP TABLE IF EXISTS `perro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perro` (
  `ID_Perro` int NOT NULL AUTO_INCREMENT,
  `DNI_duenio` int NOT NULL,
  `Nombre` varchar(35) NOT NULL,
  `Fecha_nac` date DEFAULT NULL,
  `Sexo` char(1) NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `DNI_duenio` (`DNI_duenio`),
  CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`DNI_duenio`) REFERENCES `duenio` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perro`
--

LOCK TABLES `perro` WRITE;
/*!40000 ALTER TABLE `perro` DISABLE KEYS */;
INSERT INTO `perro` VALUES (1,20202202,'Donna','2020-12-26','f'),(2,30303303,'Bonita','2018-10-28','f'),(3,20202202,'Owen','2001-02-23','m'),(4,50505505,'Ulises','2018-10-09','m'),(5,60606606,'Elvis','2020-09-03','m'),(10,40404404,'Choco','2019-05-01','m');
/*!40000 ALTER TABLE `perro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-12 18:53:33

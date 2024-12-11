CREATE DATABASE  IF NOT EXISTS `sistemaecogest` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `sistemaecogest`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaecogest
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `criarativsust`
--

DROP TABLE IF EXISTS `criarativsust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criarativsust` (
  `criar_id` int(11) NOT NULL AUTO_INCREMENT,
  `criar_nome` varchar(100) NOT NULL,
  `criar_cpf` varchar(14) NOT NULL,
  `criar_contato` varchar(20) DEFAULT NULL,
  `criar_endereco` varchar(255) DEFAULT NULL,
  `criar_bairro` varchar(100) DEFAULT NULL,
  `criar_numero` int(5) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `criar_data` date DEFAULT NULL,
  `criar_horarioInicial` time NOT NULL,
  `criar_horarioFinal` time NOT NULL,
  `criar_descricao` varchar(1000) NOT NULL,
  PRIMARY KEY (`criar_id`),
  KEY `fk_cadtipoativsust_criarativsust` (`id`),
  CONSTRAINT `fk_cadtipoativsust_criarativsust` FOREIGN KEY (`id`) REFERENCES `cadtipoativsust` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criarativsust`
--

LOCK TABLES `criarativsust` WRITE;
/*!40000 ALTER TABLE `criarativsust` DISABLE KEYS */;
INSERT INTO `criarativsust` VALUES (1,'João da Silva Santos','123.456.789-01','(11) 91234-5678','Rua Exemplo, 123','Centro',45,2,'2024-12-15','08:00:00','12:00:00','Atividade de coleta seletiva no bairro Centro.'),(3,'Taisa Mariana','112.233.445-56','(31) 93456-7890','Rua Verde, 789','Vila Nova',12,3,'2024-10-10','14:00:00','16:00:00','Palestra sobre reciclagem e reaproveitamento de materiais.');
/*!40000 ALTER TABLE `criarativsust` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 17:15:56

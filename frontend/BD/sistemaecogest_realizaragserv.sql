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
-- Table structure for table `realizaragserv`
--

DROP TABLE IF EXISTS `realizaragserv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realizaragserv` (
  `agserv_id` int(11) NOT NULL AUTO_INCREMENT,
  `agserv_nomeSolicitante` varchar(100) NOT NULL,
  `agserv_cpfSolicitante` varchar(14) NOT NULL,
  `agserv_contatoSolicitante` varchar(20) DEFAULT NULL,
  `agserv_endereco` varchar(255) DEFAULT NULL,
  `agserv_bairro` varchar(100) DEFAULT NULL,
  `agserv_numero` int(5) DEFAULT NULL,
  `agserv_tipoServico_id` int(11) NOT NULL,
  `agserv_data` date DEFAULT NULL,
  `agserv_horario` time NOT NULL,
  `agserv_descricao` varchar(1000) NOT NULL,
  `agserv_status` varchar(50) NOT NULL DEFAULT 'Pendente',
  `data_fim` datetime DEFAULT NULL,
  PRIMARY KEY (`agserv_id`),
  KEY `fk_cadastrotiposdeservico_realizaragserv` (`agserv_tipoServico_id`),
  CONSTRAINT `fk_cadastrotiposdeservico_realizaragserv` FOREIGN KEY (`agserv_tipoServico_id`) REFERENCES `cadastrotiposdeservico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realizaragserv`
--

LOCK TABLES `realizaragserv` WRITE;
/*!40000 ALTER TABLE `realizaragserv` DISABLE KEYS */;
INSERT INTO `realizaragserv` VALUES (1,'Carlos Eduardo','12345678901','(11) 91234-5678','Rua Exemplo, 123','Centro',45,1,'2024-10-20','09:00:00','Serviço de poda de árvores em área pública','Concluído','2024-12-02 22:37:50'),(2,'Ana Maria da Silva','222.222.222-22','(22) 98765-4321','Av. Brasil, 321','Zona Sul',100,3,'2024-10-21','10:00:00','Liberação de mudas de árvores para comunidade','Concluído','2024-12-10 20:55:08'),(21,'THIAGO HENRIQUE DOS SANTOS CAMPONEZ','000.000.000-00','(44) 99165-4134','Rua Joaquim Campos','Centro',188,5,'2024-12-11','08:00:00','Implementação','Em Análise','2024-12-11 17:08:49'),(22,'Lais A Camponez','444.444.444-44','(44) 99165-4134','Rua Joaquim Campos','Centro',188,5,'2024-12-11','08:00:00','Ok','Em Análise',NULL);
/*!40000 ALTER TABLE `realizaragserv` ENABLE KEYS */;
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

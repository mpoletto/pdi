-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `laravel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `laravel`;

--
-- Table structure for table `cliente`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigo_cliente` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(96) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`codigo_cliente`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `codigo_cliente` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_produto` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_tipo_produto` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` tinyint unsigned NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`codigo_cliente`,`codigo_produto`,`codigo_tipo_produto`,`user_session_id`),
  KEY `fk_codigo_produto_tipo` (`codigo_produto`,`codigo_tipo_produto`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`codigo_produto`, `codigo_tipo_produto`) REFERENCES `produto` (`codigo_produto`, `codigo_tipo_produto`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `codigo_produto` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_tipo_produto` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` decimal(6,2) unsigned NOT NULL,
  `foto` blob,
  `ativo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`codigo_produto`,`codigo_tipo_produto`),
  KEY `produto_ibfk_1` (`codigo_tipo_produto`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`codigo_tipo_produto`) REFERENCES `tipo_produto` (`codigo_tipo_produto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_produto`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_produto` (
  `codigo_tipo_produto` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`codigo_tipo_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_produto`
--

LOCK TABLES `tipo_produto` WRITE;
/*!40000 ALTER TABLE `tipo_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-13  0:36:34

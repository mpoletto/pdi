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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `endereco` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  UNIQUE KEY `cliente_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('2abe8d04-4915-3704-90cb-4d2dadcbe585','Chet Kuhlman','xward@example.net',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09'),('2c8e5572-cd65-378e-9a3f-88c89f2d6198','Lavonne Hagenes','shackett@example.org',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09'),('352f48a2-e8f4-3911-94d6-176db71bc073','Dr. Douglas Cronin','jazmin28@example.com',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:08',NULL,'2024-02-14 02:42:08','2024-02-14 02:42:08'),('3a8cdfc7-7938-35a9-b4e2-6ca85fbbf2f0','Prof. Ezequiel Tremblay','rfunk@example.com',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09'),('3bfbe5ed-3376-3e01-b904-bbd278e1a6a5','Lenna Bode MD','karlee99@example.com',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09'),('50a75501-7655-3f0b-ad95-e2a8bc0c9fc3','Lois Hintz','drake.turner@example.com',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:08',NULL,'2024-02-14 02:42:08','2024-02-14 02:42:08'),('8c763300-5baf-3202-ba3c-b759712f3536','John Schinner','clemmie67@example.net',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09'),('AASDF98734HOLL','Marcos P. Alves','mpoletto@gmail.com','11999090675','1968-09-22','Rua Indiana, 100','ap. 860','Brooklin Paulista','05454-000','2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09'),('c91afb9a-22ab-32ed-9e6d-96ee76edc346','Ole Johnson PhD','bosco.scarlett@example.net',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09'),('ed1ae62a-86e1-3102-abe4-c3e3f8cf35e7','Daryl Rutherford','arlie.simonis@example.net',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:08',NULL,'2024-02-14 02:42:08','2024-02-14 02:42:08'),('f0affb9d-d1b9-3e77-94dc-dda14e548902','Verona Rolfson','tlemke@example.net',NULL,'2024-02-14',NULL,NULL,NULL,NULL,'2024-02-14 05:42:09',NULL,'2024-02-14 02:42:09','2024-02-14 02:42:09');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_02_13_000000_create_cliente',1),(6,'2024_02_13_000000_create_tipo_produto',1),(7,'2024_02_13_000001_create_produto',1),(8,'2024_02_13_000002_create_pedido',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
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
  `quantidade` int unsigned NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`,`codigo_produto`,`codigo_tipo_produto`,`user_session_id`),
  KEY `pedido_codigo_produto_foreign` (`codigo_produto`),
  KEY `pedido_codigo_tipo_produto_foreign` (`codigo_tipo_produto`),
  CONSTRAINT `pedido_codigo_cliente_foreign` FOREIGN KEY (`codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `pedido_codigo_produto_foreign` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`codigo_produto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `pedido_codigo_tipo_produto_foreign` FOREIGN KEY (`codigo_tipo_produto`) REFERENCES `tipo_produto` (`codigo_tipo_produto`) ON DELETE RESTRICT ON UPDATE CASCADE
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
-- Table structure for table `personal_access_tokens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codigo_produto`,`codigo_tipo_produto`),
  KEY `produto_codigo_tipo_produto_foreign` (`codigo_tipo_produto`),
  CONSTRAINT `produto_codigo_tipo_produto_foreign` FOREIGN KEY (`codigo_tipo_produto`) REFERENCES `tipo_produto` (`codigo_tipo_produto`) ON DELETE RESTRICT ON UPDATE CASCADE
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Daija Sporer','annie.ankunding@example.org','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','k3wa9DE0gC','2024-02-14 02:42:08','2024-02-14 02:42:08'),(2,'Felicia Ritchie','oauer@example.org','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','f73mxf6rVU','2024-02-14 02:42:08','2024-02-14 02:42:08'),(3,'Mrs. Sophia Borer MD','cordelia06@example.net','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','KMCsEDATQa','2024-02-14 02:42:08','2024-02-14 02:42:08'),(4,'Nathanael Johnson DVM','lstamm@example.net','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','G17msmZJRl','2024-02-14 02:42:08','2024-02-14 02:42:08'),(5,'Miss Lina Simonis Sr.','nernser@example.org','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','ckLbPecUoi','2024-02-14 02:42:08','2024-02-14 02:42:08'),(6,'Ms. Kellie Sanford III','orn.deontae@example.com','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','8b1RM6oQbL','2024-02-14 02:42:08','2024-02-14 02:42:08'),(7,'Jabari Wehner Jr.','aufderhar.norval@example.org','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','kCQ44E8Efp','2024-02-14 02:42:08','2024-02-14 02:42:08'),(8,'Lou Terry','fkoepp@example.org','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','Wz0jCXTtpy','2024-02-14 02:42:08','2024-02-14 02:42:08'),(9,'Selena Bernier','ricardo74@example.org','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','JUJzz1S1dt','2024-02-14 02:42:08','2024-02-14 02:42:08'),(10,'Arnaldo Emard I','kcruickshank@example.org','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','C340GMnWdK','2024-02-14 02:42:08','2024-02-14 02:42:08'),(11,'Test User','test@example.com','2024-02-14 02:42:08','$2y$12$ptcDv7U.ii5QYPnt14V0aeE5jydAX/CSRPiLinGs52uO9HnuqEOrK','kezjCuRnpj','2024-02-14 02:42:08','2024-02-14 02:42:08');
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

-- Dump completed on 2024-02-15  1:28:36

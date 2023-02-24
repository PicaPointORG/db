-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: picapoint
-- ------------------------------------------------------
-- Server version	8.0.28
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `maquina`
--
DROP TABLE IF EXISTS `maquina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `maquina` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(45) NOT NULL,
  `empresa_cif` varchar(9) NOT NULL,
  `mac` varchar(17) UNIQUE NOT NULL,
  PRIMARY KEY (`id`, `empresa_cif`),
  KEY `fk_Maquina_Empresa_idx` (`empresa_cif`),
  CONSTRAINT `fk_Maquina_Empresa` FOREIGN KEY (`empresa_cif`) REFERENCES `empresa` (`cif`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */
;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
INSERT INTO `maquina`
VALUES (1, 'c/maquina nike', 'A12345678', '44:17:93:1E:A1:0B'),
(2, 'c/maquina adidas', 'A12345678', '44:17:93:1E:A1:0C'),
(3, 'c/maquina puma', 'C12345678', '44:17:93:1E:A1:1B'),
(4, 'c/maquina quechua', 'D12345678', '44:17:93:1E:A1:2B');
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2023-02-08 15:54:22
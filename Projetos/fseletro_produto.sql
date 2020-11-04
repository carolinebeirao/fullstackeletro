-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'geladeira','Geladeira Fross Free Brastemp Side Inverse 540 Litros',6389.00,5019.00,'imagens/produtos/Geladeira%20Fross%20Free%20Brastemp%20Side%20Inverse%20540%20Litros.jpg'),(2,'geladeira','Geladeira Frost Free Brastemp 375 litros Branca',5199.00,4750.00,'imagens/produtos/geladeira%20frost%20free%20brastemp%20375%20litros%20branca.jpg'),(3,'geladeira','Geladeira Frost Free Consul Side Prata 340 litros',3389.00,2019.00,'imagens/produtos/geladeira%20frost%20free%20consul%20prata%20340%20litros.jpg'),(4,'fogao','Fogão 4 Bocas Consul Inox com Mesa de Vidro',1200.00,1129.00,'imagens/produtos/fog%C3%A3o%204%20bocas%20consul%20inox%20com%20mesa%20de%20vidro.jpg'),(5,'fogao','Fogão 4 Bocas Electrolux Bivolt',1189.00,1129.00,'imagens/produtos/Fog%C3%A3o%204%20Bocas%20Electrolux%2052lsv%20com%20Mesa%20Vidro%20Prata%20Bivolt.jpg'),(6,'microondas','Micro-ondas Consul 32 litros Inox 220v',580.00,409.00,'imagens/produtos/microondas%20consul%2032%20litros%20inox%20220v.jpg'),(7,'microondas','Micro-ondas Panasonic 32L Inox',612.00,599.00,'imagens/produtos/Micro-ondas%20Panasonic%2032L%20Style%20ST67HSRUK%20Inox.jpg'),(8,'microondas','Micro-ondas Electrolux 31L',422.00,399.99,'imagens/produtos/Forno%20de%20Micro-ondas%20Electrolux%2031L.jpg'),(9,'lavaroupa','Lavadora de Roupas Brastemp 11kg com Turbo Performance Branca',1600.00,1214.00,'imagens/produtos/lavadora%20de%20roupas%20brastemp%2011kg%20com%20turbo%20performance%20Branca.jpg'),(10,'lavaroupa','Lavadora de Roupas Brastemp 12Kg com Turbo Performance',1599.00,1214.00,'imagens/produtos/Lavadora%20de%20Roupas%20Brastemp%20BWK12AB%2012Kg%20-%20Cesto%20Inox%2012%20Programas%20de%20Lavagem.jpg'),(11,'lavalouca','Lava Louça Electrolux Inox com 10 Serviços 06 Programas de Lavagem e Painel Blue Touch',3500.00,2999.00,'imagens/produtos/lava%20louça%20electrolux%20inox%20com%2010%20serviços%20%2006%20programas%20de%20lavagem%20e%20painel%20blue%20touch.jpg'),(12,'lavalouca','Lava-Louças Brastemp Inox com 14 Serviços, 06 Programas de Lavagem e Função Smart Sensor - BLF14AR',3600.00,3599.99,'imagens/produtos/Lava-Lou%C3%A7as%20Brastemp%20Inox%20com%2014%20Servi%C3%A7os,%2006%20Programas%20de%20Lavagem%20e%20Fun%C3%A7%C3%A3o%20Smart%20Sensor%20-%20BLF14AR.jpg');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-22 16:14:33

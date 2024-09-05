CREATE DATABASE  IF NOT EXISTS `trento` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trento`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trento
-- ------------------------------------------------------
-- Server version	8.0.39

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
  `chocolate` varchar(100) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `estoque` varchar(10000) NOT NULL,
  `peso_g_un` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES ('Trento Bits',1,'10000',20.50),('Trento Allegro',2,'11000',21.50),('Trento',3,'12000',22.50),('Trento Speciale',4,'13000',23.50),('Trento Massimo',5,'14000',24.50),('Trento Mini',6,'15000',25.50),('Trento Morango',7,'16000',26.50),('Trento Maracujá',8,'17000',27.50),('Trento Limão',9,'18000',28.50),('Trento Dark',10,'19000',29.50);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_compra`
--

DROP TABLE IF EXISTS `registro_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_compra` (
  `usuario` varchar(100) NOT NULL,
  `chocolate` varchar(100) NOT NULL,
  `total_compra` decimal(10,2) DEFAULT NULL,
  `id_produto` varchar(100) NOT NULL,
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `endereco_entrega` varchar(255) DEFAULT NULL,
  `telefone_cliente` varchar(20) DEFAULT NULL,
  `email_cliente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_compra`
--

LOCK TABLES `registro_compra` WRITE;
/*!40000 ALTER TABLE `registro_compra` DISABLE KEYS */;
INSERT INTO `registro_compra` VALUES ('Ana Souza','Trento',25.50,'P001',1,'Rua das Flores, 123','11987654321','ana.souza@example.com'),('Carlos Oliveira','Laka',30.75,'P002',2,'Avenida Brasil, 456','21912345678','carlos.oliveira@example.com'),('Maria Santos','Kit Kat',15.20,'P003',3,'Praça da Sé, 789','31976543210','maria.santos@example.com'),('Pedro Lima','Sonho de Valsa',22.40,'P004',4,'Rua dos Jacarandás, 321','41987654321','pedro.lima@example.com'),('Fernanda Costa','Bis',18.60,'P005',5,'Avenida Paulista, 654','51912345678','fernanda.costa@example.com'),('Lucas Pereira','Ferrero Rocher',45.00,'P006',6,'Rua das Palmeiras, 987','61987654321','lucas.pereira@example.com'),('Juliana Rocha','Ritter Sport',28.30,'P007',7,'Rua do Sol, 123','71912345678','juliana.rocha@example.com'),('Roberto Almeida','Tablete de Chocolate ao Leite',35.90,'P008',8,'Rua da Consolação, 456','81987654321','roberto.almeida@example.com'),('Cláudia Martins','Chocolate Branco',12.50,'P009',9,'Avenida São João, 789','91912345678','claudia.martins@example.com'),('Marcos Silva','Cocoa Mix',27.75,'P010',10,'Rua do Mercado, 101','02987654321','marcos.silva@example.com');
/*!40000 ALTER TABLE `registro_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nome` varchar(100) NOT NULL,
  `nome_social` varchar(100) DEFAULT NULL,
  `sexo` enum('M','F','O') NOT NULL,
  `cpf` char(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` char(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `email_pessoal` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Maria Oliveira','Maria','F','11223344556','1990-03-22','21912345678','Rua das Flores, 45','maria.oliveira@example.com','senha456'),('Jaqueline Jacinto','Jaqueline','F','12345678990','1932-12-23','31976564352','Rua Jacinto Negão nº22','jaquelineJacinto123@gmail.com','123'),('Pedro Santos','Pedro','M','22334455667','1982-10-30','31912345678','Praça da Sé, 200','pedro.santos@example.com','senha789'),('Ana Pereira','Ana','F','33445566778','1978-05-12','41976543210','Rua das Palmeiras, 75','ana.pereira@example.com','senha101'),('Lucas Lima','Lucas','M','44556677889','1995-08-09','51987654321','Avenida Brasil, 300','lucas.lima@example.com','senha202'),('Fernanda Costa','Fernanda','F','55667788990','1988-12-25','61912345678','Rua das Acácias, 90','fernanda.costa@example.com','senha303'),('Marcos Almeida','Marcos','M','66778899001','1992-06-18','71987654321','Avenida São João, 500','marcos.almeida@example.com','senha404'),('Juliana Rocha','Juliana','F','77889900112','1984-11-02','81912345678','Rua do Mercado, 10','juliana.rocha@example.com','senha505'),('Roberto Martins','Roberto','M','88990011223','1991-04-17','91987654321','Praça dos Três Poderes, 600','roberto.martins@example.com','senha606'),('Cláudia Fernandes','Cláudia','F','99001122334','1987-09-06','02987654321','Rua do Sol, 80','claudia.fernandes@example.com','senha707');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-05 20:09:15

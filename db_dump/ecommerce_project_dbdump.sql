-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce_project
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Temporary view structure for view `Clientes_Com_Cashback_Maior_Que_50`
--

DROP TABLE IF EXISTS `Clientes_Com_Cashback_Maior_Que_50`;
/*!50001 DROP VIEW IF EXISTS `Clientes_Com_Cashback_Maior_Que_50`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Clientes_Com_Cashback_Maior_Que_50` AS SELECT 
 1 AS `id_cliente_especial`,
 1 AS `nome_cliente_especial`,
 1 AS `sexo_cliente_especial`,
 1 AS `idade_cliente_especial`,
 1 AS `cashback_cliente_especial`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Funcionarios_Por_Cargo`
--

DROP TABLE IF EXISTS `Funcionarios_Por_Cargo`;
/*!50001 DROP VIEW IF EXISTS `Funcionarios_Por_Cargo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Funcionarios_Por_Cargo` AS SELECT 
 1 AS `cargo_funcionario`,
 1 AS `quantidade_funcionarios`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Media_Salario_Por_Cargo`
--

DROP TABLE IF EXISTS `Media_Salario_Por_Cargo`;
/*!50001 DROP VIEW IF EXISTS `Media_Salario_Por_Cargo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Media_Salario_Por_Cargo` AS SELECT 
 1 AS `cargo_funcionario`,
 1 AS `media_salario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Produtos_Quase_Acabando`
--

DROP TABLE IF EXISTS `Produtos_Quase_Acabando`;
/*!50001 DROP VIEW IF EXISTS `Produtos_Quase_Acabando`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Produtos_Quase_Acabando` AS SELECT 
 1 AS `id_produto`,
 1 AS `nome_produto`,
 1 AS `quantidade_produto`,
 1 AS `descricao_produto`,
 1 AS `valor_produto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(50) NOT NULL,
  `sexo_cliente` char(1) NOT NULL,
  `idade_cliente` tinyint NOT NULL,
  `data_nasc_cliente` date NOT NULL,
  PRIMARY KEY (`id_cliente`),
  CONSTRAINT `cliente_chk_1` CHECK (((`sexo_cliente` = _utf8mb4'm') or (`sexo_cliente` = _utf8mb4'f') or (`sexo_cliente` = _utf8mb4'o')))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana Almeida','f',28,'1995-04-15'),(2,'Bruno Barros','m',35,'1988-05-22'),(3,'Carlos Cardoso','m',42,'1981-03-12'),(4,'Daniela Duarte','f',25,'1998-07-18'),(5,'Eduardo Esteves','m',30,'1993-09-25'),(6,'Fernanda Ferreira','f',37,'1986-11-30'),(7,'Gabriel Gomes','m',33,'1990-01-10'),(8,'Helena Henrique','f',29,'1994-06-05'),(9,'Igor Iglesias','m',31,'1992-08-20'),(10,'Juliana Jardim','f',27,'1996-02-17'),(11,'Carlos Barros','m',23,'2001-04-22'),(12,'Igor Cardoso','f',42,'1982-03-14'),(13,'Carlos Iglesias','m',64,'1960-02-09'),(14,'Carlos Gomes','f',30,'1994-02-08'),(15,'Bruno Gomes','m',71,'1952-08-10'),(16,'Gabriel Ferreira','m',38,'1985-11-05'),(17,'Juliana Jardim','f',24,'2000-05-03'),(18,'Fernanda Esteves','f',49,'1974-09-09'),(19,'Igor Henrique','m',52,'1971-07-26'),(20,'Helena Gomes','f',19,'2004-08-07'),(21,'Carlos Jardim','m',33,'1990-06-28'),(22,'Helena Almeida','f',35,'1989-02-16'),(23,'Bruno Henrique','m',22,'2002-02-20'),(24,'Igor Almeida','m',39,'1985-03-16'),(25,'Helena Esteves','f',42,'1981-10-11'),(26,'Eduardo Almeida','m',45,'1978-03-30'),(27,'Gabriel Duarte','m',34,'1989-11-18'),(28,'Ana Ferreira','f',41,'1982-06-23'),(29,'Bruno Henrique','m',31,'1993-07-15'),(30,'Carlos Jardim','m',28,'1995-08-27'),(31,'Daniela Esteves','f',47,'1976-09-12'),(32,'Eduardo Ferreira','m',29,'1994-11-06'),(33,'Fernanda Duarte','f',52,'1971-04-25'),(34,'Gabriel Henrique','m',38,'1986-08-09'),(35,'Helena Cardoso','f',27,'1997-03-16'),(36,'Igor Almeida','m',43,'1981-10-05'),(37,'Juliana Cardoso','f',26,'1998-01-08'),(38,'Ana Jardim','f',24,'2000-07-02'),(39,'Bruno Esteves','m',34,'1989-04-18'),(40,'Carlos Duarte','m',48,'1975-12-21'),(41,'Daniela Ferreira','f',25,'1999-05-13'),(42,'Eduardo Gomes','m',33,'1990-09-30'),(43,'Fernanda Almeida','f',35,'1988-12-17'),(44,'Gabriel Esteves','m',30,'1993-06-27'),(45,'Helena Ferreira','f',22,'2001-03-25'),(46,'Igor Cardoso','m',31,'1992-08-19'),(47,'Juliana Henrique','f',29,'1994-01-13'),(48,'Ana Almeida','f',37,'1986-04-05'),(49,'Bruno Barros','m',43,'1981-11-26'),(50,'Carlos Cardoso','m',38,'1986-12-30'),(51,'Daniela Duarte','f',29,'1994-05-07'),(52,'Eduardo Esteves','m',29,'1994-08-13'),(53,'Fernanda Ferreira','f',31,'1993-02-21'),(54,'Gabriel Gomes','m',32,'1991-04-11'),(55,'Helena Henrique','f',27,'1997-01-09'),(56,'Igor Iglesias','m',29,'1995-11-20'),(57,'Juliana Jardim','f',28,'1996-03-14'),(58,'Carlos Barros','m',22,'2001-04-10'),(59,'Igor Cardoso','m',40,'1983-03-20'),(60,'Carlos Iglesias','m',60,'1963-02-15'),(61,'Carlos Gomes','m',29,'1994-02-10'),(62,'Bruno Gomes','m',70,'1954-08-15'),(63,'Gabriel Ferreira','m',39,'1984-11-05'),(64,'Juliana Jardim','f',24,'2000-05-07'),(65,'Fernanda Esteves','f',50,'1973-09-14'),(66,'Igor Henrique','m',53,'1971-07-22'),(67,'Helena Gomes','f',20,'2004-08-12'),(68,'Carlos Jardim','m',33,'1990-06-10'),(69,'Helena Almeida','f',34,'1989-02-15'),(70,'Bruno Henrique','m',23,'2002-02-11'),(71,'Igor Almeida','m',40,'1984-03-11'),(72,'Helena Esteves','f',42,'1981-10-07'),(73,'Eduardo Almeida','m',46,'1978-03-23'),(74,'Gabriel Duarte','m',34,'1989-11-20'),(75,'Ana Ferreira','f',41,'1982-06-24'),(76,'Bruno Henrique','m',32,'1993-07-16'),(77,'Carlos Jardim','m',28,'1995-08-23'),(78,'Daniela Esteves','f',46,'1976-09-18'),(79,'Eduardo Ferreira','m',29,'1994-11-14'),(80,'Fernanda Duarte','f',52,'1971-04-23'),(81,'Gabriel Henrique','m',38,'1986-08-06'),(82,'Helena Cardoso','f',27,'1997-03-11'),(83,'Igor Almeida','m',43,'1981-10-11'),(84,'Juliana Cardoso','f',26,'1998-01-13'),(85,'Ana Jardim','f',24,'2000-07-07'),(86,'Bruno Esteves','m',34,'1989-04-10'),(87,'Carlos Duarte','m',48,'1975-12-13'),(88,'Daniela Ferreira','f',25,'1999-05-19'),(89,'Eduardo Gomes','m',33,'1990-09-13'),(90,'Fernanda Almeida','f',35,'1988-12-11'),(91,'Gabriel Esteves','m',30,'1993-06-22'),(92,'Helena Ferreira','f',22,'2001-03-19'),(93,'Igor Cardoso','m',31,'1992-08-13'),(94,'Juliana Henrique','f',29,'1994-01-14'),(95,'Ana Almeida','f',37,'1986-04-08'),(96,'Bruno Barros','m',43,'1981-11-20'),(97,'Carlos Cardoso','m',38,'1986-12-30'),(98,'Daniela Duarte','f',29,'1994-05-07'),(99,'Eduardo Esteves','m',29,'1994-08-13'),(100,'Fernanda Ferreira','f',31,'1993-02-21');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_especial`
--

DROP TABLE IF EXISTS `cliente_especial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_especial` (
  `id_cliente_especial` int NOT NULL AUTO_INCREMENT,
  `nome_cliente_especial` varchar(50) NOT NULL,
  `sexo_cliente_especial` char(1) NOT NULL,
  `idade_cliente_especial` tinyint NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `cashback_cliente_especial` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_cliente_especial`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `cliente_especial_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `cliente_especial_chk_1` CHECK (((`sexo_cliente_especial` = _utf8mb4'm') or (`sexo_cliente_especial` = _utf8mb4'f') or (`sexo_cliente_especial` = _utf8mb4'o')))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_especial`
--

LOCK TABLES `cliente_especial` WRITE;
/*!40000 ALTER TABLE `cliente_especial` DISABLE KEYS */;
INSERT INTO `cliente_especial` VALUES (1,'Fernanda Esteves','f',50,65,10.20),(2,'Helena Gomes','f',49,18,102.30),(3,'Helena Henrique','f',42,19,40.00),(4,'Helena Esteves','f',42,25,35.00),(5,'Ana Almeida','f',37,1,1042.30),(6,'Fernanda Ferreira','f',37,6,90.00),(7,'Fernanda Almeida','f',35,43,13.00),(8,'Helena Almeida','f',35,22,18.00),(9,'Fernanda Duarte','f',52,33,14.00),(10,'Juliana Henrique','f',50,47,36.00),(11,'Ana Ferreira','f',41,28,89.00),(12,'Ana Almeida','f',37,48,12.00),(13,'Daniela Esteves','f',46,31,5.00),(14,'Fernanda Almeida','f',35,90,9.00),(15,'Helena Ferreira','f',45,45,11.00),(16,'Ana Almeida','f',37,95,4.00),(17,'Ana Almeida','f',37,8,2.30);
/*!40000 ALTER TABLE `cliente_especial` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cliente_especial_AFTER_UPDATE` AFTER UPDATE ON `cliente_especial` FOR EACH ROW BEGIN
IF NEW.cashback_cliente_especial - OLD.cashback_cliente_especial = 0 THEN
    DELETE FROM cliente_especial WHERE id_cliente_especial = OLD.id_cliente_especial;
    END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `clientes_especiais_cashback`
--

DROP TABLE IF EXISTS `clientes_especiais_cashback`;
/*!50001 DROP VIEW IF EXISTS `clientes_especiais_cashback`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_especiais_cashback` AS SELECT 
 1 AS `nome_cliente_especial`,
 1 AS `idade_cliente_especial`,
 1 AS `cashback_cliente_especial`,
 1 AS `nome_cliente`,
 1 AS `sexo_cliente`,
 1 AS `idade_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome_funcionario` varchar(50) NOT NULL,
  `idade_funcionario` tinyint NOT NULL,
  `sexo_funcionario` char(1) NOT NULL,
  `cargo_funcionario` varchar(15) DEFAULT NULL,
  `salario_funcionario` decimal(10,2) DEFAULT NULL,
  `data_nasc_funcionario` date NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  CONSTRAINT `funcionario_chk_1` CHECK (((`sexo_funcionario` = _utf8mb4'm') or (`sexo_funcionario` = _utf8mb4'f') or (`sexo_funcionario` = _utf8mb4'o'))),
  CONSTRAINT `funcionario_chk_2` CHECK (((`cargo_funcionario` = _utf8mb4'gerente') or (`cargo_funcionario` = _utf8mb4'vendedor') or (`cargo_funcionario` = _utf8mb4'CEO')))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Carolina Lacerda',22,'f','vendedor',3840.60,'2001-07-21'),(2,'Lucas Álvares',18,'m','vendedor',2760.96,'2006-08-02'),(3,'Adriana Mattos',35,'f','gerente',5830.83,'1989-03-26'),(4,'Matheus Jorge',22,'m','vendedor',3780.60,'2001-09-02'),(5,'Jaqueline Borba',32,'f','CEO',104989.40,'1992-02-15');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(25) NOT NULL,
  `quantidade_produto` int DEFAULT NULL,
  `descricao_produto` varchar(100) DEFAULT NULL,
  `valor_produto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Laptop',35,'Alta performance',520.75),(2,'Monitor',43,'Alta resolução',980.40),(3,'Teclado',24,'Design ergonômico',75.20),(4,'Mouse',51,'Compacto e leve',45.10),(5,'Headset',15,'Alta performance',120.99),(6,'Impressora',18,'Multifuncional',220.30),(7,'Scanner',12,'Alta resolução',185.40),(8,'Webcam',33,'Alta definição',65.90),(9,'Microfone',27,'Alta sensibilidade',50.75),(10,'Notebook',40,'Portátil e eficiente',899.99),(11,'Tablet',21,'Tela sensível ao toque',350.00),(12,'Placa de Vídeo',30,'Alto desempenho',250.49),(13,'Processador',20,'Rápido e eficiente',300.00),(14,'Memória RAM',41,'Grande capacidade',100.25),(15,'Fonte de Alimentação',37,'Alta eficiência',75.99),(16,'Gabinete',50,'Espaçoso e durável',55.75),(17,'HD Externo',28,'Grande capacidade',80.45),(18,'SSD',32,'Alta velocidade',150.99),(19,'Placa-Mãe',25,'Compatível e eficiente',220.50),(20,'Cooler',60,'Silencioso e eficiente',35.75);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `data_venda` date NOT NULL,
  `id_vendedor` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_produto` int NOT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `funcionario` (`id_funcionario`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `venda_ibfk_3` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2024-06-12',1,2,3),(2,'2024-06-12',2,5,14),(3,'2024-06-12',1,5,14),(4,'2024-06-12',2,6,14),(5,'2024-06-12',2,6,14),(6,'2024-06-12',2,10,11),(7,'2024-06-12',1,3,4),(8,'2024-06-12',1,3,4),(9,'2024-06-12',1,3,4),(10,'2024-06-12',1,3,4),(11,'2024-06-12',1,3,4),(12,'2024-06-12',1,3,4),(13,'2024-06-12',1,3,4),(14,'2024-06-12',1,3,4),(15,'2024-06-12',1,3,4);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vendas_por_cliente`
--

DROP TABLE IF EXISTS `vendas_por_cliente`;
/*!50001 DROP VIEW IF EXISTS `vendas_por_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vendas_por_cliente` AS SELECT 
 1 AS `nome_cliente`,
 1 AS `total_vendas`,
 1 AS `valor_total_vendas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'ecommerce_project'
--

--
-- Dumping routines for database 'ecommerce_project'
--
/*!50003 DROP PROCEDURE IF EXISTS `EstatisticasVendas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EstatisticasVendas`()
BEGIN
    DECLARE ProdutoMaisVendido INT;
    DECLARE ProdutoMenosVendido INT;

    -- Produto mais vendido
    SELECT id_produto, SUM(Quantidade) AS TotalVendido
    INTO ProdutoMaisVendido
    FROM Venda
    GROUP BY id_produto
    ORDER BY TotalVendido DESC
    LIMIT 1;

    -- Produto menos vendido
    SELECT id_produto, SUM(Quantidade) AS TotalVendido
    INTO ProdutoMenosVendido
    FROM Venda
    GROUP BY id_produto
    ORDER BY TotalVendido ASC
    LIMIT 1;

    -- Produto mais vendido
    SELECT p.nome_produto, SUM(v.Quantidade) AS TotalVendido, f.nome_funcionario AS Vendedor
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    JOIN Funcionario f ON v.id_vendedor = f.id_funcionario
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY p.nome_produto, f.nome_funcionario;

    -- Produto menos vendido
    SELECT p.nome_produto, SUM(v.Quantidade) AS TotalVendido, f.nome_funcionario AS Vendedor
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    JOIN Funcionario f ON v.id_vendedor = f.id_funcionario
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY p.nome_produto, f.nome_funcionario;

    -- Valor ganho com o produto mais vendido
    SELECT p.nome_produto, SUM(v.ValorTotal) AS ValorGanho
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY p.nome_produto;

    -- Valor ganho com o produto menos vendido
    SELECT p.nome_produto, SUM(v.ValorTotal) AS ValorGanho
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY p.nome_produto;

    -- Mês de maior venda do produto mais vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido DESC
    LIMIT 1;

    -- Mês de menor venda do produto mais vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido ASC
    LIMIT 1;

    -- Mês de maior venda do produto menos vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido DESC
    LIMIT 1;

    -- Mês de menor venda do produto menos vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido ASC
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `less_sold_product_amount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `less_sold_product_amount`()
BEGIN
DECLARE id_produto_menos_vendido INT;
DECLARE nome_produto_menos_vendido VARCHAR(30);
DECLARE valor_total_produto_menos_vendido DECIMAL(10,2);

SELECT venda.id_produto INTO id_produto_menos_vendido 
FROM venda 
GROUP BY venda.id_produto 
ORDER BY COUNT(venda.id_produto) 
LIMIT 1;

SELECT SUM(produto.valor_produto) into valor_total_produto_menos_vendido FROM produto 
join venda on venda.id_produto = produto.id_produto
WHERE venda.id_produto = id_produto_menos_vendido;

SELECT produto.nome_produto INTO nome_produto_menos_vendido FROM produto
WHERE produto.id_produto= id_produto_menos_vendido; 

SELECT id_produto_menos_vendido as "ID " , nome_produto_menos_vendido as "NOME" ,  valor_total_produto_menos_vendido AS "VALOR";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `month_max_sales_less_sold_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `month_max_sales_less_sold_product`()
BEGIN

DECLARE id_produto_menos_vendido INT;
DECLARE quantidade_produto_menos_vendido INT;
DECLARE mes_maior_venda int;
DECLARE nome_produto_menos_vendido VARCHAR(30);

SELECT venda.id_produto INTO id_produto_menos_vendido 
FROM venda 
GROUP BY venda.id_produto 
ORDER BY COUNT(venda.id_produto) 
LIMIT 1;

SELECT month(venda.data_venda) into mes_maior_venda FROM venda
WHERE venda.id_produto = id_produto_menos_vendido
GROUP BY MONTH(venda.data_venda)
ORDER BY COUNT(*) DESC 
LIMIT 1;

SELECT produto.nome_produto into nome_produto_menos_vendido FROM produto
WHERE produto.id_produto = id_produto_menos_vendido;

SELECT COUNT(id_produto) into quantidade_produto_menos_vendido FROM venda
WHERE venda.id_produto = id_produto_menos_vendido
AND month(venda.data_venda) = mes_maior_venda;

SELECT id_produto_menos_vendido, quantidade_produto_menos_vendido, mes_maior_venda, nome_produto_menos_vendido;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `month_min_sales_less_sold_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `month_min_sales_less_sold_product`()
BEGIN
DECLARE id_produto_menos_vendido INT;
DECLARE quantidade_produto_menos_vendido INT;
DECLARE mes_menor_venda int;
DECLARE nome_produto_menos_vendido VARCHAR(30);

SELECT venda.id_produto INTO id_produto_menos_vendido 
FROM venda 
GROUP BY venda.id_produto 
ORDER BY COUNT(venda.id_produto) 
LIMIT 1;

SELECT month(venda.data_venda) into mes_menor_venda FROM venda
WHERE venda.id_produto = id_produto_menos_vendido
GROUP BY MONTH(venda.data_venda)
ORDER BY COUNT(*) ASC
LIMIT 1;

SELECT produto.nome_produto into nome_produto_menos_vendido FROM produto
WHERE produto.id_produto = id_produto_menos_vendido;

SELECT COUNT(id_produto) into quantidade_produto_menos_vendido FROM venda
WHERE venda.id_produto = id_produto_menos_vendido
AND month(venda.data_venda) = mes_menor_venda;

SELECT id_produto_menos_vendido, quantidade_produto_menos_vendido, mes_menor_venda, nome_produto_menos_vendido;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `produto_mais_vendido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `produto_mais_vendido`()
BEGIN
    DECLARE ProdutoMaisVendido INT;

    -- Determinar o produto mais vendido
    SELECT v.id_produto
    INTO ProdutoMaisVendido
    FROM venda v
    GROUP BY v.id_produto
    ORDER BY SUM(v.quantidade_produto) DESC
    LIMIT 1;

    -- Calcular o valor ganho com o produto mais vendido e mostrar o nome do vendedor
    SELECT 
        p.nome_produto, 
        SUM(v.quantidadeproduto) AS TotalVendido, 
        f.nome_funcionario AS Vendedor,
        SUM(p.valor_produto * v.quantidade_produto) AS ValorGanho
    FROM 
        venda v
    JOIN 
        produto p ON v.id_produto = p.id_produto
    JOIN 
        funcionario f ON v.id_vendedor = f.id_funcionario
    WHERE 
        v.id_produto = ProdutoMaisVendido
    GROUP BY 
        p.nome_produto, f.nome_funcionario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reajuste_salarial` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reajuste_salarial`(porcentagem DECIMAL(5,2), categoria VARCHAR(20))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE id INT;
    DECLARE c_funcionario CURSOR FOR SELECT id_funcionario FROM funcionario WHERE cargo_funcionario = categoria;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN c_funcionario;
    
    ciclo_funcionario: LOOP
        FETCH c_funcionario INTO id;
        
        IF done THEN
            LEAVE ciclo_funcionario;
        END IF;
        
        UPDATE funcionario 
        SET salario_funcionario = salario_funcionario + (salario_funcionario * porcentagem / 100) 
        WHERE id_funcionario = id;
    END LOOP;
    
    CLOSE c_funcionario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Realizar_Venda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Realizar_Venda`(
    IN p_id_vendedor INT,
    IN p_id_cliente INT,
    IN p_id_produto INT
)
BEGIN
    DECLARE v_id_venda INT;
    
    -- Decrementar a quantidade do produto em 1
    UPDATE produto
    SET quantidade_produto = quantidade_produto - 1
    WHERE id_produto = p_id_produto;

    -- Inserir os detalhes da venda na tabela de vendas
    INSERT INTO venda (data_venda, id_vendedor, id_cliente, id_produto)
    VALUES (NOW(), p_id_vendedor, p_id_cliente, p_id_produto);

    -- Obter o ID da venda inserida
    SET v_id_venda = LAST_INSERT_ID();

    -- Retornar o ID da venda
    SELECT v_id_venda AS id_venda;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SorteioCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SorteioCliente`()
BEGIN
    DECLARE id_do_cliente INT;
    DECLARE Voucher DECIMAL(10,2);
    DECLARE cliente_especial_count INT;
    DECLARE cliente_nome VARCHAR(100); -- Variável para armazenar o nome do cliente
    
    -- Seleciona aleatoriamente um id de cliente
    SET id_do_cliente = (SELECT id_cliente FROM cliente ORDER BY RAND() LIMIT 1);
    
    -- Verifica se o cliente selecionado é um cliente especial
    SET cliente_especial_count = (SELECT COUNT(*) FROM cliente_especial WHERE id_cliente = id_do_cliente);
    
    IF cliente_especial_count > 0 THEN
        -- Cliente especial
        SET Voucher = 200.00;
        SELECT nome_cliente_especial INTO cliente_nome FROM cliente_especial WHERE id_cliente = id_do_cliente;
    ELSE
        -- Cliente normal
        SET Voucher = 100.00;
        SELECT nome_cliente INTO cliente_nome FROM cliente WHERE id_cliente = id_do_cliente;
    END IF;
    
    -- Retorna o nome do cliente sorteado e o valor do voucher
    SELECT cliente_nome AS NomeCliente, Voucher AS ValorVoucher;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `valor_ganho_produto_menos_vendido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `valor_ganho_produto_menos_vendido`()
BEGIN
    DECLARE ProdutoMenosVendido INT;

    -- Determinar o produto menos vendido
    SELECT v.id_produto
    INTO ProdutoMenosVendido
    FROM venda v
    GROUP BY v.id_produto
    ORDER BY COUNT(v.id_produto) ASC
    LIMIT 1;

    -- Calcular o valor ganho com o produto menos vendido
    SELECT p.nome_produto, SUM(p.valor_produto) AS ValorGanho
    FROM venda v
    JOIN produto p ON v.id_produto = p.id_produto
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY p.nome_produto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `Clientes_Com_Cashback_Maior_Que_50`
--

/*!50001 DROP VIEW IF EXISTS `Clientes_Com_Cashback_Maior_Que_50`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Clientes_Com_Cashback_Maior_Que_50` AS select `ce`.`id_cliente_especial` AS `id_cliente_especial`,`ce`.`nome_cliente_especial` AS `nome_cliente_especial`,`ce`.`sexo_cliente_especial` AS `sexo_cliente_especial`,`ce`.`idade_cliente_especial` AS `idade_cliente_especial`,`ce`.`cashback_cliente_especial` AS `cashback_cliente_especial` from `cliente_especial` `ce` where (`ce`.`cashback_cliente_especial` > 50) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Funcionarios_Por_Cargo`
--

/*!50001 DROP VIEW IF EXISTS `Funcionarios_Por_Cargo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Funcionarios_Por_Cargo` AS select `funcionario`.`cargo_funcionario` AS `cargo_funcionario`,count(0) AS `quantidade_funcionarios` from `funcionario` group by `funcionario`.`cargo_funcionario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Media_Salario_Por_Cargo`
--

/*!50001 DROP VIEW IF EXISTS `Media_Salario_Por_Cargo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Media_Salario_Por_Cargo` AS select `funcionario`.`cargo_funcionario` AS `cargo_funcionario`,avg(`funcionario`.`salario_funcionario`) AS `media_salario` from `funcionario` group by `funcionario`.`cargo_funcionario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Produtos_Quase_Acabando`
--

/*!50001 DROP VIEW IF EXISTS `Produtos_Quase_Acabando`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Produtos_Quase_Acabando` AS select `produto`.`id_produto` AS `id_produto`,`produto`.`nome_produto` AS `nome_produto`,`produto`.`quantidade_produto` AS `quantidade_produto`,`produto`.`descricao_produto` AS `descricao_produto`,`produto`.`valor_produto` AS `valor_produto` from `produto` where (`produto`.`quantidade_produto` <= 20) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_especiais_cashback`
--

/*!50001 DROP VIEW IF EXISTS `clientes_especiais_cashback`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_especiais_cashback` AS select `ce`.`nome_cliente_especial` AS `nome_cliente_especial`,`ce`.`idade_cliente_especial` AS `idade_cliente_especial`,`ce`.`cashback_cliente_especial` AS `cashback_cliente_especial`,`c`.`nome_cliente` AS `nome_cliente`,`c`.`sexo_cliente` AS `sexo_cliente`,`c`.`idade_cliente` AS `idade_cliente` from (`cliente_especial` `ce` join `cliente` `c` on((`ce`.`id_cliente` = `c`.`id_cliente`))) group by `ce`.`nome_cliente_especial`,`ce`.`idade_cliente_especial`,`ce`.`cashback_cliente_especial`,`c`.`nome_cliente`,`c`.`sexo_cliente`,`c`.`idade_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vendas_por_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vendas_por_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vendas_por_cliente` AS select `c`.`nome_cliente` AS `nome_cliente`,count(`v`.`id_venda`) AS `total_vendas`,sum(`p`.`valor_produto`) AS `valor_total_vendas` from ((`venda` `v` join `cliente` `c` on((`v`.`id_cliente` = `c`.`id_cliente`))) join `produto` `p` on((`v`.`id_produto` = `p`.`id_produto`))) group by `c`.`nome_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 21:46:35

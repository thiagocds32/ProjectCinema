-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `codice` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fila`
--

DROP TABLE IF EXISTS `fila`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fila` (
  `id_fila` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(255) NOT NULL,
  PRIMARY KEY (`id_fila`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fila`
--

LOCK TABLES `fila` WRITE;
/*!40000 ALTER TABLE `fila` DISABLE KEYS */;
INSERT INTO `fila` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E'),(6,'F'),(7,'G'),(8,'H'),(9,'I'),(10,'J');
/*!40000 ALTER TABLE `fila` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(255) NOT NULL,
  `descrizione` text NOT NULL,
  `regista` varchar(255) NOT NULL,
  `genere` varchar(255) NOT NULL,
  `anno` int(11) NOT NULL,
  `durata` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Ciao iuly','tvb','tito','addio',2390,235),(2,'Film1','film1','ciao','ciao',123,200),(3,'Film2','film2','ciao','ciao',12344,233),(5,'Film3','film3','ciao','ciao',123,11),(6,'edf','fdff','ffff','ciao',344,22),(7,'bravoiuliiiiiii','ciao','tito','addio',1344,12);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordini`
--

DROP TABLE IF EXISTS `ordini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_poltrona` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_poltrona` (`id_poltrona`),
  CONSTRAINT `id_poltrona` FOREIGN KEY (`id_poltrona`) REFERENCES `poltrone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordini`
--

LOCK TABLES `ordini` WRITE;
/*!40000 ALTER TABLE `ordini` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poltrone`
--

DROP TABLE IF EXISTS `poltrone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poltrone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_fila` int(11) NOT NULL,
  `id_posto` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fila` (`id_fila`),
  KEY `posto` (`id_posto`),
  CONSTRAINT `fila` FOREIGN KEY (`id_fila`) REFERENCES `fila` (`id_fila`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posto` FOREIGN KEY (`id_posto`) REFERENCES `posto` (`id_posto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poltrone`
--

LOCK TABLES `poltrone` WRITE;
/*!40000 ALTER TABLE `poltrone` DISABLE KEYS */;
/*!40000 ALTER TABLE `poltrone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posto`
--

DROP TABLE IF EXISTS `posto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posto` (
  `id_posto` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` int(11) NOT NULL,
  PRIMARY KEY (`id_posto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posto`
--

LOCK TABLES `posto` WRITE;
/*!40000 ALTER TABLE `posto` DISABLE KEYS */;
INSERT INTO `posto` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `posto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenotazioni`
--

DROP TABLE IF EXISTS `prenotazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prenotazioni` (
  `id_prenotazione` int(11) NOT NULL AUTO_INCREMENT,
  `id_spettacolo` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_ordine` int(11) NOT NULL,
  PRIMARY KEY (`id_prenotazione`),
  KEY `id_utente` (`id_utente`),
  KEY `id_spettacolo` (`id_spettacolo`),
  KEY `id_ordine` (`id_ordine`),
  CONSTRAINT `id_ordine` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_spettacolo` FOREIGN KEY (`id_spettacolo`) REFERENCES `spettacoli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_utente` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazioni`
--

LOCK TABLES `prenotazioni` WRITE;
/*!40000 ALTER TABLE `prenotazioni` DISABLE KEYS */;
/*!40000 ALTER TABLE `prenotazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,'Sala1'),(2,'Sala2'),(3,'sala3'),(4,'sala4\r\n');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spettacoli`
--

DROP TABLE IF EXISTS `spettacoli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spettacoli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sala` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `data` date NOT NULL,
  `ora_inizio` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_film` (`id_film`),
  KEY `id_sala` (`id_sala`),
  CONSTRAINT `film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sala` FOREIGN KEY (`id_sala`) REFERENCES `sale` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spettacoli`
--

LOCK TABLES `spettacoli` WRITE;
/*!40000 ALTER TABLE `spettacoli` DISABLE KEYS */;
INSERT INTO `spettacoli` VALUES (2,1,1,'2022-04-27','18:56:00');
/*!40000 ALTER TABLE `spettacoli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utenti`
--

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `data_nascita` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utenti`
--

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` VALUES (1,'ijca','adawdawda','iulian madalin','jicmon','iulian.jic@gmail.com','2022-04-27'),(2,'carla25','ciaociao','Carla','Mazzeo','carla.mazzeo@live.it','2022-05-19');
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 10:25:36

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
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E'),(6,'F'),(7,'G'),(8,'H'),(9,'I'),(10,'J');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Sonic 2 - Il Film','Dopo essersi stabilito a Green Hills, Sonic (voce di Ben Schwartz) è pronto per una maggiore libertà e Tom (James Marsden) e Maddie (Tika Sumpter) accettano di lasciarlo a casa mentre vanno in vacanza. Ma non appena se ne sono andati il dottor Robotnik (Jim Carrey) torna, questa volta con un nuovo partner, Knuckles (voce di Idris Elba), alla ricerca di uno smeraldo che abbia il potere di costruire e distruggere civiltà. Sonic fa squadra con il suo compagno, Tails (voce di Colleen O’Shaughnessey), e insieme intraprendono un viaggio per trovare lo smeraldo prima che cada nelle mani sbagliate.','Jeff Fowler','Animazione, Azione, Avventura',2022,132),(2,'ANIMALI FANTASTICI – I SEGRETI DI SILENTE','Il professor Albus Silente (Jude Law) sa che il potente mago oscuro Gellert Grindelwald (Mads Mikkelsen) è intenzionato a prendere il controllo del mondo magico. Non essendo in grado di fermarlo da solo, Silente affida al magizoologo Newt Scamander (Eddie Redmayne) il compito di guidare un’intrepida squadra di maghi, streghe e un coraggioso Babbano pasticcere in una pericolosa missione, dove incontrano vecchie e nuove creature e si scontrano con la crescente legione di seguaci di Grindelwald. Con una posta in gioco così alta, quanto a lungo Silente potrà restare in disparte?','David Yates','Fantasy, Avventura',2022,142);
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
  CONSTRAINT `id_poltrona` FOREIGN KEY (`id_poltrona`) REFERENCES `poltrone` (`id_poltrona`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `id_poltrona` int(11) NOT NULL AUTO_INCREMENT,
  `id_fila` int(11) NOT NULL,
  `id_posto` int(11) NOT NULL,
  `occupato` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_poltrona`),
  KEY `fila` (`id_fila`),
  KEY `posto` (`id_posto`),
  CONSTRAINT `fila` FOREIGN KEY (`id_fila`) REFERENCES `file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posto` FOREIGN KEY (`id_posto`) REFERENCES `posti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poltrone`
--

LOCK TABLES `poltrone` WRITE;
/*!40000 ALTER TABLE `poltrone` DISABLE KEYS */;
INSERT INTO `poltrone` VALUES (1,1,1,0),(2,1,2,0),(3,1,3,0),(4,1,4,0),(5,1,5,0),(6,1,6,0),(7,1,7,0),(8,1,8,0),(9,1,9,0),(10,1,10,0),(11,1,11,0),(12,1,12,0),(13,1,13,0),(14,1,14,0),(15,1,15,0),(16,2,1,0),(17,2,2,0),(18,2,3,0),(19,2,4,0),(20,2,5,0),(21,2,6,0),(22,2,7,0),(23,2,8,0),(24,2,9,0),(25,2,10,0),(26,2,11,0),(27,2,12,0),(28,2,13,0),(29,2,14,0),(30,2,15,0),(31,3,1,0),(32,3,2,0),(33,3,3,0),(34,3,4,0),(35,3,5,0),(36,3,6,0),(37,3,7,0),(38,3,8,0),(39,3,9,0),(40,3,10,0),(41,3,11,0),(42,3,12,0),(43,3,13,0),(44,3,14,0),(45,3,15,0),(46,4,1,0),(47,4,2,0),(48,4,3,0),(49,4,4,0),(50,4,5,0),(51,4,6,0),(52,4,7,0),(53,4,8,0),(54,4,9,0),(55,4,10,0),(56,4,11,0),(57,4,12,0),(58,4,13,0),(59,4,14,0),(60,4,15,0),(61,5,1,0),(62,5,2,0),(63,5,3,0),(64,5,4,0),(65,5,5,0),(66,5,6,0),(67,5,7,0),(68,5,8,0),(69,5,9,0),(70,5,10,0),(71,5,11,0),(72,5,12,0),(73,5,13,0),(74,5,14,0),(75,5,15,0),(76,6,1,0),(77,6,2,0),(78,6,3,0),(79,6,4,0),(80,6,5,0),(81,6,6,0),(82,6,7,0),(83,6,8,0),(84,6,9,0),(85,6,10,0),(86,6,11,0),(87,6,12,0),(88,6,13,0),(89,6,14,0),(90,6,15,0),(91,7,1,0),(92,7,2,0),(93,7,3,0),(94,7,4,0),(95,7,5,0),(96,7,6,0),(97,7,7,0),(98,7,8,0),(99,7,9,0),(100,7,10,0),(101,7,11,0),(102,7,12,0),(103,7,13,0),(104,7,14,0),(105,7,15,0),(106,8,1,0),(107,8,2,0),(108,8,3,0),(109,8,4,0),(110,8,5,0),(111,8,6,0),(112,8,7,0),(113,8,8,0),(114,8,9,0),(115,8,10,0),(116,8,11,0),(117,8,12,0),(118,8,13,0),(119,8,14,0),(120,8,15,0),(121,9,1,0),(122,9,2,0),(123,9,3,0),(124,9,4,0),(125,9,5,0),(126,9,6,0),(127,9,7,0),(128,9,8,0),(129,9,9,0),(130,9,10,0),(131,9,11,0),(132,9,12,0),(133,9,13,0),(134,9,14,0),(135,9,15,0),(136,10,1,0),(137,10,2,0),(138,10,3,0),(139,10,4,0),(140,10,5,0),(141,10,6,0),(142,10,7,0),(143,10,8,0),(144,10,9,0),(145,10,10,0),(146,10,11,0),(147,10,12,0),(148,10,13,0),(149,10,14,0),(150,10,15,0);
/*!40000 ALTER TABLE `poltrone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posti`
--

DROP TABLE IF EXISTS `posti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posti`
--

LOCK TABLES `posti` WRITE;
/*!40000 ALTER TABLE `posti` DISABLE KEYS */;
INSERT INTO `posti` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `posti` ENABLE KEYS */;
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
  `id_poltrona` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,'Sala1',0),(2,'Sala2',0),(3,'sala3',0),(4,'sala4\r\n',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spettacoli`
--

LOCK TABLES `spettacoli` WRITE;
/*!40000 ALTER TABLE `spettacoli` DISABLE KEYS */;
INSERT INTO `spettacoli` VALUES (1,1,1,'2022-06-01','22:00:00'),(2,2,2,'2022-06-02','21:30:00'),(3,3,1,'2022-06-04','14:00:00'),(4,4,2,'2022-06-02','14:00:00');
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

-- Dump completed on 2022-05-24 21:58:44

-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trainerbox
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `trainerbox`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `trainerbox` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trainerbox`;

--
-- Table structure for table `trainerpokemons`
--

DROP TABLE IF EXISTS `trainerpokemons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainerpokemons` (
  `userID` varchar(128) NOT NULL DEFAULT '',
  `pokeID` varchar(128) NOT NULL DEFAULT '',
  `primaryPokemon` varchar(10) NOT NULL DEFAULT 'FALSE',
  PRIMARY KEY (`userID`,`pokeID`),
  KEY `trainerPokemons_fk` (`userID`),
  CONSTRAINT `trainerPokemons_fk` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainerpokemons`
--

LOCK TABLES `trainerpokemons` WRITE;
/*!40000 ALTER TABLE `trainerpokemons` DISABLE KEYS */;
INSERT INTO `trainerpokemons` VALUES ('hongrenDABOSS','P030','TRUE'),('hongrenDABOSS','P145','FALSE'),('hongrenDABOSS','P167','FALSE'),('hongrenDABOSS','P176','FALSE'),('hongrenDABOSS','P190','FALSE'),('joleneTOE','P006','FALSE'),('joleneTOE','P045','FALSE'),('joleneTOE','P200','TRUE'),('jumpyjeryl','P003','TRUE'),('mannyMan','P020','TRUE'),('mannyMan','P056','FALSE'),('NiGeLsOcOoL','P191','TRUE'),('professorVenkoak','P001','TRUE'),('zul.the.sharkie','P009','TRUE'),('zul.the.sharkie','P123','FALSE');
/*!40000 ALTER TABLE `trainerpokemons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `level` int(3) NOT NULL DEFAULT '0',
  `experience` int(11) NOT NULL,
  `twitter` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('hongrenDABOSS','Hong Ren','hongren.toh.2015@sis.smu.edu.sg','qwerty345',40,10,'NULL'),('joleneTOE','Jolene','jolene.teo.2015@sis.smu.edu.sg','qwerty234',35,203,'NULL'),('jumpyjeryl','Jeryl','jeryl.soh.2015@sis.smu.edu.sg','qwerty567',28,456,'NULL'),('mannyMan','Manny','manfred.loh.2015@sis.smu.edu.sg','qwerty678',39,104,'NULL'),('NiGeLsOcOoL','Nigel','nigel.goh.2015@sis.smu.edu.sg','qwerty456',22,400,'NULL'),('professorVenkoak','Venkoak','prof@sis.smu.edu.sg','qwerty789',100,1894,'NULL'),('zul.the.sharkie','Zul','zulyang94@gmail.com','qwerty123',30,548,'NULL');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-18 22:24:10

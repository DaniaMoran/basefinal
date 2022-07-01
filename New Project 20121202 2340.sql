-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bd_hotel
--

CREATE DATABASE IF NOT EXISTS bd_hotel;
USE bd_hotel;

--
-- Definition of table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `ClienteId` int(10) unsigned NOT NULL auto_increment,
  `Nombres` varchar(45) NOT NULL,
  `Identificacion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  PRIMARY KEY  (`ClienteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Definition of table `detallereservacion`
--

DROP TABLE IF EXISTS `detallereservacion`;
CREATE TABLE `detallereservacion` (
  `ReservacionId` int(10) unsigned NOT NULL,
  `HabitacionId` int(10) unsigned NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detallereservacion`
--

/*!40000 ALTER TABLE `detallereservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallereservacion` ENABLE KEYS */;


--
-- Definition of table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
CREATE TABLE `habitaciones` (
  `NumHabitacion` int(10) unsigned NOT NULL auto_increment,
  `Capacidad` int(10) unsigned NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  PRIMARY KEY  (`NumHabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `habitaciones`
--

/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;


--
-- Definition of table `reservaciones`
--

DROP TABLE IF EXISTS `reservaciones`;
CREATE TABLE `reservaciones` (
  `ReservacionId` int(10) unsigned NOT NULL auto_increment,
  `ClienteId` int(10) unsigned NOT NULL,
  `Fecha_Ingreso` datetime NOT NULL,
  `Fercha_Salida` datetime NOT NULL,
  `Cant_Habitaciones` int(10) unsigned NOT NULL,
  `Cant_Personas` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ReservacionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservaciones`
--

/*!40000 ALTER TABLE `reservaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservaciones` ENABLE KEYS */;


--
-- Definition of table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Usuario` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

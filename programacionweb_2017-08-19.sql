# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 10.0.0.11 (MySQL 5.5.52-0ubuntu0.14.04.1)
# Base de datos: programacionweb
# Tiempo de Generación: 2017-08-19 14:27:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla personas
# ------------------------------------------------------------
CREATE DATABASE programacionweb;
use programacionweb;
DROP TABLE IF EXISTS `personas`;

CREATE TABLE `personas` (
  `personas_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `paterno` char(30) DEFAULT NULL,
  `materno` char(30) DEFAULT NULL,
  `nombres` char(35) DEFAULT NULL,
  `fecha_actualizacion` timestamp NULL DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`personas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;

INSERT INTO `personas` (`personas_id`, `paterno`, `materno`, `nombres`, `fecha_actualizacion`, `fecha_registro`)
VALUES
	(00000000001,'GARCIA','PEREZ','ALAN',NULL,'2017-08-19 13:21:37');

/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

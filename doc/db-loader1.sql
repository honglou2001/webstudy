/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.58 : Database - dbmcmsopen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbmcmsopen` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dbmcmsopen`;

/*Table structure for table `currence_market` */

DROP TABLE IF EXISTS `currence_market`;

CREATE TABLE `currence_market` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `fsymbol` varchar(50) DEFAULT NULL,
  `ftsid` bigint(20) DEFAULT NULL,
  `ftimestamp` bigint(20) DEFAULT NULL,
  `frank` varchar(20) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `flogo` varchar(500) DEFAULT NULL,
  `flogo_png` varchar(200) DEFAULT NULL,
  `fprice_usd` decimal(35,8) DEFAULT NULL,
  `fprice_btc` decimal(35,8) DEFAULT NULL,
  `fvolume_24_usd` decimal(35,8) DEFAULT NULL,
  `fmarket_cap_usd` decimal(35,8) DEFAULT NULL,
  `favailable_supply` decimal(35,8) DEFAULT NULL,
  `ftotal_supply` decimal(35,8) DEFAULT NULL,
  `fmax_supply` decimal(35,8) DEFAULT NULL,
  `fpercent_change_1h` decimal(35,8) DEFAULT NULL,
  `fpercent_change_24h` decimal(35,8) DEFAULT NULL,
  `fpercent_change_7d` decimal(35,8) DEFAULT NULL,
  `flast_updated` bigint(20) DEFAULT NULL,
  `faddtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ffrom` varchar(100) DEFAULT NULL,
  KEY `fid` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=944 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

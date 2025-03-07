/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - fbc
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`fbc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fbc`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `contractor` */

DROP TABLE IF EXISTS `contractor`;

CREATE TABLE `contractor` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contractor` */

insert  into `contractor`(`username`,`password`,`email`,`mobile`) values ('munna','munna','munna@gmail.com','7702177291');

/*Table structure for table `contractor_report` */

DROP TABLE IF EXISTS `contractor_report`;

CREATE TABLE `contractor_report` (
  `did` varchar(100) NOT NULL,
  `fdata` text,
  `amount` varchar(100) DEFAULT NULL,
  `bckey` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `namount` varchar(100) DEFAULT NULL,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contractor_report` */

insert  into `contractor_report`(`did`,`fdata`,`amount`,`bckey`,`username`,`namount`,`nkey`,`person`) values ('100','for developping villages','400000','ad1e2e29fe','munna','400000','ad1e2e29fe','chinna');

/*Table structure for table `engineer` */

DROP TABLE IF EXISTS `engineer`;

CREATE TABLE `engineer` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `engineer` */

insert  into `engineer`(`username`,`password`,`email`,`mobile`) values ('chinna','chinna','chinna@gmail.com','7702177291');

/*Table structure for table `engineer_data` */

DROP TABLE IF EXISTS `engineer_data`;

CREATE TABLE `engineer_data` (
  `did` varchar(100) NOT NULL,
  `fdata` text,
  `amount` varchar(100) DEFAULT NULL,
  `bckey` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `namount` varchar(100) DEFAULT NULL,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `engineer_data` */

insert  into `engineer_data`(`did`,`fdata`,`amount`,`bckey`,`username`,`namount`,`nkey`,`person`) values ('100','for developping villages','300000','6ce3189696','chinna','300000','6ce3189696','radha');

/*Table structure for table `finance` */

DROP TABLE IF EXISTS `finance`;

CREATE TABLE `finance` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `finance` */

insert  into `finance`(`username`,`password`,`email`,`mobile`) values ('chotu','chotu','myra@gmail.com','7702177291');

/*Table structure for table `finance_data` */

DROP TABLE IF EXISTS `finance_data`;

CREATE TABLE `finance_data` (
  `did` varbinary(100) NOT NULL,
  `fdata` text,
  `amount` varchar(100) DEFAULT NULL,
  `bckey` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `namount` varchar(100) DEFAULT NULL,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `finance_data` */

insert  into `finance_data`(`did`,`fdata`,`amount`,`bckey`,`username`,`namount`,`nkey`,`person`) values ('100','for developping villages','500000','8d6962a152','chotu','500000','8d6962a152','munna');

/*Table structure for table `hauthority` */

DROP TABLE IF EXISTS `hauthority`;

CREATE TABLE `hauthority` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hauthority` */

insert  into `hauthority`(`username`,`password`,`email`,`mobile`) values ('honey','honey','honey@gmail.com','7702177291');

/*Table structure for table `supervisor` */

DROP TABLE IF EXISTS `supervisor`;

CREATE TABLE `supervisor` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `supervisor` */

insert  into `supervisor`(`username`,`password`,`email`,`mobile`) values ('radha','radha','radha@gmail.com','7702177291');

/*Table structure for table `supervisor_data` */

DROP TABLE IF EXISTS `supervisor_data`;

CREATE TABLE `supervisor_data` (
  `did` varchar(100) NOT NULL,
  `fdata` text,
  `amount` varchar(100) DEFAULT NULL,
  `bckey` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `namount` varchar(100) DEFAULT NULL,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `supervisor_data` */

insert  into `supervisor_data`(`did`,`fdata`,`amount`,`bckey`,`username`,`namount`,`nkey`,`person`) values ('100','for developping villages','200000','b552e63266','radha','pending','pending','pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

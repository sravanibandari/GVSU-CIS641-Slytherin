/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - e-commerce
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `e-commerce`;

USE `e-commerce`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `cart_items` */

DROP TABLE IF EXISTS `cart_items`;

CREATE TABLE `cart_items` (
  `cart_items_ID` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) DEFAULT NULL,
  `product_ID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `tot_cost` int(11) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cart_items_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `prodid` varchar(100) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review` varchar(500) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `date_` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `main_cat` int(11) DEFAULT NULL,
  `sub_cat` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `name_` varchar(500) NOT NULL,
  `cost` double DEFAULT NULL,
  `des` varchar(1000) DEFAULT NULL,
  `pic` longblob,
  PRIMARY KEY (`name_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `main_cat` */

DROP TABLE IF EXISTS `main_cat`;

CREATE TABLE `main_cat` (
  `main_cat` int(11) DEFAULT NULL,
  `name_` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(10) DEFAULT NULL,
  `sub` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `freq` varchar(100) DEFAULT NULL,
  `tot_cost` varchar(100) DEFAULT NULL,
  `user` varchar(500) DEFAULT NULL,
  `stz` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `uid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `pass_word` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `tele` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `gen` varchar(10) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sub_cat` */

DROP TABLE IF EXISTS `sub_cat`;

CREATE TABLE `sub_cat` (
  `main_cat` int(11) DEFAULT NULL,
  `sub_cat` int(11) DEFAULT NULL,
  `name_` varchar(500) NOT NULL,
  PRIMARY KEY (`name_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

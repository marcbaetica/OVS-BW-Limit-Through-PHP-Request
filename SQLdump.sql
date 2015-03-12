create database if not exists macRulesSchema;

use macRulesSchema;

drop table if exists macRulesTable;

CREATE TABLE IF NOT EXISTS `macRulesTable` (
`Index` integer PRIMARY KEY AUTO_INCREMENT NOT NULL,
`mac` bigint(228) NOT NULL, #was bigint(228) but temporarily set as varchar(17) for testing purposes with the GUI
`block` tinyint(1) DEFAULT '0',
`user_total` bigint(9) DEFAULT '20', #new user should get a maximum of 1GB of total allocaiton for personal user
`total_all` bigint(9) DEFAULT '60', #to be updated when user generates initial setup
`start_time` time DEFAULT '12:00:00', #start and stop time are set to a default 24h cycle
`stop_time` time DEFAULT '12:00:00',
`bw_limit` bigint(10) DEFAULT '4294967294',    #set for maximum rate in kb/s
`current_user_usage` bigint(10) DEFAULT '15', #the usage per user
`current_total_usage` bigint(10) DEFAULT '20', #the total usage over the internet duplicate for every user
`terminal_name` varchar(17) DEFAULT NULL #string for rendering the computer names in the GUI instead of the MAC address
);

#temporarily used for testing purposes. Make sure to comment out in the final version
#INSERT INTO `macRulesTable` (`Index`,`mac`,`block`,`user_total`,`total_all`,`bw_limit`) VALUES (1,'00:1C:B3:09:85:15',0,60,180,4294967294);
#INSERT INTO `macRulesTable` (`Index`,`mac`,`block`,`user_total`,`total_all`,`bw_limit`) VALUES (2,'00:1C:B3:09:85:16',0,60,180,75000);
#INSERT INTO `macRulesTable` (`Index`,`mac`,`block`,`user_total`,`total_all`,`bw_limit`) VALUES (3,'00:1C:B3:09:85:17',1,60,180,130000);


/*
Insert extra commmnets here
*/





#For the GUI database format

-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
-- 
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2013 at 03:35 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
-- 
-- Database: `lr`
-- 
#CREATE DATABASE IF NOT EXISTS `lr` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
#USE `lr`;
-- --------------------------------------------------------
-- 
-- Table structure for table `groups`
-- 
CREATE TABLE IF NOT EXISTS `groups` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL,
`permissions` text NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
-- --------------------------------------------------------
-- 
-- Table structure for table `users`
-- 
#CREATE TABLE IF NOT EXISTS `users` (
#`id` int(11) NOT NULL AUTO_INCREMENT,
#`username` varchar(20) NOT NULL,
#`password` varchar(64) NOT NULL,
#`salt` varchar(32) NOT NULL,
#`name` varchar(50) NOT NULL,
#`joined` datetime NOT NULL,
#`group` int(11) NOT NULL,
#PRIMARY KEY (`id`)
#) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;
-- --------------------------------------------------------
-- 
-- Table structure for table `users_session`
-- 
CREATE TABLE IF NOT EXISTS `users_session` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL,
`hash` varchar(50) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


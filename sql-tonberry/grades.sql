-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2021 at 02:58 PM
-- Server version: 10.5.9-MariaDB
-- PHP Version: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tonberry`
--

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `entity_type` smallint(3) NOT NULL,
  `entity` smallint(3) NOT NULL,
  `grade_type` smallint(3) NOT NULL,
  `grade` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` VALUES(1, 13, 4, '7');
INSERT INTO `grades` VALUES(1, 13, 5, '4');
INSERT INTO `grades` VALUES(1, 19, 2, '5');
INSERT INTO `grades` VALUES(1, 19, 4, '7');
INSERT INTO `grades` VALUES(1, 19, 5, '3');
INSERT INTO `grades` VALUES(1, 19, 6, '7');
INSERT INTO `grades` VALUES(1, 20, 4, '7');
INSERT INTO `grades` VALUES(1, 20, 5, '7');
INSERT INTO `grades` VALUES(1, 20, 8, '4');
INSERT INTO `grades` VALUES(2, 2, 0, '6');
INSERT INTO `grades` VALUES(2, 2, 1, '3');
INSERT INTO `grades` VALUES(2, 2, 5, '4');
INSERT INTO `grades` VALUES(2, 2, 7, '4');
INSERT INTO `grades` VALUES(2, 4, 0, '2');
INSERT INTO `grades` VALUES(2, 4, 1, '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`entity_type`,`entity`,`grade_type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

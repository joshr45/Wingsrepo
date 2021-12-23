-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2021 at 05:14 PM
-- Server version: 10.5.9-MariaDB
-- PHP Version: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ffxiwings`
--

-- --------------------------------------------------------

--
-- Table structure for table `pet_mods`
--

DROP TABLE IF EXISTS `pet_mods`;
CREATE TABLE IF NOT EXISTS `pet_mods` (
  `pet_type` smallint(5) unsigned NOT NULL,
  `pet_id` smallint(5) unsigned NOT NULL,
  `mod_id` int(10) unsigned NOT NULL,
  `mod_value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pet_mods`
--

INSERT INTO `pet_mods` VALUES(4, 70, 161, 5);
INSERT INTO `pet_mods` VALUES(4, 70, 163, 13);
INSERT INTO `pet_mods` VALUES(4, 69, 161, 11);
INSERT INTO `pet_mods` VALUES(4, 69, 163, 13);
INSERT INTO `pet_mods` VALUES(4, 72, 161, 16);
INSERT INTO `pet_mods` VALUES(4, 72, 163, 8);
INSERT INTO `pet_mods` VALUES(4, 71, 161, 25);
INSERT INTO `pet_mods` VALUES(4, 71, 163, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pet_mods`
--
ALTER TABLE `pet_mods`
  ADD PRIMARY KEY (`pet_type`,`pet_id`,`mod_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

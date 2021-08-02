-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2021 at 07:27 PM
-- Server version: 10.5.6-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `mob_spawn_mods`
--

DROP TABLE IF EXISTS `mob_spawn_mods`;
CREATE TABLE `mob_spawn_mods` (
  `mobid` int(10) UNSIGNED NOT NULL,
  `modid` smallint(5) UNSIGNED NOT NULL,
  `value` smallint(5) NOT NULL DEFAULT 0,
  `is_mob_mod` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM AVG_ROW_LENGTH=13 DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `mob_spawn_mods`
--

INSERT INTO `mob_spawn_mods` VALUES(16806117, 288, 40, 0);
INSERT INTO `mob_spawn_mods` VALUES(17240232, 23, 50, 0);
INSERT INTO `mob_spawn_mods` VALUES(17240232, 288, 40, 0);
INSERT INTO `mob_spawn_mods` VALUES(17186927, 368, 33, 0);
INSERT INTO `mob_spawn_mods` VALUES(17195221, 368, 33, 0);
INSERT INTO `mob_spawn_mods` VALUES(17363080, 368, 33, 0);
INSERT INTO `mob_spawn_mods` VALUES(17424488, 302, 25, 0);
INSERT INTO `mob_spawn_mods` VALUES(17424488, 288, 25, 0);
INSERT INTO `mob_spawn_mods` VALUES(17424488, 23, 60, 0);
INSERT INTO `mob_spawn_mods` VALUES(17371142, 1, 20, 1);
INSERT INTO `mob_spawn_mods` VALUES(17371142, 2, 33, 1);
INSERT INTO `mob_spawn_mods` VALUES(17371143, 1, 20, 1);
INSERT INTO `mob_spawn_mods` VALUES(17371143, 2, 25, 1);
INSERT INTO `mob_spawn_mods` VALUES(17433009, 1, 15000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17433009, 2, 18000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17433009, 302, 15, 0);
INSERT INTO `mob_spawn_mods` VALUES(17596720, 1, 19000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17596720, 2, 32767, 1);
INSERT INTO `mob_spawn_mods` VALUES(17269106, 1, 15000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17269106, 2, 30545, 1);
INSERT INTO `mob_spawn_mods` VALUES(17485980, 1, 1200, 1);
INSERT INTO `mob_spawn_mods` VALUES(17485980, 2, 1950, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486129, 1, 3600, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486129, 2, 6079, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486031, 1, 1200, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486031, 2, 1903, 1);
INSERT INTO `mob_spawn_mods` VALUES(17228242, 1, 21000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17228242, 2, 31300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309982, 1, 1500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309982, 2, 18000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309980, 1, 1500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309980, 2, 29036, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309981, 1, 1500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309981, 2, 28608, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309983, 1, 1500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309983, 2, 28886, 1);
INSERT INTO `mob_spawn_mods` VALUES(17236202, 160, 50, 0);
INSERT INTO `mob_spawn_mods` VALUES(17236202, 169, 10, 0);
INSERT INTO `mob_spawn_mods` VALUES(17236204, 169, 10, 0);
INSERT INTO `mob_spawn_mods` VALUES(17236203, 169, 10, 0);
INSERT INTO `mob_spawn_mods` VALUES(17236203, 23, 8, 1);
INSERT INTO `mob_spawn_mods` VALUES(17367080, 33, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17367082, 33, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17367085, 34, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17375263, 34, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17375267, 34, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17465360, 34, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17465360, 33, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17465362, 33, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(17465364, 33, 30, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806215, 26, 32, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806216, 26, 32, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806217, 26, 32, 1);
INSERT INTO `mob_spawn_mods` VALUES(17207308, 1, 15000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17207308, 2, 20000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17235987, 1, 1076, 1);
INSERT INTO `mob_spawn_mods` VALUES(17235987, 2, 2765, 1);
INSERT INTO `mob_spawn_mods` VALUES(17203216, 1, 15000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17203216, 2, 20000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17555863, 1, 20000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17555863, 2, 30000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309954, 1, 18000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309954, 2, 29250, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309954, 15, 3250, 1);
INSERT INTO `mob_spawn_mods` VALUES(17506370, 1, 17986, 1);
INSERT INTO `mob_spawn_mods` VALUES(17506370, 2, 27482, 1);
INSERT INTO `mob_spawn_mods` VALUES(17502568, 1, 18227, 1);
INSERT INTO `mob_spawn_mods` VALUES(17502568, 2, 18606, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629524, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629524, 2, 9234, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629641, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629641, 2, 9234, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629640, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629640, 2, 9234, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629483, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629483, 2, 9234, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629421, 1, 2100, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629421, 2, 4500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629412, 1, 2100, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629412, 2, 4500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629561, 1, 650, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629561, 2, 1450, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629281, 1, 2100, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629281, 2, 4500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629643, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629643, 2, 9234, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629403, 1, 4800, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629403, 2, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629238, 1, 2000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629238, 2, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629238, 15, 630, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629301, 1, 3000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629301, 2, 3000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629264, 1, 10000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629264, 2, 13640, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629644, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629644, 2, 9234, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629430, 1, 1200, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629430, 2, 3000, 1);
INSERT INTO `mob_spawn_mods` VALUES(16990474, 1, 5000, 1);
INSERT INTO `mob_spawn_mods` VALUES(16990474, 2, 7000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17404331, 1, 20000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17404331, 2, 24000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17461478, 1, 3000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17461478, 2, 9900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17285460, 1, 379, 1);
INSERT INTO `mob_spawn_mods` VALUES(17285460, 2, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490231, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490231, 2, 9500, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490016, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490016, 2, 9100, 1);
INSERT INTO `mob_spawn_mods` VALUES(17617158, 1, 15000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17617158, 2, 18000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17617158, 15, 3370, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814432, 1, 18000, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814432, 2, 19800, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814432, 9, 80, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814432, 170, 50, 0);
INSERT INTO `mob_spawn_mods` VALUES(16814432, 168, 2, 0);
INSERT INTO `mob_spawn_mods` VALUES(16814432, 29, 33, 0);
INSERT INTO `mob_spawn_mods` VALUES(16921015, 387, -95, 0);
INSERT INTO `mob_spawn_mods` VALUES(16921016, 60, 100, 0);
INSERT INTO `mob_spawn_mods` VALUES(16921016, 61, -100, 0);
INSERT INTO `mob_spawn_mods` VALUES(16921017, 60, -100, 0);
INSERT INTO `mob_spawn_mods` VALUES(16921017, 61, 100, 0);
INSERT INTO `mob_spawn_mods` VALUES(16912838, 407, 150, 0);
INSERT INTO `mob_spawn_mods` VALUES(16912838, 7, 60, 1);
INSERT INTO `mob_spawn_mods` VALUES(17326081, 50, 25, 1);
INSERT INTO `mob_spawn_mods` VALUES(17293486, 51, 1, 1);
INSERT INTO `mob_spawn_mods` VALUES(17293486, 31, 5, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428812, 17, 1, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428811, 1, 2000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428811, 2, 5625, 1);
INSERT INTO `mob_spawn_mods` VALUES(16916815, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912838, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912839, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912846, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912847, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912848, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16986428, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16986429, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16986430, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16986431, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16998871, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16998872, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16998873, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16998874, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16990473, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16990474, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17027471, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17027472, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17027473, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17027474, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17027485, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17031598, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17031599, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17031600, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17043887, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17043888, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056157, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056186, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17072171, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17072172, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17072178, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17072179, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17101202, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17101203, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17101204, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17101205, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17420629, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17420630, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17420631, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629642, 55, 600, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629643, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629185, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629186, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17404337, 55, 288, 1);
INSERT INTO `mob_spawn_mods` VALUES(17506667, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17506418, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17174889, 55, 1800, 1);
INSERT INTO `mob_spawn_mods` VALUES(17469516, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17272839, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17272838, 55, 288, 1);
INSERT INTO `mob_spawn_mods` VALUES(17273285, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17236201, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17211848, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17502568, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584134, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584135, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584132, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584425, 55, 168, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584130, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584129, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584133, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584131, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17391804, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428816, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428810, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428809, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428495, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428496, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428807, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428808, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428813, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428815, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428751, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428811, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428812, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490232, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806031, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17285544, 55, 150, 1);
INSERT INTO `mob_spawn_mods` VALUES(17285545, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17285546, 55, 150, 1);
INSERT INTO `mob_spawn_mods` VALUES(17424444, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17424480, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17580337, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17580038, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17678351, 55, 600, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309983, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309981, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309980, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309982, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921018, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921019, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921020, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17289654, 55, 168, 1);
INSERT INTO `mob_spawn_mods` VALUES(17289655, 55, 168, 1);
INSERT INTO `mob_spawn_mods` VALUES(16916813, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17436964, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16798078, 55, 1800, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330309, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330310, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330311, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330319, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330320, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330321, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330420, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330421, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330422, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330432, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330433, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330434, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330383, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330384, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330385, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330395, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330396, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330397, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330355, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330356, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330357, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330362, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330363, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330364, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330365, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330366, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330367, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330372, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330373, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330374, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330337, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330338, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330339, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330347, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330348, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330349, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330445, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330446, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330447, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330457, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330458, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330459, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330513, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330514, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330515, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330516, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330517, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330518, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330334, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330335, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330336, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330344, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330345, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330346, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330442, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330443, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330444, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330454, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330455, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330456, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330306, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330307, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330308, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330316, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330317, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330318, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330423, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330424, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330425, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330435, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330436, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330437, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330380, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330381, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330382, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330392, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330393, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330394, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330495, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330496, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330497, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330503, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330504, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330505, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330290, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330291, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330292, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330299, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330300, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330301, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330522, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330523, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330524, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330525, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330526, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17330527, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17555863, 55, 600, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486187, 55, 168, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486188, 55, 168, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486189, 55, 168, 1);
INSERT INTO `mob_spawn_mods` VALUES(17486190, 55, 1800, 1);
INSERT INTO `mob_spawn_mods` VALUES(17363318, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16822459, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16998869, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16998870, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17244523, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17244524, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17244525, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17146147, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17396140, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17297450, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17297449, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17297446, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17297447, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17297448, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17240414, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17457309, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17113462, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17113464, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17612836, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17613129, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17649860, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17031401, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17170645, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17228249, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17215494, 55, 288, 1);
INSERT INTO `mob_spawn_mods` VALUES(16785722, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16785709, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17199566, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17199567, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17199568, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16867544, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16867455, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16867333, 55, 240, 1);
INSERT INTO `mob_spawn_mods` VALUES(16867329, 55, 240, 1);
INSERT INTO `mob_spawn_mods` VALUES(16867330, 55, 240, 1);
INSERT INTO `mob_spawn_mods` VALUES(16867642, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17568137, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17568135, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17568136, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17568134, 55, 168, 1);
INSERT INTO `mob_spawn_mods` VALUES(17207696, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17207710, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17207697, 55, 600, 1);
INSERT INTO `mob_spawn_mods` VALUES(17207698, 55, 600, 1);
INSERT INTO `mob_spawn_mods` VALUES(16892069, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16892073, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16892074, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16892070, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16892068, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056168, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17387970, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17387971, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17387965, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17387966, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17387967, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17387968, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17371579, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17596643, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17596533, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16793858, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17433005, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17576264, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17576267, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17576266, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17588706, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16875774, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16875778, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16875779, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17617158, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17617164, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(17531121, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17043876, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17043877, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17043878, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17043879, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16826570, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814088, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814091, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814081, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814086, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814095, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814093, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814092, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814087, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814083, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814432, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814090, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814094, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814089, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814361, 55, 240, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814096, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814084, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814082, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16814085, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16879899, 55, 900, 1);
INSERT INTO `mob_spawn_mods` VALUES(16879897, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16879893, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16879894, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16879895, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17281031, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17281030, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17269107, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17269114, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806243, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806244, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806245, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806246, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806247, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17236205, 55, 240, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912829, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912830, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912831, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912832, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912833, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912834, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912835, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912836, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16912837, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490231, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16806242, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921022, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921023, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921024, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921025, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(16785710, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16785711, 55, 420, 1);
INSERT INTO `mob_spawn_mods` VALUES(16785712, 55, 420, 1);
INSERT INTO `mob_spawn_mods` VALUES(16785713, 55, 420, 1);
INSERT INTO `mob_spawn_mods` VALUES(16891970, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056170, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056171, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056172, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056173, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056174, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056175, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056176, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17056177, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16793859, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16793860, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16793861, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17576265, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17576268, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17576269, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17354895, 55, 600, 1);
INSERT INTO `mob_spawn_mods` VALUES(17354896, 55, 600, 1);
INSERT INTO `mob_spawn_mods` VALUES(17379783, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17404338, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17396144, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17436965, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584426, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17432583, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17576271, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17596728, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17617157, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490230, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17391805, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(16826564, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17629190, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17309979, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17498564, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428497, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17469761, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17502567, 55, 120, 1);
INSERT INTO `mob_spawn_mods` VALUES(17559870, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17568139, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17572203, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17580340, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17584427, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17588704, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17596729, 55, 300, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490233, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17506668, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17506669, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921015, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921016, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921017, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(16921021, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17588701, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17588702, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17588703, 55, 180, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428677, 1, 18000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17428677, 2, 30000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17649784, 1, 12000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17649784, 2, 20000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17649818, 1, 6000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17649818, 2, 9140, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490101, 1, 15000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490101, 2, 20000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17490101, 15, 2000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17489980, 1, 15000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17489980, 2, 25000, 1);
INSERT INTO `mob_spawn_mods` VALUES(17027458, 12, 15, 1); -- Draw in for Cerberus
INSERT INTO `mob_spawn_mods` VALUES(17101201, 12, 15, 1); -- Draw in for Khimaira
INSERT INTO `mob_spawn_mods` VALUES(16986355, 12, 15, 1); -- Draw in for Hydra

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mob_spawn_mods`
--
ALTER TABLE `mob_spawn_mods`
  ADD PRIMARY KEY (`mobid`,`modid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

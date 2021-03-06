-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01,  2021 at 07:14 PM
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
-- Table structure for table `instance_entities`
--

DROP TABLE IF EXISTS `instance_entities`;
CREATE TABLE `instance_entities`(
  `instanceid` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instance_entities`
--

-- Leujaoam Cleansing
-- Mobs
INSERT INTO `instance_entities` VALUES(1, 17059841);
INSERT INTO `instance_entities` VALUES(1, 17059842);
INSERT INTO `instance_entities` VALUES(1, 17059843);
INSERT INTO `instance_entities` VALUES(1, 17059844);
INSERT INTO `instance_entities` VALUES(1, 17059845);
INSERT INTO `instance_entities` VALUES(1, 17059846);
INSERT INTO `instance_entities` VALUES(1, 17059847);
INSERT INTO `instance_entities` VALUES(1, 17059848);
INSERT INTO `instance_entities` VALUES(1, 17059849);
INSERT INTO `instance_entities` VALUES(1, 17059850);
INSERT INTO `instance_entities` VALUES(1, 17059851);
INSERT INTO `instance_entities` VALUES(1, 17059852);
INSERT INTO `instance_entities` VALUES(1, 17059853);
INSERT INTO `instance_entities` VALUES(1, 17059854);
INSERT INTO `instance_entities` VALUES(1, 17059855);
-- Npcs
INSERT INTO `instance_entities` VALUES(1, 17060014);
INSERT INTO `instance_entities` VALUES(1, 17060015);
INSERT INTO `instance_entities` VALUES(1, 17060138);

-- Orichalcum Survey
-- Mobs
INSERT INTO `instance_entities` VALUES(2, 17059856);
INSERT INTO `instance_entities` VALUES(2, 17059857);
INSERT INTO `instance_entities` VALUES(2, 17059858);
INSERT INTO `instance_entities` VALUES(2, 17059859);
INSERT INTO `instance_entities` VALUES(2, 17059860);
INSERT INTO `instance_entities` VALUES(2, 17059861);
INSERT INTO `instance_entities` VALUES(2, 17059862);
INSERT INTO `instance_entities` VALUES(2, 17059863);
INSERT INTO `instance_entities` VALUES(2, 17059864);
INSERT INTO `instance_entities` VALUES(2, 17059865);
INSERT INTO `instance_entities` VALUES(2, 17059866);
INSERT INTO `instance_entities` VALUES(2, 17059867);
INSERT INTO `instance_entities` VALUES(2, 17059868);
INSERT INTO `instance_entities` VALUES(2, 17059869);
INSERT INTO `instance_entities` VALUES(2, 17059870);
INSERT INTO `instance_entities` VALUES(2, 17059871);
INSERT INTO `instance_entities` VALUES(2, 17059872);
INSERT INTO `instance_entities` VALUES(2, 17059873);
-- Npcs
INSERT INTO `instance_entities` VALUES(2, 17060014);
INSERT INTO `instance_entities` VALUES(2, 17060015);
INSERT INTO `instance_entities` VALUES(2, 17060016);
INSERT INTO `instance_entities` VALUES(2, 17060017);
INSERT INTO `instance_entities` VALUES(2, 17060018);
INSERT INTO `instance_entities` VALUES(2, 17060019);
INSERT INTO `instance_entities` VALUES(2, 17060020);
INSERT INTO `instance_entities` VALUES(2, 17060021);
INSERT INTO `instance_entities` VALUES(2, 17060022);
INSERT INTO `instance_entities` VALUES(2, 17060023);
INSERT INTO `instance_entities` VALUES(2, 17060024);
INSERT INTO `instance_entities` VALUES(2, 17060025);
INSERT INTO `instance_entities` VALUES(2, 17060026);
INSERT INTO `instance_entities` VALUES(2, 17060129);
INSERT INTO `instance_entities` VALUES(2, 17060139);

-- Imperial Agent Rescue
-- Mobs
INSERT INTO `instance_entities` VALUES(11,  17047553);
INSERT INTO `instance_entities` VALUES(11,  17047554);
INSERT INTO `instance_entities` VALUES(11,  17047555);
INSERT INTO `instance_entities` VALUES(11,  17047556);
INSERT INTO `instance_entities` VALUES(11,  17047557);
INSERT INTO `instance_entities` VALUES(11,  17047558);
INSERT INTO `instance_entities` VALUES(11,  17047559);
INSERT INTO `instance_entities` VALUES(11,  17047560);
INSERT INTO `instance_entities` VALUES(11,  17047561);
INSERT INTO `instance_entities` VALUES(11,  17047562);
INSERT INTO `instance_entities` VALUES(11,  17047563);
INSERT INTO `instance_entities` VALUES(11,  17047564);
INSERT INTO `instance_entities` VALUES(11,  17047565);
INSERT INTO `instance_entities` VALUES(11,  17047566);
INSERT INTO `instance_entities` VALUES(11,  17047567);
INSERT INTO `instance_entities` VALUES(11,  17047568);
INSERT INTO `instance_entities` VALUES(11,  17047569);
-- Npcs
INSERT INTO `instance_entities` VALUES(11,  17047808);
INSERT INTO `instance_entities` VALUES(11,  17047809);
INSERT INTO `instance_entities` VALUES(11,  17047810);
INSERT INTO `instance_entities` VALUES(11,  17047815);
INSERT INTO `instance_entities` VALUES(11,  17047832);
INSERT INTO `instance_entities` VALUES(11,  17047863);
INSERT INTO `instance_entities` VALUES(11,  17047864);
INSERT INTO `instance_entities` VALUES(11,  17047865);
INSERT INTO `instance_entities` VALUES(11,  17047866);
INSERT INTO `instance_entities` VALUES(11,  17047895);
INSERT INTO `instance_entities` VALUES(11,  17047896);
INSERT INTO `instance_entities` VALUES(11,  17047897);
INSERT INTO `instance_entities` VALUES(11,  17047898);
INSERT INTO `instance_entities` VALUES(11,  17047899);
INSERT INTO `instance_entities` VALUES(11,  17047900);
INSERT INTO `instance_entities` VALUES(11,  17047901);
INSERT INTO `instance_entities` VALUES(11,  17047902);
INSERT INTO `instance_entities` VALUES(11,  17047916);
INSERT INTO `instance_entities` VALUES(11,  17047917);
INSERT INTO `instance_entities` VALUES(11,  17047918);

-- Preemtive Strike
-- Mobs
INSERT INTO `instance_entities` VALUES(12,  17047570);
INSERT INTO `instance_entities` VALUES(12,  17047571);
INSERT INTO `instance_entities` VALUES(12,  17047572);
INSERT INTO `instance_entities` VALUES(12,  17047573);
INSERT INTO `instance_entities` VALUES(12,  17047574);
INSERT INTO `instance_entities` VALUES(12,  17047575);
INSERT INTO `instance_entities` VALUES(12,  17047576);
INSERT INTO `instance_entities` VALUES(12,  17047577);
INSERT INTO `instance_entities` VALUES(12,  17047578);
INSERT INTO `instance_entities` VALUES(12,  17047579);
INSERT INTO `instance_entities` VALUES(12,  17047580);
INSERT INTO `instance_entities` VALUES(12,  17047581);
INSERT INTO `instance_entities` VALUES(12,  17047582);
INSERT INTO `instance_entities` VALUES(12,  17047583);
INSERT INTO `instance_entities` VALUES(12,  17047584);
INSERT INTO `instance_entities` VALUES(12,  17047585);
INSERT INTO `instance_entities` VALUES(12,  17047586);
INSERT INTO `instance_entities` VALUES(12,  17047587);
INSERT INTO `instance_entities` VALUES(12,  17047588);
INSERT INTO `instance_entities` VALUES(12,  17047589);
-- Npcs
INSERT INTO `instance_entities` VALUES(12,  17047808);
INSERT INTO `instance_entities` VALUES(12,  17047809);
INSERT INTO `instance_entities` VALUES(12,  17047836);
INSERT INTO `instance_entities` VALUES(12,  17047868);
INSERT INTO `instance_entities` VALUES(12,  17047869);
INSERT INTO `instance_entities` VALUES(12,  17047870);
INSERT INTO `instance_entities` VALUES(12,  17047874);
INSERT INTO `instance_entities` VALUES(12,  17047875);

-- Excavation Duty
-- Mobs
INSERT INTO `instance_entities` VALUES(21, 17035265);
INSERT INTO `instance_entities` VALUES(21, 17035266);
INSERT INTO `instance_entities` VALUES(21, 17035267);
INSERT INTO `instance_entities` VALUES(21, 17035268);
INSERT INTO `instance_entities` VALUES(21, 17035269);
INSERT INTO `instance_entities` VALUES(21, 17035270);
INSERT INTO `instance_entities` VALUES(21, 17035271);
INSERT INTO `instance_entities` VALUES(21, 17035272);
INSERT INTO `instance_entities` VALUES(21, 17035273);
INSERT INTO `instance_entities` VALUES(21, 17035274);
INSERT INTO `instance_entities` VALUES(21, 17035275);
INSERT INTO `instance_entities` VALUES(21, 17035276);
INSERT INTO `instance_entities` VALUES(21, 17035277);
INSERT INTO `instance_entities` VALUES(21, 17035278);
INSERT INTO `instance_entities` VALUES(21, 17035279);
INSERT INTO `instance_entities` VALUES(21, 17035280);
INSERT INTO `instance_entities` VALUES(21, 17035281);
INSERT INTO `instance_entities` VALUES(21, 17035282);
INSERT INTO `instance_entities` VALUES(21, 17035283);
INSERT INTO `instance_entities` VALUES(21, 17035284);
INSERT INTO `instance_entities` VALUES(21, 17035285);
INSERT INTO `instance_entities` VALUES(21, 17035286);
INSERT INTO `instance_entities` VALUES(21, 17035287);
INSERT INTO `instance_entities` VALUES(21, 17035288);
INSERT INTO `instance_entities` VALUES(21, 17035289);
INSERT INTO `instance_entities` VALUES(21, 17035290);
INSERT INTO `instance_entities` VALUES(21, 17035291);
-- Npcs
INSERT INTO `instance_entities` VALUES(21, 17035478);
INSERT INTO `instance_entities` VALUES(21, 17035479);
INSERT INTO `instance_entities` VALUES(21, 17035537);
INSERT INTO `instance_entities` VALUES(21, 17035538);
INSERT INTO `instance_entities` VALUES(21, 17035539);
INSERT INTO `instance_entities` VALUES(21, 17035540);
INSERT INTO `instance_entities` VALUES(21, 17035541);

-- Lebros Supplies
-- Mobs
INSERT INTO `instance_entities` VALUES(22, 17035292);
INSERT INTO `instance_entities` VALUES(22, 17035293);
INSERT INTO `instance_entities` VALUES(22, 17035294);
INSERT INTO `instance_entities` VALUES(22, 17035295);
INSERT INTO `instance_entities` VALUES(22, 17035296);
INSERT INTO `instance_entities` VALUES(22, 17035297);
INSERT INTO `instance_entities` VALUES(22, 17035298);
INSERT INTO `instance_entities` VALUES(22, 17035299);
INSERT INTO `instance_entities` VALUES(22, 17035300);
INSERT INTO `instance_entities` VALUES(22, 17035301);
INSERT INTO `instance_entities` VALUES(22, 17035302);
INSERT INTO `instance_entities` VALUES(22, 17035303);
INSERT INTO `instance_entities` VALUES(22, 17035304);
INSERT INTO `instance_entities` VALUES(22, 17035305);
INSERT INTO `instance_entities` VALUES(22, 17035306);
INSERT INTO `instance_entities` VALUES(22, 17035307);
INSERT INTO `instance_entities` VALUES(22, 17035308);
INSERT INTO `instance_entities` VALUES(22, 17035309);
INSERT INTO `instance_entities` VALUES(22, 17035478);
INSERT INTO `instance_entities` VALUES(22, 17035479);
INSERT INTO `instance_entities` VALUES(22, 17035480);
INSERT INTO `instance_entities` VALUES(22, 17035522);
INSERT INTO `instance_entities` VALUES(22, 17035529);

-- Troll Fugitives
-- Mobs
INSERT INTO `instance_entities` VALUES(23, 17035310);
INSERT INTO `instance_entities` VALUES(23, 17035311);
INSERT INTO `instance_entities` VALUES(23, 17035312);
INSERT INTO `instance_entities` VALUES(23, 17035313);
INSERT INTO `instance_entities` VALUES(23, 17035314);
INSERT INTO `instance_entities` VALUES(23, 17035315);
INSERT INTO `instance_entities` VALUES(23, 17035316);
INSERT INTO `instance_entities` VALUES(23, 17035317);
INSERT INTO `instance_entities` VALUES(23, 17035318);
INSERT INTO `instance_entities` VALUES(23, 17035319);
INSERT INTO `instance_entities` VALUES(23, 17035320);
INSERT INTO `instance_entities` VALUES(23, 17035321);
INSERT INTO `instance_entities` VALUES(23, 17035322);
INSERT INTO `instance_entities` VALUES(23, 17035323);
INSERT INTO `instance_entities` VALUES(23, 17035324);
-- Npcs
INSERT INTO `instance_entities` VALUES(23, 17035478);
INSERT INTO `instance_entities` VALUES(23, 17035479);

-- Wamoura Farm Raid
-- Mobs
INSERT INTO `instance_entities` VALUES(27, 17035359);
INSERT INTO `instance_entities` VALUES(27, 17035360);
INSERT INTO `instance_entities` VALUES(27, 17035361);
INSERT INTO `instance_entities` VALUES(27, 17035362);
INSERT INTO `instance_entities` VALUES(27, 17035363);
INSERT INTO `instance_entities` VALUES(27, 17035365);
INSERT INTO `instance_entities` VALUES(27, 17035367);
INSERT INTO `instance_entities` VALUES(27, 17035368);
INSERT INTO `instance_entities` VALUES(27, 17035369);
INSERT INTO `instance_entities` VALUES(27, 17035370);
INSERT INTO `instance_entities` VALUES(27, 17035371);
INSERT INTO `instance_entities` VALUES(27, 17035372);
INSERT INTO `instance_entities` VALUES(27, 17035376);
INSERT INTO `instance_entities` VALUES(27, 17035377);
INSERT INTO `instance_entities` VALUES(27, 17035378);
INSERT INTO `instance_entities` VALUES(27, 17035478);
INSERT INTO `instance_entities` VALUES(27, 17035479);
INSERT INTO `instance_entities` VALUES(27, 17035508);
INSERT INTO `instance_entities` VALUES(27, 17035538);
INSERT INTO `instance_entities` VALUES(27, 17035539);
INSERT INTO `instance_entities` VALUES(27, 17035541);
INSERT INTO `instance_entities` VALUES(27, 17035542);
INSERT INTO `instance_entities` VALUES(27, 17035543);
INSERT INTO `instance_entities` VALUES(27, 17035544);
INSERT INTO `instance_entities` VALUES(27, 17035545);
INSERT INTO `instance_entities` VALUES(27, 17035546);

-- Seagull Grounded
-- Mobs
INSERT INTO `instance_entities` VALUES(31, 17006593);
INSERT INTO `instance_entities` VALUES(31, 17006594);
INSERT INTO `instance_entities` VALUES(31, 17006595);
INSERT INTO `instance_entities` VALUES(31, 17006596);
INSERT INTO `instance_entities` VALUES(31, 17006597);
INSERT INTO `instance_entities` VALUES(31, 17006598);
INSERT INTO `instance_entities` VALUES(31, 17006599);
INSERT INTO `instance_entities` VALUES(31, 17006600);
INSERT INTO `instance_entities` VALUES(31, 17006601);
INSERT INTO `instance_entities` VALUES(31, 17006602);
INSERT INTO `instance_entities` VALUES(31, 17006603);
INSERT INTO `instance_entities` VALUES(31, 17006604);
INSERT INTO `instance_entities` VALUES(31, 17006605);
INSERT INTO `instance_entities` VALUES(31, 17006606);
INSERT INTO `instance_entities` VALUES(31, 17006607);
INSERT INTO `instance_entities` VALUES(31, 17006608);
INSERT INTO `instance_entities` VALUES(31, 17006610);
INSERT INTO `instance_entities` VALUES(31, 17006611);
-- Npcs
INSERT INTO `instance_entities` VALUES(31, 17006809);
INSERT INTO `instance_entities` VALUES(31, 17006810);
INSERT INTO `instance_entities` VALUES(31, 17006836);
INSERT INTO `instance_entities` VALUES(31, 17006841);
INSERT INTO `instance_entities` VALUES(31, 17006842);
INSERT INTO `instance_entities` VALUES(31, 17006843);
INSERT INTO `instance_entities` VALUES(31, 17006845);
INSERT INTO `instance_entities` VALUES(31, 17006846);
INSERT INTO `instance_entities` VALUES(31, 17006848);
INSERT INTO `instance_entities` VALUES(31, 17006852);
INSERT INTO `instance_entities` VALUES(31, 17006868);
INSERT INTO `instance_entities` VALUES(31, 17006870);
INSERT INTO `instance_entities` VALUES(31, 17006872);
INSERT INTO `instance_entities` VALUES(31, 17006874);
INSERT INTO `instance_entities` VALUES(31, 17006876);
INSERT INTO `instance_entities` VALUES(31, 17006878);

-- Requiem
-- mobs
INSERT INTO `instance_entities` VALUES(32, 17006612);
INSERT INTO `instance_entities` VALUES(32, 17006613);
INSERT INTO `instance_entities` VALUES(32, 17006614);
INSERT INTO `instance_entities` VALUES(32, 17006615);
INSERT INTO `instance_entities` VALUES(32, 17006616);
INSERT INTO `instance_entities` VALUES(32, 17006617);
INSERT INTO `instance_entities` VALUES(32, 17006618);
INSERT INTO `instance_entities` VALUES(32, 17006619);
INSERT INTO `instance_entities` VALUES(32, 17006620);
INSERT INTO `instance_entities` VALUES(32, 17006621);
INSERT INTO `instance_entities` VALUES(32, 17006622);
INSERT INTO `instance_entities` VALUES(32, 17006623);
INSERT INTO `instance_entities` VALUES(32, 17006624);
INSERT INTO `instance_entities` VALUES(32, 17006625);
INSERT INTO `instance_entities` VALUES(32, 17006626);
INSERT INTO `instance_entities` VALUES(32, 17006627);
INSERT INTO `instance_entities` VALUES(32, 17006628);
INSERT INTO `instance_entities` VALUES(32, 17006629);
INSERT INTO `instance_entities` VALUES(32, 17006630);
INSERT INTO `instance_entities` VALUES(32, 17006631);
INSERT INTO `instance_entities` VALUES(32, 17006632);
INSERT INTO `instance_entities` VALUES(32, 17006633);
INSERT INTO `instance_entities` VALUES(32, 17006634);
-- npcs
INSERT INTO `instance_entities` VALUES(32, 17006809);
INSERT INTO `instance_entities` VALUES(32, 17006810);
INSERT INTO `instance_entities` VALUES(32, 17006856);
INSERT INTO `instance_entities` VALUES(32, 17006868);
INSERT INTO `instance_entities` VALUES(32, 17006880);
INSERT INTO `instance_entities` VALUES(32, 17006881);
INSERT INTO `instance_entities` VALUES(32, 17006882);
INSERT INTO `instance_entities` VALUES(32, 17006892);

-- Golden Salvage
-- mobs
INSERT INTO `instance_entities` VALUES(41, 17002497);
INSERT INTO `instance_entities` VALUES(41, 17002498);
INSERT INTO `instance_entities` VALUES(41, 17002499);
INSERT INTO `instance_entities` VALUES(41, 17002500);
INSERT INTO `instance_entities` VALUES(41, 17002501);
INSERT INTO `instance_entities` VALUES(41, 17002502);
INSERT INTO `instance_entities` VALUES(41, 17002503);
INSERT INTO `instance_entities` VALUES(41, 17002504);
INSERT INTO `instance_entities` VALUES(41, 17002505);
INSERT INTO `instance_entities` VALUES(41, 17002506);
INSERT INTO `instance_entities` VALUES(41, 17002507);
INSERT INTO `instance_entities` VALUES(41, 17002508);
INSERT INTO `instance_entities` VALUES(41, 17002509);
INSERT INTO `instance_entities` VALUES(41, 17002510);
INSERT INTO `instance_entities` VALUES(41, 17002511);
INSERT INTO `instance_entities` VALUES(41, 17002512);
INSERT INTO `instance_entities` VALUES(41, 17002513);
INSERT INTO `instance_entities` VALUES(41, 17002514);
INSERT INTO `instance_entities` VALUES(41, 17002515);
INSERT INTO `instance_entities` VALUES(41, 17002516);
-- npc
INSERT INTO `instance_entities` VALUES(41, 17002654);
INSERT INTO `instance_entities` VALUES(41, 17002655);
INSERT INTO `instance_entities` VALUES(41, 17002720);
INSERT INTO `instance_entities` VALUES(41, 17002724);
INSERT INTO `instance_entities` VALUES(41, 17002725);
INSERT INTO `instance_entities` VALUES(41, 17002731);
INSERT INTO `instance_entities` VALUES(41, 17002732);
INSERT INTO `instance_entities` VALUES(41, 17002752);
INSERT INTO `instance_entities` VALUES(41, 17002753);

-- Lamia No. 13
-- mobs
INSERT INTO `instance_entities` VALUES(42, 17002517);
INSERT INTO `instance_entities` VALUES(42, 17002518);
INSERT INTO `instance_entities` VALUES(42, 17002519);
INSERT INTO `instance_entities` VALUES(42, 17002520);
-- npc
INSERT INTO `instance_entities` VALUES(42, 17002654);
INSERT INTO `instance_entities` VALUES(42, 17002655);
INSERT INTO `instance_entities` VALUES(42, 17002718);
INSERT INTO `instance_entities` VALUES(42, 17002719);
INSERT INTO `instance_entities` VALUES(42, 17002743);
INSERT INTO `instance_entities` VALUES(42, 17002744);

-- Extermination
-- mobs
INSERT INTO `instance_entities` VALUES(43, 17002521);
INSERT INTO `instance_entities` VALUES(43, 17002522);
INSERT INTO `instance_entities` VALUES(43, 17002523);
INSERT INTO `instance_entities` VALUES(43, 17002524);
INSERT INTO `instance_entities` VALUES(43, 17002525);
INSERT INTO `instance_entities` VALUES(43, 17002526);
INSERT INTO `instance_entities` VALUES(43, 17002527);
INSERT INTO `instance_entities` VALUES(43, 17002528);
INSERT INTO `instance_entities` VALUES(43, 17002529);
INSERT INTO `instance_entities` VALUES(43, 17002530);
INSERT INTO `instance_entities` VALUES(43, 17002531);
INSERT INTO `instance_entities` VALUES(43, 17002532);
INSERT INTO `instance_entities` VALUES(43, 17002533);
INSERT INTO `instance_entities` VALUES(43, 17002534);
INSERT INTO `instance_entities` VALUES(43, 17002535);
INSERT INTO `instance_entities` VALUES(43, 17002536);
INSERT INTO `instance_entities` VALUES(43, 17002537);
INSERT INTO `instance_entities` VALUES(43, 17002538);
INSERT INTO `instance_entities` VALUES(43, 17002539);
INSERT INTO `instance_entities` VALUES(43, 17002540);
INSERT INTO `instance_entities` VALUES(43, 17002541);
INSERT INTO `instance_entities` VALUES(43, 17002542);
INSERT INTO `instance_entities` VALUES(43, 17002543);
INSERT INTO `instance_entities` VALUES(43, 17002544);
-- npc
INSERT INTO `instance_entities` VALUES(43, 17002730);
INSERT INTO `instance_entities` VALUES(43, 17002745);
INSERT INTO `instance_entities` VALUES(43, 17002747);
INSERT INTO `instance_entities` VALUES(43, 17002754);
INSERT INTO `instance_entities` VALUES(43, 17002654);
INSERT INTO `instance_entities` VALUES(43, 17002655);

-- Nyzul Isle Investigation
-- mobs
INSERT INTO `instance_entities` VALUES(51, 17092629);
INSERT INTO `instance_entities` VALUES(51, 17092630);
INSERT INTO `instance_entities` VALUES(51, 17092631);
INSERT INTO `instance_entities` VALUES(51, 17092632);
INSERT INTO `instance_entities` VALUES(51, 17092633);
INSERT INTO `instance_entities` VALUES(51, 17092634);
INSERT INTO `instance_entities` VALUES(51, 17092635);
INSERT INTO `instance_entities` VALUES(51, 17092636);
INSERT INTO `instance_entities` VALUES(51, 17092637);
INSERT INTO `instance_entities` VALUES(51, 17092638);
INSERT INTO `instance_entities` VALUES(51, 17092639);
INSERT INTO `instance_entities` VALUES(51, 17092640);
INSERT INTO `instance_entities` VALUES(51, 17092641);
INSERT INTO `instance_entities` VALUES(51, 17092642);
INSERT INTO `instance_entities` VALUES(51, 17092643);
INSERT INTO `instance_entities` VALUES(51, 17092644);
INSERT INTO `instance_entities` VALUES(51, 17092645);
INSERT INTO `instance_entities` VALUES(51, 17092646);
INSERT INTO `instance_entities` VALUES(51, 17092647);
INSERT INTO `instance_entities` VALUES(51, 17092648);
INSERT INTO `instance_entities` VALUES(51, 17092649);
INSERT INTO `instance_entities` VALUES(51, 17092650);
INSERT INTO `instance_entities` VALUES(51, 17092651);
INSERT INTO `instance_entities` VALUES(51, 17092652);
INSERT INTO `instance_entities` VALUES(51, 17092653);
INSERT INTO `instance_entities` VALUES(51, 17092654);
INSERT INTO `instance_entities` VALUES(51, 17092655);
INSERT INTO `instance_entities` VALUES(51, 17092656);
INSERT INTO `instance_entities` VALUES(51, 17092657);
INSERT INTO `instance_entities` VALUES(51, 17092658);
INSERT INTO `instance_entities` VALUES(51, 17092659);
INSERT INTO `instance_entities` VALUES(51, 17092660);
INSERT INTO `instance_entities` VALUES(51, 17092661);
INSERT INTO `instance_entities` VALUES(51, 17092662);
INSERT INTO `instance_entities` VALUES(51, 17092663);
INSERT INTO `instance_entities` VALUES(51, 17092664);
INSERT INTO `instance_entities` VALUES(51, 17092665);
INSERT INTO `instance_entities` VALUES(51, 17092666);
INSERT INTO `instance_entities` VALUES(51, 17092667);
INSERT INTO `instance_entities` VALUES(51, 17092668);
INSERT INTO `instance_entities` VALUES(51, 17092669);
INSERT INTO `instance_entities` VALUES(51, 17092670);
INSERT INTO `instance_entities` VALUES(51, 17092671);
INSERT INTO `instance_entities` VALUES(51, 17092672);
INSERT INTO `instance_entities` VALUES(51, 17092673);
INSERT INTO `instance_entities` VALUES(51, 17092674);
INSERT INTO `instance_entities` VALUES(51, 17092675);
INSERT INTO `instance_entities` VALUES(51, 17092676);
INSERT INTO `instance_entities` VALUES(51, 17092677);
INSERT INTO `instance_entities` VALUES(51, 17092678);
INSERT INTO `instance_entities` VALUES(51, 17092679);
INSERT INTO `instance_entities` VALUES(51, 17092680);
INSERT INTO `instance_entities` VALUES(51, 17092681);
INSERT INTO `instance_entities` VALUES(51, 17092682);
INSERT INTO `instance_entities` VALUES(51, 17092683);
INSERT INTO `instance_entities` VALUES(51, 17092684);
INSERT INTO `instance_entities` VALUES(51, 17092685);
INSERT INTO `instance_entities` VALUES(51, 17092686);
INSERT INTO `instance_entities` VALUES(51, 17092687);
INSERT INTO `instance_entities` VALUES(51, 17092688);
INSERT INTO `instance_entities` VALUES(51, 17092689);
INSERT INTO `instance_entities` VALUES(51, 17092690);
INSERT INTO `instance_entities` VALUES(51, 17092691);
INSERT INTO `instance_entities` VALUES(51, 17092692);
INSERT INTO `instance_entities` VALUES(51, 17092693);
INSERT INTO `instance_entities` VALUES(51, 17092694);
INSERT INTO `instance_entities` VALUES(51, 17092695);
INSERT INTO `instance_entities` VALUES(51, 17092696);
INSERT INTO `instance_entities` VALUES(51, 17092697);
INSERT INTO `instance_entities` VALUES(51, 17092698);
INSERT INTO `instance_entities` VALUES(51, 17092699);
INSERT INTO `instance_entities` VALUES(51, 17092700);
INSERT INTO `instance_entities` VALUES(51, 17092701);
INSERT INTO `instance_entities` VALUES(51, 17092702);
INSERT INTO `instance_entities` VALUES(51, 17092703);
INSERT INTO `instance_entities` VALUES(51, 17092704);
INSERT INTO `instance_entities` VALUES(51, 17092705);
INSERT INTO `instance_entities` VALUES(51, 17092706);
INSERT INTO `instance_entities` VALUES(51, 17092707);
INSERT INTO `instance_entities` VALUES(51, 17092708);
INSERT INTO `instance_entities` VALUES(51, 17092709);
INSERT INTO `instance_entities` VALUES(51, 17092710);
INSERT INTO `instance_entities` VALUES(51, 17092711);
INSERT INTO `instance_entities` VALUES(51, 17092712);
INSERT INTO `instance_entities` VALUES(51, 17092713);
INSERT INTO `instance_entities` VALUES(51, 17092714);
INSERT INTO `instance_entities` VALUES(51, 17092715);
INSERT INTO `instance_entities` VALUES(51, 17092716);
INSERT INTO `instance_entities` VALUES(51, 17092717);
INSERT INTO `instance_entities` VALUES(51, 17092718);
INSERT INTO `instance_entities` VALUES(51, 17092719);
INSERT INTO `instance_entities` VALUES(51, 17092720);
INSERT INTO `instance_entities` VALUES(51, 17092721);
INSERT INTO `instance_entities` VALUES(51, 17092722);
INSERT INTO `instance_entities` VALUES(51, 17092723);
INSERT INTO `instance_entities` VALUES(51, 17092724);
INSERT INTO `instance_entities` VALUES(51, 17092725);
INSERT INTO `instance_entities` VALUES(51, 17092726);
INSERT INTO `instance_entities` VALUES(51, 17092727);
INSERT INTO `instance_entities` VALUES(51, 17092728);
INSERT INTO `instance_entities` VALUES(51, 17092729);
INSERT INTO `instance_entities` VALUES(51, 17092730);
INSERT INTO `instance_entities` VALUES(51, 17092731);
INSERT INTO `instance_entities` VALUES(51, 17092732);
INSERT INTO `instance_entities` VALUES(51, 17092733);
INSERT INTO `instance_entities` VALUES(51, 17092734);
INSERT INTO `instance_entities` VALUES(51, 17092735);
INSERT INTO `instance_entities` VALUES(51, 17092736);
INSERT INTO `instance_entities` VALUES(51, 17092737);
INSERT INTO `instance_entities` VALUES(51, 17092738);
INSERT INTO `instance_entities` VALUES(51, 17092739);
INSERT INTO `instance_entities` VALUES(51, 17092740);
INSERT INTO `instance_entities` VALUES(51, 17092741);
INSERT INTO `instance_entities` VALUES(51, 17092742);
INSERT INTO `instance_entities` VALUES(51, 17092743);
INSERT INTO `instance_entities` VALUES(51, 17092744);
INSERT INTO `instance_entities` VALUES(51, 17092745);
INSERT INTO `instance_entities` VALUES(51, 17092746);
INSERT INTO `instance_entities` VALUES(51, 17092747);
INSERT INTO `instance_entities` VALUES(51, 17092748);
INSERT INTO `instance_entities` VALUES(51, 17092749);
INSERT INTO `instance_entities` VALUES(51, 17092750);
INSERT INTO `instance_entities` VALUES(51, 17092751);
INSERT INTO `instance_entities` VALUES(51, 17092752);
INSERT INTO `instance_entities` VALUES(51, 17092753);
INSERT INTO `instance_entities` VALUES(51, 17092754);
INSERT INTO `instance_entities` VALUES(51, 17092755);
INSERT INTO `instance_entities` VALUES(51, 17092756);
INSERT INTO `instance_entities` VALUES(51, 17092757);
INSERT INTO `instance_entities` VALUES(51, 17092758);
INSERT INTO `instance_entities` VALUES(51, 17092759);
INSERT INTO `instance_entities` VALUES(51, 17092760);
INSERT INTO `instance_entities` VALUES(51, 17092761);
INSERT INTO `instance_entities` VALUES(51, 17092762);
INSERT INTO `instance_entities` VALUES(51, 17092763);
INSERT INTO `instance_entities` VALUES(51, 17092764);
INSERT INTO `instance_entities` VALUES(51, 17092765);
INSERT INTO `instance_entities` VALUES(51, 17092766);
INSERT INTO `instance_entities` VALUES(51, 17092767);
INSERT INTO `instance_entities` VALUES(51, 17092768);
INSERT INTO `instance_entities` VALUES(51, 17092769);
INSERT INTO `instance_entities` VALUES(51, 17092770);
INSERT INTO `instance_entities` VALUES(51, 17092771);
INSERT INTO `instance_entities` VALUES(51, 17092772);
INSERT INTO `instance_entities` VALUES(51, 17092773);
INSERT INTO `instance_entities` VALUES(51, 17092774);
INSERT INTO `instance_entities` VALUES(51, 17092775);
INSERT INTO `instance_entities` VALUES(51, 17092776);
INSERT INTO `instance_entities` VALUES(51, 17092777);
INSERT INTO `instance_entities` VALUES(51, 17092778);
INSERT INTO `instance_entities` VALUES(51, 17092779);
INSERT INTO `instance_entities` VALUES(51, 17092780);
INSERT INTO `instance_entities` VALUES(51, 17092781);
INSERT INTO `instance_entities` VALUES(51, 17092782);
INSERT INTO `instance_entities` VALUES(51, 17092783);
INSERT INTO `instance_entities` VALUES(51, 17092784);
INSERT INTO `instance_entities` VALUES(51, 17092785);
INSERT INTO `instance_entities` VALUES(51, 17092786);
INSERT INTO `instance_entities` VALUES(51, 17092787);
INSERT INTO `instance_entities` VALUES(51, 17092788);
INSERT INTO `instance_entities` VALUES(51, 17092789);
INSERT INTO `instance_entities` VALUES(51, 17092790);
INSERT INTO `instance_entities` VALUES(51, 17092791);
INSERT INTO `instance_entities` VALUES(51, 17092792);
INSERT INTO `instance_entities` VALUES(51, 17092793);
INSERT INTO `instance_entities` VALUES(51, 17092794);
INSERT INTO `instance_entities` VALUES(51, 17092795);
INSERT INTO `instance_entities` VALUES(51, 17092796);
INSERT INTO `instance_entities` VALUES(51, 17092797);
INSERT INTO `instance_entities` VALUES(51, 17092798);
INSERT INTO `instance_entities` VALUES(51, 17092799);
INSERT INTO `instance_entities` VALUES(51, 17092800);
INSERT INTO `instance_entities` VALUES(51, 17092801);
INSERT INTO `instance_entities` VALUES(51, 17092802);
INSERT INTO `instance_entities` VALUES(51, 17092803);
INSERT INTO `instance_entities` VALUES(51, 17092804);
INSERT INTO `instance_entities` VALUES(51, 17092805);
INSERT INTO `instance_entities` VALUES(51, 17092806);
INSERT INTO `instance_entities` VALUES(51, 17092807);
INSERT INTO `instance_entities` VALUES(51, 17092808);
INSERT INTO `instance_entities` VALUES(51, 17092809);
INSERT INTO `instance_entities` VALUES(51, 17092810);
INSERT INTO `instance_entities` VALUES(51, 17092811);
INSERT INTO `instance_entities` VALUES(51, 17092812);
INSERT INTO `instance_entities` VALUES(51, 17092813);
INSERT INTO `instance_entities` VALUES(51, 17092814);
INSERT INTO `instance_entities` VALUES(51, 17092815);
INSERT INTO `instance_entities` VALUES(51, 17092816);
INSERT INTO `instance_entities` VALUES(51, 17092817);
INSERT INTO `instance_entities` VALUES(51, 17092818);
INSERT INTO `instance_entities` VALUES(51, 17092819);
INSERT INTO `instance_entities` VALUES(51, 17092820);
INSERT INTO `instance_entities` VALUES(51, 17092821);
INSERT INTO `instance_entities` VALUES(51, 17092822);
INSERT INTO `instance_entities` VALUES(51, 17092823);
INSERT INTO `instance_entities` VALUES(51, 17092824);
INSERT INTO `instance_entities` VALUES(51, 17092825);
INSERT INTO `instance_entities` VALUES(51, 17092826);
INSERT INTO `instance_entities` VALUES(51, 17092827);
INSERT INTO `instance_entities` VALUES(51, 17092828);
INSERT INTO `instance_entities` VALUES(51, 17092829);
INSERT INTO `instance_entities` VALUES(51, 17092830);
INSERT INTO `instance_entities` VALUES(51, 17092831);
INSERT INTO `instance_entities` VALUES(51, 17092832);
INSERT INTO `instance_entities` VALUES(51, 17092833);
INSERT INTO `instance_entities` VALUES(51, 17092834);
INSERT INTO `instance_entities` VALUES(51, 17092835);
INSERT INTO `instance_entities` VALUES(51, 17092836);
INSERT INTO `instance_entities` VALUES(51, 17092837);
INSERT INTO `instance_entities` VALUES(51, 17092838);
INSERT INTO `instance_entities` VALUES(51, 17092839);
INSERT INTO `instance_entities` VALUES(51, 17092840);
INSERT INTO `instance_entities` VALUES(51, 17092841);
INSERT INTO `instance_entities` VALUES(51, 17092842);
INSERT INTO `instance_entities` VALUES(51, 17092843);
INSERT INTO `instance_entities` VALUES(51, 17092844);
INSERT INTO `instance_entities` VALUES(51, 17092845);
INSERT INTO `instance_entities` VALUES(51, 17092846);
INSERT INTO `instance_entities` VALUES(51, 17092847);
INSERT INTO `instance_entities` VALUES(51, 17092848);
INSERT INTO `instance_entities` VALUES(51, 17092849);
INSERT INTO `instance_entities` VALUES(51, 17092850);
INSERT INTO `instance_entities` VALUES(51, 17092851);
INSERT INTO `instance_entities` VALUES(51, 17092852);
INSERT INTO `instance_entities` VALUES(51, 17092853);
INSERT INTO `instance_entities` VALUES(51, 17092854);
INSERT INTO `instance_entities` VALUES(51, 17092855);
INSERT INTO `instance_entities` VALUES(51, 17092856);
INSERT INTO `instance_entities` VALUES(51, 17092857);
INSERT INTO `instance_entities` VALUES(51, 17092858);
INSERT INTO `instance_entities` VALUES(51, 17092859);
INSERT INTO `instance_entities` VALUES(51, 17092860);
INSERT INTO `instance_entities` VALUES(51, 17092861);
INSERT INTO `instance_entities` VALUES(51, 17092862);
INSERT INTO `instance_entities` VALUES(51, 17092863);
INSERT INTO `instance_entities` VALUES(51, 17092864);
INSERT INTO `instance_entities` VALUES(51, 17092865);
INSERT INTO `instance_entities` VALUES(51, 17092866);
INSERT INTO `instance_entities` VALUES(51, 17092867);
INSERT INTO `instance_entities` VALUES(51, 17092868);
INSERT INTO `instance_entities` VALUES(51, 17092869);
INSERT INTO `instance_entities` VALUES(51, 17092870);
INSERT INTO `instance_entities` VALUES(51, 17092871);
INSERT INTO `instance_entities` VALUES(51, 17092872);
INSERT INTO `instance_entities` VALUES(51, 17092873);
INSERT INTO `instance_entities` VALUES(51, 17092874);
INSERT INTO `instance_entities` VALUES(51, 17092875);
INSERT INTO `instance_entities` VALUES(51, 17092876);
INSERT INTO `instance_entities` VALUES(51, 17092877);
INSERT INTO `instance_entities` VALUES(51, 17092878);
INSERT INTO `instance_entities` VALUES(51, 17092879);
INSERT INTO `instance_entities` VALUES(51, 17092880);
INSERT INTO `instance_entities` VALUES(51, 17092881);
INSERT INTO `instance_entities` VALUES(51, 17092882);
INSERT INTO `instance_entities` VALUES(51, 17092883);
INSERT INTO `instance_entities` VALUES(51, 17092884);
INSERT INTO `instance_entities` VALUES(51, 17092885);
INSERT INTO `instance_entities` VALUES(51, 17092886);
INSERT INTO `instance_entities` VALUES(51, 17092887);
INSERT INTO `instance_entities` VALUES(51, 17092888);
INSERT INTO `instance_entities` VALUES(51, 17092889);
INSERT INTO `instance_entities` VALUES(51, 17092890);
INSERT INTO `instance_entities` VALUES(51, 17092891);
INSERT INTO `instance_entities` VALUES(51, 17092892);
INSERT INTO `instance_entities` VALUES(51, 17092893);
INSERT INTO `instance_entities` VALUES(51, 17092894);
INSERT INTO `instance_entities` VALUES(51, 17092895);
INSERT INTO `instance_entities` VALUES(51, 17092896);
INSERT INTO `instance_entities` VALUES(51, 17092897);
INSERT INTO `instance_entities` VALUES(51, 17092898);
INSERT INTO `instance_entities` VALUES(51, 17092899);
INSERT INTO `instance_entities` VALUES(51, 17092900);
INSERT INTO `instance_entities` VALUES(51, 17092901);
INSERT INTO `instance_entities` VALUES(51, 17092902);
INSERT INTO `instance_entities` VALUES(51, 17092903);
INSERT INTO `instance_entities` VALUES(51, 17092904);
INSERT INTO `instance_entities` VALUES(51, 17092905);
INSERT INTO `instance_entities` VALUES(51, 17092906);
INSERT INTO `instance_entities` VALUES(51, 17092907);
INSERT INTO `instance_entities` VALUES(51, 17092908);
INSERT INTO `instance_entities` VALUES(51, 17092909);
INSERT INTO `instance_entities` VALUES(51, 17092910);
INSERT INTO `instance_entities` VALUES(51, 17092911);
INSERT INTO `instance_entities` VALUES(51, 17092912);
INSERT INTO `instance_entities` VALUES(51, 17092913);
INSERT INTO `instance_entities` VALUES(51, 17092914);
INSERT INTO `instance_entities` VALUES(51, 17092915);
INSERT INTO `instance_entities` VALUES(51, 17092916);
INSERT INTO `instance_entities` VALUES(51, 17092917);
INSERT INTO `instance_entities` VALUES(51, 17092918);
INSERT INTO `instance_entities` VALUES(51, 17092919);
INSERT INTO `instance_entities` VALUES(51, 17092920);
INSERT INTO `instance_entities` VALUES(51, 17092921);
INSERT INTO `instance_entities` VALUES(51, 17092922);
INSERT INTO `instance_entities` VALUES(51, 17092923);
INSERT INTO `instance_entities` VALUES(51, 17092924);
INSERT INTO `instance_entities` VALUES(51, 17092925);
INSERT INTO `instance_entities` VALUES(51, 17092926);
INSERT INTO `instance_entities` VALUES(51, 17092927);
INSERT INTO `instance_entities` VALUES(51, 17092928);
INSERT INTO `instance_entities` VALUES(51, 17092929);
INSERT INTO `instance_entities` VALUES(51, 17092930);
INSERT INTO `instance_entities` VALUES(51, 17092931);
INSERT INTO `instance_entities` VALUES(51, 17092932);
INSERT INTO `instance_entities` VALUES(51, 17092933);
INSERT INTO `instance_entities` VALUES(51, 17092934);
INSERT INTO `instance_entities` VALUES(51, 17092935);
INSERT INTO `instance_entities` VALUES(51, 17092936);
INSERT INTO `instance_entities` VALUES(51, 17092937);
INSERT INTO `instance_entities` VALUES(51, 17092938);
INSERT INTO `instance_entities` VALUES(51, 17092939);
INSERT INTO `instance_entities` VALUES(51, 17092940);
INSERT INTO `instance_entities` VALUES(51, 17092941);
INSERT INTO `instance_entities` VALUES(51, 17092942);
INSERT INTO `instance_entities` VALUES(51, 17092943);
INSERT INTO `instance_entities` VALUES(51, 17092944);
INSERT INTO `instance_entities` VALUES(51, 17092945);
INSERT INTO `instance_entities` VALUES(51, 17092946);
INSERT INTO `instance_entities` VALUES(51, 17092947);
INSERT INTO `instance_entities` VALUES(51, 17092948);
INSERT INTO `instance_entities` VALUES(51, 17092949);
INSERT INTO `instance_entities` VALUES(51, 17092950);
INSERT INTO `instance_entities` VALUES(51, 17092951);
INSERT INTO `instance_entities` VALUES(51, 17092952);
INSERT INTO `instance_entities` VALUES(51, 17092953);
INSERT INTO `instance_entities` VALUES(51, 17092954);
INSERT INTO `instance_entities` VALUES(51, 17092955);
INSERT INTO `instance_entities` VALUES(51, 17092956);
INSERT INTO `instance_entities` VALUES(51, 17092957);
INSERT INTO `instance_entities` VALUES(51, 17092958);
INSERT INTO `instance_entities` VALUES(51, 17092959);
INSERT INTO `instance_entities` VALUES(51, 17092960);
INSERT INTO `instance_entities` VALUES(51, 17092961);
INSERT INTO `instance_entities` VALUES(51, 17092962);
INSERT INTO `instance_entities` VALUES(51, 17092963);
INSERT INTO `instance_entities` VALUES(51, 17092964);
INSERT INTO `instance_entities` VALUES(51, 17092965);
INSERT INTO `instance_entities` VALUES(51, 17092966);
INSERT INTO `instance_entities` VALUES(51, 17092967);
INSERT INTO `instance_entities` VALUES(51, 17092968);
INSERT INTO `instance_entities` VALUES(51, 17092969);
INSERT INTO `instance_entities` VALUES(51, 17092970);
INSERT INTO `instance_entities` VALUES(51, 17092971);
INSERT INTO `instance_entities` VALUES(51, 17092972);
INSERT INTO `instance_entities` VALUES(51, 17092973);
INSERT INTO `instance_entities` VALUES(51, 17092974);
INSERT INTO `instance_entities` VALUES(51, 17092975);
INSERT INTO `instance_entities` VALUES(51, 17092976);
INSERT INTO `instance_entities` VALUES(51, 17092977);
INSERT INTO `instance_entities` VALUES(51, 17092978);
INSERT INTO `instance_entities` VALUES(51, 17092979);
INSERT INTO `instance_entities` VALUES(51, 17092980);
INSERT INTO `instance_entities` VALUES(51, 17092981);
INSERT INTO `instance_entities` VALUES(51, 17092982);
INSERT INTO `instance_entities` VALUES(51, 17092983);
INSERT INTO `instance_entities` VALUES(51, 17092984);
INSERT INTO `instance_entities` VALUES(51, 17092985);
INSERT INTO `instance_entities` VALUES(51, 17092986);
INSERT INTO `instance_entities` VALUES(51, 17092987);
INSERT INTO `instance_entities` VALUES(51, 17092988);
INSERT INTO `instance_entities` VALUES(51, 17092989);
INSERT INTO `instance_entities` VALUES(51, 17092990);
INSERT INTO `instance_entities` VALUES(51, 17092991);
INSERT INTO `instance_entities` VALUES(51, 17092992);
INSERT INTO `instance_entities` VALUES(51, 17092993);
INSERT INTO `instance_entities` VALUES(51, 17092994);
INSERT INTO `instance_entities` VALUES(51, 17092995);
INSERT INTO `instance_entities` VALUES(51, 17092996);
INSERT INTO `instance_entities` VALUES(51, 17092997);
INSERT INTO `instance_entities` VALUES(51, 17092998);
INSERT INTO `instance_entities` VALUES(51, 17092999);
INSERT INTO `instance_entities` VALUES(51, 17093000);
INSERT INTO `instance_entities` VALUES(51, 17093001);
INSERT INTO `instance_entities` VALUES(51, 17093002);
INSERT INTO `instance_entities` VALUES(51, 17093003);
INSERT INTO `instance_entities` VALUES(51, 17093004);
-- npcs
INSERT INTO `instance_entities` VALUES(51, 17093429);
INSERT INTO `instance_entities` VALUES(51, 17093430);
INSERT INTO `instance_entities` VALUES(51, 17093330);
INSERT INTO `instance_entities` VALUES(51, 17093331);
INSERT INTO `instance_entities` VALUES(51, 17093332);
INSERT INTO `instance_entities` VALUES(51, 17093333);
INSERT INTO `instance_entities` VALUES(51, 17093334);
INSERT INTO `instance_entities` VALUES(51, 17093335);
INSERT INTO `instance_entities` VALUES(51, 17093336);
INSERT INTO `instance_entities` VALUES(51, 17092609);
INSERT INTO `instance_entities` VALUES(51, 17092610);
INSERT INTO `instance_entities` VALUES(51, 17092611);
INSERT INTO `instance_entities` VALUES(51, 17092612);
INSERT INTO `instance_entities` VALUES(51, 17092613);
INSERT INTO `instance_entities` VALUES(51, 17092614);
INSERT INTO `instance_entities` VALUES(51, 17092615);
INSERT INTO `instance_entities` VALUES(51, 17092616);
INSERT INTO `instance_entities` VALUES(51, 17092617);
INSERT INTO `instance_entities` VALUES(51, 17092618);
INSERT INTO `instance_entities` VALUES(51, 17092619);
INSERT INTO `instance_entities` VALUES(51, 17092620);
INSERT INTO `instance_entities` VALUES(51, 17092621);
INSERT INTO `instance_entities` VALUES(51, 17092622);
INSERT INTO `instance_entities` VALUES(51, 17092623);
INSERT INTO `instance_entities` VALUES(51, 17092624);
INSERT INTO `instance_entities` VALUES(51, 17092625);
INSERT INTO `instance_entities` VALUES(51, 17092626);
INSERT INTO `instance_entities` VALUES(51, 17092627);
INSERT INTO `instance_entities` VALUES(51, 17092628);
INSERT INTO `instance_entities` VALUES(51, 17093353);
INSERT INTO `instance_entities` VALUES(51, 17093354);
INSERT INTO `instance_entities` VALUES(51, 17093355);
INSERT INTO `instance_entities` VALUES(51, 17093356);
INSERT INTO `instance_entities` VALUES(51, 17093357);
INSERT INTO `instance_entities` VALUES(51, 17093358);
INSERT INTO `instance_entities` VALUES(51, 17093359);
INSERT INTO `instance_entities` VALUES(51, 17093360);
INSERT INTO `instance_entities` VALUES(51, 17093361);
INSERT INTO `instance_entities` VALUES(51, 17093362);
INSERT INTO `instance_entities` VALUES(51, 17093363);
INSERT INTO `instance_entities` VALUES(51, 17093364);
INSERT INTO `instance_entities` VALUES(51, 17093365);
INSERT INTO `instance_entities` VALUES(51, 17093366);
INSERT INTO `instance_entities` VALUES(51, 17093367);
INSERT INTO `instance_entities` VALUES(51, 17093368);
INSERT INTO `instance_entities` VALUES(51, 17093369);
INSERT INTO `instance_entities` VALUES(51, 17093370);
INSERT INTO `instance_entities` VALUES(51, 17093371);
INSERT INTO `instance_entities` VALUES(51, 17093372);
INSERT INTO `instance_entities` VALUES(51, 17093373);
INSERT INTO `instance_entities` VALUES(51, 17093374);
INSERT INTO `instance_entities` VALUES(51, 17093375);
INSERT INTO `instance_entities` VALUES(51, 17093376);
INSERT INTO `instance_entities` VALUES(51, 17093377);
INSERT INTO `instance_entities` VALUES(51, 17093378);
INSERT INTO `instance_entities` VALUES(51, 17093379);
INSERT INTO `instance_entities` VALUES(51, 17093380);
INSERT INTO `instance_entities` VALUES(51, 17093381);
INSERT INTO `instance_entities` VALUES(51, 17093382);
INSERT INTO `instance_entities` VALUES(51, 17093383);
INSERT INTO `instance_entities` VALUES(51, 17093384);
INSERT INTO `instance_entities` VALUES(51, 17093385);
INSERT INTO `instance_entities` VALUES(51, 17093386);
INSERT INTO `instance_entities` VALUES(51, 17093387);
INSERT INTO `instance_entities` VALUES(51, 17093388);
INSERT INTO `instance_entities` VALUES(51, 17093389);
INSERT INTO `instance_entities` VALUES(51, 17093390);
INSERT INTO `instance_entities` VALUES(51, 17093391);
INSERT INTO `instance_entities` VALUES(51, 17093392);
INSERT INTO `instance_entities` VALUES(51, 17093393);
INSERT INTO `instance_entities` VALUES(51, 17093394);
INSERT INTO `instance_entities` VALUES(51, 17093395);
INSERT INTO `instance_entities` VALUES(51, 17093396);
INSERT INTO `instance_entities` VALUES(51, 17093397);
INSERT INTO `instance_entities` VALUES(51, 17093398);
INSERT INTO `instance_entities` VALUES(51, 17093399);
INSERT INTO `instance_entities` VALUES(51, 17093400);
INSERT INTO `instance_entities` VALUES(51, 17093401);
INSERT INTO `instance_entities` VALUES(51, 17093402);
INSERT INTO `instance_entities` VALUES(51, 17093403);
INSERT INTO `instance_entities` VALUES(51, 17093404);
INSERT INTO `instance_entities` VALUES(51, 17093405);
INSERT INTO `instance_entities` VALUES(51, 17093406);
INSERT INTO `instance_entities` VALUES(51, 17093407);
INSERT INTO `instance_entities` VALUES(51, 17093408);
INSERT INTO `instance_entities` VALUES(51, 17093409);
INSERT INTO `instance_entities` VALUES(51, 17093410);
INSERT INTO `instance_entities` VALUES(51, 17093411);
INSERT INTO `instance_entities` VALUES(51, 17093412);
INSERT INTO `instance_entities` VALUES(51, 17093413);
INSERT INTO `instance_entities` VALUES(51, 17093414);
INSERT INTO `instance_entities` VALUES(51, 17093415);
INSERT INTO `instance_entities` VALUES(51, 17093416);

-- Ashu Talif
-- npc
INSERT INTO `instance_entities` VALUES(53, 17022979);
-- mobs
INSERT INTO `instance_entities` VALUES(53, 17022980);
INSERT INTO `instance_entities` VALUES(53, 17022981);
INSERT INTO `instance_entities` VALUES(53, 17022982);
INSERT INTO `instance_entities` VALUES(53, 17022983);
INSERT INTO `instance_entities` VALUES(53, 17022984);
INSERT INTO `instance_entities` VALUES(53, 17022985);
INSERT INTO `instance_entities` VALUES(53, 17022986);
INSERT INTO `instance_entities` VALUES(53, 17022987);
INSERT INTO `instance_entities` VALUES(53, 17022988);
INSERT INTO `instance_entities` VALUES(53, 17022989);

-- Against All Odds COR AF2
INSERT INTO `instance_entities` VALUES(54, 17022977);
INSERT INTO `instance_entities` VALUES(54, 17022978);

-- Scouting the Ashu Talif
INSERT INTO `instance_entities` VALUES(55, 17022990); -- Ashu Talif Crew (MNK)
INSERT INTO `instance_entities` VALUES(55, 17022991); -- Ashu Talif Crew (RDM)
INSERT INTO `instance_entities` VALUES(55, 17022992); -- Ashu Talif Crew (RNG)
INSERT INTO `instance_entities` VALUES(55, 17022993); -- Ashu Talif Crew (MNK)
INSERT INTO `instance_entities` VALUES(55, 17022994); -- Ashu Talif Crew (RDM)
INSERT INTO `instance_entities` VALUES(55, 17022995); -- Ashu Talif Crew (RNG)
INSERT INTO `instance_entities` VALUES(55, 17022996); -- Ashu Talif Crew (MNK)
INSERT INTO `instance_entities` VALUES(55, 17022997); -- Ashu Talif Crew (RDM)
INSERT INTO `instance_entities` VALUES(55, 17022998); -- Ashu Talif Crew (RNG)
INSERT INTO `instance_entities` VALUES(55, 17022999); -- Ashu Talif Crew (MNK)
INSERT INTO `instance_entities` VALUES(55, 17023000); -- Ashu Talif Crew (RDM)
INSERT INTO `instance_entities` VALUES(55, 17023001); -- Ashu Talif Crew (RNG)
INSERT INTO `instance_entities` VALUES(55, 17023002); -- Ashu Talif Crew (MNK)
INSERT INTO `instance_entities` VALUES(55, 17023003); -- Ashu Talif Crew (RDM)
INSERT INTO `instance_entities` VALUES(55, 17023004); -- Ashu Talif Crew (RNG)
INSERT INTO `instance_entities` VALUES(55, 17023005); -- Watch Imp
INSERT INTO `instance_entities` VALUES(55, 17023006); -- Watch Imp
INSERT INTO `instance_entities` VALUES(55, 17023007); -- Watch Imp
INSERT INTO `instance_entities` VALUES(55, 17023008); -- Watch Imp
INSERT INTO `instance_entities` VALUES(55, 17023009); -- Swiftwinged Gekko
INSERT INTO `instance_entities` VALUES(55, 17023034); -- Ancient Lockbox (Normal)
INSERT INTO `instance_entities` VALUES(55, 17023010); -- Ancient Lockbox (??? Item)
INSERT INTO `instance_entities` VALUES(55, 17023059); -- Gate: Lifeboat

-- Path of Darkness
-- mobs
INSERT INTO `instance_entities` VALUES(58, 17093132);
INSERT INTO `instance_entities` VALUES(58, 17093133);
INSERT INTO `instance_entities` VALUES(58, 17093134);
INSERT INTO `instance_entities` VALUES(58, 17093135);
INSERT INTO `instance_entities` VALUES(58, 17093136);
INSERT INTO `instance_entities` VALUES(58, 17093137);
INSERT INTO `instance_entities` VALUES(58, 17093142);
-- npc
INSERT INTO `instance_entities` VALUES(58, 17093359);
INSERT INTO `instance_entities` VALUES(58, 17093361);
INSERT INTO `instance_entities` VALUES(58, 17093423);

-- Nashmeira's Plea
-- mobs
INSERT INTO `instance_entities` VALUES(59, 17093143);
INSERT INTO `instance_entities` VALUES(59, 17093144);
INSERT INTO `instance_entities` VALUES(59, 17093145);
-- npc
INSERT INTO `instance_entities` VALUES(59, 17093423);
INSERT INTO `instance_entities` VALUES(59, 17093472);
INSERT INTO `instance_entities` VALUES(59, 17093473);
INSERT INTO `instance_entities` VALUES(59, 17093474);
INSERT INTO `instance_entities` VALUES(59, 17093475);
INSERT INTO `instance_entities` VALUES(59, 17093476);
INSERT INTO `instance_entities` VALUES(59, 17093477);
INSERT INTO `instance_entities` VALUES(59, 17093478);
INSERT INTO `instance_entities` VALUES(59, 17093479);
INSERT INTO `instance_entities` VALUES(59, 17093480);
INSERT INTO `instance_entities` VALUES(59, 17093481);
INSERT INTO `instance_entities` VALUES(59, 17093482);

-- Arrapago Remnants
-- npc
INSERT INTO `instance_entities` VALUES(65, 17080598);
INSERT INTO `instance_entities` VALUES(65, 17080970);
INSERT INTO `instance_entities` VALUES(65, 17080971);
INSERT INTO `instance_entities` VALUES(65, 17080972);
INSERT INTO `instance_entities` VALUES(65, 17080973);
INSERT INTO `instance_entities` VALUES(65, 17080974);
INSERT INTO `instance_entities` VALUES(65, 17080975);
INSERT INTO `instance_entities` VALUES(65, 17080976);
INSERT INTO `instance_entities` VALUES(65, 17080977);
INSERT INTO `instance_entities` VALUES(65, 17080978);
INSERT INTO `instance_entities` VALUES(65, 17080979);
INSERT INTO `instance_entities` VALUES(65, 17080980);
INSERT INTO `instance_entities` VALUES(65, 17080981);
INSERT INTO `instance_entities` VALUES(65, 17080982);
INSERT INTO `instance_entities` VALUES(65, 17080983);
INSERT INTO `instance_entities` VALUES(65, 17080984);
INSERT INTO `instance_entities` VALUES(65, 17080985);
INSERT INTO `instance_entities` VALUES(65, 17080986);
INSERT INTO `instance_entities` VALUES(65, 17080987);
INSERT INTO `instance_entities` VALUES(65, 17080988);
INSERT INTO `instance_entities` VALUES(65, 17080989);
INSERT INTO `instance_entities` VALUES(65, 17080990);
INSERT INTO `instance_entities` VALUES(65, 17080991);
INSERT INTO `instance_entities` VALUES(65, 17080992);
INSERT INTO `instance_entities` VALUES(65, 17080993);
-- mobs
INSERT INTO `instance_entities` VALUES(65, 17080321);
INSERT INTO `instance_entities` VALUES(65, 17080322);
INSERT INTO `instance_entities` VALUES(65, 17080323);
INSERT INTO `instance_entities` VALUES(65, 17080324);
INSERT INTO `instance_entities` VALUES(65, 17080325);
INSERT INTO `instance_entities` VALUES(65, 17080326);
INSERT INTO `instance_entities` VALUES(65, 17080327);
INSERT INTO `instance_entities` VALUES(65, 17080328);
INSERT INTO `instance_entities` VALUES(65, 17080329);
INSERT INTO `instance_entities` VALUES(65, 17080330);
INSERT INTO `instance_entities` VALUES(65, 17080331);
INSERT INTO `instance_entities` VALUES(65, 17080332);
INSERT INTO `instance_entities` VALUES(65, 17080333);
INSERT INTO `instance_entities` VALUES(65, 17080334);
INSERT INTO `instance_entities` VALUES(65, 17080335);
INSERT INTO `instance_entities` VALUES(65, 17080336);
INSERT INTO `instance_entities` VALUES(65, 17080337);
INSERT INTO `instance_entities` VALUES(65, 17080338);
INSERT INTO `instance_entities` VALUES(65, 17080339);
INSERT INTO `instance_entities` VALUES(65, 17080340);
INSERT INTO `instance_entities` VALUES(65, 17080341);
INSERT INTO `instance_entities` VALUES(65, 17080342);
INSERT INTO `instance_entities` VALUES(65, 17080343);
INSERT INTO `instance_entities` VALUES(65, 17080344);
INSERT INTO `instance_entities` VALUES(65, 17080345);
INSERT INTO `instance_entities` VALUES(65, 17080346);
INSERT INTO `instance_entities` VALUES(65, 17080347);
INSERT INTO `instance_entities` VALUES(65, 17080348);
INSERT INTO `instance_entities` VALUES(65, 17080349);
INSERT INTO `instance_entities` VALUES(65, 17080350);
INSERT INTO `instance_entities` VALUES(65, 17080351);
INSERT INTO `instance_entities` VALUES(65, 17080352);
INSERT INTO `instance_entities` VALUES(65, 17080353);
INSERT INTO `instance_entities` VALUES(65, 17080354);
INSERT INTO `instance_entities` VALUES(65, 17080355);
INSERT INTO `instance_entities` VALUES(65, 17080356);
INSERT INTO `instance_entities` VALUES(65, 17080357);
INSERT INTO `instance_entities` VALUES(65, 17080358);
INSERT INTO `instance_entities` VALUES(65, 17080359);
INSERT INTO `instance_entities` VALUES(65, 17080360);
INSERT INTO `instance_entities` VALUES(65, 17080361);
INSERT INTO `instance_entities` VALUES(65, 17080362);
INSERT INTO `instance_entities` VALUES(65, 17080363);
INSERT INTO `instance_entities` VALUES(65, 17080364);
INSERT INTO `instance_entities` VALUES(65, 17080365);
INSERT INTO `instance_entities` VALUES(65, 17080366);
INSERT INTO `instance_entities` VALUES(65, 17080367);
INSERT INTO `instance_entities` VALUES(65, 17080368);
INSERT INTO `instance_entities` VALUES(65, 17080369);
INSERT INTO `instance_entities` VALUES(65, 17080370);
INSERT INTO `instance_entities` VALUES(65, 17080371);
INSERT INTO `instance_entities` VALUES(65, 17080372);
INSERT INTO `instance_entities` VALUES(65, 17080373);
INSERT INTO `instance_entities` VALUES(65, 17080374);
INSERT INTO `instance_entities` VALUES(65, 17080375);
INSERT INTO `instance_entities` VALUES(65, 17080376);
INSERT INTO `instance_entities` VALUES(65, 17080377);
INSERT INTO `instance_entities` VALUES(65, 17080378);
INSERT INTO `instance_entities` VALUES(65, 17080379);
INSERT INTO `instance_entities` VALUES(65, 17080380);
INSERT INTO `instance_entities` VALUES(65, 17080381);
INSERT INTO `instance_entities` VALUES(65, 17080382);
INSERT INTO `instance_entities` VALUES(65, 17080383);
INSERT INTO `instance_entities` VALUES(65, 17080384);
INSERT INTO `instance_entities` VALUES(65, 17080385);
INSERT INTO `instance_entities` VALUES(65, 17080386);
INSERT INTO `instance_entities` VALUES(65, 17080387);
INSERT INTO `instance_entities` VALUES(65, 17080388);
INSERT INTO `instance_entities` VALUES(65, 17080389);
INSERT INTO `instance_entities` VALUES(65, 17080390);
INSERT INTO `instance_entities` VALUES(65, 17080391);
INSERT INTO `instance_entities` VALUES(65, 17080392);
INSERT INTO `instance_entities` VALUES(65, 17080393);
INSERT INTO `instance_entities` VALUES(65, 17080394);
INSERT INTO `instance_entities` VALUES(65, 17080395);
INSERT INTO `instance_entities` VALUES(65, 17080396);
INSERT INTO `instance_entities` VALUES(65, 17080397);
INSERT INTO `instance_entities` VALUES(65, 17080398);
INSERT INTO `instance_entities` VALUES(65, 17080399);
INSERT INTO `instance_entities` VALUES(65, 17080400);
INSERT INTO `instance_entities` VALUES(65, 17080401);
INSERT INTO `instance_entities` VALUES(65, 17080402);
INSERT INTO `instance_entities` VALUES(65, 17080403);
INSERT INTO `instance_entities` VALUES(65, 17080404);
INSERT INTO `instance_entities` VALUES(65, 17080405);
INSERT INTO `instance_entities` VALUES(65, 17080406);
INSERT INTO `instance_entities` VALUES(65, 17080407);
INSERT INTO `instance_entities` VALUES(65, 17080408);
INSERT INTO `instance_entities` VALUES(65, 17080409);
INSERT INTO `instance_entities` VALUES(65, 17080410);
INSERT INTO `instance_entities` VALUES(65, 17080411);
INSERT INTO `instance_entities` VALUES(65, 17080412);
INSERT INTO `instance_entities` VALUES(65, 17080413);
INSERT INTO `instance_entities` VALUES(65, 17080414);
INSERT INTO `instance_entities` VALUES(65, 17080415);
INSERT INTO `instance_entities` VALUES(65, 17080416);
INSERT INTO `instance_entities` VALUES(65, 17080417);
INSERT INTO `instance_entities` VALUES(65, 17080418);
INSERT INTO `instance_entities` VALUES(65, 17080419);
INSERT INTO `instance_entities` VALUES(65, 17080420);
INSERT INTO `instance_entities` VALUES(65, 17080421);
INSERT INTO `instance_entities` VALUES(65, 17080422);
INSERT INTO `instance_entities` VALUES(65, 17080423);
INSERT INTO `instance_entities` VALUES(65, 17080424);
INSERT INTO `instance_entities` VALUES(65, 17080426);
INSERT INTO `instance_entities` VALUES(65, 17080427);
INSERT INTO `instance_entities` VALUES(65, 17080428);
INSERT INTO `instance_entities` VALUES(65, 17080429);
INSERT INTO `instance_entities` VALUES(65, 17080430);
INSERT INTO `instance_entities` VALUES(65, 17080431);
INSERT INTO `instance_entities` VALUES(65, 17080432);
INSERT INTO `instance_entities` VALUES(65, 17080433);
INSERT INTO `instance_entities` VALUES(65, 17080434);
INSERT INTO `instance_entities` VALUES(65, 17080435);
INSERT INTO `instance_entities` VALUES(65, 17080436);
INSERT INTO `instance_entities` VALUES(65, 17080437);
INSERT INTO `instance_entities` VALUES(65, 17080438);
INSERT INTO `instance_entities` VALUES(65, 17080439);
INSERT INTO `instance_entities` VALUES(65, 17080440);
INSERT INTO `instance_entities` VALUES(65, 17080441);
INSERT INTO `instance_entities` VALUES(65, 17080442);
INSERT INTO `instance_entities` VALUES(65, 17080443);
INSERT INTO `instance_entities` VALUES(65, 17080444);
INSERT INTO `instance_entities` VALUES(65, 17080445);
INSERT INTO `instance_entities` VALUES(65, 17080446);
INSERT INTO `instance_entities` VALUES(65, 17080447);
INSERT INTO `instance_entities` VALUES(65, 17080448);
INSERT INTO `instance_entities` VALUES(65, 17080449);
INSERT INTO `instance_entities` VALUES(65, 17080450);
INSERT INTO `instance_entities` VALUES(65, 17080451);
INSERT INTO `instance_entities` VALUES(65, 17080452);
INSERT INTO `instance_entities` VALUES(65, 17080453);
INSERT INTO `instance_entities` VALUES(65, 17080454);
INSERT INTO `instance_entities` VALUES(65, 17080455);
INSERT INTO `instance_entities` VALUES(65, 17080456);
INSERT INTO `instance_entities` VALUES(65, 17080457);
INSERT INTO `instance_entities` VALUES(65, 17080458);
INSERT INTO `instance_entities` VALUES(65, 17080459);
INSERT INTO `instance_entities` VALUES(65, 17080460);
INSERT INTO `instance_entities` VALUES(65, 17080461);
INSERT INTO `instance_entities` VALUES(65, 17080462);
INSERT INTO `instance_entities` VALUES(65, 17080463);
INSERT INTO `instance_entities` VALUES(65, 17080464);
INSERT INTO `instance_entities` VALUES(65, 17080465);
INSERT INTO `instance_entities` VALUES(65, 17080466);
INSERT INTO `instance_entities` VALUES(65, 17080467);
INSERT INTO `instance_entities` VALUES(65, 17080468);
INSERT INTO `instance_entities` VALUES(65, 17080469);
INSERT INTO `instance_entities` VALUES(65, 17080470);
INSERT INTO `instance_entities` VALUES(65, 17080471);
INSERT INTO `instance_entities` VALUES(65, 17080472);
INSERT INTO `instance_entities` VALUES(65, 17080473);
INSERT INTO `instance_entities` VALUES(65, 17080474);
INSERT INTO `instance_entities` VALUES(65, 17080475);
INSERT INTO `instance_entities` VALUES(65, 17080476);
INSERT INTO `instance_entities` VALUES(65, 17080477);
INSERT INTO `instance_entities` VALUES(65, 17080478);
INSERT INTO `instance_entities` VALUES(65, 17080479);
INSERT INTO `instance_entities` VALUES(65, 17080480);
INSERT INTO `instance_entities` VALUES(65, 17080481);
INSERT INTO `instance_entities` VALUES(65, 17080482);
INSERT INTO `instance_entities` VALUES(65, 17080483);
INSERT INTO `instance_entities` VALUES(65, 17080484);
INSERT INTO `instance_entities` VALUES(65, 17080485);
INSERT INTO `instance_entities` VALUES(65, 17080486);
INSERT INTO `instance_entities` VALUES(65, 17080487);
INSERT INTO `instance_entities` VALUES(65, 17080488);
INSERT INTO `instance_entities` VALUES(65, 17080489);
INSERT INTO `instance_entities` VALUES(65, 17080490);
INSERT INTO `instance_entities` VALUES(65, 17080491);
INSERT INTO `instance_entities` VALUES(65, 17080492);
INSERT INTO `instance_entities` VALUES(65, 17080493);
INSERT INTO `instance_entities` VALUES(65, 17080494);
INSERT INTO `instance_entities` VALUES(65, 17080495);
INSERT INTO `instance_entities` VALUES(65, 17080496);
INSERT INTO `instance_entities` VALUES(65, 17080497);
INSERT INTO `instance_entities` VALUES(65, 17080498);
INSERT INTO `instance_entities` VALUES(65, 17080499);
INSERT INTO `instance_entities` VALUES(65, 17080500);
INSERT INTO `instance_entities` VALUES(65, 17080501);
INSERT INTO `instance_entities` VALUES(65, 17080502);
INSERT INTO `instance_entities` VALUES(65, 17080503);
INSERT INTO `instance_entities` VALUES(65, 17080504);
INSERT INTO `instance_entities` VALUES(65, 17080505);
INSERT INTO `instance_entities` VALUES(65, 17080506);
INSERT INTO `instance_entities` VALUES(65, 17080507);
INSERT INTO `instance_entities` VALUES(65, 17080508);
INSERT INTO `instance_entities` VALUES(65, 17080509);
INSERT INTO `instance_entities` VALUES(65, 17080510);
INSERT INTO `instance_entities` VALUES(65, 17080511);
INSERT INTO `instance_entities` VALUES(65, 17080512);
INSERT INTO `instance_entities` VALUES(65, 17080514);
INSERT INTO `instance_entities` VALUES(65, 17080515);
INSERT INTO `instance_entities` VALUES(65, 17080516);
INSERT INTO `instance_entities` VALUES(65, 17080517);
INSERT INTO `instance_entities` VALUES(65, 17080518);
INSERT INTO `instance_entities` VALUES(65, 17080519);
INSERT INTO `instance_entities` VALUES(65, 17080520);
INSERT INTO `instance_entities` VALUES(65, 17080521);
INSERT INTO `instance_entities` VALUES(65, 17080522);
INSERT INTO `instance_entities` VALUES(65, 17080523);
INSERT INTO `instance_entities` VALUES(65, 17080524);
INSERT INTO `instance_entities` VALUES(65, 17080525);
INSERT INTO `instance_entities` VALUES(65, 17080526);
INSERT INTO `instance_entities` VALUES(65, 17080527);
INSERT INTO `instance_entities` VALUES(65, 17080528);
INSERT INTO `instance_entities` VALUES(65, 17080529);
INSERT INTO `instance_entities` VALUES(65, 17080530);
INSERT INTO `instance_entities` VALUES(65, 17080531);
INSERT INTO `instance_entities` VALUES(65, 17080532);
INSERT INTO `instance_entities` VALUES(65, 17080533);
INSERT INTO `instance_entities` VALUES(65, 17080534);
INSERT INTO `instance_entities` VALUES(65, 17080535);
INSERT INTO `instance_entities` VALUES(65, 17080536);
INSERT INTO `instance_entities` VALUES(65, 17080537);
INSERT INTO `instance_entities` VALUES(65, 17080538);
INSERT INTO `instance_entities` VALUES(65, 17080539);
INSERT INTO `instance_entities` VALUES(65, 17080540);
INSERT INTO `instance_entities` VALUES(65, 17080541);
INSERT INTO `instance_entities` VALUES(65, 17080542);
INSERT INTO `instance_entities` VALUES(65, 17080543);
INSERT INTO `instance_entities` VALUES(65, 17080544);
INSERT INTO `instance_entities` VALUES(65, 17080545);
INSERT INTO `instance_entities` VALUES(65, 17080546);
INSERT INTO `instance_entities` VALUES(65, 17080547);
INSERT INTO `instance_entities` VALUES(65, 17080548);
INSERT INTO `instance_entities` VALUES(65, 17080549);
INSERT INTO `instance_entities` VALUES(65, 17080550);
INSERT INTO `instance_entities` VALUES(65, 17080551);
INSERT INTO `instance_entities` VALUES(65, 17080552);
INSERT INTO `instance_entities` VALUES(65, 17080553);
INSERT INTO `instance_entities` VALUES(65, 17080554);
INSERT INTO `instance_entities` VALUES(65, 17080555);
INSERT INTO `instance_entities` VALUES(65, 17080556);
INSERT INTO `instance_entities` VALUES(65, 17080557);
INSERT INTO `instance_entities` VALUES(65, 17080558);
INSERT INTO `instance_entities` VALUES(65, 17080559);
INSERT INTO `instance_entities` VALUES(65, 17080560);
INSERT INTO `instance_entities` VALUES(65, 17080561);
INSERT INTO `instance_entities` VALUES(65, 17080562);
INSERT INTO `instance_entities` VALUES(65, 17080563);
INSERT INTO `instance_entities` VALUES(65, 17080564);
INSERT INTO `instance_entities` VALUES(65, 17080565);
INSERT INTO `instance_entities` VALUES(65, 17080566);
INSERT INTO `instance_entities` VALUES(65, 17080567);
INSERT INTO `instance_entities` VALUES(65, 17080568);
INSERT INTO `instance_entities` VALUES(65, 17080569);
INSERT INTO `instance_entities` VALUES(65, 17080570);
INSERT INTO `instance_entities` VALUES(65, 17080571);
INSERT INTO `instance_entities` VALUES(65, 17080572);
INSERT INTO `instance_entities` VALUES(65, 17080573);
INSERT INTO `instance_entities` VALUES(65, 17080574);
INSERT INTO `instance_entities` VALUES(65, 17080575);
INSERT INTO `instance_entities` VALUES(65, 17080576);
INSERT INTO `instance_entities` VALUES(65, 17080577);
INSERT INTO `instance_entities` VALUES(65, 17080578);
INSERT INTO `instance_entities` VALUES(65, 17080579);
INSERT INTO `instance_entities` VALUES(65, 17080580);
INSERT INTO `instance_entities` VALUES(65, 17080581);
INSERT INTO `instance_entities` VALUES(65, 17080582);
INSERT INTO `instance_entities` VALUES(65, 17080585);
INSERT INTO `instance_entities` VALUES(65, 17080586);
INSERT INTO `instance_entities` VALUES(65, 17080596);
INSERT INTO `instance_entities` VALUES(65, 17080597);

-- Shades of Vengeance
INSERT INTO `instance_entities` VALUES(79, 17006754);
INSERT INTO `instance_entities` VALUES(79, 17006755);
INSERT INTO `instance_entities` VALUES(79, 17006756);
INSERT INTO `instance_entities` VALUES(79, 17006757);
INSERT INTO `instance_entities` VALUES(79, 17006758);
INSERT INTO `instance_entities` VALUES(79, 17006759);
INSERT INTO `instance_entities` VALUES(79, 17006760);
INSERT INTO `instance_entities` VALUES(79, 17006761);
INSERT INTO `instance_entities` VALUES(79, 17006762);
INSERT INTO `instance_entities` VALUES(79, 17006763);

-- Seeing Blood Red
INSERT INTO `instance_entities` VALUES(89, 17158191);

-- Light In The Darkness
INSERT INTO `instance_entities` VALUES (90, 17158192);
INSERT INTO `instance_entities` VALUES (90, 17158193);
INSERT INTO `instance_entities` VALUES (90, 17158194);
INSERT INTO `instance_entities` VALUES (90, 17158195);
INSERT INTO `instance_entities` VALUES (90, 17158196);
INSERT INTO `instance_entities` VALUES (90, 17158197);
INSERT INTO `instance_entities` VALUES (90, 17158198);
INSERT INTO `instance_entities` VALUES (90, 17158199);
INSERT INTO `instance_entities` VALUES (90, 17158200);
INSERT INTO `instance_entities` VALUES (90, 17158201); -- Saphrire Quad
INSERT INTO `instance_entities` VALUES (90, 17158387);
INSERT INTO `instance_entities` VALUES (90, 17158388);
INSERT INTO `instance_entities` VALUES (90, 17158389);
INSERT INTO `instance_entities` VALUES (90, 17158390);
INSERT INTO `instance_entities` VALUES (90, 17158391);
INSERT INTO `instance_entities` VALUES (90, 17158392);
INSERT INTO `instance_entities` VALUES (90, 17158393);
INSERT INTO `instance_entities` VALUES (90, 17158394);
INSERT INTO `instance_entities` VALUES (90, 17158395);
INSERT INTO `instance_entities` VALUES (90, 17158396);
INSERT INTO `instance_entities` VALUES (90, 17158397);

-- A Manifest Problem
INSERT INTO `instance_entities` VALUES(96, 17305662); -- Laa_Yaku_the_Austere
INSERT INTO `instance_entities` VALUES(96, 17305921); -- Door
INSERT INTO `instance_entities` VALUES(96, 17305647);
INSERT INTO `instance_entities` VALUES(96, 17305648);
INSERT INTO `instance_entities` VALUES(96, 17305649);
INSERT INTO `instance_entities` VALUES(96, 17305650);
INSERT INTO `instance_entities` VALUES(96, 17305651);
INSERT INTO `instance_entities` VALUES(96, 17305652);
INSERT INTO `instance_entities` VALUES(96, 17305653);
INSERT INTO `instance_entities` VALUES(96, 17305654);
INSERT INTO `instance_entities` VALUES(96, 17305655);
INSERT INTO `instance_entities` VALUES(96, 17305656);
INSERT INTO `instance_entities` VALUES(96, 17305657);
INSERT INTO `instance_entities` VALUES(96, 17305658);
INSERT INTO `instance_entities` VALUES(96, 17305659);
INSERT INTO `instance_entities` VALUES(96, 17305660);
INSERT INTO `instance_entities` VALUES(96, 17305661);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instance_entities`
--
ALTER TABLE `instance_entities`
  ADD PRIMARY KEY(`instanceid`, `id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

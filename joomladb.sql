-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2020 at 09:48 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team012`
--

-- --------------------------------------------------------

--
-- Table structure for table `Availability`
--

CREATE TABLE `Availability` (
  `PersonnelID` int(6) NOT NULL,
  `Monday` set('true','false','','') NOT NULL DEFAULT 'true',
  `Tuseday` set('true','false','','') NOT NULL DEFAULT 'true',
  `Wednesday` set('true','false','','') NOT NULL DEFAULT 'true',
  `Thursday` set('true','false','','') NOT NULL DEFAULT 'true',
  `Friday` set('true','false','','') NOT NULL DEFAULT 'true',
  `Saturday` set('true','false','','') NOT NULL DEFAULT 'false',
  `Sunday` set('true','false','','') NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Availability`
--

INSERT INTO `Availability` (`PersonnelID`, `Monday`, `Tuseday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
(13, 'true', 'true', 'true', 'false', 'true', 'true', 'false'),
(740690, 'true', 'false', 'true', 'false', 'true', 'true', 'false'),
(740695, 'true', 'true', 'true', 'true', 'true', 'false', 'false'),
(740700, 'false', 'true', 'true', 'true', 'true', 'false', 'false'),
(740705, 'true', 'true', 'true', 'true', 'false', 'false', 'false'),
(740710, 'true', 'true', 'true', 'true', 'true', 'true', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `CallLog`
--

CREATE TABLE `CallLog` (
  `ProblemID` int(6) DEFAULT NULL,
  `CallerID` int(6) DEFAULT NULL,
  `OperatorID` int(6) DEFAULT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Site` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to log all calls made to the helpdesk';

--
-- Dumping data for table `CallLog`
--

INSERT INTO `CallLog` (`ProblemID`, `CallerID`, `OperatorID`, `DateTime`, `Site`, `Country`) VALUES
(203, 12, 346890, '2020-02-15 03:49:51', 'London', 'United Kingdom'),
(204, 999999, 346890, '2020-02-15 04:32:12', 'London', 'United Kingdom'),
(208, 12, 346890, '2020-02-15 17:11:40', 'London', 'United Kingdom'),
(208, 999999, 346890, '2020-02-15 17:12:47', 'London', 'United Kingdom'),
(209, 999999, 346890, '2020-02-16 14:10:52', 'London', 'United Kingdom'),
(210, 12, 346890, '2020-02-16 20:41:13', 'London', 'United Kingdom'),
(211, 12, 346890, '2020-02-17 10:20:44', 'London', 'United Kingdom'),
(212, 12, 346890, '2020-02-17 10:21:09', 'London', 'United Kingdom'),
(213, 12, 346890, '2020-02-17 10:25:06', 'London', 'United Kingdom'),
(214, 13, 346890, '2020-02-17 11:14:25', 'London', 'United Kingdom'),
(215, 12, 346890, '2020-02-17 11:23:55', 'London', 'United Kingdom'),
(216, 12, 346890, '2020-02-17 11:36:34', 'London', 'United Kingdom'),
(217, 999999, 346890, '2020-02-17 12:12:06', 'London', 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `Hardware`
--

CREATE TABLE `Hardware` (
  `SerialNumber` varchar(30) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Make` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Hardware`
--

INSERT INTO `Hardware` (`SerialNumber`, `Type`, `Make`) VALUES
('4CE0460D0G', 'Laptop', 'HP'),
('7CF5130WF2', 'Mouse', 'HP'),
('8B92901N048SA', 'Mouse', 'Apple'),
('C02J604Af5H9', 'Laptop', 'Apple'),
('C02LT3SLFH0', 'Desktop', 'Apple'),
('DGKFP0UTDHJ', 'Desktop', 'Apple'),
('MXL41616H8', 'Desktop', 'HP'),
('W8810X481AX', 'Desktop', 'Apple'),
('X5CL011774', 'Printer', 'Epson');

-- --------------------------------------------------------

--
-- Table structure for table `LogIn`
--

CREATE TABLE `LogIn` (
  `PersonnelID` int(6) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing user log in credentials';

--
-- Dumping data for table `LogIn`
--

INSERT INTO `LogIn` (`PersonnelID`, `UserName`, `Password`) VALUES
(12, 'User', 'team12'),
(13, 'John', 'team12'),
(123456, 'Hannah', 'team12'),
(234567, 'Dom', 'team12'),
(346890, 'admin', 'team12'),
(574005, 'operator', 'team12'),
(574010, 'operator2', 'team12'),
(740690, 'specialist', 'team12'),
(740695, 'specialist2', 'team12'),
(740700, 'specialist3', 'team12'),
(740705, 'specialist4', 'team12'),
(740710, 'specialist5', 'team12'),
(999999, 'JohnDoe', 'team12');

-- --------------------------------------------------------

--
-- Table structure for table `Notes`
--

CREATE TABLE `Notes` (
  `ProblemID` int(6) NOT NULL,
  `PersonnelID` int(6) NOT NULL,
  `Note` varchar(1000) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Notes`
--

INSERT INTO `Notes` (`ProblemID`, `PersonnelID`, `Note`, `DateTime`) VALUES
(158, 12, 'Checking the problem', '2020-02-09 13:15:27'),
(158, 12, 'Problem is being processed', '2020-02-09 19:12:05'),
(158, 12, 'Problem will be solved as soon as possible', '2020-02-09 21:12:50'),
(158, 346890, 'The problem is in the process of being solved', '2020-02-09 21:41:25'),
(158, 346890, 'The problem is in the process of being solved', '2020-02-09 21:51:28'),
(158, 346890, 'Having issues while solving problem', '2020-02-09 21:52:17'),
(159, 346890, 'Massi has called regarding this problem', '2020-02-09 23:48:55'),
(165, 346890, 'A new solution has been uploaded for this problem. <a href=\"SolutionView.php?ProblemID=165\">View</a>', '2020-02-11 17:14:25'),
(157, 740690, 'The problem will be solved as soon as possible', '2020-02-11 21:30:59'),
(157, 740690, 'The problem is in the process of being solved', '2020-02-11 21:35:20'),
(208, 346890, 'John Doe has called regarding this problem', '2020-02-15 17:12:47'),
(209, 999999, 'I would also like to mention that it sometimes crashes when I attempt to use the insert functions', '2020-02-16 18:22:17'),
(209, 346890, 'This problem has been reassigned to Peter Blackshear', '2020-02-17 01:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `Notification`
--

CREATE TABLE `Notification` (
  `No` int(6) NOT NULL,
  `SenderlD` int(6) NOT NULL,
  `ReciverID` int(6) NOT NULL,
  `ProblemID` int(6) NOT NULL,
  `Notification` varchar(1000) NOT NULL,
  `Site` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `DateNotification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NotificationType` set('Solution','Pending','Problem','Specialist','General') DEFAULT NULL,
  `NotificationSubType` set('Accept','Fail','Problem','Solution') DEFAULT NULL,
  `SolutionID` int(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Notification`
--

INSERT INTO `Notification` (`No`, `SenderlD`, `ReciverID`, `ProblemID`, `Notification`, `Site`, `Country`, `DateNotification`, `NotificationType`, `NotificationSubType`, `SolutionID`) VALUES
(389, 346890, 12, 200, 'Solution 99 has successfully resolved problem200', 'London', 'United Kingdom', '2020-02-14 15:48:21', 'Solution', 'Accept', 99),
(390, 346890, 740695, 200, 'Solution 99 has successfully resolved problem200', 'London', 'United Kingdom', '2020-02-14 15:48:21', 'Solution', 'Accept', 99),
(391, 346890, 0, 200, 'Solution 99 has successfully resolved problem200', 'London', 'United Kingdom', '2020-02-14 15:48:21', 'Solution', 'Accept', 99),
(393, 346890, 574005, 200, 'Solution 99 has successfully resolved problem200', 'London', 'United Kingdom', '2020-02-14 15:48:21', 'Solution', 'Accept', 99),
(394, 346890, 574015, 200, 'Solution 99 has successfully resolved problem200', 'London', 'United Kingdom', '2020-02-14 15:48:21', 'Solution', 'Accept', 99),
(431, 346890, 12, 201, 'Solution 100 has successfully resolved problem201', 'London', 'United Kingdom', '2020-02-14 17:20:27', 'Solution', 'Accept', 100),
(433, 346890, 740695, 201, 'Solution 100 has successfully resolved problem201', 'London', 'United Kingdom', '2020-02-14 17:20:27', 'Solution', 'Accept', 100),
(434, 346890, 0, 201, 'Solution 100 has successfully resolved problem201', 'London', 'United Kingdom', '2020-02-14 17:20:27', 'Solution', 'Accept', 100),
(436, 346890, 574005, 201, 'Solution 100 has successfully resolved problem201', 'London', 'United Kingdom', '2020-02-14 17:20:27', 'Solution', 'Accept', 100),
(437, 346890, 574015, 201, 'Solution 100 has successfully resolved problem201', 'London', 'United Kingdom', '2020-02-14 17:20:27', 'Solution', 'Accept', 100),
(462, 346890, 12, 202, 'Solution 102 has successfully resolved problem202', 'London', 'United Kingdom', '2020-02-14 22:18:05', 'Solution', 'Accept', 102),
(463, 346890, 740690, 202, 'Solution 102 has successfully resolved problem202', 'London', 'United Kingdom', '2020-02-14 22:18:05', 'Solution', 'Accept', 102),
(464, 346890, 0, 202, 'Solution 102 has successfully resolved problem202', 'London', 'United Kingdom', '2020-02-14 22:18:05', 'Solution', 'Accept', 102),
(465, 346890, 123456, 202, 'Solution 102 has successfully resolved problem202', 'London', 'United Kingdom', '2020-02-14 22:18:05', 'Solution', 'Accept', 102),
(466, 346890, 234567, 202, 'Solution 102 has successfully resolved problem202', 'London', 'United Kingdom', '2020-02-14 22:18:05', 'Solution', 'Accept', 102),
(468, 346890, 574005, 202, 'Solution 102 has successfully resolved problem202', 'London', 'United Kingdom', '2020-02-14 22:18:05', 'Solution', 'Accept', 102),
(469, 346890, 574015, 202, 'Solution 102 has successfully resolved problem202', 'London', 'United Kingdom', '2020-02-14 22:18:05', 'Solution', 'Accept', 102),
(553, 346890, 123456, 209, 'A new problem has been reported by John Doe', 'London', 'United Kingdom', '2020-02-16 14:10:52', 'Problem', NULL, 0),
(554, 346890, 234567, 209, 'A new problem has been reported by John Doe', 'London', 'United Kingdom', '2020-02-16 14:10:52', 'Problem', NULL, 0),
(556, 346890, 574005, 209, 'A new problem has been reported by John Doe', 'London', 'United Kingdom', '2020-02-16 14:10:52', 'Problem', NULL, 0),
(557, 346890, 574015, 209, 'A new problem has been reported by John Doe', 'London', 'United Kingdom', '2020-02-16 14:10:52', 'Problem', NULL, 0),
(559, 0, 0, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(560, 0, 12, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(561, 0, 13, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(562, 0, 123456, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(563, 0, 234567, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(565, 0, 574005, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(566, 0, 574015, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(567, 0, 740695, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(568, 0, 740705, 208, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-16 18:24:04', 'General', NULL, 0),
(569, 346890, 740710, 210, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-16 20:41:13', 'Problem', NULL, 0),
(570, 346890, 0, 210, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-16 20:41:13', 'Problem', NULL, 0),
(571, 346890, 123456, 210, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-16 20:41:13', 'Problem', NULL, 0),
(572, 346890, 234567, 210, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-16 20:41:13', 'Problem', NULL, 0),
(574, 346890, 574005, 210, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-16 20:41:13', 'Problem', NULL, 0),
(575, 346890, 574015, 210, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-16 20:41:13', 'Problem', NULL, 0),
(576, 0, 12, 210, 'You have reported a new problem', 'London', 'United Kingdom', '2020-02-16 20:41:13', 'Problem', NULL, 0),
(577, 0, 740705, 209, 'You have requested for problem 209 to be reassigned', 'London', 'United Kingdom', '2020-02-17 01:50:45', 'Specialist', NULL, 0),
(578, 740705, 0, 209, 'Peter Blackshear would like problem 209 to be reassigned', 'London', 'United Kingdom', '2020-02-17 01:50:45', 'Specialist', NULL, 0),
(579, 740705, 123456, 209, 'Peter Blackshear would like problem 209 to be reassigned', 'London', 'United Kingdom', '2020-02-17 01:50:45', 'Specialist', NULL, 0),
(580, 740705, 234567, 209, 'Peter Blackshear would like problem 209 to be reassigned', 'London', 'United Kingdom', '2020-02-17 01:50:45', 'Specialist', NULL, 0),
(582, 740705, 574005, 209, 'Peter Blackshear would like problem 209 to be reassigned', 'London', 'United Kingdom', '2020-02-17 01:50:45', 'Specialist', NULL, 0),
(583, 740705, 574015, 209, 'Peter Blackshear would like problem 209 to be reassigned', 'London', 'United Kingdom', '2020-02-17 01:50:45', 'Specialist', NULL, 0),
(584, 346890, 740705, 209, 'Problem 209 has been successfully reassigned', 'London', 'United Kingdom', '2020-02-17 01:51:11', 'Specialist', 'Accept', 0),
(585, 346890, 740705, 209, 'Problem 209 has been reassigned to you', 'London', 'United Kingdom', '2020-02-17 01:51:11', 'Problem', NULL, 0),
(586, 346890, 740695, 211, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:20:44', 'Problem', NULL, 0),
(587, 346890, 0, 211, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:20:44', 'Problem', NULL, 0),
(588, 346890, 123456, 211, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:20:44', 'Problem', NULL, 0),
(589, 346890, 234567, 211, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:20:44', 'Problem', NULL, 0),
(591, 346890, 574005, 211, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:20:44', 'Problem', NULL, 0),
(592, 346890, 574015, 211, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:20:44', 'Problem', NULL, 0),
(593, 0, 12, 211, 'You have reported a new problem', 'London', 'United Kingdom', '2020-02-17 10:20:44', 'Problem', NULL, 0),
(594, 346890, 740690, 212, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:21:09', 'Problem', NULL, 0),
(595, 346890, 0, 212, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:21:09', 'Problem', NULL, 0),
(596, 346890, 123456, 212, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:21:09', 'Problem', NULL, 0),
(597, 346890, 234567, 212, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:21:09', 'Problem', NULL, 0),
(599, 346890, 574005, 212, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:21:09', 'Problem', NULL, 0),
(600, 346890, 574015, 212, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:21:09', 'Problem', NULL, 0),
(601, 0, 12, 212, 'You have reported a new problem', 'London', 'United Kingdom', '2020-02-17 10:21:09', 'Problem', NULL, 0),
(602, 346890, 740695, 213, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:25:06', 'Problem', NULL, 0),
(603, 346890, 0, 213, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:25:06', 'Problem', NULL, 0),
(604, 346890, 123456, 213, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:25:06', 'Problem', NULL, 0),
(605, 346890, 234567, 213, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:25:06', 'Problem', NULL, 0),
(607, 346890, 574005, 213, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:25:06', 'Problem', NULL, 0),
(608, 346890, 574015, 213, 'A new problem has been reported by Massi', 'London', 'United Kingdom', '2020-02-17 10:25:06', 'Problem', NULL, 0),
(609, 0, 12, 213, 'You have reported a new problem', 'London', 'United Kingdom', '2020-02-17 10:25:06', 'Problem', NULL, 0),
(610, 0, 0, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(611, 0, 12, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(612, 0, 13, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(613, 0, 123456, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(614, 0, 234567, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(616, 0, 574005, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(617, 0, 574015, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(618, 0, 740695, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(619, 0, 740705, 213, 'A problem has been reported that may affect you. Please click the view button below.', 'London', 'United Kingdom', '2020-02-17 10:25:09', 'General', NULL, 0),
(628, 0, 740690, 212, 'You have requested for problem 212 to be reassigned', 'East Weston', 'United Kingdom', '2020-02-19 04:58:34', 'Specialist', NULL, 0),
(629, 740690, 340000, 212, 'Davis Fulton would like problem 212 to be reassigned', 'East Weston', 'United Kingdom', '2020-02-19 04:58:34', 'Specialist', NULL, 0),
(630, 740690, 340001, 212, 'Davis Fulton would like problem 212 to be reassigned', 'East Weston', 'United Kingdom', '2020-02-19 04:58:34', 'Specialist', NULL, 0),
(631, 740690, 340002, 212, 'Davis Fulton would like problem 212 to be reassigned', 'East Weston', 'United Kingdom', '2020-02-19 04:58:34', 'Specialist', NULL, 0),
(632, 0, 740695, 213, 'You have requested for problem 213 to be reassigned', 'London', 'United Kingdom', '2020-02-19 04:59:15', 'Specialist', NULL, 0),
(633, 740695, 0, 213, 'Clara Higginson would like problem 213 to be reassigned', 'London', 'United Kingdom', '2020-02-19 04:59:15', 'Specialist', NULL, 0),
(634, 740695, 123456, 213, 'Clara Higginson would like problem 213 to be reassigned', 'London', 'United Kingdom', '2020-02-19 04:59:15', 'Specialist', NULL, 0),
(635, 740695, 234567, 213, 'Clara Higginson would like problem 213 to be reassigned', 'London', 'United Kingdom', '2020-02-19 04:59:15', 'Specialist', NULL, 0),
(636, 740695, 346890, 213, 'Clara Higginson would like problem 213 to be reassigned', 'London', 'United Kingdom', '2020-02-19 04:59:15', 'Specialist', NULL, 0),
(637, 740695, 574005, 213, 'Clara Higginson would like problem 213 to be reassigned', 'London', 'United Kingdom', '2020-02-19 04:59:15', 'Specialist', NULL, 0),
(638, 740695, 574015, 213, 'Clara Higginson would like problem 213 to be reassigned', 'London', 'United Kingdom', '2020-02-19 04:59:15', 'Specialist', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Personnel`
--

CREATE TABLE `Personnel` (
  `PersonnelID` int(6) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `JobTitle` varchar(30) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `Site` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing the details of all personnel in the company';

--
-- Dumping data for table `Personnel`
--

INSERT INTO `Personnel` (`PersonnelID`, `FullName`, `JobTitle`, `Department`, `PhoneNumber`, `Site`, `Country`) VALUES
(0, 'Operator', 'Operator', 'IT', '231231', 'London', 'United Kingdom'),
(12, 'Massi', 'User', 'IT', '01231231', 'London', 'United Kingdom'),
(13, 'John', 'Specialist', 'IT', '312312312', 'London', 'United Kingdom'),
(123456, 'Hannah Marks', 'Admin', 'IT', '07550821000', 'London', 'United Kingdom'),
(234567, 'Dominika Pabich', 'Operator', 'IT', '48573029586', 'London', 'United Kingdom'),
(340000, 'Holden Magroin', 'Operator', 'IT', '07938574234', 'East Weston', 'United Kingdom'),
(340001, 'Ben Dover', 'Operator', 'IT', '07456234543', 'East Weston', 'United Kingdom'),
(340002, 'Judy Swallows', 'Admin', 'IT', '07687940333', 'East Weston', 'United Kingdom'),
(346890, 'Christy Downes', 'Admin', 'IT', '07333444555', 'London', 'United Kingdom'),
(574005, 'Joey Schurg', 'Operator', 'IT', '07293848104', 'London', 'United Kingdom'),
(574010, 'Willian Borba', 'Operator', 'IT', '07857535679', 'Berlin', 'Germany'),
(574015, 'Alice Innis', 'Operator', 'IT', '07999000111', 'London', 'United Kingdom'),
(704004, 'Fred Miller', 'Specialist', 'IT', '07876547659', 'Tokyo', 'Japan'),
(740000, 'Hiro Hamada', 'Specialist', 'IT', '07119619664', 'Tokyo', 'Japan'),
(740001, 'Tadashi Hamada', 'Specialist', 'IT', '07126598356', 'Tokyo', 'Japan'),
(740002, 'Gogo Tomago', 'Specialist', 'IT', '0738572684', 'Tokyo', 'Japan'),
(740003, 'Honey Lemon', 'Specialist', 'IT', '0748579384', 'Tokyo', 'Japan'),
(740005, 'Robert Callaghan', 'Specialist', 'IT', '07324657350', 'Tokyo', 'Japan'),
(740006, 'Wasabi Wayans', 'Specialist', 'IT', '07845325647', 'Tokyo', 'Japan'),
(740007, 'Alistair Krei', 'Specialist', 'IT', '07453786928', 'Tokyo', 'Japan'),
(740008, 'Peter Ennis', 'Specialist', 'IT', '07847563451', 'East Weston', 'United Kingdom'),
(740009, 'Richard Pound', 'Specialist', 'IT', '07854634652', 'East Weston', 'United Kingdom'),
(740010, 'Mike Wiener', 'Specialist', 'IT', '07546321000', 'East Weston', 'United Kingdom'),
(740011, 'Bud Light', 'Specialist', 'IT', '07453897000', 'East Weston', 'United Kingdom'),
(740012, 'Brock Lee', 'Specialist', 'IT', '07483767289', 'East Weston', 'United Kingdom'),
(740690, 'Davis Fulton', 'Specialist', 'IT', '07666777888', 'East Weston', 'United Kingdom'),
(740695, 'Clara Higginson', 'Specialist', 'IT', '07394857104', 'London', 'United Kingdom'),
(740700, 'Armando Degarmo', 'Specialist', 'IT', '07482938471', 'East Weston', 'United Kingdom'),
(740705, 'Peter Blackshear', 'Specialist', 'IT', '07482923491', 'London', 'United Kingdom'),
(740710, 'Bert Mier', 'Specialist', 'IT', '07583929540', 'East Weston', 'United Kingdom'),
(999999, 'John Doe', 'User', 'Sales', '07837465123', 'London', 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `Problem Categories`
--

CREATE TABLE `Problem Categories` (
  `Category ID` int(2) NOT NULL,
  `Main Category` varchar(20) NOT NULL,
  `Sub Category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Problem Categories`
--

INSERT INTO `Problem Categories` (`Category ID`, `Main Category`, `Sub Category`) VALUES
(1, 'Hardware', NULL),
(2, 'Software', NULL),
(3, 'Anti-Virus', NULL),
(4, 'Network', NULL),
(5, 'Hardware', 'Printer'),
(6, 'Software', 'Microsoft Word'),
(7, 'Anti-Virus', 'Norton'),
(8, 'Network', 'Internet Connection'),
(11, 'Anti-Virus', 'Windows Defender'),
(12, 'Software', 'Autodesk AutoCAD');

-- --------------------------------------------------------

--
-- Table structure for table `Problems`
--

CREATE TABLE `Problems` (
  `ProblemID` int(6) NOT NULL,
  `ProblemCategory` varchar(60) DEFAULT NULL,
  `CallerID` int(6) DEFAULT NULL,
  `ProblemDescription` varchar(1000) DEFAULT NULL,
  `Hardware` varchar(50) DEFAULT NULL,
  `Software` varchar(50) DEFAULT NULL,
  `OperatingSystem` varchar(30) DEFAULT NULL,
  `SpecialistID` int(6) DEFAULT NULL,
  `DateReported` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Site` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to log all unresolved problems';

--
-- Dumping data for table `Problems`
--

INSERT INTO `Problems` (`ProblemID`, `ProblemCategory`, `CallerID`, `ProblemDescription`, `Hardware`, `Software`, `OperatingSystem`, `SpecialistID`, `DateReported`, `Site`, `Country`) VALUES
(203, 'Hardware', 12, 'The Monitor has a large black spot in the lower right corner. The pixels around it also appear green.', 'MON-76854', '', 'Windows 10 Home', 13, '2020-02-15 03:49:51', 'London', 'United Kingdom'),
(204, 'Anti-Virus', 999999, 'Norton Anti Virus will not uninstal from pc. Norton was installed prior to purchase as a trial version. John (the user) is now unable to remove the software after this trail has expired.', 'PPC-JDOE-001', 'Norton Anti-Virus', 'Windows 10 Home', 740695, '2020-02-15 04:32:12', 'London', 'United Kingdom'),
(208, 'Hardware_Printer', 12, 'Printer jammed while running. It now cannot feed paper through properly.', 'PRT-BRK-005', '', '', 13, '2020-02-15 17:11:40', 'London', 'United Kingdom'),
(209, 'Software', 999999, 'All microsoft office products are extremely slow to load and often crash when the document is saved or autosaved.', 'WPC-JDO-1', 'Microsoft Office', 'Windows 10 Professional', 740705, '2020-02-16 14:10:52', 'London', 'United Kingdom'),
(210, 'Network_Internet Connection', 12, 'Laptop will not connect to the internet after a system update', 'PLPT-MSI-RZR', '', 'Windows 10 Home', 740710, '2020-02-16 20:41:13', 'London', 'United Kingdom'),
(211, 'Anti-Virus', 12, 'Norton Anti-Virus being slow', '4CE0460D0G', 'Norton Anti-Virus', 'Windows 10 Professional', 740695, '2020-02-17 10:20:44', 'London', 'United Kingdom'),
(212, 'Anti-Virus', 12, 'Norton Anti Virus crashes when starting up', 'C02LT3SLFH0', 'Norton Anti-Virus', 'MacOS', 740690, '2020-02-17 10:21:09', 'London', 'United Kingdom'),
(213, 'Anti-Virus', 12, 'Norton Anti-Virus is crashing ', 'C02LT3SLFH0', 'Norton Anti-Virus', 'MacOS', 740695, '2020-02-17 10:25:06', 'London', 'United Kingdom'),
(214, 'Hardware', 13, 'Laptop doesn\'t power on anymore', 'PLPT-MSI-RZR', NULL, 'Windows 10 Home', 740710, '2020-02-17 11:14:25', 'London', 'United Kingdom'),
(215, 'Software', 12, 'Microsoft Office is crashing when opening', 'MON-76854', 'Microsoft Office', 'Windows 10 Home', 574010, '2020-02-17 11:23:55', 'London', 'United Kingdom'),
(216, 'Software', 12, 'Autodesk AutoCAD is being very slow', '4CE0460D0G', 'Autodesk AutoCAD', 'Windows 10 Professional', 740705, '2020-02-17 11:36:34', 'London', 'United Kingdom'),
(217, 'Network_Internet Connection', 999999, 'Internet Connection is very slow', 'C02J604Af5H9', NULL, 'MacOS', 740710, '2020-02-17 12:12:06', 'London', 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `ReassignLog`
--

CREATE TABLE `ReassignLog` (
  `ProblemID` int(6) NOT NULL,
  `OriginalSpecialist` int(6) NOT NULL,
  `NewSpecialist` int(6) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ReassignLog`
--

INSERT INTO `ReassignLog` (`ProblemID`, `OriginalSpecialist`, `NewSpecialist`, `DateTime`) VALUES
(138, 13, 740700, '2020-02-13 21:51:28'),
(181, 740695, 740690, '2020-02-13 21:55:18'),
(209, 740705, 740705, '2020-02-17 01:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `Solutions`
--

CREATE TABLE `Solutions` (
  `SolutionID` int(6) NOT NULL,
  `ProblemID` int(6) NOT NULL,
  `ProblemCategory` set('Hardware','Software','Anti-Virus','Network') DEFAULT NULL,
  `Status` set('Pending','Accepted','Failed') CHARACTER SET utf8 DEFAULT 'Pending',
  `ProblemDescription` varchar(1000) DEFAULT NULL,
  `SolutionDescription` varchar(1000) DEFAULT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Site` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `SubmittedBy` int(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Solutions`
--

INSERT INTO `Solutions` (`SolutionID`, `ProblemID`, `ProblemCategory`, `Status`, `ProblemDescription`, `SolutionDescription`, `DateTime`, `Site`, `Country`, `SubmittedBy`) VALUES
(19, 111, 'Hardware', 'Accepted', 'Monitor Black Screen', 'Replaced the monitor power cable. Turned on the monitor and the monitor displayed image.', '2019-11-13 12:37:33', 'Berlin', 'Germany', 0),
(20, 112, 'Hardware', 'Accepted', 'The monitor is not displaying anything black screen', 'Turned on the computer and repeatedly pressed the F10 key for eight seconds.\r\nPressed the Down arrow three times. \r\nPress the Enter key two times and the computer restarts. the monitor displays image', '2019-11-13 12:40:52', 'Berlin', 'Germany', 0),
(21, 113, 'Network', 'Accepted', 'the computer is not connecting to internet', 'Restarted the computer and confirmed that the device is not connected to any network.\r\nRun the Windows network troubleshooter and the internet is connected.', '2019-11-13 12:46:52', 'Berlin', 'Germany', 0),
(22, 114, 'Network', 'Accepted', 'No internet connection ', 'The computer did not have an internet connection because the wireless drivers were not updated. I have downloaded and installed updated version of drivers and it worked.', '2019-11-13 12:49:15', 'Berlin', 'Germany', 0),
(23, 115, 'Software', 'Accepted', 'The computer does not have Microsoft Word installed', 'I have installed the latest version of Microsoft Word in the computer tested it', '2019-11-13 12:53:45', 'Berlin', 'Germany', 0),
(24, 116, 'Software', 'Accepted', 'I can not find outlook ', 'Latest version of Outlook has been isntalled in the computer and tested. MS Outlook is now fully functional.', '2019-11-13 12:55:15', 'Berlin', 'Germany', 0),
(25, 117, 'Anti-Virus', 'Accepted', 'The system is too slow', 'I have installed Norton Anti-Virus in the computer and run a full system Virus check and deleted all the virus detected by Anti-Virus ', '2019-11-13 12:57:57', 'Berlin', 'Germany', 0),
(26, 118, 'Anti-Virus', 'Accepted', 'The computer is not running properly and the programs freezes on the screen ', 'A full system anti-virus check was carried out on the system and all the viruses detected by the Norton Anti Virus as been deleted and the system runs smoothly', '2019-11-13 13:01:35', 'Berlin', 'Germany', 0),
(27, 119, 'Hardware', 'Accepted', 'Keyboard not working ', 'I have checked the keyboard and the wire is damaged which is not fixable. Therefore I have replaced the old keyboard with a new one.', '2019-11-13 13:08:42', 'London', 'United Kingdom', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Specialists`
--

CREATE TABLE `Specialists` (
  `PersonnelID` int(6) NOT NULL,
  `NumberProblems` int(11) NOT NULL DEFAULT '0',
  `Expertise` set('Hardware','Software','Anti-Virus','Network') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Specialists`
--

INSERT INTO `Specialists` (`PersonnelID`, `NumberProblems`, `Expertise`) VALUES
(13, 2, 'Hardware'),
(740690, 1, 'Anti-Virus'),
(740695, 3, 'Anti-Virus'),
(740700, 6, 'Hardware'),
(740705, 1, 'Software'),
(740710, 1, 'Network');

-- --------------------------------------------------------

--
-- Table structure for table `SupportedSoftware`
--

CREATE TABLE `SupportedSoftware` (
  `Name` varchar(30) NOT NULL,
  `StartDate` date NOT NULL,
  `ExpiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SupportedSoftware`
--

INSERT INTO `SupportedSoftware` (`Name`, `StartDate`, `ExpiryDate`) VALUES
('Autodesk AutoCAD', '2020-02-15', '2021-03-10'),
('Microsoft Office', '2019-11-14', '2020-11-14'),
('Norton Anti-Virus', '2019-10-16', '2020-05-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Availability`
--
ALTER TABLE `Availability`
  ADD PRIMARY KEY (`PersonnelID`);

--
-- Indexes for table `CallLog`
--
ALTER TABLE `CallLog`
  ADD PRIMARY KEY (`DateTime`);

--
-- Indexes for table `Hardware`
--
ALTER TABLE `Hardware`
  ADD PRIMARY KEY (`SerialNumber`);

--
-- Indexes for table `LogIn`
--
ALTER TABLE `LogIn`
  ADD PRIMARY KEY (`PersonnelID`),
  ADD UNIQUE KEY `UserID` (`PersonnelID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `Notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`DateTime`,`ProblemID`) USING BTREE;

--
-- Indexes for table `Notification`
--
ALTER TABLE `Notification`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `Personnel`
--
ALTER TABLE `Personnel`
  ADD PRIMARY KEY (`PersonnelID`);

--
-- Indexes for table `Problem Categories`
--
ALTER TABLE `Problem Categories`
  ADD PRIMARY KEY (`Category ID`);

--
-- Indexes for table `Problems`
--
ALTER TABLE `Problems`
  ADD PRIMARY KEY (`ProblemID`),
  ADD UNIQUE KEY `ProblemID` (`ProblemID`);

--
-- Indexes for table `ReassignLog`
--
ALTER TABLE `ReassignLog`
  ADD PRIMARY KEY (`DateTime`);

--
-- Indexes for table `Solutions`
--
ALTER TABLE `Solutions`
  ADD PRIMARY KEY (`SolutionID`);

--
-- Indexes for table `Specialists`
--
ALTER TABLE `Specialists`
  ADD PRIMARY KEY (`PersonnelID`);

--
-- Indexes for table `SupportedSoftware`
--
ALTER TABLE `SupportedSoftware`
  ADD PRIMARY KEY (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Notification`
--
ALTER TABLE `Notification`
  MODIFY `No` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;

--
-- AUTO_INCREMENT for table `Problem Categories`
--
ALTER TABLE `Problem Categories`
  MODIFY `Category ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Problems`
--
ALTER TABLE `Problems`
  MODIFY `ProblemID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `Solutions`
--
ALTER TABLE `Solutions`
  MODIFY `SolutionID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

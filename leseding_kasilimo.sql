-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2021 at 07:51 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsdccoza_lsdcdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursefees`
--

DROP TABLE IF EXISTS `coursefees`;
CREATE TABLE IF NOT EXISTS `coursefees` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(10) NOT NULL,
  `Payment` decimal(6,2) NOT NULL,
  `Registration` decimal(6,2) DEFAULT NULL,
  `Certification` decimal(6,2) DEFAULT NULL,
  `CarryCard` decimal(6,2) DEFAULT NULL,
  `Discount` decimal(6,2) DEFAULT NULL,
  `Duration` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursefees`
--

INSERT INTO `coursefees` (`ID`, `CourseCode`, `Payment`, `Registration`, `Certification`, `CarryCard`, `Discount`, `Duration`, `Timestamp`) VALUES
(4, 'ECD', '910.00', '1000.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:28:13'),
(5, 'EUC', '570.00', '1200.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:33'),
(6, 'TS', '650.00', '1200.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:33'),
(8, 'WRO', '640.00', '1000.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:34'),
(9, 'SWD', '650.00', '1200.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:34'),
(10, 'LD', '910.00', '1500.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:37:34'),
(11, 'SE', '910.00', '1500.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:37:34'),
(12, 'ADV', '910.00', '1500.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:37:34'),
(13, 'TT', '100.00', '200.00', '300.00', '10.00', NULL, 12, '0000-00-00 00:00:00'),
(15, 'ITE', '570.00', '250.00', '570.00', NULL, NULL, 10, '2017-11-22 21:54:10'),
(16, 'OA', '550.00', '250.00', '550.00', NULL, NULL, 10, '2017-11-22 21:54:10'),
(17, 'RC', '590.00', '250.00', '590.00', NULL, NULL, 6, '2017-11-22 22:00:45'),
(18, 'ACL', '580.00', '250.00', '580.00', NULL, NULL, 6, '2017-11-22 22:00:45'),
(19, 'RO', '500.00', '250.00', '500.00', NULL, NULL, 10, '2017-11-22 22:00:45'),
(20, 'CC', '520.00', '250.00', '520.00', NULL, NULL, 6, '2017-11-22 22:00:45'),
(21, 'STS', '650.00', '250.00', '650.00', NULL, NULL, 10, '2017-11-22 22:00:46'),
(22, 'EYD', '1000.00', '1000.00', '500.00', NULL, NULL, 6, '2017-11-22 22:00:46'),
(23, 'LED', '1000.00', '1000.00', '500.00', NULL, NULL, 6, '2017-11-22 22:00:46'),
(24, 'SG', '1000.00', '1000.00', '500.00', NULL, NULL, 6, '2017-11-22 22:00:46'),
(25, 'CRC', '520.00', '250.00', '520.00', NULL, NULL, 6, '2017-11-28 21:32:54'),
(28, 'ICL', '2550.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:39'),
(29, 'DC', '2500.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:39'),
(30, 'PM', '0.00', '1775.00', '1775.00', NULL, NULL, 1, '2017-11-28 22:38:39'),
(31, 'PR', '0.00', '1850.00', '1825.00', NULL, '-25.00', 2, '2017-11-28 22:38:39'),
(32, 'SCC', '2650.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:39'),
(33, 'CA', '2700.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:40'),
(34, 'DH', '2700.00', NULL, NULL, NULL, NULL, 1, '2017-11-28 22:38:40'),
(35, 'BS', '3500.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:40'),
(47, 'FK', '0.00', '1200.00', '250.00', '70.00', NULL, 1, '2017-11-29 21:27:48'),
(48, 'FW', '0.00', '500.00', '250.00', '70.00', '-250.00', 1, '2017-11-29 21:27:48'),
(49, 'FF', '0.00', '0.00', '700.00', NULL, '250.00', 1, '2017-11-29 21:27:49'),
(50, 'WB', '0.00', '0.00', '2500.00', NULL, NULL, 2, '2017-11-29 21:27:49'),
(51, 'WBA', '0.00', '0.00', '5000.00', NULL, NULL, 4, '2017-11-29 21:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `coursehierachyfeesview`
--

DROP TABLE IF EXISTS `coursehierachyfeesview`;
CREATE TABLE IF NOT EXISTS `coursehierachyfeesview` (
  `Type` varchar(10) DEFAULT NULL,
  `ParentCode` varchar(10) DEFAULT NULL,
  `ParentDesc` varchar(50) DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Payment` decimal(6,2) DEFAULT NULL,
  `Registration` decimal(6,2) DEFAULT NULL,
  `Certification` decimal(6,2) DEFAULT NULL,
  `CarryCard` decimal(6,2) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Discount` decimal(6,2) DEFAULT NULL,
  `TotalFees` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courseregistrations`
--

DROP TABLE IF EXISTS `courseregistrations`;
CREATE TABLE IF NOT EXISTS `courseregistrations` (
  `name` varchar(256) DEFAULT NULL,
  `CourseCode` varchar(10) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Payment` decimal(6,2) DEFAULT NULL,
  `Registration` decimal(6,2) DEFAULT NULL,
  `Certification` decimal(6,2) DEFAULT NULL,
  `CarryCard` decimal(6,2) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `TotalFees` decimal(20,2) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lookuptable`
--

DROP TABLE IF EXISTS `lookuptable`;
CREATE TABLE IF NOT EXISTS `lookuptable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(10) NOT NULL,
  `ParentCode` varchar(10) DEFAULT NULL,
  `Code` varchar(10) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookuptable`
--

INSERT INTO `lookuptable` (`ID`, `Type`, `ParentCode`, `Code`, `Description`, `Timestamp`) VALUES
(3, 'Cert', NULL, 'NT', 'National Certificate', '2017-11-15 17:56:04'),
(5, 'Course', 'NT', 'TS', 'Technical Support', '2017-11-15 17:56:04'),
(13, 'Ach', NULL, 'P', 'Pass', '2017-11-15 17:56:04'),
(14, 'Ach', NULL, 'F', 'Fail', '2017-11-15 17:56:04'),
(15, 'Modules', NULL, 'IC', 'Introduction to Computers', '2017-11-15 17:56:04'),
(16, 'Modules', NULL, 'ME', 'Maintaining Office Equipment', '2017-11-15 17:56:04'),
(17, 'Modules', NULL, 'CN', 'Principles of Computer Networks', '2017-11-15 17:56:04'),
(18, 'Modules', NULL, 'CA', 'Computer Architecture', '2017-11-15 17:56:04'),
(19, 'Modules', NULL, 'PRF', 'Present Information In Report Formats', '2017-11-15 17:56:04'),
(20, 'Modules', NULL, 'WPST', 'Write/Presents/Sign Texts', '2017-11-15 17:56:04'),
(21, 'Modules', NULL, 'ICT', 'ICT Risks', '2017-11-15 17:56:04'),
(22, 'Modules', NULL, 'LC', 'Language & Communication in Occupational Learning', '2017-11-15 17:56:04'),
(23, 'Modules', NULL, 'OSC', 'Oral & Sign Communication', '2017-11-15 17:56:04'),
(24, 'Modules', NULL, 'PR', 'Presentation', '2017-11-15 17:56:04'),
(25, 'Modules', NULL, 'SP', 'Spreadsheet', '2017-11-15 17:56:04'),
(26, 'Modules', NULL, 'WP', 'Word Processing', '2017-11-15 17:56:04'),
(27, 'SAQA', NULL, '7785', '7785', '2017-11-15 17:56:04'),
(28, 'SAQA', NULL, '117925', '117925', '2017-11-15 17:56:04'),
(29, 'SAQA', NULL, '13931', '13931', '2017-11-15 17:56:04'),
(30, 'SAQA', NULL, '14913', '14913', '2017-11-15 17:56:04'),
(31, 'SAQA', NULL, '14917', '14917', '2017-11-15 17:56:04'),
(32, 'SAQA', NULL, '110023', '110023', '2017-11-15 17:56:04'),
(33, 'SAQA', NULL, '116945', '116945', '2017-11-15 17:56:04'),
(34, 'SAQA', NULL, '117926', '117926', '2017-11-15 17:56:04'),
(35, 'SAQA', NULL, '119467', '119467', '2017-11-15 17:56:04'),
(36, 'SAQA', NULL, '119472', '119472', '2017-11-15 17:56:04'),
(37, 'SAQA', NULL, '116930', '116930', '2017-11-15 17:56:04'),
(38, 'SAQA', NULL, '116943', '116943', '2017-11-15 17:56:04'),
(39, 'SAQA', NULL, '116942', '116942', '2017-11-15 17:56:04'),
(40, 'SAQA', NULL, '119078', '119078', '2017-11-15 17:56:04'),
(41, 'Cert', NULL, 'ST', 'Short Course', '2017-11-15 17:56:04'),
(43, 'Course', 'NT', 'EUC', 'End User Computing (NQF L3)', '2017-11-15 17:56:04'),
(44, 'Course', 'NT', 'ECD', 'Early Childhood Development (L4)', '2017-11-15 17:56:04'),
(45, 'Course', 'NT', 'WRO', 'Wholesale & Retail Operations (L3)', '2017-11-15 17:56:04'),
(46, 'Course', 'NT', 'SWD', 'Software Development (L4 / L5)', '2017-11-15 17:56:04'),
(47, 'Course', 'NT', 'LD', 'Leadership Development (NQF L4)', '2017-11-15 17:56:04'),
(48, 'Course', 'NT', 'SE', 'Sound Engineering (NQF L5)', '2017-11-15 17:56:04'),
(49, 'Course', 'NT', 'ADV', 'Advertising (NQF L5)', '2017-11-15 17:56:04'),
(50, 'Cert', NULL, 'SP', 'Skills Programmes', '2017-11-21 20:09:45'),
(51, 'Course', 'SP', 'ITE', 'IT: End-User- Computing', '2017-11-21 20:23:37'),
(52, 'Course', 'SP', 'OA', 'Office Administration', '2017-11-21 20:23:37'),
(53, 'Course', 'SP', 'RC', 'Receptionist', '2017-11-21 20:23:37'),
(54, 'Course', 'SP', 'ACL', 'Advanced Computer Literacy', '2017-11-21 20:23:37'),
(55, 'Course', 'SP', 'RO', 'Retail Operations', '2017-11-21 20:23:37'),
(56, 'Course', 'SP', 'CRC', 'Credit controller', '2017-11-21 20:23:37'),
(57, 'Course', 'SP', 'STS', 'Technical Support', '2017-11-21 20:23:38'),
(58, 'Course', 'SP', 'EYD', 'Early Childhood Development', '2017-11-21 20:23:38'),
(59, 'Course', 'SP', 'LED', 'Leadership Development', '2017-11-21 20:23:38'),
(60, 'Course', 'SP', 'SG', 'Sound Engineering', '2017-11-21 20:23:38'),
(66, 'Course', 'ST', 'ICL', 'Intermediate computer literacy', '2017-11-28 22:38:39'),
(67, 'Course', 'ST', 'DC', 'Data Capturing', '2017-11-28 22:38:39'),
(68, 'Course', 'ST', 'PM', 'Project Management', '2017-11-28 22:38:39'),
(69, 'Course', 'ST', 'PR', 'PC Repairs', '2017-11-28 22:38:39'),
(70, 'Course', 'ST', 'SCC', 'Call Centre', '2017-11-28 22:38:39'),
(71, 'Course', 'ST', 'CA', 'Cash Controller/Cashier', '2017-11-28 22:38:39'),
(72, 'Course', 'ST', 'DH', 'Dispatcher/ Health and Safety', '2017-11-28 22:38:40'),
(73, 'Course', 'ST', 'BS', 'Business skills', '2017-11-28 22:38:40'),
(74, 'Cert', NULL, 'CS', 'On Special', '2017-11-29 09:10:02'),
(76, 'Course', 'CS', 'FK', 'Forklift Operator (NQF L3)', '2017-11-29 20:41:26'),
(77, 'Course', 'CS', 'FW', 'Forklift (License Renewal)', '2017-11-29 20:41:26'),
(78, 'Course', 'CS', 'FF', 'Fire Fighter (NQF L3)', '2017-11-29 20:41:26'),
(79, 'Course', 'CS', 'WB', 'Web Design Introduction', '2017-11-29 20:41:26'),
(80, 'Course', 'CS', 'WBA', 'Web Design Advanced', '2017-11-29 20:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `lookuptableview`
--

DROP TABLE IF EXISTS `lookuptableview`;
CREATE TABLE IF NOT EXISTS `lookuptableview` (
  `Type` varchar(10) DEFAULT NULL,
  `ParentCode` varchar(10) DEFAULT NULL,
  `ParentDesc` varchar(50) DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `nick_name` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `Privileges` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `nick_name`, `email`, `password`, `Privileges`, `Timestamp`) VALUES
(16, 'root', NULL, '', '63a9f0ea7bb98050796b649e85481845', 2, '2019-06-10 17:31:20'),
(17, 'kk@mm.com', NULL, 'kmolema@gmail.com', '4124bc0a9335c27f086f24ba207a4912', 2, '2020-06-18 11:04:12'),
(18, 'lesedi', NULL, 'rammutla.sedi@gmail.com', '6512bd43d9caa6e02c990b0a82652dca', 2, '2020-06-18 14:50:04'),
(19, 'where', NULL, 'whaaa.@com', 'c20ad4d76fe97759aa27a0c99bff6710', 2, '2020-06-20 13:12:29'),
(20, 'test', NULL, '', 'c4ca4238a0b923820dcc509a6f75849b', 2, '2021-03-08 20:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
CREATE TABLE IF NOT EXISTS `privileges` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`ID`, `Description`) VALUES
(0, 'None'),
(1, 'Admin'),
(2, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(10) NOT NULL,
  `MemberName` varchar(256) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`ID`, `CourseCode`, `MemberName`, `Timestamp`) VALUES
(1, 'SWD', 'test', '2021-03-08 20:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `sensorinfo`
--

DROP TABLE IF EXISTS `sensorinfo`;
CREATE TABLE IF NOT EXISTS `sensorinfo` (
  `ID` varchar(100) NOT NULL,
  `LogTimestamp` datetime NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `UpdateTimestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentpersonalinformation`
--

DROP TABLE IF EXISTS `studentpersonalinformation`;
CREATE TABLE IF NOT EXISTS `studentpersonalinformation` (
  `studentpersonalinformationID` int(11) NOT NULL,
  `StudentFirstName` varchar(100) NOT NULL,
  `StudentMiddleName` varchar(100) NOT NULL,
  `StudentLastName` varchar(100) NOT NULL,
  `StudentIDno` varchar(13) NOT NULL,
  `StudentAge` int(3) NOT NULL,
  `StudentOccupation` varchar(30) NOT NULL,
  `StudentGender` varchar(6) NOT NULL,
  `StudentHomeAddress` varchar(40) NOT NULL,
  `StudentsContactDetails` bigint(10) NOT NULL,
  PRIMARY KEY (`studentpersonalinformationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentsassessmentmarks`
--

DROP TABLE IF EXISTS `studentsassessmentmarks`;
CREATE TABLE IF NOT EXISTS `studentsassessmentmarks` (
  `studentassessmentmarksID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) NOT NULL,
  `StudentIDno` varchar(15) NOT NULL,
  `CourseName` varchar(30) NOT NULL,
  `CertificateType` varchar(30) NOT NULL,
  `ModuleName` varchar(40) NOT NULL,
  `SAQAID` varchar(10) NOT NULL,
  `PercentageAchieved` decimal(5,2) NOT NULL,
  `Achievement` varchar(4) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`studentassessmentmarksID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentsonarrears`
--

DROP TABLE IF EXISTS `studentsonarrears`;
CREATE TABLE IF NOT EXISTS `studentsonarrears` (
  `StudentsOnArrearsID` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `StudentIDno` varchar(15) NOT NULL,
  `CourseName` varchar(30) NOT NULL,
  `CertificateType` varchar(30) NOT NULL,
  `TotalCourseFee` varchar(40) NOT NULL,
  `CourseDuration` varchar(10) NOT NULL,
  `MonthsBehind` decimal(5,2) NOT NULL,
  `InterestPercentage` decimal(5,0) NOT NULL,
  `AmountDue` varchar(20) NOT NULL,
  PRIMARY KEY (`StudentsOnArrearsID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

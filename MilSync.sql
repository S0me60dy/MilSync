-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2026 at 12:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MilSync`
--

-- --------------------------------------------------------

--
-- Table structure for table `APPLICATION`
--

CREATE TABLE `APPLICATION` (
  `ApplicationID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `JobID` int(11) NOT NULL,
  `SubmissionDate` datetime DEFAULT current_timestamp(),
  `Status` enum('Pending','Approved','Rejected') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `APPLICATION`
--

INSERT INTO `APPLICATION` (`ApplicationID`, `UserID`, `JobID`, `SubmissionDate`, `Status`) VALUES
(4, 1, 1, '2026-05-21 10:01:57', 'Approved'),
(5, 20, 2, '2026-05-21 09:01:57', 'Rejected'),
(6, 21, 3, '2026-05-21 08:01:57', 'Pending'),
(7, 22, 4, '2026-05-21 07:01:57', 'Approved'),
(8, 23, 5, '2026-05-21 06:01:57', 'Rejected'),
(9, 24, 6, '2026-05-21 05:01:57', 'Pending'),
(10, 30, 7, '2026-05-21 04:01:57', 'Approved'),
(11, 31, 8, '2026-05-21 03:01:57', 'Rejected'),
(12, 32, 9, '2026-05-21 02:01:57', 'Pending'),
(13, 33, 10, '2026-05-21 01:01:57', 'Approved'),
(14, 34, 11, '2026-05-21 00:01:57', 'Rejected'),
(15, 35, 12, '2026-05-20 23:01:57', 'Pending'),
(16, 36, 13, '2026-05-20 22:01:57', 'Approved'),
(17, 37, 14, '2026-05-20 21:01:57', 'Rejected'),
(18, 38, 15, '2026-05-20 20:01:57', 'Pending'),
(19, 39, 16, '2026-05-20 19:01:57', 'Approved'),
(20, 40, 17, '2026-05-20 18:01:57', 'Rejected'),
(21, 41, 18, '2026-05-20 17:01:57', 'Pending'),
(22, 42, 19, '2026-05-20 16:01:57', 'Approved'),
(23, 43, 20, '2026-05-20 15:01:57', 'Rejected'),
(24, 44, 21, '2026-05-20 14:01:57', 'Pending'),
(25, 45, 22, '2026-05-20 13:01:57', 'Approved'),
(26, 46, 23, '2026-05-20 12:01:57', 'Rejected'),
(27, 47, 24, '2026-05-20 11:01:57', 'Pending'),
(28, 48, 25, '2026-05-20 10:01:57', 'Approved'),
(29, 49, 26, '2026-05-20 09:01:57', 'Rejected'),
(30, 50, 27, '2026-05-20 08:01:57', 'Pending'),
(31, 51, 28, '2026-05-20 07:01:57', 'Approved'),
(32, 52, 29, '2026-05-20 06:01:57', 'Rejected'),
(33, 53, 30, '2026-05-20 05:01:57', 'Pending'),
(34, 54, 31, '2026-05-20 04:01:57', 'Approved'),
(35, 55, 32, '2026-05-20 03:01:57', 'Rejected'),
(36, 56, 33, '2026-05-20 02:01:57', 'Pending'),
(37, 57, 34, '2026-05-20 01:01:57', 'Approved'),
(38, 58, 35, '2026-05-20 00:01:57', 'Rejected'),
(39, 59, 36, '2026-05-19 23:01:57', 'Pending'),
(40, 60, 37, '2026-05-19 22:01:57', 'Approved'),
(41, 61, 38, '2026-05-19 21:01:57', 'Rejected'),
(42, 62, 39, '2026-05-19 20:01:57', 'Pending'),
(43, 63, 40, '2026-05-19 19:01:57', 'Approved'),
(44, 64, 41, '2026-05-19 18:01:57', 'Rejected'),
(45, 65, 42, '2026-05-19 17:01:57', 'Pending'),
(46, 66, 43, '2026-05-19 16:01:57', 'Approved'),
(47, 67, 44, '2026-05-19 15:01:57', 'Rejected'),
(48, 68, 45, '2026-05-19 14:01:57', 'Pending'),
(49, 69, 46, '2026-05-19 13:01:57', 'Approved'),
(50, 70, 47, '2026-05-19 12:01:57', 'Rejected'),
(51, 71, 48, '2026-05-19 11:01:57', 'Pending'),
(52, 72, 49, '2026-05-19 10:01:57', 'Approved'),
(53, 73, 50, '2026-05-19 09:01:57', 'Rejected'),
(54, 74, 51, '2026-05-19 08:01:57', 'Pending'),
(55, 75, 52, '2026-05-19 07:01:57', 'Approved'),
(56, 76, 53, '2026-05-19 06:01:57', 'Rejected'),
(57, 77, 54, '2026-05-19 05:01:57', 'Pending'),
(58, 78, 55, '2026-05-19 04:01:57', 'Approved'),
(59, 79, 56, '2026-05-19 03:01:57', 'Rejected'),
(60, 80, 57, '2026-05-19 02:01:57', 'Pending'),
(61, 81, 58, '2026-05-19 01:01:57', 'Approved'),
(62, 82, 59, '2026-05-19 00:01:57', 'Rejected'),
(63, 83, 60, '2026-05-18 23:01:57', 'Pending'),
(64, 84, 61, '2026-05-18 22:01:57', 'Approved'),
(65, 85, 62, '2026-05-18 21:01:57', 'Rejected'),
(66, 86, 63, '2026-05-18 20:01:57', 'Pending'),
(67, 87, 64, '2026-05-18 19:01:57', 'Approved'),
(68, 88, 65, '2026-05-18 18:01:57', 'Rejected'),
(69, 89, 66, '2026-05-18 17:01:57', 'Pending'),
(70, 90, 67, '2026-05-18 16:01:57', 'Approved'),
(71, 91, 68, '2026-05-18 15:01:57', 'Rejected'),
(72, 92, 69, '2026-05-18 14:01:57', 'Pending'),
(73, 93, 70, '2026-05-18 13:01:57', 'Approved'),
(74, 94, 71, '2026-05-18 12:01:57', 'Rejected'),
(75, 95, 72, '2026-05-18 11:01:57', 'Pending'),
(76, 96, 73, '2026-05-18 10:01:57', 'Approved'),
(77, 97, 74, '2026-05-18 09:01:57', 'Rejected'),
(78, 98, 75, '2026-05-18 08:01:57', 'Pending'),
(79, 99, 76, '2026-05-18 07:01:57', 'Approved'),
(80, 100, 77, '2026-05-18 06:01:57', 'Rejected'),
(81, 101, 78, '2026-05-18 05:01:57', 'Pending'),
(82, 102, 79, '2026-05-18 04:01:57', 'Approved'),
(83, 103, 80, '2026-05-18 03:01:57', 'Rejected'),
(84, 104, 81, '2026-05-18 02:01:57', 'Pending'),
(85, 105, 82, '2026-05-18 01:01:57', 'Approved'),
(86, 106, 83, '2026-05-18 00:01:57', 'Rejected'),
(87, 107, 84, '2026-05-17 23:01:57', 'Pending'),
(88, 108, 85, '2026-05-17 22:01:57', 'Approved'),
(89, 109, 86, '2026-05-17 21:01:57', 'Rejected'),
(90, 110, 87, '2026-05-17 20:01:57', 'Pending'),
(91, 111, 88, '2026-05-17 19:01:57', 'Approved'),
(92, 112, 89, '2026-05-17 18:01:57', 'Rejected'),
(93, 113, 90, '2026-05-17 17:01:57', 'Pending'),
(94, 114, 91, '2026-05-17 16:01:57', 'Approved'),
(95, 115, 92, '2026-05-17 15:01:57', 'Rejected'),
(96, 116, 93, '2026-05-17 14:01:57', 'Pending'),
(97, 117, 94, '2026-05-17 13:01:57', 'Approved'),
(98, 118, 95, '2026-05-17 12:01:57', 'Rejected'),
(99, 119, 96, '2026-05-17 11:01:57', 'Pending'),
(100, 120, 97, '2026-05-17 10:01:57', 'Approved'),
(101, 121, 98, '2026-05-17 09:01:57', 'Rejected'),
(102, 122, 99, '2026-05-17 08:01:57', 'Pending'),
(103, 123, 100, '2026-05-17 07:01:57', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `AUDIT_LOG`
--

CREATE TABLE `AUDIT_LOG` (
  `AuditLogID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL,
  `ChangedByUserID` int(11) DEFAULT NULL,
  `ChangeType` varchar(255) DEFAULT NULL,
  `ChangeTimestamp` datetime DEFAULT current_timestamp(),
  `OldValues` text DEFAULT NULL,
  `NewValues` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AUDIT_LOG`
--

INSERT INTO `AUDIT_LOG` (`AuditLogID`, `RecordID`, `ChangedByUserID`, `ChangeType`, `ChangeTimestamp`, `OldValues`, `NewValues`) VALUES
(1, 12, 1, 'UPDATE', '2026-05-21 11:00:57', 'Old seed value 1', 'New seed value 1'),
(2, 13, 20, 'STATUS_CHANGE', '2026-05-21 10:59:57', 'Old seed value 2', 'New seed value 2'),
(3, 14, 21, 'PROFILE_UPDATE', '2026-05-21 10:58:57', 'Old seed value 3', 'New seed value 3'),
(4, 15, 22, 'INSERT', '2026-05-21 10:57:57', 'Old seed value 4', 'New seed value 4'),
(5, 16, 23, 'UPDATE', '2026-05-21 10:56:57', 'Old seed value 5', 'New seed value 5'),
(6, 17, 24, 'STATUS_CHANGE', '2026-05-21 10:55:57', 'Old seed value 6', 'New seed value 6'),
(7, 18, 30, 'PROFILE_UPDATE', '2026-05-21 10:54:57', 'Old seed value 7', 'New seed value 7'),
(8, 19, 31, 'INSERT', '2026-05-21 10:53:57', 'Old seed value 8', 'New seed value 8'),
(9, 20, 32, 'UPDATE', '2026-05-21 10:52:57', 'Old seed value 9', 'New seed value 9'),
(10, 21, 33, 'STATUS_CHANGE', '2026-05-21 10:51:57', 'Old seed value 10', 'New seed value 10'),
(11, 22, 34, 'PROFILE_UPDATE', '2026-05-21 10:50:57', 'Old seed value 11', 'New seed value 11'),
(12, 23, 35, 'INSERT', '2026-05-21 10:49:57', 'Old seed value 12', 'New seed value 12'),
(13, 24, 36, 'UPDATE', '2026-05-21 10:48:57', 'Old seed value 13', 'New seed value 13'),
(14, 25, 37, 'STATUS_CHANGE', '2026-05-21 10:47:57', 'Old seed value 14', 'New seed value 14'),
(15, 26, 38, 'PROFILE_UPDATE', '2026-05-21 10:46:57', 'Old seed value 15', 'New seed value 15'),
(16, 27, 39, 'INSERT', '2026-05-21 10:45:57', 'Old seed value 16', 'New seed value 16'),
(17, 28, 40, 'UPDATE', '2026-05-21 10:44:57', 'Old seed value 17', 'New seed value 17'),
(18, 29, 41, 'STATUS_CHANGE', '2026-05-21 10:43:57', 'Old seed value 18', 'New seed value 18'),
(19, 30, 42, 'PROFILE_UPDATE', '2026-05-21 10:42:57', 'Old seed value 19', 'New seed value 19'),
(20, 31, 43, 'INSERT', '2026-05-21 10:41:57', 'Old seed value 20', 'New seed value 20'),
(21, 32, 44, 'UPDATE', '2026-05-21 10:40:57', 'Old seed value 21', 'New seed value 21'),
(22, 33, 45, 'STATUS_CHANGE', '2026-05-21 10:39:57', 'Old seed value 22', 'New seed value 22'),
(23, 34, 46, 'PROFILE_UPDATE', '2026-05-21 10:38:57', 'Old seed value 23', 'New seed value 23'),
(24, 35, 47, 'INSERT', '2026-05-21 10:37:57', 'Old seed value 24', 'New seed value 24'),
(25, 36, 48, 'UPDATE', '2026-05-21 10:36:57', 'Old seed value 25', 'New seed value 25'),
(26, 37, 49, 'STATUS_CHANGE', '2026-05-21 10:35:57', 'Old seed value 26', 'New seed value 26'),
(27, 38, 50, 'PROFILE_UPDATE', '2026-05-21 10:34:57', 'Old seed value 27', 'New seed value 27'),
(28, 39, 51, 'INSERT', '2026-05-21 10:33:57', 'Old seed value 28', 'New seed value 28'),
(29, 40, 52, 'UPDATE', '2026-05-21 10:32:57', 'Old seed value 29', 'New seed value 29'),
(30, 41, 53, 'STATUS_CHANGE', '2026-05-21 10:31:57', 'Old seed value 30', 'New seed value 30'),
(31, 42, 54, 'PROFILE_UPDATE', '2026-05-21 10:30:57', 'Old seed value 31', 'New seed value 31'),
(32, 43, 55, 'INSERT', '2026-05-21 10:29:57', 'Old seed value 32', 'New seed value 32'),
(33, 44, 56, 'UPDATE', '2026-05-21 10:28:57', 'Old seed value 33', 'New seed value 33'),
(34, 45, 57, 'STATUS_CHANGE', '2026-05-21 10:27:57', 'Old seed value 34', 'New seed value 34'),
(35, 46, 58, 'PROFILE_UPDATE', '2026-05-21 10:26:57', 'Old seed value 35', 'New seed value 35'),
(36, 47, 59, 'INSERT', '2026-05-21 10:25:57', 'Old seed value 36', 'New seed value 36'),
(37, 48, 60, 'UPDATE', '2026-05-21 10:24:57', 'Old seed value 37', 'New seed value 37'),
(38, 49, 61, 'STATUS_CHANGE', '2026-05-21 10:23:57', 'Old seed value 38', 'New seed value 38'),
(39, 50, 62, 'PROFILE_UPDATE', '2026-05-21 10:22:57', 'Old seed value 39', 'New seed value 39'),
(40, 51, 63, 'INSERT', '2026-05-21 10:21:57', 'Old seed value 40', 'New seed value 40'),
(41, 52, 64, 'UPDATE', '2026-05-21 10:20:57', 'Old seed value 41', 'New seed value 41'),
(42, 53, 65, 'STATUS_CHANGE', '2026-05-21 10:19:57', 'Old seed value 42', 'New seed value 42'),
(43, 54, 66, 'PROFILE_UPDATE', '2026-05-21 10:18:57', 'Old seed value 43', 'New seed value 43'),
(44, 55, 67, 'INSERT', '2026-05-21 10:17:57', 'Old seed value 44', 'New seed value 44'),
(45, 56, 68, 'UPDATE', '2026-05-21 10:16:57', 'Old seed value 45', 'New seed value 45'),
(46, 57, 69, 'STATUS_CHANGE', '2026-05-21 10:15:57', 'Old seed value 46', 'New seed value 46'),
(47, 58, 70, 'PROFILE_UPDATE', '2026-05-21 10:14:57', 'Old seed value 47', 'New seed value 47'),
(48, 59, 71, 'INSERT', '2026-05-21 10:13:57', 'Old seed value 48', 'New seed value 48'),
(49, 60, 72, 'UPDATE', '2026-05-21 10:12:57', 'Old seed value 49', 'New seed value 49'),
(50, 61, 73, 'STATUS_CHANGE', '2026-05-21 10:11:57', 'Old seed value 50', 'New seed value 50'),
(51, 62, 74, 'PROFILE_UPDATE', '2026-05-21 10:10:57', 'Old seed value 51', 'New seed value 51'),
(52, 63, 75, 'INSERT', '2026-05-21 10:09:57', 'Old seed value 52', 'New seed value 52'),
(53, 64, 76, 'UPDATE', '2026-05-21 10:08:57', 'Old seed value 53', 'New seed value 53'),
(54, 65, 77, 'STATUS_CHANGE', '2026-05-21 10:07:57', 'Old seed value 54', 'New seed value 54'),
(55, 66, 78, 'PROFILE_UPDATE', '2026-05-21 10:06:57', 'Old seed value 55', 'New seed value 55'),
(56, 67, 79, 'INSERT', '2026-05-21 10:05:57', 'Old seed value 56', 'New seed value 56'),
(57, 68, 80, 'UPDATE', '2026-05-21 10:04:57', 'Old seed value 57', 'New seed value 57'),
(58, 69, 81, 'STATUS_CHANGE', '2026-05-21 10:03:57', 'Old seed value 58', 'New seed value 58'),
(59, 70, 82, 'PROFILE_UPDATE', '2026-05-21 10:02:57', 'Old seed value 59', 'New seed value 59'),
(60, 71, 83, 'INSERT', '2026-05-21 10:01:57', 'Old seed value 60', 'New seed value 60'),
(61, 72, 84, 'UPDATE', '2026-05-21 10:00:57', 'Old seed value 61', 'New seed value 61'),
(62, 73, 85, 'STATUS_CHANGE', '2026-05-21 09:59:57', 'Old seed value 62', 'New seed value 62'),
(63, 74, 86, 'PROFILE_UPDATE', '2026-05-21 09:58:57', 'Old seed value 63', 'New seed value 63'),
(64, 75, 87, 'INSERT', '2026-05-21 09:57:57', 'Old seed value 64', 'New seed value 64'),
(65, 76, 88, 'UPDATE', '2026-05-21 09:56:57', 'Old seed value 65', 'New seed value 65'),
(66, 77, 89, 'STATUS_CHANGE', '2026-05-21 09:55:57', 'Old seed value 66', 'New seed value 66'),
(67, 78, 90, 'PROFILE_UPDATE', '2026-05-21 09:54:57', 'Old seed value 67', 'New seed value 67'),
(68, 79, 91, 'INSERT', '2026-05-21 09:53:57', 'Old seed value 68', 'New seed value 68'),
(69, 80, 92, 'UPDATE', '2026-05-21 09:52:57', 'Old seed value 69', 'New seed value 69'),
(70, 81, 93, 'STATUS_CHANGE', '2026-05-21 09:51:57', 'Old seed value 70', 'New seed value 70'),
(71, 82, 94, 'PROFILE_UPDATE', '2026-05-21 09:50:57', 'Old seed value 71', 'New seed value 71'),
(72, 83, 95, 'INSERT', '2026-05-21 09:49:57', 'Old seed value 72', 'New seed value 72'),
(73, 84, 96, 'UPDATE', '2026-05-21 09:48:57', 'Old seed value 73', 'New seed value 73'),
(74, 85, 97, 'STATUS_CHANGE', '2026-05-21 09:47:57', 'Old seed value 74', 'New seed value 74'),
(75, 86, 98, 'PROFILE_UPDATE', '2026-05-21 09:46:57', 'Old seed value 75', 'New seed value 75'),
(76, 87, 99, 'INSERT', '2026-05-21 09:45:57', 'Old seed value 76', 'New seed value 76'),
(77, 88, 100, 'UPDATE', '2026-05-21 09:44:57', 'Old seed value 77', 'New seed value 77'),
(78, 89, 101, 'STATUS_CHANGE', '2026-05-21 09:43:57', 'Old seed value 78', 'New seed value 78'),
(79, 90, 102, 'PROFILE_UPDATE', '2026-05-21 09:42:57', 'Old seed value 79', 'New seed value 79'),
(80, 91, 103, 'INSERT', '2026-05-21 09:41:57', 'Old seed value 80', 'New seed value 80'),
(81, 92, 104, 'UPDATE', '2026-05-21 09:40:57', 'Old seed value 81', 'New seed value 81'),
(82, 93, 105, 'STATUS_CHANGE', '2026-05-21 09:39:57', 'Old seed value 82', 'New seed value 82'),
(83, 94, 106, 'PROFILE_UPDATE', '2026-05-21 09:38:57', 'Old seed value 83', 'New seed value 83'),
(84, 95, 107, 'INSERT', '2026-05-21 09:37:57', 'Old seed value 84', 'New seed value 84'),
(85, 96, 108, 'UPDATE', '2026-05-21 09:36:57', 'Old seed value 85', 'New seed value 85'),
(86, 97, 109, 'STATUS_CHANGE', '2026-05-21 09:35:57', 'Old seed value 86', 'New seed value 86'),
(87, 98, 110, 'PROFILE_UPDATE', '2026-05-21 09:34:57', 'Old seed value 87', 'New seed value 87'),
(88, 99, 111, 'INSERT', '2026-05-21 09:33:57', 'Old seed value 88', 'New seed value 88'),
(89, 100, 112, 'UPDATE', '2026-05-21 09:32:57', 'Old seed value 89', 'New seed value 89'),
(90, 101, 113, 'STATUS_CHANGE', '2026-05-21 09:31:57', 'Old seed value 90', 'New seed value 90'),
(91, 102, 114, 'PROFILE_UPDATE', '2026-05-21 09:30:57', 'Old seed value 91', 'New seed value 91'),
(92, 103, 115, 'INSERT', '2026-05-21 09:29:57', 'Old seed value 92', 'New seed value 92'),
(93, 104, 116, 'UPDATE', '2026-05-21 09:28:57', 'Old seed value 93', 'New seed value 93'),
(94, 105, 117, 'STATUS_CHANGE', '2026-05-21 09:27:57', 'Old seed value 94', 'New seed value 94'),
(95, 106, 118, 'PROFILE_UPDATE', '2026-05-21 09:26:57', 'Old seed value 95', 'New seed value 95'),
(96, 107, 119, 'INSERT', '2026-05-21 09:25:57', 'Old seed value 96', 'New seed value 96'),
(97, 108, 120, 'UPDATE', '2026-05-21 09:24:57', 'Old seed value 97', 'New seed value 97'),
(98, 109, 121, 'STATUS_CHANGE', '2026-05-21 09:23:57', 'Old seed value 98', 'New seed value 98'),
(99, 110, 122, 'PROFILE_UPDATE', '2026-05-21 09:22:57', 'Old seed value 99', 'New seed value 99'),
(100, 111, 123, 'INSERT', '2026-05-21 09:21:57', 'Old seed value 100', 'New seed value 100');

-- --------------------------------------------------------

--
-- Table structure for table `JOB_LISTING`
--

CREATE TABLE `JOB_LISTING` (
  `JobID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Salary` decimal(10,0) NOT NULL,
  `RequiredRank` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JOB_LISTING`
--

INSERT INTO `JOB_LISTING` (`JobID`, `Title`, `Description`, `Location`, `Salary`, `RequiredRank`) VALUES
(1, 'Tactical Analyst', 'Analyzing field data for strategic planning.', 'Forward Base Delta', 45000, 'Sergeant'),
(2, 'Supply Chain Officer', 'Managing logistics and supplies.', 'Rear Command', 55000, 'Captain'),
(3, 'Medical Technician', 'Providing medical support to units.', 'Field Hospital Alpha', 42000, 'Corporal'),
(4, 'Seed Job 1', 'Generated seed job listing 1 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 3076, 'Corporal'),
(5, 'Seed Job 2', 'Generated seed job listing 2 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 3151, 'Sergeant'),
(6, 'Seed Job 3', 'Generated seed job listing 3 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 3227, 'Major'),
(7, 'Seed Job 4', 'Generated seed job listing 4 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 3302, 'Lieutenant'),
(8, 'Seed Job 5', 'Generated seed job listing 5 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 3378, 'Captain'),
(9, 'Seed Job 6', 'Generated seed job listing 6 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 3453, 'Private'),
(10, 'Seed Job 7', 'Generated seed job listing 7 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 3529, 'Corporal'),
(11, 'Seed Job 8', 'Generated seed job listing 8 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 3604, 'Sergeant'),
(12, 'Seed Job 9', 'Generated seed job listing 9 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 3680, 'Major'),
(13, 'Seed Job 10', 'Generated seed job listing 10 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 3755, 'Lieutenant'),
(14, 'Seed Job 11', 'Generated seed job listing 11 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 3831, 'Captain'),
(15, 'Seed Job 12', 'Generated seed job listing 12 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 3906, 'Private'),
(16, 'Seed Job 13', 'Generated seed job listing 13 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 3982, 'Corporal'),
(17, 'Seed Job 14', 'Generated seed job listing 14 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 4057, 'Sergeant'),
(18, 'Seed Job 15', 'Generated seed job listing 15 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 4133, 'Major'),
(19, 'Seed Job 16', 'Generated seed job listing 16 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 4208, 'Lieutenant'),
(20, 'Seed Job 17', 'Generated seed job listing 17 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 4284, 'Captain'),
(21, 'Seed Job 18', 'Generated seed job listing 18 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 4359, 'Private'),
(22, 'Seed Job 19', 'Generated seed job listing 19 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 4435, 'Corporal'),
(23, 'Seed Job 20', 'Generated seed job listing 20 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 4510, 'Sergeant'),
(24, 'Seed Job 21', 'Generated seed job listing 21 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 4586, 'Major'),
(25, 'Seed Job 22', 'Generated seed job listing 22 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 4661, 'Lieutenant'),
(26, 'Seed Job 23', 'Generated seed job listing 23 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 4737, 'Captain'),
(27, 'Seed Job 24', 'Generated seed job listing 24 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 4812, 'Private'),
(28, 'Seed Job 25', 'Generated seed job listing 25 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 4888, 'Corporal'),
(29, 'Seed Job 26', 'Generated seed job listing 26 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 4963, 'Sergeant'),
(30, 'Seed Job 27', 'Generated seed job listing 27 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 5039, 'Major'),
(31, 'Seed Job 28', 'Generated seed job listing 28 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 5114, 'Lieutenant'),
(32, 'Seed Job 29', 'Generated seed job listing 29 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 5190, 'Captain'),
(33, 'Seed Job 30', 'Generated seed job listing 30 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 5265, 'Private'),
(34, 'Seed Job 31', 'Generated seed job listing 31 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 5341, 'Corporal'),
(35, 'Seed Job 32', 'Generated seed job listing 32 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 5416, 'Sergeant'),
(36, 'Seed Job 33', 'Generated seed job listing 33 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 5492, 'Major'),
(37, 'Seed Job 34', 'Generated seed job listing 34 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 5567, 'Lieutenant'),
(38, 'Seed Job 35', 'Generated seed job listing 35 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 5643, 'Captain'),
(39, 'Seed Job 36', 'Generated seed job listing 36 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 5718, 'Private'),
(40, 'Seed Job 37', 'Generated seed job listing 37 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 5794, 'Corporal'),
(41, 'Seed Job 38', 'Generated seed job listing 38 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 5869, 'Sergeant'),
(42, 'Seed Job 39', 'Generated seed job listing 39 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 5945, 'Major'),
(43, 'Seed Job 40', 'Generated seed job listing 40 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 6020, 'Lieutenant'),
(44, 'Seed Job 41', 'Generated seed job listing 41 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 6096, 'Captain'),
(45, 'Seed Job 42', 'Generated seed job listing 42 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 6171, 'Private'),
(46, 'Seed Job 43', 'Generated seed job listing 43 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 6247, 'Corporal'),
(47, 'Seed Job 44', 'Generated seed job listing 44 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 6322, 'Sergeant'),
(48, 'Seed Job 45', 'Generated seed job listing 45 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 6398, 'Major'),
(49, 'Seed Job 46', 'Generated seed job listing 46 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 6473, 'Lieutenant'),
(50, 'Seed Job 47', 'Generated seed job listing 47 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 6549, 'Captain'),
(51, 'Seed Job 48', 'Generated seed job listing 48 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 6624, 'Private'),
(52, 'Seed Job 49', 'Generated seed job listing 49 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 6700, 'Corporal'),
(53, 'Seed Job 50', 'Generated seed job listing 50 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 6775, 'Sergeant'),
(54, 'Seed Job 51', 'Generated seed job listing 51 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 6851, 'Major'),
(55, 'Seed Job 52', 'Generated seed job listing 52 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 6926, 'Lieutenant'),
(56, 'Seed Job 53', 'Generated seed job listing 53 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 7002, 'Captain'),
(57, 'Seed Job 54', 'Generated seed job listing 54 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 7077, 'Private'),
(58, 'Seed Job 55', 'Generated seed job listing 55 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 7153, 'Corporal'),
(59, 'Seed Job 56', 'Generated seed job listing 56 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 7228, 'Sergeant'),
(60, 'Seed Job 57', 'Generated seed job listing 57 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 7304, 'Major'),
(61, 'Seed Job 58', 'Generated seed job listing 58 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 7379, 'Lieutenant'),
(62, 'Seed Job 59', 'Generated seed job listing 59 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 7455, 'Captain'),
(63, 'Seed Job 60', 'Generated seed job listing 60 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 7530, 'Private'),
(64, 'Seed Job 61', 'Generated seed job listing 61 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 7606, 'Corporal'),
(65, 'Seed Job 62', 'Generated seed job listing 62 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 7681, 'Sergeant'),
(66, 'Seed Job 63', 'Generated seed job listing 63 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 7757, 'Major'),
(67, 'Seed Job 64', 'Generated seed job listing 64 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 7832, 'Lieutenant'),
(68, 'Seed Job 65', 'Generated seed job listing 65 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 7908, 'Captain'),
(69, 'Seed Job 66', 'Generated seed job listing 66 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 7983, 'Private'),
(70, 'Seed Job 67', 'Generated seed job listing 67 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 8059, 'Corporal'),
(71, 'Seed Job 68', 'Generated seed job listing 68 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 8134, 'Sergeant'),
(72, 'Seed Job 69', 'Generated seed job listing 69 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 8210, 'Major'),
(73, 'Seed Job 70', 'Generated seed job listing 70 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 8285, 'Lieutenant'),
(74, 'Seed Job 71', 'Generated seed job listing 71 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 8361, 'Captain'),
(75, 'Seed Job 72', 'Generated seed job listing 72 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 8436, 'Private'),
(76, 'Seed Job 73', 'Generated seed job listing 73 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 8512, 'Corporal'),
(77, 'Seed Job 74', 'Generated seed job listing 74 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 8587, 'Sergeant'),
(78, 'Seed Job 75', 'Generated seed job listing 75 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 8663, 'Major'),
(79, 'Seed Job 76', 'Generated seed job listing 76 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 8738, 'Lieutenant'),
(80, 'Seed Job 77', 'Generated seed job listing 77 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 8814, 'Captain'),
(81, 'Seed Job 78', 'Generated seed job listing 78 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 8889, 'Private'),
(82, 'Seed Job 79', 'Generated seed job listing 79 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 8965, 'Corporal'),
(83, 'Seed Job 80', 'Generated seed job listing 80 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 9040, 'Sergeant'),
(84, 'Seed Job 81', 'Generated seed job listing 81 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 9116, 'Major'),
(85, 'Seed Job 82', 'Generated seed job listing 82 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 9191, 'Lieutenant'),
(86, 'Seed Job 83', 'Generated seed job listing 83 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 9267, 'Captain'),
(87, 'Seed Job 84', 'Generated seed job listing 84 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 9342, 'Private'),
(88, 'Seed Job 85', 'Generated seed job listing 85 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 9418, 'Corporal'),
(89, 'Seed Job 86', 'Generated seed job listing 86 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 9493, 'Sergeant'),
(90, 'Seed Job 87', 'Generated seed job listing 87 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 9569, 'Major'),
(91, 'Seed Job 88', 'Generated seed job listing 88 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 9644, 'Lieutenant'),
(92, 'Seed Job 89', 'Generated seed job listing 89 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 9720, 'Captain'),
(93, 'Seed Job 90', 'Generated seed job listing 90 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 9795, 'Private'),
(94, 'Seed Job 91', 'Generated seed job listing 91 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 9871, 'Corporal'),
(95, 'Seed Job 92', 'Generated seed job listing 92 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 9946, 'Sergeant'),
(96, 'Seed Job 93', 'Generated seed job listing 93 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 10022, 'Major'),
(97, 'Seed Job 94', 'Generated seed job listing 94 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 10097, 'Lieutenant'),
(98, 'Seed Job 95', 'Generated seed job listing 95 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 10173, 'Captain'),
(99, 'Seed Job 96', 'Generated seed job listing 96 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'California', 10248, 'Private'),
(100, 'Seed Job 97', 'Generated seed job listing 97 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Texas', 10324, 'Corporal'),
(101, 'Seed Job 98', 'Generated seed job listing 98 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Florida', 10399, 'Sergeant'),
(102, 'Seed Job 99', 'Generated seed job listing 99 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'Washington', 10475, 'Major'),
(103, 'Seed Job 100', 'Generated seed job listing 100 | seed_run=37e3e96a-54f3-11f1-ace3-ec2e98d43fcd', 'New York', 10550, 'Lieutenant');

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_RECORD`
--

CREATE TABLE `MEDICAL_RECORD` (
  `MedicalID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BloodType` varchar(10) DEFAULT NULL,
  `FitnessStatus` enum('Fit','Duty Limited','Service Temporary','Unfit') DEFAULT NULL,
  `Allergies` text DEFAULT NULL,
  `DocumentPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MEDICAL_RECORD`
--

INSERT INTO `MEDICAL_RECORD` (`MedicalID`, `UserID`, `BloodType`, `FitnessStatus`, `Allergies`, `DocumentPath`) VALUES
(11, 1, 'A-', 'Duty Limited', 'Seed allergy notes 1', '/documents/medical/seed_record_1.pdf'),
(12, 20, 'B+', 'Service Temporary', 'Seed allergy notes 2', '/documents/medical/seed_record_2.pdf'),
(13, 21, 'B-', 'Unfit', 'Seed allergy notes 3', '/documents/medical/seed_record_3.pdf'),
(14, 22, 'AB+', 'Fit', 'Seed allergy notes 4', '/documents/medical/seed_record_4.pdf'),
(15, 23, 'AB-', 'Duty Limited', 'Seed allergy notes 5', '/documents/medical/seed_record_5.pdf'),
(16, 24, 'O+', 'Service Temporary', 'Seed allergy notes 6', '/documents/medical/seed_record_6.pdf'),
(17, 30, 'O-', 'Unfit', 'Seed allergy notes 7', '/documents/medical/seed_record_7.pdf'),
(18, 31, 'A+', 'Fit', 'Seed allergy notes 8', '/documents/medical/seed_record_8.pdf'),
(19, 32, 'A-', 'Duty Limited', 'Seed allergy notes 9', '/documents/medical/seed_record_9.pdf'),
(20, 33, 'B+', 'Service Temporary', 'Seed allergy notes 10', '/documents/medical/seed_record_10.pdf'),
(21, 34, 'B-', 'Unfit', 'Seed allergy notes 11', '/documents/medical/seed_record_11.pdf'),
(22, 35, 'AB+', 'Fit', 'Seed allergy notes 12', '/documents/medical/seed_record_12.pdf'),
(23, 36, 'AB-', 'Duty Limited', 'Seed allergy notes 13', '/documents/medical/seed_record_13.pdf'),
(24, 37, 'O+', 'Service Temporary', 'Seed allergy notes 14', '/documents/medical/seed_record_14.pdf'),
(25, 38, 'O-', 'Unfit', 'Seed allergy notes 15', '/documents/medical/seed_record_15.pdf'),
(26, 39, 'A+', 'Fit', 'Seed allergy notes 16', '/documents/medical/seed_record_16.pdf'),
(27, 40, 'A-', 'Duty Limited', 'Seed allergy notes 17', '/documents/medical/seed_record_17.pdf'),
(28, 41, 'B+', 'Service Temporary', 'Seed allergy notes 18', '/documents/medical/seed_record_18.pdf'),
(29, 42, 'B-', 'Unfit', 'Seed allergy notes 19', '/documents/medical/seed_record_19.pdf'),
(30, 43, 'AB+', 'Fit', 'Seed allergy notes 20', '/documents/medical/seed_record_20.pdf'),
(31, 44, 'AB-', 'Duty Limited', 'Seed allergy notes 21', '/documents/medical/seed_record_21.pdf'),
(32, 45, 'O+', 'Service Temporary', 'Seed allergy notes 22', '/documents/medical/seed_record_22.pdf'),
(33, 46, 'O-', 'Unfit', 'Seed allergy notes 23', '/documents/medical/seed_record_23.pdf'),
(34, 47, 'A+', 'Fit', 'Seed allergy notes 24', '/documents/medical/seed_record_24.pdf'),
(35, 48, 'A-', 'Duty Limited', 'Seed allergy notes 25', '/documents/medical/seed_record_25.pdf'),
(36, 49, 'B+', 'Service Temporary', 'Seed allergy notes 26', '/documents/medical/seed_record_26.pdf'),
(37, 50, 'B-', 'Unfit', 'Seed allergy notes 27', '/documents/medical/seed_record_27.pdf'),
(38, 51, 'AB+', 'Fit', 'Seed allergy notes 28', '/documents/medical/seed_record_28.pdf'),
(39, 52, 'AB-', 'Duty Limited', 'Seed allergy notes 29', '/documents/medical/seed_record_29.pdf'),
(40, 53, 'O+', 'Service Temporary', 'Seed allergy notes 30', '/documents/medical/seed_record_30.pdf'),
(41, 54, 'O-', 'Unfit', 'Seed allergy notes 31', '/documents/medical/seed_record_31.pdf'),
(42, 55, 'A+', 'Fit', 'Seed allergy notes 32', '/documents/medical/seed_record_32.pdf'),
(43, 56, 'A-', 'Duty Limited', 'Seed allergy notes 33', '/documents/medical/seed_record_33.pdf'),
(44, 57, 'B+', 'Service Temporary', 'Seed allergy notes 34', '/documents/medical/seed_record_34.pdf'),
(45, 58, 'B-', 'Unfit', 'Seed allergy notes 35', '/documents/medical/seed_record_35.pdf'),
(46, 59, 'AB+', 'Fit', 'Seed allergy notes 36', '/documents/medical/seed_record_36.pdf'),
(47, 60, 'AB-', 'Duty Limited', 'Seed allergy notes 37', '/documents/medical/seed_record_37.pdf'),
(48, 61, 'O+', 'Service Temporary', 'Seed allergy notes 38', '/documents/medical/seed_record_38.pdf'),
(49, 62, 'O-', 'Unfit', 'Seed allergy notes 39', '/documents/medical/seed_record_39.pdf'),
(50, 63, 'A+', 'Fit', 'Seed allergy notes 40', '/documents/medical/seed_record_40.pdf'),
(51, 64, 'A-', 'Duty Limited', 'Seed allergy notes 41', '/documents/medical/seed_record_41.pdf'),
(52, 65, 'B+', 'Service Temporary', 'Seed allergy notes 42', '/documents/medical/seed_record_42.pdf'),
(53, 66, 'B-', 'Unfit', 'Seed allergy notes 43', '/documents/medical/seed_record_43.pdf'),
(54, 67, 'AB+', 'Fit', 'Seed allergy notes 44', '/documents/medical/seed_record_44.pdf'),
(55, 68, 'AB-', 'Duty Limited', 'Seed allergy notes 45', '/documents/medical/seed_record_45.pdf'),
(56, 69, 'O+', 'Service Temporary', 'Seed allergy notes 46', '/documents/medical/seed_record_46.pdf'),
(57, 70, 'O-', 'Unfit', 'Seed allergy notes 47', '/documents/medical/seed_record_47.pdf'),
(58, 71, 'A+', 'Fit', 'Seed allergy notes 48', '/documents/medical/seed_record_48.pdf'),
(59, 72, 'A-', 'Duty Limited', 'Seed allergy notes 49', '/documents/medical/seed_record_49.pdf'),
(60, 73, 'B+', 'Service Temporary', 'Seed allergy notes 50', '/documents/medical/seed_record_50.pdf'),
(61, 74, 'B-', 'Unfit', 'Seed allergy notes 51', '/documents/medical/seed_record_51.pdf'),
(62, 75, 'AB+', 'Fit', 'Seed allergy notes 52', '/documents/medical/seed_record_52.pdf'),
(63, 76, 'AB-', 'Duty Limited', 'Seed allergy notes 53', '/documents/medical/seed_record_53.pdf'),
(64, 77, 'O+', 'Service Temporary', 'Seed allergy notes 54', '/documents/medical/seed_record_54.pdf'),
(65, 78, 'O-', 'Unfit', 'Seed allergy notes 55', '/documents/medical/seed_record_55.pdf'),
(66, 79, 'A+', 'Fit', 'Seed allergy notes 56', '/documents/medical/seed_record_56.pdf'),
(67, 80, 'A-', 'Duty Limited', 'Seed allergy notes 57', '/documents/medical/seed_record_57.pdf'),
(68, 81, 'B+', 'Service Temporary', 'Seed allergy notes 58', '/documents/medical/seed_record_58.pdf'),
(69, 82, 'B-', 'Unfit', 'Seed allergy notes 59', '/documents/medical/seed_record_59.pdf'),
(70, 83, 'AB+', 'Fit', 'Seed allergy notes 60', '/documents/medical/seed_record_60.pdf'),
(71, 84, 'AB-', 'Duty Limited', 'Seed allergy notes 61', '/documents/medical/seed_record_61.pdf'),
(72, 85, 'O+', 'Service Temporary', 'Seed allergy notes 62', '/documents/medical/seed_record_62.pdf'),
(73, 86, 'O-', 'Unfit', 'Seed allergy notes 63', '/documents/medical/seed_record_63.pdf'),
(74, 87, 'A+', 'Fit', 'Seed allergy notes 64', '/documents/medical/seed_record_64.pdf'),
(75, 88, 'A-', 'Duty Limited', 'Seed allergy notes 65', '/documents/medical/seed_record_65.pdf'),
(76, 89, 'B+', 'Service Temporary', 'Seed allergy notes 66', '/documents/medical/seed_record_66.pdf'),
(77, 90, 'B-', 'Unfit', 'Seed allergy notes 67', '/documents/medical/seed_record_67.pdf'),
(78, 91, 'AB+', 'Fit', 'Seed allergy notes 68', '/documents/medical/seed_record_68.pdf'),
(79, 92, 'AB-', 'Duty Limited', 'Seed allergy notes 69', '/documents/medical/seed_record_69.pdf'),
(80, 93, 'O+', 'Service Temporary', 'Seed allergy notes 70', '/documents/medical/seed_record_70.pdf'),
(81, 94, 'O-', 'Unfit', 'Seed allergy notes 71', '/documents/medical/seed_record_71.pdf'),
(82, 95, 'A+', 'Fit', 'Seed allergy notes 72', '/documents/medical/seed_record_72.pdf'),
(83, 96, 'A-', 'Duty Limited', 'Seed allergy notes 73', '/documents/medical/seed_record_73.pdf'),
(84, 97, 'B+', 'Service Temporary', 'Seed allergy notes 74', '/documents/medical/seed_record_74.pdf'),
(85, 98, 'B-', 'Unfit', 'Seed allergy notes 75', '/documents/medical/seed_record_75.pdf'),
(86, 99, 'AB+', 'Fit', 'Seed allergy notes 76', '/documents/medical/seed_record_76.pdf'),
(87, 100, 'AB-', 'Duty Limited', 'Seed allergy notes 77', '/documents/medical/seed_record_77.pdf'),
(88, 101, 'O+', 'Service Temporary', 'Seed allergy notes 78', '/documents/medical/seed_record_78.pdf'),
(89, 102, 'O-', 'Unfit', 'Seed allergy notes 79', '/documents/medical/seed_record_79.pdf'),
(90, 103, 'A+', 'Fit', 'Seed allergy notes 80', '/documents/medical/seed_record_80.pdf'),
(91, 104, 'A-', 'Duty Limited', 'Seed allergy notes 81', '/documents/medical/seed_record_81.pdf'),
(92, 105, 'B+', 'Service Temporary', 'Seed allergy notes 82', '/documents/medical/seed_record_82.pdf'),
(93, 106, 'B-', 'Unfit', 'Seed allergy notes 83', '/documents/medical/seed_record_83.pdf'),
(94, 107, 'AB+', 'Fit', 'Seed allergy notes 84', '/documents/medical/seed_record_84.pdf'),
(95, 108, 'AB-', 'Duty Limited', 'Seed allergy notes 85', '/documents/medical/seed_record_85.pdf'),
(96, 109, 'O+', 'Service Temporary', 'Seed allergy notes 86', '/documents/medical/seed_record_86.pdf'),
(97, 110, 'O-', 'Unfit', 'Seed allergy notes 87', '/documents/medical/seed_record_87.pdf'),
(98, 111, 'A+', 'Fit', 'Seed allergy notes 88', '/documents/medical/seed_record_88.pdf'),
(99, 112, 'A-', 'Duty Limited', 'Seed allergy notes 89', '/documents/medical/seed_record_89.pdf'),
(100, 113, 'B+', 'Service Temporary', 'Seed allergy notes 90', '/documents/medical/seed_record_90.pdf'),
(101, 114, 'B-', 'Unfit', 'Seed allergy notes 91', '/documents/medical/seed_record_91.pdf'),
(102, 115, 'AB+', 'Fit', 'Seed allergy notes 92', '/documents/medical/seed_record_92.pdf'),
(103, 116, 'AB-', 'Duty Limited', 'Seed allergy notes 93', '/documents/medical/seed_record_93.pdf'),
(104, 117, 'O+', 'Service Temporary', 'Seed allergy notes 94', '/documents/medical/seed_record_94.pdf'),
(105, 118, 'O-', 'Unfit', 'Seed allergy notes 95', '/documents/medical/seed_record_95.pdf'),
(106, 119, 'A+', 'Fit', 'Seed allergy notes 96', '/documents/medical/seed_record_96.pdf'),
(107, 120, 'A-', 'Duty Limited', 'Seed allergy notes 97', '/documents/medical/seed_record_97.pdf'),
(108, 121, 'B+', 'Service Temporary', 'Seed allergy notes 98', '/documents/medical/seed_record_98.pdf'),
(109, 122, 'B-', 'Unfit', 'Seed allergy notes 99', '/documents/medical/seed_record_99.pdf'),
(110, 123, 'AB+', 'Fit', 'Seed allergy notes 100', '/documents/medical/seed_record_100.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `MILITARY_RECORD`
--

CREATE TABLE `MILITARY_RECORD` (
  `RecordID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `CurrentRank` varchar(255) DEFAULT NULL,
  `Status` enum('Active','Reserve') DEFAULT 'Active',
  `LastUpdateDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ResidentialAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MILITARY_RECORD`
--

INSERT INTO `MILITARY_RECORD` (`RecordID`, `UserID`, `CurrentRank`, `Status`, `LastUpdateDate`, `ResidentialAddress`) VALUES
(12, 1, 'Corporal', 'Reserve', '2026-05-20 11:01:57', '1 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(13, 20, 'Sergeant', 'Active', '2026-05-19 11:01:57', '2 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(14, 21, 'Major', 'Reserve', '2026-05-18 11:01:57', '3 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(15, 22, 'Private', 'Active', '2026-05-17 11:01:57', '4 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(16, 23, 'Corporal', 'Reserve', '2026-05-16 11:01:57', '5 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(17, 24, 'Sergeant', 'Active', '2026-05-15 11:01:57', '6 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(18, 30, 'Major', 'Reserve', '2026-05-14 11:01:57', '7 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(19, 31, 'Private', 'Active', '2026-05-13 11:01:57', '8 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(20, 32, 'Corporal', 'Reserve', '2026-05-12 11:01:57', '9 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(21, 33, 'Sergeant', 'Active', '2026-05-11 11:01:57', '10 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(22, 34, 'Major', 'Reserve', '2026-05-10 11:01:57', '11 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(23, 35, 'Private', 'Active', '2026-05-09 11:01:57', '12 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(24, 36, 'Corporal', 'Reserve', '2026-05-08 11:01:57', '13 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(25, 37, 'Sergeant', 'Active', '2026-05-07 11:01:57', '14 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(26, 38, 'Major', 'Reserve', '2026-05-06 11:01:57', '15 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(27, 39, 'Private', 'Active', '2026-05-05 11:01:57', '16 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(28, 40, 'Corporal', 'Reserve', '2026-05-04 11:01:57', '17 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(29, 41, 'Sergeant', 'Active', '2026-05-03 11:01:57', '18 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(30, 42, 'Major', 'Reserve', '2026-05-02 11:01:57', '19 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(31, 43, 'Private', 'Active', '2026-05-01 11:01:57', '20 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(32, 44, 'Corporal', 'Reserve', '2026-04-30 11:01:57', '21 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(33, 45, 'Sergeant', 'Active', '2026-04-29 11:01:57', '22 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(34, 46, 'Major', 'Reserve', '2026-04-28 11:01:57', '23 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(35, 47, 'Private', 'Active', '2026-04-27 11:01:57', '24 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(36, 48, 'Corporal', 'Reserve', '2026-04-26 11:01:57', '25 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(37, 49, 'Sergeant', 'Active', '2026-04-25 11:01:57', '26 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(38, 50, 'Major', 'Reserve', '2026-04-24 11:01:57', '27 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(39, 51, 'Private', 'Active', '2026-04-23 11:01:57', '28 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(40, 52, 'Corporal', 'Reserve', '2026-04-22 11:01:57', '29 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(41, 53, 'Sergeant', 'Active', '2026-04-21 11:01:57', '30 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(42, 54, 'Major', 'Reserve', '2026-04-20 11:01:57', '31 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(43, 55, 'Private', 'Active', '2026-04-19 11:01:57', '32 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(44, 56, 'Corporal', 'Reserve', '2026-04-18 11:01:57', '33 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(45, 57, 'Sergeant', 'Active', '2026-04-17 11:01:57', '34 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(46, 58, 'Major', 'Reserve', '2026-04-16 11:01:57', '35 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(47, 59, 'Private', 'Active', '2026-04-15 11:01:57', '36 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(48, 60, 'Corporal', 'Reserve', '2026-04-14 11:01:57', '37 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(49, 61, 'Sergeant', 'Active', '2026-04-13 11:01:57', '38 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(50, 62, 'Major', 'Reserve', '2026-04-12 11:01:57', '39 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(51, 63, 'Private', 'Active', '2026-04-11 11:01:57', '40 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(52, 64, 'Corporal', 'Reserve', '2026-04-10 11:01:57', '41 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(53, 65, 'Sergeant', 'Active', '2026-04-09 11:01:57', '42 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(54, 66, 'Major', 'Reserve', '2026-04-08 11:01:57', '43 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(55, 67, 'Private', 'Active', '2026-04-07 11:01:57', '44 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(56, 68, 'Corporal', 'Reserve', '2026-04-06 11:01:57', '45 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(57, 69, 'Sergeant', 'Active', '2026-04-05 11:01:57', '46 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(58, 70, 'Major', 'Reserve', '2026-04-04 11:01:57', '47 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(59, 71, 'Private', 'Active', '2026-04-03 11:01:57', '48 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(60, 72, 'Corporal', 'Reserve', '2026-04-02 11:01:57', '49 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(61, 73, 'Sergeant', 'Active', '2026-04-01 11:01:57', '50 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(62, 74, 'Major', 'Reserve', '2026-03-31 11:01:57', '51 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(63, 75, 'Private', 'Active', '2026-03-30 11:01:57', '52 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(64, 76, 'Corporal', 'Reserve', '2026-03-29 11:01:57', '53 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(65, 77, 'Sergeant', 'Active', '2026-03-28 11:01:57', '54 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(66, 78, 'Major', 'Reserve', '2026-03-27 11:01:57', '55 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(67, 79, 'Private', 'Active', '2026-03-26 11:01:57', '56 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(68, 80, 'Corporal', 'Reserve', '2026-03-25 11:01:57', '57 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(69, 81, 'Sergeant', 'Active', '2026-03-24 11:01:57', '58 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(70, 82, 'Major', 'Reserve', '2026-03-23 11:01:57', '59 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(71, 83, 'Private', 'Active', '2026-03-22 11:01:57', '60 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(72, 84, 'Corporal', 'Reserve', '2026-03-21 11:01:57', '61 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(73, 85, 'Sergeant', 'Active', '2026-03-20 11:01:57', '62 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(74, 86, 'Major', 'Reserve', '2026-03-19 11:01:57', '63 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(75, 87, 'Private', 'Active', '2026-03-18 11:01:57', '64 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(76, 88, 'Corporal', 'Reserve', '2026-03-17 11:01:57', '65 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(77, 89, 'Sergeant', 'Active', '2026-03-16 11:01:57', '66 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(78, 90, 'Major', 'Reserve', '2026-03-15 11:01:57', '67 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(79, 91, 'Private', 'Active', '2026-03-14 11:01:57', '68 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(80, 92, 'Corporal', 'Reserve', '2026-03-13 11:01:57', '69 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(81, 93, 'Sergeant', 'Active', '2026-03-12 11:01:57', '70 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(82, 94, 'Major', 'Reserve', '2026-03-11 11:01:57', '71 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(83, 95, 'Private', 'Active', '2026-03-10 11:01:57', '72 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(84, 96, 'Corporal', 'Reserve', '2026-03-09 11:01:57', '73 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(85, 97, 'Sergeant', 'Active', '2026-03-08 11:01:57', '74 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(86, 98, 'Major', 'Reserve', '2026-03-07 11:01:57', '75 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(87, 99, 'Private', 'Active', '2026-03-06 11:01:57', '76 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(88, 100, 'Corporal', 'Reserve', '2026-03-05 11:01:57', '77 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(89, 101, 'Sergeant', 'Active', '2026-03-04 11:01:57', '78 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(90, 102, 'Major', 'Reserve', '2026-03-03 11:01:57', '79 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(91, 103, 'Private', 'Active', '2026-03-02 11:01:57', '80 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(92, 104, 'Corporal', 'Reserve', '2026-03-01 11:01:57', '81 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(93, 105, 'Sergeant', 'Active', '2026-02-28 11:01:57', '82 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(94, 106, 'Major', 'Reserve', '2026-02-27 11:01:57', '83 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(95, 107, 'Private', 'Active', '2026-02-26 11:01:57', '84 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(96, 108, 'Corporal', 'Reserve', '2026-02-25 11:01:57', '85 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(97, 109, 'Sergeant', 'Active', '2026-02-24 11:01:57', '86 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(98, 110, 'Major', 'Reserve', '2026-02-23 11:01:57', '87 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(99, 111, 'Private', 'Active', '2026-02-22 11:01:57', '88 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(100, 112, 'Corporal', 'Reserve', '2026-02-21 11:01:57', '89 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(101, 113, 'Sergeant', 'Active', '2026-02-20 11:01:57', '90 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(102, 114, 'Major', 'Reserve', '2026-02-19 11:01:57', '91 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(103, 115, 'Private', 'Active', '2026-02-18 11:01:57', '92 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(104, 116, 'Corporal', 'Reserve', '2026-02-17 11:01:57', '93 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(105, 117, 'Sergeant', 'Active', '2026-02-16 11:01:57', '94 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(106, 118, 'Major', 'Reserve', '2026-02-15 11:01:57', '95 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(107, 119, 'Private', 'Active', '2026-02-14 11:01:57', '96 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(108, 120, 'Corporal', 'Reserve', '2026-02-13 11:01:57', '97 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(109, 121, 'Sergeant', 'Active', '2026-02-12 11:01:57', '98 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(110, 122, 'Major', 'Reserve', '2026-02-11 11:01:57', '99 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd'),
(111, 123, 'Private', 'Active', '2026-02-10 11:01:57', '100 Service Road, Base District | b7d2ddf1-54f3-11f1-ace3-ec2e98d43fcd');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Rank` varchar(255) DEFAULT NULL,
  `ProfilePicture` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `Role` enum('User','Admin') DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`UserID`, `Username`, `PasswordHash`, `Email`, `Rank`, `ProfilePicture`, `IsActive`, `Role`) VALUES
(1, 'admin', 'zBFsEG7eqHFieMfRqAEbxA==:ffj4jNCxz1tvJUNwHy5kmBGN/HRz2eBjVHwcdmxP34E=', 'a.arkatov.d@gmail.com', 'Admin', NULL, 1, 'Admin'),
(20, 'admin_sasha', 'ejNnQa6zIRXEV5KEAC+9jQ==:FbdYS2mc+QuYRXIKop6fDoUjGQK/ENV2xnm1DqGbCog=', 'sasha@test.com', 'Major', NULL, 1, 'Admin'),
(21, 'clark_admin', 'Kx5lXanfjqHrnjqlJROKsw==:EUECCVGjbZAuq/PUCAOITQuPsr5huzT6RIT2nCVfUqs=', 'clark@test.com', NULL, NULL, 1, 'Admin'),
(22, 'jdoe_soldier', 'qYKsCb6diRbERqbfLvkgCQ==:l20Y+yJiZ3pdvKDbcXfrye6yfXrIL1kOelWk3ddLSa0=', 'jdoe@test.com', 'Sergeant', NULL, 1, 'User'),
(23, 'm_rossi', 'cyvFnhjz9MJO2RE+PgGpwg==:fIYhLcjtS1wbGPrTfG+4vyoc0iAkyMmrBO1Pf7AUpGo=', 'mrossi@test.com', 'Corporal', NULL, 1, 'User'),
(24, 'old_user', 'Nfw20y1W7AoeJ3bEXlO6jQ==:VhGTummWTmFKULkTmRXNVOzt2Ts5eDZSTKKdF1wgEPs=', 'old@test.com', 'Corporal', NULL, 0, 'User'),
(30, 'Elbert_Hand69', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Philip42@yahoo.com', 'Corporal', NULL, 1, 'User'),
(31, 'Trinity_Huel', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Jeramy56@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(32, 'Josh_Emmerich95', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Haylie_McKenzie24@gmail.com', 'Major', NULL, 1, 'Admin'),
(33, 'Joan.Hegmann24', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Cielo42@hotmail.com', 'Sergeant', NULL, 0, 'User'),
(34, 'Nathen67', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Scottie.Bahringer@gmail.com', 'Sergeant', NULL, 0, 'User'),
(35, 'Joany.Morar', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Betsy_Mosciski64@gmail.com', 'Private', NULL, 1, 'User'),
(36, 'Juvenal.Tremblay36', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Travon62@gmail.com', 'Private', NULL, 1, 'User'),
(37, 'Ayla.Daugherty', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Kailyn78@yahoo.com', 'Major', NULL, 1, 'Admin'),
(38, 'Mikayla.Gibson90', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Claudine36@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(39, 'Nigel97', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Orin_Douglas63@yahoo.com', 'Major', NULL, 1, 'Admin'),
(40, 'Linnie80', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Vivienne27@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(41, 'Madilyn.Rutherford32', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Favian78@gmail.com', NULL, NULL, 1, 'User'),
(42, 'Dagmar76', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Alessia.Braun@gmail.com', 'Sergeant', NULL, 1, 'User'),
(43, 'Toby.Dooley', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Brannon1@hotmail.com', 'Major', NULL, 1, 'User'),
(44, 'Jacinto_Terry10', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Rodrick_Feeney92@yahoo.com', NULL, NULL, 1, 'Admin'),
(45, 'Henri_Borer28', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Abner.McGlynn@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(46, 'Arne.Lebsack56', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Johanna.Little@yahoo.com', 'Private', NULL, 1, 'Admin'),
(47, 'Annalise_Aufderhar', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Ayana_Dickens61@yahoo.com', NULL, NULL, 1, 'User'),
(48, 'Cornell_McLaughlin', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Olen75@gmail.com', NULL, NULL, 1, 'Admin'),
(49, 'Jeanette.Wilderman41', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Floyd19@gmail.com', 'Major', NULL, 1, 'Admin'),
(50, 'Jamaal_Hirthe11', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Geovanni83@yahoo.com', NULL, NULL, 0, 'User'),
(51, 'Merritt.Braun', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Pat.Sipes@gmail.com', 'Sergeant', NULL, 0, 'Admin'),
(52, 'Tod23', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Monty.Russel95@hotmail.com', 'Corporal', NULL, 1, 'User'),
(53, 'Tabitha.Ziemann', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Jonathon.Rogahn@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(54, 'Emory75', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Rosendo26@yahoo.com', 'Private', NULL, 0, 'Admin'),
(55, 'Sheila39', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Reanna7@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(56, 'Pearline_Gutkowski', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Lawrence18@yahoo.com', NULL, NULL, 1, 'User'),
(57, 'Keagan.Hettinger86', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Darryl.Balistreri86@gmail.com', 'Major', NULL, 1, 'Admin'),
(58, 'Eliseo.Leffler4', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Hayden.Schmidt20@gmail.com', 'Corporal', NULL, 1, 'User'),
(59, 'Gardner_Fritsch55', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Jenifer.Reichel@gmail.com', NULL, NULL, 1, 'User'),
(60, 'Toy28', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Braeden90@gmail.com', 'Major', NULL, 1, 'Admin'),
(61, 'Lucinda82', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Leon.Huels1@gmail.com', 'Private', NULL, 1, 'User'),
(62, 'Rhett.Frami31', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Jennie_Rutherford@gmail.com', 'Major', NULL, 1, 'User'),
(63, 'Hilda.Weissnat71', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Randy.Metz59@hotmail.com', 'Major', NULL, 1, 'User'),
(64, 'Jaron67', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Leland90@gmail.com', 'Corporal', NULL, 1, 'User'),
(65, 'Darrel82', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Adolfo8@yahoo.com', 'Sergeant', NULL, 0, 'User'),
(66, 'Earnestine85', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Adrienne.Corwin0@hotmail.com', NULL, NULL, 0, 'User'),
(67, 'Brandy_Upton', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Elwyn85@hotmail.com', 'Corporal', NULL, 0, 'User'),
(68, 'Marianne_Connelly8', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Geo14@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(69, 'Kaya_Hegmann55', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Turner_Glover81@gmail.com', 'Major', NULL, 1, 'Admin'),
(70, 'Gino55', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Giles.Nicolas47@gmail.com', 'Major', NULL, 1, 'User'),
(71, 'Genesis_Brekke35', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Rollin46@yahoo.com', NULL, NULL, 1, 'User'),
(72, 'Geovany.Carter', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Sadye.Kunze@hotmail.com', 'Private', NULL, 1, 'User'),
(73, 'Franz_Tremblay', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Wilmer_Schuppe27@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(74, 'Chandler_Fadel48', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Freddy.Heidenreich@hotmail.com', 'Private', NULL, 1, 'User'),
(75, 'Wallace72', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Tristin.OKon@hotmail.com', 'Private', NULL, 1, 'User'),
(76, 'Jessyca.Feeney', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Sibyl_Hintz@yahoo.com', NULL, NULL, 1, 'Admin'),
(77, 'Cheyanne88', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Cassandre.Reilly57@hotmail.com', 'Private', NULL, 1, 'Admin'),
(78, 'Dariana99', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Raegan41@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(79, 'Deangelo51', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Dina_Beahan@yahoo.com', 'Private', NULL, 0, 'Admin'),
(80, 'Carissa.Casper99', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Keyon.Labadie@hotmail.com', 'Major', NULL, 0, 'User'),
(81, 'Frances74', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Donnell_Bayer@gmail.com', 'Corporal', NULL, 1, 'Admin'),
(82, 'Nikolas_Moen', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Uriah3@gmail.com', 'Private', NULL, 0, 'User'),
(83, 'Name.Rowe', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Amy.McDermott56@yahoo.com', 'Major', NULL, 1, 'Admin'),
(84, 'Gardner.Goodwin26', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Freda82@hotmail.com', 'Major', NULL, 1, 'User'),
(85, 'Brady_Gutmann', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Sydnee95@yahoo.com', 'Private', NULL, 1, 'User'),
(86, 'Jess.Mante68', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Hilario.Dicki@gmail.com', 'Private', NULL, 1, 'Admin'),
(87, 'Norwood_Lind28', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Kiley_Leannon@hotmail.com', 'Corporal', NULL, 1, 'User'),
(88, 'Guiseppe77', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Tito79@yahoo.com', 'Sergeant', NULL, 0, 'User'),
(89, 'Helen.Corkery', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Madie.Blick@hotmail.com', NULL, NULL, 1, 'User'),
(90, 'Krista29', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Trystan_Harris77@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(91, 'Alize.Herzog', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Kyler_Predovic@yahoo.com', 'Private', NULL, 1, 'Admin'),
(92, 'Isaiah_Jaskolski79', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Leila_Flatley@gmail.com', NULL, NULL, 1, 'User'),
(93, 'Ashlee_Cole', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Jessica69@gmail.com', 'Sergeant', NULL, 1, 'User'),
(94, 'Aliza36', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Deron.Stokes@hotmail.com', 'Private', NULL, 1, 'Admin'),
(95, 'Rozella16', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Valentin11@hotmail.com', 'Private', NULL, 1, 'Admin'),
(96, 'Alyson1', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Merlin58@gmail.com', 'Sergeant', NULL, 0, 'Admin'),
(97, 'Keshaun.Goldner69', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Albin_Ernser91@yahoo.com', NULL, NULL, 1, 'Admin'),
(98, 'Gayle.Christiansen', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Geo.Ledner32@yahoo.com', NULL, NULL, 1, 'User'),
(99, 'Isai.Davis62', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Vaughn.Bogisich64@gmail.com', 'Sergeant', NULL, 1, 'User'),
(100, 'Rosetta_Runte', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Twila_Cummings25@gmail.com', NULL, NULL, 1, 'User'),
(101, 'Johnnie_Little', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Gianni_Pfannerstill@gmail.com', NULL, NULL, 1, 'Admin'),
(102, 'Jerry.Hettinger75', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Junior.Boyer6@yahoo.com', 'Corporal', NULL, 1, 'User'),
(103, 'Virginia_Kertzmann24', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Westley_Donnelly@gmail.com', 'Private', NULL, 1, 'User'),
(104, 'Linnea.Abernathy', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Estelle.Graham40@hotmail.com', NULL, NULL, 1, 'Admin'),
(105, 'Sonny60', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Savion21@yahoo.com', NULL, NULL, 1, 'User'),
(106, 'Adolf.Zboncak98', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Terrance.Ward@hotmail.com', 'Major', NULL, 1, 'Admin'),
(107, 'Buck_Padberg2', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Brendon.Reilly@hotmail.com', 'Major', NULL, 0, 'User'),
(108, 'Lyla_Christiansen96', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Erica.Auer67@hotmail.com', 'Sergeant', NULL, 0, 'Admin'),
(109, 'Ashly.Ryan', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Marquis.Koelpin@gmail.com', NULL, NULL, 1, 'Admin'),
(110, 'Emmie.Maggio31', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Felton70@gmail.com', NULL, NULL, 1, 'Admin'),
(111, 'Steve65', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Sydney2@hotmail.com', 'Private', NULL, 1, 'Admin'),
(112, 'Houston45', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Helmer.Wiegand6@yahoo.com', 'Sergeant', NULL, 0, 'User'),
(113, 'Florencio.Daniel', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Julien.Ferry21@gmail.com', 'Private', NULL, 1, 'User'),
(114, 'Christ10', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Amelia.Mann18@gmail.com', 'Private', NULL, 1, 'User'),
(115, 'Zoie.Hoppe', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Domenico.Davis@hotmail.com', 'Major', NULL, 1, 'Admin'),
(116, 'Rosalind.Zulauf29', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Luis_Emmerich15@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(117, 'Jayne.Kirlin70', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Devyn_Adams14@yahoo.com', 'Corporal', NULL, 1, 'User'),
(118, 'Wade.Wilderman', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Alford_King@yahoo.com', 'Corporal', NULL, 0, 'User'),
(119, 'Akeem_Leannon', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Samantha74@yahoo.com', 'Corporal', NULL, 0, 'User'),
(120, 'Wanda_Altenwerth', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Makenzie.DuBuque@yahoo.com', NULL, NULL, 0, 'Admin'),
(121, 'Marilyne.Bashirian', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Roosevelt.Walsh12@gmail.com', NULL, NULL, 1, 'User'),
(122, 'Milan54', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Eleonore29@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(123, 'Stefan_OKeefe74', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Schuyler_Hammes35@yahoo.com', 'Corporal', NULL, 1, 'User'),
(124, 'Elyse47', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Alayna.Feest74@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(125, 'Lilyan69', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Miracle97@gmail.com', 'Major', NULL, 1, 'Admin'),
(126, 'Ian41', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Vergie_Hegmann76@hotmail.com', 'Sergeant', NULL, 0, 'User'),
(127, 'Milan.Walter65', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Evert_Grady@gmail.com', 'Major', NULL, 1, 'Admin'),
(128, 'Demetrius67', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Bethel.Johnston86@hotmail.com', 'Major', NULL, 1, 'User'),
(129, 'Tierra42', 'fnNxbco3ExkqxfQycqj0CA==:+RzFOozwFUPXE0TzvknVvl5pNL5AXw8ZLVWhHOmBj14=', 'Roselyn_Runolfsson5@gmail.com', NULL, NULL, 0, 'Admin'),
(130, 'Friedrich_McKenzie', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Golda.Heaney@gmail.com', NULL, NULL, 1, 'User'),
(131, 'Daron.Leffler', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Omari74@gmail.com', 'Sergeant', NULL, 0, 'User'),
(132, 'Brittany.White93', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Elda45@yahoo.com', 'Private', NULL, 1, 'Admin'),
(133, 'Raphael58', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Brionna.Mertz@yahoo.com', NULL, NULL, 1, 'User'),
(134, 'Myron_Mills', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Arturo84@gmail.com', 'Sergeant', NULL, 1, 'User'),
(135, 'Austin5', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Raina_West53@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(136, 'Dasia.Blanda51', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Geovanni.Borer@gmail.com', 'Private', NULL, 0, 'Admin'),
(137, 'Name_Murray', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Jacinthe24@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(138, 'Hollis55', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Jabari_Shanahan@yahoo.com', 'Major', NULL, 1, 'User'),
(139, 'Vinnie.Monahan', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Walton77@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(140, 'Ruth.Kerluke', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kenya.Kemmer80@hotmail.com', 'Corporal', NULL, 0, 'Admin'),
(141, 'Merle.Gislason', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Bailee_Stracke@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(142, 'Ronaldo_Mills75', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Alisa.Gottlieb@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(143, 'Jules84', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Alisa.Dare35@yahoo.com', 'Major', NULL, 1, 'User'),
(144, 'Johnnie_Schaden59', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Devan66@yahoo.com', NULL, NULL, 1, 'User'),
(145, 'Jayde.Klein86', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Mazie16@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(146, 'Destiney_Morar61', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Jayme_Moen0@gmail.com', 'Private', NULL, 1, 'User'),
(147, 'Clement44', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Bridie_Medhurst72@hotmail.com', 'Corporal', NULL, 0, 'User'),
(148, 'Lucinda.Waelchi82', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Emmalee60@gmail.com', 'Major', NULL, 1, 'User'),
(149, 'Friedrich.Gusikowski', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Dominic.Barton@yahoo.com', 'Major', NULL, 0, 'Admin'),
(150, 'Emanuel_Hyatt', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Tatum53@yahoo.com', 'Major', NULL, 0, 'Admin'),
(151, 'Birdie82', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Tod_Larson@gmail.com', 'Major', NULL, 0, 'User'),
(152, 'Shanel_Ortiz75', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Aditya.Stehr79@gmail.com', 'Private', NULL, 1, 'User'),
(153, 'Gilbert53', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Ava.Hoeger91@gmail.com', 'Private', NULL, 1, 'User'),
(154, 'Eloisa_Stroman', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Amina.Kemmer@yahoo.com', NULL, NULL, 1, 'User'),
(155, 'Mariela_Torp7', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Nickolas97@hotmail.com', 'Major', NULL, 1, 'Admin'),
(156, 'Carmelo_Funk', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kole_Grady27@hotmail.com', 'Major', NULL, 1, 'Admin'),
(157, 'Kacey.Johnson33', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Robyn18@gmail.com', NULL, NULL, 1, 'User'),
(158, 'Ada.Swift', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Rasheed_Walter@yahoo.com', 'Major', NULL, 1, 'User'),
(159, 'Conner.Crist31', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kamryn84@yahoo.com', 'Major', NULL, 1, 'User'),
(160, 'Hadley_Schaden', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Erika_Mertz84@yahoo.com', NULL, NULL, 1, 'User'),
(161, 'Drew.Kling', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Doug36@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(162, 'Angel31', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Clementina_Flatley@hotmail.com', 'Private', NULL, 1, 'Admin'),
(163, 'Berniece_Abernathy', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Madge58@yahoo.com', 'Private', NULL, 1, 'Admin'),
(164, 'Salvador.Gislason2', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Emmanuel.Abbott@yahoo.com', 'Corporal', NULL, 1, 'User'),
(165, 'Cora.Swaniawski22', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Arch8@gmail.com', 'Major', NULL, 1, 'Admin'),
(166, 'Talia.Frami', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Ofelia_Abernathy@yahoo.com', 'Sergeant', NULL, 0, 'Admin'),
(167, 'Finn60', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Bobby_Schulist@gmail.com', NULL, NULL, 0, 'User'),
(168, 'Makenna.Lehner', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Eleanore.Hoeger36@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(169, 'Laurie_Hessel13', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Julius.Parisian80@hotmail.com', 'Private', NULL, 0, 'Admin'),
(170, 'Lafayette.Ullrich73', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Zachery.Sawayn30@yahoo.com', 'Corporal', NULL, 1, 'User'),
(171, 'Valerie_Torp', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kianna18@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(172, 'Emmet1', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Weldon73@hotmail.com', NULL, NULL, 1, 'User'),
(173, 'Abdul10', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Modesta_Marvin@gmail.com', 'Private', NULL, 1, 'Admin'),
(174, 'Bart.Reichert13', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Greg2@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(175, 'Adan_Yost15', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kareem_Zboncak@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(176, 'Pamela58', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Elise_Bogan@hotmail.com', 'Corporal', NULL, 1, 'User'),
(177, 'Gia50', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Jordy21@gmail.com', 'Major', NULL, 1, 'User'),
(178, 'Lance.Gleichner', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Diego66@gmail.com', 'Major', NULL, 0, 'User'),
(179, 'Jeramy_Mayert88', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Ivah54@yahoo.com', 'Corporal', NULL, 1, 'User'),
(180, 'Briana_Waelchi', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Zachary_Gulgowski96@gmail.com', 'Major', NULL, 1, 'Admin'),
(181, 'Albert.Huels17', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Virginie_Ledner78@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(182, 'Aron52', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Larry9@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(183, 'Ernestina84', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Garth_Welch40@gmail.com', NULL, NULL, 1, 'User'),
(184, 'Alvena_Jerde', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Richie_Sipes35@gmail.com', 'Corporal', NULL, 0, 'Admin'),
(185, 'Joannie3', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Letha.Torp52@gmail.com', 'Major', NULL, 0, 'Admin'),
(186, 'Kyler_Huel90', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Celine_Hayes@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(187, 'Elsie.Hills56', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Hal.Bailey@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(188, 'Norma_Emard79', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Cloyd_Green53@hotmail.com', 'Private', NULL, 0, 'User'),
(189, 'Mathias.McCullough56', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Josianne_Rau@yahoo.com', 'Major', NULL, 0, 'Admin'),
(190, 'Bernardo.Ullrich82', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Nannie_Becker66@gmail.com', 'Private', NULL, 1, 'Admin'),
(191, 'Gia58', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Gregoria_Dicki@hotmail.com', 'Private', NULL, 1, 'User'),
(192, 'Bryana62', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Earline_Nienow68@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(193, 'Cristina67', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Retta85@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(194, 'Elyssa.Stehr', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Calista_OConnell@gmail.com', 'Corporal', NULL, 0, 'User'),
(195, 'Meagan.Ryan', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Blair.Kassulke94@yahoo.com', NULL, NULL, 1, 'User'),
(196, 'Rosendo.Farrell', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Amanda_Lockman@gmail.com', 'Corporal', NULL, 1, 'User'),
(197, 'Maynard_Kihn22', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Benjamin66@hotmail.com', NULL, NULL, 1, 'User'),
(198, 'Westley.Marks59', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Adele94@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(199, 'Aileen.Morar0', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Milo_Lemke30@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(200, 'Bethel40', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Emory.Sauer5@hotmail.com', 'Corporal', NULL, 1, 'User'),
(201, 'Brielle.McClure', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kayli_Jaskolski@hotmail.com', 'Major', NULL, 1, 'Admin'),
(202, 'Cornelius97', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kennedy_Altenwerth@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(203, 'Nichole_DAmore63', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Trevor_Miller@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(204, 'Jimmie.Hilpert15', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Effie_Wolf34@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(205, 'Earlene.Maggio76', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Bell_Anderson@gmail.com', 'Private', NULL, 1, 'Admin'),
(206, 'Orlo23', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Bernice.Reynolds33@hotmail.com', NULL, NULL, 1, 'Admin'),
(207, 'Laurianne.Quigley', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Mitchell.Roob@hotmail.com', 'Corporal', NULL, 1, 'User'),
(208, 'Jarrett94', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Aniya_Farrell@gmail.com', 'Major', NULL, 1, 'Admin'),
(209, 'Amani45', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kiana_Kassulke@hotmail.com', 'Corporal', NULL, 1, 'User'),
(210, 'Hardy.Towne', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Beatrice.Grimes@gmail.com', 'Sergeant', NULL, 1, 'User'),
(211, 'Percy_Wiegand', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Alberto_Wiza13@hotmail.com', 'Corporal', NULL, 1, 'User'),
(212, 'Coy_White', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Sherman_Dietrich@hotmail.com', NULL, NULL, 1, 'Admin'),
(213, 'Amy46', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Marlon.Lindgren@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(214, 'Albertha5', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Barney.Fritsch@gmail.com', 'Sergeant', NULL, 0, 'User'),
(215, 'Maymie_Stehr', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Misty30@yahoo.com', 'Major', NULL, 1, 'Admin'),
(216, 'Emelie.Hand24', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kaelyn.Schoen@gmail.com', NULL, NULL, 0, 'User'),
(217, 'Heaven_Mraz', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Claude.Franecki@yahoo.com', 'Major', NULL, 1, 'Admin'),
(218, 'Doris.Koch', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Alyce6@yahoo.com', 'Corporal', NULL, 1, 'User'),
(219, 'Terence55', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Beryl_Olson@hotmail.com', NULL, NULL, 1, 'Admin'),
(220, 'Millie_Dooley', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Bruce88@gmail.com', NULL, NULL, 1, 'Admin'),
(221, 'Lesly.Treutel46', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Hans.Nader78@yahoo.com', 'Corporal', NULL, 0, 'User'),
(222, 'Saige_Weber56', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Arlo.Jenkins28@yahoo.com', 'Private', NULL, 1, 'User'),
(223, 'Ellis_Konopelski24', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Jarrod_Oberbrunner@hotmail.com', NULL, NULL, 1, 'Admin'),
(224, 'Stephania_Kuphal', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Jeromy_Paucek@hotmail.com', 'Corporal', NULL, 0, 'User'),
(225, 'Madilyn.Gulgowski', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kayden49@hotmail.com', NULL, NULL, 1, 'User'),
(226, 'Gregorio_Toy29', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Eugenia_Sporer18@hotmail.com', NULL, NULL, 1, 'Admin'),
(227, 'Glennie16', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Deshaun.Ratke52@gmail.com', 'Sergeant', NULL, 1, 'User'),
(228, 'Kaelyn.Kessler42', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Kayla42@gmail.com', 'Major', NULL, 0, 'User'),
(229, 'Nickolas64', 'bnwGPTE1GC343W2/2QpzMg==:1KaybYvsJjULFLO/jWV+uOPPuInVSZSrbGEMMt20r20=', 'Taya.Mante70@hotmail.com', 'Private', NULL, 1, 'Admin'),
(230, 'Brooke.Ondricka7', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Derrick.Hoppe@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(231, 'Bernice_Kuhn55', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Gwen_Ferry27@gmail.com', 'Major', NULL, 1, 'User'),
(232, 'Reilly.Roob85', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Harmony.Prohaska@yahoo.com', NULL, NULL, 1, 'User'),
(233, 'Gilbert_Jacobs31', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Kelvin_Runolfsson88@gmail.com', 'Corporal', NULL, 1, 'Admin'),
(234, 'Rebeca.Gislason42', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Napoleon_Rosenbaum71@hotmail.com', 'Major', NULL, 1, 'Admin'),
(235, 'Kelsi_Pacocha', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Amos_Medhurst61@hotmail.com', 'Corporal', NULL, 1, 'User'),
(236, 'Claude_Haley10', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Elmore.Hessel35@hotmail.com', 'Private', NULL, 0, 'Admin'),
(237, 'Britney_Howe', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Maude25@gmail.com', 'Corporal', NULL, 1, 'Admin'),
(238, 'Daron.Barrows', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Gunner.Leannon80@hotmail.com', NULL, NULL, 1, 'User'),
(239, 'Tad_Rath', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Ashtyn_Ziemann39@gmail.com', 'Major', NULL, 0, 'Admin'),
(240, 'Lauryn31', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Adrianna.Rowe56@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(241, 'Dustin.Kilback', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Bartholome_Champlin@hotmail.com', NULL, NULL, 1, 'User'),
(242, 'Noble.Hyatt', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Mya80@hotmail.com', NULL, NULL, 1, 'Admin'),
(243, 'Dave48', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Marcelo_Rutherford@yahoo.com', NULL, NULL, 0, 'User'),
(244, 'Nia_Jacobi', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Alfonso_Lang5@hotmail.com', 'Private', NULL, 1, 'Admin'),
(245, 'Kattie.Koelpin', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Kirk73@gmail.com', 'Private', NULL, 1, 'Admin'),
(246, 'Mya70', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Asia_Lebsack43@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(247, 'Jonathan_Wolff', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Chase.Gorczany40@gmail.com', NULL, NULL, 1, 'Admin'),
(248, 'Timmy_Fadel', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Sally91@gmail.com', NULL, NULL, 1, 'User'),
(249, 'Joey_Heller', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Mafalda60@hotmail.com', 'Major', NULL, 1, 'User'),
(250, 'Rosella75', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Santa.Heidenreich24@yahoo.com', 'Corporal', NULL, 1, 'User'),
(251, 'Marge71', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Wallace_Casper58@gmail.com', 'Corporal', NULL, 1, 'User'),
(252, 'Talia.Rath50', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Cleta_Gutmann72@gmail.com', 'Private', NULL, 1, 'Admin'),
(253, 'Janie_White36', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Johnny.Sipes@hotmail.com', 'Major', NULL, 0, 'Admin'),
(254, 'Aurore90', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Rylan36@gmail.com', NULL, NULL, 1, 'Admin'),
(255, 'Katrina_Kohler', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Veda11@yahoo.com', 'Major', NULL, 1, 'Admin'),
(256, 'Anita_Abernathy62', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Favian.Watsica65@yahoo.com', 'Corporal', NULL, 0, 'Admin'),
(257, 'Albin_Senger', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Jalen_Welch43@hotmail.com', 'Major', NULL, 0, 'Admin'),
(258, 'Elinore_Bruen', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Idell_Bogan66@yahoo.com', 'Corporal', NULL, 1, 'User'),
(259, 'Enos99', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Ottis22@gmail.com', 'Private', NULL, 0, 'User'),
(260, 'Toni55', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Alaina42@gmail.com', 'Sergeant', NULL, 1, 'User'),
(261, 'Melisa51', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Geoffrey87@hotmail.com', 'Corporal', NULL, 0, 'Admin'),
(262, 'Stanford.Yost89', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Donna46@gmail.com', NULL, NULL, 1, 'User'),
(263, 'Esther.Kunze37', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Alverta_Roberts@gmail.com', 'Private', NULL, 1, 'User'),
(264, 'Mabel.Halvorson53', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Cornelius_Nikolaus60@yahoo.com', NULL, NULL, 1, 'User'),
(265, 'Adonis.Beahan', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Ophelia_Corkery36@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(266, 'Ralph.Schoen', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Laverne.Dibbert@yahoo.com', NULL, NULL, 1, 'User'),
(267, 'Amina30', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Earnest.Lang@gmail.com', 'Sergeant', NULL, 1, 'User'),
(268, 'Brett_Skiles90', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Wilfrid46@yahoo.com', 'Private', NULL, 1, 'User'),
(269, 'Larue.Gerlach', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Leila_Bashirian@hotmail.com', NULL, NULL, 1, 'User'),
(270, 'King_Hoeger', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Linwood.Brown@yahoo.com', 'Major', NULL, 0, 'Admin'),
(271, 'Roderick.Hickle49', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Meaghan.Schuster23@hotmail.com', 'Sergeant', NULL, 0, 'Admin'),
(272, 'Conner_Bahringer73', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Newton46@yahoo.com', NULL, NULL, 1, 'Admin'),
(273, 'Weston69', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Brielle.Ebert91@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(274, 'Russ.Stiedemann96', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Triston36@yahoo.com', 'Major', NULL, 1, 'Admin'),
(275, 'Wanda57', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Monroe_Rogahn@gmail.com', 'Corporal', NULL, 1, 'User'),
(276, 'Sydni.MacGyver5', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Favian_OKeefe30@yahoo.com', 'Sergeant', NULL, 0, 'User'),
(277, 'Juston74', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Ivory.Parisian@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(278, 'Gerda_Keebler', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Alysha.Raynor42@gmail.com', 'Sergeant', NULL, 1, 'User'),
(279, 'Pinkie16', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Jaiden_Farrell@hotmail.com', 'Major', NULL, 1, 'Admin'),
(280, 'Bethel_Stiedemann', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Peggie_Stroman92@hotmail.com', 'Private', NULL, 1, 'Admin'),
(281, 'Sophia9', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Keeley.McGlynn3@gmail.com', 'Major', NULL, 1, 'User'),
(282, 'Cora_Langosh', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Brook.Carter@gmail.com', 'Corporal', NULL, 0, 'User'),
(283, 'Cale.Lindgren', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Antonina_Carter51@gmail.com', 'Private', NULL, 1, 'User'),
(284, 'Sunny65', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Clementina_Blick@hotmail.com', NULL, NULL, 1, 'User'),
(285, 'Dawn.Fahey16', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Lavina_Bogan5@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(286, 'Melyssa27', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Keith97@hotmail.com', 'Private', NULL, 1, 'User'),
(287, 'Willard75', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Florencio.McCullough77@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(288, 'Jude_Leffler', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Millie84@yahoo.com', NULL, NULL, 1, 'User'),
(289, 'Mireya.Schneider76', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Charity11@yahoo.com', 'Corporal', NULL, 1, 'User'),
(290, 'Kaelyn.Daniel93', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Lura_Purdy28@yahoo.com', NULL, NULL, 1, 'Admin'),
(291, 'Sigrid_Olson', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Moriah25@gmail.com', 'Major', NULL, 1, 'User'),
(292, 'Wellington_Murphy', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Donny.Nader@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(293, 'Kiara.Bode85', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Forrest91@yahoo.com', NULL, NULL, 1, 'Admin'),
(294, 'Fernando.Davis37', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Ramona.McCullough@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(295, 'Miguel.Hammes', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Cleora_Christiansen48@gmail.com', 'Private', NULL, 1, 'Admin'),
(296, 'Dimitri50', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Jalon.Bartell@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(297, 'Dagmar_Sauer', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Elinore.Bartell@hotmail.com', NULL, NULL, 1, 'Admin'),
(298, 'Norbert_Green', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Lori64@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(299, 'Nelson_Spencer33', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Viviane21@gmail.com', 'Major', NULL, 1, 'Admin'),
(300, 'Margarita_Collier13', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Adolphus.Gorczany98@hotmail.com', 'Corporal', NULL, 1, 'User'),
(301, 'Mariela.White98', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Kaylah12@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(302, 'Alvina_Johnston90', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Lyda.Goodwin48@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(303, 'Velma.Boehm', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Una.Konopelski23@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(304, 'Herminio.Runolfsdottir', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Tristin.Kihn@hotmail.com', 'Corporal', NULL, 1, 'User'),
(305, 'Emmett_Hansen', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Henry.McGlynn@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(306, 'Adriel_Gaylord', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Litzy22@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(307, 'Geoffrey54', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Adonis.Lockman95@yahoo.com', 'Sergeant', NULL, 0, 'Admin'),
(308, 'Eliseo.Kuhlman54', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Carolanne7@hotmail.com', 'Major', NULL, 1, 'Admin'),
(309, 'Charlene.Harber46', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Evans_Davis@hotmail.com', 'Private', NULL, 1, 'User'),
(310, 'Gerhard_McCullough', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Laverna99@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(311, 'Dusty_Crooks', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Remington.Kub33@gmail.com', 'Sergeant', NULL, 0, 'User'),
(312, 'Crawford_Lesch83', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Adele_Schimmel3@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(313, 'Winona_Cruickshank', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Madaline4@yahoo.com', 'Corporal', NULL, 1, 'User'),
(314, 'Corene.Conn', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Angelita.Weimann@gmail.com', 'Private', NULL, 1, 'User'),
(315, 'Reece.Reynolds', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Sylvia.Bailey@hotmail.com', 'Major', NULL, 1, 'User'),
(316, 'Maxie.Rempel', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Coty5@gmail.com', 'Sergeant', NULL, 0, 'User'),
(317, 'Shyann.Fadel', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Verdie.Schmitt53@yahoo.com', 'Major', NULL, 1, 'User'),
(318, 'Garland_Quitzon9', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Keanu.Pagac30@hotmail.com', 'Private', NULL, 1, 'Admin'),
(319, 'Darlene21', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Gage78@hotmail.com', 'Major', NULL, 1, 'User'),
(320, 'Blaise50', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Mozell97@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(321, 'Makenzie97', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Concepcion_Hirthe@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(322, 'Gianni.Kiehn', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Eddie_Grimes@hotmail.com', 'Major', NULL, 1, 'Admin'),
(323, 'Zoila_Kozey17', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Easton_Volkman@gmail.com', NULL, NULL, 1, 'User'),
(324, 'Donnell.Hermiston80', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Ricky.Stokes12@yahoo.com', 'Private', NULL, 1, 'User'),
(325, 'Soledad74', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Amina61@hotmail.com', NULL, NULL, 1, 'Admin'),
(326, 'Maude.Wiegand', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Lenna.Heathcote@hotmail.com', 'Major', NULL, 1, 'Admin'),
(327, 'Shemar_Gulgowski52', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Jaiden.Wehner92@hotmail.com', NULL, NULL, 0, 'Admin'),
(328, 'Arielle_Jacobs20', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Earlene93@hotmail.com', 'Major', NULL, 0, 'Admin'),
(329, 'Marian94', 'lsnSnP2zskJCjM8xFZlJmw==:uj1fu4aS/Ez9f8yjKqUGqE6w2gnmTPaSfgwyglsOrtA=', 'Joyce.Schmidt24@yahoo.com', 'Major', NULL, 0, 'Admin'),
(330, 'Teresa75', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Kaela35@yahoo.com', 'Corporal', NULL, 0, 'Admin'),
(331, 'Fae_Gutkowski', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Kyler_Kuvalis@hotmail.com', 'Private', NULL, 1, 'Admin'),
(332, 'Aliya75', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Nathaniel.Armstrong71@yahoo.com', NULL, NULL, 0, 'User'),
(333, 'Eunice.Lubowitz91', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Regan_Hodkiewicz@gmail.com', NULL, NULL, 1, 'User'),
(334, 'Sally.Koch97', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Rachael.Mueller@gmail.com', 'Corporal', NULL, 1, 'User'),
(335, 'Eula97', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Rhoda.Aufderhar52@yahoo.com', 'Private', NULL, 1, 'Admin'),
(336, 'Jarred81', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Laney38@gmail.com', 'Corporal', NULL, 1, 'User'),
(337, 'Shayne29', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Tyree.Hermann@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(338, 'Mia2', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Hilton85@gmail.com', 'Major', NULL, 1, 'Admin'),
(339, 'Tyshawn_Rempel59', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Kennedy_Crist@hotmail.com', NULL, NULL, 1, 'Admin'),
(340, 'Jerel.West39', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Gideon.McLaughlin@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(341, 'Leonel.Pouros', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Junius_Walsh83@gmail.com', 'Major', NULL, 0, 'User'),
(342, 'Shayna_Ankunding', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Dillon_Weber9@hotmail.com', 'Sergeant', NULL, 0, 'Admin'),
(343, 'Leon73', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Micah83@gmail.com', 'Sergeant', NULL, 1, 'User'),
(344, 'Clemens38', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Courtney52@gmail.com', 'Private', NULL, 1, 'User'),
(345, 'Jermaine.Gutmann', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Trevion.Yundt78@gmail.com', 'Major', NULL, 1, 'Admin'),
(346, 'Stanford44', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Karina83@yahoo.com', 'Major', NULL, 1, 'Admin'),
(347, 'Jackson.Spencer', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Caleigh_Kris@hotmail.com', 'Sergeant', NULL, 0, 'User'),
(348, 'Joey.Watsica50', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Retta.Hegmann@yahoo.com', NULL, NULL, 0, 'Admin'),
(349, 'Helen_Bode', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Dallas93@gmail.com', 'Corporal', NULL, 1, 'Admin'),
(350, 'Justyn_Keebler', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Betsy6@yahoo.com', 'Sergeant', NULL, 0, 'Admin'),
(351, 'Linwood34', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Aaliyah_McLaughlin21@yahoo.com', 'Sergeant', NULL, 0, 'User'),
(352, 'Itzel.Stamm', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Verner.Koss87@hotmail.com', 'Corporal', NULL, 1, 'User'),
(353, 'Alan91', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Uriah.Reichert55@yahoo.com', NULL, NULL, 0, 'User'),
(354, 'Robb_Haag2', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Wava.Douglas94@hotmail.com', 'Major', NULL, 1, 'User'),
(355, 'Jorge_Bernhard9', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Nichole66@gmail.com', 'Private', NULL, 1, 'Admin'),
(356, 'Rhett96', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Keyshawn.Hayes@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(357, 'Archibald42', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Treva_Schmeler@yahoo.com', 'Private', NULL, 1, 'Admin'),
(358, 'Emma33', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Eldora.Abshire97@hotmail.com', 'Major', NULL, 1, 'User'),
(359, 'Clyde_Jerde', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Vita51@gmail.com', 'Sergeant', NULL, 1, 'User');
INSERT INTO `USER` (`UserID`, `Username`, `PasswordHash`, `Email`, `Rank`, `ProfilePicture`, `IsActive`, `Role`) VALUES
(360, 'Maxime0', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Jasmin.Turner@yahoo.com', 'Major', NULL, 1, 'Admin'),
(361, 'Courtney_Jaskolski', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Jailyn98@yahoo.com', 'Major', NULL, 1, 'Admin'),
(362, 'Tremaine_DAmore', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Krystel_Roob@yahoo.com', 'Corporal', NULL, 1, 'User'),
(363, 'Leila.Stiedemann', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Jacynthe_Bashirian97@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(364, 'Edgar_Douglas', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Ryder.Will@gmail.com', 'Major', NULL, 1, 'Admin'),
(365, 'Ignatius83', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Avis43@yahoo.com', 'Major', NULL, 1, 'User'),
(366, 'Gretchen33', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Derick.Gerlach@gmail.com', 'Private', NULL, 1, 'User'),
(367, 'Shanon4', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Miracle_Berge@yahoo.com', 'Sergeant', NULL, 0, 'User'),
(368, 'John71', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Alysha.Cummerata23@hotmail.com', 'Private', NULL, 1, 'User'),
(369, 'Walton_Kunze12', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Jaden_Luettgen@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(370, 'Kip_Quitzon', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Ted_Cartwright52@hotmail.com', 'Private', NULL, 1, 'User'),
(371, 'Reina.Ankunding64', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Jany.Kiehn55@gmail.com', 'Sergeant', NULL, 1, 'User'),
(372, 'Thad_Bergstrom', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Carmela51@yahoo.com', 'Major', NULL, 1, 'User'),
(373, 'Brody.DuBuque60', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Breanna_Dach34@yahoo.com', 'Major', NULL, 1, 'Admin'),
(374, 'Ismael_Shields', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Amya_Botsford@gmail.com', 'Major', NULL, 1, 'User'),
(375, 'Herminia.Franecki', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Markus_Dickens59@yahoo.com', 'Private', NULL, 1, 'Admin'),
(376, 'Victor89', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Dasia.Emard28@yahoo.com', 'Private', NULL, 1, 'User'),
(377, 'Mustafa_Parisian', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Jeff.Rowe65@hotmail.com', 'Sergeant', NULL, 0, 'User'),
(378, 'Jeffery0', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Augustine34@gmail.com', 'Private', NULL, 1, 'Admin'),
(379, 'Mable21', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Evalyn.Lueilwitz80@yahoo.com', 'Private', NULL, 1, 'User'),
(380, 'Kurtis81', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Hollie.Mosciski@yahoo.com', 'Major', NULL, 1, 'Admin'),
(381, 'Kamille15', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Irwin_Ledner@yahoo.com', 'Major', NULL, 1, 'Admin'),
(382, 'Keagan_Konopelski43', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Lauretta59@yahoo.com', 'Major', NULL, 1, 'User'),
(383, 'Ava57', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Colton_OReilly@gmail.com', NULL, NULL, 1, 'User'),
(384, 'Antone_Ebert', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Myles99@hotmail.com', 'Sergeant', NULL, 1, 'User'),
(385, 'Napoleon68', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Cicero_Boehm@gmail.com', 'Private', NULL, 0, 'Admin'),
(386, 'Jeromy.Runolfsdottir72', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Bradley.Sipes31@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(387, 'Neal28', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Roselyn69@hotmail.com', 'Major', NULL, 0, 'Admin'),
(388, 'Colin27', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Fred83@hotmail.com', 'Major', NULL, 1, 'User'),
(389, 'Roderick65', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Adela49@gmail.com', 'Sergeant', NULL, 1, 'Admin'),
(390, 'Gustave.Konopelski', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'German80@gmail.com', 'Corporal', NULL, 1, 'User'),
(391, 'Nils_Gulgowski', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Abigayle20@gmail.com', 'Private', NULL, 1, 'Admin'),
(392, 'Arlene.Blick', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Lennie50@hotmail.com', 'Major', NULL, 1, 'Admin'),
(393, 'Julianne_Jacobi4', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Drew12@gmail.com', NULL, NULL, 1, 'Admin'),
(394, 'Elwyn.Denesik', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Kelton_Becker36@hotmail.com', NULL, NULL, 1, 'Admin'),
(395, 'Orpha54', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Destini.Konopelski56@gmail.com', NULL, NULL, 1, 'Admin'),
(396, 'Laurel_Harvey61', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Maxine77@yahoo.com', 'Major', NULL, 1, 'Admin'),
(397, 'Lauren55', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Alanis74@yahoo.com', NULL, NULL, 1, 'User'),
(398, 'Cecile.Adams', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Kavon.Wilderman@hotmail.com', NULL, NULL, 0, 'User'),
(399, 'Francisco_Nolan45', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Ismael_McDermott@gmail.com', 'Corporal', NULL, 0, 'User'),
(400, 'Raina_Casper', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Kaia59@yahoo.com', 'Private', NULL, 1, 'Admin'),
(401, 'Jayce_Bergnaum89', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Deshawn.Prosacco79@yahoo.com', 'Corporal', NULL, 0, 'Admin'),
(402, 'Magdalen_McDermott22', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Rose_Ledner93@gmail.com', 'Major', NULL, 1, 'User'),
(403, 'Alta_Ullrich', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Santa_Sanford@gmail.com', 'Major', NULL, 1, 'Admin'),
(404, 'Moses37', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Vesta54@yahoo.com', 'Major', NULL, 1, 'Admin'),
(405, 'Amie.Heathcote', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Sedrick_Nader@hotmail.com', 'Corporal', NULL, 0, 'User'),
(406, 'Daija_Kessler24', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Maxine27@gmail.com', 'Corporal', NULL, 1, 'Admin'),
(407, 'Retha_Larkin', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Lavinia_Ratke8@hotmail.com', NULL, NULL, 1, 'User'),
(408, 'Rylee_Lubowitz31', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Ara.King91@yahoo.com', 'Corporal', NULL, 1, 'User'),
(409, 'Jasper.Hand6', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Marquis.Kiehn80@yahoo.com', 'Corporal', NULL, 1, 'User'),
(410, 'Shaylee_Metz57', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Myron.Lowe@hotmail.com', 'Corporal', NULL, 1, 'User'),
(411, 'Mackenzie_Ratke77', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Noemi8@hotmail.com', 'Major', NULL, 0, 'User'),
(412, 'Deontae_Dibbert25', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Adrianna.Quitzon@yahoo.com', 'Private', NULL, 1, 'User'),
(413, 'Judge.Leffler2', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Declan18@hotmail.com', 'Corporal', NULL, 1, 'Admin'),
(414, 'Savanna.Pollich', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Gage.Vandervort@yahoo.com', 'Major', NULL, 1, 'User'),
(415, 'Malvina5', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Isaiah_Daniel70@gmail.com', 'Major', NULL, 1, 'User'),
(416, 'Nathan.Emard49', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Brittany96@hotmail.com', NULL, NULL, 1, 'Admin'),
(417, 'Caden_Olson69', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Hazel_Dare15@yahoo.com', 'Sergeant', NULL, 1, 'User'),
(418, 'Ian_Ratke', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Itzel_Feeney@hotmail.com', NULL, NULL, 1, 'Admin'),
(419, 'Ethel68', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Julia41@yahoo.com', 'Sergeant', NULL, 1, 'Admin'),
(420, 'Aniyah49', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Wilmer.Roberts@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(421, 'Wava_Sawayn', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Theodora78@gmail.com', NULL, NULL, 1, 'Admin'),
(422, 'Nia38', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Shirley.Cormier28@yahoo.com', 'Corporal', NULL, 1, 'Admin'),
(423, 'Litzy41', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Raphael.Casper@yahoo.com', NULL, NULL, 1, 'User'),
(424, 'Queenie31', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Darion8@gmail.com', 'Private', NULL, 1, 'User'),
(425, 'Kacey20', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Quinten_Ratke@gmail.com', NULL, NULL, 1, 'Admin'),
(426, 'Jaeden.Simonis23', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Amir27@yahoo.com', NULL, NULL, 1, 'Admin'),
(427, 'Taryn.Lindgren5', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Melody12@hotmail.com', 'Sergeant', NULL, 1, 'Admin'),
(428, 'Joanny_Ortiz67', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Henri.Goyette@yahoo.com', 'Major', NULL, 1, 'Admin'),
(429, 'Oma27', 'rNFrzCz3Vnv1Qxq+xZmGiA==:TGYGfRCPoMAFjCg2IFnfmQbcGcBn5UT/GDW6wJeamfY=', 'Melyssa30@yahoo.com', 'Sergeant', NULL, 1, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `APPLICATION`
--
ALTER TABLE `APPLICATION`
  ADD PRIMARY KEY (`ApplicationID`),
  ADD KEY `fk_app_user` (`UserID`),
  ADD KEY `fk_app_job` (`JobID`);

--
-- Indexes for table `AUDIT_LOG`
--
ALTER TABLE `AUDIT_LOG`
  ADD PRIMARY KEY (`AuditLogID`),
  ADD KEY `fk_audit_user` (`ChangedByUserID`),
  ADD KEY `fk_audit_mil` (`RecordID`);

--
-- Indexes for table `JOB_LISTING`
--
ALTER TABLE `JOB_LISTING`
  ADD PRIMARY KEY (`JobID`);

--
-- Indexes for table `MEDICAL_RECORD`
--
ALTER TABLE `MEDICAL_RECORD`
  ADD PRIMARY KEY (`MedicalID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `MILITARY_RECORD`
--
ALTER TABLE `MILITARY_RECORD`
  ADD PRIMARY KEY (`RecordID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `APPLICATION`
--
ALTER TABLE `APPLICATION`
  MODIFY `ApplicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `AUDIT_LOG`
--
ALTER TABLE `AUDIT_LOG`
  MODIFY `AuditLogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `JOB_LISTING`
--
ALTER TABLE `JOB_LISTING`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `MEDICAL_RECORD`
--
ALTER TABLE `MEDICAL_RECORD`
  MODIFY `MedicalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `MILITARY_RECORD`
--
ALTER TABLE `MILITARY_RECORD`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `APPLICATION`
--
ALTER TABLE `APPLICATION`
  ADD CONSTRAINT `fk_app_job` FOREIGN KEY (`JobID`) REFERENCES `JOB_LISTING` (`JobID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_app_user` FOREIGN KEY (`UserID`) REFERENCES `USER` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `AUDIT_LOG`
--
ALTER TABLE `AUDIT_LOG`
  ADD CONSTRAINT `fk_audit_mil` FOREIGN KEY (`RecordID`) REFERENCES `MILITARY_RECORD` (`RecordID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`ChangedByUserID`) REFERENCES `USER` (`UserID`) ON DELETE SET NULL;

--
-- Constraints for table `MEDICAL_RECORD`
--
ALTER TABLE `MEDICAL_RECORD`
  ADD CONSTRAINT `fk_med_user` FOREIGN KEY (`UserID`) REFERENCES `USER` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `MILITARY_RECORD`
--
ALTER TABLE `MILITARY_RECORD`
  ADD CONSTRAINT `fk_mil_user` FOREIGN KEY (`UserID`) REFERENCES `USER` (`UserID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

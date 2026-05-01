-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2026 at 10:00 PM
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
  MODIFY `ApplicationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AUDIT_LOG`
--
ALTER TABLE `AUDIT_LOG`
  MODIFY `AuditLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `JOB_LISTING`
--
ALTER TABLE `JOB_LISTING`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MEDICAL_RECORD`
--
ALTER TABLE `MEDICAL_RECORD`
  MODIFY `MedicalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MILITARY_RECORD`
--
ALTER TABLE `MILITARY_RECORD`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

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

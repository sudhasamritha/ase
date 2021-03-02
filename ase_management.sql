-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2021 at 06:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ase_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `ase_users`
--

CREATE TABLE `ase_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `dob` varchar(150) NOT NULL,
  `mobile_number` varchar(150) NOT NULL,
  `alt_mobile_number` int(150) NOT NULL,
  `email` int(150) NOT NULL,
  `door_number` int(100) NOT NULL,
  `street_name` int(150) NOT NULL,
  `locality` int(200) NOT NULL,
  `district` int(150) NOT NULL,
  `state` int(150) NOT NULL,
  `country` int(150) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ase_user_bank_details`
--

CREATE TABLE `ase_user_bank_details` (
  `bank_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pan_card` varchar(100) NOT NULL,
  `aadhar_card` varchar(150) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `account_number` varchar(150) NOT NULL,
  `ifsc_code` varchar(150) NOT NULL,
  `branch` varchar(150) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ase_user_invesment_details`
--

CREATE TABLE `ase_user_invesment_details` (
  `invesment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nominee` varchar(150) NOT NULL,
  `relationship` varchar(150) NOT NULL,
  `nominee_contact_no` varchar(150) NOT NULL,
  `nominee_email_id` varchar(150) NOT NULL,
  `refferal_id` varchar(150) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ase_user_occupation_details`
--

CREATE TABLE `ase_user_occupation_details` (
  `occ_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `occupation` int(11) NOT NULL,
  `business_type` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `business_location` int(11) NOT NULL,
  `created_data` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ase_users`
--
ALTER TABLE `ase_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ase_user_bank_details`
--
ALTER TABLE `ase_user_bank_details`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `ase_user_invesment_details`
--
ALTER TABLE `ase_user_invesment_details`
  ADD PRIMARY KEY (`invesment_id`);

--
-- Indexes for table `ase_user_occupation_details`
--
ALTER TABLE `ase_user_occupation_details`
  ADD PRIMARY KEY (`occ_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ase_users`
--
ALTER TABLE `ase_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ase_user_bank_details`
--
ALTER TABLE `ase_user_bank_details`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ase_user_invesment_details`
--
ALTER TABLE `ase_user_invesment_details`
  MODIFY `invesment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ase_user_occupation_details`
--
ALTER TABLE `ase_user_occupation_details`
  MODIFY `occ_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

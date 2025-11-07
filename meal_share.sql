-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2025 at 06:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meal_share`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_donations`
--

CREATE TABLE `active_donations` (
  `d_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `alter_mobile` bigint(255) NOT NULL,
  `mobile` bigint(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `mfg` date NOT NULL,
  `exp` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `qty_value` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `active_donations`
--

INSERT INTO `active_donations` (`d_id`, `email`, `first_name`, `last_name`, `fname`, `alter_mobile`, `mobile`, `qty`, `mfg`, `exp`, `status`, `city`, `state`, `pincode`, `qty_value`, `dt`) VALUES
(2, '0007200.zm@gmail.com', 'Zeeshan', 'Malik', 'Rice', 0, 8447594828, 10, '2024-12-13', '2024-12-14', 'Active', 'Dasna', 'UP', '201001', 'Kg', '2025-09-19 06:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `admin_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `mobile` bigint(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` bigint(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`admin_id`, `email`, `password`, `first_name`, `last_name`, `user_name`, `mobile`, `city`, `state`, `pincode`, `date`) VALUES
(1, '0007200.zm@gmail.com', '$2y$10$r0WcAdVnSWDMHkjmxQ75v.pumYtcs4j1XtssQxhFRrzTxigWXNZ0a', 'Zeeshan', 'Malik', 'Master@1', 8447594828, 'Ghaziabad', 'Uttar Pradesh', 201001, '2024-12-10 14:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `alldonations`
--

CREATE TABLE `alldonations` (
  `d_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `alter_mobile` bigint(255) NOT NULL,
  `mobile` bigint(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `qty_value` varchar(255) NOT NULL,
  `mfg` date NOT NULL,
  `exp` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alldonations`
--

INSERT INTO `alldonations` (`d_id`, `email`, `first_name`, `last_name`, `fname`, `alter_mobile`, `mobile`, `qty`, `qty_value`, `mfg`, `exp`, `status`, `city`, `state`, `pincode`, `dt`) VALUES
(2, 'master@123', '', 'master', 'dv', 0, 8457, 0, '', '1970-01-01', '0000-00-00', 'Delivered', 'ghaziabad', 'Maharashtra', '201001', '2025-09-19 06:17:39'),
(3, 'master@123', '', 'master', 'sdfv', 0, 8457, 0, '', '1970-01-01', '0000-00-00', 'Delivered', 'ghaziabad', 'Maharashtra', '201001', '2025-09-19 06:17:39'),
(4, 'master@123', '', 'master', 'maste', 0, 8457, 0, '', '1970-01-01', '0000-00-00', 'Delivered', 'ghaziabad', 'Maharashtra', '201001', '2025-09-19 06:17:39'),
(5, 'master@123', '', 'master', 'Rice', 8447594828, 8457, 5, 'Kg', '2020-01-01', '2020-01-02', 'Delivered', 'ghaziabad', 'Maharashtra', '201001', '2025-09-19 06:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `c_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `qty_type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mfg` date NOT NULL,
  `exp` date NOT NULL,
  `msg` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`c_id`, `email`, `d_name`, `fname`, `qty`, `qty_type`, `date`, `mfg`, `exp`, `msg`, `dt`) VALUES
(1, 'master', '', '', 0, '', '0000-00-00', '0000-00-00', '0000-00-00', '', '2024-12-13 08:37:16'),
(2, 'zaid@gmail.com', 'asc', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 09:42:26'),
(3, 'zaid@gmail.com', 'wef', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 09:47:05'),
(4, 'zaid@gmail.com', 'wef', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 09:49:16'),
(5, 'zaid@gmail.com', 'wef', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 09:51:03'),
(6, 'zaid@gmail.com', 'wef', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 09:51:36'),
(7, 'zaid@gmail.com', 'drv', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 09:52:50'),
(8, 'zaid@gmail.com', 'wdcv', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 09:52:57'),
(9, 'zaid@gmail.com', 'qwdfe', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 10:01:12'),
(10, '', '', '', 0, '', '1970-01-01', '1970-01-01', '0000-00-00', '70-01-01', '2024-12-13 14:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `donor_reg`
--

CREATE TABLE `donor_reg` (
  `donor_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mobile` bigint(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` bigint(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_reg`
--

INSERT INTO `donor_reg` (`donor_id`, `email`, `password`, `first_name`, `last_name`, `user_name`, `type`, `mobile`, `city`, `state`, `pincode`, `date`) VALUES
(1, 'master@123', '$2y$10$sJXXFdnPaD6Nks7tgZfsaOicjA/wzX189Sdblh3N0Hf5bt/C4jZVa', 'master', 'master', 'master', 'Food Stall', 8457, 'ghaziabad', 'Maharashtra', 201001, '2024-12-10 13:43:38'),
(2, '', '$2y$10$L0A2UZiOpOhybY7596RT8epMc8ji36aMNDkftH2RMobGGRzamNDAa', '', '', '', '', 0, '', '', 0, '2024-12-13 16:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `rec_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `mobile` bigint(255) NOT NULL,
  `otp` bigint(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` bigint(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `darpan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`rec_id`, `email`, `password`, `first_name`, `last_name`, `user_name`, `mobile`, `otp`, `city`, `state`, `pincode`, `date`, `darpan`) VALUES
(5, 'zaid@gmail.com', '$2y$10$xzoJQ11mWL6pSnYYjgzk2ur0i/D16vsG4Sv3G7iY3cYZtN5hdmMLK', 'syed', 'zaid', 'zaid@123', 9311787858, 0, 'Ghaziabad', 'Uttarpradesh', 2010, '2024-11-27 09:58:36', 0),
(6, '', '', '', '', '', 0, 0, '', '', 0, '2024-11-28 04:30:18', 0),
(7, 'master@1', '$2y$10$eMMWa85RRof4rNulOGi24O3gHIomo1MWR4OXBb./AVSEEVjDq1..K', 'zeeshan', 'malik', 'master', 8447594828, 0, 'dasna', 'up', 201001, '2024-12-10 05:27:40', 0),
(9, '0007200.zm@gmail.com', '$2y$10$6eHczTA96MoKHIqmnTl8aeO6KTIArXs19QcLBydbNNVDDhX6HHxgm', 'Zeeshan', 'Malik', 'Master@1', 8447594828, 0, 'Ghzaiabad', 'Uttar Pradesh', 201001, '2024-12-10 12:30:37', 0),
(10, 'malik@123', '$2y$10$7cenJR826KjuxnjBGtDql...oHO3p..2OPegO2/9qmWBt3rdo1kMq', 'malo', 'njj', 'n j', 8447594828, 0, 'mkn', 'Karnataka', 0, '2024-12-10 13:10:15', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_donations`
--
ALTER TABLE `active_donations`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `alldonations`
--
ALTER TABLE `alldonations`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `donor_reg`
--
ALTER TABLE `donor_reg`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`rec_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_donations`
--
ALTER TABLE `active_donations`
  MODIFY `d_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alldonations`
--
ALTER TABLE `alldonations`
  MODIFY `d_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donor_reg`
--
ALTER TABLE `donor_reg`
  MODIFY `donor_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `rec_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

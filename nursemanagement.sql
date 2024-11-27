-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 08:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nursemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(11) NOT NULL,
  `nurseName` text DEFAULT NULL,
  `licenseNo` text DEFAULT NULL,
  `age` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_At` text DEFAULT NULL,
  `updated_At` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `nurseName`, `licenseNo`, `age`, `dob`, `status`, `created_At`, `updated_At`) VALUES
(1, 'juliep', '123456', '23', '2024-11-14', '1', '2024-11-27 17:58:00.925', '2024-11-27 18:55:38.225'),
(4, 'selvakumar', '123456', '23', '2024-11-14', '1', '2024-11-27 18:07:47.342', '2024-11-27 18:07:47.342'),
(5, 'bagavanthkumar', '6554', '23', '2024-11-13', '1', '2024-11-27 18:09:02.435', '2024-11-27 18:09:02.435'),
(8, 'jeeva kumar', '3245678', '28', '1994-05-13', '1', '2024-11-28 00:20:17.901', '2024-11-28 00:20:34.472');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

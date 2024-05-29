-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2024 at 03:19 PM
-- Server version: 8.0.36
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jukson`
--

-- --------------------------------------------------------

--
-- Table structure for table `lockers`
--

CREATE TABLE `lockers` (
  `id` int NOT NULL,
  `status` int DEFAULT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `use_uid` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lockers`
--

INSERT INTO `lockers` (`id`, `status`, `location_name`, `address`, `use_uid`, `end_date`, `latitude`, `longitude`) VALUES
(1, 1, '대동역', '대전 동구 계족로 176', NULL, NULL, 36.329390, 127.443000),
(2, 1, '대동역', '대전 동구 계족로 176', 'ff412f', '2024-05-25', 36.329390, 127.443000),
(3, 0, '대동역', '대전 동구 계족로 176', NULL, NULL, 36.329390, 127.443000),
(4, 0, '대동역', '대전 동구 계족로 176', NULL, NULL, 36.329390, 127.443000),
(5, 0, '대동역', '대전 동구 계족로 176', NULL, NULL, 36.329390, 127.443000),
(6, 0, '대동역', '대전 동구 계족로 176', NULL, NULL, 36.329390, 127.443000),
(7, 0, '대전대학교', '대전 동구 대학로 62', NULL, NULL, 36.337920, 127.458800),
(8, 0, '대전대학교', '대전 동구 대학로 62', NULL, NULL, 36.337920, 127.458800),
(9, 1, '우송대학교', '대전 동구 동대전로 171', NULL, NULL, 36.338390, 127.445800),
(10, 0, '스타벅스 대전중앙로R점', '대전 중구 대종로 486', NULL, NULL, 36.338390, 127.445800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

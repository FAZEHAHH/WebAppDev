-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 02:58 PM
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
-- Database: `questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strategic_management`
--

CREATE TABLE `strategic_management` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strategic_management`
--

INSERT INTO `strategic_management` (`id`, `question`, `scale`) VALUES
(19, 'To what extent is the project well-positioned to achieve the goals and objectives of the organization\'s investment plan? (1: Not well-positioned, 5: Well-positioned)', 5),
(20, 'To what extent is the project a potential risk to the organization\'s investment plan? (1: Low risk, 5: High risk)', 3),
(21, 'How closely does the project align with the strategic priorities of the organization? (1: Not aligned, 5: Fully aligned)', 4),
(22, 'To what extent does the project address key market trends or changes? (1: Not addressing, 5: Fully addressing)', 3),
(23, 'How well does the project fit within the organization long-term vision and growth plans? (1: Poor fit, 5: Excellent fit)', 4),
(24, 'To what extent does the project consider potential regulatory or compliance risks? (1: Not considering, 5: Fully considering)', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

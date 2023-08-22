-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 12:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ports`
--

-- --------------------------------------------------------

--
-- Table structure for table `employess`
--

CREATE TABLE `employess` (
  `id` int(11) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `Sick Leaves` int(11) NOT NULL DEFAULT 10,
  `Casual Leaves` int(11) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employess`
--

INSERT INTO `employess` (`id`, `employee`, `Sick Leaves`, `Casual Leaves`) VALUES
(11, 'Kashif', 8, 20),
(12, 'Salman', 10, 18);

-- --------------------------------------------------------

--
-- Table structure for table `sheets`
--

CREATE TABLE `sheets` (
  `id` int(11) NOT NULL,
  `E-Name` varchar(255) NOT NULL,
  `Comment` varchar(255) NOT NULL,
  `Leave type` varchar(255) NOT NULL,
  `start-Date` date NOT NULL,
  `End-date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sheets`
--

INSERT INTO `sheets` (`id`, `E-Name`, `Comment`, `Leave type`, `start-Date`, `End-date`) VALUES
(39, 'Kashif', 'Isi dill karha tha\r\n', 'Sick Leave', '2023-08-22', '2023-08-24'),
(40, 'Wajahat', '123123123', 'Sick Leave', '2023-08-18', '2023-08-19'),
(41, 'Wajahat', '123123123', 'Sick Leave', '2023-08-12', '2023-08-16'),
(42, 'Salman', 'Mujhe chutti karni he', 'Casual Leave', '2023-08-23', '2023-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Password`, `email`) VALUES
(3, 'HR', 'e3856391da204c2ac12ef7fb51d66446', 'HR@HR.HR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employess`
--
ALTER TABLE `employess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sheets`
--
ALTER TABLE `sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employess`
--
ALTER TABLE `employess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sheets`
--
ALTER TABLE `sheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

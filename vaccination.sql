-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 02:51 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccination`
--

-- --------------------------------------------------------

--
-- Table structure for table `thevaccination`
--

CREATE TABLE `thevaccination` (
  `id` int(12) NOT NULL,
  `names` varchar(100) DEFAULT NULL,
  `idnumber` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `vaccine` varchar(100) NOT NULL,
  `doses` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thevaccination`
--

INSERT INTO `thevaccination` (`id`, `names`, `idnumber`, `gender`, `address`, `phone`, `vaccine`, `doses`, `date`) VALUES
(17, 'ishimwe', '12345', 'Female', 'gacuriro', '078825467', 'Hepatites B', '3', '12/07/2022'),
(18, 'barera', '12001234567', 'Female', 'gisozi', '0780900039', 'Hepatites B', '2', '12/07/2022'),
(19, 'jolly', '120098765', 'Female', 'remera', '078965432', 'Hepatites B', '1', '12/07/2022'),
(22, 'Daisy', '2345654', 'Female', 'nyarutarama', '07986543', 'Hepatites B', '3', '12/07/2022');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `names` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `names`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'manager', 'manager', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `thevaccination`
--
ALTER TABLE `thevaccination`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idnumber` (`idnumber`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `thevaccination`
--
ALTER TABLE `thevaccination`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

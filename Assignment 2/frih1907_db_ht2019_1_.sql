-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: atlantis.informatik.umu.se
-- Generation Time: Oct 28, 2019 at 12:30 PM
-- Server version: 10.1.41-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frih1907_db_ht2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `Träningsdata`
--

CREATE TABLE `Träningsdata` (
  `passid` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `passtyp` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `längd` smallint(6) NOT NULL,
  `intensitet` varchar(10) COLLATE utf8mb4_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `Träningsdata`
--

INSERT INTO `Träningsdata` (`passid`, `datum`, `passtyp`, `längd`, `intensitet`) VALUES
(1, '2019-02-02', 'Löpning', 25, 'Medel'),
(3, '2019-10-16', 'Rullskidor', 60, 'Medel'),
(4, '2019-10-19', 'Bodypump', 60, 'Hög'),
(5, '2019-10-17', 'Simning', 30, 'Medel'),
(6, '2019-10-12', 'Yoga', 90, 'Låg'),
(7, '2019-10-10', 'Bodypump', 60, 'Hög'),
(8, '2019-10-08', 'Klättring', 90, 'Hög'),
(9, '2019-10-06', 'Gym', 45, 'Låg'),
(10, '2019-11-15', 'Spinning', 58, 'Hög'),
(11, '2019-09-25', 'Golf', 120, 'Låg'),
(13, '2019-09-20', 'Schack', 70, 'Hög'),
(14, '2019-07-30', 'Löpning', 45, 'Medel'),
(15, '2019-08-26', 'Cykling', 80, 'Låg'),
(16, '2019-01-01', 'Orientering', 35, 'Medel'),
(18, '2019-01-10', 'Fotboll', 90, 'Hög');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Träningsdata`
--
ALTER TABLE `Träningsdata`
  ADD PRIMARY KEY (`passid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Träningsdata`
--
ALTER TABLE `Träningsdata`
  MODIFY `passid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: atlantis.informatik.umu.se
-- Generation Time: Oct 28, 2019 at 12:26 PM
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
-- Table structure for table `Aktier`
--

CREATE TABLE `Aktier` (
  `namn` varchar(50) DEFAULT NULL,
  `ticker` varchar(10) NOT NULL,
  `marknad` varchar(50) DEFAULT NULL,
  `senast` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Aktier`
--

INSERT INTO `Aktier` (`namn`, `ticker`, `marknad`, `senast`) VALUES
('Apple Inc', 'AAPL', 'NASDAQ', 1260),
('Boliden', 'BOL', 'Stockholmsbörsen', 275),
('Hennes & Mauritz B', 'HM B', 'Stockholmsbörsen', 214),
('Storytel B', 'STORY B', 'AktieTorget', 74);

-- --------------------------------------------------------

--
-- Table structure for table `Innehav`
--

CREATE TABLE `Innehav` (
  `persnr` char(11) NOT NULL,
  `ticker` varchar(10) NOT NULL,
  `antal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Innehav`
--

INSERT INTO `Innehav` (`persnr`, `ticker`, `antal`) VALUES
('390401-2035', 'BOL', 20000),
('390401-2035', 'HM B', 1500),
('771011-8383', 'AAPL', 1000),
('771011-8383', 'BOL', 500),
('820101-7014', 'AAPL', 100),
('960205-2318', 'AAPL', 50),
('960205-2318', 'BOL', 200),
('960205-2318', 'HM B', 350),
('960205-2318', 'STORY B', 750);

-- --------------------------------------------------------

--
-- Table structure for table `Kunder`
--

CREATE TABLE `Kunder` (
  `namn` varchar(50) DEFAULT NULL,
  `persnr` char(11) NOT NULL,
  `kontonr` char(8) DEFAULT NULL,
  `nivå` varchar(6) DEFAULT NULL,
  `likvid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Kunder`
--

INSERT INTO `Kunder` (`namn`, `persnr`, `kontonr`, `nivå`, `likvid`) VALUES
('Joakim von Anka', '390401-2035', '1234-123', 'guld', 159000),
('Inga Penning', '600413-5992', '4567-345', 'brons', 0),
('Sten Rik', '771011-8383', '2345-345', 'guld', 130000),
('Josefin Ansiell', '820101-7014', '1134-345', 'silver', 78500),
('Alva Penning', '960205-2318', '3456-456', 'silver', 3600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Aktier`
--
ALTER TABLE `Aktier`
  ADD PRIMARY KEY (`ticker`);

--
-- Indexes for table `Innehav`
--
ALTER TABLE `Innehav`
  ADD PRIMARY KEY (`persnr`,`ticker`),
  ADD KEY `ticker` (`ticker`);

--
-- Indexes for table `Kunder`
--
ALTER TABLE `Kunder`
  ADD PRIMARY KEY (`persnr`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Innehav`
--
ALTER TABLE `Innehav`
  ADD CONSTRAINT `Innehav_ibfk_1` FOREIGN KEY (`persnr`) REFERENCES `Kunder` (`persnr`),
  ADD CONSTRAINT `Innehav_ibfk_2` FOREIGN KEY (`ticker`) REFERENCES `Aktier` (`ticker`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

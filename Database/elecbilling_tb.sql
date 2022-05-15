-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220512.d0c37da63d
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 10:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrogrid_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `elecbilling_tb`
--

CREATE TABLE `elecbilling_tb` (
  `billID` int(8) NOT NULL,
  `AccountNumber` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `UnitCount` float NOT NULL,
  `month` varchar(20) NOT NULL,
  `billAmount` float(6,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elecbilling_tb`
--

INSERT INTO `elecbilling_tb` (`billID`, `AccountNumber`, `name`, `UnitCount`, `month`, `billAmount`, `date`) VALUES
(13, 75877, 'Chamod+Dissanayake', 110, '2022-01', 1987.15, '2022-05-14 18:30:00'),
(45, 75897, 'Mewan Kavinga', 100, '2022-06', 1701.15, '2022-05-14 18:30:00'),
(46, 75895, 'Lahiru Rukshan', 150, '2022-11', 3267.15, '2022-05-14 18:30:00'),
(47, 75980, 'Vibath Geenuka', 175, '2022-03', 4296.15, '2022-05-14 18:30:00'),
(48, 75880, 'Heshan Meethalawa', 120, '2022-10', 2307.15, '2022-05-14 18:30:00'),
(49, 75860, 'Heshan Sandaruwan', 150, '2022-01', 3267.15, '2022-05-14 18:30:00'),
(50, 758710, 'Dakshina Perera', 210, '2022-02', 5871.15, '2022-05-14 18:30:00'),
(51, 75875, 'Devshan Kawshalya', 200, '2022-02', 5421.15, '2022-05-14 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elecbilling_tb`
--
ALTER TABLE `elecbilling_tb`
  ADD PRIMARY KEY (`billID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elecbilling_tb`
--
ALTER TABLE `elecbilling_tb`
  MODIFY `billID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




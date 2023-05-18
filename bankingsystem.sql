-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 07:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `sr_no` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Account_no` int(20) NOT NULL,
  `Balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`sr_no`, `Name`, `Email`, `Account_no`, `Balance`) VALUES
(2, 'jenish', 'jenish@gmail.com', 1234567890, 43000),
(3, 'sushant', 'shusant@gmail.com', 1234567891, 17000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `ID` int(250) NOT NULL,
  `Sender_AccountNo` int(20) NOT NULL,
  `Sender_Name` varchar(30) NOT NULL,
  `Receiver_AccountNo` int(20) NOT NULL,
  `Receiver_Name` varchar(30) NOT NULL,
  `Amount_transferred` double NOT NULL,
  `Sender_Balance` double NOT NULL,
  `Receiver_Balance` double NOT NULL,
  `aStatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`ID`, `Sender_AccountNo`, `Sender_Name`, `Receiver_AccountNo`, `Receiver_Name`, `Amount_transferred`, `Sender_Balance`, `Receiver_Balance`, `aStatus`) VALUES
(2, 1234567890, 'jenish', 1234567891, 'sushant', 1000, 44000, 16000, 'Successful'),
(3, 1234567890, 'jenish', 1234567891, 'sushant', 1000, 43000, 17000, 'Successful');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

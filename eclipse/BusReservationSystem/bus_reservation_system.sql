-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 27, 2020 at 10:24 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
use bus_management_system;
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--


-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_id` int(10) UNSIGNED NOT NULL,
  `bus_type` varchar(10)  NULL,
  `capacity` int(11)  NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE `fare` (
  `fare_id` int(10) UNSIGNED NOT NULL,
  `bus_id` int(10) UNSIGNED  NULL,
  `source` varchar(50)   NULL,
  `destination` varchar(50)   NULL,
  `journey_date` datetime  NULL,
  `journey_time` time  NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(28) NOT NULL,
  `password` varchar(28) NOT NULL
	UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE;
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(28)  NULL,
  `firstname` varchar(28)  NULL,
  `lastname` varchar(28)  NULL,
  `age` int(11)  NULL,
  `phone_no` int(20)  NULL,
  `email` varchar(128)  NULL,
  `address` varchar(128)  NULL
	UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE;
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(28) NOT NULL,
  `firstname` varchar(28)  NULL,
  `lastname` varchar(28)  NULL,
  `age` int(11)  NULL,
  `address` varchar(128)  NULL,
  `phone_no` int(20)  NULL,
  `email` varchar(128)  NULL,
  `PASSWORD` varchar(28) NOT NULL
	UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE;
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

CREATE TABLE `Seats allocation` (
  `Seats_id` int(10) UNSIGNED NOT NULL Auto Increment,
  `Fare_id` int(10)  NULL,
  `username` varchar(28)  NULL,
  `seat_no` int(10)  NULL,
  `seat_no1` int(10)  NULL,
  `seat_no2` int(10)  NULL,
  `seat_no3` int(10)  NULL,
  `seat_no4` int(10)  NULL,
  `seat_no5` int(10)  NULL,
  `seat_no6` int(10)  NULL,
  `seat_no7` int(10)  NULL,
	ADD PRIMARY KEY (`Seats_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `transactions` (
  `Payment_id` int(10) UNSIGNED NOT NULL,
  `Fare_id` int(10)  NULL,
  `username` varchar(28)  NULL,
  `transaction_id` int(10)  NULL,
  UNIQUE INDEX `transaction_id_UNIQUE` (`transaction_id` ASC) VISIBLE;
	ADD PRIMARY KEY (`Payment_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Indexes for dumped tables
--


--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `fare`
--
ALTER TABLE `fare`
  ADD PRIMARY KEY (`fare_id`),
  ADD KEY `bus_id` (`bus_id`),

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `username` (`username`,`password`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY `user_id` (`user_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `route`
--

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `bus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fare`
--
ALTER TABLE `fare`
  MODIFY `fare_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--

--
-- Constraints for table `fare`
--
ALTER TABLE `fare`
  ADD CONSTRAINT `fare_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE,

--
-- Constraints for table `profile`
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

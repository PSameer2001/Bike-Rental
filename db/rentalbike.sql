-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 06:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalbike`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start` varchar(222) NOT NULL,
  `end` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooked`
--

CREATE TABLE `tblbooked` (
  `vid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sno` int(11) NOT NULL,
  `fromdate` varchar(255) NOT NULL,
  `todate` varchar(255) NOT NULL,
  `price/day` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(12) NOT NULL,
  `days` int(11) NOT NULL,
  `bookingdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbooked`
--

INSERT INTO `tblbooked` (`vid`, `email`, `sno`, `fromdate`, `todate`, `price/day`, `price`, `status`, `days`, `bookingdate`) VALUES
(2, 'sameer1@gmail.com', 10, '2023-02-21', '2023-02-24', 500, 1500, '1', 3, '2023-02-21'),
(1, 'sameer@gmail.com', 11, '', '', 500, 1500, '0', 3, '2023-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `sno` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `day` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `pickupadd` varchar(255) NOT NULL,
  `fromdate` varchar(255) NOT NULL,
  `todate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `postdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`sno`, `vid`, `email`, `day`, `price`, `pickupadd`, `fromdate`, `todate`, `status`, `postdate`) VALUES
(11, 2, 'sameer1@gmail.com', 3, 1500, 'mumbai', '2023-02-21', '2023-02-24', '1', '2023-02-21'),
(12, 1, 'sameer@gmail.com', 3, 1500, 'Mumai', '2023-02-21', '2023-02-24', '1', '2023-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `tblcancel`
--

CREATE TABLE `tblcancel` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `sno` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(256) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`id`, `email`, `price`, `Status`, `date`) VALUES
(3, 'sameer1@gmail.com', 1500, 'paid', '2023-02-21'),
(4, 'sameer@gmail.com', 1500, 'paid', '2023-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `subscriberemail` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`subscriberemail`, `date`) VALUES
('sameer@gmail.com', '2023-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `sno` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(10) NOT NULL,
  `aadhar` int(16) NOT NULL,
  `pancard` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`sno`, `name`, `email`, `phone`, `aadhar`, `pancard`, `license`, `password`, `dateofbirth`, `address`, `datetime`) VALUES
(22, 'Sameer', 'sameer1@gmail.com', 1234567890, 2147483647, 'AADDD1234R', '1234567890', '$2y$10$uviDhfYPp816vQNJhnQkK.sqxWfiPCRJ3K70aOUzHZFwp35XlPKRy', '2001-06-10', 'mumbai dadar', '2023-02-16 14:23:11'),
(23, 'sameer', 'sameer@gmail.com', 1234567890, 2147483647, 'AAAAA1234A', '123456789086544', '$2y$10$A0.3Z5EtpTM3/0ZFAEgfXe3fp1jdoJ7UC2T1FnOH5FR.Y0kLpIucG', '', '', '2023-02-21 14:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `overview` varchar(255) NOT NULL,
  `price/day` int(10) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `reg_date` date NOT NULL,
  `upd_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`id`, `title`, `brand`, `overview`, `price/day`, `image1`, `status`, `reg_date`, `upd_date`) VALUES
(1, 'TVS Raider', ' TVS', ' The price of TVS Raider in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/tvsbike1.jpg', 0, '2023-02-16', '2023-02-16 '),
(2, 'TVS Raider 2', ' TVS', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/tvsbike2.jpg', 1, '2023-02-16', '2023-02-16 '),
(3, 'Ducati', ' Ducati', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/ducati.jpg', 1, '2023-02-16', ''),
(4, 'Ola Electric', ' Ola', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/elec1.jpg', 1, '2023-02-16', ''),
(5, 'Honda 150', ' Honda', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/elec2.jpg', 1, '2023-02-16', ''),
(6, 'Revolt 400', ' Revolt', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/elec3.jpg', 1, '2023-02-16', ''),
(7, 'Birla DMS', ' Birla', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/bajajp.jpg', 1, '2023-02-16', ''),
(8, 'Honda 110', ' Honda', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/elec1.jpg', 1, '2023-02-16', ''),
(9, 'Yamaha MT-15', ' Yamaha', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/triumph1.jpg', 1, '2023-02-16', ''),
(10, 'Hunter 350', ' Royal Enfield', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/royalbike.jpg', 1, '2023-02-16', ''),
(11, 'Bullet 350', ' Royal Enfield', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/royalbike2.jpg', 1, '2023-02-16', ''),
(12, 'Suzuki Access 125', ' Suzuki', ' The price of Bike in India starts at Rs. 85,973 and goes upto Rs. 99,990. TVS Raider comes with 3 variants which includes Raider Drum, Raider Disc. The top variant is Raider SmartXonnect which comes at a price tag of Rs. 99,990.', 500, ' img/tvs3.jpg', 1, '2023-02-16', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooked`
--
ALTER TABLE `tblbooked`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tblcancel`
--
ALTER TABLE `tblcancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbooked`
--
ALTER TABLE `tblbooked`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcancel`
--
ALTER TABLE `tblcancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 03:19 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locker`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `locker_id` varchar(10) NOT NULL,
  `price` int(3) NOT NULL,
  `status` varchar(30) NOT NULL,
  `images` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `locker_id`, `price`, `status`, `images`) VALUES
(74, '6', 2, 'Under Maintenance', 'L6.png'),
(73, '7', 2, 'Under Maintenance', 'L7.png'),
(72, '5', 2, 'Unavailable', 'L5.png'),
(71, '4', 2, 'Available', 'L4.png'),
(70, '3', 2, 'Under Maintenance', 'L3.png'),
(69, '2', 2, 'Available', 'L2.png'),
(68, '1', 2, 'Available', 'L1.png'),
(75, '8', 2, 'Available', 'L8.png'),
(76, '9', 2, 'Available', 'L9.png'),
(77, '10', 2, 'Not Available', 'L10.png');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `rentalid` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `staffid` varchar(11) NOT NULL,
  `locker_id` int(5) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `price` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`rentalid`, `name`, `staffid`, `locker_id`, `startdate`, `enddate`, `price`) VALUES
('R15833', 'B031720008 NUR AFIQAH BINTI RADZALI', 'S0113', 5, '2018-12-13 00:00:00', '2018-12-18 23:59:59', '10'),
('R86773', 'B031720006 NURZAKIYAH EMALDA BINTI ABDUL JAMAL', 'S0113', 1, '2018-12-06 00:00:00', '2018-12-08 23:59:59', '4'),
('R74228', 'B031720014 EZRINA NATASYA BINTI YAHYA', 'S0113', 3, '2018-12-09 00:00:00', '2018-12-11 23:59:59', '4'),
('R11369', 'D021720021 ARIFF SAFUAN BINTI AHMAD', 'S0113', 5, '2019-05-09 00:00:00', '2019-06-01 23:59:59', '46'),
('R18518', 'B031610186 AHMAD SOFIAN BIN YUNUS', 'S0113', 10, '2018-12-12 00:00:00', '2018-12-14 23:59:59', '4');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `user_id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `staffid` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`user_id`, `username`, `staffid`, `password`) VALUES
(5, 'SYAFIQAH ARDIANA RADZALI', 'staff', 'staff'),
(2, 'wati', '778', '778');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `faculty` varchar(6) NOT NULL,
  `year` int(2) NOT NULL,
  `rfid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `date`, `name`, `faculty`, `year`, `rfid`) VALUES
('B031720008', '2018-12-10 13:23:24', 'NUR AFIQAH BINTI RADZALI', 'FTMK', 2, ''),
('B021720006', '2018-12-09 16:17:17', 'NURZAKIYAH EMALDA BINTI ABDUL JAMAL', 'FKEKK', 3, ''),
('B031720014', '2018-12-09 07:52:27', 'EZRINA NATASYA BINTI YAHYA', 'FKM', 1, ''),
('D061510113', '2018-12-09 16:17:45', 'NUR SYAZWANI BINTI RADZALI', 'FPTT', 2, ''),
('B05156289', '2018-12-09 16:18:04', 'RADZALI BIN ABAS', 'FKP', 2, ''),
('D031510114', '2018-12-09 16:10:59', 'ABDUL RASHID BIN RADZALI', 'FTMK', 3, ''),
('B021720030', '2018-12-09 16:16:58', 'ISKANDAR ZULKARNAIN', 'FKEKK', 2, ''),
('B031610186', '2018-12-09 16:15:47', 'AHMAD SOFIAN BIN YUNUS', 'FTMK', 2, ''),
('B061810440', '2018-12-09 16:21:14', 'HALIMAH SAADIAH BINTI DARUS', 'FPTT', 1, ''),
('D021720021', '2018-12-09 16:22:06', 'ARIFF SAFUAN BINTI AHMAD', 'FKEKK', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `temp_data` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `temp_data`) VALUES
(15, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `staffid` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `staffid`, `password`) VALUES
(11, 'NUR AFIQAH RADZALI', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locker_id` (`locker_id`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`rentalid`),
  ADD UNIQUE KEY `rentalid` (`rentalid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `staffid` (`staffid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `staffid` (`staffid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

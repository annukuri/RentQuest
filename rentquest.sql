-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 04:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentquest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `liked` varchar(100) DEFAULT NULL,
  `buildingimage` text DEFAULT NULL,
  `documentimage` text DEFAULT NULL,
  `documentpdf` text DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `uniqueid`, `name`, `owner`, `phone`, `address`, `description`, `landmark`, `status`, `liked`, `buildingimage`, `documentimage`, `documentpdf`, `latitude`, `longitude`) VALUES
(1, '1', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, '1', '1'),
(2, '100', 'hh', '9', '9', '9', '29', '8', NULL, NULL, NULL, NULL, NULL, '89', '3'),
(3, 'PROP490048', 'PROP490048', 'PROP490048', 'PROP490048', 'PROP490048', 'PROP490048', '', NULL, NULL, NULL, NULL, NULL, 'PROP490048', 'PROP490048'),
(4, 'PROP490048', 'PROP490048', 'PROP490048', 'PROP490048', 'PROP490048', 'PROP490048', 'nnn', NULL, NULL, NULL, NULL, NULL, 'PROP490048', 'PROP490048'),
(5, 'PROP787284', 'hjj', 'nnn', 'nnn', 'nnn', 'njjj', 'njn', NULL, NULL, 'image1686926260827.jpg', NULL, NULL, '77', '77'),
(6, 'PROP724472', 'hkk', 'jjj', 'nnj', 'nn', 'nk', 'nnn', NULL, NULL, 'image1686926934428.jpg', 'image1686926957806.jpg', NULL, 'nn', 'nnl');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `name`, `email`, `phone`, `password`, `address`) VALUES
(1, '', 'test', '900', '900', 'test'),
(2, '', 'test@gmail.com', '7259453975', '123', 'bgk'),
(3, '', 'vaishnavi@gmail.com', '9353592735', '123456', 'bgk'),
(4, '', 'namrata.ekabote@gmail.com ', '9353592735', 'namrata@123', 'Hubli');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `liked` varchar(100) DEFAULT NULL,
  `buildingimage` text DEFAULT NULL,
  `documentimage` text DEFAULT NULL,
  `documentpdf` text DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `uniqueid`, `name`, `owner`, `phone`, `address`, `description`, `landmark`, `status`, `liked`, `buildingimage`, `documentimage`, `documentpdf`, `latitude`, `longitude`) VALUES
(3, 'PROP880376', 'anu', 'anapurna', '8618499706', 'muddebihal, bgk', 'this is good n old property', 'temple', 'Booked', 'Like', 'image1687670219657.jpg', 'image1687670233074.jpg', NULL, '16.1752633', '75.6594348');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `rentpermonth` varchar(100) DEFAULT NULL,
  `bhk` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `filepath` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `liked` varchar(100) DEFAULT NULL,
  `booked` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`id`, `uniqueid`, `name`, `owner`, `address`, `phone`, `rentpermonth`, `bhk`, `landmark`, `latitude`, `longitude`, `description`, `filename`, `filepath`, `status`, `liked`, `booked`) VALUES
(3, 'PROP255880', 'hjjb', 'bbbn', 'bbbn', 'bnnnnnn', 'nnnn', 'nnnn', 'njjj', '16.174836', '75.6595935', 'nkjn', 'image1686907246879.jpg', 'http://192.168.56.1/RentQuestWeb/uploads/image1686907246879.jpg', NULL, NULL, NULL),
(4, 'PROP371469', 'House', 'Navanagar 11th Block', 'Navanagar 11th Block', '7259453975', '6000', '2', 'Near Water Tank', '', '', 'This is good for family', 'image1686989775058.jpg', 'http://192.168.56.1/RentQuestWeb/uploads/image1686989775058.jpg', 'Booked', 'Like', NULL),
(5, 'PROP682494', 'Anu Villa', 'Annapurn', 'Vidyagiri, bagalkot', '8618499706', '5000', '2', 'near bec college', '16.1752528', '75.6595248', 'this good for 4 member family', 'image1687670098545.jpg', 'http://192.168.56.1/RentQuestWeb/uploads/image1687670098545.jpg', 'Booked', 'Like', NULL),
(6, 'PROP407496', 'Annu', 'Annu ', 'bgk', '8618499706', '3000', '3', 'temple', '', '', '', 'image1687703397717.jpg', 'http://192.168.56.1/RentQuestWeb/uploads/image1687703397717.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`name`, `email`, `phone`, `password`, `address`) VALUES
('test', 't', '100', '100', 'test'),
('h', 'j', 'n', 'b', 'b'),
('hbb', 'hji', 'njj', 'bbb', 'bb'),
('hbb', 'hji', 'njj', 'bbb', 'bb'),
('hbb', 'hji', 'njj', 'bbb', 'bb'),
('hbbuuu', 'hjiyuh', 'njjjjh', 'bbb', 'bb'),
('anu1', '9000', '10000', 'anu@gmail.com', 'bgkl'),
('krish', 'krish@gmail.com', '7259453975', '12345', 'bgk'),
('anu', 'anu@gmail.com', '8618499706', '123456', 'bgk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

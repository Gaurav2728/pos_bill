-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2016 at 07:32 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `offer_list`
--

CREATE TABLE `offer_list` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `type` enum('FREE','OFF_PERCENT','OFF_AMOUNT','BULK') NOT NULL,
  `min_order` int(11) NOT NULL,
  `offer` varchar(200) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `active` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_list`
--

INSERT INTO `offer_list` (`oid`, `pid`, `type`, `min_order`, `offer`, `detail`, `active`) VALUES
(1, 6, 'OFF_AMOUNT', 2, '50', 'buy 2 and get 50 bucks off.', 'YES'),
(2, 6, 'OFF_PERCENT', 5, '20', 'Buy 5 and get 20% off.', 'YES'),
(3, 6, 'BULK', 3, '1', 'Buy 3 get 1 Free.', 'YES'),
(4, 6, 'BULK', 10, '4', 'Buy 10 get 4 FREE', 'YES'),
(5, 6, 'FREE', 4, '7', 'Buy 4 and get Clifton Army Track Pant - Walnut FREE', 'YES'),
(6, 6, 'FREE', 2, '1', 'Buy 2 and get One book free', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `product_cat_list`
--

CREATE TABLE `product_cat_list` (
  `cid` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_cat_list`
--

INSERT INTO `product_cat_list` (`cid`, `cat_name`) VALUES
(1, 'Books'),
(2, 'Clothing'),
(3, 'Shoes'),
(4, 'Daily Accessories'),
(5, 'Consumer Electronics'),
(6, 'DVDs & Movies'),
(7, 'Health & Beauty'),
(8, 'Jewelry & Watches'),
(9, 'Toys & Hobbies'),
(10, 'FOOD ITEM'),
(11, 'Grocery'),
(12, 'Sporting Goods');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `scan_code` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `orignal_price` varchar(50) NOT NULL,
  `our_price` varchar(50) NOT NULL,
  `active` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`pid`, `cid`, `scan_code`, `title`, `detail`, `image`, `orignal_price`, `our_price`, `active`) VALUES
(1, 1, '8791238980', 'The monk who sold his ferrari', 'The Monk Who Sold His Ferrari is a book about the development of character and discipline in life, written by Robin Sharma, a writer and leadership guru. It conveys a message that one should also live his life freely in spite of working all day.', '', '100', '80', 'YES'),
(6, 2, '12367687', 'Lee Marc Men''s Casual Shirt ', 'Material: Denim # Color: Blue\r\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\r\nFitting Type: Regular Fit # Closure Type: Buttoned\r\nOccasion: Casual\r\nWash care instructions: Regular hand wash # iron reverse side', '', '600', '450', 'YES'),
(7, 2, '123676828723', 'Clifton Army Track Pant - Walnut', '100% premium knitted cotton for smooth and soft feel\r\nSoft elastane waist band stretch\r\nStylish contrast side panels', '', '600', '450', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offer_list`
--
ALTER TABLE `offer_list`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `product_cat_list`
--
ALTER TABLE `product_cat_list`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `scan_code` (`scan_code`),
  ADD KEY `cid` (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offer_list`
--
ALTER TABLE `offer_list`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product_cat_list`
--
ALTER TABLE `product_cat_list`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `offer_list`
--
ALTER TABLE `offer_list`
  ADD CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `product_list` (`pid`);

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `product_cat_list` (`cid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

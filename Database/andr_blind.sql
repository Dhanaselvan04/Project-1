-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2024 at 07:51 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `andr_blind`
--
CREATE DATABASE IF NOT EXISTS `andr_blind` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `andr_blind`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `userid` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `pwd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) NOT NULL,
  `age` varchar(10) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `medication` varchar(200) NOT NULL,
  `qr` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `pname`, `age`, `aadhar`, `disease`, `medication`, `qr`) VALUES
(1, 'Ram Kumar', '55', '123187732131', 'Diabetes', 'Insulin 1 doze per day', 'uploads/qr1717832284.png');

-- --------------------------------------------------------

--
-- Table structure for table `pcategory`
--

CREATE TABLE IF NOT EXISTS `pcategory` (
  `catname` varchar(100) NOT NULL,
  PRIMARY KEY (`catname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcategory`
--

INSERT INTO `pcategory` (`catname`) VALUES
('chocolate'),
('shampoo'),
('soap');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `units` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `qr` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `catname`, `pname`, `brand`, `units`, `price`, `qr`) VALUES
(7, 'chocolate', 'Dairy Milk', 'Cadbury', '40 gram', '150', 'uploads/qr1547303341.png'),
(8, 'chocolate', 'KitKat', 'Nestle', '35 gram', '125', 'uploads/qr1547444564.png'),
(9, 'shampoo', 'Protein Shampoo', 'Himalaya', '100 ml', '85', 'uploads/qr1704204738.png'),
(10, 'shampoo', 'Silk Black', 'Chik', '50 ml', '15', 'uploads/qr1547442467.png'),
(11, 'soap', 'Dove Milk', 'Dove', '50 gram', '95', 'uploads/qr1547442495.png'),
(12, 'soap', 'Old Cinthol', 'Godrej', '75 gram', '45', 'uploads/qr1547444492.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

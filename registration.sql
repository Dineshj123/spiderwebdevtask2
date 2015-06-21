-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2015 at 10:15 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `description` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `latitude`, `longitude`, `description`, `time`) VALUES
(22, 25.535999, 72.228996, ' Padroo', '2015-06-19 07:36:59'),
(23, 15.086000, 75.655998, ' Belahatti', '2015-06-19 07:37:07'),
(24, 9.376000, 76.799004, ' Cherukulanji', '2015-06-19 07:37:16'),
(25, 10.243000, 79.391998, ' Mallipattinam', '2015-06-19 07:38:14'),
(26, 13.126000, 79.480003, ' Vengupattu', '2015-06-19 07:38:20'),
(27, 18.076000, 78.863998, ' Siddipet', '2015-06-19 07:48:53'),
(28, 0.000000, 0.000000, '', '2015-06-19 07:49:11'),
(29, 18.993000, 76.446999, 'Sonpeth - Shirsala Road', '2015-06-19 07:50:46'),
(30, 12.311000, 76.579002, ' Madagalli', '2015-06-19 07:51:01'),
(31, 17.909000, 79.698997, ' Sangem', '2015-06-19 07:52:35'),
(32, 12.869000, 77.898003, ' Sampangere', '2015-06-19 07:53:46'),
(33, 21.016001, 85.237000, ' Kadapada', '2015-06-19 07:55:02'),
(34, 10.847000, 78.249001, ' Vadavambadi', '2015-06-19 07:55:38'),
(35, 17.532000, 78.161003, 'Isnapur-Indira Karan Road', '2015-06-19 07:57:48'),
(36, 17.951000, 79.524002, 'Unnamed Road', '2015-06-19 07:59:04'),
(37, 17.028000, 79.875000, ' Mukundapuram', '2015-06-19 07:59:56'),
(38, 17.028000, 79.875000, ' Mukundapuram', '2015-06-19 08:00:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

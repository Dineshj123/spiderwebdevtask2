-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2015 at 02:18 PM
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
-- Table structure for table `registrationspider`
--

CREATE TABLE IF NOT EXISTS `registrationspider` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `description` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `registrationspider`
--

INSERT INTO `registrationspider` (`id`, `latitude`, `longitude`, `description`, `time`) VALUES
(1, 18.076000, 76.754997, ' Palapur', '2015-06-24 12:02:23'),
(2, 12.997000, 77.678001, ' Bengaluru', '2015-06-24 12:02:55'),
(3, 20.440001, 84.445999, 'National Highway 224', '2015-06-24 12:03:01'),
(4, 18.993000, 72.931999, ' Mumbai', '2015-06-24 12:03:09'),
(5, 18.993000, 78.952003, ' Potharam', '2015-06-24 12:04:00'),
(6, 17.490000, 78.161003, ' Bhanur', '2015-06-24 12:08:58'),
(7, 22.118999, 70.998001, ' Sardhar', '2015-06-24 12:09:07'),
(8, 18.201000, 77.414001, ' Tuljapur', '2015-06-24 12:09:12'),
(9, 8.378000, 77.765999, ' Vijayanarayanam', '2015-06-24 12:09:49'),
(10, 23.455999, 85.984001, ' Kanriyar', '2015-06-24 12:10:41'),
(11, 20.399000, 76.843002, ' Bodkha', '2015-06-24 12:10:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

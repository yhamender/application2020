-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2017 at 03:44 PM
-- Server version: 5.6.35-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `greenschool1`
--

-- --------------------------------------------------------

--
-- Table structure for table `gsp_user`
--

CREATE TABLE IF NOT EXISTS `gsp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL,
  `lastQuestionId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `gsp_user`
--

INSERT INTO `gsp_user` (`id`, `email`, `password`, `status`, `username`, `lastQuestionId`) VALUES
(1, 'erhamender@gmail.com', '12345678', 0, '', 0),
(2, 'siddhantkulshreshtha013@gmail.com', '123456', 0, 'DPS Delhi', 0),
(3, 'chauhansunil918@gmail.com', '12345678', 0, 'KV AFS SAMANA', 0),
(4, 'support@greenschoolsprogramme.org', 'SOTzEqPGKw', 0, 'CSE Public School', 0),
(5, 'su.pport@greenschoolsprogramme.org', 'zEAOspSnBn', 0, 'GSP Public School', 0),
(6, 'su.pport@greenschoolsprogramme.org', 'k4slLCGzBq', 0, 'GSP Public School', 0),
(7, 'su.pport@greenschoolsprogramme.org', 'pYg0YxGjLD', 0, 'GSP school', 0),
(8, 'ved2pac@gmail.com', 'pJeiTDFV9K', 0, 'Hello School', 0),
(9, 'vishal131203@gmail.com', 'q7vdkWUpmJ', 0, 'Test School', 0),
(10, 'vishal@studiotesseract.biz', 'c66aaOnCZU', 0, 'asdfgea', 0),
(11, 'hamender@gmail.com', 'qOWBxPrYtY', 0, 'cba', 0),
(12, 'abc@gmail.com', '2KhXqLWEEy', 0, 'ABC School', 0),
(13, 'sachinfd3@gmail.com', 'Fx6AWg9Myq', 0, 'ABC School', 0),
(14, 'hamender@studiotesseract.biz', 'aEfWD6imIs', 0, 'hamender', 0),
(15, 'ajanta@cseindia.org', 'HSGIoBUvH1', 0, 'hamener', 0),
(16, 'siddhantkulshreshtha013@gmail.com', 'OsiR5exUXG', 0, 'Bal Mitra School', 0),
(17, 'erhamen.der@gmail.com', 'gNs6KEgYEp', 0, 'HAmender', 0),
(18, 'Aditi.s.16@gmail.com', '4mw77KGWua', 0, 'Aditi school', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

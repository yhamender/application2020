-- phpMyAdmin SQL Dump
-- version 4.0.10.16
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2017 at 08:27 PM
-- Server version: 5.6.16
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gsp_audit17`
--

-- --------------------------------------------------------

--
-- Table structure for table `gsp_school`
--

CREATE TABLE IF NOT EXISTS `gsp_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL DEFAULT 'India',
  `state` varchar(35) NOT NULL,
  `district` varchar(35) NOT NULL,
  `city` varchar(35) NOT NULL,
  `pincode` int(10) NOT NULL,
  `std` int(8) NOT NULL,
  `telephone` int(15) NOT NULL,
  `country_code` int(5) NOT NULL,
  `schoolemail` varchar(100) NOT NULL,
  `principle_name` varchar(100) NOT NULL,
  `mobile` int(13) NOT NULL,
  `coname` varchar(100) NOT NULL,
  `coemail` varchar(100) NOT NULL,
  `comobile` varchar(15) NOT NULL,
  `progress` int(11) NOT NULL DEFAULT '5',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `gsp_school`
--

INSERT INTO `gsp_school` (`id`, `userid`, `name`, `address1`, `address2`, `country`, `state`, `district`, `city`, `pincode`, `std`, `telephone`, `country_code`, `schoolemail`, `principle_name`, `mobile`, `coname`, `coemail`, `comobile`, `progress`, `date_added`) VALUES
(1, 1, 'as', 'e', 'ad', 'India', '13', '170', 'hh', 123001, 1282, 2147483647, 91, 'erhamender@gmail.com', 'adsd', 2147483647, 'hjh', 'erhamender@gmail.com', '9811193770', 5, '0000-00-00 00:00:00'),
(2, 2, 'DPS Delhi', 'Type 345', 'Typ4 567', 'India', '10', '135', 'Agra', 211011, 223, 2147483647, 91, 'siddhantkulshresht11ha013@gmail.com', 'Test', 2147483647, 'Anuj', 'siddhantkulshreshtha013@gmail.com', '9453255175', 5, '0000-00-00 00:00:00'),
(3, 3, 'KV AFS SAMANA', 'Jamanagar', 'Radar Base', 'India', '12', '148', 'Jamanagar', 362001, 122, 123456, 91, 'chauhansunil918@gmail.com', 'Sunil Chauhan', 2147483647, 'Sunil Chauhan', 'chauhansunil918@gmail.com', '8800776943', 5, '0000-00-00 00:00:00'),
(4, 4, 'CSE Public School', 'Tughlakhabad Inst area', '', 'India', '10', '134', 'Delhi', 110062, 11, 49691000, 91, 'support@greenschoolsprogramme.org', 'Ajanta', 2147483647, 'Aditi Sharma', 'aditi.sharma@cseindia.org', '9971374646', 5, '0000-00-00 00:00:00'),
(5, 5, 'GSP Public School', 'Near Batra Hospital', '', 'India', '10', '134', 'Delhi', 110062, 11, 4969000, 91, 'su.pport@greenschoolsprogramme.org', 'Ranjita', 2147483647, 'Aditi', 'aditi.sharma@cseindia.org', '9971374646', 5, '0000-00-00 00:00:00'),
(6, 6, 'GSP Public School', 'Near Batra Hospital', '', 'India', '10', '134', 'Delhi', 110062, 11, 4969000, 91, 'su.pport@greenschoolsprogramme.org', 'Ranjita', 2147483647, 'Aditi', 'aditi.sharma@cseindia.org', '9971374646', 5, '0000-00-00 00:00:00'),
(7, 7, 'GSP school', 'Tuglakabad', 'Tuglakabad Delhi', 'India', '10', '130', 'Delhi', 123401, 11, 98767678, 91, 'su.pport@greenschoolsprogramme.org', 'Ajanta', 2147483647, 'vedang', 'ved2pac@gmail.com', '9416779705', 5, '0000-00-00 00:00:00'),
(8, 8, 'Hello School', 'Tuglakabad', 'Tuglakabad Delhi', 'India', '10', '130', 'New Delhi', 123401, 11, 2147483647, 91, 'ved2pac@gmail.com', 'Vedang Ratan Vatsa', 2147483647, 'vedang', 'vatsvedang@gmail.com', '9416779705', 5, '0000-00-00 00:00:00'),
(9, 9, 'Test School', 'Test1', 'Tes23', 'India', '1', '1', 'Tes', 211011, 123, 2147483647, 91, 'vishal131203@gmail.com', 'Test', 2147483647, 'Animesh', 'animesh0721@gmail.com', '9453255175', 5, '0000-00-00 00:00:00'),
(10, 10, 'asdfgea', 'asdvawev', 'asdvasdv', 'India', '16', '237', 'wefqwef', 211011, 222, 2147483647, 91, 'vishal@studiotesseract.biz', 'tEST', 2147483647, 'tEST', 'animesh@studiotesseract.biz', '9453255175', 5, '0000-00-00 00:00:00'),
(11, 11, 'cba', 'hj', 'hj', 'India', '13', '169', 'gvjkh', 123001, 2147483647, 121222222, 91, 'hamender@gmail.com', 'hamender', 2147483647, 'hamender', 'erhamender@gmail.com', '9811193770', 5, '0000-00-00 00:00:00'),
(12, 12, 'ABC School', 'Sector Alpha-1', '', 'India', '33', '567', 'GreNo', 201308, 120, 2322155, 91, 'abc@gmail.com', 'abcdef', 1236547890, 'Hakku', 'abc_123@gmail.com', '0987654321', 5, '0000-00-00 00:00:00'),
(13, 13, 'ABC School', 'Sector Alpha-1', '', 'India', '33', '567', 'GreNo', 201308, 120, 2322155, 91, 'sachinfd3@gmail.com', 'Abcdef', 987654321, 'Himanshu', 'himanshugn03@gmail.com', '1234567890', 5, '0000-00-00 00:00:00'),
(14, 14, 'hamender', 'hamender', 'hamender', 'India', '13', '176', 'narnaul', 123001, 1282, 254770, 91, 'hamender@studiotesseract.biz', 'hamender', 2147483647, 'hamendergsp cordinater', 'erhamender.@gmail.com', '9811193770', 5, '0000-00-00 00:00:00'),
(15, 15, 'hamener', '123', '12', 'India', '13', '176', 'Zoom', 121010, 124, 2147483647, 91, 'ajanta@cseindia.org', 'V L Singh', 2147483647, 'T S Singh', 'ajanta0103@gmail.com', '9876543222', 5, '0000-00-00 00:00:00'),
(16, 16, 'Bal Mitra School', 'Dhoomangang', 'Allahabad', 'India', '19', '288', 'Allahabad', 211011, 213, 2147483647, 91, 'siddhantkulshreshtha013@gmail.com', 'Agra Sen', 2147483647, 'XYX', 'sidd_013@gmail.com', '9453255175', 5, '2017-07-25 11:53:29'),
(17, 17, 'HAmender', 'ha', 'we', 'India', '9', '126', 'narnaul', 123001, 1282, 123001, 91, 'erhamen.der@gmail.com', 'hamender', 2147483647, 'hamender', 'yha.mender@gmail.com', '9811193770', 5, '2017-07-25 12:01:52'),
(18, 18, 'Aditi school', 'Delhi', '', 'India', '10', '129', 'Delhi', 110092, 11, 22427748, 91, 'Aditi.s.16@gmail.com', 'Aditi', 2147483647, 'Aditi Sharma', 'Aditi.sharma@cseindia.org', '9971374646', 5, '2017-07-26 03:00:36'),
(19, 19, 'Florence Nightingale Academy', 'Baithnath Road', 'New Hyderabad', 'India', '34', '596', 'Lucknow', 226007, 522, 2147483647, 91, 'animesh0721@gmail.com', 'Animesh Kumar', 2147483647, 'Nikhat Khan', 'animesh@studiotesseract.biz', '9717537721', 5, '2017-07-26 19:51:07'),
(20, 20, 'School', '123', '345', 'India', '17', '262', 'narnaul', 123001, 1282, 254770, 91, 'erha.mender@gmail.com', 'yadav', 2147483647, 'hamender', 'hamender.y@gmail.com', '9996080805', 5, '2017-07-26 23:26:30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

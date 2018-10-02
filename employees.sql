-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2018 at 03:45 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `widgetinc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `N_ID` int(11) NOT NULL,
  `S_FIRSTNAME` varchar(255) NOT NULL,
  `S_LASTNAME` varchar(255) NOT NULL,
  `N_SSN` int(9) NOT NULL,
  `N_AGE` int(3) NOT NULL,
  `S_ADDRESS` varchar(255) NOT NULL,
  `S_CITY` varchar(255) NOT NULL,
  `S_STATE` varchar(2) NOT NULL,
  `N_ZIPCODE` int(5) NOT NULL,
  `S_EMAIL` varchar(255) NOT NULL,
  `B_ISACTIVE` tinyint(1) NOT NULL DEFAULT '1',
  `D_HIREDATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `N_PHONE1` int(10) NOT NULL,
  `N_PHONE2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`N_ID`, `S_FIRSTNAME`, `S_LASTNAME`, `N_SSN`, `N_AGE`, `S_ADDRESS`, `S_CITY`, `S_STATE`, `N_ZIPCODE`, `S_EMAIL`, `B_ISACTIVE`, `D_HIREDATE`, `N_PHONE1`, `N_PHONE2`) VALUES
(1, 'STEVEN', 'ANDREWS', 555231121, 38, '321 MAIN ST', 'BIRMINGHAM', 'AL', 35206, 'MYEMAIL@OSIDESIGNS.COM', 0, '0000-00-00 00:00:00', 2147483647, 2055559801),
(2, 'ETHAN', 'ANDREWS', 555235621, 7, '321 MAIN ST', 'BIRMINGHAM', 'AL', 35206, 'HISEMAIL@OSIDESIGNS.COM', 1, '0000-00-00 00:00:00', 2147483647, 2055559801);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`N_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `N_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

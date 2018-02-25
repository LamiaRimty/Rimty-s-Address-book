-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 08:09 PM
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
-- Database: `tutorial_phonebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_fname` varchar(100) NOT NULL,
  `contact_lname` varchar(100) NOT NULL,
  `contact_nickname` varchar(100) NOT NULL,
  `contact_cphone` varchar(50) NOT NULL,
  `contact_wphone` varchar(50) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_address` varchar(100) NOT NULL,
  `contact_city` varchar(50) NOT NULL,
  `contact_state` varchar(50) NOT NULL,
  `contact_zipcode` varchar(50) NOT NULL,
  `contact_profile` varchar(255) NOT NULL,
  `contact_notes` longblob NOT NULL,
  `contact_status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_fname`, `contact_lname`, `contact_nickname`, `contact_cphone`, `contact_wphone`, `contact_email`, `contact_address`, `contact_city`, `contact_state`, `contact_zipcode`, `contact_profile`, `contact_notes`, `contact_status`) VALUES
(28, ' Lutfun', 'Nahar', 'Labonno', '01712506802', '0289789', 'lutfun.hossain@gmail.com', 'W Agargaon', 'Dhaka', 'Bangladesh', '1218', 'Labonno.jpg', '', '1'),
(29, 'Hossain Bin', 'Amin ', 'Tuhin', '01712213853', '02955467', 'hossain.cse@gmail.com', 'Haragach', 'Rangpur', 'Bangladesh', '5402', 'Tuhin.jpg', '', '1'),
(30, 'Masnoon', 'Nazifa', 'Taseen', '01784097197', '65425', 'Taseen@gmail.com', 'Haragach Road Shalbon Mistripara', 'Rangpur', 'Bangladesh', '5402', 'Taseen.jpg', '', '1'),
(31, 'Kobita', 'Afruz', 'Kabita', '01739448252', '02979879', 'kabita@gmail.com', 'F/67,uttar cayabithi,joydebpur', 'Gazipur', 'Bangladesh', '1700', 'Kobita.JPG', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

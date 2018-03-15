-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2018 at 07:22 AM
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
  `user_id` int(11) NOT NULL,
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

INSERT INTO `contacts` (`contact_id`, `user_id`, `contact_fname`, `contact_lname`, `contact_nickname`, `contact_cphone`, `contact_wphone`, `contact_email`, `contact_address`, `contact_city`, `contact_state`, `contact_zipcode`, `contact_profile`, `contact_notes`, `contact_status`) VALUES
(37, 37, 'Lamia', 'Jabin', 'Rimty', '01761075136', 'rimtycse@gmail.com', '01521479173', 'Habibnagar', 'Rangpur', 'Bangladesh', '5402', 'Rimty.jpg', '', '1'),
(38, 38, 'Lutfun', 'Nahar', 'Labonno', '01712506802', 'lutfun.hossain@gmail.com', '029554904', 'West Agargaon', 'Dhaka', 'Bangladesh', '1216', 'Labonno.jpg', '', '1'),
(39, 41, 'Lamia', 'Jabin', 'Rimty', '01761075136', 'rimtycse@gmail.com', '01521479173', 'Habibnagar', 'Rangpur', 'Bangladesh', '5402', 'Rimty.jpg', '', '1'),
(40, 41, 'Nurullayla', 'Begum', 'Kalpana', '01716407697', 'kalpana@gmail.com', '65895', 'Habibnagar', 'Rangpur', 'Bangladesh', '5402', 'kolpona.jpg', '', '1'),
(41, 41, 'Kabita', 'Afruz', 'Kabita', '01739448252', 'kabita@gmail.com', '01739448252', 'Joydebpur', 'Gazipur', 'Bangladesh', '1700', 'Kobita.JPG', '', '1'),
(42, 38, 'Masnoon', 'Nazifa', 'Taseen', '01716407666', 'Taseen@gmail.com', '654256', 'SalbonMiistri para', 'Rangpur', 'Bangladesh', '5402', 'Taseen.jpg', '', '1'),
(43, 38, 'Hossain Bin', 'Amin', 'Tuhin', '01712213853', 'hossain.cse@gmail.com', '0276578', 'Haragach', 'Rangpur', 'Bangladesh', '5402', 'Tuhin.jpg', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`) VALUES
(38, 'labonno', 'lutfun.hossain@gmail.com', 'labonno111'),
(41, 'rimty', 'rimtycse@gmail.com', 'rimty111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

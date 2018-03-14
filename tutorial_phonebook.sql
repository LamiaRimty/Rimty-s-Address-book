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
('28','1', ' Lutfun', 'Nahar', 'Labonno', '01712506802', '0289789', 'lutfun.hossain@gmail.com', 'W Agargaon', 'Dhaka', 'Bangladesh', '1218', 'Labonno.jpg', '', '1'),
('29','2', 'Hossain Bin', 'Amin ', 'Tuhin', '01712213853', '02955467', 'hossain.cse@gmail.com', 'Haragach', 'Rangpur', 'Bangladesh', '5402', 'Tuhin.jpg', '', '1'),
('30','3', 'Masnoon', 'Nazifa', 'Taseen', '01784097197', '65425', 'Taseen@gmail.com', 'Haragach Road Shalbon Mistripara', 'Rangpur', 'Bangladesh', '5402', 'Taseen.jpg', '', '1'),
('31','4','Kobita', 'Afruz', 'Kabita', '01739448252', '02979879', 'kabita@gmail.com', 'F/67,uttar cayabithi,joydebpur', 'Gazipur', 'Bangladesh', '1700', 'Kobita.JPG', '', '1');

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
-- Dumping data for table `contacts`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`) VALUES
('1','monmoy','iammonmoy@gmail.com','512345monmoy'),
('2','tonmoy','tonmoy_sust@yahoo.com','512345monmoy'),
('3','mahida','www.somikkha@gmail.com','512345monmoy'),
('4','rimty','rimty@gmail.com','512345monmoy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts` and users
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts` and users
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

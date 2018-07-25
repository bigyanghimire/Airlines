-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2018 at 09:17 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `post_id` int(100) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_content` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`post_id`, `post_title`, `post_content`) VALUES
(5, '', ''),
(2, '', ''),
(4, '', ''),
(6, 'sangam', 'pilot\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `ad_id` int(11) NOT NULL,
  `state` varchar(64) NOT NULL,
  `street` varchar(64) NOT NULL,
  `country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ad_id`, `state`, `street`, `country`) VALUES
(1, 'Makwanpur', '1024', 1),
(2, 'Kathmandu', '2022', 2),
(14, 'mak', '1024', 14),
(15, 'mak', '1024', 15);

-- --------------------------------------------------------

--
-- Table structure for table `aircrafts`
--

CREATE TABLE `aircrafts` (
  `ac_id` int(11) NOT NULL,
  `aircraft_no` varchar(32) NOT NULL,
  `capacity` int(11) NOT NULL,
  `mfdby` varchar(128) NOT NULL,
  `mfdon` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircrafts`
--

INSERT INTO `aircrafts` (`ac_id`, `aircraft_no`, `capacity`, `mfdby`, `mfdon`) VALUES
(1, '1111', 60, 'boeing', '2017-06-24'),
(2, '2222', 60, 'Boeing-747', '2017-06-28'),
(3, '1234', 345, 'bigyan', '0000-00-00'),
(4, '1242', 1233, 'boieng', '2111-01-01'),
(6, '1213', 121414, 'bhanu', '0001-01-01'),
(7, 'ae', 0, 'qwq', '0000-00-00'),
(8, '3124', 123, 'eq', '0011-11-01'),
(9, '1968', 2390214, 'nepal', '2019-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `airfare`
--

CREATE TABLE `airfare` (
  `afid` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `fare` varchar(255) NOT NULL,
  `fuel_charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airfare`
--

INSERT INTO `airfare` (`afid`, `route`, `fare`, `fuel_charge`) VALUES
(1, 1, '1500', '1000'),
(2, 2, '1500', '1000'),
(3, 3, '5000', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `cnt_id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `cell` varchar(32) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`cnt_id`, `email`, `cell`, `telephone`, `address`) VALUES
(1, 'bipulthapa23@gmail.com', '9869001233', '01-6639266', 1),
(2, 'sample@gmail.com', '9869000000', '01-6639000', 2),
(14, 'bipulthapa10@gmail.com', '9845000000', '0166392600', 14),
(15, 'bipulthapa10@gmail.com', '9845000000', '0166392600', 15);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(55) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `username`) VALUES
(1, 'nepal', 'bipul'),
(2, 'nepal', 'sample'),
(14, 'nepal', 'sample1'),
(15, 'nepal', 'sample2');

-- --------------------------------------------------------

--
-- Table structure for table `employee1`
--

CREATE TABLE `employee1` (
  `empid` int(11) NOT NULL,
  `emp_number` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `age` varchar(128) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `contact_num` varchar(128) NOT NULL,
  `dept` varchar(128) NOT NULL,
  `workinghrs` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee1`
--

INSERT INTO `employee1` (`empid`, `emp_number`, `name`, `age`, `gender`, `address`, `contact_num`, `dept`, `workinghrs`) VALUES
(2, '12', 'ad', 'eqe', 'q', 'd', 'd', 'ad', 'e'),
(8, '', 'sanjiv', '15', 'gender', 'address', 'contact', 'dept', 'working_hr'),
(9, '9', 'pite', '16', 'male', 'banepa', '980', 'maths', '10');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact_num` int(11) NOT NULL,
  `dept` varchar(250) NOT NULL,
  `workinghrs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `name`, `age`, `gender`, `address`, `contact_num`, `dept`, `workinghrs`) VALUES
(0, 'sanjiv gautam', 20, 'female', 'dhulikhel', 2147483647, 'sanitary', 22);

-- --------------------------------------------------------

--
-- Table structure for table `flight_schedule`
--

CREATE TABLE `flight_schedule` (
  `flid` int(11) NOT NULL,
  `flight_day` varchar(32) NOT NULL,
  `departure` time NOT NULL,
  `arrival` time NOT NULL,
  `aircraft_no` int(11) NOT NULL,
  `routecode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_schedule`
--

INSERT INTO `flight_schedule` (`flid`, `flight_day`, `departure`, `arrival`, `aircraft_no`, `routecode`) VALUES
(1, 'thursday', '19:25:00', '09:00:00', 1111, 'Kath-Pokh'),
(3, 'friday', '15:00:00', '17:00:00', 1111, 'Kath-Pokh'),
(4, 'thursday', '14:00:00', '14:25:00', 2222, 'Kath-Pokh'),
(5, 'thursday', '17:00:00', '17:25:00', 1113, 'Kath-Pokh'),
(6, 'thursday', '08:00:00', '08:25:00', 1115, 'Kath-Pokh'),
(7, 'sunday', '15:30:00', '16:45:00', 2222, 'Pokh-Bira'),
(8, 'thursday', '23:33:00', '12:32:00', 1234, '1233-1234'),
(9, 'monday', '12:23:00', '11:11:00', 1234, '1243-1939'),
(10, 'ad', '12:03:00', '14:13:00', 1235, 'Kath-Pokh');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `psid` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `fname` varchar(128) NOT NULL,
  `mname` varchar(128) DEFAULT NULL,
  `lname` varchar(128) NOT NULL,
  `age` int(11) NOT NULL,
  `nationality` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`psid`, `title`, `fname`, `mname`, `lname`, `age`, `nationality`) VALUES
(1, 'Mr.', 'Ram', 'Lal', 'Yadav', 30, 'Nepali'),
(1, 'Mrs.', 'Sita', 'Devi', 'Yadav', 26, 'Nepali'),
(1, 'Mstr.', 'Shrawan', 'kumar', 'yadav', 10, 'Nepali'),
(2, 'Mr.', 'Bipul', '', 'Thapa', 20, 'Nepali'),
(3, 'Mr.', 'Sample', '', 'try', 35, 'Nepali'),
(4, 'Mr.', 'a', 'b', 'c', 35, 'Nepali'),
(5, 'Mr.', 'kai', '', 'Rooney', 25, 'Others'),
(6, 'Mr.', '123', 'lsdkafjlasdf', 'lksjdaflkasd', 21, 'Nepali'),
(7, 'Mrs.', 'sdf', 'dklf', 'alskdfjsad', 12, 'Nepali'),
(8, 'Mr.', 'zcvnxmc', 'sdlfkjsadlkfj', 'ldsakfjaslkdf', 0, 'Nepali'),
(9, 'Mr.', 'abc', '', 'xyz', 30, 'Nepali'),
(9, 'Mrs.', 'ytf', '', 'dsd', 26, 'Nepali'),
(9, 'Mstr.', 'fds', 'sfd', 'dfd', 0, 'Others'),
(10, 'Mr.', 'abc', '', 'xyz', 50, 'Nepali'),
(11, 'Mr.', 'Alpha', 'Ram', 'Yadav', 36, 'Nepali'),
(11, 'Mrs.', 'Beta', 'Devi', 'Yadav', 32, 'Nepali'),
(11, 'Mstr.', 'Gamma', '', 'Yadav', 10, 'Others'),
(12, 'Mr.', 'Ram', 'Prasad', 'Subedi', 45, 'Nepali'),
(12, 'Mr.', 'Hari', 'Lal', 'Sharma', 45, 'Nepali'),
(13, 'Mr.', 'Abc', '', 'def', 20, 'Nepali'),
(13, 'Mrs.', 'xyz', '', 'abc', 25, 'Nepali'),
(14, 'Mrs.', 'abc', 'b', 'xyz', 25, 'Nepali'),
(15, 'Mr.', 'Xyz', 'Lal', 'Sharma', 26, 'Nepali'),
(16, 'Mr.', 'abc', '', 'xyz', 35, 'Nepali');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `psid` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`psid`, `contact`, `status`) VALUES
(1, 1, 'booking'),
(2, 1, 'booking'),
(3, 1, 'booking'),
(4, 1, 'booking'),
(5, 1, 'paid'),
(6, 1, 'booking'),
(7, 1, 'paid'),
(8, 1, 'booking'),
(9, 1, 'paid'),
(10, 1, 'booking'),
(11, 2, 'paid'),
(12, 14, 'paid'),
(13, 2, 'paid'),
(14, 2, 'booking'),
(15, 1, 'paid'),
(16, 1, 'booking'),
(17, 0, 'booking');

-- --------------------------------------------------------

--
-- Table structure for table `plane`
--

CREATE TABLE `plane` (
  `post_id` int(100) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_date` date NOT NULL,
  `post_author` varchar(100) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `post_content` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plane`
--

INSERT INTO `plane` (`post_id`, `post_title`, `post_date`, `post_author`, `post_image`, `post_content`) VALUES
(1, 'buddha air', '2017-05-13', 'sangam', 'america.jpg', 'Buddha airline is beautiful'),
(2, 'buddha air', '2017-05-13', 'sangam', 'america.jpg', 'Buddha airline is beautiful'),
(3, '', '2017-05-16', '', '', ''),
(4, 'qatar', '2017-05-16', 'bipul', 'los.jpg', 'fsdflajslkfhads'),
(5, 'hello ', '2018-07-20', 'bigyan', '880665-road-wallpapers.jpg', 'hello from nepal');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `fname`, `lname`, `role`) VALUES
(1, 'bipul', 'qwerty', 'bipul', 'thapa', 'admin'),
(2, 'sample', '81dc9bdb52d04dc20036dbd8313ed055', 'sample', 'sample', 'user'),
(27, 'sample1', '81dc9bdb52d04dc20036dbd8313ed055', 'sample1', 'sample', 'user'),
(28, 'sample2', '81dc9bdb52d04dc20036dbd8313ed055', 'sample2', 'sample2', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `airport` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `routecode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `airport`, `destination`, `routecode`) VALUES
(1, 'Kathmandu', 'pokhara', 'Kath-Pokh'),
(2, 'Pokhara', 'Kathmandu', 'Pokh-Kath'),
(3, 'Pokhara', 'Biratnagar', 'Pokh-Bira');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tr_id` int(11) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `departure_date` date NOT NULL DEFAULT '0000-00-00',
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `Total` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tr_id`, `booking_date`, `departure_date`, `passenger_id`, `flight_id`, `Total`) VALUES
(1, '2017-07-02 06:05:30', '2017-07-14', 5, 3, '2825'),
(2, '2017-07-02 07:09:51', '2017-07-06', 6, 6, '2825'),
(3, '2017-07-02 07:19:22', '2017-07-06', 7, 6, '2825'),
(4, '2017-07-02 07:29:39', '2017-07-14', 8, 3, '2825'),
(5, '2017-07-02 07:44:25', '2017-07-23', 9, 7, '23730'),
(6, '2017-07-02 13:52:39', '2017-07-06', 10, 5, '2825'),
(7, '2017-07-03 15:58:38', '2017-07-06', 11, 6, '8475'),
(8, '2017-07-03 16:05:41', '2017-07-06', 12, 1, '5650'),
(9, '2017-07-03 16:20:26', '2017-07-07', 13, 3, '5650'),
(10, '2017-07-03 16:30:47', '2017-07-06', 14, 4, '2825'),
(11, '2017-07-04 12:59:34', '2017-07-06', 15, 6, '2825'),
(12, '2017-07-04 13:16:13', '2017-07-16', 16, 7, '7910');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`ac_id`),
  ADD UNIQUE KEY `ac_number` (`aircraft_no`);

--
-- Indexes for table `airfare`
--
ALTER TABLE `airfare`
  ADD PRIMARY KEY (`afid`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`cnt_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee1`
--
ALTER TABLE `employee1`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `emp_number` (`emp_number`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `flight_schedule`
--
ALTER TABLE `flight_schedule`
  ADD PRIMARY KEY (`flid`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`psid`);

--
-- Indexes for table `plane`
--
ALTER TABLE `plane`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routecode` (`routecode`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `aircrafts`
--
ALTER TABLE `aircrafts`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `airfare`
--
ALTER TABLE `airfare`
  MODIFY `afid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `cnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee1`
--
ALTER TABLE `employee1`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `flight_schedule`
--
ALTER TABLE `flight_schedule`
  MODIFY `flid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `psid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `plane`
--
ALTER TABLE `plane`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

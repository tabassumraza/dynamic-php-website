-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 12:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `coursename` varchar(255) DEFAULT NULL,
  `coursecode` varchar(255) DEFAULT NULL,
  `coursedetails` longtext DEFAULT NULL,
  `credithours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `coursename`, `coursecode`, `coursedetails`, `credithours`) VALUES
(1, 'Discreat structure', 'bscs202', 'New', 21),
(2, 'english', 'bba 12', 'more', 14);

-- --------------------------------------------------------

--
-- Table structure for table `degreebatch`
--

CREATE TABLE `degreebatch` (
  `id` int(11) NOT NULL,
  `degreeprogram` varchar(255) DEFAULT NULL,
  `degreelevel` varchar(255) DEFAULT NULL,
  `batchyear` int(50) NOT NULL,
  `batchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degreebatch`
--

INSERT INTO `degreebatch` (`id`, `degreeprogram`, `degreelevel`, `batchyear`, `batchid`) VALUES
(1, 'bachelors in computer science', '2nd year', 20202024, 27),
(2, 'BBA', '1ST YEAR', 20202024, 45),
(3, 'mbbs', '3rd year', 20202024, 98),
(4, 'pharmacy ', '4th year', 20202024, 57);

-- --------------------------------------------------------

--
-- Table structure for table `projectdetail`
--

CREATE TABLE `projectdetail` (
  `id` int(11) NOT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `projectdescription` varchar(255) DEFAULT NULL,
  `studentemail` varchar(255) DEFAULT NULL,
  `submissionDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectdetail`
--

INSERT INTO `projectdetail` (`id`, `projectname`, `subject`, `projectdescription`, `studentemail`, `submissionDate`) VALUES
(3, 'smile', '', '', '', '2022-11-13 14:10:50'),
(4, 'laugh', '', '', '', '2022-11-13 14:10:50'),
(6, 'calmdown', '', '', '', '2022-11-13 14:08:22'),
(7, 'relax', '', '', '', '2022-11-30 14:08:22'),
(8, 'enjoy', '', '', '', NULL),
(9, 'never mind', '', '', '', '2022-11-02 14:08:22'),
(10, 'stress', 'urdu', 'qwertyuiasdfghj', 'tabssumshoaib@gmail.com', '0000-00-00 00:00:00'),
(11, 'iqra', 'ds', 'qwertyuio', 'tabs@gmail.com', '0000-00-00 00:00:00'),
(12, '', '', '', '', '0000-00-00 00:00:00'),
(13, '', '', '', '', '0000-00-00 00:00:00'),
(14, '', '', '', '', '0000-00-00 00:00:00'),
(15, '', '', '', '', '0000-00-00 00:00:00'),
(16, '12345678', 'sdfghj', '1234567', 'jvhg@gmail.com', '0000-00-00 00:00:00'),
(17, 'iqra', 'HKDHBi', 'baji', 'email@gmail.com', '0000-00-00 00:00:00'),
(18, '', '', '', '', '0000-00-00 00:00:00'),
(19, '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:01', NULL, 1),
(21, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:02:51', NULL, 0),
(22, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:03:03', NULL, 0),
(23, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:02', NULL, 0),
(24, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:38', NULL, 0),
(25, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:19', NULL, 1),
(26, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:38', NULL, 1),
(27, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:08:18', NULL, 1),
(28, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:15:25', NULL, 1),
(29, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-07-06 11:09:32', NULL, 1),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-07-06 18:52:14', '07-07-2022 12:32:40 AM', 1),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-07-07 20:33:42', '08-07-2022 02:15:38 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `teachername` varchar(200) DEFAULT NULL,
  `teachercontno` bigint(10) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `teacheremail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `Docid`, `teachername`, `teachercontno`, `designation`, `teacheremail`) VALUES
(1, 1, 'iqra', 4558968789, 'programming', 'iqra@gmail.com'),
(4, 7, 'laiba', 9888988989, 'maths', 'laiba@gmail.com'),
(5, 9, 'aleeza', 1234567890, 'islamiate', 'aleeza@gmail.com'),
(6, 0, 'jhonsena', 123456789, 'boxer', 'jhon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:24', NULL, 1),
(25, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:09:18', NULL, 0),
(26, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:05', NULL, 0),
(27, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:24', NULL, 0),
(28, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:46', NULL, 0),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:12:00', NULL, 1),
(30, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-06 19:06:59', NULL, 1),
(31, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-07 16:05:11', '08-07-2022 02:02:46 AM', 1),
(32, NULL, 'taba', 0x3a3a3100000000000000000000000000, '2022-11-07 14:19:38', NULL, 0),
(41, NULL, 'wave', 0x3a3a3100000000000000000000000000, '2022-11-10 10:53:14', NULL, 0),
(52, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-12 20:40:29', '13-11-2022 02:10:32 AM', 1),
(53, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-12 20:44:07', '13-11-2022 02:14:10 AM', 1),
(54, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-12 20:45:00', '13-11-2022 02:15:03 AM', 1),
(55, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-12 20:48:16', '13-11-2022 02:18:20 AM', 1),
(56, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-13 11:21:22', NULL, 1),
(57, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-13 14:56:33', '13-11-2022 08:26:37 PM', 1),
(58, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-13 14:56:55', '13-11-2022 08:28:09 PM', 1),
(59, NULL, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-13 15:00:36', NULL, 0),
(60, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-13 15:01:16', NULL, 1),
(61, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-23 14:59:06', NULL, 1),
(62, 8, 'tabssumshoaib@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-24 18:35:36', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'amna', 'karachi', 'karachi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '2022-07-07 17:42:03'),
(8, 'taba', 'dsadsa', 'karachi', 'female', 'tabssumshoaib@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-07 14:19:21', NULL),
(10, 'raza', '', '', 'male', 'on@gmail.com', 'c33367701511b4f6020ec61ded352059', '2022-11-12 11:23:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degreebatch`
--
ALTER TABLE `degreebatch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectdetail`
--
ALTER TABLE `projectdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `degreebatch`
--
ALTER TABLE `degreebatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projectdetail`
--
ALTER TABLE `projectdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

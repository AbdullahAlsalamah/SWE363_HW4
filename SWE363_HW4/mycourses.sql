-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2020 at 09:37 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycourses`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `ID` int(11) NOT NULL,
  `CourseCode` varchar(10) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`ID`, `CourseCode`, `CourseName`, `Description`) VALUES
(1, 'SWE 363', 'Web Engineering and Development', 'Fundamentals of web and mobile applications and how they impact people’s lives; Building responsive front-end web and mobile apps; Back-end programming of dynamic and data-driven websites; Development frameworks for web and mobile apps; Security issues of web applications; Practical applications to real-world problems.'),
(2, 'ICS 353', 'Design and Analysis of Algorithms', 'Basic algorithmic analysis; Analysis of iterative and recursive algorithms; Advanced algorithmic design techniques (induction, divide and conquer, dynamic programming, backtracking); The complexity classes P and NP; Basic computability; Parallel algorithms.'),
(3, 'ICS 485', 'Machine Learning', 'This course provides a thorough grounding in a wide range of machine learning methods, for classification, regression, conditional probability estimation, clustering, and dimensionality reduction. It provides the students with the essential foundations of machine learning and their applications to real world problems.');

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(50) NOT NULL,
  `StudentEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`StudentID`, `StudentName`, `StudentEmail`) VALUES
(201570790, 'Abdullah Alsalamah', 's20157079@kfupm.edu.sa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`StudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Courses`
--
ALTER TABLE `Courses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

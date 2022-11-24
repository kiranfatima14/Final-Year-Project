-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 09:18 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `generation` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `copyrights` varchar(255) NOT NULL,
  `publishers` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `category` text NOT NULL,
  `filename` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `author`, `generation`, `pages`, `edition`, `copyrights`, `publishers`, `path`, `category`, `filename`) VALUES
(3, 'business math', 'sumaiya', '1', '200', '5', 'amir', 'book zone', 'C:\\Users\\Office-1\\Documents\\NetBeansProjects\\dlms\\build\\web\\\\images\\businessmath.jpg', 'Physics', 'images\\businessmath.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booksfine`
--

CREATE TABLE `booksfine` (
  `ID` int(11) NOT NULL,
  `BookID` varchar(256) NOT NULL,
  `BookTitle` varchar(256) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(256) NOT NULL,
  `StudentID` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` text NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `BookID` varchar(256) NOT NULL,
  `BookTitle` varchar(256) NOT NULL,
  `StudentID` varchar(256) NOT NULL,
  `Date_of_Issue` date NOT NULL,
  `Date_of_Ret` date NOT NULL,
  `Status` varchar(256) NOT NULL,
  `Remarks` varchar(256) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`BookID`, `BookTitle`, `StudentID`, `Date_of_Issue`, `Date_of_Ret`, `Status`, `Remarks`, `ID`) VALUES
('1', 'c++', '123', '2021-10-08', '2021-10-08', 'returned', 'paid', 1),
('1', 'c++', '123', '2021-10-08', '2021-11-07', 'issued', 'good', 2),
('3', 'business math', 'ahmed90', '2021-10-20', '2021-10-20', 'returned', 'paid', 3),
('3', 'business math', 'ahmed90', '2021-10-20', '2021-10-20', 'returned', 'paid', 4),
('3', 'business math', 'ahmed90', '2021-10-20', '2021-10-20', 'returned', 'paid', 5),
('3', 'business math', 'ahmed90', '2021-10-20', '2021-10-20', 'returned', 'paid', 6),
('3', 'business math', 'ahmed90', '2021-10-20', '2021-10-20', 'returned', 'paid', 7),
('3', 'business math', 'ahmed90', '2021-10-20', '2021-10-20', 'returned', 'paid', 8),
('3', 'business math', 'ahmed90', '2021-10-20', '2021-10-20', 'returned', 'paid', 9);

-- --------------------------------------------------------

--
-- Table structure for table `studentaccount`
--

CREATE TABLE `studentaccount` (
  `id` int(10) NOT NULL,
  `title` varchar(150) NOT NULL,
  `BankName` varchar(200) NOT NULL,
  `AccountNo` varchar(200) NOT NULL,
  `BookID` varchar(150) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_fine`
--

CREATE TABLE `student_fine` (
  `ID` int(11) NOT NULL,
  `StudentID` varchar(256) NOT NULL,
  `BookID` varchar(256) NOT NULL,
  `amount` int(11) NOT NULL,
  `Days` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `date1` date NOT NULL,
  `status` varchar(256) NOT NULL,
  `Remarks` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_fine_payments`
--

CREATE TABLE `student_fine_payments` (
  `ID` int(11) NOT NULL,
  `studentID` varchar(256) DEFAULT NULL,
  `bookID` varchar(256) DEFAULT NULL,
  `paymentMethod` varchar(256) DEFAULT NULL,
  `bankTitle` varchar(256) DEFAULT NULL,
  `AccountNo` varchar(256) DEFAULT NULL,
  `CVS` varchar(256) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Status` varchar(256) DEFAULT NULL,
  `Remarks` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` text NOT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `usertype` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `Descipline` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `password`, `name`, `address`, `Email`, `usertype`, `status`, `Descipline`) VALUES
('123', 'kiran', 'kiran', 'karachi', 'kiran_aliraza@hotmail.com', 'Student', 'ok', 'good'),
('admin', 'admin', 'Ali', 'karachi', 'Admin@gmail.com', 'Admin', 'ok', 'good'),
('ahmed90', 'ahmed', 'ahmed', 'karachi', 'ahmed@123', 'Librarian', 'ok', 'good'),
('batool95', 'Batool123', 'batool', 'karachi', 'batool@hotmail.com', 'Student', 'ok', 'good'),
('kiran', 'kiran', 'kiran', 'karachi', 'kiran.hani95@gmail.com', 'Student', 'ok', 'good'),
('lib123', 'librarian', 'hani', 'karachi', 'librarian@gmail.com', 'Librarian', 'ok', 'good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `booksfine`
--
ALTER TABLE `booksfine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `studentaccount`
--
ALTER TABLE `studentaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fine`
--
ALTER TABLE `student_fine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_fine_payments`
--
ALTER TABLE `student_fine_payments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`(255));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booksfine`
--
ALTER TABLE `booksfine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `studentaccount`
--
ALTER TABLE `studentaccount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fine`
--
ALTER TABLE `student_fine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fine_payments`
--
ALTER TABLE `student_fine_payments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 01:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mag_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `outsider_reg`
--

CREATE TABLE `outsider_reg` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(255) NOT NULL,
  `EMAIL_ID` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `IMAGE` varchar(350) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outsider_reg`
--

INSERT INTO `outsider_reg` (`ID`, `NAME`, `USERNAME`, `PASSWORD`, `CONTACT_NO`, `EMAIL_ID`, `DOB`, `IMAGE`, `STATUS`) VALUES
(1, 'Anjali ', 'Anju', 'Anjali2499', '9989789898', 'Anju24@gmail.com', '2020-09-05', ' upload/â€ª+91 95715 44067â€¬ 20180308_215353.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `CONTENT` varchar(21844) NOT NULL,
  `CATEGORY` varchar(355) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`ID`, `USERNAME`, `CONTENT`, `CATEGORY`, `STATUS`) VALUES
(2, 'Anju', '<p>This is my blog when user share somethin on this page it will first check by the admin and when the admin accept the content it will show on this page otherwise content not display.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>user can also share image,lets do this&nbsp;<img alt=\"\" src=\"ckeditor/uploads/3D-Animated-Angry-Birds-HD-Wallpapers.jpg\" style=\"border-style:solid; border-width:5px; height:48px; margin:20px; width:85px\" /></p>\r\n', 'nature', 0),
(3, 'Anju', '<p>aaaaaaaaaaaaaa</p>\r\n', 'nature', 1),
(4, 'Anju', '<p>aa</p>\r\n', 'nature', 1),
(5, 'Anju', '<p>hello i am Anjali</p>\r\n', 'nature', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff_reg`
--

CREATE TABLE `staff_reg` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(255) NOT NULL,
  `EMAIL_ID` varchar(255) NOT NULL,
  `STAFF_ID` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `IMAGE` varchar(350) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_reg`
--

INSERT INTO `staff_reg` (`ID`, `NAME`, `USERNAME`, `PASSWORD`, `CONTACT_NO`, `EMAIL_ID`, `STAFF_ID`, `DOB`, `IMAGE`, `STATUS`) VALUES
(1, 'Anjali ', 'Anju', 'Anjali8999', '9989789898', 'Anju24@gmail.com', '1234', '2020-09-05', ' upload/anju.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_reg`
--

CREATE TABLE `student_reg` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(255) NOT NULL,
  `EMAIL_ID` varchar(255) NOT NULL,
  `SCHOLAR_ID` varchar(255) NOT NULL,
  `COURSE` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `IMAGE` varchar(350) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_reg`
--

INSERT INTO `student_reg` (`ID`, `NAME`, `USERNAME`, `PASSWORD`, `CONTACT_NO`, `EMAIL_ID`, `SCHOLAR_ID`, `COURSE`, `DOB`, `IMAGE`, `STATUS`) VALUES
(1, 'Anjali ', 'Anju', 'Anjali24@99', '9989789898', 'Anju24@gmail.com', '8899', 'BCA', '2020-09-05', 'upload/â€ª+91 95715 44067â€¬ 20180308_215353.jpg', 0),
(2, 'Anju', 'Anjali24', 'Anjali8989898', '9989789898', 'Anju24@gmail.com', '8899', 'BCA', '2020-09-06', 'upload/â€ª+91 95715 44067â€¬ 20180308_215353.jpg', 1),
(3, 'anju', 'anju24', 'ANjali24', '9989898989', 'anjali@gmail.com', '8888', 'BCA', '2020-11-01', 'upload/pic.png', 1),
(5, 'Deepanshi Sigal  ', 'Deep', 'Deepanshi111', '9989789898', 'Swati@gmail.com', '9989', 'BA', '2021-04-20', 'upload/pic.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `outsider_reg`
--
ALTER TABLE `outsider_reg`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staff_reg`
--
ALTER TABLE `staff_reg`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Indexes for table `student_reg`
--
ALTER TABLE `student_reg`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `outsider_reg`
--
ALTER TABLE `outsider_reg`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_reg`
--
ALTER TABLE `staff_reg`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_reg`
--
ALTER TABLE `student_reg`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

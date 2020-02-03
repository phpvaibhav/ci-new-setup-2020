-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 04:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tunecademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `userType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Admin',
  `profileImage` varchar(255) NOT NULL,
  `contactNumber` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:Active',
  `authToken` text NOT NULL,
  `passToken` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT current_timestamp(),
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `roleId`, `fullName`, `firstName`, `lastName`, `email`, `password`, `userType`, `profileImage`, `contactNumber`, `bio`, `status`, `authToken`, `passToken`, `crd`, `upd`) VALUES
(3, 1, 'Admin', '', '', 'admin@admin.com', '$2y$10$2wXbiJ69itS3pC93Cjc/p..NwsjIzElZ9LmMB53KgD7fZzMd0W.bm', 1, '5fQJDPUzeKv7CTiR.jpg', '1234565432', '', 1, 'bc85910b3b0e0c11b0580a3fc1a127e9a9d3d9e9', 'bf161bcd2ee7b3ea3af9f691dcf84007bf7e36fb', '2020-01-30 12:32:32', '2020-02-02 04:57:23'),
(4, 2, 'TESP', '', '', 'admin@ts.com', '$2y$10$3WYA6gwYgnd6m11jbRDSe.VGMfsn07chhiiIF5zy1psi6ahN3XY7K', 1, '', '12345665423', '', 1, 'a68cc464261f2121c106ec5554c20f97ff427dcd', '11a71f0b72dc408a5605db19fa61afb0e013624b', '2020-01-30 13:13:05', '2020-01-31 11:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `adminrole`
--

CREATE TABLE `adminrole` (
  `roleId` bigint(20) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT current_timestamp(),
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminrole`
--

INSERT INTO `adminrole` (`roleId`, `userType`, `status`, `crd`, `upd`) VALUES
(1, 'Administrator', 1, '2020-01-30 12:29:44', '2020-01-30 12:29:44'),
(2, 'Super Admin', 1, '2020-01-30 12:29:44', '2020-01-30 12:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `companyinfo`
--

CREATE TABLE `companyinfo` (
  `companyId` bigint(20) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT current_timestamp(),
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyinfo`
--

INSERT INTO `companyinfo` (`companyId`, `companyName`, `email`, `logo`, `crd`, `upd`) VALUES
(1, 'Tunecademy', 'tunecademy@info.com', 'gs6iHh2zDZItpqE9.png', '2020-01-30 12:33:46', '2020-02-01 06:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuId` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `showStatus` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:Yes ,0:No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuId`, `title`, `link`, `icon`, `parentId`, `showStatus`) VALUES
(1, 'Dashboard', 'dashboard', ' fa fa-home', 0, 1),
(2, 'School', 'school', 'fa fa-graduation-cap', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `privilegeId` bigint(20) NOT NULL,
  `menuId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `viewData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Yes',
  `addData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Yes',
  `editData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Yes',
  `deleteData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Yes',
  `crd` timestamp NOT NULL DEFAULT current_timestamp(),
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`privilegeId`, `menuId`, `roleId`, `viewData`, `addData`, `editData`, `deleteData`, `crd`, `upd`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2020-01-31 10:40:39', '2020-01-31 10:40:39'),
(2, 2, 1, 1, 1, 1, 1, '2020-01-31 10:40:39', '2020-01-31 10:40:39'),
(3, 1, 2, 1, 1, 1, 1, '2020-01-31 10:41:25', '2020-01-31 10:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `schoolId` bigint(20) NOT NULL,
  `adminId` bigint(20) NOT NULL,
  `schoolName` varchar(191) NOT NULL,
  `schoolLogo` varchar(255) NOT NULL,
  `schoolEmail` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT current_timestamp(),
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolId`, `adminId`, `schoolName`, `schoolLogo`, `schoolEmail`, `status`, `crd`, `upd`) VALUES
(1, 4, 'TESP', 'CPzwiO82uat0x5c4.png', 'admin@ts.com', 1, '2020-01-30 13:13:05', '2020-01-30 13:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `schoolmember`
--

CREATE TABLE `schoolmember` (
  `schoolMemberId` bigint(20) NOT NULL,
  `schoolId` bigint(20) NOT NULL,
  `staffType` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:teacher',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:active',
  `crd` timestamp NOT NULL DEFAULT current_timestamp(),
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staffmeta`
--

CREATE TABLE `staffmeta` (
  `staffMetaId` bigint(20) NOT NULL,
  `staffId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentmeta`
--

CREATE TABLE `studentmeta` (
  `studentMetaId` bigint(20) NOT NULL,
  `studentId` bigint(20) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teachermeta`
--

CREATE TABLE `teachermeta` (
  `teacherMetaId` bigint(20) NOT NULL,
  `teacherId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profileImage` text NOT NULL,
  `contactNumber` varchar(255) NOT NULL,
  `userType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Customer,2:Driver',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:Active ,0:Inactive',
  `authToken` text NOT NULL,
  `passToken` text NOT NULL,
  `deviceType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:Web,1:Android,2:IOS',
  `deviceToken` text NOT NULL,
  `verifyEmail` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Verify',
  `crd` timestamp NOT NULL DEFAULT current_timestamp(),
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `adminrole`
--
ALTER TABLE `adminrole`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `companyinfo`
--
ALTER TABLE `companyinfo`
  ADD PRIMARY KEY (`companyId`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuId`),
  ADD KEY `parentId` (`parentId`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`privilegeId`),
  ADD KEY `roleId` (`roleId`),
  ADD KEY `menuId` (`menuId`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schoolId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminrole`
--
ALTER TABLE `adminrole`
  MODIFY `roleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companyinfo`
--
ALTER TABLE `companyinfo`
  MODIFY `companyId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `privilegeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `schoolId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `adminrole` (`roleId`) ON DELETE CASCADE;

--
-- Constraints for table `privilege`
--
ALTER TABLE `privilege`
  ADD CONSTRAINT `privilege_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `adminrole` (`roleId`) ON DELETE CASCADE,
  ADD CONSTRAINT `privilege_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

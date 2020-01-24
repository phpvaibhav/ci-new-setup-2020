-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2019 at 10:45 PM
-- Server version: 5.6.44-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cg_robin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `userType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Admin',
  `profileImage` varchar(255) NOT NULL,
  `contactNumber` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `authToken` text NOT NULL,
  `passToken` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullName`, `email`, `password`, `userType`, `profileImage`, `contactNumber`, `status`, `authToken`, `passToken`, `crd`, `upd`) VALUES
(1, 'Admin', 'dean@lucidgrp.co.uk', '$2y$10$WxJ3MaIi0KH.taEVTnIf8usaC4fv.Gri/GJXZFliekZgP7FDDUiWi', 1, '', '(01642) 792566', 1, 'e5520b174417caede8b2d7e5f257339fff2a0e4f', 'e5309a9e62031ca2acfe429e2930c5a2a90dcf1d', '2019-08-01 13:15:47', '2019-10-31 05:19:48'),
(2, 'Vaibhav', 'vaibhavsharma.otc@gmail.com', '$2y$10$94HB8LW1aF0Ak9Sm5L3PvOZMc4Vu9eVi4WodjHo8bd9sOIw3AI38C', 1, 'dG8hgf6oaIqcwRD5.jpg', '(121) 212-1212', 1, 'b36772c571c40e689aa4ac2357b4e43a3a10101b', 'f039aff9f58a4ed5150ab364b410681f7f7d23db', '2019-08-01 14:03:16', '2019-10-30 10:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `assignVehicle`
--

CREATE TABLE `assignVehicle` (
  `assignVehicleId` bigint(20) NOT NULL,
  `vehicleId` bigint(20) NOT NULL,
  `driverId` bigint(20) NOT NULL,
  `assignDate` date NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignVehicle`
--

INSERT INTO `assignVehicle` (`assignVehicleId`, `vehicleId`, `driverId`, `assignDate`, `crd`, `upd`) VALUES
(4, 4, 4, '2019-08-08', '2019-08-08 09:29:12', '2019-08-08 09:29:12'),
(5, 5, 18, '2019-08-08', '2019-08-08 13:00:50', '2019-10-03 11:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `carManufacturers`
--

CREATE TABLE `carManufacturers` (
  `id` bigint(20) NOT NULL,
  `title` varchar(45) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `createdAt` int(11) NOT NULL,
  `updatedAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carManufacturers`
--

INSERT INTO `carManufacturers` (`id`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Acura', 1, 1539843076, 1539843076),
(2, 'Audi', 1, 1539843076, 1539843076),
(3, 'Chevrolet', 1, 1539843076, 1539843076),
(4, 'Chrysler', 1, 1539843076, 1539843076),
(5, 'Daewoo', 1, 1539843076, 1539843076),
(6, 'Datsun', 1, 1539843076, 1539843076),
(7, 'Dodge', 1, 1539843076, 1539843076),
(8, 'Ferrari', 1, 1539843076, 1539843076),
(9, 'Fiat', 1, 1539843076, 1539843076),
(10, 'Ford', 1, 1539843076, 1539843076),
(11, 'GMC', 1, 1539843076, 1539843076),
(12, 'Honda', 1, 1539843076, 1539843076),
(13, 'Hummer', 1, 1539843076, 1539843076),
(14, 'Hyundai', 1, 1539843076, 1539843076),
(15, 'Infiniti', 1, 1539843076, 1539843076),
(16, 'Isuzu', 1, 1539843076, 1539843076),
(17, 'Jaguar', 1, 1539843076, 1539843076),
(18, 'Jeep', 1, 1539843076, 1539843076),
(19, 'Kia', 1, 1539843076, 1539843076),
(20, 'Lamborghini', 1, 1539843076, 1539843076),
(21, 'Land-rover', 1, 1539843076, 1539843076),
(22, 'Lexus', 1, 1539843076, 1539843076),
(23, 'Lincoln', 1, 1539843076, 1539843076),
(24, 'Mazda', 1, 1539843076, 1539843076),
(25, 'Mercedes-Benz', 1, 1539843076, 1539843076),
(26, 'Mercury', 1, 1539843076, 1539843076),
(27, 'Mini', 1, 1539843076, 1539843076),
(28, 'Mitsubishi', 1, 1539843076, 1539843076),
(29, 'Nissan', 1, 1539843076, 1539843076),
(30, 'Oldsmobile', 1, 1539843076, 1539843076),
(31, 'Peugeot', 1, 1539843076, 1539843076),
(32, 'Plymouth', 1, 1539843076, 1539843076),
(33, 'Pontiac', 1, 1539843076, 1539843076),
(34, 'Porsche', 1, 1539843076, 1539843076),
(35, 'Reliant', 1, 1539843076, 1539843076),
(36, 'Renault', 1, 1539843076, 1539843076),
(37, 'Rolls-Royce', 1, 1539843076, 1539843076),
(38, 'Saab', 1, 1539843076, 1539843076),
(39, 'Saturn', 1, 1539843076, 1539843076),
(40, 'Scion', 1, 1539843076, 1539843076),
(41, 'Skoda', 1, 1539843076, 1539843076),
(42, 'Smart', 1, 1539843076, 1539843076),
(43, 'Subaru', 1, 1539843076, 1539843076),
(44, 'Suzuki', 1, 1539843076, 1539843076),
(45, 'Tesla', 1, 1539843076, 1539843076),
(46, 'Toyota', 1, 1539843076, 1539843076),
(47, 'Triumph', 1, 1539843076, 1539843076),
(48, 'Venturi', 1, 1539843076, 1539843076),
(49, 'Volkswagen', 1, 1539843076, 1539843076),
(50, 'Volvo', 1, 1539843076, 1539843076),
(51, 'Other', 1, 1539843076, 1539843076);

-- --------------------------------------------------------

--
-- Table structure for table `customerAddress`
--

CREATE TABLE `customerAddress` (
  `addressId` bigint(20) NOT NULL,
  `customerId` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerAddress`
--

INSERT INTO `customerAddress` (`addressId`, `customerId`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`) VALUES
(2, 2, 'The Gatehouse, 84 Billingham Rd', '', '', 'Norton', 'Stockton on Tees', 'TS20 2SA', 'United Kingdom', '0.00000000', '0.00000000'),
(3, 3, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057'),
(4, 5, 'Yfg Sales Aps, Mejerivej, Karlslunde, Denmark', '27', 'Mejerivej', 'Karlslunde', '', '2690', 'Denmark', '55.56650162', '12.21749973'),
(6, 7, 'Test address', '', '', '', '', '', '', '0.00000000', '0.00000000'),
(7, 9, 'Indooroopilly Shopping Centre, Moggill Road, Indooroopilly QLD, Australia', '322', 'Moggill Road', 'Indooroopilly', 'QLD', '4068', 'Australia', '-27.49915695', '152.97306824'),
(8, 10, 'Abu Dhabi - United Arab Emirates', '', '123456789012345678901234567890', 'Abu Dhabi', 'Abu Dhabi', '', 'United Arab Emirates', '24.45389938', '54.37730026'),
(9, 11, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820'),
(11, 13, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820'),
(12, 14, '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695'),
(13, 19, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130'),
(14, 19, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '809', 'Agra Bombay Road', 'Indore', 'MP', '452003', 'India', '22.72272700', '75.88707100'),
(15, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(16, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(17, 7, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(18, 7, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(19, 2, 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410'),
(20, 5, 'Shekhawat Marg, Banni Ki Dhani, Harnathapura, Jhotwara, Jaipur, Rajasthan, India', '', 'Shekhawat Marg', 'Jaipur', 'RJ', '302032', 'India', '26.95181710', '75.72730960'),
(21, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(22, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(23, 3, 'Palasia Square, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72408670', '75.88598180'),
(24, 13, 'Palasia, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72435500', '75.88389440'),
(25, 7, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(26, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(27, 13, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(28, 2, '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'Stockton-on-Tees', 'England', '', 'United Kingdom', '54.61283050', '-1.30712640'),
(29, 7, 'Sarwate Bus Stand, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452001', 'India', '22.71368720', '75.86856960'),
(30, 3, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(31, 20, 'Oviedo, Spain', '12', '', 'Oviedo', 'Asturias', '', 'Spain', '43.36191450', '-5.84938870'),
(32, 20, 'Buffalo, NY, USA', '1234', 'Avenida Callao', 'Buffalo', 'NY', '', 'United States', '42.88644680', '-78.87836890'),
(33, 2, 'NYC, NY, USA', '1234', '123', 'New York', 'NY', '', 'United States', '40.71277530', '-74.00597280'),
(34, 3, 'Albany, NY, USA', '123', '', 'Albany', 'NY', '', 'United States', '42.65257930', '-73.75623170'),
(35, 7, 'Memphis, TN, USA', '', '', 'Memphis', 'TN', '', 'United States', '35.14953430', '-90.04898010'),
(36, 9, 'NYC Health + Hospitals/Coney Island, Ocean Parkway, Brooklyn, NY, USA', '2601', 'Ocean Parkway', '', 'NY', '11235', 'United States', '40.58499400', '-73.96495300');

-- --------------------------------------------------------

--
-- Table structure for table `customerMeta`
--

CREATE TABLE `customerMeta` (
  `customerMetaId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `creditHoldStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Complete,0:Pending',
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `billAddress` text NOT NULL,
  `billStreet` varchar(100) NOT NULL,
  `billStreet2` varchar(100) NOT NULL,
  `billCity` varchar(100) NOT NULL,
  `billState` varchar(100) NOT NULL,
  `billZip` varchar(100) NOT NULL,
  `billCountry` varchar(100) NOT NULL,
  `billLatitude` decimal(10,8) NOT NULL,
  `billLongitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerMeta`
--

INSERT INTO `customerMeta` (`customerMetaId`, `userId`, `creditHoldStatus`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `billAddress`, `billStreet`, `billStreet2`, `billCity`, `billState`, `billZip`, `billCountry`, `billLatitude`, `billLongitude`) VALUES
(2, 2, 0, 'The Gatehouse, 84 Billingham Rd', '', '', 'Norton', 'Stockton on Tees', 'TS20 2SA', 'United Kingdom', '0.00000000', '0.00000000', 'The Gatehouse, 84 Billingham Rd', '', '', '', '', '', '', '0.00000000', '0.00000000'),
(3, 3, 1, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057', 'Outthinking Pvt Ltd, OMBR Layout, Banasawadi, Bengaluru, Karnataka, India', '', '', 'Bengaluru', 'KA', '452003', 'India', '13.00870037', '77.65560150'),
(4, 5, 1, 'Yfg Sales Aps, Mejerivej, Karlslunde, Denmark', '27', 'Mejerivej', 'Karlslunde', '', '2690', 'Denmark', '55.56650162', '12.21749973', 'Tyler, TX, USA', 'jkjkkj', 'hfgfjghnjcvj', 'Tyler', 'TX', '2690', 'United States', '32.35129929', '-95.30110168'),
(6, 7, 0, 'Test address', '', '', '', '', '', '', '0.00000000', '0.00000000', 'Test address ', '123', '456', 'Test city', 'Test state', '123123', '3546', '0.00000000', '0.00000000'),
(7, 9, 0, 'Indooroopilly Shopping Centre, Moggill Road, Indooroopilly QLD, Australia', '322', 'Moggill Road', 'Indooroopilly', 'QLD', '4068', 'Australia', '-27.49915695', '152.97306824', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '4068', 'India', '22.71720695', '75.86840820'),
(8, 10, 0, 'Abu Dhabi - United Arab Emirates', '', '123456789012345678901234567890', 'Abu Dhabi', 'Abu Dhabi', '', 'United Arab Emirates', '24.45389938', '54.37730026', 'Afyonkarahisar, Afyonkarahisar Merkez/Afyonkarahisar, Turkey', '', '123456789012345678901234567890', 'Afyonkarahisar', 'Afyonkarahisar', '', 'Turkey', '38.75690079', '30.53870010'),
(9, 11, 0, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 'Indiana Department of Education, West Washington Street, Indianapolis, IN, USA', '115', 'West Washington Street', 'Indianapolis', 'IN', '452003', 'United States', '39.76654053', '-86.16078186'),
(11, 13, 0, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820'),
(12, 14, 1, '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695', '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695'),
(13, 19, 0, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '809', 'Agra Bombay Road', 'Indore', 'MP', '452003', 'India', '22.72272700', '75.88707100'),
(14, 20, 0, 'Oviedo, Spain', '12', '', 'Oviedo', 'Asturias', '', 'Spain', '43.36191450', '-5.84938870', 'Buffalo, NY, USA', '1234', 'Avenida Callao', 'Buffalo', 'NY', '', 'United States', '42.88644680', '-78.87836890');

-- --------------------------------------------------------

--
-- Table structure for table `driverMeta`
--

CREATE TABLE `driverMeta` (
  `driverMetaId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `emergencyPersonName` varchar(255) NOT NULL,
  `emergencyPersonNumber` varchar(255) NOT NULL,
  `dob` date NOT NULL COMMENT 'Date of Birth',
  `doh` date NOT NULL COMMENT 'Date of Hire',
  `licenseNumber` varchar(255) NOT NULL,
  `licenseExpiryDate` date NOT NULL,
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driverMeta`
--

INSERT INTO `driverMeta` (`driverMetaId`, `userId`, `emergencyPersonName`, `emergencyPersonNumber`, `dob`, `doh`, `licenseNumber`, `licenseExpiryDate`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`) VALUES
(1, 4, 'OR', '(534) 534-5354', '2019-08-27', '2019-08-11', '3454354', '2019-08-14', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057'),
(2, 15, '1234567890', '(123) 456-7890', '1990-03-02', '2019-03-01', '1234567890', '2020-12-31', 'Outthinkcoders, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Shekhar Court', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970'),
(3, 16, '1234567890', '(12345) 612345', '2019-09-04', '2019-09-02', '1234567890', '2020-02-21', 'Mumbai Domestic airport, Navpada, Vile Parle East, Vile Parle, Mumbai, Maharashtra, India', '', '', 'Mumbai', 'MH', '400099', 'India', '19.09355545', '72.85659027'),
(4, 17, '1234567890', '(12345) 678900', '2019-09-16', '2019-09-03', '132312123123123123123123123', '2019-09-30', 'India Gate, New Delhi, Delhi, India', '', '', 'New Delhi', 'DL', '', 'India', '28.61108780', '77.23451996'),
(5, 18, 'Laneo', '(01642) 123456', '2019-02-02', '2019-10-01', '902024', '2021-01-14', '25 Ambleside Road, Middlesbrough, UK', '25', 'Ambleside Road', '', 'England', 'TS6 0ET', 'United Kingdom', '54.55839250', '-1.15857330');

-- --------------------------------------------------------

--
-- Table structure for table `jobQuestionAnswer`
--

CREATE TABLE `jobQuestionAnswer` (
  `answerId` bigint(20) NOT NULL,
  `jobId` bigint(20) NOT NULL,
  `jobTypeId` bigint(20) NOT NULL,
  `questionId` bigint(20) NOT NULL,
  `answer` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobQuestionAnswer`
--

INSERT INTO `jobQuestionAnswer` (`answerId`, `jobId`, `jobTypeId`, `questionId`, `answer`, `crd`, `upd`) VALUES
(5, 90, 4, 1, '', '2019-10-21 10:08:56', '2019-10-21 10:08:56'),
(6, 90, 4, 2, '', '2019-10-21 10:08:56', '2019-10-21 10:08:56'),
(7, 90, 4, 3, '', '2019-10-21 10:08:56', '2019-10-21 10:08:56'),
(8, 90, 4, 4, '', '2019-10-21 10:08:56', '2019-10-21 10:08:56'),
(9, 91, 5, 5, '', '2019-10-21 14:01:41', '2019-10-21 14:01:41'),
(10, 91, 5, 6, '', '2019-10-21 14:01:41', '2019-10-21 14:01:41'),
(15, 93, 4, 1, '', '2019-10-22 12:46:45', '2019-10-22 12:46:45'),
(16, 93, 4, 2, '', '2019-10-22 12:46:45', '2019-10-22 12:46:45'),
(17, 93, 4, 3, '', '2019-10-22 12:46:45', '2019-10-22 12:46:45'),
(18, 93, 4, 4, '', '2019-10-22 12:46:45', '2019-10-22 12:46:45'),
(19, 94, 5, 5, 'No', '2019-10-22 12:48:55', '2019-10-22 12:50:59'),
(20, 94, 5, 6, 'Halfdan', '2019-10-22 12:48:55', '2019-10-22 12:50:59'),
(21, 95, 4, 1, 'sagar well', '2019-10-22 13:25:03', '2019-10-23 06:22:24'),
(22, 95, 4, 2, 'opt1', '2019-10-22 13:25:03', '2019-10-23 06:22:24'),
(23, 95, 4, 3, 'opt, opt1', '2019-10-22 13:25:03', '2019-10-23 06:22:24'),
(24, 95, 4, 4, 'r4', '2019-10-22 13:25:03', '2019-10-23 06:22:24'),
(25, 96, 4, 1, '', '2019-10-23 08:37:37', '2019-10-23 08:37:37'),
(26, 96, 4, 2, '', '2019-10-23 08:37:37', '2019-10-23 08:37:37'),
(27, 96, 4, 3, '', '2019-10-23 08:37:37', '2019-10-23 08:37:37'),
(28, 96, 4, 4, '', '2019-10-23 08:37:37', '2019-10-23 08:37:37'),
(29, 97, 4, 1, 'test', '2019-10-24 06:11:28', '2019-10-24 06:16:58'),
(30, 97, 4, 2, 'opt1', '2019-10-24 06:11:28', '2019-10-24 06:16:58'),
(31, 97, 4, 3, 'opt,opt1', '2019-10-24 06:11:28', '2019-10-24 06:16:58'),
(32, 97, 4, 4, 'r1', '2019-10-24 06:11:28', '2019-10-24 06:16:58'),
(33, 98, 4, 1, 'test', '2019-10-24 06:23:15', '2019-10-24 06:45:50'),
(34, 98, 4, 2, 'opt1', '2019-10-24 06:23:15', '2019-10-24 06:45:50'),
(35, 98, 4, 3, 'opt,opt1', '2019-10-24 06:23:15', '2019-10-24 06:45:50'),
(36, 98, 4, 4, 'r4', '2019-10-24 06:23:15', '2019-10-24 06:45:50'),
(37, 99, 4, 1, 'answer job 6', '2019-10-24 06:24:23', '2019-10-24 06:58:38'),
(38, 99, 4, 2, 'opt2', '2019-10-24 06:24:23', '2019-10-24 06:58:38'),
(39, 99, 4, 3, 'opt1', '2019-10-24 06:24:23', '2019-10-24 06:58:38'),
(40, 99, 4, 4, 'r4', '2019-10-24 06:24:23', '2019-10-24 06:58:38'),
(41, 100, 4, 1, '', '2019-10-24 07:06:35', '2019-10-24 07:06:35'),
(42, 100, 4, 2, '', '2019-10-24 07:06:35', '2019-10-24 07:06:35'),
(43, 100, 4, 3, '', '2019-10-24 07:06:35', '2019-10-24 07:06:35'),
(44, 100, 4, 4, '', '2019-10-24 07:06:35', '2019-10-24 07:06:35'),
(45, 101, 4, 1, 'answer duplicate', '2019-10-24 08:46:12', '2019-10-24 09:13:53'),
(46, 101, 4, 2, 'opt1', '2019-10-24 08:46:12', '2019-10-24 09:13:53'),
(47, 101, 4, 3, 'opt,opt1', '2019-10-24 08:46:12', '2019-10-24 09:13:53'),
(48, 101, 4, 4, 'r1', '2019-10-24 08:46:12', '2019-10-24 09:13:53'),
(49, 102, 6, 7, 'PG- 1', '2019-10-24 09:17:00', '2019-10-24 09:24:03'),
(50, 104, 4, 1, 'testing done', '2019-10-24 09:44:04', '2019-10-24 09:50:19'),
(51, 104, 4, 2, 'opt2', '2019-10-24 09:44:04', '2019-10-24 09:50:19'),
(52, 104, 4, 3, 'opt,opt1', '2019-10-24 09:44:04', '2019-10-24 09:50:19'),
(53, 104, 4, 4, 'r4', '2019-10-24 09:44:04', '2019-10-24 09:50:19'),
(54, 106, 4, 1, 'did', '2019-10-24 10:05:08', '2019-10-24 10:29:58'),
(55, 106, 4, 2, 'opt2', '2019-10-24 10:05:08', '2019-10-24 10:29:58'),
(56, 106, 4, 3, 'opt,opt1', '2019-10-24 10:05:08', '2019-10-24 10:29:58'),
(57, 106, 4, 4, 'r1', '2019-10-24 10:05:08', '2019-10-24 10:29:58'),
(58, 107, 4, 1, 'answer job 8', '2019-10-24 10:40:03', '2019-10-24 10:47:54'),
(59, 107, 4, 2, 'opt2', '2019-10-24 10:40:03', '2019-10-24 10:47:54'),
(60, 107, 4, 3, 'opt,opt1', '2019-10-24 10:40:03', '2019-10-24 10:47:54'),
(61, 107, 4, 4, 'r4', '2019-10-24 10:40:03', '2019-10-24 10:47:54'),
(62, 108, 7, 8, '', '2019-10-25 10:14:44', '2019-10-25 10:14:44'),
(63, 108, 7, 9, '', '2019-10-25 10:14:44', '2019-10-25 10:14:44'),
(64, 108, 7, 10, '', '2019-10-25 10:14:44', '2019-10-25 10:14:44'),
(65, 108, 7, 11, '', '2019-10-25 10:14:44', '2019-10-25 10:14:44'),
(66, 109, 7, 8, '', '2019-10-25 10:54:12', '2019-10-25 10:54:12'),
(67, 109, 7, 9, '', '2019-10-25 10:54:12', '2019-10-25 10:54:12'),
(68, 109, 7, 10, '', '2019-10-25 10:54:12', '2019-10-25 10:54:12'),
(69, 109, 7, 11, '', '2019-10-25 10:54:12', '2019-10-25 10:54:12'),
(70, 110, 7, 8, '2', '2019-10-30 07:20:02', '2019-10-30 07:28:31'),
(71, 110, 7, 9, '0', '2019-10-30 07:20:02', '2019-10-30 07:28:31'),
(72, 110, 7, 10, 'Samsung', '2019-10-30 07:20:02', '2019-10-30 07:28:31'),
(73, 110, 7, 11, 'CyberShot', '2019-10-30 07:20:02', '2019-10-30 07:28:31'),
(74, 111, 7, 8, 'test data type', '2019-10-30 08:08:34', '2019-10-30 08:13:14'),
(75, 111, 7, 9, 'test data type', '2019-10-30 08:08:34', '2019-10-30 08:13:14'),
(76, 111, 7, 10, 'test data type', '2019-10-30 08:08:34', '2019-10-30 08:13:14'),
(77, 111, 7, 11, 'test data type', '2019-10-30 08:08:34', '2019-10-30 08:13:14'),
(78, 112, 7, 8, '2', '2019-10-30 08:16:25', '2019-10-30 08:21:49'),
(79, 112, 7, 9, '0', '2019-10-30 08:16:25', '2019-10-30 08:21:49'),
(80, 112, 7, 10, 'Samsung lence', '2019-10-30 08:16:25', '2019-10-30 08:21:49'),
(81, 112, 7, 11, 'CyberShot Camera', '2019-10-30 08:16:25', '2019-10-30 08:21:49'),
(82, 113, 7, 8, '3', '2019-10-30 08:32:59', '2019-10-30 08:41:15'),
(83, 113, 7, 9, '2', '2019-10-30 08:32:59', '2019-10-30 08:41:15'),
(84, 113, 7, 10, 'Nokia', '2019-10-30 08:32:59', '2019-10-30 08:41:15'),
(85, 113, 7, 11, 'NOK3032', '2019-10-30 08:32:59', '2019-10-30 08:41:15'),
(86, 114, 7, 8, '', '2019-10-30 08:40:13', '2019-10-30 08:40:13'),
(87, 114, 7, 9, '', '2019-10-30 08:40:13', '2019-10-30 08:40:13'),
(88, 114, 7, 10, '', '2019-10-30 08:40:13', '2019-10-30 08:40:13'),
(89, 114, 7, 11, '', '2019-10-30 08:40:13', '2019-10-30 08:40:13'),
(90, 115, 4, 1, 'test', '2019-10-30 09:13:10', '2019-10-30 09:20:37'),
(91, 115, 4, 2, 'opt1', '2019-10-30 09:13:10', '2019-10-30 09:20:37'),
(92, 115, 4, 3, 'opt,opt1', '2019-10-30 09:13:10', '2019-10-30 09:20:37'),
(93, 115, 4, 4, 'r4', '2019-10-30 09:13:10', '2019-10-30 09:20:37'),
(94, 116, 5, 5, 'Yes', '2019-10-30 11:41:39', '2019-10-30 12:00:46'),
(95, 116, 5, 6, 'Antivirus here?', '2019-10-30 11:41:39', '2019-10-30 12:00:46'),
(96, 117, 4, 1, 'finished without crashed.', '2019-10-30 13:15:43', '2019-10-30 13:21:06'),
(97, 117, 4, 2, 'opt2', '2019-10-30 13:15:43', '2019-10-30 13:21:06'),
(98, 117, 4, 3, 'opt,opt1', '2019-10-30 13:15:43', '2019-10-30 13:21:06'),
(99, 117, 4, 4, 'r1', '2019-10-30 13:15:43', '2019-10-30 13:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobId` bigint(20) NOT NULL,
  `jobName` varchar(255) NOT NULL,
  `jobTypeId` bigint(20) NOT NULL,
  `customerId` bigint(20) NOT NULL,
  `driverId` bigint(20) NOT NULL,
  `startDate` datetime NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `jobStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:Open,1:In-progress,2:Completed',
  `geoFencing` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Yes ,0:No',
  `points` text NOT NULL,
  `polygonColor` varchar(255) NOT NULL,
  `boundary` geometry NOT NULL,
  `jobReport` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobId`, `jobName`, `jobTypeId`, `customerId`, `driverId`, `startDate`, `startTime`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `jobStatus`, `geoFencing`, `points`, `polygonColor`, `boundary`, `jobReport`, `crd`, `upd`) VALUES
(2, 'Job', 1, 9, 4, '2019-08-09 00:00:00', '2:00 PM', 'A Sector Road, Sonnappa Layout, Sector A, Amruthnagar, Byatarayanapura, Bengaluru, Karnataka, India', 'A Sector Road', 'A Sector Road', 'Bengaluru', 'KA', '560092', 'India', '13.06050014', '77.59860229', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"\",\"driverSignature\":null,\"workImage\":null},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568198878.\",\"workImage\":[\"1568198872.jpg\",\"1568198875.jpg\"]}}', '2019-09-11 10:47:59', '2019-08-10 08:16:57'),
(4, 'Test user', 2, 3, 4, '2019-08-08 00:00:00', '3:45 PM', 'Curitiba, State of Paraná, Brazil', '', '', 'Curitiba', 'PR', '', 'Brazil', '-25.42895317', '-49.26713562', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"\",\"driverSignature\":null,\"workImage\":null},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568204571.\",\"workImage\":[\"1568204563.jpg\",\"1568204566.jpg\"]}}', '2019-09-11 12:22:55', '2019-08-10 10:11:38'),
(5, 'Front Car Park', 3, 2, 4, '2019-08-23 00:00:00', '7:30 AM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029007', '-1.30595410', 0, 0, '', '', '', '', '2019-08-22 15:19:29', '2019-08-22 15:19:29'),
(7, 'Test Job', 3, 13, 4, '2019-09-12 00:00:00', '11:45 AM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"sdfasdfasdfads dsfasdfadsfasf sdfdsf asdf\",\"driverSignature\":\"1568192981.\",\"workImage\":[\"1568192975.jpg\",\"1568192978.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568205289.\",\"workImage\":[\"1568205286.jpg\",\"1568205288.jpg\"]}}', '2019-09-11 12:34:52', '2019-09-11 06:14:01'),
(8, 'Test Job2', 2, 13, 4, '2019-09-12 00:00:00', '3:00 PM', 'Railway Station, Coimbatore, State Bank Road, Opp.Railway Station, Gopalapuram, Coimbatore, Tamil Nadu, India', '', 'State Bank Road', 'Coimbatore', 'TN', '641018', 'India', '10.99603844', '76.96777344', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Adsf adsf asdf asdfasd f\",\"driverSignature\":\"1568193647.\",\"workImage\":[\"1568193638.jpg\",\"1568193642.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568199452.\",\"workImage\":[\"1568199445.jpg\",\"1568199448.jpg\"]}}', '2019-09-11 10:57:33', '2019-09-11 09:18:59'),
(10, 'Test Job 3', 1, 13, 4, '2019-09-11 00:00:00', '6:30 PM', 'Mumbai Airport (BOM), Mumbai, Maharashtra, India', '', '', 'Mumbai', 'MH', '400099', 'India', '19.08955956', '72.86561584', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Fastest asdf asdf asdf\",\"driverSignature\":\"1568206794.\",\"workImage\":[\"1568206790.\",\"1568206792.\"]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"customerSignature\":\"1568275977.jpg\",\"workImage\":[\"1568275973.jpg\",\"1568275975.jpg\",\"1568275976.jpg\"]}}', '2019-09-12 08:12:59', '2019-09-11 12:51:53'),
(11, 'Test Job 4', 1, 13, 4, '2019-09-12 00:00:00', '11:15 AM', 'Railway Station, Coimbatore, State Bank Road, Opp.Railway Station, Gopalapuram, Coimbatore, Tamil Nadu, India', '', 'State Bank Road', 'Coimbatore', 'TN', '641018', 'India', '10.99603844', '76.96777344', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sassafras deaf adds ads faded\",\"driverSignature\":\"1568267151.\",\"workImage\":[\"1568267148.\",\"1568267150.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568276242.\",\"workImage\":[\"1568276236.\",\"1568276238.\",\"1568276240.\"]}}', '2019-09-12 08:17:24', '2019-09-12 05:42:42'),
(12, 'Test Job 5', 2, 13, 4, '2019-09-12 00:00:00', '11:30 AM', 'Railway Station, Coimbatore, State Bank Road, Opp.Railway Station, Gopalapuram, Coimbatore, Tamil Nadu, India', '', 'State Bank Road', 'Coimbatore', 'TN', '641018', 'India', '10.99603844', '76.96777344', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"  Diff adds ads fast f\",\"driverSignature\":\"1568267837.\",\"workImage\":[\"1568267833.\",\"1568267835.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568282446.\",\"workImage\":[\"1568282440.\",\"1568282442.\",\"1568282445.\"]}}', '2019-09-12 10:00:48', '2019-09-12 05:47:15'),
(13, 'Test Job 6', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41836166', '12.20352936', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Adam add add adds add asdf\",\"driverSignature\":\"1568268529.\",\"workImage\":[\"1568268525.\",\"1568268527.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568277003.\",\"workImage\":[\"1568276997.\",\"1568277000.\",\"1568277001.\"]}}', '2019-09-12 08:30:05', '2019-09-12 06:01:25'),
(14, 'Test Job 6-1', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dsafsdf dsf assessed adsfa add\",\"driverSignature\":\"1568268630.\",\"workImage\":[\"1568268625.\",\"1568268627.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dads faded adsf adsfdsafdsafas dread\",\"customerSignature\":\"1568637676.\",\"workImage\":[\"1568637670.\",\"1568637672.\",\"1568637674.\"]}}', '2019-09-16 12:41:18', '2019-09-12 06:01:25'),
(15, 'Test Job 6-2', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dsfasdfasd \",\"driverSignature\":\"1568269592.\",\"workImage\":[\"1568269587.\",\"1568269590.\"]}}', '2019-09-12 06:26:34', '2019-09-12 06:01:25'),
(16, 'Test Job 6-3', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Daddy\\u2019s dfasdfadsfads fadsfasdf asdf\",\"driverSignature\":\"1568270402.\",\"workImage\":[\"1568270398.\",\"1568270400.\"]}}', '2019-09-12 06:40:04', '2019-09-12 06:01:25'),
(17, 'Test Job 6-4', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Daddy dsf adsfasfdsfas faded adds\",\"driverSignature\":\"1568270664.\",\"workImage\":[\"1568270661.\",\"1568270662.\"]}}', '2019-09-12 06:44:26', '2019-09-12 06:01:25'),
(18, 'Test Job 6-5', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sdfasdf asdfa dsf adsfasdf\",\"driverSignature\":\"1568270803.\",\"workImage\":[\"1568270799.\",\"1568270801.\"]}}', '2019-09-12 06:46:45', '2019-09-12 06:01:25'),
(19, 'Test Job 6-6', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Gas fads gas sodas faded add\",\"driverSignature\":\"1568708156.\",\"workImage\":[\"1568708154.\"]}}', '2019-09-17 08:15:59', '2019-09-12 06:01:25'),
(20, 'Test Job 6-7', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"This is test \",\"driverSignature\":\"1568711859.\",\"workImage\":[\"1568711854.\",\"1568711855.\",\"1568711857.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sdafasfas asdf sdf asdf\",\"customerSignature\":\"1568887742.\",\"workImage\":[\"1568887736.\",\"1568887738.\",\"1568887740.\"]}}', '2019-09-19 10:09:04', '2019-09-12 06:01:25'),
(21, 'Test Job 6-8', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test user sign\",\"driverSignature\":\"1568875547.\",\"workImage\":[\"1568875541.\",\"1568875542.\",\"1568875544.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1568881805.\",\"workImage\":[\"1568881798.\",\"1568881801.\",\"1568881803.\"]}}', '2019-09-19 08:30:07', '2019-09-12 06:01:25'),
(23, 'Test Job 6-10', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Jkhkjhjkhjk hkjhkjh jkhjkh ohh jkhkjh\",\"driverSignature\":\"1568875991.\",\"workImage\":[\"1568875986.\",\"1568875988.\",\"1568875990.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sadfadsfadsf adsf sadasdf asdf\",\"customerSignature\":\"1568897669.\",\"workImage\":[\"1568897661.\",\"1568897663.\",\"1568897666.\"]}}', '2019-09-19 12:54:32', '2019-09-12 06:01:25'),
(24, 'Test Job 6-11', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test\",\"driverSignature\":\"1568881625.\",\"workImage\":[\"1568881619.\",\"1568881621.\",\"1568881623.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test \",\"customerSignature\":\"1568881668.\",\"workImage\":[\"1568881661.\",\"1568881664.\",\"1568881666.\"]}}', '2019-09-19 08:27:50', '2019-09-12 06:01:25'),
(25, 'Test Job 6-12', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sadf sdfsfsfdsfasdfasfs sdfsdfsdfa sdf sdf sadf sdf sdf sdf asdf sdf asdf\",\"driverSignature\":\"1568714064.\",\"workImage\":[\"1568714057.\",\"1568714059.\",\"1568714062.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Asdfs sfdasdfsdf asdf\",\"customerSignature\":\"1568959116.\",\"workImage\":[\"1568959109.\",\"1568959111.\",\"1568959114.\"]}}', '2019-09-20 05:58:38', '2019-09-12 06:01:25'),
(26, 'Test Job 6-13', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dawgs disagree asdfdsfsdfdsfsaf s sdf sdf as\",\"driverSignature\":\"1568714246.\",\"workImage\":[\"1568714240.\",\"1568714243.\",\"1568714244.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"1234567890\",\"customerSignature\":\"1569230201.\",\"workImage\":[\"1569230196.\",\"1569230199.\"]}}', '2019-09-23 09:16:44', '2019-09-12 06:01:25'),
(27, 'Test Job 6-14', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Fasdfasdfasfsadf sdfs\",\"driverSignature\":\"1568714328.\",\"workImage\":[\"1568714322.\",\"1568714324.\",\"1568714326.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Drastic asdfsadfsfs\",\"customerSignature\":\"1568959287.\",\"workImage\":[\"1568959281.\",\"1568959283.\",\"1568959285.\"]}}', '2019-09-20 06:01:29', '2019-09-12 06:01:25'),
(28, 'Test Job 6-15', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Deaf sdfsdfsd faded sdfasdf sdf deaf deaf sdf dsfadsf sad sdf sdf \",\"driverSignature\":\"1568713373.\",\"workImage\":[\"1568713368.\",\"1568713370.\",\"1568713371.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568713539.\",\"workImage\":[\"1568713533.\",\"1568713536.\",\"1568713537.\"]}}', '2019-09-17 09:45:41', '2019-09-12 06:01:25'),
(29, 'Test Job 101', 1, 14, 4, '2019-09-18 00:00:00', '11:00 AM', '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS15 9', 'United Kingdom', '54.51139832', '-1.35625005', 0, 1, '22.812008,75.645554|22.800615,75.97789|22.677759,75.97377|22.656217,75.815842|22.724635,75.667526|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Ts��P�R@\"����6@xE��R@��\Z��6@��g?R�R@Ց#���6@-]�6�R@IZ���6@������R@v�ꭁ�6@Ts��P�R@\"����6@', '', '2019-09-17 09:36:20', '2019-09-17 09:14:42'),
(30, 'Test Job 1', 4, 13, 16, '2019-09-18 00:00:00', '2:15 PM', 'Indira Gandhi International Airport (DEL), Delhi, India', '', '', 'New Delhi', 'DL', '110037', 'India', '28.55616188', '77.09996033', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Test \",\"driverSignature\":\"1569235511.\",\"workImage\":[\"1569235507.\",\"1569235509.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Faded asdf adds ads add sad\",\"customerSignature\":\"1569240596.\",\"workImage\":[\"1569240592.\",\"1569240594.\"]}}', '2019-09-23 12:09:59', '2019-09-19 08:36:09'),
(31, 'New Job', 1, 13, 15, '2019-09-23 00:00:00', '3:30 PM', 'Indira Gandhi International Airport (DEL), New Delhi, Delhi, India', '', '', 'New Delhi', 'DL', '110037', 'India', '28.55616188', '77.09996033', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-26 03:54:00 PM\",\"comments\":\"new comment before starting job.\",\"driverSignature\":\"1569493490.jpg\",\"workImage\":[\"1569493485.jpg\",\"1569493488.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-26 07:29:00 PM\",\"comments\":\"do j kind\",\"customerSignature\":\"1569506401.jpg\",\"workImage\":[\"1569506393.jpg\",\"1569506397.jpg\",\"1569506399.jpg\"]}}', '2019-09-26 14:00:04', '2019-09-23 09:50:31'),
(32, 'New Job 1', 3, 13, 15, '2019-09-23 00:00:00', '3:30 PM', 'Malasiqui, Pangasinan, Philippines', '', '', 'Malasiqui', 'Ilocos Region', '', 'Philippines', '15.91954422', '120.45880890', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-26 04:06:00 PM\",\"comments\":\"dfdfd\",\"driverSignature\":\"1569494197.jpg\",\"workImage\":[\"1569494190.jpg\",\"1569494193.jpg\",\"1569494195.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 11:15:00 AM\",\"comments\":\"since sign docs then\\nhis\\nJoe\\ngood\\nthis\\nChris if us is Ritz sis\",\"customerSignature\":\"1569563165.jpg\",\"workImage\":[\"1569563157.jpg\",\"1569563160.jpg\",\"1569563163.jpg\"]}}', '2019-09-27 05:46:08', '2019-09-23 09:51:27'),
(33, 'Test Job 98', 1, 13, 16, '2019-09-22 00:00:00', '4:00 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Fast asdf deaf said add\",\"driverSignature\":\"1569236249.\",\"workImage\":[\"1569236246.\",\"1569236247.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Sad fasdfsdfdsfsads did sdfasfsdf. Drags\",\"customerSignature\":\"1569241079.\",\"workImage\":[\"1569241075.\",\"1569241077.\"]}}', '2019-09-23 12:18:01', '2019-09-23 10:24:45'),
(34, 'Test Job', 3, 13, 16, '2019-09-23 00:00:00', '6:00 PM', 'Railyards Boulevard, Sacramento, CA, USA', '', 'Railyards Boulevard', 'Sacramento', 'CA', '95811', 'United States', '38.59015656', '-121.49965668', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Testingjdfal fjdls falls\\t\",\"driverSignature\":\"1569241406.\",\"workImage\":[\"1569241402.\",\"1569241404.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Fsafsdf asdfasfs\",\"customerSignature\":\"1569241646.\",\"workImage\":[\"1569241643.\",\"1569241645.\"]}}', '2019-09-23 12:27:28', '2019-09-23 12:22:10'),
(35, 'Test Job 20', 4, 13, 17, '2019-09-23 00:00:00', '6:15 PM', 'Raleigh, NC, USA', '', '', 'Raleigh', 'NC', '', 'United States', '35.77959824', '-78.63819885', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Sad add asdf asdf\",\"driverSignature\":\"1569243004.\",\"workImage\":[\"1569242999.\",\"1569243001.\",\"1569243002.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Add fadsfasdf\",\"customerSignature\":\"1569243236.\",\"workImage\":[\"1569243230.\",\"1569243232.\",\"1569243234.\"]}}', '2019-09-23 12:53:58', '2019-09-23 12:39:04'),
(36, 'Test Job 20-1', 4, 13, 16, '2019-09-23 00:00:00', '6:15 PM', 'Hexton Manor, Hexton, Hitchin, UK', '', '', 'Hexton', 'England', 'SG5 3JH', 'United Kingdom', '51.96060944', '-0.39005741', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test \",\"driverSignature\":\"1569306495.\",\"workImage\":[\"1569306490.\",\"1569306492.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"customerSignature\":\"1569306620.\",\"workImage\":[\"1569306617.\",\"1569306619.\"]}}', '2019-09-24 06:30:23', '2019-09-23 12:39:54'),
(37, 'Test 20-2', 3, 13, 16, '2019-09-23 00:00:00', '12:30 PM', 'Vijay Nagar Square, Ratna Lok Colony, Indore, Madhya Pradesh, India', '', 'Vijay Nagar Square', 'Indore', 'MP', '', 'India', '22.75083542', '75.89572906', 2, 0, '', '', '', '{\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test \",\"customerSignature\":\"1569308227.\",\"workImage\":[\"1569308223.\",\"1569308225.\"]}}', '2019-09-24 06:57:09', '2019-09-24 06:51:39'),
(38, 'Test Job 20-2', 2, 13, 16, '2019-09-24 00:00:00', '12:45 PM', 'Vijayawada International Airport, National Highway 16, Gannavaram, Andhra Pradesh, India', '', 'National Highway 16', 'Gannavaram', 'AP', '521102', 'India', '16.52383804', '80.79141998', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"driverSignature\":\"1569309001.\",\"workImage\":[\"1569308995.\",\"1569308997.\",\"1569308999.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job9874563210\",\"customerSignature\":\"1569313979.\",\"workImage\":[\"1569313973.\",\"1569313975.\",\"1569313977.\"]}}', '2019-09-24 08:33:01', '2019-09-24 07:07:22'),
(39, 'Test Job 20-3', 3, 13, 16, '2019-09-23 00:00:00', '12:45 PM', 'Indore Airport Taxi low Price/ujjain Taxi, Airport Road, Manu Shree Nagar, Indore, Madhya Pradesh, India', '', 'Airport Road', 'Indore', 'MP', '452006', 'India', '22.73416710', '75.81516266', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test sad \",\"driverSignature\":\"1569309010.\",\"workImage\":[\"1569309003.\",\"1569309005.\",\"1569309007.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"46597845988978997778979\",\"customerSignature\":\"1569313988.\",\"workImage\":[\"1569313981.\",\"1569313983.\",\"1569313985.\"]}}', '2019-09-24 08:33:10', '2019-09-24 07:08:05'),
(40, 'Test Job 20-4', 3, 13, 16, '2019-09-17 00:00:00', '2:30 PM', 'Vijayawada International Airport, National Highway 16, Gannavaram, Andhra Pradesh, India', '', 'National Highway 16', 'Gannavaram', 'AP', '521102', 'India', '16.52383804', '80.79141998', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Testing\",\"driverSignature\":\"1569316542.\",\"workImage\":[\"1569316537.\",\"1569316539.\",\"1569316541.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569316761.\",\"workImage\":[\"1569316755.\",\"1569316757.\",\"1569316759.\"]}}', '2019-09-24 09:19:23', '2019-09-24 08:58:07'),
(41, 'Test Job 20-5', 3, 13, 16, '2019-09-24 00:00:00', '2:30 PM', 'Rajwada, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452004', 'India', '22.71771049', '75.85448456', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Tests adds sf asf\",\"driverSignature\":\"1569316550.\",\"workImage\":[\"1569316544.\",\"1569316546.\",\"1569316548.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"46546064060466406060664654600060466046506500066\",\"customerSignature\":\"1569316872.\",\"workImage\":[\"1569316865.\",\"1569316868.\",\"1569316870.\"]}}', '2019-09-24 09:21:13', '2019-09-24 08:58:42'),
(42, 'Test Job 20-6', 4, 13, 16, '2019-09-24 00:00:00', '2:30 PM', 'Race Course Road, Gandhi Nagar, Bengaluru, Karnataka, India', '', 'Race Course Road', 'Bengaluru', 'KA', '560001', 'India', '12.98387623', '77.58158112', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Yet sad sf asfasdfa s add\",\"driverSignature\":\"1569317347.\",\"workImage\":[\"1569317341.\",\"1569317343.\",\"1569317345.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569317655.\",\"workImage\":[\"1569317650.\",\"1569317652.\",\"1569317653.\"]}}', '2019-09-24 09:34:17', '2019-09-24 08:59:15'),
(43, 'Test Job 20-7', 4, 13, 16, '2019-09-18 00:00:00', '2:30 PM', 'George Washington Bridge, George Washington Bridge, Fort Lee, NJ, USA', '', 'George Washington Bridge', 'Fort Lee', 'NJ', '07024', 'United States', '40.85169601', '-73.95271301', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Tats\",\"driverSignature\":\"1569317663.\",\"workImage\":[\"1569317657.\",\"1569317659.\",\"1569317661.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569318297.\",\"workImage\":[\"1569318291.\",\"1569318293.\",\"1569318295.\"]}}', '2019-09-24 09:45:00', '2019-09-24 08:59:46'),
(44, 'Test Job 20-8', 1, 13, 16, '2019-09-17 00:00:00', '3:30 PM', 'Razzmatazz, Carrer dels Almogàvers, Barcelona, Spain', '122', 'Carrer dels Almogàvers', 'Barcelona', 'CT', '08018', 'Spain', '41.39772034', '2.19110560', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"driverSignature\":\"1569318742.\",\"workImage\":[\"1569318736.\",\"1569318738.\",\"1569318740.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"customerSignature\":\"1569318962.\",\"workImage\":[\"1569318955.\",\"1569318958.\",\"1569318960.\"]}}', '2019-09-24 09:56:04', '2019-09-24 09:47:02'),
(45, 'Test Job 20-9', 4, 13, 16, '2019-09-24 00:00:00', '3:30 PM', 'Razwada Jeweles Pvt. Ltd., Turner Road, Bandra West, Mumbai, Maharashtra, India', '', 'Turner Road', 'Mumbai', 'MH', '400050', 'India', '19.05930710', '72.83294678', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test 85\",\"driverSignature\":\"1569318962.\",\"workImage\":[\"1569318956.\",\"1569318957.\",\"1569318960.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569319518.\",\"workImage\":[\"1569319512.\",\"1569319515.\",\"1569319516.\"]}}', '2019-09-24 10:05:20', '2019-09-24 09:47:46'),
(46, 'Test Job 20-10', 1, 13, 16, '2019-09-25 00:00:00', '3:30 PM', 'Vijayawada International Airport, National Highway 16, Gannavaram, Andhra Pradesh, India', '', 'National Highway 16', 'Gannavaram', 'AP', '521102', 'India', '16.52383804', '80.79141998', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Drags sdfsadfasf add\",\"driverSignature\":\"1569318750.\",\"workImage\":[\"1569318743.\",\"1569318746.\",\"1569318747.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Dada dsafasdf \",\"customerSignature\":\"1569318970.\",\"workImage\":[\"1569318964.\",\"1569318966.\",\"1569318968.\"]}}', '2019-09-24 09:56:11', '2019-09-24 09:48:33'),
(47, 'Test Job 21', 1, 13, 16, '2019-09-24 00:00:00', '3:45 PM', 'Razzmatazz, Carrer dels Almogàvers, Barcelona, Spain', '122', 'Carrer dels Almogàvers', 'Barcelona', 'CT', '08018', 'Spain', '41.39770126', '2.19110990', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"driverSignature\":\"1569321293.\",\"workImage\":[\"1569321286.\",\"1569321288.\",\"1569321290.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test jobs\",\"customerSignature\":\"1569321300.\",\"workImage\":[\"1569321294.\",\"1569321296.\",\"1569321298.\"]}}', '2019-09-24 10:35:02', '2019-09-24 10:14:39'),
(48, 'Test Job 21-1', 2, 13, 16, '2019-09-24 00:00:00', '4:00 PM', 'Asheville, NC, USA', '', '', 'Asheville', 'NC', '', 'United States', '35.59505844', '-82.55148315', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"driverSignature\":\"1569322405.\",\"workImage\":[\"1569322400.\",\"1569322401.\",\"1569322403.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Can we get some more money from my mom today \",\"customerSignature\":\"1569326288.\",\"workImage\":[\"1569326281.\",\"1569326283.\",\"1569326285.\"]}}', '2019-09-24 11:58:10', '2019-09-24 10:17:47'),
(49, 'Test Job 21-2', 1, 13, 16, '2019-09-25 00:00:00', '4:00 PM', 'Arcachon, France', '', '', 'Arcachon', 'Nouvelle-Aquitaine', '33120', 'France', '44.65229797', '-1.17850161', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Gggg\",\"driverSignature\":\"1569326146.\",\"workImage\":[\"1569326140.\",\"1569326142.\",\"1569326144.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test the day and I have to work tomorrow night at three or five minutes ago so I\\u2019ll just take it home then I\\u2019m not going \",\"customerSignature\":\"1569326278.\",\"workImage\":[\"1569326273.\",\"1569326275.\",\"1569326276.\"]}}', '2019-09-24 11:58:01', '2019-09-24 10:18:12'),
(50, 'Test Job 21-3', 3, 13, 16, '2019-09-17 00:00:00', '4:00 PM', 'Dubai International Airport (DXB) - Dubai - United Arab Emirates', '', '', 'Dubai', 'Dubai', '', 'United Arab E', '25.25320053', '55.36569977', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test added sadf as\",\"driverSignature\":\"1569321309.\",\"workImage\":[\"1569321302.\",\"1569321304.\",\"1569321307.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 03:39:00 PM\",\"comments\":\"Check out the images.\",\"customerSignature\":\"1569579063.jpg\",\"workImage\":[\"1569579051.jpg\",\"1569579054.jpg\",\"1569579059.jpg\"]}}', '2019-09-27 10:11:05', '2019-09-24 10:18:55'),
(51, 'Test Job 21-4', 2, 13, 16, '2019-09-24 00:00:00', '7:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '1', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-25 12:00:00 AM\",\"comments\":\"31223564567789\",\"driverSignature\":\"1569401683.\",\"workImage\":[\"1569401677.\",\"1569401679.\",\"1569401681.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 12:00:00 AM\",\"comments\":\"Gfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\n\",\"customerSignature\":\"1569576195.\",\"workImage\":[\"1569576189.\",\"1569576191.\",\"1569576193.\"]}}', '2019-09-27 09:23:17', '2019-09-24 13:23:59'),
(52, 'New Android Job', 3, 5, 16, '2019-09-26 00:00:00', '11:30 AM', 'Indore Jn Bg, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452007', 'India', '22.71719933', '75.86830139', 2, 1, '22.829729,75.651047|22.628333,75.428574|22.530695,75.907852|22.677759,75.987503|22.796817,75.755417|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0,J	���R@�i�6@�z��m�R@a�unڠ6@�fF?\Z�R@�&��ۇ6@�l�?3�R@Ց#���6@�u��X�R@���2��6@,J	���R@�i�6@', '{\"beforeWork\":{\"startDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"this is my first job\",\"driverSignature\":\"1569491348.PNG\",\"workImage\":[]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"this is my first job\",\"customerSignature\":\"1569505098.PNG\",\"workImage\":[]}}', '2019-09-26 13:38:20', '2019-09-26 05:57:18'),
(53, 'New And', 4, 5, 16, '2019-09-26 00:00:00', '1:45 PM', 'Palasia ibus stop, Agra Bombay Road, New Palasia, Indore, Madhya Pradesh, India', '38', 'Agra Bombay Road', 'Indore', 'MP', '452016', 'India', '22.72489548', '75.88694763', 2, 1, '22.774027,75.830948|22.737301,75.942184|22.695498,75.929825|22.662553,75.894119|22.679027,75.793869|22.711967,75.793869|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0N+�@.�R@�8+�&�6@ ��L�R@�N\"¿�6@4��@��R@�n,(�6@���>9�R@�����6@����R@���ԭ6@����R@��$xC�6@N+�@.�R@�8+�&�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-26 03:12:00 PM\",\"comments\":\"test new \",\"driverSignature\":\"1569490970.jpg\",\"workImage\":[]},\"afterWork\":{\"endDateTime\":\"2019-09-27 04:10:00 PM\",\"comments\":\"cheers vh j know c\\nXu ink ix\",\"customerSignature\":\"1569580872.jpg\",\"workImage\":[\"1569580862.jpg\",\"1569580866.jpeg\",\"1569580868.jpg\"]}}', '2019-09-27 10:41:14', '2019-09-26 08:12:37'),
(54, 'New job tracking', 1, 7, 15, '2019-09-28 00:00:00', '2:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970', 2, 1, '22.723108,75.886952|22.72291,75.887638|22.722722,75.88781|22.722256,75.888464|22.721455,75.887982|22.721069,75.887724|22.721376,75.887145|22.721772,75.887263|22.721989,75.886801|22.722167,75.886458|22.722256,75.886361|22.722534,75.886651|22.72283,75.886812|', '#FF0000', '\0\0\0\0\0\0\0\0\0\0\0\0\0�GR���R@�y��6@�+���R@��7��6@�����R@�\ZO�6@����R@�V���6@�[t���R@\"�^F��6@��Rx��R@�(]���6@�s����R@����6@������R@$+�Ƹ6@�C�X��R@^gEԸ6@��U���R@@��߸6@��|#��R@�V���6@�����R@�?����6@�l���R@S�\nc�6@�GR���R@�y��6@', '{\"beforeWork\":{\"startDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"driverSignature\":\"1569489822.jpg\",\"workImage\":[\"1569489817.jpg\",\"1569489819.jpg\",\"1569489820.jpg\"]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"customerSignature\":\"1569490704.jpg\",\"workImage\":[\"1569490700.jpg\",\"1569490702.jpg\"]}}', '2019-09-26 09:38:26', '2019-09-26 08:49:59'),
(55, 'Tracking Job', 2, 7, 16, '2019-09-28 00:00:00', '3:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.744885,75.883142|22.739502,75.926744|22.717494,75.898763|22.718286,75.880052|22.727945,75.879365|22.732378,75.887262|22.740769,75.877992|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0W�f��R@�G�Ȱ�6@���O�R@�S�\0P�6@��>U��R@�ѯ��6@ⱟ�R�R@�,_��6@�#�G�R@fI��Z�6@�>����R@UO�}�6@��[1�R@\0�	��6@W�f��R@�G�Ȱ�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 03:50:00 PM\",\"comments\":\"sgkvxfb\\ncvkkmmhll\",\"driverSignature\":\"1569579710.jpg\",\"workImage\":[\"1569579700.jpg\",\"1569579704.png\",\"1569579706.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 05:07:00 PM\",\"comments\":\"six\\nDulux\\nfox\\nstill\\nfunk\\nFinn\",\"customerSignature\":\"1569584243.jpg\",\"workImage\":[\"1569584237.jpg\",\"1569584239.jpg\",\"1569584241.jpg\"]}}', '2019-09-27 11:37:24', '2019-09-26 10:16:27'),
(56, 'Clear snow from carpark 1', 3, 2, 4, '2019-09-30 00:00:00', '3:00 PM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 0, 1, '54.590588,-1.305485|54.590568,-1.305439|54.59056,-1.305431|54.590559,-1.305394|54.590525,-1.305368|54.590486,-1.305359|54.590495,-1.305378|54.590508,-1.305397|54.590507,-1.305459|54.590435,-1.305578|54.590361,-1.305517|54.590349,-1.305583|54.590397,-1.305628|54.590455,-1.305713|54.590478,-1.305669|54.590493,-1.305687|54.590552,-1.30559|54.590564,-1.305595|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0l�F=D���|�8c�KK@a�>���5s��KK@�����)Wx�KK@aP��������o�KK@:�S�����6<�R�KK@Ӡh����x_��KK@���\n����˹W�KK@��������`\"ĕKK@DM��(��������KK@����������_�KK@��5�e������KK@�j�������X��KK@�ދ/����	T� �KK@�d�P3���=a��KK@�jf-�����yȔKK@e�<\r���+�MF�KK@��V����0K;5�KK@O#-������噗KK@l�F=D���|�8c�KK@', '', '2019-09-26 14:00:12', '2019-09-26 14:00:12'),
(57, 'Test Job 100', 3, 2, 4, '2019-09-26 00:00:00', '4:15 PM', 'Darlington Mowden Park Rugby Club, The Northern Echo Arena, Neasham Road, Darlington, UK', '', 'Neasham Road', '', 'England', 'DL2 1DL', 'United Kingdom', '54.50798330', '-1.53497350', 0, 1, '54.510242,-1.537531|54.508647,-1.531458|54.507812,-1.532059|54.507987,-1.532896|54.507887,-1.533175|54.507688,-1.533025|54.507364,-1.533218|54.507239,-1.533454|54.507289,-1.534698|54.50765,-1.535471|54.508024,-1.53605|54.509208,-1.537144|54.510005,-1.537767|54.510155,-1.537788|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�`����ׅ�OAK@=)�\Zڀ���\ZKXAK@�HLP���B���@K@���������ϷAK@��@����\"��pAK@�4�8E���,I���@K@i7�����y��M�@K@幾���� \"5�@K@%�s}���nO���@K@{M\nJ���>�٬�@K@2U0*������0�AK@��N$���HnM�-AK@v�ݑ�������GAK@d��ǚ��rP�LAK@�`����ׅ�OAK@', '', '2019-09-26 14:04:02', '2019-09-26 14:04:02'),
(58, 'New test And Job', 1, 3, 15, '2019-09-27 00:00:00', '12:15 PM', 'GEETA BHAVAN SQUARE, Gita Bhawan Road, South Tukoganj, Indore, Madhya Pradesh, India', '', 'Gita Bhawan Road', 'Indore', 'MP', '452001', 'India', '22.71843200', '75.88429860', 2, 1, '22.718724,75.877967|22.72102,75.882302|22.717299,75.888911|22.710253,75.886293|22.709263,75.878268|22.711638,75.876937|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0���0�R@���K��6@��΢w�R@\r�GĔ�6@�����R@tB蠷6@kF��R@���#ӵ6@�G��5�R@JC�B��6@��]��R@B�p�-�6@���0�R@���K��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 12:06:00 PM\",\"comments\":\"did\\ncubist\\nFujitsu\\ncoz\\ndiff BBC\\nDimitar\\nfifty\\ndj loc\",\"driverSignature\":\"1569566242.jpg\",\"workImage\":[\"1569566234.jpg\",\"1569566236.jpg\",\"1569566239.png\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 12:25:00 PM\",\"comments\":\"Arvid\\nfig\\nfig\\nFinn\\ngong\\nfiks\\nskudd\\nsinus\",\"customerSignature\":\"1569567406.jpg\",\"workImage\":[\"1569567397.jpg\",\"1569567400.jpg\",\"1569567402.jpg\"]}}', '2019-09-27 06:56:47', '2019-09-27 06:35:03'),
(59, 'Job Image Size', 1, 5, 16, '2019-09-27 00:00:00', '5:30 PM', 'Indore Bypass Road, County Walk Township, Indore, Madhya Pradesh, India', '', 'Indore Bypass Road', '', 'MP', '', 'India', '22.71139850', '75.88320000', 2, 1, '22.75573,75.846808|22.782321,75.8729|22.759529,75.916846|22.715199,75.898993|22.702531,75.882513|22.713932,75.860541|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0o.\Z2�R@(�r�w�6@k+����R@Y�e0F�6@�]ؚ��R@]~p�6@O����R@�!H�6@�R�{�R@\ZmUٳ6@��\Z�R@`�_?Ķ6@o.\Z2�R@(�r�w�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 06:37:00 PM\",\"comments\":\"did\\nFujifilm\\nFuji oh\\nFuji\\nfind\",\"driverSignature\":\"1569589678.jpg\",\"workImage\":[\"1569589671.png\",\"1569589673.jpg\",\"1569589675.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 06:44:00 PM\",\"comments\":\"did aug\\nXbox\\ndid\\n\",\"customerSignature\":\"1569590070.jpg\",\"workImage\":[\"1569590063.jpg\",\"1569590065.jpg\",\"1569590068.jpg\"]}}', '2019-09-27 13:14:33', '2019-09-27 11:58:49'),
(60, 'Test Job 3', 3, 2, 4, '2019-09-30 00:00:00', '12:30 PM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', '', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 0, 1, '54.59065,-1.305599|54.590559,-1.305388|54.590478,-1.305361|54.590352,-1.305483|54.590393,-1.305645|54.590442,-1.305717|54.590475,-1.305672|54.590529,-1.305786|54.590651,-1.305597|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\n\0\0\0|�ƻ����Pk�KK@t	�������o�KK@�G7������yȔKK@U�g$B���i����KK@��������dq��KK@�LM�7����|��KK@�شR����\rO��KK@�1Y����w+Kt�KK@e������,�s�KK@|�ƻ����Pk�KK@', '', '2019-09-30 11:29:43', '2019-09-30 11:29:43'),
(61, 'sas', 4, 14, 17, '2019-09-06 00:00:00', '5:15 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', '7', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130', 0, 1, '22.718281,75.867966|22.717818,75.867951|22.718051,75.867964|22.717939,75.868009|22.718034,75.868015|22.717826,75.867972|22.717776,75.868154|22.718281,75.868347|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0�D���R@�V|C�6@��Y���R@�z��·6@��ฌ�R@/ܹ0ҷ6@��u��R@����ʷ6@�[Ɏ��R@�j�ѷ6@�unڌ�R@�7�q÷6@y�Տ�R@���*��6@\Z�K���R@�V|C�6@�D���R@�V|C�6@', '', '2019-09-30 11:42:51', '2019-09-30 11:40:50'),
(62, 'Testing Job By Piyush', 4, 14, 15, '2019-10-22 00:00:00', '5:30 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130', 2, 1, '22.719338,75.868229|22.716092,75.866244|22.715864,75.870804|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0^��R@\"�\0�&�6@̖��p�R@_�(�Q�6@wN�@��R@=b��B�6@^��R@\"�\0�&�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-30 05:35:00 PM\",\"comments\":\"Piyush Created the job.\",\"driverSignature\":\"1569845143.jpg\",\"workImage\":[\"1569845135.jpg\",\"1569845138.jpg\",\"1569845141.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-30 05:37:00 PM\",\"comments\":\"Piyush completed the process.\",\"customerSignature\":\"1569845252.jpg\",\"workImage\":[\"1569845244.jpg\",\"1569845246.jpg\",\"1569845249.jpg\"]}}', '2019-09-30 12:07:34', '2019-09-30 12:01:03'),
(63, 'New And FInish', 1, 3, 16, '2019-09-30 00:00:00', '7:00 PM', 'Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '', 'India', '22.71956870', '75.85772580', 2, 1, '22.719905,75.857167|22.71995,75.858108|22.719606,75.857885|22.719767,75.857397|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0x\r����R@:��K�6@��=��R@U���N�6@��|���R@`L8�6@�����R@s�m�B�6@x\r����R@:��K�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-30 06:59:00 PM\",\"comments\":\"synlig synlig\\nCox\\nfull\\nsynlig\",\"driverSignature\":\"1569850197.jpg\",\"workImage\":[\"1569850192.jpg\",\"1569850194.jpg\",\"1569850196.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 02:26:00 PM\",\"comments\":\"Finnskog g\",\"customerSignature\":\"1570092975.jpg\",\"workImage\":[\"1570092969.jpg\",\"1570092970.jpg\",\"1570092973.jpg\"]}}', '2019-10-03 08:56:16', '2019-09-30 13:28:47'),
(64, 'Job And  Track 1', 1, 3, 16, '2019-10-03 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722738,75.887072|22.722678,75.887243|22.722743,75.887404|22.723114,75.887324|22.723173,75.886927|22.72297,75.886954|22.722767,75.886965|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�L����R@���[�6@�&ݖ��R@��l�6@��%:��R@�il��6@.=����R@�G���6@�vi��R@�Y��!�6@�õ���R@7�ُ�6@�����R@ǠB�6@�L����R@���[�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 02:18:00 PM\",\"comments\":\"serviser Nick\",\"driverSignature\":\"1570092536.jpg\",\"workImage\":[\"1570092531.jpg\",\"1570092533.jpg\",\"1570092535.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 02:32:00 PM\",\"comments\":\"synliggj\\u00f8ring\",\"customerSignature\":\"1570093363.jpg\",\"workImage\":[\"1570093357.jpg\",\"1570093358.jpg\",\"1570093361.jpg\"]}}', '2019-10-03 09:02:45', '2019-10-03 08:43:05'),
(65, 'Job And  Track 2', 3, 9, 16, '2019-10-03 00:00:00', '2:15 PM', 'Palasia, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72435500', '75.88389440', 2, 1, '22.72291,75.886394|22.722237,75.886459|22.722198,75.887274|22.722692,75.887768|22.723425,75.887553|22.723326,75.88678|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�W歺�R@��7��6@������R@�&��6@�%���R@�<���6@ܛ�0��R@��W�6@����R@�|a2�6@ͯ�\0��R@�X��+�6@�W歺�R@��7��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 02:35:00 PM\",\"comments\":\"rustic hj\",\"driverSignature\":\"1570093538.jpg\",\"workImage\":[\"1570093532.jpg\",\"1570093534.jpg\",\"1570093536.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 02:53:00 PM\",\"comments\":\"disc vjk cumming\",\"customerSignature\":\"1570094615.jpg\",\"workImage\":[\"1570094610.jpg\",\"1570094612.jpg\",\"1570094613.jpg\"]}}', '2019-10-03 09:23:37', '2019-10-03 08:45:34'),
(66, 'Job And  Track 3', 4, 7, 16, '2019-10-03 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.7227,75.886759|22.72293,75.886911|22.723108,75.886978|22.722984,75.887343|22.72267,75.887231|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�Ҩ��R@��\0��6@��Z&��R@L���6@`�_?��R@�y��6@iUK:��R@��z�6@�?�d��R@�̯�\0�6@�Ҩ��R@��\0��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 03:15:00 PM\",\"comments\":\"Siggerud j\\u00f8diske sgkvxfb\",\"driverSignature\":\"1570095959.jpg\",\"workImage\":[\"1570095952.jpg\",\"1570095954.jpg\",\"1570095957.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 03:43:00 PM\",\"comments\":\"din Clooney\",\"customerSignature\":\"1570097606.jpg\",\"workImage\":[\"1570097599.jpg\",\"1570097601.jpg\",\"1570097603.jpg\"]}}', '2019-10-03 10:13:28', '2019-10-03 08:47:13'),
(67, 'Job And 4', 2, 5, 16, '2019-10-03 00:00:00', '4:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722791,75.886809|22.723054,75.886965|22.722957,75.887316|22.722875,75.887523|22.722643,75.887434|22.722611,75.8873|22.722685,75.886785|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0\Z3�z��R@�׺��6@�����R@�=#\Z�6@�M���R@j���6@��D-��R@�V�6@������R@﮳!��6@io����R@غ���6@Ve���R@LOX��6@\Z3�z��R@�׺��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 06:22:00 PM\",\"comments\":\"sudah Sukoco Synn\\u00f8ve\",\"driverSignature\":\"1570107146.jpg\",\"workImage\":[\"1570107140.jpg\",\"1570107142.jpg\",\"1570107144.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 06:46:00 PM\",\"comments\":\"skyv\",\"customerSignature\":\"1570108577.jpg\",\"workImage\":[\"1570108572.jpg\",\"1570108574.jpg\",\"1570108576.jpg\"]}}', '2019-10-03 13:16:20', '2019-10-03 10:31:01'),
(68, 'Remove Snow in car park 1', 3, 2, 18, '2019-10-03 00:00:00', '1:30 PM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 2, 1, '54.5905,-1.304989|54.590502,-1.304241|54.589905,-1.304209|54.589898,-1.305032|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0d<J%<����$��KK@+���+���~͑�KK@�a�A\n����_��KK@M�<i�����ǁKK@d<J%<����$��KK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 12:41:00 PM\",\"comments\":\"Deano deano\",\"driverSignature\":\"1570102878.jpg\",\"workImage\":[\"1570102872.jpg\",\"1570102874.jpg\",\"1570102876.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 12:47:00 PM\",\"comments\":\"Feel sick\",\"customerSignature\":\"1570103248.jpg\",\"workImage\":[\"1570103243.jpg\",\"1570103245.jpg\",\"1570103247.jpg\"]}}', '2019-10-03 11:47:30', '2019-10-03 11:31:11'),
(69, 'Job And Track 5', 3, 5, 16, '2019-10-03 00:00:00', '5:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722794,75.886828|22.723059,75.886995|22.722885,75.887536|22.722742,75.887719|22.722621,75.887587|22.722561,75.887563|22.722655,75.886823|22.722705,75.886772|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0UK:���R@��	�6@�-����R@e\Z�6@s��c��R@�����6@lBZc��R@r���6@�V�9��R@g����6@��\n���R@t]����6@͕A���R@wJ���6@��X���R@ۧ�1�6@UK:���R@��	�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 06:48:00 PM\",\"comments\":\"sac John xiv zero\",\"driverSignature\":\"1570108693.jpg\",\"workImage\":[\"1570108687.jpg\",\"1570108689.jpg\",\"1570108691.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 07:10:00 PM\",\"comments\":\"dj gag gh ju\",\"customerSignature\":\"1570110032.jpg\",\"workImage\":[\"1570110027.png\",\"1570110029.jpg\",\"1570110030.jpg\"]}}', '2019-10-03 13:40:33', '2019-10-03 11:51:34'),
(70, 'Job And Track 6', 3, 3, 16, '2019-10-04 00:00:00', '5:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722645,75.88715|22.72295,75.887182|22.722801,75.888167|22.722321,75.888086|22.722168,75.886901|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0_)���R@0�AC��6@d����R@��N@�6@��f���R@��|	�6@E��f��R@�6p�6@�ri���R@�7�\0�6@_)���R@0�AC��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 06:56:00 PM\",\"comments\":\"stova all del dl\",\"driverSignature\":\"1570109178.jpg\",\"workImage\":[\"1570109170.jpg\",\"1570109173.jpg\",\"1570109175.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 07:06:00 PM\",\"comments\":\"tuh hjj nih si di\",\"customerSignature\":\"1570109796.jpg\",\"workImage\":[\"1570109790.jpg\",\"1570109792.jpg\",\"1570109794.jpg\"]}}', '2019-10-03 13:36:37', '2019-10-03 11:52:32'),
(71, 'Job Track 7', 2, 5, 16, '2019-10-04 00:00:00', '11:15 AM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722833,75.887027|22.722712,75.887062|22.72271,75.887105|22.722621,75.887107|22.722675,75.886804|22.722878,75.886882|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�����R@6x_��6@�ᱟ��R@@mT��6@��T��R@�}ƅ�6@_Cp\\��R@g����6@�}�e��R@��:�6@OZ����R@v�X��6@�����R@6x_��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 11:17:00 AM\",\"comments\":\"doi zoo xls XL\",\"driverSignature\":\"1570168058.jpg\",\"workImage\":[\"1570168051.jpg\",\"1570168054.jpg\",\"1570168056.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 11:29:00 AM\",\"comments\":\"Xbox si\",\"customerSignature\":\"1570168768.jpg\",\"workImage\":[\"1570168763.jpg\",\"1570168765.jpg\",\"1570168767.jpg\"]}}', '2019-10-04 05:59:30', '2019-10-04 05:46:23');
INSERT INTO `jobs` (`jobId`, `jobName`, `jobTypeId`, `customerId`, `driverId`, `startDate`, `startTime`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `jobStatus`, `geoFencing`, `points`, `polygonColor`, `boundary`, `jobReport`, `crd`, `upd`) VALUES
(72, 'Job And Track 8', 1, 5, 16, '2019-10-04 00:00:00', '11:45 AM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722762,75.887043|22.7227,75.887051|22.722702,75.887126|22.722638,75.887335|22.722668,75.886826|22.722888,75.886885|22.722878,75.887051|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0T�\0P��R@��0��6@���q��R@��\0��6@�[!���R@�����6@\'f���R@������6@������R@��!�\0�6@�M���R@��0�6@���q��R@v�X��6@T�\0P��R@��0��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 11:33:00 AM\",\"comments\":\"serbisk Blix du XL\",\"driverSignature\":\"1570169024.jpg\",\"workImage\":[\"1570169017.jpg\",\"1570169020.jpg\",\"1570169022.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 12:00:00 PM\",\"comments\":\"c chic stk jl St grunn\",\"customerSignature\":\"1570170641.jpg\",\"workImage\":[\"1570170633.jpg\",\"1570170636.jpg\",\"1570170639.jpg\"]}}', '2019-10-04 06:30:43', '2019-10-04 06:02:47'),
(73, 'Job And Track 9 ', 2, 5, 16, '2019-10-04 00:00:00', '12:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722833,75.887032|22.722707,75.887037|22.722702,75.887107|22.72265,75.887137|22.722697,75.886882|22.722856,75.886946|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Z��!��R@6x_��6@�U�6��R@�qS�6@_Cp\\��R@�����6@��D���R@Tt$���6@OZ����R@�ꫫ�6@Z�\'���R@��?\r�6@Z��!��R@6x_��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 12:09:00 PM\",\"comments\":\"Saeed cm e eh jl ju GSM\",\"driverSignature\":\"1570171166.jpg\",\"workImage\":[\"1570171159.jpg\",\"1570171161.jpg\",\"1570171164.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 12:26:00 PM\",\"comments\":\"serupa chic dog\",\"customerSignature\":\"1570172222.jpg\",\"workImage\":[\"1570172216.jpg\",\"1570172218.jpg\",\"1570172219.jpg\"]}}', '2019-10-04 06:57:04', '2019-10-04 06:38:23'),
(74, 'Job And Track 11', 3, 5, 16, '2019-10-04 00:00:00', '12:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722997,75.887046|22.722764,75.887013|22.722742,75.887048|22.722685,75.887086|22.722685,75.887217|22.722606,75.887204|22.722685,75.886783|22.723004,75.886954|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0�\\��R@*�T�6@�,���R@幾�6@�~�d��R@r���6@S�[��R@LOX��6@#��)��R@LOX��6@X8I���R@�����6@��{\r��R@LOX��6@�õ���R@��F��6@�\\��R@*�T�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 12:36:00 PM\",\"comments\":\"dkn K dykk og db\",\"driverSignature\":\"1570172816.jpg\",\"workImage\":[\"1570172809.jpg\",\"1570172811.jpg\",\"1570172815.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 12:54:00 PM\",\"comments\":\"dgn di dunk j Sumut dgn\",\"customerSignature\":\"1570173876.jpg\",\"workImage\":[\"1570173871.jpg\",\"1570173873.jpg\",\"1570173875.jpg\"]}}', '2019-10-04 07:24:38', '2019-10-04 07:05:52'),
(75, 'Job Track 12', 3, 7, 16, '2019-10-04 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722846,75.887035|22.722631,75.887005|22.722697,75.886764|22.722885,75.886895|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�r.��R@_zo�6@ݘ����R@f`X��6@J�ʽ��R@�ꫫ�6@�>���R@�����6@�r.��R@_zo�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 02:12:00 PM\",\"comments\":\"did all gone vi\",\"driverSignature\":\"1570178547.jpg\",\"workImage\":[\"1570178541.jpg\",\"1570178543.jpg\",\"1570178545.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 02:21:00 PM\",\"comments\":\"R\\u00f8rvik vel ckckck click\",\"customerSignature\":\"1570179101.jpg\",\"workImage\":[\"1570179095.jpg\",\"1570179097.jpg\",\"1570179099.jpg\"]}}', '2019-10-04 08:51:43', '2019-10-04 08:32:20'),
(76, 'Job Track And 11', 3, 7, 16, '2019-10-04 00:00:00', '2:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722853,75.887048|22.72271,75.887003|22.722759,75.886863|22.72289,75.886938|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�~�d��R@�����6@\r;���R@�}ƅ�6@B]��R@��ۻ�6@噗��R@���Q�6@�~�d��R@�����6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 02:40:00 PM\",\"comments\":\"etnis sih\",\"driverSignature\":\"1570180235.jpg\",\"workImage\":[\"1570180230.jpg\",\"1570180231.jpg\",\"1570180233.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 04:10:00 PM\",\"comments\":\"suka week Dul STM \",\"customerSignature\":\"1570185628.jpg\",\"workImage\":[\"1570185620.jpg\",\"1570185623.jpg\",\"1570185626.jpg\"]}}', '2019-10-04 10:40:30', '2019-10-04 09:06:07'),
(77, 'Test Job 101', 1, 2, 18, '2019-10-04 00:00:00', '12:00 PM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 2, 1, '54.590611,-1.305207|54.590385,-1.30495|54.590363,-1.304349|54.590227,-1.304268|54.590075,-1.304282|54.589991,-1.304365|54.589939,-1.304574|54.589932,-1.304748|54.589974,-1.304872|54.590046,-1.304955|54.590092,-1.304998|54.590161,-1.305489|54.590112,-1.305663|54.589983,-1.305894|54.59009,-1.306082|54.590172,-1.305878|54.590235,-1.305746|54.59031,-1.305505|54.590429,-1.305376|54.590541,-1.305349|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0*8� ���5�($�KK@��N@���D�U��KK@������]���KK@^�SH����KK@�.l�V�����ݓ�KK@���խ�����8ӄKK@�c������F��KK@�WXp?����nK�KK@2uWv����¾�D�KK@�|~���\\����KK@ˆ5�E�����x\"�KK@��oH����/Ie�KK@T�������}>ʈKK@��`������KK@�N>=����+ٱ�KK@�\riT����遏��KK@ ��U���/�\nҌKK@O;�5Y���:@0G�KK@���������n-�KK@b�\r�����<��ؖKK@*8� ���5�($�KK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 08:52:00 AM\",\"comments\":\"test\",\"driverSignature\":\"1570693951.jpg\",\"workImage\":[\"1570693943.jpg\",\"1570693945.jpg\",\"1570693948.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 11:50:00 AM\",\"comments\":\"done\",\"customerSignature\":\"1571914212.jpg\",\"workImage\":[\"1571914207.jpg\",\"1571914208.jpg\",\"1571914211.jpg\"]}}', '2019-10-24 10:50:14', '2019-10-04 11:00:35'),
(78, 'Job Track And 17', 1, 5, 15, '2019-10-07 00:00:00', '2:45 PM', 'Shekhawat Marg, Banni Ki Dhani, Harnathapura, Jhotwara, Jaipur, Rajasthan, India', '', 'Shekhawat Marg', 'Jaipur', 'RJ', '302032', 'India', '26.95181710', '75.72730960', 2, 1, '26.951936,75.727094|26.951707,75.727073|26.951738,75.727274|26.951936,75.727234|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0��E���R@�����:@31]��R@�_���:@�N?���R@F\\\0\Z��:@��y\0��R@�����:@��E���R@�����:@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 04:30:00 PM\",\"comments\":\"see this till\",\"driverSignature\":\"1570705217.jpg\",\"workImage\":[\"1570705211.jpg\",\"1570705213.jpg\",\"1570705215.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-10 04:39:00 PM\",\"comments\":\"did kick\",\"customerSignature\":\"1570705796.jpg\",\"workImage\":[\"1570705790.jpg\",\"1570705792.jpg\",\"1570705794.jpg\"]}}', '2019-10-10 11:09:57', '2019-10-07 09:15:11'),
(79, 'Test new And 21', 2, 5, 15, '2019-10-10 00:00:00', '5:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722851,75.887024|22.722712,75.887035|22.722695,75.886809|22.722772,75.886378|22.723185,75.886504|22.723296,75.886641|22.723106,75.887046|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�O\0��R@��\\��6@�r.��R@@mT��6@\Z3�z��R@����6@5y�j��R@�v���6@|�E{��R@0��\"�6@��乾�R@�S9�)�6@�\\��R@���y�6@�O\0��R@��\\��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 06:04:00 PM\",\"comments\":\"drum jus M dkk\",\"driverSignature\":\"1570783082.jpg\",\"workImage\":[\"1570783074.jpg\",\"1570783077.jpg\",\"1570783080.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 02:07:16 PM\",\"comments\":\"funny dj\",\"customerSignature\":\"1570783091.jpg\",\"workImage\":[\"1570783086.jpg\",\"1570783088.jpg\",\"1570783090.jpg\"]}}', '2019-10-11 08:38:13', '2019-10-10 12:01:26'),
(80, 'Job local 1', 1, 5, 15, '2019-10-10 00:00:00', '6:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722927,75.887109|22.72269,75.88703|22.722681,75.886801|22.722976,75.886638|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0/��d��R@8en��6@�$z��R@p%;6�6@�C�X��R@�p<��6@YO���R@�ʃ��6@/��d��R@8en��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 06:43:00 PM\",\"comments\":\"servis\",\"driverSignature\":\"1570776482.jpg\",\"workImage\":[\"1570776475.jpg\",\"1570776478.jpg\",\"1570776480.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 11:47:22 AM\",\"comments\":\"dll\",\"customerSignature\":\"1570776493.jpg\",\"workImage\":[\"1570776487.jpg\",\"1570776488.jpg\",\"1570776490.jpg\"]}}', '2019-10-11 06:48:14', '2019-10-10 12:41:30'),
(81, 'Local Job 2', 3, 3, 15, '2019-10-11 00:00:00', '2:30 PM', 'Palasia Square, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72408670', '75.88598180', 2, 1, '22.723933,75.88568|22.723535,75.885962|22.723963,75.886852|22.724069,75.885305|22.723562,75.885015|22.723513,75.885388|22.723488,75.885785|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0)�*���R@�~O�S�6@������R@���9�6@\Z�.��R@����U�6@M֨�R@$�\\�6@^���R@ܠ�[;�6@Vn2��R@;�%8�6@d�����R@gs�6�6@)�*���R@�~O�S�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-11 02:22:19 PM\",\"comments\":\"all all all com dj\",\"driverSignature\":\"1570784421.jpg\",\"workImage\":[\"1570784415.jpg\",\"1570784417.jpg\",\"1570784419.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 02:25:03 PM\",\"comments\":\"dgn bill so\",\"customerSignature\":\"1570784430.jpg\",\"workImage\":[\"1570784425.jpg\",\"1570784427.jpg\",\"1570784428.jpg\"]}}', '2019-10-11 09:00:32', '2019-10-11 08:49:55'),
(82, 'Local Job 3', 4, 13, 15, '2019-10-11 00:00:00', '4:15 PM', 'Palasia, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72435500', '75.88389440', 2, 1, '22.724412,75.883818|22.724023,75.882614|22.724736,75.882598|22.724959,75.884837|22.724085,75.884928|22.724558,75.883949|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0og_y��R@xԘs�6@y?n�|�R@C�B�Y�6@�`R||�R@�;jL��6@�R^+��R@��閹6@$����R@/�r�]�6@>�Ӟ��R@�|�6@og_y��R@xԘs�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-11 04:15:48 PM\",\"comments\":\"so do\",\"driverSignature\":\"1570790844.jpg\",\"workImage\":[\"1570790838.jpg\",\"1570790840.jpg\",\"1570790842.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 04:16:33 PM\",\"comments\":\"so lmk\",\"customerSignature\":\"1570790853.jpg\",\"workImage\":[\"1570790848.jpg\",\"1570790849.jpg\",\"1570790851.jpg\"]}}', '2019-10-11 10:47:34', '2019-10-11 10:44:32'),
(83, 'Grit Lucid Roundabout', 1, 2, 18, '2019-10-14 00:00:00', '11:00 AM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 2, 1, '54.590053,-1.306261|54.589906,-1.306031|54.590119,-1.305499|54.590103,-1.30517|54.590053,-1.305041|54.59,-1.304984|54.589952,-1.30492|54.589934,-1.304821|54.589914,-1.304657|54.58991,-1.304432|54.590016,-1.304201|54.590121,-1.304121|54.590244,-1.30407|54.590312,-1.304107|54.590398,-1.304207|54.590422,-1.304354|54.590464,-1.304561|54.590482,-1.304783|54.59042,-1.304917|54.590383,-1.305062|54.590402,-1.30525|54.590297,-1.30584|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�0�q����PۆKK@��À���j�0\n�KK@__�R�������KK@n�������\"�~�KK@��r����PۆKK@+��6����Q��KK@TW>������\Z��KK@�$\"�����4f��KK@��������LM�KK@��������ʾ+�KK@d�&������KK@�mP�����g׽�KK@��x����T��KK@7�7M�����7�W�KK@�m�(�����b)�KK@0��L����ak��KK@b1�Z{�����S�KK@>�#d���7p�KK@2�������s��KK@�	����������KK@����M���\Z��J�KK@0��{������\"ڎKK@�0�q����PۆKK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-14 11:03:00 AM\",\"comments\":\"test\\n\",\"driverSignature\":\"1571047407.jpg\",\"workImage\":[\"1571047393.jpg\",\"1571047397.jpg\",\"1571047404.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 11:51:00 AM\",\"comments\":\"uguggu\",\"customerSignature\":\"1571914292.jpg\",\"workImage\":[\"1571914287.jpg\",\"1571914289.jpg\",\"1571914290.jpg\"]}}', '2019-10-24 10:51:33', '2019-10-14 10:00:54'),
(84, 'Job Local 4', 1, 7, 15, '2019-10-15 00:00:00', '11:45 AM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722828,75.88726|22.722846,75.886992|22.72269,75.886992|22.722658,75.887381|22.722121,75.887279|22.722212,75.885678|22.722593,75.885804|22.723333,75.886453|22.723207,75.887078|22.723323,75.888312|22.722165,75.888202|22.722168,75.887394|22.722814,75.887523|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0\"�*���R@�|A�6@�z��R@_zo�6@�z��R@p%;6�6@������R@Y1\\\0�6@^��-��R@<���ܸ6@Y2���R@\\Ǹ��6@��B��R@�Q����6@;]���R@�Y,�6@�����R@�<\r$�6@=)�\Z��R@�q5�+�6@z�3M��R@�P1�߸6@�*4��R@�7�\0�6@��D-��R@H�V\n�6@\"�*���R@�|A�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-15 11:59:03 AM\",\"comments\":\"sh Jill so XL f gm\",\"driverSignature\":\"1571123251.jpg\",\"workImage\":[\"1571123246.jpg\",\"1571123248.jpg\",\"1571123250.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-15 12:10:02 PM\",\"comments\":\"Dyno if sh fun on gjj lo fun\",\"customerSignature\":\"1571123264.jpg\",\"workImage\":[\"1571123257.jpg\",\"1571123259.jpg\",\"1571123262.jpg\"]}}', '2019-10-15 07:07:46', '2019-10-15 06:04:52'),
(85, 'Job Local 5', 1, 5, 15, '2019-10-15 00:00:00', '3:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722653,75.886968|22.720847,75.886508|22.722153,75.882431|22.723628,75.882753|22.725062,75.88375|22.726824,75.882597|22.727418,75.884206|22.729219,75.884861|22.727715,75.889281|22.725498,75.887522|22.723321,75.886105|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0N&n��R@6[y���6@����R@rk�m��6@�~߿y�R@R��߸6@�\\p�R@KxB�?�6@��(\\��R@��ɩ��6@� x|�R@��=#�6@T;�Ԗ�R@���8�6@` ���R@0����6@�����R@Ͻ�K�6@�)��R@<P�<��6@�����R@����+�6@N&n��R@6[y���6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-22 06:05:28 PM\",\"comments\":\"dl XXL\",\"driverSignature\":\"1571747806.jpg\",\"workImage\":[\"1571747799.jpg\",\"1571747802.jpg\",\"1571747805.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-23 07:18:00 PM\",\"comments\":\"di fhjjk\",\"customerSignature\":\"1571838500.jpg\",\"workImage\":[\"1571838495.jpg\",\"1571838497.jpg\",\"1571838499.jpg\"]}}', '2019-10-23 13:48:22', '2019-10-15 10:13:05'),
(86, 'And Local 6', 2, 13, 16, '2019-10-18 00:00:00', '12:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 1, 1, '22.723034,75.887126|22.722712,75.886995|22.722702,75.887271|22.722581,75.887641|22.722428,75.888269|22.719837,75.887339|22.721005,75.881353|22.727457,75.883927|22.728902,75.888122|22.726567,75.893315|22.723321,75.890783|22.725023,75.886706|22.722806,75.885891|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�[!���R@d���6@�-����R@@mT��6@�M��R@�����6@�e2��R@����6@=C8f��R@���\n�6@�]�)��R@ds�<G�6@��ih�R@�@�ȓ�6@JC�B��R@?8�:�6@�6����R@/�KR��6@���,�R@SZK\0�6@L5���R@����+�6@�ʅʿ�R@\n�y��6@�4*p��R@BZc�	�6@�[!���R@d���6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-19 05:21:00 PM\",\"comments\":\"test \\ntest\\ntest\\ntest\\ntest\\ntest\\n\",\"driverSignature\":\"1571485887.jpg\",\"workImage\":[\"1571485880.png\",\"1571485882.png\",\"1571485884.png\"]}}', '2019-10-19 11:51:28', '2019-10-18 06:54:12'),
(87, 'Man Guard visit', 5, 2, 18, '2019-10-18 00:00:00', '1:00 PM', '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'Stockton-on-Tees', 'England', '', 'United Kingdom', '54.61283050', '-1.30712640', 2, 1, '54.612671,-1.307215|54.612675,-1.307037|54.612583,-1.307027|54.612587,-1.307223|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Cs�FZ����\Z�\0lNK@[�\Z������	h\"lNK@�ҿ$�����iNK@�C�b���5z5@iNK@Cs�FZ����\Z�\0lNK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-18 01:55:00 PM\",\"comments\":\"etst\",\"driverSignature\":\"1571403351.jpg\",\"workImage\":[\"1571403342.jpg\",\"1571403346.jpg\",\"1571403349.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 11:52:00 AM\",\"comments\":\"utdutdutd\\n\",\"customerSignature\":\"1571914342.jpg\",\"workImage\":[\"1571914337.jpg\",\"1571914339.jpg\",\"1571914340.jpg\"]}}', '2019-10-24 10:52:24', '2019-10-18 11:54:21'),
(89, 'Test job19', 3, 3, 16, '2019-10-19 00:00:00', '3:45 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057', 2, 1, '22.717078,75.868515|22.716915,75.86904|22.717076,75.869193|22.717217,75.869107|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0xE��R@\\�~l��6@���Y��R@Ͻ��6@`:�۠�R@\Z��J��6@an�r��R@�\"����6@xE��R@\\�~l��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-19 04:11:00 PM\",\"comments\":\"test\",\"driverSignature\":\"1571481721.jpg\",\"workImage\":[\"1571481717.jpg\",\"1571481718.jpg\",\"1571481720.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-19 04:13:00 PM\",\"comments\":\"test data\",\"customerSignature\":\"1571481814.jpg\",\"workImage\":[\"1571481809.png\",\"1571481811.jpg\",\"1571481812.jpg\"]}}', '2019-10-19 10:43:35', '2019-10-19 10:04:23'),
(90, 'Hand gritting job', 4, 11, 4, '2019-10-29 00:00:00', '3:45 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 0, 1, '22.719729,75.867989|22.719551,75.866637|22.719333,75.866529|22.7187,75.866487|22.718442,75.866594|22.717928,75.866637|22.717097,75.866572|22.716839,75.866594|22.716542,75.866444|22.716285,75.866293|22.716067,75.866208|22.715929,75.866036|22.715711,75.866143|22.715473,75.866165|22.715157,75.866465|22.714959,75.86683|22.714998,75.867087|22.714959,75.867624|22.714959,75.868289|22.715157,75.868482|22.715335,75.868933|22.71577,75.869104|22.716107,75.869061|22.716542,75.868911|22.7168,75.868911|22.717037,75.869126|22.717334,75.869126|22.717631,75.869147|22.717829,75.869169|22.718066,75.869383|22.718324,75.869297|22.71868,75.869383|22.718917,75.869319|22.719254,75.869362|22.719472,75.869319|22.719769,75.869469|22.719848,75.868825|22.719808,75.868504|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\'\0\0\0j�!��R@���(@�6@: 	�v�R@�͌~4�6@G\r6u�R@��5&�6@0��t�R@��#���6@;:�Fv�R@����6@: 	�v�R@�� !ʷ6@G�g�u�R@IC���6@;:�Fv�R@R��6@0��s�R@�5�Ko�6@=�1Xq�R@��)t^�6@&��o�R@���*P�6@\'JB\"m�R@ByG�6@2��n�R@0c\n�8�6@&�R?o�R@�+=)�6@<��)t�R@g�v��6@DL�$z�R@\Z����6@Z�xZ~�R@���\n�6@bN�&��R@\Z����6@����R@\Z����6@�ʆ5��R@g�v��6@�Z(���R@%��1 �6@�4bf��R@:u�<�6@�N���R@�o��R�6@��<��R@�5�Ko�6@��<��R@��m4��6@����R@�����6@����R@Ov3��6@�\Z�\Z��R@��K���6@�lw��R@�/�÷6@�,����R@�^b,ӷ6@�`⏢�R@����6@�,����R@J�i��6@��(��R@׉��\n�6@������R@f��!�6@��(��R@Ac&Q/�6@��Ma��R@����B�6@�<,Ԛ�R@Lb�G�6@~͑��R@0fKVE�6@j�!��R@���(@�6@', '', '2019-10-21 10:08:56', '2019-10-21 10:08:56'),
(91, 'Job manage', 5, 7, 16, '2019-10-25 00:00:00', '7:30 PM', 'Sarwate Bus Stand, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452001', 'India', '22.71368720', '75.86856960', 0, 1, '22.714885,75.867947|22.713737,75.867786|22.713133,75.867465|22.712985,75.867411|22.712796,75.86755|22.71242,75.868956|22.712084,75.869793|22.711945,75.869943|22.712401,75.870007|22.712836,75.869857|22.713341,75.869739|22.713618,75.869696|22.713756,75.869707|22.714251,75.870469|22.714806,75.871198|22.715003,75.870533|22.715152,75.869203|22.715182,75.868806|22.714944,75.868462|22.714875,75.868205|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0S�q��R@�f��6@N{JΉ�R@���w��6@-[닄�R@Ȳ`⏶6@4Lm���R@߉Y/��6@Dio���R@9�t�y�6@nj����R@.9(a�6@�RB���R@?#K�6@��g%��R@��B�6@��1��R@@�t�_�6@�̱���R@Ui�k|�6@�C�ͩ�R@\\�	���6@�]i��R@A�S���6@���G��R@�R����6@�˛õ�R@�\"N\'ٶ6@͕A���R@\r�����6@�Eж�R@���o\n�6@r����R@C��3�6@d${���R@��*�6@f����R@�x��6@QN����R@^�I�6@S�q��R@�f��6@', '', '2019-10-21 14:01:41', '2019-10-21 14:01:41'),
(93, 'Job Que 1', 4, 5, 15, '2019-10-22 00:00:00', '6:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722967,75.88707|22.72265,75.886949|22.722596,75.887421|22.722391,75.886083|22.723106,75.886096|22.72387,75.886301|22.723608,75.888227|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0��?���R@U�]�6@����R@Tt$���6@\'2s���R@m8,\r��6@��x���R@��ם�6@sG�˵�R@���y�6@`Z�\'��R@7�X�O�6@&���R@��_>�6@��?���R@U�]�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-22 06:42:44 PM\",\"comments\":\"dj XL\",\"driverSignature\":\"1571750216.jpg\",\"workImage\":[\"1571750211.jpg\",\"1571750213.jpg\",\"1571750215.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-22 06:52:00 PM\",\"comments\":\"f zip closure\",\"customerSignature\":\"1571750557.jpg\",\"workImage\":[\"1571750547.jpg\",\"1571750554.jpg\",\"1571750556.jpg\"]}}', '2019-10-22 13:22:39', '2019-10-22 12:46:45'),
(94, 'Job Que 2', 5, 5, 15, '2019-10-22 00:00:00', '6:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723395,75.886527|22.722019,75.887176|22.72288,75.884644|22.723702,75.88562|22.723207,75.886435|22.723791,75.88636|22.723271,75.888549|22.723039,75.88695|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0X�ۼ�R@+j0�6@�r�}��R@3�<ָ6@�&���R@����6@�+����R@�ƈD�6@���Y��R@�<\r$�6@�K��R@�#�]J�6@/�����R@-%�I(�6@������R@��z�6@X�ۼ�R@+j0�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-22 06:20:00 PM\",\"comments\":\"dj so all all\",\"driverSignature\":\"1571748664.jpg\",\"workImage\":[\"1571748659.jpg\",\"1571748660.jpg\",\"1571748662.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-22 06:41:00 PM\",\"comments\":\"dl df end with ques\",\"customerSignature\":\"1571749884.jpg\",\"workImage\":[\"1571749878.jpg\",\"1571749880.jpg\",\"1571749883.jpg\"]}}', '2019-10-22 13:11:26', '2019-10-22 12:48:55'),
(95, 'Job Que 3', 4, 5, 15, '2019-10-22 00:00:00', '7:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723103,75.88704|22.722403,75.886729|22.722888,75.885755|22.723195,75.886295|22.72311,75.887021|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0��kC��R@��8G�6@���*��R@D�+g�6@/Q�5��R@��0�6@����R@w��N#�6@`w����R@\Zi���6@��kC��R@��8G�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-23 11:23:05 AM\",\"comments\":\"sel dll\",\"driverSignature\":\"1571811750.jpg\",\"workImage\":[\"1571811744.jpg\",\"1571811746.jpg\",\"1571811748.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-23 11:51:26 AM\",\"comments\":\"Zn all\",\"customerSignature\":\"1571811758.jpg\",\"workImage\":[\"1571811753.jpg\",\"1571811754.jpg\",\"1571811756.jpg\"]}}', '2019-10-23 06:22:39', '2019-10-22 13:25:03'),
(96, 'Job Ques 4', 4, 13, 15, '2019-10-23 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722678,75.88696|22.722982,75.887083|22.723291,75.886278|22.722922,75.885696|22.722363,75.88578|22.72217,75.886413|22.722205,75.88737|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0\r7����R@��l�6@�u����R@��-Y�6@�J\\Ǹ�R@�}V�)�6@��F>��R@��j�6@�ܘ���R@(���6@�o����R@�&\"�6@�\\����R@�Hm�6@\r7����R@��l�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 11:27:40 AM\",\"comments\":\"Dyno so go dj\",\"driverSignature\":\"1571897600.jpg\",\"workImage\":[\"1571897595.jpg\",\"1571897597.jpg\",\"1571897599.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 11:42:23 AM\",\"comments\":\"dll all Cho si\",\"customerSignature\":\"1571897613.jpg\",\"workImage\":[\"1571897608.jpg\",\"1571897610.jpg\",\"1571897612.jpg\"]}}', '2019-10-24 06:13:35', '2019-10-23 08:37:37'),
(97, 'JOBQ', 4, 3, 17, '2019-10-24 00:00:00', '11:45 AM', 'Palasia Square, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72408670', '75.88598180', 2, 1, '22.725502,75.887183|22.725116,75.887012|22.724967,75.886904|22.72477,75.886808|22.724552,75.886658|22.724354,75.88655|22.724324,75.886432|22.724186,75.885907|22.724166,75.885703|22.723938,75.88536|22.723839,75.885048|22.723691,75.884727|22.723711,75.884619|22.723533,75.884609|22.723325,75.884609|22.723404,75.884898|22.723493,75.885467|22.72376,75.886196|22.72379,75.886304|22.72379,75.886454|22.723582,75.886422|22.723483,75.886422|22.723196,75.886304|22.722889,75.886111|22.722582,75.886046|22.722484,75.88595|22.722325,75.885842|22.722226,75.885896|22.722157,75.886143|22.722127,75.886239|22.722444,75.886465|22.722493,75.88655|22.722533,75.886926|22.722493,75.887484|22.722543,75.887892|22.72283,75.887881|22.723048,75.888106|22.723186,75.887774|22.723354,75.887216|22.723473,75.886937|22.723701,75.886937|22.723473,75.887795|22.723305,75.887849|22.723275,75.888299|22.723295,75.888632|22.723513,75.888846|22.723671,75.888407|22.723879,75.888106|22.724215,75.887838|22.724423,75.887806|22.724671,75.887795|22.724898,75.887849|22.725205,75.887838|22.725284,75.887956|22.725235,75.888557|22.725581,75.888632|22.725581,75.888256|22.725591,75.887977|22.7257,75.887763|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0<\0\0\0L�4���R@�.���6@6�����R@l��3��6@C����R@��o��6@2uWv��R@6׆��6@\'/2��R@[@h=|�6@46<��R@��Co�6@/�HM��R@9�3Lm�6@\nF���R@�8�@d�6@��[��R@	�f�b�6@�K����R@�T2\0T�6@��]���R@��@�M�6@ظ�]��R@�h9�C�6@����R@f��E�6@�/o��R@��lu9�6@�/o��R@a��+�6@�8+��R@��)1�6@���}��R@��U�6�6@%vmo��R@(\'�UH�6@�i4��R@�++MJ�6@#ڎ���R@�++MJ�6@W#��R@j���<�6@W#��R@D6�.6�6@�i4��R@��_#�6@h�\n��R@]��@�6@\Z0H���R@��J\"��6@	��g��R@����6@ۤ���R@M�J�6@�\"���R@&R���6@%!���R@Փ�G߸6@%\\�#��R@\0��Pݸ6@�׻�R@1	�6@46<��R@ĖM��6@7�De��R@�G5���6@J��R@ĖM��6@R��8��R@(�����6@Xo�\n��R@S�\nc�6@hX����R@.py��6@M\nJ��R@�캷\"�6@:�%��R@HnM�-�6@1\'h���R@��ʆ5�6@1\'h���R@�wD�6@Y����R@��ʆ5�6@S�����R@�8�*�6@s����R@��(�6@v��X��R@>\\r�)�6@�KU���R@;�%8�6@f����R@I��B�6@hX����R@�BW\"P�6@Y�yV��R@�E|\'f�6@S�A���R@`x%�s�6@Y����R@\\�	��6@S�����R@��R꒹6@Y�yV��R@K����6@^gE��R@�OT6��6@q�-��R@!�>\0��6@v��X��R@V�)���6@s��/��R@V�)���6@j�{���R@�E�T��6@T����R@��yǹ6@L�4���R@�.���6@', '{\"beforeWork\":{\"startDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"driverSignature\":\"1571905455.jpg\",\"workImage\":[\"1571905450.jpg\",\"1571905452.jpg\",\"1571905454.jpg\"]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"customerSignature\":\"1571905745.jpg\",\"workImage\":[\"1571905740.jpg\",\"1571905742.jpg\",\"1571905744.jpg\"]}}', '2019-10-24 08:29:07', '2019-10-24 06:11:28'),
(98, 'Job Que 5', 4, 13, 15, '2019-10-24 00:00:00', '12:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723103,75.88697|22.722561,75.88697|22.722549,75.887609|22.722227,75.885758|22.722888,75.885734|22.723083,75.88578|22.723328,75.886708|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0����R@��8G�6@����R@t]����6@������R@������6@�RB��R@�Ia��6@#��ݯ�R@��0�6@�ܘ���R@\'K���6@�F�ҿ�R@�G,�6@����R@��8G�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 11:55:30 AM\",\"comments\":\"week zoo\",\"driverSignature\":\"1571899483.jpg\",\"workImage\":[\"1571899478.jpg\",\"1571899480.jpg\",\"1571899482.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 12:15:00 PM\",\"comments\":\"dll dll\",\"customerSignature\":\"1571899556.jpg\",\"workImage\":[\"1571899550.jpg\",\"1571899552.jpg\",\"1571899554.jpg\"]}}', '2019-10-24 06:45:57', '2019-10-24 06:23:15'),
(99, 'Job Que 6', 4, 13, 15, '2019-10-24 00:00:00', '12:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723098,75.887164|22.722737,75.886995|22.722613,75.887504|22.722195,75.887276|22.722272,75.885731|22.72315,75.885785|22.723303,75.886423|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0��K��R@��U��6@�-����R@��J�6@nē���R@�b*��6@��F!��R@�U���6@k�ѯ�R@�Z��6@d�����R@7\Z�[ �6@ۈ\'��R@D�b*�6@��K��R@��U��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 12:27:00 PM\",\"comments\":\"dll di\",\"driverSignature\":\"1571900238.jpg\",\"workImage\":[\"1571900233.jpg\",\"1571900235.jpg\",\"1571900236.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 12:28:00 PM\",\"comments\":\"St\\u00f8 dl XXL XL\",\"customerSignature\":\"1571900323.jpg\",\"workImage\":[\"1571900318.jpg\",\"1571900320.jpg\",\"1571900322.jpg\"]}}', '2019-10-24 06:58:45', '2019-10-24 06:24:23'),
(100, 'Job Ques 7', 4, 13, 15, '2019-10-24 00:00:00', '12:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722925,75.887051|22.722673,75.886949|22.722638,75.887426|22.722148,75.887037|22.722252,75.885686|22.723125,75.885812|22.723217,75.88652|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0���q��R@�u���6@����R@ĳ�6@��k���R@������6@�U�6��R@/���޸6@�!U��R@yxρ�6@��$��R@��Q��6@��a���R@G�ҿ$�6@���q��R@�u���6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 01:53:56 PM\",\"comments\":\"siv ark du dykk\",\"driverSignature\":\"1571905855.jpg\",\"workImage\":[\"1571905850.jpg\",\"1571905852.jpg\",\"1571905854.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 01:57:58 PM\",\"comments\":\"fhjjk dj XXL\",\"customerSignature\":\"1571905864.jpg\",\"workImage\":[\"1571905859.jpg\",\"1571905860.jpg\",\"1571905862.jpg\"]}}', '2019-10-24 08:31:05', '2019-10-24 07:06:35'),
(101, 'Job Ques 7', 4, 13, 15, '2019-10-24 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723093,75.887064|22.722663,75.886933|22.722658,75.887593|22.722118,75.887375|22.722301,75.885688|22.722838,75.885747|22.723157,75.885739|22.723323,75.886364|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0_]���R@n�r��6@�/����R@}?q\0�6@%��R��R@Y1\\\0�6@o����R@Yک�ܸ6@k����R@<���6@�a/��R@YNB��6@�r���R@��0� �6@�0��R@�q5�+�6@_]���R@n�r��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 02:39:39 PM\",\"comments\":\"satu di di\",\"driverSignature\":\"1571908426.jpg\",\"workImage\":[\"1571908421.jpg\",\"1571908423.jpg\",\"1571908425.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 02:43:26 PM\",\"comments\":\"Dyno dj\",\"customerSignature\":\"1571908439.jpg\",\"workImage\":[\"1571908433.jpg\",\"1571908434.jpg\",\"1571908436.jpg\"]}}', '2019-10-24 09:14:00', '2019-10-24 08:46:12'),
(102, 'job-PG-1', 6, 5, 17, '2019-10-24 00:00:00', '2:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723024,75.882382|22.723162,75.882973|22.723271,75.883874|22.723469,75.884571|22.723608,75.885086|22.723746,75.885397|22.723845,75.885859|22.723915,75.886309|22.724112,75.886513|22.724686,75.886824|22.724894,75.887382|22.724152,75.887253|22.723984,75.887286|22.723816,75.887532|22.723162,75.888723|22.722341,75.889775|22.722064,75.890043|22.721658,75.890086|22.720678,75.889496|22.720471,75.889163|22.720847,75.888037|22.721737,75.885773|22.721925,75.88544|22.721252,75.88529|22.720283,75.884003|22.720481,75.883198|22.721074,75.882908|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0%Z�x�R@9��6@�/���R@��%!�6@9�@d��R@-%�I(�6@\\��Ϝ�R@z��C5�6@p	�?��R@��_>�6@�-X��R@^��jG�6@�w���R@�_��M�6@�IbI��R@wR~R�6@�����R@#�ng_�6@�Ss���R@zލ��6@�C����R@7���6@ɑ����R@?U�b�6@�8K��R@���W�6@҉S��R@PR`L�6@�o���R@��%!�6@s���R@X��V�6@)B�v��R@s��/ٸ6@((E+��R@��$���6@{����R@Z�xZ~�6@t���R@g���p�6@�($���R@rk�m��6@��<���R@+P��ø6@����R@0*�и6@t^c���R@�,����6@8�Q���R@a�xwd�6@ y�P��R@�c\\qq�6@X����R@��?N��6@%Z�x�R@9��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 02:49:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"driverSignature\":\"1571908995.jpg\",\"workImage\":[\"1571908990.jpg\",\"1571908992.jpg\",\"1571908994.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 02:53:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"customerSignature\":\"1571909049.jpg\",\"workImage\":[\"1571909043.jpg\",\"1571909045.jpg\",\"1571909047.jpg\"]}}', '2019-10-24 09:24:10', '2019-10-24 09:17:00'),
(103, 'floor Grit Paint', 2, 2, 16, '2019-10-24 00:00:00', '3:15 PM', 'NYC, NY, USA', '1234', '123', 'New York', 'NY', '', 'United States', '40.71277530', '-74.00597280', 1, 1, '40.712531,-74.005808|40.712338,-74.005853|40.712134,-74.005776|40.712134,-74.005593|40.712399,-74.005363|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0���(_�R�n1?74[D@X�B�_�R�Z�>�-[D@��L�^�R�Q/�4\'[D@���[�R�Q/�4\'[D@�f\r�W�R��Y��/[D@���(_�R�n1?74[D@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 03:08:00 PM\",\"comments\":\"floor cleaning service\\nNote: generated\",\"driverSignature\":\"1571909897.jpg\",\"workImage\":[\"1571909891.jpg\",\"1571909893.jpg\",\"1571909894.jpg\"]}}', '2019-10-24 09:38:19', '2019-10-24 09:28:23'),
(104, 'Floor Gritting', 4, 2, 16, '2019-10-24 00:00:00', '3:15 PM', 'NYC, NY, USA', '1234', '123', 'New York', 'NY', '123456', 'United States', '40.71277530', '-74.00597280', 2, 1, '40.712787,-74.00532|40.712683,-74.005432|40.712577,-74.005389|40.712522,-74.005317|40.712522,-74.005223|40.712537,-74.005151|40.712597,-74.005113|40.712626,-74.005089|40.712669,-74.005081|40.712721,-74.00507|40.71277,-74.005086|40.712798,-74.00511|40.712824,-74.005156|40.712804,-74.005169|40.712775,-74.00521|40.712787,-74.005228|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�)W�R����<[D@��u�X�R�$�P29[D@��\ZKX�R��p�5[D@9GW�R�׿�3[D@��ْU�R�׿�3[D@�\"�dT�R�P�i4[D@4�y�S�R�&�`6[D@p$�`S�R��#*T7[D@/5B?S�R���߼8[D@5S�R�q:[D@��:TS�R���<[D@|��S�R��S�<[D@4��yT�R����=[D@�|[�T�R��:V)=[D@.�R\\U�R�46<[D@�AҧU�R����<[D@�)W�R����<[D@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 03:17:00 PM\",\"comments\":\"this job is going to start right now..\",\"driverSignature\":\"1571910470.jpg\",\"workImage\":[\"1571910463.jpg\",\"1571910465.jpg\",\"1571910468.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 03:20:00 PM\",\"comments\":\"job done successfully\",\"customerSignature\":\"1571910627.jpg\",\"workImage\":[\"1571910619.jpg\",\"1571910621.jpg\",\"1571910624.jpg\"]}}', '2019-10-24 09:50:29', '2019-10-24 09:44:04'),
(105, 'MGV', 5, 7, 17, '2019-10-25 00:00:00', '3:30 PM', 'Sarwate Bus Stand, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452001', 'India', '22.71368720', '75.86856960', 1, 1, '22.714835,75.868613|22.715142,75.868913|22.714984,75.868548|22.714895,75.868258|22.714934,75.86814|22.714924,75.868012|22.714697,75.867969|22.714162,75.867958|22.713252,75.867625|22.713074,75.867207|22.712955,75.866832|22.712806,75.866821|22.712727,75.86696|22.712509,75.867486|22.712806,75.868065|22.713123,75.868108|22.713272,75.868334|22.713242,75.868741|22.713301,75.869063|22.71343,75.869492|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Y��Z��R@B	3m��6@o�EE��R@��͋�6@f�YJ��R@�)1	�6@b�\0���R@��[�6@]���R@h�$��6@F\"4���R@! _B�6@G<�͌�R@���a��6@M����R@�\"RӶ6@J+��R@}�ݮ��6@/��Q��R@�����6@��,z�R@\n�8��6@���y�R@�d:tz�6@,��E|�R@���Fu�6@9����R@\re�f�6@Xs�`��R@�d:tz�6@XY���R@��:��6@P\0�Ȓ�R@\'i���6@p��s��R@6\"��6@y�j���R@@4�䚶6@�����R@;�5Y��6@Y��Z��R@B	3m��6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 03:23:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"driverSignature\":\"1571910652.jpg\",\"workImage\":[\"1571910646.jpg\",\"1571910648.jpg\",\"1571910650.jpg\"]}}', '2019-10-24 09:50:53', '2019-10-24 09:49:07'),
(106, 'Job Ques  8', 4, 13, 15, '2019-10-24 00:00:00', '3:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722979,75.887051|22.722514,75.886954|22.722532,75.88759|22.722175,75.887477|22.722193,75.88567|22.723167,75.885704|22.723318,75.88627|22.723331,75.886858|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0���q��R@ݱ�&�6@�õ���R@��p���6@m�IF��R@@Pn���6@�Tl��R@\"��u�6@C9Ѯ�R@of���6@�{�_��R@��x!�6@B[Υ��R@��R^+�6@��H��R@�.m8,�6@���q��R@ݱ�&�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 03:36:00 PM\",\"comments\":\"well at\",\"driverSignature\":\"1571911578.jpg\",\"workImage\":[\"1571911572.jpg\",\"1571911574.jpg\",\"1571911576.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 03:59:00 PM\",\"comments\":\"Willard Fuji\",\"customerSignature\":\"1571913004.jpg\",\"workImage\":[\"1571912998.jpg\",\"1571913000.jpg\",\"1571913002.jpg\"]}}', '2019-10-24 10:30:05', '2019-10-24 10:05:08'),
(107, 'Job Ques 9', 4, 13, 15, '2019-10-24 00:00:00', '4:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.724429,75.883246|22.721579,75.884501|22.721361,75.887076|22.722707,75.886958|22.724221,75.88669|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�;\Z��R@$F�-t�6@����R@�z�f��6@ADj���R@ �O��6@=�|���R@�qS�6@-�i���R@�&�f�6@�;\Z��R@$F�-t�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-24 04:16:00 PM\",\"comments\":\"Dyno sh to sh\",\"driverSignature\":\"1571913983.jpg\",\"workImage\":[\"1571913977.jpg\",\"1571913978.jpg\",\"1571913982.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-24 04:17:00 PM\",\"comments\":\"dj ck dj CV\",\"customerSignature\":\"1571914081.jpg\",\"workImage\":[\"1571914074.jpg\",\"1571914077.jpg\",\"1571914078.jpg\"]}}', '2019-10-24 10:48:02', '2019-10-24 10:40:03'),
(108, 'CCTV Install Audit', 7, 2, 18, '2019-10-25 00:00:00', '11:15 AM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 2, 1, '54.592245,-1.297715|54.592524,-1.297039|54.592594,-1.296742|54.592434,-1.296208|54.592616,-1.29443|54.592544,-1.2944|54.592322,-1.296093|54.592168,-1.296347|54.592041,-1.296447|54.591981,-1.296707|54.592014,-1.296978|54.592087,-1.297208|54.592164,-1.297651|', '#FF1493', '\0\0\0\0\0\0\0\0\0\0\0\0\0Ou��p���%��KK@I/j�����,���KK@��t���%���KK@`��D���섗��KK@gaO;����\r�Q��KK@?�ܵ��s�V{�KK@D1y̼���Y5�KK@�HZֽ��n�8)�KK@���5?���r���KK@����O���;m��KK@�\Z�\0l���c`�KK@��-]��������KK@x��-���,��KK@Ou��p���%��KK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-25 11:18:00 AM\",\"comments\":\"starting job\\n\",\"driverSignature\":\"1571998734.jpg\",\"workImage\":[\"1571998725.jpg\",\"1571998728.jpg\",\"1571998731.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-25 11:25:00 AM\",\"comments\":\"inspection completed \",\"customerSignature\":\"1571999253.jpg\",\"workImage\":[\"1571999245.jpg\",\"1571999248.jpg\",\"1571999251.jpg\"]}}', '2019-10-25 10:27:35', '2019-10-25 10:14:44'),
(109, 'CCTV Audit 2', 7, 2, 18, '2019-10-25 00:00:00', '12:00 PM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 0, 1, '54.590223,-1.306167|54.589092,-1.307797|54.588719,-1.308227|54.587811,-1.308516|54.587457,-1.308817|54.587307,-1.309106|54.58691,-1.309428|54.586798,-1.308774|54.58681,-1.308409|54.586978,-1.308194|54.58714,-1.308302|54.5887,-1.307615|54.588445,-1.30621|54.588632,-1.306156|54.588855,-1.307368|54.589166,-1.307014|54.588905,-1.306156|54.589061,-1.305952|54.589303,-1.306692|54.59003,-1.305662|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0��A^���k,am�KK@�������*�]gKK@6�Ko���T��$[KK@�$y����R�d=KK@j.7����4g}�1KK@A�\"����2�,KK@�wG�j������KK@��}����ڭe2KK@K��F>����{�KK@�,��\\���Z�X\"KK@�������3Mg\'KK@%̴����ޓ��ZKK@�T�t<���S?o*RKK@:�w������\ZKXKK@d=������Ù_KK@U������#���iKK@:�w������1=aKK@*U��-����,�YfKK@��5����7�GnKK@IZ�����V�`\Z�KK@��A^���k,am�KK@', '', '2019-10-25 10:54:12', '2019-10-25 10:54:12'),
(110, 'Job And Loc 1', 7, 13, 15, '2019-10-30 00:00:00', '1:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.726329,75.886095|22.723835,75.883284|22.723123,75.881589|22.721539,75.881889|22.723242,75.885816|22.719303,75.883606|22.717977,75.883048|22.717898,75.885279|22.722391,75.886889|22.722687,75.887983|22.725874,75.888176|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0���ǵ�R@�\"���6@ E����R@>�$@M�6@��D�k�R@D�Ö�6@�l��p�R@�ɧǶ�6@���5��R@�Ac&�6@)#.\0��R@)��=$�6@3�ۃ�R@�G6Wͷ6@z5@i��R@#��)ȷ6@�����R@��ם�6@�����R@�>��6@�E&���R@G��ҹ6@���ǵ�R@�\"���6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 12:53:00 PM\",\"comments\":\"soda ash so em to\",\"driverSignature\":\"1572420232.jpg\",\"workImage\":[\"1572420227.png\",\"1572420229.jpg\",\"1572420231.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 12:58:00 PM\",\"comments\":\"Finish job without crash\",\"customerSignature\":\"1572420517.jpg\",\"workImage\":[\"1572420511.jpg\",\"1572420513.jpg\",\"1572420515.jpg\"]}}', '2019-10-30 07:28:38', '2019-10-30 07:20:02'),
(111, 'test job30', 7, 3, 16, '2019-10-30 00:00:00', '1:45 PM', 'Albany, NY, USA', '123', '', 'Albany', 'NY', '', 'United States', '42.65257930', '-73.75623170', 2, 1, '42.652579,-73.756249|42.652454,-73.756386|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0~�4bfpR�8�k��SE@�IӠhpR�{؜�SE@~�4bfpR�8�k��SE@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 01:40:00 PM\",\"comments\":\"testing new job\\n\",\"driverSignature\":\"1572423063.jpg\",\"workImage\":[\"1572423057.jpg\",\"1572423060.jpg\",\"1572423061.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 01:43:00 PM\",\"comments\":\"testing\\n\\n\\n\\ntestsing\\n\",\"customerSignature\":\"1572423199.jpg\",\"workImage\":[\"1572423194.jpg\",\"1572423196.jpg\",\"1572423197.jpg\"]}}', '2019-10-30 08:13:21', '2019-10-30 08:08:34'),
(112, 'Job And Crash Check 1', 7, 13, 15, '2019-10-30 00:00:00', '1:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.725478,75.879099|22.722945,75.878155|22.72342,75.880902|22.724251,75.881074|22.723024,75.881674|22.719145,75.882962|22.718036,75.883434|22.717957,75.88485|22.722351,75.883048|22.723143,75.885794|22.720886,75.884507|22.720095,75.885794|22.722113,75.886781|22.724647,75.888498|22.725359,75.886352|22.72437,75.885794|22.723816,75.882661|22.725518,75.88249|22.72718,75.882361|22.72817,75.881245|22.727814,75.879915|22.72532,75.880902|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0��s(C�R@���6@it�3�R@��k��6@�>Ȳ`�R@�E�\r2�6@��3�c�R@ew�h�6@���Xm�R@9��6@gs��R@�\0��6@*��.��R@�Y5ѷ6@f��a��R@,�̷6@3�ۃ�R@�;���6@�?Qٰ�R@�TO��6@Q�?Û�R@�$\"���6@�?Qٰ�R@\\[%X�6@�m��R@6�eܸ6@�#�&��R@�$>w��6@�/����R@�۞ ��6@�?Qٰ�R@\Z4�Op�6@��}�R@PR`L�6@CV�z�R@ʨ2���6@�E�x�R@\'N�w(�6@ްmQf�R@��_Yi�6@��P�R@)��R�6@�>Ȳ`�R@}\"O���6@��s(C�R@���6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 01:48:00 PM\",\"comments\":\"seeing all cl to\",\"driverSignature\":\"1572423535.jpg\",\"workImage\":[\"1572423529.jpg\",\"1572423531.jpg\",\"1572423533.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 01:51:00 PM\",\"comments\":\"we u she do to do\\ndo dis all this an\\nthis an\\nguard\",\"customerSignature\":\"1572423716.jpg\",\"workImage\":[\"1572423709.jpg\",\"1572423712.jpg\",\"1572423714.jpg\"]}}', '2019-10-30 08:21:57', '2019-10-30 08:16:25'),
(113, 'Job Android Crash 2', 7, 13, 15, '2019-10-30 00:00:00', '2:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.726824,75.887146|22.726586,75.888326|22.723954,75.887447|22.722885,75.889742|22.722014,75.888991|22.722885,75.887575|22.72243,75.886545|22.720748,75.885644|22.721144,75.884464|22.723459,75.886245|22.72245,75.883048|22.723637,75.882661|22.724291,75.886374|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�1\0��R@��=#�6@��KU��R@A�C��6@�{����R@�ΡU�6@+�m���R@�����6@܁:��R@A��ո6@�o_��R@�����6@�[=\'��R@7�\',�6@��+d��R@L�����6@Q����R@崧䜸6@���<��R@2��4�6@3�ۃ�R@���{�6@��}�R@�,AF@�6@��Z��R@�ɍ\"k�6@�1\0��R@��=#�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 02:08:00 PM\",\"comments\":\"g go to do\",\"driverSignature\":\"1572424700.jpg\",\"workImage\":[\"1572424694.jpg\",\"1572424696.jpg\",\"1572424698.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 02:11:00 PM\",\"comments\":\"did this an finish job on ok\",\"customerSignature\":\"1572424881.jpg\",\"workImage\":[\"1572424875.jpg\",\"1572424877.jpg\",\"1572424879.jpg\"]}}', '2019-10-30 08:41:22', '2019-10-30 08:32:59'),
(114, '30 test 30', 7, 7, 16, '2019-10-30 00:00:00', '2:15 PM', 'Memphis, TN, USA', '', '', 'Memphis', 'TN', '', 'United States', '35.14953430', '-90.04898010', 2, 1, '35.150581,-90.048852|35.150153,-90.049394|35.14983,-90.048621|35.150029,-90.048133|35.15037,-90.048229|35.150494,-90.048546|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�#d �V�3�<F�A@��sE)�V��2�68�A@�9A��V���\"�-�A@�6o��V��9x&4�A@n/�V�W&�R?�A@���`�V�C,cC�A@�#d �V�3�<F�A@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 02:12:00 PM\",\"comments\":\"testng user\",\"driverSignature\":\"1572424929.jpg\",\"workImage\":[\"1572424924.jpg\",\"1572424926.jpg\",\"1572424928.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 02:30:00 PM\",\"comments\":\"test data\\n\",\"customerSignature\":\"1572426037.jpg\",\"workImage\":[\"1572426030.jpg\",\"1572426034.jpg\",\"1572426035.jpg\"]}}', '2019-10-30 09:00:39', '2019-10-30 08:40:13'),
(115, 'Job And Crash Check Loc 1', 4, 13, 15, '2019-10-30 00:00:00', '2:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723096,75.886903|22.723192,75.887196|22.722999,75.887432|22.723051,75.887035|22.722903,75.88685|22.722611,75.886702|22.722485,75.887035|22.72246,75.887467|22.722282,75.887421|22.722467,75.885825|22.722885,75.886053|22.723271,75.886281|22.723212,75.886785|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0[����R@Q����6@I����R@��d#�6@![����R@l\ndv�6@�r.��R@W���6@I��&��R@\'.�+�6@Ӿ���R@غ���6@�r.��R@������6@�QcB��R@\r�x#�6@\'2s���R@N} y�6@�>W[��R@rp��6@ta���R@�����6@<��Ӹ�R@-%�I(�6@Ve���R@#�k$�6@[����R@Q����6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 02:46:00 PM\",\"comments\":\"Dennis and no do\",\"driverSignature\":\"1572427234.jpg\",\"workImage\":[\"1572427227.jpg\",\"1572427229.jpg\",\"1572427232.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 02:48:52 PM\",\"comments\":\"Dennis full to chill\",\"customerSignature\":\"1572427243.jpg\",\"workImage\":[\"1572427237.jpg\",\"1572427239.jpg\",\"1572427241.jpg\"]}}', '2019-10-30 09:20:44', '2019-10-30 09:13:10'),
(116, 'Job Test For Customer', 5, 13, 15, '2019-10-30 00:00:00', '5:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723071,75.88704|22.722678,75.886836|22.722579,75.887593|22.72246,75.887469|22.722591,75.886635|22.722645,75.886528|22.722769,75.886557|22.722955,75.886649|22.723059,75.886726|22.723071,75.886847|22.723106,75.886901|22.723103,75.886997|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\r\0\0\0��kC��R@��Y.�6@�:����R@��l�6@%��R��R@������6@���J��R@\r�x#�6@K����R@JbI���6@@��߼�R@0�AC��6@�B�Y��R@��c�6@��r۾�R@�z1��6@Ӡh��R@e\Z�6@�c���R@��Y.�6@�ri���R@���y�6@�����R@��8G�6@��kC��R@��Y.�6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 05:27:13 PM\",\"comments\":\"Job started.\",\"driverSignature\":\"1572436841.jpg\",\"workImage\":[\"1572436834.jpg\",\"1572436836.jpg\",\"1572436838.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 05:29:26 PM\",\"comments\":\"Job has been ended successfully.\",\"customerSignature\":\"1572436852.jpg\",\"workImage\":[\"1572436846.jpg\",\"1572436848.jpg\",\"1572436850.jpg\"]}}', '2019-10-30 12:00:54', '2019-10-30 11:41:39');
INSERT INTO `jobs` (`jobId`, `jobName`, `jobTypeId`, `customerId`, `driverId`, `startDate`, `startTime`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `jobStatus`, `geoFencing`, `points`, `polygonColor`, `boundary`, `jobReport`, `crd`, `upd`) VALUES
(117, 'Job And Crash Check 4', 4, 13, 15, '2019-10-30 00:00:00', '6:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.723113,75.886898|22.722633,75.885863|22.723021,75.886056|22.723318,75.886252|22.723328,75.886944|22.723286,75.887963|22.723078,75.888349|22.722925,75.887735|22.723167,75.887121|22.723118,75.886919|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�8����R@�O���6@\"o����R@��y��6@,�9$��R@;R}��6@�\0OZ��R@��R^+�6@�Xİ��R@�G,�6@�C�b��R@��sE)�6@̛õ��R@uʣ�6@� v���R@�u���6@�(���R@��x!�6@���G��R@ &�B�6@�8����R@�O���6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-30 06:48:16 PM\",\"comments\":\"vegg og stk stk stk chi\",\"driverSignature\":\"1572441661.jpg\",\"workImage\":[\"1572441652.jpg\",\"1572441656.jpg\",\"1572441659.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-30 06:49:54 PM\",\"comments\":\"Finished job has been successfully.\",\"customerSignature\":\"1572441674.jpg\",\"workImage\":[\"1572441666.jpg\",\"1572441668.jpg\",\"1572441671.jpg\"]}}', '2019-10-30 13:21:16', '2019-10-30 13:15:43'),
(118, 'Roof Gritting', 2, 9, 4, '2019-10-31 00:00:00', '11:15 AM', 'NYC Health + Hospitals/Coney Island, Ocean Parkway, Brooklyn, NY, USA', '2601', 'Ocean Parkway', '', 'NY', '11235', 'United States', '40.58499400', '-73.96495300', 0, 1, '40.585452,-73.965475|40.585354,-73.965504|40.585322,-73.965274|40.585435,-73.965233|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0�W�}R�[�T�JD@\nJ��}R��J?��JD@vk��}R������JD@G�`�}R��w���JD@�W�}R�[�T�JD@', '', '2019-10-31 05:38:59', '2019-10-31 05:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `jobTiming`
--

CREATE TABLE `jobTiming` (
  `jobTimeId` bigint(20) NOT NULL,
  `jobId` bigint(20) NOT NULL,
  `driverId` bigint(20) NOT NULL,
  `inDateTime` datetime NOT NULL,
  `outDateTime` datetime NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobTiming`
--

INSERT INTO `jobTiming` (`jobTimeId`, `jobId`, `driverId`, `inDateTime`, `outDateTime`, `crd`, `upd`) VALUES
(5, 54, 15, '2019-09-26 09:33:20', '2019-09-26 09:38:26', '2019-09-26 09:33:20', '2019-09-26 09:38:26'),
(6, 54, 15, '2019-09-26 09:37:16', '2019-09-26 09:38:26', '2019-09-26 09:37:16', '2019-09-26 09:38:26'),
(7, 67, 16, '2019-10-03 12:52:28', '2019-10-03 13:16:20', '2019-10-03 12:52:28', '2019-10-03 13:16:20'),
(8, 69, 16, '2019-10-03 13:18:16', '2019-10-03 13:40:33', '2019-10-03 13:18:16', '2019-10-03 13:40:33'),
(9, 71, 16, '2019-10-04 05:47:40', '2019-10-04 05:52:47', '2019-10-04 05:47:40', '2019-10-04 05:52:47'),
(10, 72, 16, '2019-10-04 06:03:46', '2019-10-04 06:06:01', '2019-10-04 06:03:46', '2019-10-04 06:06:01'),
(11, 73, 16, '2019-10-04 06:39:29', '2019-10-04 06:39:29', '2019-10-04 06:39:29', '2019-10-04 06:39:29'),
(12, 74, 16, '2019-10-04 07:08:28', '2019-10-04 07:20:49', '2019-10-04 07:08:28', '2019-10-04 07:20:49'),
(13, 74, 16, '2019-10-04 07:09:23', '2019-10-04 07:20:49', '2019-10-04 07:09:23', '2019-10-04 07:20:49'),
(14, 74, 16, '2019-10-04 07:10:05', '2019-10-04 07:20:49', '2019-10-04 07:10:05', '2019-10-04 07:20:49'),
(15, 74, 16, '2019-10-04 07:13:54', '2019-10-04 07:20:49', '2019-10-04 07:13:54', '2019-10-04 07:20:49'),
(16, 74, 16, '2019-10-04 07:19:56', '2019-10-04 07:20:49', '2019-10-04 07:19:56', '2019-10-04 07:20:49'),
(17, 75, 16, '2019-10-04 08:42:45', '2019-10-04 08:44:37', '2019-10-04 08:42:45', '2019-10-04 08:44:37'),
(18, 75, 16, '2019-10-04 08:44:24', '2019-10-04 08:44:37', '2019-10-04 08:44:24', '2019-10-04 08:44:37'),
(19, 76, 16, '2019-10-04 09:12:21', '2019-10-04 10:29:32', '2019-10-04 09:12:21', '2019-10-04 10:29:32'),
(20, 76, 16, '2019-10-04 09:19:53', '2019-10-04 10:29:32', '2019-10-04 09:19:53', '2019-10-04 10:29:32'),
(21, 76, 16, '2019-10-04 09:20:55', '2019-10-04 10:29:32', '2019-10-04 09:20:55', '2019-10-04 10:29:32'),
(22, 76, 16, '2019-10-04 09:22:45', '2019-10-04 10:29:32', '2019-10-04 09:22:45', '2019-10-04 10:29:32'),
(23, 76, 16, '2019-10-04 09:23:48', '2019-10-04 10:29:32', '2019-10-04 09:23:48', '2019-10-04 10:29:32'),
(24, 76, 16, '2019-10-04 09:24:39', '2019-10-04 10:29:32', '2019-10-04 09:24:39', '2019-10-04 10:29:32'),
(25, 76, 16, '2019-10-04 09:25:20', '2019-10-04 10:29:32', '2019-10-04 09:25:20', '2019-10-04 10:29:32'),
(26, 76, 16, '2019-10-04 09:26:10', '2019-10-04 10:29:32', '2019-10-04 09:26:10', '2019-10-04 10:29:32'),
(27, 76, 16, '2019-10-04 09:27:22', '2019-10-04 10:29:32', '2019-10-04 09:27:22', '2019-10-04 10:29:32'),
(28, 76, 16, '2019-10-04 09:28:55', '2019-10-04 10:29:32', '2019-10-04 09:28:55', '2019-10-04 10:29:32'),
(29, 76, 16, '2019-10-04 09:29:39', '2019-10-04 10:29:32', '2019-10-04 09:29:39', '2019-10-04 10:29:32'),
(30, 76, 16, '2019-10-04 09:30:28', '2019-10-04 10:29:32', '2019-10-04 09:30:28', '2019-10-04 10:29:32'),
(31, 76, 16, '2019-10-04 09:31:41', '2019-10-04 10:29:32', '2019-10-04 09:31:41', '2019-10-04 10:29:32'),
(32, 76, 16, '2019-10-04 09:32:43', '2019-10-04 10:29:32', '2019-10-04 09:32:43', '2019-10-04 10:29:32'),
(33, 76, 16, '2019-10-04 09:34:47', '2019-10-04 10:29:32', '2019-10-04 09:34:47', '2019-10-04 10:29:32'),
(34, 76, 16, '2019-10-04 09:38:30', '2019-10-04 10:29:32', '2019-10-04 09:38:30', '2019-10-04 10:29:32'),
(35, 76, 16, '2019-10-04 09:43:29', '2019-10-04 10:29:32', '2019-10-04 09:43:29', '2019-10-04 10:29:32'),
(36, 76, 16, '2019-10-04 10:01:42', '2019-10-04 10:29:32', '2019-10-04 10:01:42', '2019-10-04 10:29:32'),
(37, 76, 16, '2019-10-04 10:03:07', '2019-10-04 10:29:32', '2019-10-04 10:03:07', '2019-10-04 10:29:32'),
(38, 76, 16, '2019-10-04 10:03:53', '2019-10-04 10:29:32', '2019-10-04 10:03:53', '2019-10-04 10:29:32'),
(39, 76, 16, '2019-10-04 10:05:03', '2019-10-04 10:29:32', '2019-10-04 10:05:03', '2019-10-04 10:29:32'),
(40, 76, 16, '2019-10-04 10:05:23', '2019-10-04 10:29:32', '2019-10-04 10:05:23', '2019-10-04 10:29:32'),
(41, 76, 16, '2019-10-04 10:06:27', '2019-10-04 10:29:32', '2019-10-04 10:06:27', '2019-10-04 10:29:32'),
(42, 76, 16, '2019-10-04 10:07:28', '2019-10-04 10:29:32', '2019-10-04 10:07:28', '2019-10-04 10:29:32'),
(43, 76, 16, '2019-10-04 10:08:21', '2019-10-04 10:29:32', '2019-10-04 10:08:21', '2019-10-04 10:29:32'),
(44, 76, 16, '2019-10-04 10:18:11', '2019-10-04 10:29:32', '2019-10-04 10:18:11', '2019-10-04 10:29:32'),
(45, 76, 16, '2019-10-04 10:21:01', '2019-10-04 10:29:32', '2019-10-04 10:21:01', '2019-10-04 10:29:32'),
(46, 76, 16, '2019-10-04 10:21:55', '2019-10-04 10:29:32', '2019-10-04 10:21:55', '2019-10-04 10:29:32'),
(47, 76, 16, '2019-10-04 10:23:00', '2019-10-04 10:29:32', '2019-10-04 10:23:00', '2019-10-04 10:29:32'),
(48, 76, 16, '2019-10-04 10:24:01', '2019-10-04 10:29:32', '2019-10-04 10:24:01', '2019-10-04 10:29:32'),
(49, 76, 16, '2019-10-04 10:29:21', '2019-10-04 10:29:32', '2019-10-04 10:29:21', '2019-10-04 10:29:32'),
(50, 79, 15, '2019-10-10 12:40:03', '2019-10-11 08:38:04', '2019-10-10 12:40:03', '2019-10-11 08:38:04'),
(51, 79, 15, '2019-10-11 08:32:39', '2019-10-11 08:38:04', '2019-10-11 08:32:39', '2019-10-11 08:38:04'),
(52, 83, 18, '2019-10-15 09:28:45', '2019-10-15 09:28:50', '2019-10-15 09:28:45', '2019-10-15 09:28:50'),
(53, 86, 16, '2019-10-19 11:52:32', '2019-10-19 13:36:12', '2019-10-19 11:52:32', '2019-10-19 13:36:12'),
(54, 86, 16, '2019-10-19 11:57:01', '2019-10-19 13:36:12', '2019-10-19 11:57:01', '2019-10-19 13:36:12'),
(55, 86, 16, '2019-10-19 12:05:32', '2019-10-19 13:36:12', '2019-10-19 12:05:32', '2019-10-19 13:36:12'),
(56, 86, 16, '2019-10-19 12:12:12', '2019-10-19 13:36:12', '2019-10-19 12:12:12', '2019-10-19 13:36:12'),
(57, 86, 16, '2019-10-19 12:13:53', '2019-10-19 13:36:12', '2019-10-19 12:13:53', '2019-10-19 13:36:12'),
(58, 86, 16, '2019-10-19 12:14:33', '2019-10-19 13:36:12', '2019-10-19 12:14:33', '2019-10-19 13:36:12'),
(59, 86, 16, '2019-10-19 12:18:03', '2019-10-19 13:36:12', '2019-10-19 12:18:03', '2019-10-19 13:36:12'),
(60, 86, 16, '2019-10-19 12:18:43', '2019-10-19 13:36:12', '2019-10-19 12:18:43', '2019-10-19 13:36:12'),
(61, 86, 16, '2019-10-19 12:21:43', '2019-10-19 13:36:12', '2019-10-19 12:21:43', '2019-10-19 13:36:12'),
(62, 86, 16, '2019-10-19 12:31:44', '2019-10-19 13:36:12', '2019-10-19 12:31:44', '2019-10-19 13:36:12'),
(63, 86, 16, '2019-10-19 12:32:24', '2019-10-19 13:36:12', '2019-10-19 12:32:24', '2019-10-19 13:36:12'),
(64, 86, 16, '2019-10-19 12:34:44', '2019-10-19 13:36:12', '2019-10-19 12:34:44', '2019-10-19 13:36:12'),
(65, 86, 16, '2019-10-19 12:35:24', '2019-10-19 13:36:12', '2019-10-19 12:35:24', '2019-10-19 13:36:12'),
(66, 86, 16, '2019-10-19 12:38:25', '2019-10-19 13:36:12', '2019-10-19 12:38:25', '2019-10-19 13:36:12'),
(67, 86, 16, '2019-10-19 12:40:05', '2019-10-19 13:36:12', '2019-10-19 12:40:05', '2019-10-19 13:36:12'),
(68, 86, 16, '2019-10-19 12:42:46', '2019-10-19 13:36:12', '2019-10-19 12:42:46', '2019-10-19 13:36:12'),
(69, 86, 16, '2019-10-19 12:44:07', '2019-10-19 13:36:12', '2019-10-19 12:44:07', '2019-10-19 13:36:12'),
(70, 86, 16, '2019-10-19 12:48:17', '2019-10-19 13:36:12', '2019-10-19 12:48:17', '2019-10-19 13:36:12'),
(71, 86, 16, '2019-10-19 12:54:56', '2019-10-19 13:36:12', '2019-10-19 12:54:56', '2019-10-19 13:36:12'),
(72, 86, 16, '2019-10-19 12:56:07', '2019-10-19 13:36:12', '2019-10-19 12:56:07', '2019-10-19 13:36:12'),
(73, 86, 16, '2019-10-19 13:00:28', '2019-10-19 13:36:12', '2019-10-19 13:00:28', '2019-10-19 13:36:12'),
(74, 86, 16, '2019-10-19 13:05:49', '2019-10-19 13:36:12', '2019-10-19 13:05:49', '2019-10-19 13:36:12'),
(75, 86, 16, '2019-10-19 13:09:49', '2019-10-19 13:36:12', '2019-10-19 13:09:49', '2019-10-19 13:36:12'),
(76, 86, 16, '2019-10-19 13:10:49', '2019-10-19 13:36:12', '2019-10-19 13:10:49', '2019-10-19 13:36:12'),
(77, 86, 16, '2019-10-19 13:13:09', '2019-10-19 13:36:12', '2019-10-19 13:13:09', '2019-10-19 13:36:12'),
(78, 86, 16, '2019-10-19 13:15:30', '2019-10-19 13:36:12', '2019-10-19 13:15:30', '2019-10-19 13:36:12'),
(79, 86, 16, '2019-10-19 13:17:30', '2019-10-19 13:36:12', '2019-10-19 13:17:30', '2019-10-19 13:36:12'),
(80, 86, 16, '2019-10-19 13:18:10', '2019-10-19 13:36:12', '2019-10-19 13:18:10', '2019-10-19 13:36:12'),
(81, 86, 16, '2019-10-19 13:20:30', '2019-10-19 13:36:12', '2019-10-19 13:20:30', '2019-10-19 13:36:12'),
(82, 86, 16, '2019-10-19 13:22:10', '2019-10-19 13:36:12', '2019-10-19 13:22:10', '2019-10-19 13:36:12'),
(83, 86, 16, '2019-10-19 13:23:10', '2019-10-19 13:36:12', '2019-10-19 13:23:10', '2019-10-19 13:36:12'),
(84, 86, 16, '2019-10-19 13:24:30', '2019-10-19 13:36:12', '2019-10-19 13:24:30', '2019-10-19 13:36:12'),
(85, 86, 16, '2019-10-19 13:25:50', '2019-10-19 13:36:12', '2019-10-19 13:25:50', '2019-10-19 13:36:12'),
(86, 86, 16, '2019-10-19 13:27:30', '2019-10-19 13:36:12', '2019-10-19 13:27:30', '2019-10-19 13:36:12'),
(87, 86, 16, '2019-10-19 13:29:10', '2019-10-19 13:36:12', '2019-10-19 13:29:10', '2019-10-19 13:36:12'),
(88, 86, 16, '2019-10-19 13:31:32', '2019-10-19 13:36:12', '2019-10-19 13:31:32', '2019-10-19 13:36:12'),
(89, 86, 16, '2019-10-19 13:33:12', '2019-10-19 13:36:12', '2019-10-19 13:33:12', '2019-10-19 13:36:12'),
(90, 86, 16, '2019-10-19 13:34:32', '2019-10-19 13:36:12', '2019-10-19 13:34:32', '2019-10-19 13:36:12'),
(95, 97, 17, '2019-10-24 08:21:01', '2019-10-24 08:22:11', '2019-10-24 08:21:01', '2019-10-24 08:22:11'),
(96, 102, 17, '2019-10-24 09:21:53', '2019-10-24 09:23:17', '2019-10-24 09:21:53', '2019-10-24 09:23:17'),
(97, 105, 17, '2019-10-24 09:58:37', '0000-00-00 00:00:00', '2019-10-24 09:58:37', '2019-10-24 09:58:37'),
(98, 108, 18, '2019-10-25 10:21:17', '2019-10-25 10:27:35', '2019-10-25 10:21:17', '2019-10-25 10:27:35'),
(99, 108, 18, '2019-10-25 10:23:31', '2019-10-25 10:27:35', '2019-10-25 10:23:31', '2019-10-25 10:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobType`
--

CREATE TABLE `jobType` (
  `jobTypeId` bigint(20) NOT NULL,
  `jobType` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobType`
--

INSERT INTO `jobType` (`jobTypeId`, `jobType`, `status`, `crd`, `upd`) VALUES
(1, 'Gritting', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(2, 'Re-Gritting', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(3, 'Snow Ploughing', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(4, 'Hand Gritting', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(5, 'Manguarding Visit', 1, '2019-10-18 11:52:36', '2019-10-18 11:52:36'),
(6, 'Job type testing by PG', 1, '2019-10-21 10:02:06', '2019-10-21 10:02:06'),
(7, 'CCTV Inspection', 1, '2019-10-24 11:00:15', '2019-10-24 11:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobTypeQuestions`
--

CREATE TABLE `jobTypeQuestions` (
  `questionId` bigint(20) NOT NULL,
  `jobTypeId` bigint(20) NOT NULL,
  `question` text NOT NULL,
  `type` enum('text','radio','checkbox') NOT NULL,
  `options` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobTypeQuestions`
--

INSERT INTO `jobTypeQuestions` (`questionId`, `jobTypeId`, `question`, `type`, `options`, `status`, `crd`, `upd`) VALUES
(1, 4, 'test Question1', 'text', '', 1, '2019-10-15 13:23:25', '2019-10-15 13:23:25'),
(2, 4, 'Question 2', 'radio', '[\"opt1\",\"opt2\"]', 1, '2019-10-15 13:23:25', '2019-10-15 13:23:25'),
(3, 4, 'Question 3', 'checkbox', '[\"opt\",\"opt1\"]', 1, '2019-10-15 13:23:25', '2019-10-15 13:23:25'),
(4, 4, 'Question 4', 'radio', '[\"r1\",\"r4\"]', 1, '2019-10-18 08:23:00', '2019-10-18 08:23:00'),
(5, 5, 'Was building secure', 'radio', '[\"Yes\",\"No\"]', 1, '2019-10-18 11:52:36', '2019-10-18 11:52:36'),
(6, 5, 'Any indicents', 'text', '', 1, '2019-10-18 11:52:36', '2019-10-18 11:52:36'),
(7, 6, 'Question testing by PG', 'radio', '[\"PG- 1\",\"PG- 2\"]', 1, '2019-10-21 10:02:06', '2019-10-21 10:02:06'),
(8, 7, 'How many internal cameras are there?', 'text', '', 1, '2019-10-24 11:00:15', '2019-10-24 11:00:15'),
(9, 7, 'How many external cameras are there?', 'text', '', 1, '2019-10-24 11:00:15', '2019-10-24 11:00:15'),
(10, 7, 'What brand are the cameras?', 'text', '', 1, '2019-10-24 11:00:15', '2019-10-24 11:00:15'),
(11, 7, 'What model are the camera?', 'text', '', 1, '2019-10-24 11:00:15', '2019-10-24 11:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `countryId` int(11) NOT NULL DEFAULT '0',
  `stateName` varchar(100) NOT NULL,
  `createdAt` int(11) NOT NULL DEFAULT '1540543741',
  `updatedAt` int(11) NOT NULL DEFAULT '1540543741'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `countryId`, `stateName`, `createdAt`, `updatedAt`) VALUES
(1, 0, 'AL', 1540543741, 1540543741),
(2, 0, 'AK', 1540543741, 1540543741),
(3, 0, 'AS', 1540543741, 1540543741),
(4, 0, 'AZ', 1540543741, 1540543741),
(5, 0, 'AR', 1540543741, 1540543741),
(6, 0, 'CA', 1540543741, 1540543741),
(7, 0, 'CO', 1540543741, 1540543741),
(8, 0, 'CT', 1540543741, 1540543741),
(9, 0, 'DE', 1540543741, 1540543741),
(10, 0, 'DC', 1540543741, 1540543741),
(11, 0, 'FM', 1540543741, 1540543741),
(12, 0, 'FL', 1540543741, 1540543741),
(13, 0, 'GA', 1540543741, 1540543741),
(14, 0, 'GU', 1540543741, 1540543741),
(15, 0, 'HI', 1540543741, 1540543741),
(16, 0, 'ID', 1540543741, 1540543741),
(17, 0, 'IL', 1540543741, 1540543741),
(18, 0, 'IN', 1540543741, 1540543741),
(19, 0, 'IA', 1540543741, 1540543741),
(20, 0, 'KS', 1540543741, 1540543741),
(21, 0, 'KY', 1540543741, 1540543741),
(22, 0, 'LA', 1540543741, 1540543741),
(23, 0, 'ME', 1540543741, 1540543741),
(24, 0, 'MH', 1540543741, 1540543741),
(25, 0, 'MD', 1540543741, 1540543741),
(26, 0, 'MA', 1540543741, 1540543741),
(27, 0, 'MI', 1540543741, 1540543741),
(28, 0, 'MN', 1540543741, 1540543741),
(29, 0, 'MS', 1540543741, 1540543741),
(30, 0, 'MO', 1540543741, 1540543741),
(31, 0, 'MT', 1540543741, 1540543741),
(32, 0, 'NE', 1540543741, 1540543741),
(33, 0, 'NV', 1540543741, 1540543741),
(34, 0, 'NH', 1540543741, 1540543741),
(35, 0, 'NJ', 1540543741, 1540543741),
(36, 0, 'NM', 1540543741, 1540543741),
(37, 0, 'NY', 1540543741, 1540543741),
(38, 0, 'NC', 1540543741, 1540543741),
(39, 0, 'ND', 1540543741, 1540543741),
(40, 0, 'MP', 1540543741, 1540543741),
(41, 0, 'OH', 1540543741, 1540543741),
(42, 0, 'OK', 1540543741, 1540543741),
(43, 0, 'OR', 1540543741, 1540543741),
(44, 0, 'PW', 1540543741, 1540543741),
(45, 0, 'PA', 1540543741, 1540543741),
(46, 0, 'PR', 1540543741, 1540543741),
(47, 0, 'RI', 1540543741, 1540543741),
(48, 0, 'SC', 1540543741, 1540543741),
(49, 0, 'SD', 1540543741, 1540543741),
(50, 0, 'TN', 1540543741, 1540543741),
(51, 0, 'TX', 1540543741, 1540543741),
(52, 0, 'UT', 1540543741, 1540543741),
(53, 0, 'VT', 1540543741, 1540543741),
(54, 0, 'VI', 1540543741, 1540543741),
(55, 0, 'VA', 1540543741, 1540543741),
(56, 0, 'WA', 1540543741, 1540543741),
(57, 0, 'WV', 1540543741, 1540543741),
(58, 0, 'WI', 1540543741, 1540543741),
(59, 0, 'WY', 1540543741, 1540543741);

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
  `userType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Customer,2:Driver',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active ,0:Inactive',
  `authToken` text NOT NULL,
  `passToken` text NOT NULL,
  `deviceType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:Web,1:Android,2:IOS',
  `deviceToken` text NOT NULL,
  `verifyEmail` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Verify',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `email`, `password`, `profileImage`, `contactNumber`, `userType`, `status`, `authToken`, `passToken`, `deviceType`, `deviceToken`, `verifyEmail`, `crd`, `upd`) VALUES
(2, 'Lucid Technology Solutions', 'dean@lucidgrp.co.uk', '$2y$10$D0P1t9s9/4WPJSAsV3iDTOybjvlE0bTcYjdUQpMwcGgcaTqQFitJW', '', '(078) 091-4339', 1, 1, 'f8b7b211560b1cdfc22fcfa3b01592497995557c', '5a1c838901f5da5e3fc1fa67da0baf00086e9736', 0, '', 0, '2019-08-06 12:54:46', '2019-08-06 12:54:46'),
(3, 'Test', 'test@test.com', '$2y$10$RTG0LIJMlWZc0/0bGSvD..LO2SAIA9FAE7CwffXp9ztNA1Wlbcmey', '', '(111) 111-1111', 1, 1, 'b09410a560965a26f93fdf4030769253bb8692c0', '14eec229d720fae843961869b2f7a675c9d2ff0b', 2, '', 0, '2019-08-07 07:22:17', '2019-09-11 07:18:52'),
(4, 'Driver', 'test.otc@gmail.com', '$2y$10$RTG0LIJMlWZc0/0bGSvD..LO2SAIA9FAE7CwffXp9ztNA1Wlbcmey', 'XU8jpmeJMFV2DsAi.jpg', '(353) 566-5466', 2, 1, '18ecb35d9318a044489d44b47bae87527d74c2b7', '4c9b37a33130ead6c7064acd2db18edf970ae326', 2, '', 0, '2019-08-07 12:50:35', '2019-09-17 09:37:57'),
(5, 'Test new', 'test01@yopmail.com', '$2y$10$h54DIf6oqpKvmSGtqrFnpeBKiA/OEU6mA07cBtqzC.ffBcQZXRsbq', '', '(676) 756-7463', 1, 1, '3ee10ab9ec27b7e4aca614bfada28aa609c2759d', 'ac782d6ccf6495f88a62379cb1136099df8429c2', 0, '', 0, '2019-08-08 13:17:22', '2019-08-09 09:44:47'),
(7, 'Test new user', 'tester@yopmail.com', '$2y$10$eZGSLT71sE.oXirJpsLFGevQh8RQj3kD26uKaZme89uo9z57Y/BUu', '', '(111) 111-1111', 1, 1, 'ff19e478bb06d44ae01ef474ddaa27212678514a', '18d367d67fd4cef90d7da3acc281fb1256ea7dec', 0, '', 0, '2019-08-09 09:49:55', '2019-08-10 08:20:22'),
(9, 'customer', 'c@admin.com', '$2y$10$4xSYvqebNM6b79XXw3Dtr.XpXHXpXWGpY19ZLGA7svm1HTLakMxIW', '', '(242) 343-3344', 1, 1, 'cb9edb3da1c40fbdcedd85908474430c7abdbb46', 'c78169852517ba8704c355d398372381324f4141', 2, '', 0, '2019-08-10 08:20:57', '2019-09-11 06:13:23'),
(10, '123456789012345678901234567890', 'a@yopmail.com', '$2y$10$amNW5UwcsHYVIs4NG0E29OYSc5gphEexW5IYt46gyneDVCFDvPd32', '', '(132) 313-2132', 1, 1, '427ec5f901b85edf06ebfdc1e5556de284cd827a', 'b00801714bb7710439fc11302b9f1d4a0b9a3049', 0, '', 0, '2019-08-10 10:26:47', '2019-08-22 12:26:27'),
(11, 'Test', 'pg@gmail.com', '$2y$10$zWRXIdrrpc.BXomypS1NA..7OchyaWeGlOSbdd1bmoa2v6prbtPyS', '', '(121) 212-1111', 1, 1, '7bd20bcadf2fe4eedc4c3b0fdc6817393daf87b6', 'c75d3a26ebd766c57644aae11e1bc19d8d8b3628', 0, '', 0, '2019-08-21 13:32:57', '2019-08-21 13:32:57'),
(13, 'Ved Sharma', 'ved@gmail.com', '$2y$10$4dvEJwNbe0cmwL8iYxrcpefUmIZ6EjYgxSeAn1EIGyw6khd/NHGIe', '', '(123) 456-7890', 1, 1, '3485a9fa47bccfd011aaa10fb3ded02857f93162', '5d729aa707af9b4c51a199799a4bbdcd7ba17212', 1, '', 0, '2019-09-11 06:13:14', '2019-10-30 13:10:36'),
(14, 'Yarm Computers Ltd', 'dean@yc.uk.com', '$2y$10$DxFpzfLJxbQkDGjVCTKrJ.CAR.IgWf144Tj5WBxcg.pA4VHP7cRG6', '', '(016) 427-8692', 1, 1, '05deb206af19ef93f0f49c4c76e7f4ce52df6ded', '179842a26a6eadc9ff417acb25a1a24b7d115136', 0, '', 0, '2019-09-17 08:16:32', '2019-09-17 08:16:32'),
(15, 'New Driver', 'Newdriver@gmail.com', '$2y$10$2FNDQ/f8FUqEF3guLx.jUehmRVoaGbsmVGCiTDSTspHwbFsB0HkhG', 'KDuUgWPJ04vSVHks.png', '(123) 456-7890', 2, 1, '0dffab8f2d8fcc4470bc6be6cf15bfb09c296896', '5009cf96bbf30938ec104429d082472b8ab31c3b', 1, '', 0, '2019-09-17 09:35:38', '2019-10-31 05:40:10'),
(16, 'NKP', 'nkp.otc@gmail.com', '$2y$10$U.4lTVxGBvcJNVKcppkkvOVSQc5clbcyzd0ydkRTpClGeUPojSp62', '', '(12345) 678900', 2, 1, 'bfd1df844556bf54edc46e9c861ff67e8f7a7c75', '', 1, '98765432456hcbcgfbccvbcbcbc', 0, '2019-09-19 08:32:25', '2019-10-31 05:40:10'),
(17, 'Ved', 'otc.ved@gmail.com', '$2y$10$SzXO0oW0GfasB8ep.u9v/u0jyd0IuXwUjTED25dZFBqZh/4l1Axhu', '', '(12345) 678900', 2, 1, '84d31bb01bdee93422fb27112d5c5b782e35acc2', '4265825e6a9091e3883a8aac6c65daa3a78f9cfa', 2, '(null)', 0, '2019-09-23 12:47:28', '2019-09-27 09:25:33'),
(18, 'James Laville', 'james.laville@lucidgrp.co.uk', '$2y$10$1Xc.QO.q3dKjYrIiJcHaxeTRlulyizMyQJeoP5d5DfF8GHQMnwxF2', '', '(01642) 792567', 2, 1, '3864651667e4cc084bac1c98a0e9bbf2d81dc4e7', '4510feb6f53fb108dbb093dd19b7b2a9bc220ce1', 1, '', 0, '2019-10-03 11:29:07', '2019-10-30 06:48:36'),
(19, 'test otc', 'testotc@gmail.com', '$2y$10$tIhgepbqG.PVq8x9SI6MzeAi6KC3t7ZWQUBsAifj9n.wVbMJZnDGK', '', '(34535) 435345', 1, 0, '5a912c98ffdbead619331bc24227f07063077dde', '496b7972aed450184875a944864901dfe35effdf', 0, '', 0, '2019-10-04 06:31:26', '2019-10-23 10:16:39'),
(20, 'Test custo', 'custo@yopmail.com', '$2y$10$MTbyau6trw.EbyZ9tcTrGe2otxmB7eeFYkb9hkgQoOEoabzmpoXvG', '', '(12345) 666666', 1, 1, '3d733afdb46f537f9c0aebae2b1f3988efbf8937', 'a89e94f207f0a93893bfeca91c18db67af349fce', 0, '', 0, '2019-10-24 08:50:27', '2019-10-24 09:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleColors`
--

CREATE TABLE `vehicleColors` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `createdAt` int(11) NOT NULL DEFAULT '1548808923',
  `updatedAt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleColors`
--

INSERT INTO `vehicleColors` (`id`, `color`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Almond', 1, 1548808923, 0),
(2, 'Apricot', 1, 1548808923, 0),
(3, 'Black', 1, 1548808923, 0),
(4, 'Blue', 1, 1548808923, 0),
(5, 'Blue Gray', 1, 1548808923, 0),
(6, 'Blue Green', 1, 1548808923, 0),
(7, 'Brick Red', 1, 1548808923, 0),
(8, 'Brown', 1, 1548808923, 0),
(9, 'Burnt Orange', 1, 1548808923, 0),
(10, 'Copper', 1, 1548808923, 0),
(11, 'Desert Sand', 1, 1548808923, 0),
(12, 'Forest Green', 1, 1548808923, 0),
(13, 'Gold', 1, 1548808923, 0),
(14, 'Grey', 1, 1548808923, 0),
(15, 'Green', 1, 1548808923, 0),
(16, 'Green Blue', 1, 1548808923, 0),
(17, 'Green Yellow', 1, 1548808923, 0),
(18, 'Lavender', 1, 1548808923, 0),
(19, 'Maroon', 1, 1548808923, 0),
(20, 'Metallic Blue', 1, 1548808923, 0),
(21, 'Metallic Grey', 1, 1548808923, 0),
(22, 'Metallic Red', 1, 1548808923, 0),
(23, 'Metallic Silver', 1, 1548808923, 0),
(24, 'Metallic White', 1, 1548808923, 0),
(25, 'Midnight Blue', 1, 1548808923, 0),
(26, 'Mulberry', 1, 1548808923, 0),
(27, 'Navy Blue', 1, 1548808923, 0),
(28, 'Olive Green', 1, 1548808923, 0),
(29, 'Orange', 1, 1548808923, 0),
(30, 'Orange Red', 1, 1548808923, 0),
(31, 'Orange Yellow', 1, 1548808923, 0),
(32, 'Pacific Blue', 1, 1548808923, 0),
(33, 'Plum', 1, 1548808923, 0),
(34, 'Purple', 1, 1548808923, 0),
(35, 'Red', 1, 1548808923, 0),
(36, 'Red Orange', 1, 1548808923, 0),
(37, 'Robin\'s Egg Blue', 1, 1548808923, 0),
(38, 'Royal Purple', 1, 1548808923, 0),
(39, 'Salmon', 1, 1548808923, 0),
(40, 'Scarlet', 1, 1548808923, 0),
(41, 'Sea Green', 1, 1548808923, 0),
(42, 'Silver', 1, 1548808923, 0),
(43, 'Sky Blue', 1, 1548808923, 0),
(44, 'Tan', 1, 1548808923, 0),
(45, 'Teal Blue', 1, 1548808923, 0),
(46, 'Turquoise Blue', 1, 1548808923, 0),
(47, 'Violet', 1, 1548808923, 0),
(48, 'White', 1, 1548808923, 0),
(49, 'Yellow', 1, 1548808923, 0),
(50, 'Yellow Green', 1, 1548808923, 0),
(51, 'Yellow Orange', 1, 1548808923, 0),
(52, 'Yellow Other', 1, 1548808923, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicleHistory`
--

CREATE TABLE `vehicleHistory` (
  `historyId` bigint(20) NOT NULL,
  `vehicleId` bigint(20) NOT NULL,
  `vjobTypeId` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `attachment` text NOT NULL,
  `fileType` enum('image','application') NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleHistory`
--

INSERT INTO `vehicleHistory` (`historyId`, `vehicleId`, `vjobTypeId`, `date`, `attachment`, `fileType`, `status`, `crd`, `upd`) VALUES
(1, 5, 1, '2019-09-30', '1569832600.pdf', 'application', 1, '2019-09-30 08:36:42', '2019-09-30 08:36:42'),
(2, 5, 3, '2019-09-18', '1569832675.png', 'image', 1, '2019-09-30 08:37:57', '2019-09-30 08:37:57'),
(3, 5, 1, '2019-10-21', '1571399757.pdf', 'application', 1, '2019-10-18 11:56:00', '2019-10-18 11:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleJobType`
--

CREATE TABLE `vehicleJobType` (
  `vjobTypeId` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleJobType`
--

INSERT INTO `vehicleJobType` (`vjobTypeId`, `type`, `status`, `crd`, `upd`) VALUES
(1, 'MOT', 1, '2019-09-26 09:02:43', '2019-09-26 09:02:43'),
(2, 'SERVICE', 1, '2019-09-26 09:02:43', '2019-09-26 09:02:43'),
(3, 'REPAIR', 1, '2019-09-26 09:02:57', '2019-09-26 09:02:57'),
(4, 'OTHER', 1, '2019-09-26 09:02:57', '2019-09-26 09:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicleId` bigint(20) NOT NULL,
  `year` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `vin` text NOT NULL,
  `plate` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active,0:Inactive',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicleId`, `year`, `manufacturer`, `model`, `vin`, `plate`, `color`, `state`, `status`, `crd`, `upd`) VALUES
(4, '2012', 'Daewoo', 'MO3', 'V1234', 'A212', 'Burnt Orange', 'CA', 1, '2019-08-08 09:28:58', '2019-08-08 09:28:58'),
(5, '2012', 'Ford', 'A', 'VINW', '323AD', 'Blue', 'AR', 1, '2019-08-09 09:44:45', '2019-08-08 09:41:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignVehicle`
--
ALTER TABLE `assignVehicle`
  ADD PRIMARY KEY (`assignVehicleId`),
  ADD KEY `vehicleId` (`vehicleId`);

--
-- Indexes for table `carManufacturers`
--
ALTER TABLE `carManufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerAddress`
--
ALTER TABLE `customerAddress`
  ADD PRIMARY KEY (`addressId`),
  ADD KEY `userId` (`customerId`);

--
-- Indexes for table `customerMeta`
--
ALTER TABLE `customerMeta`
  ADD PRIMARY KEY (`customerMetaId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `driverMeta`
--
ALTER TABLE `driverMeta`
  ADD PRIMARY KEY (`driverMetaId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `jobQuestionAnswer`
--
ALTER TABLE `jobQuestionAnswer`
  ADD PRIMARY KEY (`answerId`),
  ADD KEY `jobId` (`jobId`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `jobTypeId` (`jobTypeId`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobId`),
  ADD KEY `jobTypeId` (`jobTypeId`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `driverId` (`driverId`);

--
-- Indexes for table `jobTiming`
--
ALTER TABLE `jobTiming`
  ADD PRIMARY KEY (`jobTimeId`),
  ADD KEY `jobId` (`jobId`),
  ADD KEY `driverId` (`driverId`);

--
-- Indexes for table `jobType`
--
ALTER TABLE `jobType`
  ADD PRIMARY KEY (`jobTypeId`);

--
-- Indexes for table `jobTypeQuestions`
--
ALTER TABLE `jobTypeQuestions`
  ADD PRIMARY KEY (`questionId`),
  ADD KEY `jobTypeId` (`jobTypeId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicleColors`
--
ALTER TABLE `vehicleColors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicleHistory`
--
ALTER TABLE `vehicleHistory`
  ADD PRIMARY KEY (`historyId`),
  ADD KEY `vjobTypeId` (`vjobTypeId`),
  ADD KEY `vehicleId` (`vehicleId`);

--
-- Indexes for table `vehicleJobType`
--
ALTER TABLE `vehicleJobType`
  ADD PRIMARY KEY (`vjobTypeId`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignVehicle`
--
ALTER TABLE `assignVehicle`
  MODIFY `assignVehicleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carManufacturers`
--
ALTER TABLE `carManufacturers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `customerAddress`
--
ALTER TABLE `customerAddress`
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customerMeta`
--
ALTER TABLE `customerMeta`
  MODIFY `customerMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `driverMeta`
--
ALTER TABLE `driverMeta`
  MODIFY `driverMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobQuestionAnswer`
--
ALTER TABLE `jobQuestionAnswer`
  MODIFY `answerId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `jobTiming`
--
ALTER TABLE `jobTiming`
  MODIFY `jobTimeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `jobType`
--
ALTER TABLE `jobType`
  MODIFY `jobTypeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobTypeQuestions`
--
ALTER TABLE `jobTypeQuestions`
  MODIFY `questionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vehicleColors`
--
ALTER TABLE `vehicleColors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `vehicleHistory`
--
ALTER TABLE `vehicleHistory`
  MODIFY `historyId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicleJobType`
--
ALTER TABLE `vehicleJobType`
  MODIFY `vjobTypeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignVehicle`
--
ALTER TABLE `assignVehicle`
  ADD CONSTRAINT `assignVehicle_ibfk_1` FOREIGN KEY (`vehicleId`) REFERENCES `vehicles` (`vehicleId`) ON DELETE CASCADE;

--
-- Constraints for table `customerMeta`
--
ALTER TABLE `customerMeta`
  ADD CONSTRAINT `customerMeta_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driverMeta`
--
ALTER TABLE `driverMeta`
  ADD CONSTRAINT `driverMeta_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobQuestionAnswer`
--
ALTER TABLE `jobQuestionAnswer`
  ADD CONSTRAINT `jobQuestionAnswer_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `jobs` (`jobId`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobQuestionAnswer_ibfk_2` FOREIGN KEY (`jobTypeId`) REFERENCES `jobType` (`jobTypeId`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobQuestionAnswer_ibfk_3` FOREIGN KEY (`questionId`) REFERENCES `jobTypeQuestions` (`questionId`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`jobTypeId`) REFERENCES `jobType` (`jobTypeId`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`driverId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobTypeQuestions`
--
ALTER TABLE `jobTypeQuestions`
  ADD CONSTRAINT `jobTypeQuestions_ibfk_1` FOREIGN KEY (`jobTypeId`) REFERENCES `jobType` (`jobTypeId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

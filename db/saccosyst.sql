-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 02:11 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `saccosyst`
--

-- --------------------------------------------------------

--
-- Table structure for table `lend_admin`
--

CREATE TABLE IF NOT EXISTS `lend_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `rdate` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lend_admin`
--

INSERT INTO `lend_admin` (`id`, `username`, `password`, `rdate`) VALUES
(1, 'ambet', '7ab14eb0555f896b51565a9324119084', '2011-09-19 17:28:38'),
(3, 'gibson', '46ac8338e68f5db86c47c36d40ca48750e452caa', NULL),
(4, 'simon', 'b5d6a407d63905129d513e05563c8941', '2017-06-06 02:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `lend_borrower`
--

CREATE TABLE IF NOT EXISTS `lend_borrower` (
  `id` int(11) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_cell` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `income` varchar(45) DEFAULT NULL,
  `civil_status` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `employment_status` varchar(45) DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `mi` varchar(45) DEFAULT NULL,
  `rdate` datetime DEFAULT NULL,
  `birth_date` varchar(45) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lend_borrower`
--

INSERT INTO `lend_borrower` (`id`, `company`, `address`, `phone_cell`, `email`, `income`, `civil_status`, `sex`, `age`, `employment_status`, `job_title`, `fname`, `lname`, `mi`, `rdate`, `birth_date`) VALUES
(1, 'JKUAT', 'Thika,6200-2000', '1234567', 'kamau@gmail.com', '10000', 'Married', NULL, '25', 'Employed', 'Programmer', 'Kamau', 'Mzito', 'Wetu', '2011-09-22 19:43:46', 'March 23, 1986'),
(2, 'Barclays', 'Nairobi 6200-200', '123456789', 'Kariuki@gmail.com', '', '', NULL, '24', 'Unemployed', '', 'Kariuki', 'John', 'Mudavadi', '2011-09-22 20:13:10', 'Oct. 28, 1992'),
(3, '', 'Ruiru,0200-6200', '123456', 'brenda@gmail.com', '', 'Married', NULL, '25', 'Employed', '', 'Brenda', 'Ondiso', 'Omondo', '2011-11-24 15:48:59', 'March 23, 1986'),
(4, 'JKUAT', 'Address 6200-00200', '123456', 'lambert@outsource2northstar.com', '', '', NULL, '25', 'Unemployed', '', 'Simon', 'Mwangi', 'Njoroge', '2011-11-24 15:53:22', 'March 23, 1986'),
(5, '', '123456', '123456', 'sasa@gmail.com', '', 'Married', NULL, '22', 'JKUAT', '', 'Sasa', 'Sasa', 'Sasa', '2017-06-06 02:29:22', '1/10/1992');

-- --------------------------------------------------------

--
-- Table structure for table `lend_borrower_loans`
--

CREATE TABLE IF NOT EXISTS `lend_borrower_loans` (
  `id` int(11) NOT NULL,
  `borrower_id` int(11) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'ACTIVE',
  `loan_date` date DEFAULT NULL,
  `loan_amount` float DEFAULT NULL,
  `loan_months` varchar(100) NOT NULL,
  `loan_amount_interest` float DEFAULT NULL,
  `loan_amount_term` float DEFAULT NULL,
  `loan_amount_total` float DEFAULT NULL,
  `next_payment_id` int(11) DEFAULT NULL,
  `rdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lend_borrower_loans`
--

INSERT INTO `lend_borrower_loans` (`id`, `borrower_id`, `loan_id`, `status`, `loan_date`, `loan_amount`, `loan_months`, `loan_amount_interest`, `loan_amount_term`, `loan_amount_total`, `next_payment_id`, `rdate`) VALUES
(24, 2, 8, 'CLOSED', NULL, 20000, '', 250, 1916.67, 23000, 145, '2011-11-16 05:56:04'),
(23, 1, 8, 'CLOSED', NULL, 25000, '', 312.5, 2395.83, 28750, 133, '2011-11-16 05:50:32'),
(22, 2, 8, 'CLOSED', NULL, 30000, '', 375, 2875, 34500, 121, '2011-11-09 06:39:10'),
(25, 1, 8, 'CLOSED', '0000-00-00', 25000, '', 312.5, 2395.83, 28750, 157, '2011-11-18 05:33:51'),
(26, 1, 8, 'CLOSED', '0000-00-00', 20000, '', 250, 1916.67, 23000, 169, '2011-11-18 05:39:30'),
(27, 1, 8, 'CLOSED', '0000-00-00', 20000, '', 250, 1916.67, 23000, 181, '2011-11-18 06:14:24'),
(28, 2, 8, 'ACTIVE', '0000-00-00', 100000, '', 1250, 9583.33, 115000, 193, '2011-11-18 06:44:46'),
(29, 3, 8, 'ACTIVE', '0000-00-00', 10000, '', 125, 958.33, 11500, 205, '2011-11-24 09:37:14'),
(30, 3, 8, 'ACTIVE', '0000-00-00', 15000, '', 187.5, 1437.5, 17250, 217, '2011-11-24 09:38:23'),
(31, 5, 8, 'ACTIVE', '2017-06-07', 2000, '1', 25, 1025, 2050, NULL, '2017-06-05 23:33:46'),
(32, 5, 8, 'ACTIVE', '2017-06-07', 2000, '1', 25, 1025, 2050, NULL, '2017-06-05 23:34:26'),
(33, 5, 8, 'ACTIVE', '2017-06-07', 2000, '1', 25, 1025, 2050, 229, '2017-06-05 23:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `lend_borrower_loan_settings`
--

CREATE TABLE IF NOT EXISTS `lend_borrower_loan_settings` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `borrower_loan_id` int(11) DEFAULT NULL,
  `lname` varchar(90) DEFAULT NULL,
  `interest` float DEFAULT NULL,
  `months` varchar(25) NOT NULL,
  `terms` varchar(45) DEFAULT NULL,
  `frequency` varchar(45) DEFAULT NULL,
  `late_fee` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lend_borrower_loan_settings`
--

INSERT INTO `lend_borrower_loan_settings` (`id`, `loan_id`, `borrower_loan_id`, `lname`, `interest`, `months`, `terms`, `frequency`, `late_fee`) VALUES
(5, 8, 24, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(4, 8, 23, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(3, 8, 22, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(6, 8, 25, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(7, 8, 26, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(8, 8, 27, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(9, 8, 28, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(10, 8, 29, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(11, 8, 30, '2.5% Interest', 2.5, '', '12', '2 Weeks', NULL),
(12, 8, 33, '2.5% Interest', 2.5, '1', '2', '2 Weeks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lend_loan`
--

CREATE TABLE IF NOT EXISTS `lend_loan` (
  `id` int(11) NOT NULL,
  `lname` varchar(90) DEFAULT NULL,
  `interest` float DEFAULT NULL,
  `terms` varchar(45) DEFAULT NULL,
  `frequency` varchar(45) DEFAULT NULL,
  `late_fee` int(11) DEFAULT NULL,
  `rdate` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lend_loan`
--

INSERT INTO `lend_loan` (`id`, `lname`, `interest`, `terms`, `frequency`, `late_fee`, `rdate`) VALUES
(8, '2.5% Interest', 2.5, '12', '2 Weeks', NULL, '2011-09-22 14:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `lend_logs`
--

CREATE TABLE IF NOT EXISTS `lend_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `rdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lend_payments`
--

CREATE TABLE IF NOT EXISTS `lend_payments` (
  `id` int(11) NOT NULL,
  `borrower_id` int(11) DEFAULT NULL,
  `borrower_loan_id` int(11) DEFAULT NULL,
  `payment_sched` date DEFAULT NULL,
  `payment_number` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` varchar(45) DEFAULT 'UNPAID',
  `rdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lend_payments`
--

INSERT INTO `lend_payments` (`id`, `borrower_id`, `borrower_loan_id`, `payment_sched`, `payment_number`, `amount`, `status`, `rdate`) VALUES
(228, 3, 30, '2012-05-06', 12, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(227, 3, 30, '2012-04-21', 11, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(226, 3, 30, '2012-04-06', 10, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(225, 3, 30, '2012-03-22', 9, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(224, 3, 30, '2012-03-07', 8, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(223, 3, 30, '2012-02-21', 7, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(222, 3, 30, '2012-02-06', 6, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(221, 3, 30, '2012-01-22', 5, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(220, 3, 30, '2012-01-07', 4, 1437.5, 'UNPAID', '2011-11-24 09:38:24'),
(219, 3, 30, '2011-12-23', 3, 1437.5, 'UNPAID', '2011-11-24 09:38:23'),
(218, 3, 30, '2011-12-08', 2, 1437.5, 'UNPAID', '2011-11-24 09:38:23'),
(217, 3, 30, '2011-11-23', 1, 1437.5, 'UNPAID', '2011-11-24 09:38:23'),
(216, 3, 29, '2012-05-07', 12, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(215, 3, 29, '2012-04-22', 11, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(214, 3, 29, '2012-04-07', 10, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(213, 3, 29, '2012-03-23', 9, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(212, 3, 29, '2012-03-08', 8, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(211, 3, 29, '2012-02-22', 7, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(210, 3, 29, '2012-02-07', 6, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(209, 3, 29, '2012-01-23', 5, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(208, 3, 29, '2012-01-08', 4, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(207, 3, 29, '2011-12-24', 3, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(206, 3, 29, '2011-12-09', 2, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(205, 3, 29, '2011-11-24', 1, 958.33, 'UNPAID', '2011-11-24 09:37:14'),
(204, 2, 28, '2012-05-13', 12, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(203, 2, 28, '2012-04-28', 11, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(202, 2, 28, '2012-04-13', 10, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(201, 2, 28, '2012-03-29', 9, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(200, 2, 28, '2012-03-14', 8, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(199, 2, 28, '2012-02-28', 7, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(198, 2, 28, '2012-02-13', 6, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(197, 2, 28, '2012-01-29', 5, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(196, 2, 28, '2012-01-14', 4, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(195, 2, 28, '2011-12-30', 3, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(194, 2, 28, '2011-12-15', 2, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(193, 2, 28, '2011-11-30', 1, 9583.33, 'UNPAID', '2011-11-18 06:44:46'),
(192, 1, 27, '2012-04-30', 12, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(191, 1, 27, '2012-04-15', 11, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(190, 1, 27, '2012-03-31', 10, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(189, 1, 27, '2012-03-16', 9, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(188, 1, 27, '2012-03-01', 8, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(187, 1, 27, '2012-02-15', 7, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(186, 1, 27, '2012-01-31', 6, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(185, 1, 27, '2012-01-16', 5, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(184, 1, 27, '2012-01-01', 4, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(183, 1, 27, '2011-12-17', 3, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(182, 1, 27, '2011-12-02', 2, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(181, 1, 27, '2011-11-17', 1, 1916.67, 'PAID', '2011-11-18 06:14:24'),
(180, 1, 26, '2012-05-15', 12, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(179, 1, 26, '2012-04-30', 11, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(178, 1, 26, '2012-04-15', 10, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(177, 1, 26, '2012-03-31', 9, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(176, 1, 26, '2012-03-16', 8, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(175, 1, 26, '2012-03-01', 7, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(174, 1, 26, '2012-02-15', 6, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(173, 1, 26, '2012-01-31', 5, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(172, 1, 26, '2012-01-16', 4, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(171, 1, 26, '2012-01-01', 3, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(170, 1, 26, '2011-12-17', 2, 1916.67, 'UNPAID', '2011-11-18 05:39:30'),
(169, 1, 26, '2011-12-02', 1, 1916.67, 'PAID', '2011-11-18 05:39:30'),
(168, 1, 25, '2012-04-29', 12, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(167, 1, 25, '2012-04-14', 11, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(166, 1, 25, '2012-03-30', 10, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(165, 1, 25, '2012-03-15', 9, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(164, 1, 25, '2012-02-29', 8, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(163, 1, 25, '2012-02-14', 7, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(162, 1, 25, '2012-01-30', 6, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(161, 1, 25, '2012-01-15', 5, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(160, 1, 25, '2011-12-31', 4, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(159, 1, 25, '2011-12-16', 3, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(158, 1, 25, '2011-12-01', 2, 2395.83, 'UNPAID', '2011-11-18 05:33:51'),
(157, 1, 25, '2011-11-16', 1, 2395.83, 'PAID', '2011-11-18 05:33:51'),
(156, 2, 24, '2012-05-14', 12, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(155, 2, 24, '2012-04-29', 11, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(154, 2, 24, '2012-04-14', 10, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(153, 2, 24, '2012-03-30', 9, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(152, 2, 24, '2012-03-15', 8, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(151, 2, 24, '2012-02-29', 7, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(150, 2, 24, '2012-02-14', 6, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(149, 2, 24, '2012-01-30', 5, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(148, 2, 24, '2012-01-15', 4, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(147, 2, 24, '2011-12-31', 3, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(146, 2, 24, '2011-12-16', 2, 1916.67, 'UNPAID', '2011-11-16 05:56:04'),
(145, 2, 24, '2011-12-01', 1, 1916.67, 'PAID', '2011-11-16 05:56:04'),
(144, 1, 23, '2012-05-14', 12, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(143, 1, 23, '2012-04-29', 11, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(142, 1, 23, '2012-04-14', 10, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(141, 1, 23, '2012-03-30', 9, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(140, 1, 23, '2012-03-15', 8, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(139, 1, 23, '2012-02-29', 7, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(138, 1, 23, '2012-02-14', 6, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(137, 1, 23, '2012-01-30', 5, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(136, 1, 23, '2012-01-15', 4, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(135, 1, 23, '2011-12-31', 3, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(134, 1, 23, '2011-12-16', 2, 2395.83, 'UNPAID', '2011-11-16 05:50:32'),
(133, 1, 23, '2011-12-01', 1, 2395.83, 'PAID', '2011-11-16 05:50:32'),
(121, 2, 22, '2011-11-24', 1, 2875, 'PAID', '2011-11-09 06:39:10'),
(122, 2, 22, '2011-12-09', 2, 2875, 'PAID', '2011-11-09 06:39:10'),
(123, 2, 22, '2011-12-24', 3, 2875, 'PAID', '2011-11-09 06:39:10'),
(124, 2, 22, '2012-01-08', 4, 2875, 'PAID', '2011-11-09 06:39:10'),
(125, 2, 22, '2012-01-23', 5, 2875, 'PAID', '2011-11-09 06:39:10'),
(126, 2, 22, '2012-02-07', 6, 2875, 'PAID', '2011-11-09 06:39:10'),
(127, 2, 22, '2012-02-22', 7, 2875, 'PAID', '2011-11-09 06:39:10'),
(128, 2, 22, '2012-03-08', 8, 2875, 'PAID', '2011-11-09 06:39:10'),
(129, 2, 22, '2012-03-23', 9, 2875, 'PAID', '2011-11-09 06:39:10'),
(130, 2, 22, '2012-04-07', 10, 2875, 'PAID', '2011-11-09 06:39:10'),
(131, 2, 22, '2012-04-22', 11, 2875, 'PAID', '2011-11-09 06:39:10'),
(132, 2, 22, '2012-05-07', 12, 2875, 'PAID', '2011-11-09 06:39:10'),
(229, 5, 33, '2017-06-15', 1, 1025, 'UNPAID', '2017-06-05 23:36:10'),
(230, 5, 33, '2017-06-30', 2, 1025, 'UNPAID', '2017-06-05 23:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `lend_transactions`
--

CREATE TABLE IF NOT EXISTS `lend_transactions` (
  `id` int(11) NOT NULL,
  `borrower_id` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `admin_id` varchar(45) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `rdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lend_transactions`
--

INSERT INTO `lend_transactions` (`id`, `borrower_id`, `payment`, `admin_id`, `payment_id`, `rdate`) VALUES
(4, 2, 2875, '1', 123, '2011-11-15 07:01:19'),
(2, 2, 2875, '1', 121, '2011-11-15 06:40:13'),
(3, 2, 2875, '1', 122, '2011-11-15 06:41:19'),
(5, 2, 2875, '1', 124, '2011-11-15 12:49:13'),
(6, 2, 2875, '1', 125, '2011-11-15 12:49:46'),
(7, 2, 2875, '1', 126, '2011-11-15 12:49:52'),
(8, 2, 2875, '1', 127, '2011-11-15 12:50:03'),
(9, 2, 2875, '1', 128, '2011-11-15 12:50:09'),
(10, 2, 2875, '1', 129, '2011-11-15 12:50:17'),
(11, 2, 2875, '1', 130, '2011-11-15 12:50:23'),
(12, 2, 2875, '1', 131, '2011-11-15 12:50:29'),
(14, 2, 2875, '1', 132, '2011-11-15 13:04:16'),
(15, 1, 2396, '1', 133, '2011-11-16 11:46:22'),
(16, 2, 1917, '1', 145, '2011-11-16 11:51:48'),
(17, 1, 2396, '1', 157, '2011-11-18 05:36:02'),
(18, 1, 1917, '1', 169, '2011-11-18 05:39:44'),
(19, 1, 1917, '1', 181, '2011-11-18 06:14:33'),
(20, 1, 1917, '1', 182, '2011-11-18 06:14:53'),
(21, 1, 1917, '1', 183, '2011-11-18 06:15:04'),
(22, 1, 1917, '1', 184, '2011-11-18 06:15:09'),
(23, 1, 1917, '1', 185, '2011-11-18 06:15:15'),
(24, 1, 1917, '1', 186, '2011-11-18 06:15:21'),
(25, 1, 1917, '1', 187, '2011-11-18 06:15:26'),
(26, 1, 1917, '1', 188, '2011-11-18 06:15:33'),
(27, 1, 1917, '1', 189, '2011-11-18 06:15:38'),
(28, 1, 1917, '1', 190, '2011-11-18 06:15:45'),
(29, 1, 1917, '1', 191, '2011-11-18 06:15:51'),
(30, 1, 1917, '1', 192, '2011-11-18 06:16:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lend_admin`
--
ALTER TABLE `lend_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_borrower`
--
ALTER TABLE `lend_borrower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_borrower_loans`
--
ALTER TABLE `lend_borrower_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_borrower_loan_settings`
--
ALTER TABLE `lend_borrower_loan_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_loan`
--
ALTER TABLE `lend_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_logs`
--
ALTER TABLE `lend_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_payments`
--
ALTER TABLE `lend_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_transactions`
--
ALTER TABLE `lend_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lend_admin`
--
ALTER TABLE `lend_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lend_borrower`
--
ALTER TABLE `lend_borrower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lend_borrower_loans`
--
ALTER TABLE `lend_borrower_loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `lend_borrower_loan_settings`
--
ALTER TABLE `lend_borrower_loan_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lend_loan`
--
ALTER TABLE `lend_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lend_logs`
--
ALTER TABLE `lend_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lend_payments`
--
ALTER TABLE `lend_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `lend_transactions`
--
ALTER TABLE `lend_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

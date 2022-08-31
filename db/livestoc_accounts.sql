-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 31, 2022 at 03:56 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livestoc_accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `wing_id` int(11) DEFAULT NULL,
  `code` varchar(200) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL,
  `is_petty_cash` int(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `wing_id`, `code`, `parent_id`, `title`, `type`, `description`, `balance`, `is_petty_cash`, `status`, `ts`) VALUES
(23, 1, 'A-03959', 90, 'Stipend Cost', 0, NULL, '26600000.00', 0, 1, '2022-07-28 07:33:32'),
(24, 1, 'A-03959', 90, 'Dislocation Cost', 0, NULL, '520000.00', 0, 1, '2022-07-27 10:26:28'),
(25, 1, 'A-01', 35, 'Remuneration PMU Staff', 0, NULL, '4480000.00', 0, 1, '2022-07-27 09:47:13'),
(35, 1, '', 0, 'Admin Cost', 0, NULL, '0.00', 0, 1, '2022-07-15 08:33:58'),
(36, 1, 'A-03821', 89, 'Survey of Villages', 0, NULL, '4150000.00', 0, 1, '2022-07-27 09:57:18'),
(37, 1, 'A-03821', 89, 'Remuneration', 0, NULL, '20567530.00', 0, 1, '2022-07-27 09:56:20'),
(38, 1, 'A-03821', 89, 'Rental Cost', 0, NULL, '606000.00', 0, 1, '2022-07-27 09:56:46'),
(39, 1, 'A-03821', 89, 'Lab Practical', 0, NULL, '15620000.00', 0, 1, '2022-07-27 09:54:43'),
(40, 1, 'A-03821', 89, 'Cost of Kits', 0, NULL, '5520000.00', 0, 1, '2022-07-27 09:54:18'),
(41, 1, 'A-03821', 89, 'Accommodation Charges', 0, NULL, '6360000.00', 0, 1, '2022-07-27 09:53:29'),
(42, 1, 'A-03821', 89, 'Consumable, Handouts etc', 0, NULL, '3623370.00', 0, 1, '2022-07-27 09:53:56'),
(43, 1, 'A-03821', 89, 'Refreshment Cost', 0, NULL, '12236000.00', 0, 1, '2022-07-27 09:55:57'),
(45, 1, 'A-03821', 89, 'Miscellaneous Expenses', 0, NULL, '2924460.00', 0, 1, '2022-07-27 09:55:10'),
(46, 1, 'A-03821', 89, 'Pick & Drop of Trainees', 0, NULL, '9595600.00', 0, 1, '2022-07-27 09:55:36'),
(47, 1, 'A-03821', 89, 'Training Manual Printing', 0, NULL, '2530000.00', 0, 1, '2022-07-27 10:19:58'),
(48, 1, 'A-03821', 89, 'Repair & Maintenance', 0, NULL, '820000.00', 0, 1, '2022-07-27 09:57:02'),
(52, 1, 'A-03807', 35, 'POL Charges', 0, NULL, '300000.00', 0, 1, '2022-07-27 09:58:56'),
(53, 1, 'A-03805', 35, 'Traveling Allowance', 0, NULL, '300000.00', 0, 1, '2022-07-27 10:14:14'),
(54, 1, 'A-03907', 35, 'Advertisement & Publicity', 0, NULL, '75000.00', 0, 1, '2022-07-27 09:58:04'),
(55, 1, 'A-03205', 35, 'Postage & Courier', 0, NULL, '50000.00', 0, 1, '2022-07-27 10:14:32'),
(56, 1, 'A-03901', 35, 'Office Stationary', 0, NULL, '100000.00', 0, 1, '2022-07-27 09:58:40'),
(57, 1, 'A-03202', 35, 'Telephone & Internet', 0, NULL, '100000.00', 0, 1, '2022-07-27 10:00:28'),
(58, 1, 'A-03970', 35, 'Misc Charges', 0, NULL, '150000.00', 0, 1, '2022-07-27 09:58:24'),
(59, 1, 'A-013001', 35, 'Repair & Maintenance', 0, NULL, '100000.00', 0, 1, '2022-07-27 10:00:05'),
(60, 1, 'A-03119', 89, 'Third Party Validation', 0, NULL, '1116730.00', 0, 1, '2022-07-27 10:01:35'),
(61, 2, '', 34, 'Advertisement Cost', 0, NULL, '210000.00', 0, 1, '2022-07-15 10:13:20'),
(62, 2, '', 34, 'Lecture Charges', 0, NULL, '320000.00', 0, 1, '2022-07-15 10:23:06'),
(63, 2, '', 34, 'Field Trips', 0, NULL, '300000.00', 0, 1, '2022-07-15 10:23:56'),
(64, 2, '', 34, 'Survey of Villages', 0, NULL, '5578000.00', 0, 1, '2022-07-15 10:24:20'),
(65, 2, '', 34, 'Remuneration', 0, NULL, '20716596.00', 0, 1, '2022-07-15 10:24:51'),
(66, 2, '', 34, 'Rental Cost', 0, NULL, '420000.00', 0, 1, '2022-07-15 10:26:34'),
(67, 2, '', 34, 'Practical Expenses', 0, NULL, '13660000.00', 0, 1, '2022-07-15 10:27:06'),
(68, 2, '', 34, 'Cost of Kits', 0, NULL, '22840000.00', 0, 1, '2022-07-15 10:28:00'),
(69, 2, '', 34, 'Accommodation Charges', 0, NULL, '6574800.00', 0, 1, '2022-07-15 10:28:29'),
(70, 2, '', 34, 'Consumable, Handouts etc ', 0, NULL, '3088400.00', 0, 1, '2022-07-15 10:32:11'),
(71, 2, '', 34, 'Refreshment Cost', 0, NULL, '12374000.00', 0, 1, '2022-07-15 10:34:02'),
(72, 2, '', 34, 'Miscellaneous Charges', 0, NULL, '3716832.00', 0, 1, '2022-07-15 10:47:34'),
(73, 2, '', 34, 'Pick & Drop of Trainees', 0, NULL, '12293500.00', 0, 1, '2022-07-15 10:48:12'),
(74, 2, '', 34, 'Training Manual Printing', 0, NULL, '1870000.00', 0, 1, '2022-07-15 10:49:30'),
(75, 2, '', 34, 'Repair & Maintenance', 0, NULL, '800032.00', 0, 1, '2022-07-15 10:50:18'),
(76, 2, '', 23, 'Stipend Cost', 0, NULL, '21900000.00', 0, 1, '2022-07-15 10:51:05'),
(77, 2, '', 23, 'Dislocation Cost', 0, NULL, '400000.00', 0, 1, '2022-07-15 10:51:30'),
(78, 2, '', 35, 'Remuneration PMU Staff', 0, NULL, '5003000.00', 0, 1, '2022-07-15 10:52:15'),
(79, 2, '', 35, 'Advertisement & Publicity', 0, NULL, '75000.00', 0, 1, '2022-07-15 10:53:39'),
(80, 2, '', 35, 'POL Charges', 0, NULL, '300000.00', 0, 1, '2022-07-15 10:54:00'),
(81, 2, '', 35, 'Traveling Allowance', 0, NULL, '275000.00', 0, 1, '2022-07-15 10:54:23'),
(82, 2, '', 35, 'Postage & Courier', 0, NULL, '64000.00', 0, 1, '2022-07-15 10:54:47'),
(83, 2, '', 35, 'Office Stationary', 0, NULL, '125000.00', 0, 1, '2022-07-15 10:55:08'),
(84, 2, '', 35, 'Telephone & Internet', 0, NULL, '150000.00', 0, 1, '2022-07-15 10:55:30'),
(85, 2, '', 35, 'Misc Charges', 0, NULL, '175000.00', 0, 1, '2022-07-15 10:55:55'),
(86, 2, '', 34, 'Repair & Maintenance of Equipment', 0, NULL, '125000.00', 0, 1, '2022-07-15 10:56:34'),
(87, 2, '', 35, 'Repair & Maintenance of Vehicle', 0, NULL, '125000.00', 0, 1, '2022-07-15 10:57:05'),
(88, 2, '', 34, 'Third Party Validation', 0, NULL, '1270622.00', 0, 1, '2022-07-15 10:57:40'),
(89, 1, '', 0, 'Training Cost', 0, NULL, '0.00', 0, 1, '2022-07-27 09:51:35'),
(90, 1, '', 0, 'Stipend Cost', 0, NULL, '0.00', 0, 1, '2022-07-27 09:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_type_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_type_id`, `username`, `email`, `name`, `password`, `status`) VALUES
(1, 1, 'admin', 'hassan@hotmail.com', 'Waqar', 'Account123!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE `admin_type` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `can_add` int(1) NOT NULL DEFAULT '0',
  `can_edit` int(1) NOT NULL DEFAULT '0',
  `can_delete` int(1) NOT NULL DEFAULT '0',
  `can_read` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`id`, `title`, `can_add`, `can_edit`, `can_delete`, `can_read`, `status`, `ts`) VALUES
(1, 'Administrator', 1, 1, 1, 1, 1, '2017-02-27 12:10:38'),
(3, 'Project Incharge', 0, 0, 0, 1, 1, '2021-09-27 10:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `config_type`
--

CREATE TABLE `config_type` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_type`
--

INSERT INTO `config_type` (`id`, `title`, `sortorder`) VALUES
(1, 'General Settings', 1),
(9, 'Invoice Setting', 2);

-- --------------------------------------------------------

--
-- Table structure for table `config_variable`
--

CREATE TABLE `config_variable` (
  `id` int(11) NOT NULL,
  `config_type_id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `notes` varchar(512) NOT NULL,
  `type` varchar(200) NOT NULL,
  `default_values` text NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_variable`
--

INSERT INTO `config_variable` (`id`, `config_type_id`, `title`, `notes`, `type`, `default_values`, `key`, `value`, `sortorder`) VALUES
(1, 1, 'Site URL', '', 'text', '', 'site_url', 'http://www.accounts.livestockandfisheries.com', 2),
(2, 1, 'Site Title', '', 'text', '', 'site_title', 'Fisheries Accounting', 1),
(3, 1, 'Admin Logo', '', 'file', '', 'admin_logo', 'admin_logo.png', 4),
(10, 1, 'Currency Symbol', '', 'text', '', 'currency_symbol', 'Rs', 5),
(7, 1, 'Admin Email', 'Main Email Address where all the notifications will be sent.', 'text', '', 'admin_email', 'hassan@hotmail.com', 3),
(18, 1, 'Address/Phone', '', 'editor', '', 'address_phone', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 6),
(19, 1, 'Header', '', 'editor', '', 'fees_chalan_header', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Fisheries Accounting</h1>\r\n</body>\r\n</html>', 7),
(21, 9, 'Supplier Detail', '', 'editor', '', 'supplier_detail', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>161-b, Unit # 7/D, Latifabad<br /> Hyderabad</p>\r\n</body>\r\n</html>', 8),
(22, 1, 'Employee Salary Letter', '', 'editor', '', 'salary_letter', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 9);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `wing_id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `datetime_added` datetime NOT NULL,
  `voucher_no` int(11) NOT NULL,
  `branch_name` varchar(200) DEFAULT NULL,
  `expense_category_id` varchar(100) NOT NULL,
  `major_head` int(11) NOT NULL,
  `sub_head` int(11) NOT NULL,
  `payee` varchar(50) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `income_tax` int(11) DEFAULT NULL,
  `income_tax_deducted` int(11) DEFAULT NULL,
  `cheque_amount` int(11) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `cheque_number` varchar(50) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `wing_id`, `code`, `datetime_added`, `voucher_no`, `branch_name`, `expense_category_id`, `major_head`, `sub_head`, `payee`, `details`, `amount`, `income_tax`, `income_tax_deducted`, `cheque_amount`, `cheque_date`, `cheque_number`, `added_by`, `status`, `ts`) VALUES
(2, 1, '', '2022-01-26 00:00:00', 1, 'NBP Wapda Colony Branch', '', 35, 25, 'Project Allowance of Departmental Officers', 'Project Allowance of Departmental officers for the Month of December-2021 & January-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '35484.00', 0, 0, 35484, '2022-02-02', '28806365', 1, 1, '2022-07-27 15:02:59'),
(3, 1, '', '2022-01-26 00:00:00', 2, 'NBP-Wapda Colony Branch', '', 35, 25, 'Mr. Tajamul Hassan Memon', 'Salary of Contract officer for the Month of December-2021 and January-2021 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '130000.00', 0, 0, 130000, '2022-02-02', '28806369', 1, 1, '2022-07-27 15:03:21'),
(4, 1, '', '2022-01-26 00:00:00', 3, 'NBP-Wapda Colony Branch', '', 35, 25, 'Salaries of PMU Staff', 'Salary of Contract Staff for the Month of December-2021 and January-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '395000.00', 0, 0, 395000, '2022-02-02', '28806366-67', 1, 1, '2022-07-27 15:03:38'),
(5, 1, '', '2022-02-01 00:00:00', 4, 'NBP-Wapda Colony Branch', '', 89, 37, 'Miss: Naila Channa', 'Salary of Assistant for the Month of December-2021 and January-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '55000.00', 0, 0, 55000, '2022-02-02', '28806368', 1, 1, '2022-08-14 09:27:57'),
(6, 1, '', '2022-02-01 00:00:00', 5, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Training Coordinator', 'Salary of Training Coordinators of Fisheries wing for the period of 15-12-2021 to 31-01-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '225000.00', 0, 0, 225000, '2022-02-02', '28806370-71-72', 1, 1, '2022-07-28 09:07:29'),
(7, 1, '', '2022-01-26 00:00:00', 6, 'NBP-Wapda Colony Branch', '', 89, 37, 'Mr. Abdul Sattar S/o Khan Muhammad', 'Salary of Contingent Paid worker for the Month of December-2021 and January-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad. ', '50000.00', 0, 0, 50000, '2022-02-02', '28806373', 1, 1, '2022-07-28 09:07:53'),
(8, 1, '', '2022-01-21 00:00:00', 7, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Haniya Enterprises', 'Payment of printing of Training Manuals of Mud Crab Fattening for trainees under BBSHRRDB Livestock & Fisheries Department Hyderabad', '225000.00', 5, 10125, 214875, '2022-02-02', '28806374', 1, 1, '2022-07-27 15:04:11'),
(9, 1, '', '2022-01-17 00:00:00', 8, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of Refreshment material of 50 trainees of Fish Farming Extension Technology Course in the village: Sahib Khan Jamali and Village: Haji Sikandar Ali Taluka Sakrand District Shaheed Benazirabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-02', '28806375', 1, 1, '2022-07-27 15:04:26'),
(10, 1, '', '2022-01-24 00:00:00', 9, 'NBP-Wapda Colony Branch', '', 89, 67, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming Course in village: Absani Panhwar Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-02', '28806376', 1, 1, '2022-07-27 15:04:40'),
(11, 1, '', '2022-01-21 00:00:00', 10, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Firstaid Kits for three position holder trainees of Fish Farming Extension Technology Course under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-02-02', '28806377', 1, 1, '2022-07-27 15:04:54'),
(12, 1, '', '2022-01-21 00:00:00', 11, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Haniya Enterprises', 'Payment of printing of training manuals of Fish Nursing & Culture Technology Course for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '225000.00', 5, 10125, 214875, '2022-02-02', '28806378', 1, 1, '2022-07-27 15:08:33'),
(13, 1, '', '2022-01-21 00:00:00', 12, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of the Integrated Fish Farming course in the village: Imam Bux Bhand and village: Samtani Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-02', '28806379', 1, 1, '2022-07-27 15:21:51'),
(14, 1, '', '2022-01-24 00:00:00', 13, 'NBP-Wapda Colony Branch', '', 89, 67, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming course in the village: Syed Muhallah Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-02', '28806380', 1, 1, '2022-07-27 15:23:58'),
(15, 1, '', '2022-01-18 00:00:00', 14, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Icon Enterprises & Marketing', 'Payment of Stationary Articles for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '140632.00', 5, 6328, 134304, '2022-02-02', '28806381', 1, 1, '2022-07-27 15:24:16'),
(16, 1, '', '2022-01-15 00:00:00', 15, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Haniya Enterprises', 'Payment of printing of training manuals of Fish Farming Extension Technology course for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '250000.00', 5, 11250, 238750, '2022-02-02', '28806382', 1, 1, '2022-07-28 08:35:39'),
(17, 1, '', '2022-01-21 00:00:00', 16, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming course in the village: Nariwal-01 and village: Nariwal-02 Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-02', '28806383', 1, 1, '2022-07-28 08:35:58'),
(18, 1, '', '2022-01-24 00:00:00', 17, 'NBP-Wapda Colony Branch', '', 89, 67, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming course in the village: Umeed Ali Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-02', '28806384', 1, 1, '2022-07-28 08:36:33'),
(19, 1, 'A-03821', '2022-01-17 00:00:00', 18, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Ali Enterprises & Contractor', 'Payment of Covid-19 SOPs material for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '58440.00', 5, 2630, 55810, '2022-02-02', '28806385', 1, 1, '2022-08-14 09:28:33'),
(20, 1, '', '2022-01-15 00:00:00', 19, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Haniya Enterprises', 'Payment of printing of training manuals of Fish Farming Extension Technology for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '250000.00', 5, 11250, 238750, '2022-02-02', '28806386', 1, 1, '2022-07-28 08:36:54'),
(21, 1, '', '2022-01-21 00:00:00', 20, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming course in the village: Khair Muhammad Panhwar and village: Mazhar Khan Panhwar Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-02', '28806387', 1, 1, '2022-07-28 08:37:13'),
(22, 1, '', '2022-01-24 00:00:00', 21, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming in the village: Giddu Bhag Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-02-02', '28806388', 1, 1, '2022-07-28 08:37:41'),
(23, 1, '', '2022-01-21 00:00:00', 22, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Firstaid kits for three position holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-02-02', '28806389', 1, 1, '2022-07-28 08:38:10'),
(24, 1, '', '2022-01-10 00:00:00', 23, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Hainya Enterprises', 'Payment of printing of training manuals of Fish Farming Extension Technology course for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '250000.00', 5, 11250, 238750, '2022-02-02', '28806390', 1, 1, '2022-07-28 08:38:38'),
(25, 1, '', '2022-01-17 00:00:00', 24, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in the village: Dr. Basheer Ahmed Jamali and village: Mevo Jamali Taluka Sakrand District S.B.Abad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-02', '28806391', 1, 1, '2022-07-28 08:39:02'),
(26, 1, '', '2022-01-24 00:00:00', 25, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming in village: Yousuf Thebo Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-02', '28806392', 1, 1, '2022-07-28 08:39:20'),
(27, 1, '', '2022-01-21 00:00:00', 26, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology in the village: Mevo Khan Jamali and village: Makhan Keerio Taluka Sakrand District S.B.Abad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '110000.00', 5, 4950, 105050, '2022-02-02', '28806393', 1, 1, '2022-07-28 08:39:37'),
(28, 1, '', '2022-01-10 00:00:00', 27, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Haniya Enterprises', 'Payment of printing of training manuals of Integrated Fish Farming for the trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '275000.00', 5, 12375, 262625, '2022-02-02', '28806394', 1, 1, '2022-07-28 08:39:59'),
(29, 1, '', '2022-01-17 00:00:00', 28, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material of 50 trainees of Fish Farming Extension Technology in village: Mahar Ali Jamali and Village: Makhan Keerio Taluka Sakrand District S.B.Abad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-02', '28806395', 1, 1, '2022-07-28 08:40:18'),
(30, 1, '', '2022-01-24 00:00:00', 29, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming in village: Qaim Ali Shah Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-02-02', '28806396', 1, 1, '2022-07-28 08:40:38'),
(31, 1, '', '2022-01-14 00:00:00', 30, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting trainings of Integrated Fish farming in District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '60000.00', 5, 2700, 57300, '2022-02-02', '28806397', 1, 1, '2022-07-28 08:40:56'),
(32, 1, '', '2022-01-21 00:00:00', 31, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Haniya Enterprises', 'Payment of printing of training manuals of Integrated Fish Farming for the trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '275000.00', 5, 12375, 262625, '2022-02-02', '28806398', 1, 1, '2022-07-28 08:41:14'),
(33, 1, '', '2022-01-17 00:00:00', 32, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming in village: Gudu Bhag and Village: Haji Hashim Shaikh Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-02', '28806399', 1, 1, '2022-07-28 08:41:37'),
(34, 1, '', '2022-01-21 00:00:00', 33, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming in village: Imam Bux Bhand Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-02-02', '28806400', 1, 1, '2022-07-28 08:42:10'),
(35, 1, '', '2022-01-14 00:00:00', 34, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Aquaponic Fish Culture in District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '45000.00', 5, 2025, 42975, '2022-02-03', '28806401', 1, 1, '2022-07-28 08:42:27'),
(36, 1, '', '2022-01-24 00:00:00', 35, 'NBP-Wapda Colony Branch', '', 89, 47, 'M/s: Haniya Enterprises', 'Payment of printing of training Manuals of Integrated Fish Farming for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '250000.00', 5, 11250, 238750, '2022-02-03', '28806402', 1, 1, '2022-07-28 08:42:52'),
(37, 1, '', '2022-01-21 00:00:00', 36, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Aquaponic Fish Culture in village: Qaim Ali Shah and village: Bachoo Panhwar Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-03', '28806403', 1, 1, '2022-07-28 08:43:09'),
(38, 1, '', '2022-01-21 00:00:00', 37, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical material of Integrated Fish Farming in village: Samtani Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-03', '28806404', 1, 1, '2022-07-28 08:43:29'),
(39, 1, '', '2022-01-17 00:00:00', 38, 'NBP-Wapda Colony Branch', '', 34, 45, 'M/s: Orison Corporation', 'Payment of Covid-19 SOPs material for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '87500.00', 5, 3938, 83563, '2022-02-03', '28806405', 1, 1, '2022-07-22 13:10:29'),
(40, 1, '', '2022-01-10 00:00:00', 39, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Haniya Enterprises', 'Payment of Clear Bags printed for the trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '180000.00', 5, 8100, 171900, '2022-02-03', '28806406', 1, 1, '2022-07-28 08:43:50'),
(41, 1, '', '2022-01-21 00:00:00', 40, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees in Integrated Fish Farming in village: Yousuf Thebo and village: Umeed Ali Shah Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-03', '28806407', 1, 1, '2022-07-28 08:44:14'),
(42, 1, '', '2022-01-21 00:00:00', 41, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish farming course in village: Nariwal-01 Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-03', '28806408', 1, 1, '2022-07-28 08:44:32'),
(43, 1, '', '2022-01-18 00:00:00', 42, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Icon Enterprises & Marketing', 'Payment of Stationary Articles for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '177450.00', 5, 7985, 169465, '2022-02-03', '28806409', 1, 1, '2022-07-28 08:44:49'),
(44, 1, '', '2022-01-14 00:00:00', 43, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Haniya Enterprises', 'Payment of Clear Bags/ Stationary kit for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad ', '180000.00', 5, 8100, 171900, '2022-02-03', '28806410', 1, 1, '2022-07-28 08:45:11'),
(45, 1, '', '2022-01-17 00:00:00', 44, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 25 trainees of Aquaponic Fish Culture Course in village: Saeed Muhallah Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '57500.00', 5, 2588, 54913, '2022-02-03', '28806411', 1, 1, '2022-07-28 08:45:30'),
(46, 1, '', '2022-01-21 00:00:00', 45, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical material of Integrated Fish Farming course in village: Nariwal-02 Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-03', '28806412', 1, 1, '2022-07-28 08:45:53'),
(47, 1, '', '2022-01-21 00:00:00', 46, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-02-03', '28806413', 1, 1, '2022-07-28 08:46:22'),
(48, 1, '', '2022-01-24 00:00:00', 47, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Haniya Enterprises', 'Payment of Clear bags/stationery kit for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '180000.00', 5, 8100, 171900, '2022-02-03', '28806414', 1, 1, '2022-07-28 08:46:41'),
(49, 1, '', '2022-01-17 00:00:00', 48, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming Course in village: Rab Dino Ghambhir and village: Baloo Lashari Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-03', '28806415', 1, 1, '2022-07-28 08:46:59'),
(50, 1, '', '2022-01-21 00:00:00', 49, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming in village: Mazhar Khan Panhwar Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-03', '28806416', 1, 1, '2022-07-28 08:47:15'),
(51, 1, '', '2022-01-14 00:00:00', 50, 'NBP', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting trainings of Fish Farming Extension Technology in District Shaheed Benazirabad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '60000.00', 5, 2700, 57300, '2022-02-03', '28806417', 1, 1, '2022-07-28 08:47:38'),
(52, 1, '', '2022-01-24 00:00:00', 51, 'NBP-Wapda Colony Branch', '', 34, 45, 'M/s: Haniya Enterprises', 'Payment of refreshment boxes printed in four color for disbursing in trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '90000.00', 5, 4050, 85950, '2022-02-04', '28806418', 1, 1, '2022-07-25 08:19:28'),
(53, 1, '', '2022-01-21 00:00:00', 52, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Iqbal Furniture works', 'Payment of practical expenses of Integrated Fish Farming in village: Khair Muhammad Panhwar Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-04', '28806419', 1, 1, '2022-07-28 08:48:01'),
(54, 1, '', '2022-01-24 00:00:00', 53, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of Integrated Fish Farming course under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-02-04', '28806420', 1, 1, '2022-07-28 08:48:21'),
(55, 1, '', '2022-01-21 00:00:00', 54, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology course in village: DR Basheer Jamali and village: Mahar Ali Jamali Taluka Sakrand District Shaheed Benazirabad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '110000.00', 5, 4950, 105050, '2022-02-04', '28806421', 1, 1, '2022-07-28 08:48:42'),
(56, 1, '', '2022-01-14 00:00:00', 55, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of refreshment boxes printed in four color for disbursing in trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '90000.00', 5, 4050, 85950, '2022-02-04', '28806422', 1, 1, '2022-08-14 09:29:04'),
(57, 1, '', '2022-01-18 00:00:00', 56, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Icon Enterprises & Marketing', 'Payment of Stationary Articles for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '155750.00', 5, 7009, 148741, '2022-02-04', '28806423', 1, 1, '2022-07-28 08:49:02'),
(58, 1, '', '2022-01-24 00:00:00', 57, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality kits for three position Holder Trainees of Integrated Fish Farming course under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-02-04', '28806424', 1, 1, '2022-07-28 08:49:24'),
(59, 1, '', '2022-01-21 00:00:00', 58, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology Course in Village: Haji Sikandar Jamali and Village: Sahib Khan Jamali Taluka Sakrand District Shaheed Benazirabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-02-04', '28806425', 1, 1, '2022-07-28 08:50:03'),
(60, 1, '', '2022-01-02 00:00:00', 59, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Haniya Enterprises', 'Payment of Copies with the printing of four color monogram for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '190000.00', 5, 8550, 181450, '2022-02-04', '28806426', 1, 1, '2022-07-28 08:50:23'),
(61, 1, '', '2022-01-14 00:00:00', 60, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Integrated Fish Farming course in District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '60000.00', 5, 2700, 57300, '2022-02-04', '28806427', 1, 1, '2022-07-28 08:51:04'),
(62, 1, '', '2022-01-24 00:00:00', 61, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder Trainees of Integrated Fish Farming under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-02-04', '28806428', 1, 1, '2022-07-28 08:51:22'),
(63, 1, '', '2022-01-10 00:00:00', 62, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Haniya Enterprises', 'Payment of Copies with the printing of four monogram for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '190000.00', 5, 8550, 181450, '2022-02-04', '28806430', 1, 1, '2022-07-28 08:51:48'),
(64, 1, '', '2022-01-26 00:00:00', 63, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Abdul Majeed S/o Allah Dino', 'Payment of One Month rent of Bungalow at Taluka Dadu for the period of 14-01-2022 to 14-03-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '65000.00', 0, 0, 65000, '2022-02-04', '28806429', 1, 1, '2022-07-28 08:52:12'),
(65, 1, '', '2022-01-24 00:00:00', 64, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder Trainees of Integrated Fish Farming Course under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-02-04', '28806431', 1, 1, '2022-07-28 08:52:33'),
(66, 1, '', '2021-12-13 00:00:00', 65, 'NBP-Wapda Colony Branch', '', 35, 57, 'M/s: Pakistan Tele Communication Company Limited', 'Payment for PTCL Landline No. 022-2671884 under used in PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '10500.00', 0, 0, 10500, '2022-02-04', '28806432', 1, 1, '2022-07-25 09:11:48'),
(67, 1, '', '2021-12-31 00:00:00', 66, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Al-Madina Traders Hyderabad', 'Payment of Post training follow-up of villages of Phase-XI under BBSHRRDB Livestock & Fisheries Department Hyderabad', '129832.00', 0, 0, 129832, '2022-02-04', '28806433', 1, 1, '2022-07-28 08:52:54'),
(68, 1, '', '2022-01-17 00:00:00', 67, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Haniya Enterprises', 'Payment of Copies with the printing of four color monogram for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '190000.00', 5, 8550, 181450, '2022-02-04', '28806434', 1, 1, '2022-07-28 08:53:19'),
(69, 1, '', '2022-01-25 00:00:00', 68, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Athar Ali S/o Shamsuddin', 'Payment of one month rent of Bungalow at Taluka Sakrand District Shaheed Benazirabad for the period of 12-01-2022 to 10-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '30000.00', 0, 0, 30000, '2022-02-04', '28806435', 1, 1, '2022-07-28 08:53:38'),
(70, 1, '', '2022-01-24 00:00:00', 69, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Pir Shah Murad S/o Pir Shahzad Hussain', 'Payment of one month rent of Bungalow at Taluka Bhan Saeedabad District Jamshoro for the period of 19-01-2022 to 19-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '50000.00', 0, 0, 50000, '2022-02-04', '28806437', 1, 1, '2022-07-28 08:54:00'),
(71, 1, '', '2021-12-31 00:00:00', 70, 'NBP-Wapda Colony Branch', '', 34, 59, 'M/s: M.K Enterprises & Marketing', 'Payment for repair & Maintenance of Equipment under used in PMU BBSHRRDB Livestock & Fisheries Department Hyderabad', '17500.00', 0, 0, 17500, '2022-02-04', '28806438', 1, 1, '2022-07-25 09:22:35'),
(72, 1, '', '2022-01-10 00:00:00', 71, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Hainya Enterprises', 'Payment of printed ribbons of ID Cards for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '120000.00', 5, 5400, 114600, '2022-02-04', '28806439', 1, 1, '2022-07-28 08:54:24'),
(73, 1, '', '2022-01-31 00:00:00', 72, 'NBP-Wapda Colony Branch', '', 35, 58, 'M/s: Al-Abeer Beverages Enterprises', 'Payment of Miscellaneous Expenses under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad', '6376.00', 0, 0, 6376, '2022-02-04', '28806440', 1, 1, '2022-07-25 09:26:24'),
(74, 1, '', '2022-01-31 00:00:00', 73, 'NBP-Wapda Colony Branch', '', 35, 55, 'M/s: M&P Express Logistics PVT Limited', 'Payment for Postages & Courier under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '7191.00', 0, 0, 7191, '1970-01-01', '28806441', 1, 1, '2022-07-25 09:28:07'),
(75, 1, '', '2022-02-11 00:00:00', 74, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of stipend of trainees of 144 trainees of Fish Farming Extension Technology course in six villages of District Shaheed Benazirabad for the period of 12-01-2022 to 10-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '720000.00', 0, 0, 720000, '2022-02-14', '28806442', 1, 1, '2022-07-28 09:00:32'),
(76, 1, '', '2022-02-12 00:00:00', 75, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Fish Farming Extension Technology in six villages of District Shaheed Benazirabad from 12-01-2022 to 10-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '490000.00', 0, 0, 490000, '2022-02-14', '28806443-55', 1, 1, '2022-07-28 09:08:55'),
(77, 1, '', '2022-02-05 00:00:00', 76, 'NBP-Wapda Colony Branch', '', 34, 48, 'Mr. Tajamul Hassan Memon', 'Payment of repair of Toyota Hiace Ven GS-17877 used under different of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '35530.00', 0, 0, 35530, '2022-02-14', '28806456', 1, 1, '2022-07-25 09:54:14'),
(78, 1, '', '2022-02-10 00:00:00', 77, 'NBP-Wapda Colony Branch', '', 34, 45, 'M/s: Haniya Enterprises', 'Payment of Panaflexs, Water Quality Kits Boxes etc under BBSHRRDB Livestock & Fisheries Department Hyderabad. ', '59580.00', 5, 2681, 56899, '2022-02-14', '28806457', 1, 1, '2022-07-25 10:07:54'),
(79, 1, '', '2022-02-07 00:00:00', 78, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology in village: Muhammad Khan Malokani and village: Sacho Sand Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-02-14', '28806458', 1, 1, '2022-07-28 09:00:58'),
(80, 1, '', '2022-02-07 00:00:00', 79, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology course in village: Saand and village: Tharo Abro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-14', '28806459', 1, 1, '2022-07-28 09:01:27'),
(81, 1, '', '2022-02-10 00:00:00', 80, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainees of Trainers & Assistant Trainers in Six villages of District Shaheed Benazirabad during the training of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '275000.00', 5, 12375, 262625, '2022-02-14', '28806460', 1, 1, '2022-07-28 09:01:52'),
(82, 1, '', '2022-02-12 00:00:00', 81, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of three-time meal including two-time tea for trainers and Assistant Trainers rendered the services at District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '90000.00', 5, 4050, 85950, '2022-02-14', '28806461', 1, 1, '2022-07-28 09:02:16'),
(83, 1, '', '2022-01-21 00:00:00', 82, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Aquaponic Fish Farming Course in village: Baloo Lashari Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-02-14', '28806462', 1, 1, '2022-07-28 09:02:35'),
(84, 1, '', '2022-02-12 00:00:00', 83, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Integrated Fish farming in Six villages of District Dadu from 14-01-2022 to 12-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '410000.00', 0, 0, 410000, '2022-02-14', '28806463-73', 1, 1, '2022-07-28 09:09:42'),
(85, 1, '', '2022-02-10 00:00:00', 84, 'NBP-Wapda Colony Branch', '', 34, 45, 'M/s: Haniya Enterprises', 'Payment of Identity Cards with plastic pouches for distributing among the trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85200.00', 5, 3834, 81366, '2022-02-14', '28806474', 1, 1, '2022-07-25 10:24:44'),
(86, 1, '', '2022-02-07 00:00:00', 85, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position Holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-02-14', '28806475', 1, 1, '2022-07-28 09:03:03'),
(87, 1, '', '2022-01-31 00:00:00', 86, 'NBP-Wapda Colony Branch', '', 34, 48, 'Mr. Tajamul Hassan Memon', 'Payment of repair of Suzuki Cultus GS-0592 used under PMU-BBSHRRDB Livestock & Fisheries Department Hyderabad.', '119010.00', 5, 5355, 113655, '2022-02-14', '28806476', 1, 1, '2022-07-25 10:30:24'),
(88, 1, '', '2022-02-07 00:00:00', 87, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology in village: Abdul Hakeem Abro and village: Haji Ali Bux Abro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad', '110000.00', 5, 4950, 105050, '2022-02-14', '28806477', 1, 1, '2022-07-28 09:03:28'),
(89, 1, '', '2022-02-07 00:00:00', 88, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in the village: Abdul Hakeem Abro and village: Haji Ali Bux Taluka Tando Adam District Sanghar under BBHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-14', '28806478', 1, 1, '2022-07-28 09:03:54'),
(90, 1, '', '2022-02-12 00:00:00', 89, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of trainers & Assistant Trainers in six villages of District Dadu during the training of Integrated Fish Farming under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '275000.00', 5, 12375, 262625, '2022-02-14', '28806479', 1, 1, '2022-07-28 09:04:17'),
(91, 1, '', '2022-02-12 00:00:00', 90, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of three time meal including two time tea for trainers & Assistant Trainers rendered the services at District Jamshor under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-02-14', '28806480', 1, 1, '2022-07-28 09:04:42'),
(92, 1, '', '2022-01-21 00:00:00', 91, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Aquaponic Fish Culture course in village: Rab Dino Ghambir Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad', '96750.00', 5, 4354, 92396, '2022-02-14', '28806481', 1, 1, '2022-07-28 09:05:08'),
(93, 1, '', '2022-02-10 00:00:00', 92, 'NBP-Wapda Colony Branch', '', 34, 45, 'M/s: Haniya Enterprises', 'Payment of certificates for distributing among the trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad', '135000.00', 5, 6075, 128925, '2022-02-14', '28806482', 1, 1, '2022-07-25 10:49:19'),
(94, 1, '', '2022-02-07 00:00:00', 93, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-02-14', '28806483', 1, 1, '2022-07-28 09:05:34'),
(95, 1, '', '2022-02-07 00:00:00', 94, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology course in village: Sand and village: Tharo Abro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad', '110000.00', 5, 4950, 105050, '2022-02-14', '28806484', 1, 1, '2022-07-28 09:05:52'),
(96, 1, '', '2022-02-07 00:00:00', 95, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in village: Muhammad Khan Malokani and village: Sacho Saand Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-14', '28806485', 1, 1, '2022-07-28 09:06:19'),
(97, 1, '', '2022-02-12 00:00:00', 96, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in three villages of District Jamshoro during the training of Integrated Fish Farming under BBSHRRDB Livestock & Fisheries Department Hyderabad', '165000.00', 5, 7425, 157575, '2022-02-14', '28806486', 1, 1, '2022-07-28 09:06:36'),
(98, 1, '', '2022-02-07 00:00:00', 97, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of Integrated Fish Farming under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-02-14', '28806487', 1, 1, '2022-07-28 09:10:22'),
(99, 1, '', '2022-02-10 00:00:00', 98, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology in village: Khameso Khan and village: Dodo khan Taluka Dadu District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '1970-01-01', '28806488', 1, 1, '2022-07-28 09:10:49'),
(100, 1, '', '2022-02-10 00:00:00', 99, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in village: Lutuf Khan and village: Moula Bux Taluka Dadu District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-14', '28806489', 1, 1, '2022-07-28 09:11:13'),
(102, 1, '', '2022-02-12 00:00:00', 100, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & drop of Trainers & Assistant Trainers in three villages of District Jamshoro during training of Integrated Fish Farming under BBSHRRDB Livestock & Fisheries Department Hyderabad', '165000.00', 5, 7425, 157575, '2022-02-14', '28806491', 1, 1, '2022-07-27 15:05:08'),
(103, 1, '', '2022-02-10 00:00:00', 101, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology in village: Kanhri and village: Khudabad Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '110000.00', 5, 4950, 105050, '2022-02-14', '28806492', 1, 1, '2022-07-27 15:05:21'),
(104, 1, '', '2022-02-10 00:00:00', 102, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in village: Khamiso Khan and village: Dodo khan Taluka Dadu District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-14', '28806493', 1, 1, '2022-07-27 15:06:09'),
(105, 1, '', '2022-02-12 00:00:00', 103, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers rendered the services at District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-02-14', '28806494', 1, 1, '2022-07-27 15:06:27'),
(106, 1, '', '2022-01-21 00:00:00', 104, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Aquaponic Fish Culture in village: Bacho Panhwar Taluka Sehwan District Jamshoro under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-02-14', '28806495', 1, 1, '2022-07-27 15:06:46'),
(107, 1, '', '2021-12-28 00:00:00', 105, 'NBP-Wapda Colony Branch', '', 35, 54, 'M/s: Weechar Hyderabad', 'Payment of Advertisment / publication of awareness material on 27th December 2021 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '20000.00', 0, 0, 20000, '2022-02-14', '28806496', 1, 1, '2022-07-27 08:31:29'),
(108, 1, '', '2022-02-10 00:00:00', 106, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology in village Lutuf Khan Bhand and village: Moula Bux Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '110000.00', 5, 4950, 105050, '2022-02-14', '28806497', 1, 1, '2022-07-27 15:07:05'),
(109, 1, '', '2022-02-10 00:00:00', 107, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in village: Kanhri and village: Khudabad Taluka & District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-14', '28806499', 1, 1, '2022-07-27 15:07:20'),
(110, 1, '', '2022-02-12 00:00:00', 108, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of three-time meal including two time tea for trainers & assistant trainers rendered the services at District Shaheed Benazirabad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '180000.00', 5, 8100, 171900, '2022-02-14', '28806500', 1, 1, '2022-07-27 15:07:39'),
(111, 1, '', '2022-02-12 00:00:00', 109, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of stipend of trainees of 148 trainees of Integrated Fish Farming in six villages of District Dadu from 14-01-2022 to 12-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '740000.00', 0, 0, 740000, '2022-02-14', '28806501', 1, 1, '2022-07-27 15:08:13'),
(112, 1, '', '2022-01-31 00:00:00', 110, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Al-Madina Traders Hyderabad', 'Payment of Pick & drop and Monitoring of Field visits of various training of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad', '101360.00', 0, 0, 101360, '2022-02-21', '28806503', 1, 1, '2022-07-27 15:08:48'),
(113, 1, '', '2022-02-14 00:00:00', 111, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Fish Farming Extension Technology in District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad', '60000.00', 5, 2700, 57300, '2022-02-21', '28806504', 1, 1, '2022-07-27 15:09:06'),
(114, 1, '', '2022-02-18 00:00:00', 112, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Integrated Fish farming in six villages of District Jamshoro from 20-01-2022 to 18-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '458000.00', 0, 0, 458000, '2022-02-21', '28806502-16', 1, 1, '2022-07-27 15:10:30'),
(115, 1, '', '2022-02-18 00:00:00', 113, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Aquaponic Fish Culture in Three villages of District Jamshoro from 20-01-2022 to 18-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '195000.00', 0, 0, 195000, '2022-02-21', '28806517-20', 1, 1, '2022-07-28 09:07:03'),
(116, 1, '', '2022-02-14 00:00:00', 114, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Fish farming Extension Technology in District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '60000.00', 5, 2700, 57300, '2022-02-21', '28806521', 1, 1, '2022-07-27 15:10:49'),
(117, 1, '', '2022-02-18 00:00:00', 115, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad ', 'Payment of Stipend of Trainees of 73 trainees of Aquaponic Fish Culture in three villages of District Jamshoro from 19-01-2022 to 18-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '365000.00', 0, 0, 365000, '2022-02-28', '28806523', 1, 1, '2022-07-27 15:11:17'),
(118, 1, '', '2022-02-14 00:00:00', 116, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting trainings of Aquaponic Fish Culture in District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad', '45000.00', 5, 2025, 42975, '2022-02-28', '28806524', 1, 1, '2022-07-27 15:11:37'),
(119, 1, '', '2022-02-25 00:00:00', 117, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 25 trainees of Aquaponic Fish Culture in the village: Muhbat Khan Burdi Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '57500.00', 5, 2588, 54913, '2022-02-28', '28806525', 1, 1, '2022-07-27 15:21:14'),
(120, 1, '', '2022-02-21 00:00:00', 118, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of Practical expenses of Integrated Fish Farming course in the village: Bakhshu Khan Burdi Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-28', '28806526', 1, 1, '2022-07-27 15:21:33'),
(121, 1, '', '2022-02-18 00:00:00', 119, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 144 trainees of Integrated Fish Farming in six villages of District Jamshoro from 19-01-2022 to 18-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '720000.00', 0, 0, 720000, '2022-02-28', '28806527', 1, 1, '2022-07-27 15:22:34'),
(122, 1, '', '2022-02-25 00:00:00', 120, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish farming in the village: Bakshu and village: Khair Muhammad Panhwar Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '1970-01-01', '28/02/2022', 1, 1, '2022-07-27 15:22:55'),
(123, 1, '', '2022-02-21 00:00:00', 121, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology Course under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-02-28', '28806529', 1, 1, '2022-07-28 09:49:41'),
(124, 1, '', '2022-02-21 00:00:00', 122, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming course in the village: Ali Muhammad Awan Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-02-28', '28806530', 1, 1, '2022-07-28 09:59:43'),
(125, 1, '', '2022-02-14 00:00:00', 123, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Integrated Fish Farming in District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad', '60000.00', 5, 2700, 57300, '2022-02-28', '28806531', 1, 1, '2022-07-28 10:01:45'),
(126, 1, '', '2022-02-25 00:00:00', 124, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming Course in the village: Muhammad Ayoub Awan and Village: Muhammad Siddique Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-28', '28806532', 1, 1, '2022-07-28 10:13:46'),
(127, 1, '', '2022-02-24 00:00:00', 125, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Aquaponic Fish Farming course in the village: Muhabbat Khan Burdi Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-02-28', '28806533', 1, 1, '2022-07-28 10:16:35'),
(128, 1, '', '2022-02-21 00:00:00', 126, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming course in village: Ali Qasim Burdi Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-02-28', '28806534', 1, 1, '2022-07-28 10:18:24'),
(129, 1, '', '2022-02-25 00:00:00', 127, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Aquaponic Fish Culture course in the village: Baqar Khan Bhurgri and village: Mirza Awan Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-02-28', '28806535', 1, 1, '2022-07-28 10:21:54'),
(130, 1, '', '2022-02-24 00:00:00', 128, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water Quality Kits for three position Holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-02-28', '28806536', 1, 1, '2022-07-28 10:25:55'),
(131, 1, '', '2022-02-21 00:00:00', 129, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming Course in the village: Khair Muhammad Panhwar Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-02-28', '28806537', 1, 1, '2022-07-28 10:28:06'),
(132, 1, '', '2022-02-24 00:00:00', 130, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of Practical Material of Aquaponic Fish Culture in the village: Mirza Awan Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-02-28', '28806538', 1, 1, '2022-07-28 10:30:23'),
(133, 1, '', '2022-02-25 00:00:00', 131, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming Course in village: Ali Muhammad Awan and Village: Ali Qasim Burdi Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-02-28', '28806539', 1, 1, '2022-07-28 10:40:15'),
(134, 1, '', '2022-02-21 00:00:00', 132, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of Practical Expenses of Integrated Fish Farming Course in the village: Muhammad Ayoub Awan Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-02-28', '28806540', 1, 1, '2022-07-28 10:42:16'),
(135, 1, '', '2022-02-16 00:00:00', 133, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water Quality kits for three position Holder trainees of Fish Farming Extension Technology Course under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-02-28', '28806541', 1, 1, '2022-07-28 10:57:27'),
(136, 1, '', '2022-02-24 00:00:00', 134, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Aquaponic Fish Culture Course in village: Baqar Khan Bhurgri Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-02-28', '28806542', 1, 1, '2022-07-28 10:59:33'),
(137, 1, '', '2022-02-21 00:00:00', 135, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical Expenses of Integrated Fish Farming Course in the village: Muhammad Siddique Taluka & District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-02-28', '28806543', 1, 1, '2022-07-28 11:01:22');
INSERT INTO `expense` (`id`, `wing_id`, `code`, `datetime_added`, `voucher_no`, `branch_name`, `expense_category_id`, `major_head`, `sub_head`, `payee`, `details`, `amount`, `income_tax`, `income_tax_deducted`, `cheque_amount`, `cheque_date`, `cheque_number`, `added_by`, `status`, `ts`) VALUES
(138, 1, '', '2022-02-20 00:00:00', 136, 'NBP-Wapda Colony Branch', '', 89, 45, 'Mr. Tajamul Hassan Memon', 'Payment of Misc Expenses under BBSHRRDB Livestock & Fisheries Department Hyderabad', '14275.00', 0, 0, 14275, '2022-02-28', '28806544', 1, 1, '2022-07-28 11:02:42'),
(139, 1, '', '2022-02-26 00:00:00', 137, 'NBP-Wapda Colony Branch', '', 35, 25, 'Project Allowance of Departmental Officers', 'Payment of Departmental officers for the month of February-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '45000.00', 0, 0, 45000, '2022-02-28', '28806547-48', 1, 1, '2022-07-28 11:04:16'),
(140, 1, '', '2022-02-26 00:00:00', 138, 'NBP-Wapda Colony Branch', '', 35, 25, 'Mr. Tajamul Hassan Memon', 'Salary of Contract officer for the Month of February-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '70000.00', 0, 0, 70000, '2022-02-28', '28806546', 1, 1, '2022-07-28 11:05:46'),
(141, 1, '', '2022-02-26 00:00:00', 139, 'NBP-Wapda Colony Branch', '', 35, 25, 'Salaries of PMU Staff', 'Salary of Contract Staff for the Month of February-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '215000.00', 0, 0, 215000, '2022-02-28', '28806546-50', 1, 1, '2022-07-28 11:09:13'),
(142, 1, '', '2022-02-26 00:00:00', 140, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Contingent Paid Staff', 'Salary of Contingent Paid Staff for the Month of February-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '75000.00', 0, 0, 75000, '2022-02-28', '28806551-53', 1, 1, '2022-07-28 11:11:00'),
(143, 1, '', '2022-02-28 00:00:00', 141, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Al-Madina Traders Hyderabad', 'Payment of survey of villages of various training / Districts under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '54279.00', 0, 0, 54279, '2022-03-07', '28806554', 1, 1, '2022-07-28 11:12:38'),
(144, 1, '', '2022-02-24 00:00:00', 142, 'NBP-Wapda Colony Branch', '', 35, 59, 'Mr. Tajamul Hassan Memon', 'Payment of repair of AC of Toyota Hiace Ven GS-17877 used under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad', '18050.00', 0, 0, 18050, '2022-03-07', '28806555', 1, 1, '2022-07-28 11:15:52'),
(145, 1, '', '2022-03-03 00:00:00', 143, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in six villages of District Dadu during training of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-03-07', '28806556', 1, 1, '2022-07-28 11:17:50'),
(146, 1, '', '2022-03-03 00:00:00', 144, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time for Trainers & Assistant Trainers rendered the services at District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad', '180000.00', 5, 8100, 171900, '2022-03-07', '28806557', 1, 1, '2022-07-28 11:22:20'),
(147, 1, '', '2022-02-25 00:00:00', 145, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology Course under BBSHRRDB Livestock & Fisheries Department Hyderabad', '79600.00', 5, 3582, 76018, '2022-03-07', '28806558', 1, 1, '2022-07-28 11:24:46'),
(148, 1, '', '2022-02-28 00:00:00', 146, 'NBP-Wapda Colony Branch', '', 35, 52, 'M/s: Al-Madina Traders Hyderabad', 'Payment for POL of vehicle & Generator used in the monitoring Fisheries training under PMU BBSHRRDB Livestock & fisheries Department Hyderabad.', '45734.00', 0, 0, 45734, '2022-03-07', '28806559', 1, 1, '2022-07-28 11:26:54'),
(149, 1, '', '2022-02-28 00:00:00', 147, 'NBP-Wapda Colony Branch', '', 35, 55, 'M/s: M&P Express Logistics PVT Limited', 'Payment of Postages & Courier under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad', '4153.00', 0, 0, 4153, '2022-03-07', '28806560', 1, 1, '2022-07-28 11:28:40'),
(150, 1, '', '2022-02-28 00:00:00', 148, 'NBP-Wapda Colony Branch', '', 35, 58, 'M/s: Al-Abeer Beverages Enterprises', 'Payment of Miscellaneous Expenses under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '2284.00', 0, 0, 2284, '2022-03-07', '28806561', 1, 1, '2022-07-28 11:30:21'),
(151, 1, '', '2022-03-03 00:00:00', 149, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & drop of Trainers & Assistant Trainers in Six villages of District Sanghar during the training of Fish farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-03-07', '28806562', 1, 1, '2022-07-28 11:51:28'),
(152, 1, '', '2022-03-03 00:00:00', 150, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers rendered the services at District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-03-07', '28806563', 1, 1, '2022-07-28 11:55:09'),
(153, 1, '', '2022-03-06 00:00:00', 151, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Training Coordinator', 'Salary of Training Coordinators of Fisheries wing for the period of 01-02-2022 to 28-02-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '150000.00', 0, 0, 150000, '2022-03-07', '28806564-66', 1, 1, '2022-07-28 11:56:59'),
(154, 1, '', '2022-03-08 00:00:00', 152, 'NBP-Wapda Colony Branch', '', 35, 53, 'Dr. Majeed Hakeem Dhamrah', 'Payment of Travelling Allowance of under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '16050.00', 0, 0, 16050, '2022-03-11', '28806567', 1, 1, '2022-07-28 12:08:14'),
(155, 1, '', '2022-03-08 00:00:00', 153, 'NBP-Wapda Colony Branch', '', 35, 53, 'Mr. Ghulam Rasool Qambrani', 'Payment for Travelling Allowance under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '16400.00', 0, 0, 16400, '2022-03-11', '28806568', 1, 1, '2022-07-28 12:10:33'),
(156, 1, '', '2022-03-08 00:00:00', 154, 'NBP-Wapda Colony Branch', '', 35, 53, 'Mr. Tajamul Hassan Memon', 'Payment of Travelling Allowance under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '14400.00', 0, 0, 14400, '2022-03-11', '28806569', 1, 1, '2022-07-28 12:11:59'),
(157, 1, '', '2022-03-09 00:00:00', 155, 'NBP-Wapda Colony Branch', '', 35, 56, 'M/s: Mesum Enterprises', 'Payment of Stationary Articles for PMU BBSHRRDB Livestock & Fisheries Department Hyderabad', '24750.00', 5, 1114, 23636, '2022-03-11', '28806570', 1, 1, '2022-07-28 12:13:38'),
(158, 1, '', '2022-03-07 00:00:00', 156, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish farming Extension Technology course in the village: Behrani and village: Habib Bhatti Taluka Moro District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-03-11', '28806571', 1, 1, '2022-07-28 12:16:50'),
(159, 1, '', '2022-03-07 00:00:00', 157, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in the village: Behrani and village: Habib Bhatti Taluka Moro District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-03-11', '28806572', 1, 1, '2022-07-28 12:25:46'),
(160, 1, '', '2022-03-07 00:00:00', 158, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Fish farming Extension Technology in District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '60000.00', 5, 2700, 57300, '2022-03-11', '28806573', 1, 1, '2022-07-28 12:27:50'),
(161, 1, '', '2022-03-07 00:00:00', 159, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish Farming Extension Technology Course in village: Manahyon and village: Moro Taluka Moro District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-03-11', '28806574', 1, 1, '2022-07-28 12:30:11'),
(162, 1, '', '2022-03-07 00:00:00', 160, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish farming Extension Technology in the village: Khan Mallah and village: Koreja Taluka Moro District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-03-11', '28806575', 1, 1, '2022-07-28 12:32:35'),
(163, 1, '', '2022-03-02 00:00:00', 161, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Altaf Hussain S/o Allah Bux', 'Payment of one month\'s rent of Bungalow at Taluka Tando Adam District Sanghar for the period of 17-02-2022 to 18-03-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '35000.00', 0, 0, 35000, '2022-03-11', '28806576', 1, 1, '2022-07-28 12:37:47'),
(164, 1, '', '2022-03-07 00:00:00', 162, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of Panaflexs for various trainings of BBSHRRDB Fisheries wing Livestock & Fisheries Department Hyderabad.', '20580.00', 5, 926, 19654, '2022-03-11', '28806577', 1, 1, '2022-07-28 12:39:36'),
(165, 1, '', '2022-03-09 00:00:00', 163, 'NBP-Wapda Colony Branch', '', 89, 45, 'Mr. Tajamul Hassan Memon', 'Payment of Miscellaneous Expenses under PMU BBSHRRDB Livestock & Fisheries Department Hyderaabad.', '52740.00', 0, 0, 52740, '2022-03-11', '28806578', 1, 1, '2022-07-28 12:41:59'),
(166, 1, '', '2022-03-07 00:00:00', 164, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of practical material of Fish farming Extension Technology in village: Khan Mallah and village: Koreja Taluka Moro District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-03-11', '28806579', 1, 1, '2022-07-28 12:43:59'),
(167, 1, '', '2022-03-07 00:00:00', 165, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of Refreshment material for 50 trainees of Fish Farming Extension Technology in the village: Manahyon and village: Moro Taluka Moro District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-03-11', '28806580', 1, 1, '2022-07-28 12:46:21'),
(168, 1, '', '2022-03-17 00:00:00', 166, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Fish Farming Extension Technology in Six villages of District Dadu from 16-02-2022 to 17-03-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '480000.00', 0, 0, 480000, '2022-03-21', '28806582-93', 1, 1, '2022-07-28 12:48:46'),
(169, 1, '', '2022-03-17 00:00:00', 167, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 144 trainees of Fish farming Extension Technology Course in Six villages of District Dadu from 16-02-2022 to 17-03-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '747500.00', 0, 0, 747500, '2022-03-21', '28806594', 1, 1, '2022-07-28 12:50:51'),
(170, 1, '', '2022-03-18 00:00:00', 168, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Fish farming Extension Technology in six villages of District Sanghar from 17-02-2022 to 18-03-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '480000.00', 0, 0, 480000, '2022-03-21', '28806595-606', 1, 1, '2022-07-28 13:00:25'),
(171, 1, '', '2022-03-18 00:00:00', 169, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of stipend of trainees of 150 trainees of Fish farming Extension Technology in six villages of District Sanghar from the period of 17-02-2022 to 18-03-2022 under BBSHRRDB Livestock & fisheries Department Hyderabad.', '750000.00', 0, 0, 750000, '2022-03-21', '28806607', 1, 1, '2022-07-28 13:20:15'),
(172, 1, '', '2022-03-10 00:00:00', 170, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Fish farming in Cages in District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '60000.00', 5, 2700, 57300, '2022-03-21', '28806608', 1, 1, '2022-07-28 13:23:54'),
(173, 1, '', '2022-03-14 00:00:00', 171, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers rendered the services at District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-03-21', '28806609', 1, 1, '2022-07-28 13:26:14'),
(174, 1, '', '2022-03-17 00:00:00', 172, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming in Cages in the village: Peer Bux Abro and village: Haji Khan Bijoro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-03-21', '28806610', 1, 1, '2022-07-28 13:28:18'),
(175, 1, '', '2022-03-10 00:00:00', 173, 'NBP-Wapda Colony Branch', '', 89, 48, 'M/s: Icon Enterprises & Marketing', 'Payment of repair & maintenance of Hardware used under different training of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '47500.00', 5, 2138, 45363, '2022-03-21', '28806611', 1, 1, '2022-07-28 13:32:22'),
(176, 1, '', '2022-03-14 00:00:00', 174, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in Six villages of District Tando Muhammad Khan during training of Integrated Fish Farming under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-03-21', '28806612', 1, 1, '2022-07-28 13:34:26'),
(177, 1, '', '2022-03-17 00:00:00', 175, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers rendered the services at District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-03-21', '28806613', 1, 1, '2022-07-28 13:36:19'),
(178, 1, '', '2022-03-17 00:00:00', 176, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish farming in Cages in village: Aashique Ali Abro and village: Muhammad Urs Abro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-03-21', '28806614', 1, 1, '2022-07-28 13:38:24'),
(179, 1, '', '2022-03-10 00:00:00', 177, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Ezaan Enterprises Contractor', 'Payment of Misc Expenses for various trainings of Fisheries wing under BBSHRRDB Livestock & fisheries Department Hyderabad.', '36600.00', 5, 1647, 34953, '2022-03-21', '28806615', 1, 1, '2022-07-28 13:41:48'),
(180, 1, '', '2022-03-17 00:00:00', 178, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in Six villages of District Naushehro Feroze during the training of Fish Farming Extension Technology under BBSHRRDB Livestock & fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-03-21', '28806616', 1, 1, '2022-07-28 13:43:56'),
(181, 1, '', '2022-03-17 00:00:00', 179, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Tea for Trainers & Assistant Trainers rendered the services at District Tando Muhammad Khan under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-03-21', '28806617', 1, 1, '2022-07-28 13:54:30'),
(182, 1, '', '2022-03-03 00:00:00', 180, 'NBP-Wapda Colony Branch', '', 35, 57, 'M/s: Pakistan Tele Communication Company Limited', 'Payment for PTCl Landline No: 022-2671884 underused in PMU BBSHRRDB Livestock & Fisheries Department Hyderabad', '5480.00', 0, 0, 5480, '2022-03-21', '28806619', 1, 1, '2022-07-28 13:58:50'),
(183, 1, '', '2022-03-25 00:00:00', 181, 'NBP-Wapda Colony Branch', '', 35, 25, 'Project Allowance of Departmental Officers', 'Project Allowance of Departmental officers for the month of March-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '45000.00', 0, 0, 45000, '2022-03-28', '28806620-21', 1, 1, '2022-07-28 14:00:27'),
(184, 1, '', '2022-03-25 00:00:00', 182, 'NBP-Wapda Colony Branch', '', 35, 25, 'Mr. Tajamul Hassan Memon', 'Salary of Contract officer for the Month of March-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '70000.00', 0, 0, 70000, '2022-03-28', '28806622', 1, 1, '2022-07-28 14:01:59'),
(185, 1, '', '2022-03-25 00:00:00', 183, 'NBP-Wapda Colony Branch', '', 35, 25, 'Salaries of PMU Staff', 'Salary of Contract staff for the month of March-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '215000.00', 0, 0, 215000, '2022-03-28', '28806622-23', 1, 1, '2022-07-28 14:03:26'),
(186, 1, '', '2022-03-25 00:00:00', 184, 'NBP-Wapda Colony Branch', '', 35, 37, 'Salary of Contingent Paid Staff', 'Salary of Contingent Paid Staff for the Month of March-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '75000.00', 0, 0, 75000, '2022-03-28', '28806624-25', 1, 1, '2022-07-28 14:06:04'),
(187, 1, 'A-03821', '2022-04-05 00:00:00', 185, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during training of Integrated Fish Farming in Six villages of District Tando Muhammad Khan from 07-03-2022 to 05-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '480000.00', 0, 0, 480000, '2022-04-05', '28806627-38', 1, 1, '2022-07-29 08:31:16'),
(188, 1, 'A-03821', '2022-04-01 00:00:00', 186, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Training Coordinator', 'Salary of Training Coordinator of Fisheries wing for the period of 01-03-2022 to 31-03-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '150000.00', 0, 0, 150000, '2022-04-05', '28806645-47', 1, 1, '2022-07-29 08:49:56'),
(189, 1, 'A-03821', '2022-04-05 00:00:00', 187, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during training of Aquaponic Fish Culture in Three villages of District Tando Muhammad Khan from 07-03-2022 to 05-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '240000.00', 0, 0, 240000, '2022-04-05', '28806639-44', 1, 1, '2022-07-29 09:00:13'),
(190, 1, 'A-03821', '2022-03-28 00:00:00', 188, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Mohsin Ali Mallah S/o Muhammad Hashim', 'Payment of one month rent of Bungalow No: B-65 at Taluka Moro District Naushehro Feroze for the period of 14-01-2022 to 14-03-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '35000.00', 0, 0, 35000, '2022-04-05', '28806649', 1, 1, '2022-07-29 09:38:21'),
(191, 1, 'A-03821', '2022-03-31 00:00:00', 189, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 25 trainees of Integrated Fish Farming course in village: Sono Khan Khushk Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '57500.00', 5, 2588, 54913, '2022-04-05', '28806650', 1, 1, '2022-07-29 09:40:22'),
(192, 1, 'A-03821', '2022-03-25 00:00:00', 190, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical Expenses of Integrated Fish Farming in village: Jamal Dahri Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-04-05', '28806651', 1, 1, '2022-07-29 09:42:05'),
(193, 1, 'A-03821', '2022-03-15 00:00:00', 191, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment for practical material of Aquaponic Fish Farming in District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-04-05', '28806652', 1, 1, '2022-07-29 09:48:33'),
(194, 1, 'A-03821', '2022-03-31 00:00:00', 192, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming in the village: Jamal Dahri and Village: Luqman Korejo Taluka & District Matyari HRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-04-05', '28806653', 1, 1, '2022-07-29 09:51:15'),
(195, 1, 'A-03821', '2022-03-25 00:00:00', 193, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-04-05', '28806654', 1, 1, '2022-07-29 09:53:22'),
(196, 1, 'A-03821', '2022-03-25 00:00:00', 194, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming in village: Dato Lurko Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-04-05', '28806655', 1, 1, '2022-07-29 09:55:39'),
(197, 1, 'A-03821', '2022-03-15 00:00:00', 195, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment for practical material of Aquaponic Fish Farming in District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad', '96750.00', 5, 4354, 92396, '2022-04-05', '28806656', 1, 1, '2022-07-29 10:01:29'),
(198, 1, 'A-03821', '2022-03-28 00:00:00', 196, 'NBP-Wapda Colony Branch', '', 89, 48, 'Mr. Tajamul Hassan Memon', 'Payment of repair of Suzuki Cultus GS-0592 used under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '13010.00', 0, 0, 13010, '2022-04-05', '28806657', 1, 1, '2022-07-29 11:21:39'),
(199, 1, 'A-03821', '2022-03-25 00:00:00', 197, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming Course in village: Roshan Shah ji Wasi Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-04-05', '28806658', 1, 1, '2022-07-29 11:23:45'),
(200, 1, 'A-03821', '2022-03-15 00:00:00', 198, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment for practical material of Aquaponic Fish Culture Course in District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-04-05', '28806659', 1, 1, '2022-07-29 11:26:18'),
(201, 1, 'A-03821', '2022-03-25 00:00:00', 199, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-05', '28806660', 1, 1, '2022-07-29 11:27:53'),
(202, 1, 'A-03821', '2022-03-18 00:00:00', 200, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of Miscellaneous Expenses under BBSHRRDB Livestock & Fisheries Department Hyderabad', '37040.00', 5, 1667, 35373, '2022-04-05', '28806661', 1, 1, '2022-07-29 11:29:23'),
(203, 1, 'A-03821', '2022-03-25 00:00:00', 201, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish farming Course in village: Bhanot UC Bhanot Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-04-05', '28806662', 1, 1, '2022-07-29 11:32:44'),
(204, 1, 'A-03821', '2022-03-15 00:00:00', 202, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Integrated Fish Farming in District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '60000.00', 5, 2700, 57300, '2022-04-05', '28806663', 1, 1, '2022-07-29 11:41:27'),
(205, 1, 'A-03821', '2022-03-31 00:00:00', 203, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of Refreshment material for 50 trainees of Integrated Fish Farming Course in the village: Mari Muhammad Khan and village: Bhanot Taluka & district Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-04-05', '28806664', 1, 1, '2022-07-29 11:45:12'),
(206, 1, 'A-03821', '2022-03-25 00:00:00', 204, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology Course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-05', '28806665', 1, 1, '2022-07-29 11:48:43'),
(207, 1, 'A-03821', '2022-03-25 00:00:00', 205, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming Course in the village: Dodo Lurko Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-04-05', '28806666', 1, 1, '2022-07-29 11:58:30'),
(208, 1, 'A-03821', '2022-03-15 00:00:00', 206, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training45 of Aquaponic Fish Culture Course in District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '45000.00', 5, 2025, 42975, '2022-04-05', '28806667', 1, 1, '2022-07-29 12:03:54'),
(209, 1, 'A-03821', '2022-03-31 00:00:00', 207, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming Course in the village: Dodo Lurko and Village: Jamal Dahri Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-04-05', '28806668', 1, 1, '2022-07-29 12:22:54'),
(210, 1, 'A-03821', '2022-03-25 00:00:00', 208, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming Course in Village: Mari Muhammad Khan Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-04-05', '28806669', 1, 1, '2022-07-29 12:27:12'),
(211, 1, 'A-03821', '2022-03-31 00:00:00', 209, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming Course in village: Roshan Shah Ji wasi and Village: Dato Lurko Taluka & District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-04-05', '28806670', 1, 1, '2022-07-29 12:30:05'),
(212, 1, 'A-03821', '2022-03-31 00:00:00', 210, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Al-Madina Traders Hyderabad', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in various training of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '178772.00', 0, 0, 178772, '2022-04-11', '28806671', 1, 1, '2022-07-29 12:37:30'),
(213, 1, 'A-03959', '2022-04-05 00:00:00', 5, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 137 trainees of Integrated Fish Farming Course in six villages of District Tando Muhammad Khan from 17-03-2022 to 05-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '685000.00', 0, 0, 685000, '2022-04-11', '28806672', 1, 1, '2022-07-29 12:41:55'),
(214, 1, 'A-03959', '2022-04-05 00:00:00', 212, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of stipend of trainees of 73 trainees of Aquaponic Fish Culture course in three villages of District Tando Muhammad Khan from 07-03-2022 to 05-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '365000.00', 0, 0, 365000, '2022-04-11', '28806673', 1, 1, '2022-07-29 12:44:13'),
(215, 1, 'A-03821', '2022-04-07 00:00:00', 213, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Mesum Enterprises', 'Payment for practical material of Fish Farming in cages course in the village: Aashique Ali Abro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-11', '28806674', 1, 1, '2022-07-29 12:48:20'),
(216, 1, 'A-03821', '2022-04-07 00:00:00', 214, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in Six villages of District Naushehro Feroze during the training of Fish farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-04-11', '28806675', 1, 1, '2022-07-29 12:51:06'),
(217, 1, 'A-03821', '2022-04-06 00:00:00', 215, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three-time meal including two-time tea for Trainers & Assistant Trainers rendered the services at District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-04-11', '28806676', 1, 1, '2022-07-29 12:54:33'),
(218, 1, 'A-03821', '2022-04-07 00:00:00', 216, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Mesum Enterprises', 'Payment for practical material for Fish Farming in Cages course in the village: Muhammad uris Abro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad', '99500.00', 5, 4478, 95023, '2022-04-11', '28806677', 1, 1, '2022-07-29 12:56:55'),
(219, 1, 'A-03821', '2022-04-07 00:00:00', 217, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & drop of Trainers & Assistant Trainers in six villages of District Sanghar during training of Fish Farming in Cages under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-04-11', '28806678', 1, 1, '2022-07-29 12:58:51'),
(220, 1, 'A-03821', '2022-04-06 00:00:00', 218, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three-time meal including two-time tea for trainers & Assistant Trainers rendered the services at District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-04-11', '28806679', 1, 1, '2022-07-29 13:01:35'),
(221, 1, 'A-03821', '2022-04-07 00:00:00', 219, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Mesum Enterprises', 'Payment for practical material of Fish Farming in cages course in village: Peer Bux Abro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-11', '28806680', 1, 1, '2022-07-29 13:10:10'),
(222, 1, 'A-03821', '2022-03-31 00:00:00', 220, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Al-Madina Traders Hyderabad', 'Payment of survey of villages for conducting trainings of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '89581.00', 0, 0, 89581, '2022-04-11', '28806681', 1, 1, '2022-07-29 13:11:45'),
(223, 1, 'A-03821', '2022-03-31 00:00:00', 221, 'NBP-Wapda Colony Branch', '', 89, 37, 'Honorarium of Focal Person', 'The honorarium of the Focal person of District Sanghar & Dadu rendered the services during the training of Integrated Fish Farming and Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '25000.00', 0, 0, 25000, '2022-04-11', '28806682', 1, 1, '2022-07-29 13:15:23'),
(224, 1, 'A-03821', '2022-04-07 00:00:00', 222, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Mesum Enterprises', 'Payment for practical material of Fish Farming in Cages course in village: Haji Khan Muhammad Bijoro Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-11', '28806683', 1, 1, '2022-07-29 13:17:31'),
(225, 1, 'A-03821', '2022-03-31 00:00:00', 223, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Altaf Hussain S/o Allah Bux', 'Payment of one month rent of Bungalow at Dogar Nagar Taluka Tando Adam District Sanghar from 22-03-2022 to 22-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '30000.00', 0, 0, 30000, '2022-04-11', '28806684', 1, 1, '2022-07-29 13:19:31'),
(226, 1, 'A-03821', '2022-04-07 00:00:00', 224, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Mesum Enterprises', 'Payment of Practical Material of Fish Farming in cages course in village: Soomar Khan Chakrani Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-11', '28806685', 1, 1, '2022-07-29 13:32:57'),
(227, 1, 'A-03205', '2022-03-31 00:00:00', 225, 'NBP-Wapda Colony Branch', '', 35, 55, 'M/s: M&P Express Logistics PVT Limited', 'Payment for Postages & Courier under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '2280.00', 0, 0, 2280, '2022-04-11', '28806686', 1, 1, '2022-07-29 13:35:15'),
(228, 1, 'A-03821', '2022-04-07 00:00:00', 226, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Mesum Enterprises', 'Payment for practical material of Fish Farming in Cages course in village: Syed Qabool Shah Taluka Tando Adam District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-11', '28806687', 1, 1, '2022-07-29 13:52:12'),
(229, 1, 'A-03970', '2022-03-31 00:00:00', 227, 'NBP-Wapda Colony Branch', '', 35, 58, 'M/s: Al-Abeer Beverages Enterprises', 'Payment of Miscellaneous Expenses under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '2400.00', 0, 0, 2400, '2022-04-11', '28806688', 1, 1, '2022-07-29 13:56:13'),
(230, 1, 'A-03821', '2022-04-14 00:00:00', 228, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Mesum Enterprises', 'Payment of Miscllenious Expenses under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-04-18', '28806689', 1, 1, '2022-07-29 14:06:08'),
(231, 1, 'A-03821', '2022-04-10 00:00:00', 229, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Ezaan Enterprises Contractor', 'Payment of Miscellaneous Expenses of various trainings of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad', '73200.00', 5, 3294, 69906, '2022-04-18', '28806690', 1, 1, '2022-07-29 14:07:50'),
(232, 1, 'A-03821', '2022-04-15 00:00:00', 230, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-18', '28806691', 1, 1, '2022-07-29 14:09:34'),
(233, 1, 'A-03821', '2022-04-15 00:00:00', 231, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time meal including Two Time for Trainers & Assistant Trainers rendered the services at District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-04-18', '28806692', 1, 1, '2022-08-14 09:05:07'),
(234, 1, 'A-03821', '2022-04-15 00:00:00', 232, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in Three villages of District Matyari during training of Aquaponic Fish Culture under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '165600.00', 5, 7452, 158148, '2022-04-18', '28806693', 1, 1, '2022-08-14 09:07:29'),
(235, 1, 'A-03821', '2022-04-15 00:00:00', 233, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-18', '28806694', 1, 1, '2022-08-14 09:09:22'),
(236, 1, 'A-03821', '2022-04-15 00:00:00', 234, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers rendered the services at District Matyari under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-04-18', '28806695', 1, 1, '2022-08-14 09:11:26'),
(237, 1, 'A-03821', '2022-04-10 00:00:00', 235, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Ali Enterprises & Contractor', 'Payment of Misc Expenses for various trainings of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '56400.00', 5, 2538, 53862, '2022-04-18', '28806696', 1, 1, '2022-08-14 09:13:45'),
(238, 1, 'A-03821', '2022-04-15 00:00:00', 236, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in six villages of District Matyari during the training of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-04-18', '28806698', 1, 1, '2022-08-14 09:18:03'),
(239, 1, 'A-03821', '2022-04-15 00:00:00', 237, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder Trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-04-18', '28806699', 1, 1, '2022-08-14 09:21:02'),
(240, 1, 'A-03202', '2022-04-05 00:00:00', 238, 'NBP-Wapda Colony Branch', '', 35, 57, 'M/s: Pakistan Tele Communication Company Limited', 'Payment for PTCL LandLine Number: 022-2671884 under used in PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '5560.00', 0, 0, 5560, '2022-04-18', '28806697', 1, 1, '2022-08-14 09:26:52'),
(241, 1, 'A-03821', '2022-04-20 00:00:00', 239, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Fish Farming Extension Technology in six villages of District Naushehro Feroze from 21-03-2022 to 20-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '490000.00', 0, 0, 490000, '2022-04-21', '28806700-12', 1, 1, '2022-08-14 09:31:41'),
(242, 1, 'A-03821', '2022-04-21 00:00:00', 240, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Fish Farming in Cages in six villages of District Sanghar from 22-03-2022 to 21-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '490000.00', 0, 0, 490000, '2022-04-22', '28806717-25', 1, 1, '2022-08-14 09:33:49'),
(243, 1, 'A-03959', '2022-02-11 00:00:00', 241, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of Trainees of 148 trainees of Fish Farming Extension Technology in Six villages of District Naushehro Feroze from 12-03-2022 to 20-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '717500.00', 0, 0, 717500, '2022-04-22', '71302926', 1, 1, '2022-08-14 09:36:07'),
(244, 1, 'A-03821', '2022-04-29 00:00:00', 242, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Integrated Fish Farming course in Six villages of District Matyari from 06-04-2022 to 29-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '480000.00', 0, 0, 480000, '2022-04-22', '71302927-38', 1, 1, '2022-08-14 09:38:59'),
(245, 1, 'A-03821', '2022-04-29 00:00:00', 243, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Aquaponic Fish Culture in Three villages of District Matyari from 06-04-2022 to 29-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '240000.00', 0, 0, 240000, '2022-04-22', '71302939-44', 1, 1, '2022-08-14 09:44:11'),
(246, 1, 'A-01', '2022-04-22 00:00:00', 244, 'NBP-Wapda Colony Branch', '', 35, 25, 'Mr. Tajamul Hassan Memon', 'Salary of Contract officer for the month of April-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '70000.00', 0, 0, 70000, '2022-04-22', '71302946', 1, 1, '2022-08-14 09:46:00'),
(247, 1, 'A-01', '2022-04-22 00:00:00', 245, 'NBP-Wapda Colony Branch', '', 35, 25, 'Project Allowance of Departmental Officers', 'Project Allowance of Departmental Officers for the Month of April-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '45000.00', 0, 0, 45000, '2022-04-22', '71302947-48', 1, 1, '2022-08-14 09:48:48'),
(248, 1, 'A-01', '2022-04-22 00:00:00', 246, 'NBP-Wapda Colony Branch', '', 35, 25, 'Salaries of PMU Staff', 'Salary of Contract staff for the month of April-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '215000.00', 0, 0, 215000, '2022-04-22', '71302949-50', 1, 1, '2022-08-14 09:50:36'),
(249, 1, 'A-03821', '2022-04-22 00:00:00', 247, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Contingent Paid Staff', 'Salary of Contingent Paid staff for the Month of April-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '75000.00', 0, 0, 75000, '2022-04-22', '71302951-52', 1, 1, '2022-08-14 09:52:21'),
(250, 1, 'A-03821', '2022-04-22 00:00:00', 248, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Training Coordinator', 'Salary of Training Coordinator of Fisheries wing for the period of 01-04-2022 to 30-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '150000.00', 0, 0, 150000, '2022-04-22', '71302953-55', 1, 1, '2022-08-14 09:54:11'),
(251, 1, 'A-03959', '2022-04-21 00:00:00', 249, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 141 trainees of Fish Farming in Cages in six villages of District Naushehro Feroze from 22-03-2022 to 21-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '705000.00', 0, 0, 705000, '2022-04-22', '71302956', 1, 1, '2022-08-14 09:56:06'),
(252, 1, 'A-03821', '2022-04-22 00:00:00', 250, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in the village: Noor Muhammad Kalhoro and village: Readhara Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-04-25', '71302957', 1, 1, '2022-08-14 10:06:55'),
(253, 1, 'A-03821', '2022-04-20 00:00:00', 251, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment for practical material of Fish Farming Extension Technology course in village: Arz Muhammad Mallah and Village: Mahtani Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-04-25', '71302958', 1, 1, '2022-08-14 10:10:16'),
(254, 1, 'A-03821', '2022-04-20 00:00:00', 252, 'NBP-Wapda Colony Branch', '', 89, 48, 'M/s: Icon Enterprises & Marketing', 'Payment of Repair & Maintenance of Hardware used under different trainings of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '47500.00', 5, 2138, 45363, '2022-04-25', '71302959', 1, 1, '2022-08-14 10:13:57'),
(255, 1, 'A-03901', '2022-04-20 00:00:00', 253, 'NBP-Wapda Colony Branch', '', 35, 56, 'M/s: Mesum Enterprises', 'Payment of office stationary articles of PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '22110.00', 5, 995, 21115, '2022-04-25', '71302960', 1, 1, '2022-08-14 10:15:40'),
(256, 1, 'A-03821', '2022-04-15 00:00:00', 254, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting trainings of Fish Farming Extension Technology in District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-04-25', '71302961', 1, 1, '2022-08-14 10:17:34'),
(257, 1, 'A-03821', '2022-04-20 00:00:00', 255, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment for practical material of Fish Farming Extension Technology in village: Noor Muhammad Kalhoro and village: Readhara Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-04-25', '71302962', 1, 1, '2022-08-14 10:21:22'),
(258, 1, 'A-03821', '2022-04-22 00:00:00', 256, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 Fish Farming Extension Technology trainees in village: Arz Muhammad Mallah and village: Mahtani Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-04-25', '71302963', 1, 1, '2022-08-14 10:24:59'),
(259, 1, 'A-03959', '2022-04-27 00:00:00', 257, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 146 trainees of Aquaponic Fish Culture in Three villages of District Matyari from 06-04-2022 to 27-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '360000.00', 0, 0, 360000, '2022-04-27', '71302965', 1, 1, '2022-08-14 10:27:04'),
(260, 1, 'A-03959', '2022-04-27 00:00:00', 258, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 146 trainees of Integrated Fish Farming in six villages of District Matyari from 06-04-2022 to 27-04-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad', '730000.00', 0, 0, 730000, '2022-04-27', '71302966', 1, 1, '2022-08-14 10:29:26'),
(261, 1, 'A-03821', '2022-04-20 00:00:00', 259, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment for practical Material of Fish Farming Extension Technology in village: Ahmed ALI Khoso and village: Allah Warayo Mahar Taluka Sukkur District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-05-06', '71302967', 1, 1, '2022-08-14 10:43:59'),
(262, 1, 'A-03821', '2022-04-22 00:00:00', 260, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology course in Village: Ahmed Ali Khoso and Village: Allah Warayo Mahar Taluka & District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-05-06', '71302968', 1, 1, '2022-08-14 10:52:06'),
(263, 1, 'A-03821', '2022-04-15 00:00:00', 261, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of cages / Nets for three position holder trainees of Fish Farming in Cages course in District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad', '72000.00', 5, 3240, 68760, '2022-05-06', '71302969', 1, 1, '2022-08-14 10:55:37'),
(264, 1, 'A-03821', '2022-04-20 00:00:00', 262, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment of Practical Material of Fish Farming Extension Technology course in village: Darya Khan Khoso and village: Kando Wahan Taluka & District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-05-06', '71302970', 1, 1, '2022-08-14 10:57:40'),
(265, 1, 'A-03821', '2022-04-22 00:00:00', 263, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology Course in village: Darya Khan Khoso and Village: Kando Wahan Taluka & District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-05-06', '71302971', 1, 1, '2022-08-14 10:59:35'),
(266, 1, 'A-03821', '2022-04-20 00:00:00', 264, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting trainings of Fish Farming Extension Technology Course in District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-05-06', '71302972', 1, 1, '2022-08-14 11:01:37'),
(267, 1, 'A-03821', '2022-04-20 00:00:00', 265, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: IK Enterprises', 'Payment for practical material of Fish Farming Extension Technology course in village: Mualam Khan Khoso and village: Nazeer Ahmed Mirani Taluka & District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '110000.00', 5, 4950, 105050, '2022-05-06', '71302973', 1, 1, '2022-08-14 11:03:38'),
(268, 1, 'A-03821', '2022-04-22 00:00:00', 266, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Farming Extension Technology in village: Mualam Khan Khoso and village: Nazeer Ahmed Mirani Taluka & District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-05-06', '71302974', 1, 1, '2022-08-14 11:05:47'),
(269, 1, 'A-03821', '2022-04-15 00:00:00', 267, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Cages / nets for three position holder trainees of Fish Farming in cages course in District Sanghar under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-05-06', '71302975', 1, 1, '2022-08-14 11:07:30');
INSERT INTO `expense` (`id`, `wing_id`, `code`, `datetime_added`, `voucher_no`, `branch_name`, `expense_category_id`, `major_head`, `sub_head`, `payee`, `details`, `amount`, `income_tax`, `income_tax_deducted`, `cheque_amount`, `cheque_date`, `cheque_number`, `added_by`, `status`, `ts`) VALUES
(270, 1, 'A-03821', '2022-04-30 00:00:00', 268, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Al-Madina Traders Hyderabad', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in villages during trainings of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '175646.00', 0, 0, 175646, '2022-05-06', '71302976', 1, 1, '2022-08-14 11:09:19'),
(271, 1, 'A-03807', '2022-04-30 00:00:00', 269, 'NBP-Wapda Colony Branch', '', 35, 52, 'M/s: Al-Madina Traders Hyderabad', 'Payment for POL of vehicle used in the monitoring of Fisheries training under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '44115.00', 0, 0, 44115, '2022-05-06', '71302977', 1, 1, '2022-08-14 11:14:12'),
(272, 1, 'A-03821', '2022-05-11 00:00:00', 270, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of Practical Expenses of Integrated Fish Farming Course in village: Alan Khan Burdi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-05-16', '71302978', 1, 1, '2022-08-14 11:27:06'),
(273, 1, 'A-03821', '2022-05-12 00:00:00', 271, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming in village: Alan Khan Burdi and village: Ghulam Hyder Solangi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-05-16', '71302979', 1, 1, '2022-08-14 11:29:02'),
(274, 1, 'A-03821', '2022-04-24 00:00:00', 272, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of Panaflexs and ID Cards for Trainers & Assistant Trainers under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '11550.00', 0, 0, 11550, '2022-05-16', '71302980', 1, 1, '2022-08-14 11:30:47'),
(275, 1, 'A-03821', '2022-05-11 00:00:00', 273, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical material of Integrated Fish Farming in Village: Ghulam Hyder Solangi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-05-16', '71302981', 1, 1, '2022-08-14 11:32:38'),
(276, 1, 'A-03821', '2022-05-12 00:00:00', 274, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming course in village: Haji Shafi khan solangi and village: Niaz Hussain Buledi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-05-16', '71302982', 1, 1, '2022-08-14 11:35:48'),
(277, 1, 'A-03821', '2022-05-12 00:00:00', 275, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment for practical material of Aquaponic Fish Culture Course in village: Jumo Khenjo UC Tando Fazal Taluka & District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-05-16', '71302983', 1, 1, '2022-08-14 11:37:58'),
(278, 1, 'A-03821', '2022-05-11 00:00:00', 276, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of Practical Expenses of Integrated Fish Farming Course in Village: Haji shafi Solangi District Hyderabad under BBSHRRDB Livestock & fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-05-16', '71302984', 1, 1, '2022-08-14 11:43:37'),
(279, 1, 'A-03821', '2022-05-12 00:00:00', 277, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish farming Course in village: Qasim Solangi and village: Saen Dino Burdi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-05-16', '71302985', 1, 1, '2022-08-14 11:45:33'),
(280, 1, 'A-03821', '2022-05-12 00:00:00', 278, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Aquaponic Fish Culture Course in Village: Kandero Sand UC Tando Fazal District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-05-16', '71302986', 1, 1, '2022-08-14 11:47:17'),
(281, 1, 'A-03821', '2022-05-11 00:00:00', 279, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical Expenses of Integrated Fish Farming Course in village: Niaz Hussain Buledi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-05-16', '71302987', 1, 1, '2022-08-14 11:49:19'),
(282, 1, 'A-03821', '2022-05-05 00:00:00', 280, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Integrated Fish Farming course in District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-05-16', '71302988', 1, 1, '2022-08-14 11:51:27'),
(283, 1, 'A-03821', '2022-05-12 00:00:00', 281, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment for practical material of Aquaponic Fish Culture course in village: Kiran Khan Shoro Taluka Qasimabad District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-05-16', '71302989', 1, 1, '2022-08-14 11:59:09'),
(284, 1, 'A-03821', '2022-05-11 00:00:00', 282, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of Practical Material of Integrated Fish Farming Course in village: Qasim Solangi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad,', '85000.00', 5, 3825, 81175, '2022-05-16', '71302990', 1, 1, '2022-08-14 12:01:14'),
(285, 1, 'A-03821', '2022-05-05 00:00:00', 283, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Aquaponic Fish Culture course in District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '45000.00', 5, 2025, 42975, '2022-05-16', '71302991', 1, 1, '2022-08-14 12:11:44'),
(286, 1, 'A-03821', '2022-04-24 00:00:00', 284, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of refreshment boxes printed in four color for distributing among the trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad.', '100000.00', 5, 4500, 95500, '2022-05-16', '71302992', 1, 1, '2022-08-14 12:13:56'),
(287, 1, 'A-03821', '2022-05-11 00:00:00', 285, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment pf Practical Expenses of Integrated Fish Farming Course in village: Sain Dino Burdi District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-05-16', '71302993', 1, 1, '2022-08-14 12:17:02'),
(288, 1, 'A-03821', '2022-05-17 00:00:00', 286, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 25 trainees of Aquaponic Fish Culture Course in Village: Pir Muhallah Town Committee Taluka & District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '57500.00', 5, 2588, 54913, '2022-05-23', '71302994', 1, 1, '2022-08-14 12:19:27'),
(289, 1, 'A-03202', '2022-03-03 00:00:00', 287, 'NBP-Wapda Colony Branch', '', 35, 57, 'M/s: NTC Collection Account Hyderabad', 'Payment for NTC Landline No: 022-29240210 under used in PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '18573.00', 0, 0, 18573, '2022-05-23', '71302995', 1, 1, '2022-08-14 12:22:25'),
(290, 1, 'A-03821', '2022-05-28 00:00:00', 288, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Chief Post Master General Hyderabad', 'Payment of One Month rent of Classroom in District Tando Muhammad Khan and Matyari during training of Integrated Fish Farming and Aquaponic Fish Culture under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '30000.00', 0, 0, 30000, '2022-05-23', '71302996', 1, 1, '2022-08-14 12:25:16'),
(291, 1, 'A-03821', '2022-05-18 00:00:00', 289, 'NBP-Wapda Colony Branch', '', 89, 37, 'Honorarium of Focal Person', 'Payment of Focal Person of District Tando Muhammad Khan & Matyari rendered the services during the training of Integrated Fish Farming & Aquaponic Fish Culture under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '30000.00', 0, 0, 30000, '2022-05-23', '71302997', 1, 1, '2022-08-14 12:31:28'),
(292, 1, 'A-013001', '2022-05-19 00:00:00', 290, 'NBP-Wapda Colony Branch', '', 35, 59, 'Mr. Tajamul Hassan Memon', 'Payment of repair of Toyota Hiace ven GS-17877, GSA-534 & GSA-535 used under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '39700.00', 0, 0, 39700, '2022-05-23', '71302998', 1, 1, '2022-08-14 12:34:30'),
(293, 1, 'A-03821', '2022-05-17 00:00:00', 291, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Aquaponic Fish Culture Course in Village: Alan Khan Burdi and village: Gul Baig Solangi Taluka & District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-05-23', '71302999', 1, 1, '2022-08-14 12:37:09'),
(294, 1, 'A-03821', '2022-05-20 00:00:00', 292, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers and Assistant Trainers at District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad', '180000.00', 5, 8100, 171900, '2022-05-25', '71303000', 1, 1, '2022-08-14 12:39:24'),
(295, 1, 'A-03821', '2022-05-20 00:00:00', 293, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 20 trainees of Hatchery Technician & Management at upper Sindh Fish Hatchery Mando Dero Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '92000.00', 5, 4140, 87860, '2022-05-25', '71303001', 1, 1, '2022-08-14 12:41:40'),
(296, 1, 'A-03821', '2022-05-23 00:00:00', 294, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Nazeer Ahmed S/o Abdul Hafeez', 'Payment of one month rent of bungalow no 650 near Fatima Housing Society Taluka Gambat District Khairpur Mirs from 16-05-2022 to 16-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '35000.00', 0, 0, 35000, '2022-05-25', '71303002', 1, 1, '2022-08-14 12:43:59'),
(297, 1, 'A-03821', '2022-05-20 00:00:00', 295, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers at District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-05-25', '71303003', 1, 1, '2022-08-14 12:46:08'),
(298, 1, 'A-03821', '2022-05-20 00:00:00', 296, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 20 trainees of the Hatchery Technician & Management course at Fish Hatchery District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '92000.00', 5, 4140, 87860, '2022-05-25', '71303004', 1, 1, '2022-08-14 12:48:32'),
(299, 1, 'A-03205', '2022-04-30 00:00:00', 297, 'NBP-Wapda Colony Branch', '', 35, 55, 'M/s: M&P Express Logistics PVT Limited', 'Payment for Postages & Courier under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '1000.00', 0, 0, 1000, '2022-05-25', '71303005', 1, 1, '2022-08-14 12:53:19'),
(300, 1, 'A-03821', '2022-05-20 00:00:00', 298, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in Six villages of District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad', '276000.00', 5, 12420, 263580, '2022-05-25', '71303006', 1, 1, '2022-08-14 12:56:07'),
(301, 1, 'A-03821', '2022-05-20 00:00:00', 299, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers at District Hyderabad under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-05-25', '71303007', 1, 1, '2022-08-14 12:57:37'),
(302, 1, 'A-03907', '2022-03-24 00:00:00', 300, 'NBP-Wapda Colony Branch', '', 35, 54, 'M/s: Weechar Hyderabad', 'Payment of Advertisement of awarness material on 23rd March 2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '25000.00', 0, 0, 25000, '2022-05-25', '71303008', 1, 1, '2022-08-14 12:59:07'),
(303, 1, 'A-01', '2022-05-25 00:00:00', 301, 'NBP-Wapda Colony Branch', '', 35, 25, 'Project Allowance of Departmental Officers', 'Project Allowance of Departmental Officers for the month of May-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '45000.00', 0, 0, 45000, '2022-05-30', '71303009-10', 1, 1, '2022-08-15 08:15:10'),
(304, 1, 'A-01', '2022-05-26 00:00:00', 302, 'NBP-Wapda Colony Branch', '', 35, 25, 'Mr. Tajamul Hassan Memon', 'Salary of Contract officer for the month of May-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '70000.00', 0, 0, 70000, '2022-05-30', '71303011', 1, 1, '2022-08-15 08:16:39'),
(305, 1, 'A-03821', '2022-05-26 00:00:00', 303, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Contingent Paid Staff', 'Salary of Contingent Paid Staff for the month of May-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '75000.00', 0, 0, 75000, '2022-05-30', '71303011-14-15', 1, 1, '2022-08-15 08:18:21'),
(306, 1, 'A-03821', '2022-05-26 00:00:00', 304, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Training Coordinator', 'Salary of Training Coordinator of Fisheries wing for the month of May-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '150000.00', 0, 0, 150000, '2022-05-30', '71303016-17-18', 1, 1, '2022-08-15 08:21:17'),
(307, 1, 'A-01', '2022-05-26 00:00:00', 305, 'NBP-Wapda Colony Branch', '', 35, 25, 'Salaries of PMU Staff', 'Salary of Contract staff for the month of May-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '215000.00', 0, 0, 215000, '2022-05-30', '71303012-13', 1, 1, '2022-08-15 08:25:00'),
(308, 1, 'A-03821', '2022-06-02 00:00:00', 306, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of Practical Expenses of Integrated Fish Farming Course in Village: Gambat Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '85000.00', 5, 3825, 81175, '2022-06-06', '71303019', 1, 1, '2022-08-15 09:26:19'),
(309, 1, 'A-03821', '2022-05-27 00:00:00', 307, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Ali Enterprises & Contractor', 'Payment of Misc Expenses for various trainings & PMU under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '56400.00', 5, 2538, 53862, '2022-06-06', '71303020', 1, 1, '2022-08-15 09:28:09'),
(310, 1, 'A-03821', '2022-05-10 00:00:00', 308, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of Fish Farming Extension Technology course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-06-06', '71303021', 1, 1, '2022-08-15 09:29:49'),
(311, 1, 'A-03821', '2022-06-02 00:00:00', 309, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of Practical Material of Integrated Fish Farming Course in village: Karim Dino Shambani Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-06-06', '71303022', 1, 1, '2022-08-15 09:32:15'),
(312, 1, 'A-03821', '2022-06-02 00:00:00', 310, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in Three villages of District Hyderabad during training of Aquaponic Fish Culture under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '165600.00', 5, 7452, 158148, '2022-06-06', '71303023', 1, 1, '2022-08-15 09:37:20'),
(313, 1, 'A-03821', '2022-06-02 00:00:00', 311, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Hatchery Technician & Management at Fisheries Training Center District Naushehro Feroze under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '98500.00', 5, 4433, 94068, '2022-06-06', '71303024', 1, 1, '2022-08-15 09:39:09'),
(314, 1, 'A-03821', '2022-05-10 00:00:00', 312, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of Fish Farming Extension Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-06-06', '71303025', 1, 1, '2022-08-15 09:41:18'),
(315, 1, 'A-03821', '2022-06-02 00:00:00', 313, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming course in village: Sumhano Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-06-06', '71303026', 1, 1, '2022-08-15 09:51:16'),
(316, 1, 'A-03821', '2022-06-06 00:00:00', 314, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 Integrated Fish Farming Course trainees in the village: Lahno Khan Khokhar Taluka Kotdegi and village: Karim Dino Shambani Taluka Kotdegi District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-06-06', '71303027', 1, 1, '2022-08-15 09:53:58'),
(317, 1, 'A-03821', '2022-05-28 00:00:00', 315, 'NBP-Wapda Colony Branch', '', 89, 45, 'Mr. Tajamul Hassan Memon', 'Payment of Misc Expenses under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '55000.00', 0, 0, 55000, '2022-06-06', '71303028', 1, 1, '2022-08-15 09:56:56'),
(318, 1, 'A-03821', '2022-06-02 00:00:00', 316, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming Course in the village: Lahno Khan Khokhar Taluka Kotdegi District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad. ', '85000.00', 5, 3825, 81175, '2022-06-06', '71303029', 1, 1, '2022-08-15 10:02:23'),
(319, 1, 'A-03821', '2022-06-02 00:00:00', 317, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of Practical Material of Hatchery Technician & Management at Fisheries Training Center Dokri District Larkana under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '98500.00', 5, 4433, 94068, '2022-06-06', '71303030', 1, 1, '2022-08-15 10:06:26'),
(320, 1, 'A-03821', '2022-05-10 00:00:00', 318, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Fish Farming Extension Technology Course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-06-06', '71303031', 1, 1, '2022-08-15 10:19:39'),
(321, 1, 'A-03821', '2022-06-02 00:00:00', 319, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in six villages of District Hyderabad during training of Integrated Fish Farming under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-06-06', '71303032', 1, 1, '2022-08-15 10:37:43'),
(322, 1, 'A-03821', '2022-06-02 00:00:00', 320, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming course in the village: Allah Warayo Bahlam  Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-06-06', '41303033', 1, 1, '2022-08-15 10:45:32'),
(323, 1, 'A-03821', '2022-06-02 00:00:00', 321, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming in the village: Allah Warayo Bahlam and village: Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-06-06', '71303034', 1, 1, '2022-08-15 10:47:39'),
(324, 1, 'A-03821', '2022-05-26 00:00:00', 322, 'NBP-Wapda Colony Branch', '', 89, 45, 'Mr. Tajamul Hassan Memon', 'Payment of Misc Expenses under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '73000.00', 0, 0, 73000, '2022-06-06', '71303035', 1, 1, '2022-08-15 10:49:07'),
(325, 1, 'A-03821', '2022-06-02 00:00:00', 323, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Muslim Furniture Works', 'Payment of practical expenses of Integrated Fish Farming course in village: Yaqoob Soomro Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad', '85000.00', 5, 3825, 81175, '2022-06-06', '71303036', 1, 1, '2022-08-15 10:50:23'),
(326, 1, 'A-03821', '2022-06-02 00:00:00', 324, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Integrated Fish Farming in the village: Sumhano and village: Yaqoob Soomro Taluka Gambat District Khairpur Mirs  under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-06-06', '71303037', 1, 1, '2022-08-15 10:53:08'),
(327, 1, 'A-03821', '2022-06-06 00:00:00', 325, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of Panaflex under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '37570.00', 5, 1691, 35879, '2022-06-13', '71303038', 1, 1, '2022-08-15 10:54:53'),
(328, 1, 'A-03821', '2022-05-31 00:00:00', 326, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Manzoor Ali Memon', 'Payment of one month rent of Bungalow No: B-44 Near super store Taluka & district Sukkur for the period of 16-05-2022 to 16-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '35000.00', 0, 0, 35000, '2022-06-13', '71303039', 1, 1, '2022-08-15 10:58:19'),
(329, 1, 'A-03821', '2022-06-06 00:00:00', 327, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of refreshment boxes printed in four color for disbursing in trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad.', '100000.00', 5, 4500, 95500, '2022-06-13', '71303040', 1, 1, '2022-08-15 11:01:07'),
(330, 1, 'A-03821', '2022-06-10 00:00:00', 328, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Nursing & Culture Technology course in the village: Ali Wahan Taluka New Sukkur and Village: Altaf Hussain Shaikh Taluka & District Sukkur  under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-06-13', '71303041', 1, 1, '2022-08-15 11:03:16'),
(331, 1, 'A-03821', '2022-06-06 00:00:00', 329, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: M. Iqbal Furniture works', 'Payment of practical material of Fish Farming Extension Technology District Dadu under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '72000.00', 5, 3240, 68760, '2022-06-13', '71303042', 1, 1, '2022-08-15 11:41:13'),
(332, 1, 'A-03821', '2022-06-06 00:00:00', 330, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Ezaan Enterprises Contractor', 'Payment for practical material of Fish Nursing & Culture Technology course in villages of District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '87900.00', 5, 3956, 83945, '2022-06-13', '71303043', 1, 1, '2022-08-15 11:43:44'),
(333, 1, 'A-03821', '2022-05-31 00:00:00', 331, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Al-Madina Traders Hyderabad', 'Payment of post-training follow-up of villages & monitoring of ongoing training of Fisheries wing under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '175779.00', 0, 0, 175779, '2022-06-13', '71303044', 1, 1, '2022-08-15 11:45:48'),
(334, 1, 'A-03821', '2022-06-10 00:00:00', 332, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Nursing & Culture Technology in the village: Haji Bilawal & Village: Jumani Taluka & District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad', '115000.00', 5, 5175, 109825, '2022-06-13', '71303045', 1, 1, '2022-08-15 11:48:40'),
(335, 1, 'A-03821', '2022-06-06 00:00:00', 333, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: M. Iqbal Furniture works', 'Payment of practical material of Fish Farming Extension Technology District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '72000.00', 5, 3240, 68760, '2022-06-13', '71303046', 1, 1, '2022-08-15 11:50:19'),
(336, 1, 'A-03821', '2022-06-06 00:00:00', 334, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Ezaan Enterprises Contractor', 'Payment of practical material of Fish Nursing & Culture Technology Course in villages of District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '87900.00', 5, 3956, 83945, '2022-06-13', '71303047', 1, 1, '2022-08-15 11:52:18'),
(337, 1, 'A-03821', '2022-06-04 00:00:00', 335, 'NBP-Wapda Colony Branch', '', 89, 45, 'Mr. Tajamul Hassan Memon', 'Payment of Misc Expenses under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '24150.00', 0, 0, 24150, '2022-06-13', '71303048', 1, 1, '2022-08-15 11:56:48'),
(338, 1, 'A-03821', '2022-06-10 00:00:00', 336, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 50 trainees of Fish Nursing & Culture Technology Course in the village: Naseerabad and village: Rahoja Taluka & district Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '115000.00', 5, 5175, 109825, '2022-06-13', '71303049', 1, 1, '2022-08-15 12:00:45'),
(339, 1, 'A-03821', '2022-06-06 00:00:00', 337, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: M. Iqbal Furniture works', 'Payment of practical material of Fish Farming Extension Technology District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '72000.00', 5, 3240, 68760, '2022-06-13', '71303050', 1, 1, '2022-08-15 12:02:50'),
(340, 1, 'A-03821', '2022-06-06 00:00:00', 338, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Ezaan Enterprises Contractor', 'Payment for practical material of Fish Nursing & Culture Technology course in villages of District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '87900.00', 5, 3956, 83945, '2022-06-13', '71303051', 1, 1, '2022-08-15 12:04:28'),
(341, 1, 'A-03821', '2022-06-06 00:00:00', 339, 'NBP-Wapda Colony Branch', '', 89, 48, 'Mr. Tajamul Hassan Memon', 'Payment of tyres of Toyota Hiace ven GS-17877 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '62000.00', 0, 0, 62000, '2022-06-13', '71303052', 1, 1, '2022-08-15 12:06:50'),
(342, 1, 'A-03821', '2022-06-07 00:00:00', 340, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Mesum Enterprises', 'Payment of stationary articles for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad.', '141642.00', 5, 6374, 135268, '2022-06-13', '71303053', 1, 1, '2022-08-15 12:08:32'),
(343, 1, 'A-03821', '2022-06-14 00:00:00', 341, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Fish Farming Extension Technology in six villages of District Sukkur from 16-05-2022 to 14-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '422000.00', 0, 0, 422000, '2022-06-14', '71303054-65', 1, 1, '2022-08-15 12:10:43'),
(344, 1, 'A-03821', '2022-06-15 00:00:00', 342, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Integrated Fish Farming Course in six villages of District Khairpur Mirs from 17-05-2022 to 15-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '440000.00', 0, 0, 440000, '2022-06-14', '71303066-77', 1, 1, '2022-08-15 12:14:26'),
(345, 1, 'A-03959', '2022-06-16 00:00:00', 343, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 146 trainees of Fish Farming Extension Technology course in six villages of District Sukkur from 16-05-2022 to 15-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '730000.00', 0, 0, 730000, '2022-06-17', '71303078', 1, 1, '2022-08-15 12:16:33'),
(346, 1, 'A-03959', '2022-06-16 00:00:00', 344, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of stipend of trainees of 147 trainees of Fish farming Extension Technology course in six villages of District Khairpur Mirs from 17-05-2022 to 15-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '735000.00', 0, 0, 735000, '2022-06-17', '71303079', 1, 1, '2022-08-15 12:18:44'),
(347, 1, 'A-03821', '2022-06-13 00:00:00', 345, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers rendered the services at District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-06-20', '71303080', 1, 1, '2022-08-15 12:19:57'),
(348, 1, 'A-03821', '2022-06-13 00:00:00', 346, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Integrated Fish Farming Course in District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-06-20', '71303081', 1, 1, '2022-08-15 12:30:27'),
(349, 1, 'A-03821', '2022-06-11 00:00:00', 347, 'NBP-Wapda Colony Branch', '', 89, 43, 'M/s: Dua Enterprises', 'Payment of refreshment material for 20 trainees of Hatchery Technician & Management at Lower Sindh Fish Hatchery Chillya Thatta under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '92000.00', 5, 4140, 87860, '2022-06-20', '71303082', 1, 1, '2022-08-15 12:32:52'),
(350, 1, 'A-03970', '2022-05-31 00:00:00', 348, 'NBP-Wapda Colony Branch', '', 35, 58, 'M/s: Al-Abeer Beverages Enterprises', 'Payment of Miscellaneous Expenses under PMU-BBSHRRDB Livestock & Fisheries Department Hyderabad.', '2450.00', 0, 0, 2450, '2022-06-20', '71303083', 1, 1, '2022-08-15 12:37:49'),
(351, 1, 'A-03821', '2022-06-16 00:00:00', 349, 'NBP-Wapda Colony Branch', '', 89, 48, 'Mr. Tajamul Hassan Memon', 'Payment of repair of Suzuki Mehran GS-686, Toyota Hiace ven GS-534, GS-535 & 17877 under used in different trainings of Livestock & Fisheries wing BBSHRRDB Hyderabad.', '86220.00', 0, 0, 86220, '2022-06-20', '71303084', 1, 1, '2022-08-15 12:40:44'),
(352, 1, 'A-03821', '2022-06-13 00:00:00', 350, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of three-time meal including two-time tea for Trainers & Assistant Trainers rendered the services at District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-06-20', '71303085', 1, 1, '2022-08-15 12:47:26'),
(353, 1, 'A-03821', '2022-06-13 00:00:00', 351, 'NBP-Wapda Colony Branch', '', 89, 36, 'M/s: Everykind Transport', 'Payment of survey of villages for conducting training of Fish Nursing & Culture Technology course in District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '90000.00', 5, 4050, 85950, '2022-06-20', '71303086', 1, 1, '2022-08-15 12:58:39'),
(354, 1, 'A-03821', '2022-06-22 00:00:00', 352, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers of Hatchery Technician & Management course rendered the services at Fisheries Training Center District Naushehro Feroze from 24-05-2022 to 22-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '80000.00', 0, 0, 80000, '2022-06-22', '71303087-88', 1, 1, '2022-08-15 13:03:33'),
(355, 1, 'A-03821', '2022-06-23 00:00:00', 383, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Integrated Fish Farming in six villages of District Hyderabad from 23-05-2022 to 21-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '480000.00', 0, 0, 480000, '2022-06-29', '71303090-101', 1, 1, '2022-08-15 13:06:28'),
(356, 1, 'A-03821', '2022-06-23 00:00:00', 354, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salaries of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers rendered the services during the training of Aquaponic Fish Culture in Three villages of District Hyderabad from 23-05-2022 to 21-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '240000.00', 0, 0, 240000, '2022-06-29', '71303102-07', 1, 1, '2022-08-15 13:08:25'),
(357, 1, 'A-03959', '2022-06-21 00:00:00', 355, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of Stipend of trainees of 148 trainees of Integrated Fish Farming Course in six villages of District Hyderabad from 23-05-2022 to 21-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '373500.00', 0, 0, 373500, '2022-06-29', '71303108', 1, 1, '2022-08-15 13:10:59'),
(358, 1, 'A-03959', '2022-06-21 00:00:00', 356, 'NBP-Wapda Colony Branch', '', 90, 23, 'M/s: Chief Post Master General Hyderabad', 'Payment of stipend of trainees of 74 trainees of Aquaponic Fish Culture course in six villages of District Hyderabad from 23-05-2022 to 21-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '370000.00', 0, 0, 370000, '2022-06-29', '71303109', 1, 1, '2022-08-15 13:13:35'),
(359, 1, 'A-01', '2022-06-26 00:00:00', 357, 'NBP-Wapda Colony Branch', '', 35, 25, 'Project Allowance of Departmental Officers', 'Project Allowance of Departmental officers for the month of June-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '45000.00', 0, 0, 45000, '2022-06-29', '71303110-11', 1, 1, '2022-08-15 13:17:16'),
(360, 1, '', '2022-06-26 00:00:00', 358, 'NBP-Wapda Colony Branch', '', 35, 25, 'Mr. Tajamul Hassan Memon', 'Salary of Contract Officer for the month of June-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '70000.00', 0, 0, 70000, '2022-06-29', '71303116', 1, 1, '2022-08-15 13:19:04'),
(361, 1, 'A-01', '2022-06-26 00:00:00', 359, 'NBP-Wapda Colony Branch', '', 35, 25, 'Salaries of PMU Staff', 'Salary of Contract staff for the month of June-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '215000.00', 0, 0, 215000, '2022-06-29', '71303112-13-16', 1, 1, '2022-08-15 13:21:37'),
(362, 1, 'A-03821', '2022-06-26 00:00:00', 360, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Contingent Paid Staff', 'Salary of Contigent Paid Staff for the month of June-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '75000.00', 0, 0, 75000, '2022-06-29', '71303114-15', 1, 1, '2022-08-15 13:23:11'),
(363, 1, 'A-03821', '2022-06-26 00:00:00', 361, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment for practical material of Aquaponic Fish Culture course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-06-29', '71303117', 1, 1, '2022-08-15 13:36:21'),
(364, 1, 'A-03821', '2022-06-13 00:00:00', 362, 'NBP-Wapda Colony Branch', '', 89, 38, 'Mr. Nazeer Ahmed S/o Abdul Hafeez', 'Payment of one month rent of Bungalow No: 650 Near Fatima marriage Hall Taluka Gambat District Khairpur Mirs under BBSHRRDB Livestock & fisheries Department Hyderabad.', '35000.00', 0, 0, 35000, '2022-06-29', '71303118', 1, 1, '2022-08-15 13:38:17'),
(365, 1, 'A-03821', '2022-06-26 00:00:00', 363, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment for practical material of Aquaponic Fish Culture course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '96750.00', 5, 4354, 92396, '2022-06-29', '71303119', 1, 1, '2022-08-15 13:39:54'),
(366, 1, 'A-03821', '2022-06-26 00:00:00', 364, 'NBP-Wapda Colony Branch', '', 89, 42, 'M/s: Mesum Enterprises', 'Payment of Stationary articles for trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad.', '141642.00', 5, 6374, 135268, '2022-06-29', '71303120', 1, 1, '2022-08-15 13:41:33'),
(367, 1, 'A-03821', '2022-06-26 00:00:00', 365, 'NBP-Wapda Colony Branch', '', 89, 39, 'M/s: Nadeem Enterprises', 'Payment of practical material of Aquaponic Fish Culture under BBSHRRDB Livestock & Fisheries Department Hyderabad', '96750.00', 5, 4354, 92396, '2022-06-29', '71303121', 1, 1, '2022-08-15 13:44:20'),
(368, 1, 'A-03821', '2022-06-26 00:00:00', 366, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Training Coordinator', 'Salary of Training Coordinators of Fisheries wing for the period of 01-06-2022 to 30-06-2022 under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '150000.00', 0, 0, 150000, '2022-07-04', '71303122-24', 1, 1, '2022-08-15 13:46:17'),
(369, 1, 'A-03821', '2022-06-27 00:00:00', 367, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s; Haniya Enterprises', 'Payment of printed wall clock for disbursing among the trainees of BBSHRRDB Livestock & Fisheries Department Hyderabad.', '130000.00', 5, 5850, 124150, '2022-07-04', '71303125', 1, 1, '2022-08-15 13:48:14'),
(370, 1, 'A-03821', '2022-06-24 00:00:00', 368, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of Fish Farming Extension Technology Course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-07-04', '71303126', 1, 1, '2022-08-15 13:50:17'),
(371, 1, 'A-03821', '2022-06-26 00:00:00', 369, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of three-time meal including two-time tea for Trainers & Assistant Trainers at District Sukkur under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-07-04', '71303127', 1, 1, '2022-08-15 13:52:10'),
(372, 1, 'A-03821', '2022-06-26 00:00:00', 370, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & drop of Trainers & Assistant Trainers in six villages of District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-07-04', '71303128', 1, 1, '2022-08-15 13:53:52'),
(373, 1, 'A-03821', '2022-06-21 00:00:00', 371, 'NBP-Wapda Colony Branch', '', 89, 37, 'Salary of Trainers & Assistant Trainers', 'Salary of Trainers & Assistant Trainers of Hatchery Technician & Management course rendered the services at Fisheries Training Center Sukkur under BBSHRRDB Livestock & fisheries Department Hyderabad. ', '50000.00', 0, 0, 50000, '2022-07-04', '71303129', 1, 1, '2022-08-15 13:56:34'),
(374, 1, 'A-03821', '2022-06-27 00:00:00', 372, 'NBP-Wapda Colony Branch', '', 89, 45, 'M/s: Haniya Enterprises', 'Payment of printing of Panaflexs, envelopes, visiting cards & Lunch boxes under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '73600.00', 5, 3312, 70288, '2022-07-04', '71303130', 1, 1, '2022-08-15 13:58:20'),
(375, 1, 'A-03821', '2022-06-04 00:00:00', 373, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of Water Quality Kits for three position Holder trainees of Integrated Fish farming Course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-07-04', '71303131', 1, 1, '2022-08-15 13:59:42'),
(376, 1, 'A-03821', '2022-06-26 00:00:00', 374, 'NBP-Wapda Colony Branch', '', 89, 41, 'M/s: Asad Enterprises', 'Payment of Three Time Meal including Two Time Tea for Trainers & Assistant Trainers rendered the services at District Khairpur Mirs under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '180000.00', 5, 8100, 171900, '2022-07-04', '71303132', 1, 1, '2022-08-15 14:01:54'),
(377, 1, 'A-03821', '2022-06-26 00:00:00', 375, 'NBP-Wapda Colony Branch', '', 89, 46, 'M/s: Everykind Transport', 'Payment of Daily Pick & Drop of Trainers & Assistant Trainers in Six villages of District Sukkur during the training of Fish Nursing & Culture Technology under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '276000.00', 5, 12420, 263580, '2022-07-04', '71303133', 1, 1, '2022-08-15 14:04:05'),
(378, 1, 'A-03205', '2022-05-31 00:00:00', 376, 'NBP-Wapda Colony Branch', '', 35, 55, 'M/s: M&P Express Logistics PVT Limited', 'Payment for postages & Courier under PMU BBSHRRDB Livestock & Fisheries Department Hyderabad.', '5758.00', 0, 0, 5758, '2022-07-04', '71303134', 1, 1, '2022-08-15 14:05:45'),
(379, 1, 'A-03821', '2022-06-24 00:00:00', 377, 'NBP-Wapda Colony Branch', '', 89, 40, 'M/s: Sumsam Enterprises', 'Payment of water quality kits for three position holder trainees of Integrated Fish Farming course under BBSHRRDB Livestock & Fisheries Department Hyderabad.', '99500.00', 5, 4478, 95023, '2022-07-04', '71303135', 1, 1, '2022-08-15 14:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `work_order_number` varchar(50) NOT NULL,
  `due_date` date NOT NULL,
  `invoice_date` date NOT NULL,
  `type` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `net_amount` decimal(10,2) NOT NULL,
  `sales_tax` decimal(10,2) NOT NULL,
  `wht` decimal(10,2) NOT NULL,
  `project_payment_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `project_id`, `work_order_number`, `due_date`, `invoice_date`, `type`, `total_amount`, `discount`, `net_amount`, `sales_tax`, `wht`, `project_payment_id`, `status`, `ts`) VALUES
(1, 2, '222', '2022-01-20', '2022-01-20', '0', '4.00', '0.00', '4.52', '0.52', '0.40', NULL, 1, '2022-01-20 15:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `quantity_unit` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`id`, `invoice_id`, `details`, `rate`, `quantity`, `quantity_unit`, `amount`) VALUES
(1, 1, 'det', '2.00', '2.00', 0, '4.00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `depth` int(1) NOT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `small_icon` varchar(200) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `parent_id`, `depth`, `sortorder`, `icon`, `small_icon`) VALUES
(1, 'Dashboard', '#', 0, 0, 1, 'dashboard.png', 'home'),
(8, 'Manage Users', 'admin_manage.php', 1, 1, 4, 'administrator.png', 'user'),
(7, 'General Settings', 'config_manage.php?config_id=1', 1, 1, 2, 'general-settings.png', 'cog'),
(22, 'Reports', '#', 0, 0, 11, 'reports.png', 'line-chart'),
(24, 'General Journal', 'report_manage.php?tab=general_journal', 22, 1, 12, 'general-journal.png', 'th-large'),
(26, 'Manage User Types', 'admin_type_manage.php', 1, 1, 3, 'admin-type.png', 'unlock-alt'),
(30, 'Accounts', '#', 0, 0, 5, 'accounts.jpg', 'suitcase'),
(28, 'Manage Expenses', 'expense_manage.php', 30, 1, 10, 'manage-expense.png', 'car'),
(32, 'Manage Releases', 'transaction_manage.php', 30, 1, 8, 'transaction.png', 'money'),
(35, 'Manage Allocation', 'account_manage.php', 30, 1, 7, 'manage-accounts.png', 'balance-scale'),
(40, 'Expense Category', 'expense_category_manage.php', 30, 1, 9, 'expense-category.png', 'server'),
(53, 'Expenditure Statement', 'report_manage.php?tab=expenditure_statement', 22, 1, 13, 'balance-sheet.png', '500px'),
(66, 'Manage Wing', 'wing_manage.php', 30, 1, 6, 'manage-wing.png', 'archive');

-- --------------------------------------------------------

--
-- Table structure for table `menu_2_admin_type`
--

CREATE TABLE `menu_2_admin_type` (
  `menu_id` int(11) NOT NULL,
  `admin_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_2_admin_type`
--

INSERT INTO `menu_2_admin_type` (`menu_id`, `admin_type_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(4, 4),
(5, 1),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(12, 1),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(49, 1),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(59, 3),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `wing_id` int(11) DEFAULT NULL,
  `code` varchar(200) NOT NULL,
  `account_id` int(11) NOT NULL,
  `reference_id` int(1) NOT NULL DEFAULT '0',
  `datetime_added` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `details` text NOT NULL,
  `cheque_number` varchar(50) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `wing_id`, `code`, `account_id`, `reference_id`, `datetime_added`, `amount`, `details`, `cheque_number`, `added_by`, `status`, `ts`) VALUES
(26, 1, 'A-03821', 89, 36, '2022-01-13', '1037500.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:26:35'),
(27, 1, 'A-03821', 89, 37, '2022-01-13', '5141883.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:26:42'),
(28, 1, 'A-03821', 89, 38, '2022-01-13', '151500.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:26:49'),
(29, 1, 'A-03821', 89, 39, '2022-01-13', '3905000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:26:58'),
(30, 1, 'A-03821', 89, 40, '2022-01-13', '1380000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:27:06'),
(31, 1, 'A-03821', 89, 41, '2022-01-13', '1590000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 14:04:10'),
(32, 1, 'A-03821', 89, 42, '2022-01-13', '905843.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:27:13'),
(33, 1, 'A-03821', 89, 43, '2022-01-13', '3059000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:29:08'),
(34, 1, 'A-03821', 89, 45, '2022-01-13', '731115.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:29:16'),
(35, 1, 'A-03821', 89, 46, '2022-01-13', '2398900.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:29:23'),
(36, 1, 'A-03821', 89, 47, '2022-01-13', '632500.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:29:31'),
(37, 1, 'A-03821', 89, 48, '2022-01-13', '205000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:29:38'),
(38, 1, 'A-03959', 90, 23, '2022-01-13', '6650000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:29:48'),
(39, 1, 'A-01', 35, 25, '2022-01-13', '1120000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:29:58'),
(40, 1, 'A-03807', 35, 52, '2022-01-13', '50000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:30:08'),
(41, 1, 'A-09805', 35, 53, '2022-01-13', '78750.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:30:17'),
(42, 1, 'A-03907', 35, 54, '2022-01-13', '25000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:30:28'),
(43, 1, 'A-03205', 35, 55, '2022-01-13', '15000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:30:43'),
(44, 1, 'A-03901', 35, 56, '2022-01-13', '25000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:30:52'),
(45, 1, 'A-03202', 35, 57, '2022-01-13', '25000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:31:01'),
(46, 1, 'A-03970', 35, 58, '2022-01-13', '25000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:31:09'),
(47, 1, 'A-013001', 35, 59, '2022-01-13', '50000.00', 'First Tranche', '334692', 0, 1, '2022-07-27 13:31:18'),
(48, 2, '', 34, 61, '2022-01-13', '25000.00', '', '334693', 0, 1, '2022-07-22 06:13:09'),
(49, 2, '', 34, 62, '2022-01-13', '80000.00', '', '334693', 0, 1, '2022-07-15 11:23:44'),
(50, 2, '', 34, 63, '2022-01-13', '60000.00', '', '334693', 0, 1, '2022-07-15 11:24:16'),
(51, 2, '', 34, 36, '2022-01-13', '1394500.00', '', '334693', 0, 1, '2022-07-15 11:24:50'),
(52, 2, '', 34, 37, '2022-01-13', '5180000.00', '', '334693', 0, 1, '2022-07-15 11:25:20'),
(53, 2, '', 34, 38, '2022-01-13', '105000.00', '', '334693', 0, 1, '2022-07-15 11:25:47'),
(54, 2, '', 34, 67, '2022-01-13', '3415000.00', '', '334693', 0, 1, '2022-07-15 11:26:27'),
(55, 2, '', 34, 40, '2022-01-13', '5710000.00', '', '334693', 0, 1, '2022-07-16 08:12:06'),
(56, 2, '', 34, 41, '2022-01-13', '1644000.00', '', '334693', 0, 1, '2022-07-15 11:27:19'),
(57, 2, '', 34, 42, '2022-01-13', '773000.00', '', '334693', 0, 1, '2022-07-15 11:27:47'),
(58, 2, '', 34, 43, '2022-01-13', '3094000.00', '', '334693', 0, 1, '2022-07-15 11:28:16'),
(59, 2, '', 34, 45, '2022-01-13', '930000.00', '', '334693', 0, 1, '2022-07-15 11:28:47'),
(60, 2, '', 34, 46, '2022-01-13', '3074000.00', '', '334693', 0, 1, '2022-07-15 11:29:18'),
(61, 2, '', 34, 47, '2022-01-13', '468000.00', '', '334693', 0, 1, '2022-07-15 11:29:50'),
(62, 2, '', 34, 48, '2022-01-13', '201000.00', '', '334693', 0, 1, '2022-07-15 11:30:18'),
(63, 2, '', 23, 49, '2022-01-13', '5475000.00', '', '334693', 0, 1, '2022-07-15 11:30:58'),
(64, 2, '', 35, 51, '2022-01-13', '1251000.00', '', '334693', 0, 1, '2022-07-15 11:31:35'),
(65, 2, '', 35, 54, '2022-01-13', '25000.00', '', '334693', 0, 1, '2022-07-15 11:37:54'),
(66, 2, '', 35, 52, '2022-01-13', '50000.00', '', '334693', 0, 1, '2022-07-15 11:38:21'),
(67, 2, '', 35, 53, '2022-01-13', '50000.00', '', '334693', 0, 1, '2022-07-15 11:40:36'),
(68, 2, '', 35, 55, '2022-01-13', '14000.00', '', '334693', 0, 1, '2022-07-15 11:52:12'),
(69, 2, '', 35, 56, '2022-01-13', '35000.00', '', '334693', 0, 1, '2022-07-15 11:52:48'),
(70, 2, '', 35, 57, '2022-01-13', '45000.00', '', '334693', 0, 1, '2022-07-15 11:53:35'),
(71, 2, '', 35, 72, '2022-01-13', '40000.00', '', '334693', 0, 1, '2022-07-15 11:54:06'),
(72, 2, '', 35, 86, '2022-01-13', '45000.00', '', '334693', 0, 1, '2022-07-15 11:54:55'),
(73, 2, '', 35, 87, '2022-01-13', '50000.00', '', '334693', 0, 1, '2022-07-15 11:55:32'),
(74, 1, 'A-03821', 89, 36, '2022-03-29', '639511.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:40:09'),
(75, 1, 'A-03821', 89, 37, '2022-03-29', '3169438.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:41:08'),
(76, 1, 'A-03821', 89, 38, '2022-03-29', '93384.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:41:45'),
(77, 1, 'A-03821', 89, 39, '2022-03-29', '2407028.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:42:38'),
(78, 1, 'A-03821', 89, 40, '2022-03-29', '850627.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:43:17'),
(79, 1, 'A-03821', 89, 41, '2022-03-29', '980070.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:43:56'),
(80, 1, 'A-03821', 89, 42, '2022-03-29', '558358.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:44:40'),
(81, 1, 'A-03821', 89, 43, '2022-03-29', '1885556.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:45:14'),
(82, 1, 'A-03821', 89, 45, '2022-03-29', '450657.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:45:49'),
(83, 1, 'A-03821', 89, 46, '2022-03-29', '1478673.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:46:21'),
(84, 1, 'A-03821', 89, 47, '2022-03-29', '389871.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:47:04'),
(85, 1, 'A-03821', 89, 48, '2022-03-29', '126361.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:47:48'),
(86, 1, 'A03959', 90, 23, '2022-03-29', '4099036.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:48:28'),
(87, 1, 'A-01', 35, 25, '2022-03-29', '690364.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 13:49:23'),
(88, 1, 'A-03807', 35, 52, '2022-03-29', '25000.00', 'Second Tranche\r\n', '337437', 0, 1, '2022-07-27 14:05:51'),
(89, 1, 'A-09805', 35, 53, '2022-03-29', '25000.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 14:06:53'),
(90, 1, 'A-03907', 35, 54, '2022-03-29', '25000.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 14:07:59'),
(91, 1, 'A-03205', 35, 55, '2022-03-29', '10000.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 14:08:53'),
(92, 1, 'A-03901', 35, 56, '2022-03-09', '25000.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 14:09:47'),
(93, 1, 'A-03202', 35, 57, '2022-03-29', '15000.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 14:10:43'),
(94, 1, 'A-03970', 35, 58, '2022-03-29', '26066.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 14:12:57'),
(95, 1, 'A-013001', 35, 59, '2022-03-29', '30000.00', 'Second Tranche', '337437', 0, 1, '2022-07-27 14:13:45'),
(96, 1, 'A-03821', 89, 36, '2022-05-31', '631323.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:22:23'),
(98, 1, 'A-03821', 89, 37, '2022-05-31', '3128857.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:26:09'),
(99, 1, 'A-03821', 89, 38, '2022-05-31', '92188.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:27:15'),
(100, 1, 'A-03821', 89, 39, '2022-05-31', '2376208.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:29:20'),
(101, 1, 'A-03821', 89, 40, '2022-05-31', '839736.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:29:04'),
(102, 1, 'A-03821', 89, 41, '2022-05-31', '967521.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:30:01'),
(103, 1, 'A-03821', 89, 42, '2022-05-31', '551209.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:31:08'),
(104, 1, 'A-03821', 89, 43, '2022-05-31', '1861414.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:33:11'),
(105, 1, 'A-03821', 89, 45, '2022-05-31', '444886.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:34:17'),
(106, 1, 'A-03821', 89, 47, '2022-05-31', '608504.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:36:33'),
(107, 1, 'A-03821', 89, 46, '2022-05-31', '1459740.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:39:54'),
(108, 1, 'A-03821', 89, 48, '2022-05-31', '124743.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:40:32'),
(109, 1, 'A-03959', 90, 23, '2022-05-31', '4046522.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:41:13'),
(110, 1, 'A-01', 35, 25, '2022-05-31', '681525.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:41:57'),
(111, 1, 'A-03807', 35, 52, '2022-05-31', '25000.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:52:22'),
(112, 1, 'A-09805', 35, 53, '2022-05-31', '30000.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:53:00'),
(113, 1, 'A03907', 35, 54, '2022-05-31', '25000.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:53:37'),
(114, 1, 'A-03205', 35, 55, '2022-05-31', '10000.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:54:21'),
(115, 1, 'A-03901', 35, 56, '2022-05-31', '25000.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:54:58'),
(116, 1, 'A-03202', 35, 57, '2022-05-31', '25000.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:56:04'),
(117, 1, 'A-03970', 35, 58, '2022-05-31', '25594.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:56:45'),
(118, 1, 'A-013001', 35, 59, '2022-05-31', '20000.00', 'Third Tranche', '337683', 0, 1, '2022-07-27 14:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filelocation` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wing`
--

CREATE TABLE `wing` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wing`
--

INSERT INTO `wing` (`id`, `title`, `status`, `ts`) VALUES
(1, 'Fisheries', 1, '2022-06-03 15:37:04'),
(2, 'Livestock', 1, '2022-06-03 15:37:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_type`
--
ALTER TABLE `admin_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_type`
--
ALTER TABLE `config_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_variable`
--
ALTER TABLE `config_variable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_2_admin_type`
--
ALTER TABLE `menu_2_admin_type`
  ADD PRIMARY KEY (`menu_id`,`admin_type_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wing`
--
ALTER TABLE `wing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `admin_type`
--
ALTER TABLE `admin_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config_type`
--
ALTER TABLE `config_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `config_variable`
--
ALTER TABLE `config_variable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wing`
--
ALTER TABLE `wing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2022 at 08:56 AM
-- Server version: 8.0.29
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accountants_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int NOT NULL,
  `wing_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL,
  `is_petty_cash` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `wing_id`, `parent_id`, `code`, `title`, `type`, `description`, `balance`, `is_petty_cash`, `status`, `ts`) VALUES
(1, NULL, 0, '', 'Training Cost', 0, '', '0.00', 0, 1, '2022-04-15 05:04:17'),
(2, NULL, 0, '', 'Stipend & Dislocation Cost', 0, '', '0.00', 0, 1, '2022-04-15 05:06:01'),
(3, NULL, 1, '', 'Survey of Villages', 0, '', '0.00', 0, 1, '2022-04-15 05:06:39'),
(4, NULL, 2, '', 'Stipend Cost', 0, '', '0.00', 0, 1, '2022-04-15 05:08:13'),
(5, NULL, 1, '', 'Survey of villages', 0, '', '500000.00', 0, 1, '2022-04-16 20:58:57'),
(6, 2, 1, '21541-215412', 'Remuneration (Training staff)', 0, '', '1000000.00', 0, 1, '2022-07-15 13:35:29'),
(7, 1, 1, '12354', 'Refreshment Cost', 0, '', '500000.00', 0, 1, '2022-07-15 13:35:16'),
(9, 1, 2, '1213', 'Alhye', NULL, NULL, '2000.00', 0, 1, '2022-07-15 13:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `admin_type_id` int NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `can_add` int NOT NULL DEFAULT '0',
  `can_edit` int NOT NULL DEFAULT '0',
  `can_delete` int NOT NULL DEFAULT '0',
  `can_read` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `sortorder` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `config_type_id` int NOT NULL,
  `title` varchar(512) NOT NULL,
  `notes` varchar(512) NOT NULL,
  `type` varchar(200) NOT NULL,
  `default_values` text NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `sortorder` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `wing_id` int NOT NULL,
  `datetime_added` datetime NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `expense_category_id` varchar(100) NOT NULL,
  `major_head` int NOT NULL,
  `sub_head` int NOT NULL,
  `payee` varchar(50) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `income_tax` int DEFAULT NULL,
  `income_tax_deducted` int DEFAULT NULL,
  `cheque_amount` int DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `cheque_number` varchar(50) NOT NULL,
  `added_by` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `wing_id`, `datetime_added`, `voucher_no`, `expense_category_id`, `major_head`, `sub_head`, `payee`, `details`, `amount`, `income_tax`, `income_tax_deducted`, `cheque_amount`, `cheque_date`, `cheque_number`, `added_by`, `status`, `ts`) VALUES
(1, 0, '2022-01-20 20:45:00', '', '0', 0, 0, '', '', '99.00', NULL, NULL, NULL, NULL, '', 1, 1, '2022-01-20 15:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `work_order_number` varchar(50) NOT NULL,
  `due_date` date NOT NULL,
  `invoice_date` date NOT NULL,
  `type` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `net_amount` decimal(10,2) NOT NULL,
  `sales_tax` decimal(10,2) NOT NULL,
  `wht` decimal(10,2) NOT NULL,
  `project_payment_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
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
  `id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `details` text NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `quantity_unit` int NOT NULL,
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
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `parent_id` int NOT NULL,
  `depth` int NOT NULL,
  `sortorder` int DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `small_icon` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
(53, 'Balance Sheet', 'report_manage.php?tab=balance_sheet', 22, 1, 13, 'balance-sheet.png', '500px'),
(66, 'Manage Wing', 'wing_manage.php', 30, 1, 6, 'manage-wing.png', 'archive');

-- --------------------------------------------------------

--
-- Table structure for table `menu_2_admin_type`
--

CREATE TABLE `menu_2_admin_type` (
  `menu_id` int NOT NULL,
  `admin_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` int NOT NULL,
  `wing_id` int DEFAULT NULL,
  `account_id` int NOT NULL,
  `reference_id` int NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL,
  `date_added` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `details` text NOT NULL,
  `cheque_number` varchar(50) NOT NULL,
  `added_by` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `wing_id`, `account_id`, `reference_id`, `code`, `date_added`, `amount`, `details`, `cheque_number`, `added_by`, `status`, `ts`) VALUES
(1, 1, 2, 4, '12354', '2022-07-29', '500000.00', 'Stipend cost', '332323', 0, 1, '2022-07-16 08:53:47'),
(2, 2, 2, 7, '21541-215412', '1970-01-01', '30000.00', 'Alhye Chaw', '12124', 0, 1, '2022-07-16 08:51:38'),
(3, 0, 0, 0, '21541-215412', '2022-07-21', '20000.00', 'ALhye Chaw ', '23152', 0, 1, '2022-07-16 08:52:53'),
(4, 0, 0, 0, '21541-215412', '2022-07-21', '20000.00', 'ALhye Chaw ', '23152', 0, 1, '2022-07-16 08:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filelocation` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `wing`
--

CREATE TABLE `wing` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `admin_type`
--
ALTER TABLE `admin_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config_type`
--
ALTER TABLE `config_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `config_variable`
--
ALTER TABLE `config_variable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wing`
--
ALTER TABLE `wing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

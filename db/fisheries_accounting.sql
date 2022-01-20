-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2022 at 04:04 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fisheries_accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL,
  `is_petty_cash` int(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `monthly_salary` decimal(10,2) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_type_id`, `username`, `email`, `name`, `monthly_salary`, `password`, `status`) VALUES
(1, 1, 'admin', 'hassan@hotmail.com', 'Waqar', '0.00', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_2_project`
--

CREATE TABLE `admin_2_project` (
  `admin_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `client_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `representative_name` varchar(100) NOT NULL,
  `phone` varchar(50) CHARACTER SET latin1 NOT NULL,
  `address` text CHARACTER SET latin1 NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `client_name`, `representative_name`, `phone`, `address`, `balance`, `status`, `ts`) VALUES
(1, 'first client', 'first Representative', '1234567888', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '9999.00', 1, '2022-01-20 11:46:52'),
(2, 'second client', 'second Representative', '22999', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '1000.00', 1, '2022-01-20 11:47:44');

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
(1, 1, 'Site URL', '', 'text', '', 'site_url', 'https://fisheries_accounting.com/', 2),
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
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `title`, `status`, `ts`) VALUES
(1, 'first designation', 1, '2022-01-20 11:45:46'),
(2, 'second designation', 1, '2022-01-20 11:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cnic_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `date_of_appointment` date NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `bank_account_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `designation_id`, `name`, `father_name`, `contact_number`, `cnic_number`, `gender`, `date_of_appointment`, `address`, `salary`, `bank_account_number`, `status`, `ts`) VALUES
(1, 2, 'first employee', 'employee father', '090078681', '21333434', 0, '2022-01-20', 'addr', 1222, '2', 1, '2022-01-20 11:50:55'),
(2, 1, 'second employee', 'employee father second ', '3434', '21333434', 0, '2022-01-20', 'addr', 1222, '2', 1, '2022-01-20 11:51:37'),
(3, 2, 'third employee', 'employee father second third', '3434', '21333434', 0, '2022-01-20', 'addr', 19999, '55', 1, '2022-01-20 11:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `employee_2_project`
--

CREATE TABLE `employee_2_project` (
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_2_project`
--

INSERT INTO `employee_2_project` (`employee_id`, `project_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `checked_in` datetime DEFAULT NULL,
  `checked_out` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_daily_attendance`
--

CREATE TABLE `employee_daily_attendance` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `taken_by` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `month` int(20) NOT NULL,
  `year` int(11) NOT NULL,
  `datetime_added` datetime DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `employee_id`, `project_id`, `month`, `year`, `datetime_added`, `amount`, `added_by`, `status`, `ts`) VALUES
(1, 1, 1, 1, 2121, '2022-01-20 20:38:00', '3500.00', NULL, 1, '2022-01-20 15:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `salary_id` int(11) DEFAULT '0',
  `datetime_added` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `account_id` int(11) NOT NULL,
  `details` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `cheque_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `datetime_added` datetime NOT NULL,
  `expense_category_id` varchar(100) NOT NULL,
  `account_id` int(11) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `cheque_number` varchar(50) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `project_id`, `datetime_added`, `expense_category_id`, `account_id`, `details`, `amount`, `cheque_number`, `added_by`, `status`, `ts`) VALUES
(1, 0, '2022-01-20 20:45:00', '0', 0, '', '99.00', '', 1, 1, '2022-01-20 15:46:10');

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
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `is_working_day` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `sortorder` int(11) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `small_icon` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `parent_id`, `depth`, `sortorder`, `icon`, `small_icon`) VALUES
(1, 'Dashboard', '#', 0, 0, 1, 'dashboard.png', 'home'),
(19, 'Projects', '#', 0, 0, 12, 'sales.jpg', 'print'),
(20, ' Manage Clients', 'client_manage.php', 19, 1, 16, 'manage-customer.jpg', 'street-view'),
(8, 'Manage Users', 'admin_manage.php', 1, 1, 7, 'administrator.png', 'user'),
(7, 'General Settings', 'config_manage.php?config_id=1', 1, 1, 2, 'general-settings.png', 'cog'),
(52, 'Manage Invoices', 'invoice_manage.php', 19, 1, 13, 'invoice.png', 'file-pdf-o'),
(12, 'Upload Center', 'upload_manage.php', 1, 1, 3, 'upload-center.png', 'file-o'),
(22, 'Reports', '#', 0, 0, 22, 'reports.png', 'line-chart'),
(23, 'Project Report', 'index.php', 22, 1, 23, 'project-report.png', 'file-o'),
(24, 'General Journal', 'report_manage.php?tab=general_journal', 22, 1, 24, 'general-journal.png', 'th-large'),
(26, 'Manage User Types', 'admin_type_manage.php', 1, 1, 8, 'admin-type.png', 'unlock-alt'),
(30, 'Accounts', '#', 0, 0, 17, 'accounts.jpg', 'suitcase'),
(28, 'Manage Expenses', 'expense_manage.php', 30, 1, 20, 'manage-expense.png', 'car'),
(32, 'Manage Transactions', 'transaction_manage.php', 30, 1, 18, 'transaction.png', 'money'),
(51, 'Project Payments', 'project_payment_manage.php', 19, 1, 15, 'project-payment.png', 'credit-card'),
(50, 'Manage Projects', 'project_manage.php', 19, 1, 14, 'manage-projects.png', 'inbox'),
(35, 'Manage Accounts', 'account_manage.php', 30, 1, 19, 'manage-accounts.png', 'balance-scale'),
(40, 'Expense Category', 'expense_category_manage.php', 30, 1, 21, 'expense-category.png', 'server'),
(45, 'Holidays', 'holidays_manage.php', 47, 1, 9, 'holidays.png', 'calendar-o'),
(47, 'Employees', '#', 0, 0, 4, 'employees.jpg', 'user-plus'),
(53, 'Balance Sheet', 'report_manage.php?tab=balance_sheet', 22, 1, 25, 'balance-sheet.png', '500px'),
(54, 'Income Report', 'report_manage.php?tab=income', 22, 1, 26, 'income-report.png', 'backward'),
(55, 'Scheduled Transactions', 'scheduled_transaction_manage.php', 30, 1, 27, 'scheduled-transactions.png', 'clock-o'),
(56, 'Designation', 'designation_manage.php', 47, 1, 5, 'designation.png', 'delicious'),
(57, 'Employee', 'employee_manage.php', 47, 1, 6, 'employee.png', 'users'),
(58, 'Employee Salary', 'employee_salary_manage.php', 47, 1, 26, 'employee-salary.jpg', 'money'),
(59, 'Employee Salary Payment', 'employee_salary_payment_manage.php', 47, 1, 27, 'employee-salary-payment.png', 'cc-stripe'),
(60, 'Generate Employee Salary', 'employee_salary_manage.php?tab=employee_salary', 47, 1, 28, 'generate-employee-salary.png', 'archive');

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
(65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `client_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` text NOT NULL,
  `expected_revenue` decimal(10,2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `client_id`, `start_date`, `end_date`, `details`, `expected_revenue`, `status`, `ts`) VALUES
(1, 'first project', 2, '2022-01-20', '2022-01-20', 'det', '222.00', 1, '2022-01-20 11:48:06'),
(2, 'second project', 1, '2022-01-20', '2022-01-20', 'det 2', '999.00', 1, '2022-01-20 11:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `project_2_account`
--

CREATE TABLE `project_2_account` (
  `project_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_2_expense_category`
--

CREATE TABLE `project_2_expense_category` (
  `project_id` int(11) NOT NULL,
  `expense_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_payment`
--

CREATE TABLE `project_payment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `datetime_added` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `sales_tax` decimal(10,2) NOT NULL,
  `gst_withheld` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invoice_amount` decimal(10,2) NOT NULL,
  `account_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `exempt_tax` int(1) NOT NULL DEFAULT '0',
  `total_applications` int(11) NOT NULL,
  `noc_delivery` int(11) NOT NULL,
  `disabled` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `correction` int(20) NOT NULL,
  `correction_returned` int(20) NOT NULL,
  `home_delivery` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `month` int(20) NOT NULL,
  `year` int(11) NOT NULL,
  `datetime_added` datetime DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary_payment`
--

CREATE TABLE `salary_payment` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `salary_id` int(11) DEFAULT '0',
  `datetime_added` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `account_id` int(11) NOT NULL,
  `details` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_transaction`
--

CREATE TABLE `scheduled_transaction` (
  `id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `schedule` int(11) NOT NULL,
  `day_number` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `reference_id` int(1) NOT NULL DEFAULT '0',
  `datetime_added` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `details` text NOT NULL,
  `lastrun` int(11) NOT NULL,
  `nextrun` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `reference_id` int(1) NOT NULL DEFAULT '0',
  `datetime_added` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `details` text NOT NULL,
  `cheque_number` varchar(50) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filelocation` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- Indexes for table `client`
--
ALTER TABLE `client`
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
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_daily_attendance`
--
ALTER TABLE `employee_daily_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
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
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
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
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_2_account`
--
ALTER TABLE `project_2_account`
  ADD PRIMARY KEY (`project_id`,`account_id`);

--
-- Indexes for table `project_2_expense_category`
--
ALTER TABLE `project_2_expense_category`
  ADD PRIMARY KEY (`project_id`,`expense_category_id`);

--
-- Indexes for table `project_payment`
--
ALTER TABLE `project_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_payment`
--
ALTER TABLE `salary_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduled_transaction`
--
ALTER TABLE `scheduled_transaction`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_daily_attendance`
--
ALTER TABLE `employee_daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_payment`
--
ALTER TABLE `project_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_payment`
--
ALTER TABLE `salary_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scheduled_transaction`
--
ALTER TABLE `scheduled_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

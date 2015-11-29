-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2015 at 07:42 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mlmapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `adminlogin_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Manish Kumar', 'manusachin.kishan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'DjnB7FYRORj348HpWxm9gvXEp22RGHrgMxqn0ppV', '2015-11-21 03:00:15', '2015-11-21 03:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `app_config`
--

CREATE TABLE IF NOT EXISTS `app_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(255) NOT NULL,
  `sys_value` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>for inactive, 1=>active',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `app_config`
--

INSERT INTO `app_config` (`id`, `sys_name`, `sys_value`, `description`, `status`, `ts`) VALUES
(1, 'DATE_FORMAT', 'd M Y', 'default date format', '1', '2015-11-29 11:23:41'),
(2, 'DATE_TIME_FORMAT', 'd M Y H:i:s', 'default date time format', '1', '2015-11-29 11:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icon_file` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon_file`, `category_id`, `position`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'First Category', '/public/images/category/1448710772.png', 0, 1, '2015-11-28 06:09:32', NULL, '2015-11-28 06:09:32'),
(2, 'Second cateogry', '', 0, 2, '2015-11-28 06:11:18', NULL, '2015-11-28 06:11:18'),
(5, 'Four category', '/public/images/category/1448710984.png', 0, 4, '2015-11-28 06:13:04', NULL, '2015-11-28 06:13:04'),
(6, 'Five Category', '', 0, 5, '2015-11-28 06:13:17', NULL, '2015-11-28 06:13:17'),
(7, 'Six category', '', 0, 6, '2015-11-28 06:13:50', NULL, '2015-11-28 06:13:50'),
(8, 'Seven category', '/public/images/category/1448711223.png', 0, 7, '2015-11-28 06:17:03', NULL, '2015-11-28 06:17:03'),
(9, 'Eight category', '', 0, 8, '2015-11-28 06:17:46', NULL, '2015-11-28 06:17:46'),
(10, 'Nine category', '/public/images/category/1448711379.png', 0, 9, '2015-11-28 06:19:39', NULL, '2015-11-28 06:19:39'),
(11, 'Ten category', '', 0, 10, '2015-11-28 06:20:08', NULL, '2015-11-28 06:20:08'),
(12, 'Eleven Category', '/public/images/category/1448711433.png', 0, 11, '2015-11-28 06:20:33', NULL, '2015-11-28 06:20:33'),
(15, 'Fourteen category', '', 0, 14, '2015-11-28 06:21:32', NULL, '2015-11-28 06:21:32'),
(16, 'First sub category', '', 1, 15, '2015-11-29 03:23:25', NULL, '2015-11-29 03:23:25'),
(17, 'Second sub category', '/public/images/category/1448787262.png', 2, 16, '2015-11-29 03:24:22', NULL, '2015-11-29 03:24:22'),
(18, 'Third Subcategories', '/public/images/category/1448790194.png', 2, 17, '2015-11-29 03:26:45', NULL, '2015-11-29 04:13:14'),
(19, 'Four sub category', '/public/images/category/1448787481.png', 2, 18, '2015-11-29 03:28:01', NULL, '2015-11-29 03:28:01'),
(20, 'Five Sub category', '/public/images/category/1448787568.png', 2, 19, '2015-11-29 03:29:28', NULL, '2015-11-29 03:29:28'),
(21, 'Six sub category', '/public/images/category/1448787662.png', 5, 20, '2015-11-29 03:31:02', NULL, '2015-11-29 03:31:02'),
(22, 'Seven sub category', '/public/images/category/1448787777.png', 5, 21, '2015-11-29 03:32:57', NULL, '2015-11-29 03:32:57'),
(23, 'Eight sub category', '/public/images/category/1448787892.png', 6, 22, '2015-11-29 03:34:52', NULL, '2015-11-29 03:34:52'),
(24, 'Nine sub category', '/public/images/category/1448787966.png', 7, 23, '2015-11-29 03:36:06', NULL, '2015-11-29 03:36:06'),
(25, 'ten sub category', '', 5, 24, '2015-11-29 03:36:23', NULL, '2015-11-29 03:36:23'),
(26, 'Eleven sub Category', '', 2, 25, '2015-11-29 03:36:39', NULL, '2015-11-29 03:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `closing`
--

CREATE TABLE IF NOT EXISTS `closing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `earn_bv`
--

CREATE TABLE IF NOT EXISTS `earn_bv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `bv` double DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `add_date` date DEFAULT NULL,
  `add_date_time` datetime DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `release_date_time` datetime DEFAULT NULL,
  `closing_no` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `e_wallet`
--

CREATE TABLE IF NOT EXISTS `e_wallet` (
  `earn` double DEFAULT NULL,
  `used` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `member_account_id` int(11) NOT NULL,
  PRIMARY KEY (`member_account_id`),
  UNIQUE KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e_wallet_history`
--

CREATE TABLE IF NOT EXISTS `e_wallet_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cr` double DEFAULT NULL,
  `dr` double DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  `member_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `e_wallet_used`
--

CREATE TABLE IF NOT EXISTS `e_wallet_used` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `use_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  `e_wallet_history_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `e_wallet_history_id` (`e_wallet_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `level_income`
--

CREATE TABLE IF NOT EXISTS `level_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `closing` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_account_id` int(11) NOT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member_account`
--

CREATE TABLE IF NOT EXISTS `member_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `power_leg` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `member_account`
--

INSERT INTO `member_account` (`id`, `member_id`, `first_name`, `last_name`, `email`, `password`, `dob`, `address`, `city`, `state`, `country`, `sex`, `phone`, `power_leg`, `level`, `last_login`, `status`, `add_date`, `ts`) VALUES
(1, 123456, 'Yuvraj', 'Yadav', 'yuvrajdhl@gmail.com', '123456', '2015-08-06', 'cafasdfasfd', 'Noida', 'UP', 1, 'Male', '9874563212', 1, 2, NULL, NULL, '2015-08-08 05:13:10', '2015-08-09 10:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `member_bank_info`
--

CREATE TABLE IF NOT EXISTS `member_bank_info` (
  `bank_name` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `acc_no` bigint(20) DEFAULT NULL,
  `ifsc` varchar(50) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `member_account_id` int(11) NOT NULL,
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member_chaining`
--

CREATE TABLE IF NOT EXISTS `member_chaining` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `nom_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NOT NULL,
  `member_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member_nominee`
--

CREATE TABLE IF NOT EXISTS `member_nominee` (
  `nominee_name` varchar(100) DEFAULT NULL,
  `nominee_address` varchar(255) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `member_account_id` int(11) NOT NULL,
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member_subscription`
--

CREATE TABLE IF NOT EXISTS `member_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(100) DEFAULT NULL,
  `package_type` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NOT NULL,
  `member_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 NOT NULL,
  `font_awesome_icon` varchar(100) NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `parent` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `icon`, `font_awesome_icon`, `link`, `parent`, `position`, `status`) VALUES
(1, 'dashboard', '', '<i class="fa fa-dashboard"></i>', 'admin/dashboard', 0, 1, '1'),
(2, 'Inventory', '', '', '#', 0, 2, '1'),
(3, 'Category', '', '', '#', 2, 0, '1'),
(4, 'Add New', '', '', 'admin/category/addnew', 3, 0, '1'),
(5, 'View/Modify', '', '', 'admin/category/view', 3, 0, '1'),
(6, 'Product', '', '', '#', 2, 0, '1'),
(7, 'Add New', '', '', 'admin/product/addnew', 6, 0, '1'),
(8, 'View/Modify', '', '', 'admin/product/view', 6, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_10_10_082557_adminLogin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(100) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `total_bv` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `member_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE IF NOT EXISTS `order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  `product_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_id` (`product_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_level_income`
--

CREATE TABLE IF NOT EXISTS `purchase_level_income` (
  `id` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  `level_income_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `level_income_id` (`level_income_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requesst`
--

CREATE TABLE IF NOT EXISTS `withdraw_requesst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  `member_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_account_id` (`member_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `earn_bv`
--
ALTER TABLE `earn_bv`
  ADD CONSTRAINT `foregin_key` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `e_wallet`
--
ALTER TABLE `e_wallet`
  ADD CONSTRAINT `member_wallet` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `e_wallet_history`
--
ALTER TABLE `e_wallet_history`
  ADD CONSTRAINT `wallet_fk` FOREIGN KEY (`member_account_id`) REFERENCES `e_wallet` (`member_account_id`) ON UPDATE CASCADE;

--
-- Constraints for table `e_wallet_used`
--
ALTER TABLE `e_wallet_used`
  ADD CONSTRAINT `wallet_history_id` FOREIGN KEY (`e_wallet_history_id`) REFERENCES `e_wallet_history` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `level_income`
--
ALTER TABLE `level_income`
  ADD CONSTRAINT `level_income_fk` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `member_bank_info`
--
ALTER TABLE `member_bank_info`
  ADD CONSTRAINT `bank_info_fk` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `member_chaining`
--
ALTER TABLE `member_chaining`
  ADD CONSTRAINT `chaning_fk` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `member_nominee`
--
ALTER TABLE `member_nominee`
  ADD CONSTRAINT `nominee_fk` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `member_subscription`
--
ALTER TABLE `member_subscription`
  ADD CONSTRAINT `subscription_fk` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_fk` FOREIGN KEY (`member_account_id`) REFERENCES `member_account` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `purchase_level_income`
--
ALTER TABLE `purchase_level_income`
  ADD CONSTRAINT `purchase_level_fk` FOREIGN KEY (`level_income_id`) REFERENCES `level_income` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

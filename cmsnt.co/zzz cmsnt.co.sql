-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 16, 2023 at 03:55 PM
-- Server version: 5.7.40-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_lotus_click`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` text COLLATE utf8_unicode_ci,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'LIVE',
  `time_live` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `createdate` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `purchase_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `description`, `image`, `createdate`, `price`, `purchase_key`) VALUES
(1, 'Template 3', 'Giao diện bán sản phẩm #3', 'https://i.imgur.com/929iYyH.png', '2022-04-07 10:02:41', 200000, '2d6258e6ed2be514409e817afc5150a2'),
(2, 'Tạo giao dịch ảo', 'Tự động tạo giao dịch nạp tiền, mua sản phẩm ảo để tăng uy tín cho shop', 'https://i.imgur.com/6kNRjfN.png', '2022-04-07 20:52:41', 500000, '186dfa6ca91a70c53fa24de2c29f9aa0'),
(3, 'Template 4', 'Giao diện bán sản phẩm #4', 'https://i.imgur.com/bXmRtMM.png', '2022-04-09 15:42:41', 200000, '5010c67487f2796f16671711b62c5325'),
(4, 'Bảng Xếp Hạng Nạp Tiền', 'Bảng xếp hàng nạp tiền cho thành viên', 'https://i.imgur.com/ZRIRAaB.png', '2022-04-12 02:42:41', 200000, '6388cfde954147e4f8374da5051d8ac0'),
(24, 'Nạp Tiền Server 2', 'Nạp tiền bằng nội dung + id', 'https://i.imgur.com/CydpsWl.png', '2022-04-19 01:40:11', 500000, 'f5a3c8dab0cf8934bf6ab0b022bb0cb8'),
(211, 'Số Lượng Đã Bán Ảo', 'Điều chỉnh số lượng đã bán ảo (số lượng ảo + số lượng thật)', 'https://i.imgur.com/3tOOFDC.png', '2022-04-26 01:40:11', 50000, ''),
(11412, 'API 1', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, ''),
(11413, 'API 4', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '7119c2a27c2c12e9a5acbd8cf333a461'),
(11422, 'API 5', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-09-14 00:00:00', 1000000, 'fe6e0b2baf0603ba23ed3bed022d488f'),
(11427, 'API 6', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '4c3d37485a670820e85648c99856ddd8'),
(11469, 'Email Campaigns', 'Gửi Email đến toàn bộ khách hàng của bạn', 'https://i.imgur.com/iQWAKTY.jpg', '2022-11-02 00:00:00', 300000, '24f3b0bd694d3b7378ed437240b4b8f4'),
(11487, 'API 7', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-03 00:00:00', 1000000, '9b5611d14c08b0ebc88727fbc02c457a'),
(11521, 'Bán Like, Follow MXH', 'Tích hợp bán like, follow mạng xã hội vào mã nguồn SHOPCLONE6', 'https://i.imgur.com/gS5RRnm.png', '2022-11-11 00:00:00', 1000000, '2ddb766333c46942c780647d8633d918'),
(11535, 'API 8', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-11 00:00:00', 1000000, '8215dea66c3db9aea81ed98024349dee'),
(11542, 'API 9', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-23 00:00:00', 1000000, '22ebffae2bafd65002b5d3549d3f7493'),
(11621, 'Tích hợp thuê OTP qua API 1', 'Chức năng thuê SIM tích hợp qua API 1', 'https://i.imgur.com/wQlNAcH.png', '2022-12-13 00:00:00', 1000000, ''),
(11634, 'Tích hợp thuê OTP qua API 2', 'Chức năng thuê SIM tích hợp qua API 2', 'https://i.imgur.com/wQlNAcH.png', '2022-12-28 00:00:00', 2000000, ''),
(11635, 'API 10', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-12-19 00:00:00', 1000000, '33ebd5b442bc29bf4299bd40074fadd8'),
(11645, 'API 11', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-01-02 00:00:00', 1000000, 'd6da75c4d0296e66de3b362df7f8bfc2'),
(11656, 'Tích hợp thuê OTP qua API 3', 'Chức năng thuê SIM tích hợp qua API 3', 'https://i.imgur.com/wQlNAcH.png', '2023-01-10 00:00:00', 1000000, ''),
(11657, 'API 12', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-06 00:00:00', 1000000, ''),
(11678, 'Tích hợp thuê OTP qua API 4', 'Chức năng thuê SIM tích hợp qua API 4', 'https://i.imgur.com/wQlNAcH.png', '2023-02-06 00:00:00', 1000000, ''),
(11698, 'Tích hợp thuê OTP qua API 5', 'Chức năng thuê SIM tích hợp qua API 5', 'https://i.imgur.com/wQlNAcH.png', '2023-05-09 00:00:00', 1000000, ''),
(11724, 'API 13', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-08 00:00:00', 1000000, ''),
(11735, 'API 14', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-05-10 00:00:00', 1000000, '4aec5cd0f780a91e0e0b6b10d0f314b2'),
(11872, 'API 15', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-06-28 00:00:00', 1000000, ''),
(14232, 'Bán Fanpage/Group', 'Addon bán Fanpage/Group thủ công', 'https://i.imgur.com/jmIjBfI.png', '2022-05-07 01:59:00', 1000000, '5836af7e71714dd22dee1954ab6faeef'),
(112246, 'BOT Telegram', 'Addon thông báo về Telegram', 'https://i.imgur.com/9Ci2geb.png', '2022-06-26 16:00:00', 300000, '720a997b5eb20f69ad65cae08b83c19d');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `accountName` text COLLATE utf8_unicode_ci,
  `accountNumber` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banned_ips`
--

CREATE TABLE `banned_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `display` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `serial` text COLLATE utf8_unicode_ci,
  `pin` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `stt` int(1) NOT NULL DEFAULT '0',
  `id_api` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `stt`, `id_api`, `id_connect_api`, `name`, `image`, `status`) VALUES
(1, 0, '0', 0, 'Nhóm sản phẩm', 'assets/storage/images/category4LEI.png', 1),
(2, 0, '0', 0, 'Nhóm sản phẩm', 'assets/storage/images/category354L.png', 1),
(3, 0, '0', 0, 'Nhóm sản phẩm', 'assets/storage/images/categoryAOZ4.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_service`
--

CREATE TABLE `category_service` (
  `id` int(11) NOT NULL,
  `name` blob,
  `display` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `connect_api`
--

CREATE TABLE `connect_api` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'CMSNT',
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` text CHARACTER SET utf8mb4,
  `password` text CHARACTER SET utf8mb4,
  `token` text COLLATE utf8_unicode_ci,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `auto_rename_api` int(11) NOT NULL DEFAULT '1',
  `ck_connect_api` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `used` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `min` int(11) NOT NULL DEFAULT '1000',
  `max` int(11) NOT NULL DEFAULT '10000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_used`
--

CREATE TABLE `coupon_used` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_invoice`
--

CREATE TABLE `crypto_invoice` (
  `id` int(11) NOT NULL,
  `trans_id` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `request_id` text COLLATE utf8_unicode_ci,
  `amount` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci,
  `url_payment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `symbol_left` text COLLATE utf8_unicode_ci,
  `symbol_right` text COLLATE utf8_unicode_ci,
  `seperator` text COLLATE utf8_unicode_ci,
  `display` int(11) NOT NULL DEFAULT '1',
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `decimal_currency` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `rate`, `symbol_left`, `symbol_right`, `seperator`, `display`, `default_currency`, `decimal_currency`) VALUES
(3, 'Đồng', 'VND', 1, '', 'đ', 'dot', 1, 1, 0),
(4, 'Dollar', 'USD', 23558, '$', '', 'dot', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `domain` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `admin_note` text COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sotientruoc` int(11) NOT NULL DEFAULT '0',
  `sotienthaydoi` int(11) NOT NULL DEFAULT '0',
  `sotiensau` int(11) NOT NULL DEFAULT '0',
  `thoigian` datetime NOT NULL,
  `noidung` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_campaigns`
--

CREATE TABLE `email_campaigns` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `subject` text COLLATE utf8_unicode_ci,
  `cc` text COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  `content` longblob,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_sending`
--

CREATE TABLE `email_sending` (
  `id` int(11) NOT NULL,
  `camp_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `response` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giftbox`
--

CREATE TABLE `giftbox` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `tid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fake` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_white`
--

CREATE TABLE `ip_white` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8_unicode_ci,
  `lang_default` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `icon`, `lang_default`, `status`) VALUES
(8, 'Vietnamese', 'assets/storage/flags/flag_Vietnamese.png', 1, 1),
(16, 'English', 'assets/storage/flags/flag_English.png', 0, 1),
(18, 'Thailand', 'assets/storage/flags/flag_Thailand.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `action` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(1, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 12:17:22', 'Thực hiện tạo tài khoản'),
(2, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 17:20:25', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(3, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 17:20:49', 'Đăng nhập thành công vào hệ thống'),
(4, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 18:15:09', 'Thêm chuyên mục (VIA FACEBOOK) vào hệ thống.'),
(5, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 18:16:08', 'Thêm chuyên mục (CLONE FACEBOOK) vào hệ thống.'),
(6, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 18:16:50', 'Thêm sản phẩm (Clone US Limit 50$( Đã gỡ 282 )) vào hệ thống.'),
(7, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 18:17:47', 'Thêm sản phẩm (Via Việt Nam Cổ XMDT Limit 1m1 (Bao Nhận TK)) vào hệ thống.'),
(8, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 18:19:13', 'Thêm sản phẩm (Clone việt 2FA 20-50 bạn bè random 282 CP Mail 90%) vào hệ thống.'),
(9, 1, '2402:800:61b0:696c:ad68:c70f:e640:1710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 18:19:52', 'Thêm sản phẩm (Via Indonesia XMDT ( Về Tích 09/08) Nhận Được TK) vào hệ thống.'),
(10, 2, '27.73.99.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-14 19:29:20', 'Thực hiện tạo tài khoản'),
(11, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 09:53:52', 'Chỉnh sửa chuyên mục (VIA FACEBOOK ID 1).'),
(12, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 09:54:08', 'Chỉnh sửa chuyên mục (CLONE FACEBOOK ID 2).'),
(13, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 09:54:59', 'Thêm chuyên mục (Sp tầm cao) vào hệ thống.'),
(14, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 09:57:41', 'Chỉnh sửa chuyên mục (Nhóm sp giá trị thấp ID 1).'),
(15, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 09:57:54', 'Chỉnh sửa chuyên mục (Nhóm sp tầm trung ID 2).'),
(16, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 09:58:04', 'Chỉnh sửa chuyên mục (Sp tầm cao ID 3).'),
(17, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:00:09', 'Chỉnh sửa chuyên mục (Nhóm sp giá trị thấp ID 1).'),
(18, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:00:23', 'Chỉnh sửa chuyên mục (Nhóm sp tầm trung ID 2).'),
(19, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:00:37', 'Chỉnh sửa chuyên mục (Sp tầm cao ID 3).'),
(20, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:02:13', 'Xoá sản phẩm (Clone US Limit 50$( Đã gỡ 282 ) ID 1)'),
(21, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:02:16', 'Xoá sản phẩm (Via Việt Nam Cổ XMDT Limit 1m1 (Bao Nhận TK) ID 2)'),
(22, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:02:19', 'Xoá sản phẩm (Clone việt 2FA 20-50 bạn bè random 282 CP Mail 90% ID 3)'),
(23, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:02:21', 'Xoá sản phẩm (Via Indonesia XMDT ( Về Tích 09/08) Nhận Được TK ID 4)'),
(24, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:03:16', 'Thêm sản phẩm (Page scan nhỏ( chạy ads sạch và scan đỡ die page)) vào hệ thống.'),
(25, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:04:43', 'Thêm sản phẩm (Page new: page từ bm2500(khỏe), page thường ( truyền thống- dễ dùng, ads rẻ, pro5 khó dùng, ads đắt)-  đang ưu tiên page truyền thống) vào hệ thống.'),
(26, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:05:11', 'Thêm sản phẩm (Via( set ads, span,...)) vào hệ thống.'),
(27, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:06:50', 'Thêm sản phẩm (Tkqc bm350,bm50 new( ae chơi tut 2-3$)) vào hệ thống.'),
(28, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:07:15', 'Thêm sản phẩm (Tkcn new: bắn tut và nuôi kích tut) vào hệ thống.'),
(29, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:07:35', 'Thêm sản phẩm (Clone fb: để bắn tut) vào hệ thống.'),
(30, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:07:54', 'Thêm sản phẩm (Cookie fb) vào hệ thống.'),
(31, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:08:38', 'Thêm sản phẩm (RM) vào hệ thống.'),
(32, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:09:09', 'Thêm sản phẩm (Tkcn tut: nlm,250$) vào hệ thống.'),
(33, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:10:28', 'Thêm sản phẩm (Tkcn scan: 25-50$ để nhét bm, 250$,1500$ ttb dc giá) vào hệ thống.'),
(34, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:11:12', 'Thêm sản phẩm (Tk scan:tkcn, bm) vào hệ thống.'),
(35, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:11:49', 'Thêm sản phẩm (Page scan vừa: làm ads, làm adbreak) vào hệ thống.'),
(36, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:12:25', 'Thêm sản phẩm (Page scan to: ads break, đâm ads scan) vào hệ thống.'),
(37, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:13:38', 'Thêm sản phẩm (Bm scan: cấp cho chạy qc sạch, tut( khỏe): xác) vào hệ thống.'),
(38, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:15:29', 'Chỉnh sửa sản phẩm (Bm scan: cấp cho chạy qc sạch, tut( khỏe): xác tut( khỏe): xác BM5,BM10,BM20-30,...BM2500 ID 18).'),
(39, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:16:19', 'Thêm sản phẩm (Bm2500 share link: bao hold, die, camp) vào hệ thống.'),
(40, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:16:53', 'Thêm sản phẩm (BM share tín dụng: cấp cho đội voi) vào hệ thống.'),
(41, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:17:27', 'Thêm sản phẩm (Buil bm: buil bm chạy sạch cho doanh nghiệp) vào hệ thống.'),
(42, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:17:58', 'Thêm sản phẩm (Page livestream ads) vào hệ thống.'),
(43, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:18:42', 'Thêm sản phẩm (Bm tut( bm nlm kháng): chạy sạch, tut) giá tốt mà dễ die, tụt limit, yếu) vào hệ thống.'),
(44, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:18:58', 'Thêm sản phẩm (Page tick xanh) vào hệ thống.'),
(45, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:19:16', 'Thêm sản phẩm (Agency) vào hệ thống.'),
(46, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:19:44', 'Thêm sản phẩm (Tư vấn marketing) vào hệ thống.'),
(47, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:20:07', 'Thêm sản phẩm (Chạy chiết khấu voi, scan) vào hệ thống.'),
(48, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 10:20:28', 'Thêm sản phẩm (Làm via) vào hệ thống.'),
(49, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:49:17', 'Chỉnh sửa sản phẩm (Tkqc bm350,bm50 new( ae chơi tut 2-3$) ID 8).'),
(50, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:49:23', 'Chỉnh sửa sản phẩm (Tkcn new: bắn tut và nuôi kích tut ID 9).'),
(51, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:49:28', 'Chỉnh sửa sản phẩm (Clone fb: để bắn tut ID 10).'),
(52, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:49:33', 'Chỉnh sửa sản phẩm (Cookie fb ID 11).'),
(53, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:50:29', 'Chỉnh sửa sản phẩm (Tkcn tut: nlm,250$ ID 13).'),
(54, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:50:35', 'Chỉnh sửa sản phẩm (Page scan vừa: làm ads, làm adbreak ID 16).'),
(55, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:50:39', 'Chỉnh sửa sản phẩm (Buil bm: buil bm chạy sạch cho doanh nghiệp ID 21).'),
(56, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:50:46', 'Chỉnh sửa sản phẩm (Page livestream ads ID 22).'),
(57, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:50:51', 'Chỉnh sửa sản phẩm (Bm tut( bm nlm kháng): chạy sạch, tut) giá tốt mà dễ die, tụt limit, yếu ID 23).'),
(58, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:55:27', 'Chỉnh sửa chuyên mục (Nhóm sản phẩm giá trị thấp ID 1).'),
(59, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:55:39', 'Chỉnh sửa chuyên mục (Nhóm sản phẩm tầm trung ID 2).'),
(60, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:55:48', 'Chỉnh sửa chuyên mục (Nhóm sản phẩm tầm cao ID 3).'),
(61, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:56:19', 'Chỉnh sửa chuyên mục (Nhóm sản phẩm ID 2).'),
(62, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:56:28', 'Chỉnh sửa chuyên mục (Nhóm sản phẩm ID 3).'),
(63, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:09', 'Chỉnh sửa sản phẩm (Làm via ID 28).'),
(64, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:16', 'Chỉnh sửa sản phẩm (RM ID 12).'),
(65, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:20', 'Chỉnh sửa sản phẩm (Tkcn tut: nlm,250$ ID 13).'),
(66, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:25', 'Chỉnh sửa sản phẩm (Tkcn scan: 25-50$ để nhét bm, 250$,1500$ ttb dc giá ID 14).'),
(67, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:33', 'Chỉnh sửa sản phẩm (Tk scan:tkcn, bm ID 15).'),
(68, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:38', 'Chỉnh sửa sản phẩm (Page scan vừa: làm ads, làm adbreak ID 16).'),
(69, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:42', 'Chỉnh sửa sản phẩm (Page scan to: ads break, đâm ads scan ID 17).'),
(70, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:47', 'Chỉnh sửa sản phẩm (Bm scan: cấp cho chạy qc sạch, tut( khỏe): xác tut( khỏe): xác BM5,BM10,BM20-30,...BM2500 ID 18).'),
(71, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:52', 'Chỉnh sửa sản phẩm (Bm2500 share link: bao hold, die, camp ID 19).'),
(72, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:57:56', 'Chỉnh sửa sản phẩm (BM share tín dụng: cấp cho đội voi ID 20).'),
(73, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:00', 'Chỉnh sửa sản phẩm (Buil bm: buil bm chạy sạch cho doanh nghiệp ID 21).'),
(74, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:05', 'Chỉnh sửa sản phẩm (Page livestream ads ID 22).'),
(75, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:09', 'Chỉnh sửa sản phẩm (Bm tut( bm nlm kháng): chạy sạch, tut) giá tốt mà dễ die, tụt limit, yếu ID 23).'),
(76, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:13', 'Chỉnh sửa sản phẩm (Page tick xanh ID 24).'),
(77, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:18', 'Chỉnh sửa sản phẩm (Agency ID 25).'),
(78, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:22', 'Chỉnh sửa sản phẩm (Tư vấn marketing ID 26).'),
(79, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:26', 'Chỉnh sửa sản phẩm (Chạy chiết khấu voi, scan ID 27).'),
(80, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:58:53', 'Chỉnh sửa chuyên mục (Nhóm sản phẩm 2 ID 2).'),
(81, 1, '2402:800:61b0:696c:f5a1:349e:ff21:ec36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-15 11:59:01', 'Chỉnh sửa chuyên mục (Nhóm sản phẩm 3 ID 3).');

-- --------------------------------------------------------

--
-- Table structure for table `log_ref`
--

CREATE TABLE `log_ref` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `reason` text COLLATE utf8_unicode_ci,
  `sotientruoc` float NOT NULL DEFAULT '0',
  `sotienthaydoi` float NOT NULL DEFAULT '0',
  `sotienhientai` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `createdate` datetime NOT NULL,
  `timeago` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nowpayments`
--

CREATE TABLE `nowpayments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_amount` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `price_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_amount` float NOT NULL DEFAULT '0',
  `actually_paid` float NOT NULL DEFAULT '0',
  `pay_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `outcome_amount` float NOT NULL DEFAULT '0',
  `outcome_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` blob,
  `api_trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `document_id` int(11) NOT NULL DEFAULT '0',
  `store_fanpage_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '1',
  `fake` int(11) NOT NULL DEFAULT '0',
  `refund` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_autofb`
--

CREATE TABLE `order_autofb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_rate_autofb` int(11) NOT NULL DEFAULT '0',
  `insertId` int(11) DEFAULT '0',
  `payment` int(11) NOT NULL DEFAULT '0',
  `payment_api` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `subscribers` int(11) NOT NULL DEFAULT '0',
  `count_success` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_service`
--

CREATE TABLE `order_service` (
  `id` int(11) NOT NULL,
  `buyer` int(11) NOT NULL DEFAULT '0',
  `id_api` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` text COLLATE utf8_unicode_ci,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `remains` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `task_note` text COLLATE utf8_unicode_ci,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Pending',
  `refund` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_history`
--

CREATE TABLE `otp_history` (
  `id` int(11) NOT NULL,
  `transid` text COLLATE utf8_unicode_ci,
  `id_service_otp` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `number` text COLLATE utf8_unicode_ci,
  `id_order_api` text COLLATE utf8_unicode_ci,
  `app` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `sms` text COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_flutterwave`
--

CREATE TABLE `payment_flutterwave` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tx_ref` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `currency` text COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_paypal`
--

CREATE TABLE `payment_paypal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_pm`
--

CREATE TABLE `payment_pm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_date` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_squadco`
--

CREATE TABLE `payment_squadco` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `transaction_ref` varchar(55) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `flag` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `checklive` int(11) NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `preview` text COLLATE utf8_unicode_ci,
  `time_delete_account` int(11) NOT NULL DEFAULT '0',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `maximum` int(11) NOT NULL DEFAULT '10000',
  `id_api` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `api_stock` float NOT NULL DEFAULT '0',
  `name_api` blob,
  `update_api` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `filter_time_checklive` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `stt`, `user_id`, `category_id`, `name`, `flag`, `price`, `cost`, `checklive`, `content`, `status`, `preview`, `time_delete_account`, `minimum`, `maximum`, `id_api`, `id_connect_api`, `api_stock`, `name_api`, `update_api`, `sold`, `filter_time_checklive`) VALUES
(5, 0, '1', 1, 'Page scan nhỏ( chạy ads sạch và scan đỡ die page)', '', 50000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(6, 0, '1', 1, 'Page new: page từ bm2500(khỏe), page thường ( truyền thống- dễ dùng, ads rẻ, pro5 khó dùng, ads đắt)-  đang ưu tiên page truyền thống', '', 50000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(7, 0, '1', 1, 'Via( set ads, span,...)', '', 50000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(8, 0, '1', 1, 'Tkqc bm350,bm50 new( ae chơi tut 2-3$)', '', 50000, 0, 0, '', 0, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(9, 0, '1', 1, 'Tkcn new: bắn tut và nuôi kích tut', '', 50000, 0, 0, '', 0, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(10, 0, '1', 1, 'Clone fb: để bắn tut', '', 50000, 0, 0, '', 0, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(11, 0, '1', 1, 'Cookie fb', '', 50000, 0, 0, '', 0, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(12, 0, '1', 1, 'RM', '', 100000, 0, 0, '', 1, 'assets/storage/images/preview8A4V.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(13, 0, '1', 1, 'Tkcn tut: nlm,250$', '', 100000, 0, 0, '', 0, 'assets/storage/images/previewX8DR.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(14, 0, '1', 1, 'Tkcn scan: 25-50$ để nhét bm, 250$,1500$ ttb dc giá', '', 100000, 0, 0, '', 1, 'assets/storage/images/previewVPKS.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(15, 0, '1', 1, 'Tk scan:tkcn, bm', '', 100000, 0, 0, '', 1, 'assets/storage/images/previewY4SI.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(16, 0, '1', 1, 'Page scan vừa: làm ads, làm adbreak', '', 100000, 0, 0, '', 0, 'assets/storage/images/preview42HG.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(17, 0, '1', 1, 'Page scan to: ads break, đâm ads scan', '', 100000, 0, 0, '', 1, 'assets/storage/images/previewC71Z.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(18, 0, '1', 1, 'Bm scan: cấp cho chạy qc sạch, tut( khỏe): xác tut( khỏe): xác BM5,BM10,BM20-30,...BM2500', '', 100000, 0, 0, '', 1, 'assets/storage/images/previewEG0P.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(19, 0, '1', 1, 'Bm2500 share link: bao hold, die, camp', '', 100000, 0, 0, '', 1, 'assets/storage/images/previewK490.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(20, 0, '1', 1, 'BM share tín dụng: cấp cho đội voi', '', 100000, 0, 0, '', 1, 'assets/storage/images/previewZKJ0.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(21, 0, '1', 1, 'Buil bm: buil bm chạy sạch cho doanh nghiệp', '', 100000, 0, 0, '', 0, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(22, 0, '1', 1, 'Page livestream ads', '', 100000, 0, 0, '', 0, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(23, 0, '1', 1, 'Bm tut( bm nlm kháng): chạy sạch, tut) giá tốt mà dễ die, tụt limit, yếu', '', 100000, 0, 0, '', 0, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(24, 0, '1', 1, 'Page tick xanh', '', 100000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(25, 0, '1', 1, 'Agency', '', 200000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(26, 0, '1', 1, 'Tư vấn marketing', '', 200000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(27, 0, '1', 1, 'Chạy chiết khấu voi, scan', '', 200000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(28, 0, '1', 1, 'Làm via', '', 200000, 0, 0, '', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_autofb`
--

CREATE TABLE `rate_autofb` (
  `id` int(11) NOT NULL,
  `type_api` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_api` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loaiseeding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `name_loaiseeding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rate_autofb`
--

INSERT INTO `rate_autofb` (`id`, `type_api`, `name_api`, `loaiseeding`, `price`, `name_loaiseeding`, `note`) VALUES
(1, 'buffsub_sale', 'Facebook buff sub sale (sv1)', '1', 20, 'Tăng Sub sale - SV1 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(2, 'buffsub_sale', 'Facebook buff sub sale (sv2)', '2', 30, 'Tăng Sub sale - SV2 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(3, 'buffsub_sale', 'Facebook buff sub sale (sv3)', '3', 10, 'Tăng Sub sale - SV3 (done trong ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(4, 'buffsub_sale', 'Facebook buff sub sale (sv4)', '4', 35, 'Tăng Sub sale - SV4 (tốc độ nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(7, 'buffsub_speed', 'Facebook buff sub speed (sv1)', '1', 50, 'Tăng Sub - SV1 (MAX 50K, bấm tay)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(8, 'buffsub_speed', 'Facebook buff sub speed (sv2)', '2', 50, 'Tăng Sub - SV2 (Lên khá nhanh, Max 1000k, Bảo hành 1 tháng) tốt nhất nên dùng', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(9, 'buffsub_speed', 'Facebook buff sub speed (sv3)', '3', 30, 'Tăng Sub - SV3 (Chạy được cho page pro5, 1k sub / ngày, max 250k sub clone, Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(10, 'buffsub_speed', 'Facebook buff sub speed (sv4)', '4', 30, 'Tăng Sub - SV4 (Lên ổn định, Max 80k, Bảo hành 1 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(11, 'buffsub_speed', 'Facebook buff sub speed (sv5)', '5', 40, 'Tăng Sub - SV5 (Lên nhanh, Max 50k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(12, 'buffsub_speed', 'Facebook buff sub speed (sv6)', '6', 30, 'Tăng Sub - SV6 (Max 15k Hoàn thành trong 1-24H)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(13, 'buffsub_speed', 'Facebook buff sub speed (sv7)', '7', 30, 'Tăng Sub - SV7 (Max 20k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(14, 'buffsub_speed', 'Facebook buff sub speed (sv8)', '8', 60, 'Tăng Sub - SV8 (Lên rất nhanh, Max 600k, Bảo hành 6 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(15, 'buffsub_speed', 'Facebook buff sub speed (sv9)', '9', 20, 'Tăng Sub - SV9 (Max 1000k , bảo hành 15 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(16, 'buffsub_slow', 'Facebook buff sub chậm (basic)', '1', 40, 'Tăng Sub đề xuất - Basic (BH 3 tháng, max 400k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(17, 'buffsub_slow', 'Facebook buff sub chậm (v1)', '3', 30, 'Tăng Sub đề xuất - V1 (BH 1 tháng, max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(18, 'buffsub_slow', 'Facebook buff sub v2 (sv2)', '2', 60, 'Tăng Sub đề xuất - V3 (xịn nhất, nick đang hoạt động 96,69%, max 60k) (sub kết bạn, ẩn kết bạn hoặc qua thẳng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(19, 'buffsub_slow', 'Facebook buff sub chậm (v2)', '4', 30, 'Tăng Sub đề xuất - V2 (Chất lượng cao, ổn định, nên dùng max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(20, 'bufflikefanpagesale', '', '1', 20, 'Tăng Like Fanpage - SV1 (Lên chậm khoảng 1-2k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(21, 'bufflikefanpagesale', NULL, '2', 28, 'Tăng Like Fanpage - SV2 (Lên ổn định khoảng 5-10k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(22, 'bufflikefanpagesale', NULL, '3', 31, 'Tăng Like Fanpage - SV3 (tốc độ rất nhanh (1 ngày mua max 20k, chạy done mai mua tiếp)) (BH 7 ngày )', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(23, 'bufflikefanpage', NULL, '1', 57, 'Tăng Like Fanpage - BASIC (like bấm tay, ít tụt, có 1 vài page ko thể tăng like) (Nên dùng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(24, 'bufflikefanpage', NULL, '2', 28, 'Tăng Like Fanpage - PRO (Like Via, max 200k tốc độ chậm Không bảo hành', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(25, 'bufflikefanpage', NULL, '3', 47, 'Tăng Like Fanpage - SV3 (MAX 40k BH 3 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(26, 'bufflikefanpage', NULL, '4', 46, 'Tăng Like Fanpage - SV4 (MAX 20k BH 1 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(27, 'bufflikefanpage', NULL, '5', 60, 'Tăng Like Fanpage - SV5 (MAX 50K BH 1 tháng) (Like chất lượng tốt) (Like lên nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(28, 'bufflikefanpage', NULL, '6', 67, 'Tăng Like Fanpage - SV6 (Like page Global (Like Tây Lên Nhanh ít tụt, nên sử dụng Bảo hành 45 ngày))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(29, 'bufflikefanpage', NULL, '7', 25, 'Tăng Like Fanpage - SV7 (Like Việt Lên nhanh (max 100k))(BH 60 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(30, 'bufflikefanpage', NULL, '8', 22, 'Tăng Like Fanpage - SV8 (Like việt, rẻ, nhanh (max 100k)) (BH 30 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(32, 'buffsubfanpage', NULL, '2', 42, 'Tăng Sub Fanpage - SV2 (page pro5 chạy sau 12-24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(33, 'buffsubfanpage', NULL, '1', 27, 'Tăng Sub Fanpage - SV1 (page thường, hoàn thành các đơn < 30k trong 24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(34, 'bufflikecommentsharelike', NULL, 'like', 58, 'Tăng Like Bài Viết (Like người việt thật) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(35, 'bufflikecommentsharelike', NULL, 'like_v2', 10, 'Tăng Like Bài Viết V2 (Like việt clone, tốc độ chậm, có tụt like) (max 250k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(36, 'bufflikecommentsharelike', NULL, 'like_v3', 20, 'Tăng Like Bài Viết V3 (Like việt, rẻ, nhanh !) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(37, 'bufflikecommentsharelike', NULL, 'like_v4', 24, 'Tăng Like Bài Viết V4 (Like Việt Lên nhanh (max 80k) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(38, 'bufflikecommentsharelike', NULL, 'like_v5', 27, 'Tăng Like Bài Viết V5 (Like Việt Lên nhanh(1 ngày chạy 15-25k like) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(39, 'bufflikecommentsharelike', NULL, 'like_v6', 16, 'Tăng Like Bài Viết V6 (Like clone nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(40, 'bufflikecommentsharelike', NULL, 'like_v7', 34, 'Tăng Like Bài Viết V7 (Like Việt Lên Max Nhanh,luôn oder được)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(41, 'bufflikecommentshareshare', NULL, 'share', 1000, 'Tăng Share Bài Viết SV1 (share người thật,share việt)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(42, 'bufflikecommentshareshare', NULL, 'share_sv2', 250, 'Tăng Share Bài Viết SV2 (share giá rẻ (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(43, 'bufflikecommentshareshare', NULL, 'share_sv3', 30, 'Tăng Share Bài Viết SV3 (share ảo (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(44, 'bufflikecommentshareshare', NULL, 'share_sv4', 410, 'Tăng Share Bài Viết SV4', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(45, 'bufflikecommentshareshare', NULL, 'share_sv5', 24, 'Tăng Share Bài Viết SV5 (share ảo rẻ)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(46, 'buffviewstory', NULL, '1', 18, 'Tăng View Story SV1', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(1) NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `send_email`
--

CREATE TABLE `send_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server2_autobank`
--

CREATE TABLE `server2_autobank` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` float NOT NULL DEFAULT '0',
  `received` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` blob,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `id_api` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `dripfeed` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refill` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` blob,
  `source_api` varchar(255) COLLATE utf8_unicode_ci DEFAULT '5gsmm.com',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_order`
--

CREATE TABLE `service_order` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_unicode_ci,
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 xử lý, 1 hoàn tất, 2 huỷ',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_otp`
--

CREATE TABLE `service_otp` (
  `id` int(11) NOT NULL,
  `server` text COLLATE utf8_unicode_ci,
  `id_api` text COLLATE utf8_unicode_ci,
  `name_api` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `price_api` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'logo', 'assets/img/cmsnt_light.png'),
(2, 'title', 'CMSNT.CO'),
(3, 'thongbao', '<p>Thay đổi th&ocirc;ng b&aacute;o hệ thống&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Th&ocirc;ng b&aacute;o to&agrave;n hệ thống</strong></p>\r\n'),
(4, 'logo_light', 'assets/storage/images/logo_light_Q87.png'),
(5, 'logo_dark', 'assets/storage/images/logo_dark.png'),
(6, 'image', 'assets/storage/images/image.png'),
(7, 'favicon', 'assets/storage/images/favicon.png'),
(8, 'description', 'Trang web demo sản phẩm SHOPCLONE6 của CMSNT.CO'),
(9, 'keywords', 'shopclone6,shopclone, cmsnt, code ban clone fb, code ban via fb'),
(10, 'author', 'NTThanh'),
(11, 'status', '1'),
(12, 'status_bank', '1'),
(13, 'type_bank', 'Techcombank'),
(14, 'stk_bank', ''),
(15, 'name_bank', 'NGUYEN TAN THANH'),
(16, 'mk_bank', ''),
(17, 'status_momo', '1'),
(18, 'token_momo', ''),
(19, 'sdt_momo', ''),
(20, 'name_momo', ''),
(21, 'timeUpdate', ''),
(27, 'token_bank', ''),
(28, 'javascript', ''),
(31, 'email_smtp', ''),
(32, 'pass_email_smtp', ''),
(34, 'bg_login', 'assets/storage/images/bg_login60K.png'),
(35, 'bg_register', 'assets/storage/images/bg_registerUBV.png'),
(36, 'time_cron_24h', '0'),
(37, 'status_demo', '0'),
(39, 'license_key', 'a9ab12e3b5bff5ca601564117955bea7'),
(40, 'email', 'admin@cmsnt.co'),
(41, 'hotline', ''),
(42, 'qr_momo', ''),
(43, 'recharge_notice', '<p>Thay đổi ghi ch&uacute; nạp tiền&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp tiền</strong></p>\r\n'),
(44, 'contact_page', ''),
(45, 'gif_loading', 'assets/storage/images/gif_loadingZOA.png'),
(46, 'check_time_cron', '1692176101'),
(47, 'check_time_cron_bank', '1692176101'),
(48, 'min_rating', '500000'),
(49, 'orders_notice', '<p>Thay đổi th&ocirc;ng b&aacute;o lịch sử đơn h&agrave;ng trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; lịch sử đơn h&agrave;ng</strong></p>\r\n'),
(50, 'type_showProduct', 'BOX4'),
(51, 'clientId_paypal', ''),
(52, 'status_paypal', '1'),
(53, 'status_thesieure', '1'),
(54, 'token_thesieure', ''),
(55, 'check_time_cron_thesieure', '1645792692'),
(56, 'api_napthe', ''),
(57, 'status_napthe', '1'),
(58, 'notice_napthe', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp thẻ</strong></p>\r\n'),
(59, 'ck_napthe', '20'),
(60, 'chinh_sach_bao_mat', '<p>Thay đổi ch&iacute;nh s&aacute;ch bảo mật&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ch&iacute;nh s&aacute;ch bảo mật</strong></p>\r\n'),
(61, 'dieu_khoan_su_dung', '<p>Thay đổi điều khoản sử dụng&nbsp;trong <strong>C&agrave;i Đặt -&gt; Điều khoản sử dụng</strong></p>\r\n'),
(62, 'status_update', '1'),
(63, 'status_captcha', '0'),
(64, 'session_login', '2592000'),
(65, 'gif_giftbox', 'assets/storage/images/gif_giftboxWUL.png'),
(66, 'display_sold', '1'),
(67, 'status_zalopay', '1'),
(68, 'token_zalopay', ''),
(69, 'check_time_cron_zalopay', '0'),
(70, 'type_password', 'bcrypt'),
(71, 'theme_color', '#12214E'),
(72, 'min_recharge', '10000'),
(73, 'time_check_live', '1800'),
(74, 'currency', 'VND'),
(75, 'usd_rate', '23000'),
(76, 'clientSecret_paypal', ''),
(77, 'rate_paypal', '23000'),
(78, 'paypal_notice', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp paypal</strong></p>\r\n'),
(79, 'gif_loader', 'assets/storage/images/gif_loader8DN.png'),
(80, 'invoice_expiration', '86400'),
(81, 'mouse_click_effect', '0'),
(82, 'notice_spin', '<p>Thay đổi th&ocirc;ng b&aacute;o hệ thống&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Th&ocirc;ng b&aacute;o v&ograve;ng quay</strong></p>\r\n'),
(83, 'status_spin', '1'),
(84, 'condition_spin', '1000000'),
(85, 'status_perfectmoney', '1'),
(86, 'perfectmoney_notice', '<p>Thay đổi ghi ch&uacute; nạp perfect money <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp perfect money</strong></p>\r\n'),
(87, 'PAYEE_ACCOUNT_PM', ''),
(88, 'perfectmoney_pass_pm', ''),
(89, 'rate_pm', '23000'),
(90, 'PAYMENT_UNITS_PM', 'USD'),
(91, 'status_crypto', '1'),
(92, 'notice_crypto', '<ul>\r\n	<li>Vui l&ograve;ng nhập đ&uacute;ng số coin cần chuyển.</li>\r\n	<li>Hệ thống sẽ tự động cộng tiền v&agrave;o t&agrave;i khoản của bạn trong v&agrave;i ph&uacute;t.</li>\r\n	<li>Li&ecirc;n hệ Admin nếu trong qu&aacute; tr&igrave;nh nạp s&atilde;y ra lỗi.</li>\r\n</ul>\r\n'),
(93, 'status_giao_dich_gan_day', '1'),
(94, 'notice_binchecker', '<p>Ph&iacute; check 300k 1 thẻ</p>\r\n'),
(95, 'rate_binchecker', '500'),
(96, 'check_time_cron_card', '1646033795'),
(97, 'check_time_cron_checklivefb', '1657360009'),
(98, 'partner_id_card', ''),
(99, 'partner_key_card', ''),
(100, 'javascript_header', ''),
(101, 'sign_view_product', '0'),
(102, 'display_box_shop', '0'),
(103, 'type_notice_order', 'Email'),
(104, 'font_family', 'font-family: \'Roboto\', sans-serif;'),
(105, 'time_delete_orders', '2584920'),
(106, 'check_time_cron_cron', '1692176101'),
(107, 'display_show_product', '1'),
(108, 'display_rating', '0'),
(109, 'stt_giaodichao', '1'),
(110, 'theme_color2', '#013B7B'),
(111, 'stt_topnap', '0'),
(112, 'sv1_autobank', '1'),
(113, 'sv2_autobank', '1'),
(114, 'prefix_autobank', 'localhost'),
(115, 'status_buff_like_sub', '0'),
(116, 'token_autofb', '.'),
(117, 'virtual_sold_quantity', '0'),
(118, 'domain_autofb', 'https://cmslike.com/'),
(119, 'status_store_fanpage', '0'),
(120, 'notice_store_fanpage', ''),
(121, 'status_security', '0'),
(122, 'status_active_member', '0'),
(123, 'type_notification', 'telegram'),
(124, 'token_telegram', ''),
(125, 'chat_id_telegram', ''),
(126, 'buy_notification', '[{domain}] {username} vừa mua {amount} {product_name} với giá {price} vào lúc {time} thông qua {method}.'),
(127, 'naptien_notification', '[{domain}] {username} vừa nạp {amount} vào {method} thực nhận {price} vào lúc {time}.'),
(128, 'register_notification', '[{domain}] {username} vừa thực hiện đăng ký tài khoản vào lúc {time} bằng thiết bị {device}.'),
(129, 'max_time_buy', '10'),
(130, 'time_delete_clone_die', '0'),
(131, 'check_time_cron1', '1692176101'),
(132, 'bg_card', 'resources/images/bg-buy.png'),
(133, 'display_blog', '1'),
(134, 'display_question', '1'),
(135, 'display_contact', '1'),
(136, 'display_api', '1'),
(137, 'display_tool', '1'),
(138, 'status_connect_api', '1'),
(139, 'check_time_cron2', '1692176101'),
(140, 'ck_connect_api', '10'),
(141, 'status_ref', '0'),
(142, 'ck_ref', '5'),
(143, 'notice_ref', '<p>Những t&agrave;i khoản được hệ thống x&aacute;c định l&agrave; t&agrave;i khoản sao ch&eacute;p của c&aacute;c t&agrave;i khoản kh&aacute;c sẽ kh&ocirc;ng được d&ugrave;ng để t&iacute;nh hoa hồng.</p>\r\n\r\n<p>Hoa hồng chỉ được t&iacute;nh khi người d&ugrave;ng mua t&agrave;i nguy&ecirc;n tr&ecirc;n web.</p>\r\n\r\n<p>Việc x&aacute;c định xem ai l&agrave; người giới thiệu của một người d&ugrave;ng phụ thuộc ho&agrave;n to&agrave;n v&agrave;o link giới thiệu. Nếu một người d&ugrave;ng nhấp v&agrave;o nhiều link ref kh&aacute;c nhau th&igrave; chỉ c&oacute; link ref cuối c&ugrave;ng họ nhấp v&agrave;o trước khi tạo t&agrave;i khoản l&agrave; c&oacute; hiệu lực.</p>\r\n'),
(144, 'listbank_ref', 'Vietcombank\r\nTechcomebank\r\nVí MOMO\r\nVí Zalo Pay\r\nVietinbank\r\nSacombank'),
(145, 'minrut_ref', '100000'),
(146, 'display_preview', '1'),
(147, 'display_country', '0'),
(148, 'apikey_nowpayments', ''),
(149, 'status_nowpayments', '0'),
(150, 'status_is_change_password', '0'),
(151, 'auto_rename_api', '1'),
(152, 'ipn_nowpayments', ''),
(153, 'min_crypto', '10'),
(154, 'rate_crypto', '23000'),
(155, 'check_time_cron_crypto', '1658566581'),
(157, 'check_time_cron3', '1658772103'),
(158, 'menu_title', 'LOCALHOST'),
(159, 'default_api_product_status', '1'),
(160, 'min_gd_ao', '1'),
(161, 'max_gd_ao', '30'),
(162, 'speed_buy_gd_ao', '10'),
(165, 'amount_nap_ao', '10000\n20000\n40000\n50000\n60000\n70000\n100000\n200000\n300000\n500000\n400000\n40000\n15000\n25000\n35000\n45000\n55000\n65000\n45000\n1000000\n1500000\n2000000'),
(166, 'speed_nap_gd_ao', '10'),
(167, 'position_gd_gan_day', '2'),
(168, 'is_account_buy_fake', '0'),
(169, 'hide_product_empty', '0'),
(170, 'email_nowpayments', ''),
(171, 'password_nowpayments', ''),
(172, 'filter_time_checklive', '1'),
(173, 'check_time_cron4', '1661453581'),
(174, 'home_page', 'home'),
(175, 'notice_popup', ''),
(176, 'check_time_cron_dongvanfb', '1663259633'),
(177, 'timezone', 'Asia/Ho_Chi_Minh'),
(178, 'status_addfun_seller', '0'),
(179, 'status_store_document', '0'),
(180, 'noti_import_telegram', ''),
(181, 'group_id_import_telegram', ''),
(182, 'max_register_ip', '5'),
(183, 'check_time_cron6', '1666539232'),
(184, 'pin_cron', ''),
(185, 'status_toyyibpay', '0'),
(186, 'notice_toyyibpay', ''),
(187, 'userSecretKey_toyyibpay', ''),
(188, 'min_toyyibpay', '2000'),
(189, 'categoryCode_toyyibpay', ''),
(190, 'check_time_cron_toyyibpay', '0'),
(191, 'rate_toyyibpay', '5258'),
(192, 'billChargeToCustomer', ''),
(193, 'check_time_cron_sending_email', '1668009567'),
(194, 'check_time_cron7', '1667580843'),
(195, 'host_smtp', 'smtp.gmail.com'),
(196, 'encryption_smtp', 'tls'),
(197, 'port_smtp', '587'),
(198, 'token_5gsmm', 'token'),
(199, 'ck_rate_service', '10'),
(200, 'status_updatec_rate_service', '1'),
(201, 'rate_vnd_5gsmm', '24867'),
(202, 'check_time_cron_UpdateRate5gsmm', '1668588258'),
(203, 'check_time_cron_UpdateHistory5gsmm', '0'),
(204, 'check_time_cron8', '1668168040'),
(205, 'taohoadonnaptien_notification', ''),
(206, 'copyright_footer', 'Powered By <a target=\"_blank\" href=\"https://www.cmsnt.co/?ref=http://localhost/CMSNT.CO/SHOPCLONE6/\">CMSNT.CO</a>'),
(207, 'check_time_cron9', '1670065783'),
(208, 'status_api_buyproduct', '1'),
(209, 'marquee_notication_shopacc', ''),
(210, 'status_thuesim', '0'),
(211, 'server_thuesim', 'API_2'),
(212, 'token_thuesim', 'apikey'),
(213, 'ck_rate_thuesim', '0'),
(214, 'check_time_cron_service_otp_cron', '1672165493'),
(215, 'notice_thuesim', ''),
(216, 'check_time_cron_service_otp_history', '1675456095'),
(217, 'check_time_cron10', '1671558417'),
(218, 'text_create_website', '<ul>\r\n    <li>Bước 1: Trỏ IP <b style=\"color: red;\">103.14.48.40</b> vào bản ghi Host @ và www trong tên miền của bạn, có thể liên hệ nhà cung cấp tên miền để nhờ trỏ giúp.</li>\r\n    <li>Bước 2: Nhập tên miền muốn đăng ký đại lý và nhấn Thêm Ngay.</li>\r\n    <li>Bước 3: Chờ đợi QTV setup website (thanh trạng thái thay đổi thành <b\r\n            style=\"color: green;\">Hoạt Động</b>).</li>\r\n    <li>Bước 4: Truy cập Website bạn vừa tạo và nhập thông tin token và đăng ký\r\n        1 tài khoản quản trị của\r\n        bạn (tài khoản đầu tiên sẽ là tài khoản admin, lưu ý không để lộ tên\r\n        miền ra khi chưa setup xong website).</li>\r\n</ul>'),
(219, 'status_create_website', '1'),
(220, 'stt_create_website', '0'),
(221, 'create_website_notification', ''),
(222, 'domain_thuesim', 'linkweb.com'),
(223, 'title_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(224, 'description_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(225, 'keyword_thuesim', 'thue sim, thue otp, thue sms'),
(226, 'check_time_cron11', '1672681478'),
(227, 'check_time_cron12', '0'),
(228, 'crypto_address', ''),
(229, 'crypto_token', ''),
(230, 'crypto_min', '10'),
(231, 'crypto_max', '1000000'),
(232, 'check_time_cron13', '0'),
(233, 'flutterwave_api_key', ''),
(234, 'flutterwave_api_secret', ''),
(235, 'prefix_invoice', 'NT'),
(236, 'logo_login', 'assets/storage/images/logo_light_Q87.png'),
(237, 'domain_smmpanel', ''),
(238, 'show_category', 'head'),
(239, 'flutterwave_status', '1'),
(240, 'flutterwave_publicKey', ''),
(241, 'flutterwave_secretKey', ''),
(242, 'flutterwave_rate', '24000'),
(243, 'flutterwave_notice', '<p>adad</p>\r\n'),
(244, 'reCAPTCHA_status', '0'),
(245, 'reCAPTCHA_secret_key', ''),
(246, 'reCAPTCHA_site_key', ''),
(247, 'check_time_cron14', '1683739207'),
(248, 'html_top_product', ''),
(249, 'html_banned', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(250, 'html_block_ip', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(251, 'squadco_status', '0'),
(252, 'squadco_Secret_Key', ''),
(253, 'squadco_Public_Key', ''),
(254, 'squadco_rate', '51'),
(255, 'squadco_currency_code', 'NGN'),
(256, 'squadco_notice', ''),
(257, 'check_time_cron15', '0'),
(258, 'buy_fanpage_notification', '');

-- --------------------------------------------------------

--
-- Table structure for table `spin_history`
--

CREATE TABLE `spin_history` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spin_option`
--

CREATE TABLE `spin_option` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spin_option`
--

INSERT INTO `spin_option` (`id`, `name`, `price`, `rate`, `display`) VALUES
(2, '+ 10.000đ', 10000, 20, 1),
(3, '+ 50.000đ', 50000, 5, 1),
(4, '+ 2.000đ', 2000, 30, 1),
(5, '+ 100đ', 100, 30, 1),
(6, '+ 100.000đ', 100000, 2, 1),
(7, '+ 500.000đ', 500000, 0.5, 1),
(8, '+ 30.000đ', 30000, 10, 1),
(9, '+ 99.999đ', 99999, 5, 1),
(10, '+ 11.111đ', 11111, 20, 1),
(11, '+ 1.000.000đ', 1000000, 0.1, 1),
(12, '+ 22.000', 22000, 20, 1),
(13, '+ 222.222', 222222, 2, 1),
(14, '+ 6.666đ', 6666, 30, 1),
(15, '+ 77.777đ', 77777, 10, 1),
(16, '+ 20.000đ', 20000, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_fanpage`
--

CREATE TABLE `store_fanpage` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `new_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sl_like` int(11) NOT NULL DEFAULT '0',
  `nam_tao_fanpage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_admin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_email`
--

CREATE TABLE `task_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyyibpay_transactions`
--

CREATE TABLE `toyyibpay_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billName` text COLLATE utf8_unicode_ci,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `BillCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyyibpay_transactions`
--

INSERT INTO `toyyibpay_transactions` (`id`, `user_id`, `trans_id`, `billName`, `amount`, `status`, `BillCode`, `create_date`, `update_date`, `reason`) VALUES
(1, 11, 'DSO1667032107', 'Invoice #DSO1667032107', 20, 0, '6q61n3dw', '2022-10-29 15:28:28', '2022-10-29 15:28:28', NULL),
(2, 11, 'TAZ1667032162', 'Invoice #TAZ1667032162', 20, 0, 'defs6qwx', '2022-10-29 15:29:23', '2022-10-29 15:29:23', NULL),
(3, 11, 'RAL1667032196', 'Invoice #RAL1667032196', 50, 0, '3faynj5p', '2022-10-29 15:29:57', '2022-10-29 15:29:57', NULL),
(4, 11, 'BNQ1667040117', 'Invoice #BNQ1667040117', 20, 0, 'llf1fshb', '2022-10-29 17:41:58', '2022-10-29 17:41:58', NULL),
(5, 11, 'GFN1667040168', 'Invoice - RM 20', 20, 0, '0sq7hbpx', '2022-10-29 17:42:49', '2022-10-29 17:42:49', NULL),
(6, 11, 'MAY1667063706', 'Invoice - RM 20', 20, 0, 'f9f2ptb2', '2022-10-30 00:15:06', '2022-10-30 00:15:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translate`
--

CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `name` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translate`
--

INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(20, 8, 'Đăng Nhập', 'Đăng Nhập'),
(24, 8, 'Đăng Ký', 'Đăng Ký'),
(28, 8, 'Tên đăng nhập', 'Tên đăng nhập'),
(32, 8, 'Mật khẩu', 'Mật khẩu'),
(39, 8, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(43, 8, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(47, 8, 'Đăng ký', 'Đăng ký'),
(51, 8, 'Quên mật khẩu', 'Quên mật khẩu'),
(55, 8, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(59, 8, 'Đăng Nhập', 'Đăng Nhập'),
(63, 8, 'hoặc', 'hoặc'),
(67, 8, 'Đăng Nhập', 'Đăng Nhập'),
(71, 8, 'Đang xử lý...', 'Đang xử lý...'),
(75, 8, 'Đăng Ký', 'Đăng Ký'),
(79, 8, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(83, 8, 'Địa chỉ Email', 'Địa chỉ Email'),
(87, 8, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(91, 8, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(95, 8, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(99, 8, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(104, 8, 'Username không được để trống', 'Username không được để trống'),
(108, 8, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(112, 8, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(116, 8, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(120, 8, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(124, 8, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(128, 8, 'Email không được để trống', 'Email không được để trống'),
(132, 8, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(136, 8, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(140, 8, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(144, 8, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(148, 8, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(152, 8, 'Đăng ký thành công', 'Đăng ký thành công'),
(156, 8, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(160, 8, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(452, 8, 'Trang cá nhân', 'Trang cá nhân'),
(453, 8, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(454, 8, 'Đăng xuất', 'Đăng xuất'),
(455, 8, 'Trang quản trị', 'Trang quản trị'),
(456, 8, 'Bảo mật', 'Bảo mật'),
(457, 8, 'Cộng tác viên', 'Cộng tác viên'),
(458, 16, 'Đăng Nhập', 'Login'),
(459, 16, 'Đăng Ký', 'Register'),
(460, 16, 'Tên đăng nhập', 'Username'),
(461, 16, 'Mật khẩu', 'Password'),
(462, 16, 'Vui lòng nhập mật khẩu', 'Please enter a password'),
(463, 16, 'Bạn không có tài khoản?', 'You don\\\'t have an account?'),
(464, 16, 'Đăng ký', 'Register'),
(465, 16, 'Quên mật khẩu', 'Forgot password'),
(466, 16, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Log in to your account to continue'),
(467, 16, 'Đăng Nhập', 'Log in'),
(468, 16, 'hoặc', 'or'),
(469, 16, 'Đăng Nhập', 'Log in'),
(470, 16, 'Đang xử lý...', 'Processing...'),
(471, 16, 'Đăng Ký', 'Đăng Ký'),
(472, 16, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(473, 16, 'Địa chỉ Email', 'Email address'),
(474, 16, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(475, 16, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(476, 16, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(477, 16, 'Thông tin đăng nhập không chính xác', 'Login information is incorrect'),
(478, 16, 'Username không được để trống', 'Username không được để trống'),
(479, 16, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(480, 16, 'Hệ thống đang bảo trì', 'The system is maintenance'),
(481, 16, 'Tài khoản của bạn đã bị khoá truy cập', 'Your account has been locked'),
(482, 16, 'Đăng nhập thành công vào hệ thống', 'Successfully logged into the system'),
(483, 16, 'Đăng nhập thành công', 'Logged in successfully'),
(484, 16, 'Email không được để trống', 'Email cannot be blank'),
(485, 16, 'Nhập lại mật khẩu không đúng', 'Password incorrect, please try again'),
(486, 16, 'Định dạng Email không đúng', 'Email format is not correct'),
(487, 16, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Username already exists in the system'),
(488, 16, 'Địa chỉ email đã tồn tại trong hệ thống', 'Email address already exists in the system'),
(489, 16, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'Your IP has reached the allowable account creation limit'),
(490, 16, 'Đăng ký thành công', 'Sign Up Success'),
(491, 16, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Account creation failed, please try again'),
(492, 16, 'Thực hiện tạo tài khoản', 'Make an account'),
(493, 16, 'Trang cá nhân', 'Profile'),
(494, 16, 'Thay đổi mật khẩu', 'Change password'),
(495, 16, 'Đăng xuất', 'Logout'),
(496, 16, 'Trang quản trị', 'Admin'),
(497, 16, 'Bảo mật', 'Security'),
(498, 16, 'Cộng tác viên', 'CTV'),
(499, 8, 'Bảng Điều Khiển', 'Bảng Điều Khiển'),
(500, 16, 'Bảng Điều Khiển', 'Dashboard'),
(501, 8, 'Nạp Tiền', 'Nạp Tiền'),
(502, 16, 'Nạp Tiền', 'RECHARGE'),
(505, 8, 'Ngân Hàng', 'Ngân Hàng'),
(506, 16, 'Ngân hàng', 'Bank'),
(507, 8, 'Ví Điện Tử', 'Ví Điện Tử'),
(508, 16, 'Ví Điện Tử', 'Electronic Wallet'),
(509, 8, 'Cửa Hàng', 'Cửa Hàng'),
(510, 16, 'Cửa Hàng', 'Store'),
(511, 8, 'Lịch Sử Mua Hàng', 'Lịch Sử Mua Hàng'),
(512, 16, 'Lịch Sử Mua Hàng', 'Purchase History'),
(513, 8, 'Liên Hệ', 'Liên Hệ'),
(514, 16, 'Liên Hệ', 'Contact'),
(515, 8, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(516, 16, 'Thông tin liên hệ', 'Contact Info'),
(517, 8, 'Mã giao dịch', 'Mã giao dịch'),
(518, 16, 'Mã giao dịch', 'TransId'),
(519, 8, 'Sản phẩm', 'Sản phẩm'),
(520, 16, 'Sản phẩm', 'Product'),
(521, 8, 'Số lượng', 'Số lượng'),
(522, 16, 'Số lượng', 'Amount'),
(523, 8, 'Thanh toán', 'Thanh toán'),
(524, 16, 'Thanh toán', 'Pay'),
(525, 8, 'Thời gian', 'Thời gian'),
(526, 16, 'Thời gian', 'Time'),
(527, 8, 'Thao tác', 'Thao tác'),
(528, 16, 'Thao tác', 'Action'),
(529, 8, 'Xem Thêm', 'Xem Thêm'),
(530, 16, 'Xem Thêm', 'See More'),
(531, 8, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(532, 16, 'Thông Tin Cá Nhân', 'Profile'),
(533, 8, 'Họ và Tên', 'Họ và Tên'),
(534, 16, 'Họ và Tên', 'First and Last Name'),
(535, 8, 'Nhập họ và tên', 'Nhập họ và tên'),
(536, 16, 'Nhập họ và tên', 'Enter your first and last name'),
(537, 8, 'Số điện thoại', 'Số điện thoại'),
(538, 16, 'Số điện thoại', 'Phone number'),
(539, 8, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(540, 16, 'Nhập số điện thoại', 'Enter your phone number'),
(541, 8, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(542, 16, 'Nhập địa chỉ Email', 'Enter your email address'),
(543, 8, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(544, 16, 'Thời gian đăng ký', 'Registration time'),
(545, 8, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(546, 16, 'Đăng nhập gần đây', 'Login time'),
(547, 8, 'Huỷ', 'Huỷ'),
(548, 16, 'Huỷ', 'Cancel'),
(549, 8, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(550, 16, 'Lưu Thay Đổi', 'Save Changes'),
(551, 8, 'Tổng Tiền Nạp', 'Tổng Tiền Nạp'),
(552, 16, 'Tổng Tiền Nạp', 'Total Deposit'),
(553, 8, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(555, 8, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(556, 16, 'Số Dư Hiện Tại', 'Current Balance'),
(557, 8, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(558, 16, 'Số Dư Sử Dụng', 'Usage Balance'),
(559, 8, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(560, 16, 'Vui lòng đăng nhập', 'Please login'),
(561, 8, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(562, 16, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address'),
(563, 8, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(564, 16, 'Định dạng Email không hợp lệ', 'Invalid Email Format'),
(565, 8, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(566, 16, 'Thay đổi thông tin hồ sơ', 'Change profile information'),
(567, 8, 'Lưu thành công', 'Lưu thành công'),
(568, 16, 'Lưu thành công', 'Successfully saved'),
(569, 8, 'Lưu thất bại', 'Lưu thất bại'),
(570, 16, 'Lưu thất bại', 'Save failed'),
(571, 8, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(572, 16, 'Vui lòng nhập mật khẩu hiện tại', 'Please enter your current password'),
(573, 8, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(574, 16, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password'),
(575, 8, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(576, 16, 'Mật khẩu hiện tại không chính xác', 'Current password is incorrect'),
(577, 8, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(578, 16, 'Đổi mật khẩu thành công', 'Change password successfully'),
(579, 8, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(580, 16, 'Đổi mật khẩu thất bại', 'Change password failed'),
(581, 8, 'Đóng', 'Đóng'),
(582, 16, 'Đóng', 'Close'),
(583, 8, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(584, 16, 'Mật khẩu hiện tại', 'Current password'),
(585, 8, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(586, 16, 'Nhập lại mật khẩu mới', 'Enter a new password'),
(587, 8, 'Mật khẩu mới', 'Mật khẩu mới'),
(588, 16, 'Mật khẩu mới', 'New password'),
(589, 8, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(590, 16, 'Vui lòng nhập lại mật khẩu mới', 'Please re-enter new password'),
(591, 8, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(592, 16, 'Nhật ký hoạt động', 'Activity Log'),
(593, 8, 'Biến động số dư', 'Biến động số dư'),
(594, 16, 'Biến động số dư', 'Balance log'),
(595, 8, 'Hành động', 'Hành động'),
(596, 16, 'Hành động', 'Action'),
(597, 8, 'Địa chỉ IP', 'Địa chỉ IP'),
(598, 16, 'Địa chỉ IP', 'IP address'),
(599, 8, 'Thiết bị', 'Thiết bị'),
(600, 16, 'Thiết bị', 'Device'),
(601, 8, 'Số tiền trước', 'Số tiền trước'),
(602, 16, 'Số tiền trước', 'Amount in advance'),
(603, 8, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(604, 16, 'Số tiền thay đổi', 'Amount of change'),
(605, 8, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(606, 16, 'Số tiền hiện tại', 'Current amount'),
(607, 8, 'Nội dung', 'Nội dung'),
(608, 16, 'Nội dung', 'Content'),
(609, 8, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(610, 16, 'Chọn phương thức thanh toán', 'Select a payment method'),
(611, 8, 'Nhập số tiền cần nạp', 'Nhập số tiền cần nạp'),
(612, 16, 'Nhập số tiền cần nạp', 'Enter the amount to deposit'),
(613, 8, 'Tạo hoá đơn', 'Tạo hoá đơn'),
(614, 16, 'Tạo hoá đơn', 'Create invoice'),
(615, 8, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Nhập số tiền bạn cần nạp vào hệ thống'),
(616, 16, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Enter the amount you need to deposit into the system'),
(617, 8, 'Hoá Đơn', 'Hoá Đơn'),
(618, 16, 'Hoá Đơn', 'Invoices'),
(619, 8, 'Trạng thái', 'Trạng thái'),
(620, 16, 'Trạng thái', 'Status'),
(621, 8, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(622, 16, 'Phương thức thanh toán', 'Payment Method'),
(623, 8, 'Huỷ bỏ', 'Huỷ bỏ'),
(624, 16, 'Huỷ bỏ', 'Cancelled'),
(625, 8, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(626, 16, 'Đang chờ thanh toán', 'Pending'),
(627, 8, 'Đã thanh toán', 'Đã thanh toán'),
(628, 16, 'Đã thanh toán', 'Paid'),
(629, 8, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(630, 16, 'Vui lòng chọn phương thức thanh toán', 'Please choose a payment method'),
(631, 8, 'Vui lòng nhập số tiền cần nạp', 'Vui lòng nhập số tiền cần nạp'),
(632, 16, 'Vui lòng nhập số tiền cần nạp', 'Please enter the amount to deposit'),
(633, 8, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(634, 16, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Payment method does not exist in the system'),
(635, 8, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(636, 16, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'You are working too fast, please wait'),
(637, 8, 'Số tiền nạp tối thiểu là', 'Số tiền nạp tối thiểu là'),
(638, 16, 'Số tiền nạp tối thiểu là', 'Minimum deposit amount is'),
(639, 8, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày'),
(640, 16, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'You have too many pending invoices for the day'),
(641, 8, 'Tạo hoá đơn nạp tiền', 'Tạo hoá đơn nạp tiền'),
(642, 16, 'Tạo hoá đơn nạp tiền', 'Create a recharge invoice'),
(643, 8, 'Tạo hoá đơn thành công', 'Tạo hoá đơn thành công'),
(644, 16, 'Tạo hoá đơn thành công', 'Successful invoice generation'),
(645, 8, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Tạo hoá đơn thất bại, vui lòng thử lại'),
(646, 16, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Invoice generation failed, please try again'),
(647, 8, 'Chi tiết hoá đơn', 'Chi tiết hoá đơn'),
(648, 16, 'Chi tiết hoá đơn', 'Invoice details'),
(649, 8, 'Tải Về', 'Tải Về'),
(650, 16, 'Tải Về', 'Download'),
(651, 8, 'Xoá', 'Xoá'),
(652, 16, 'Xoá', 'Delete'),
(653, 8, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(654, 16, 'Xác nhận xoá đơn hàng', 'Order deletion confirmation'),
(655, 8, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(656, 16, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Are you sure you want to delete this order?'),
(657, 8, 'Đồng Ý', 'Đồng Ý'),
(658, 16, 'Đồng Ý', 'Agree'),
(659, 8, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(660, 16, 'Đơn hàng không tồn tại trong hệ thống', 'The order does not exist in the system'),
(661, 8, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(662, 16, 'Xóa đơn hàng thành công', 'Deleted order successfully'),
(663, 8, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(664, 16, 'Dữ liệu không hợp lệ', 'Invalid data'),
(665, 8, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(666, 16, 'Xoá đơn hàng', 'Delete order'),
(667, 8, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(668, 16, 'Xóa sản phẩm thất bại', 'Delete failed products'),
(669, 8, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(670, 16, 'Chi tiết đơn hàng', 'Order details'),
(671, 8, 'Sao Chép', 'Sao Chép'),
(672, 16, 'Sao Chép', 'Copy'),
(673, 8, 'Quay Lại', 'Quay Lại'),
(674, 16, 'Quay Lại', 'Back'),
(675, 8, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(676, 16, 'Đánh giá sản phẩm', 'Product Reviews'),
(677, 8, 'Đánh giá ngay', 'Đánh giá ngay'),
(678, 16, 'Đánh giá ngay', 'Rate now'),
(679, 8, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(680, 16, 'Bạn có thể đánh giá đơn hàng này', 'You can rate this order'),
(681, 8, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(682, 16, 'Đơn hàng lớn hơn', 'Larger orders'),
(683, 8, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(684, 16, 'mới có thể đánh giá', 'can only evaluate'),
(685, 8, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(686, 16, 'Gửi Đánh Giá', 'Submit Review'),
(687, 8, 'Xác Nhận', 'Xác Nhận'),
(688, 16, 'Xác Nhận', 'Confirm'),
(689, 8, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(690, 16, 'Nhập nội dung cần đánh giá', 'Enter the content to evaluate'),
(691, 8, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(692, 16, 'Vui lòng nhập review', 'Please enter a review'),
(693, 8, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(694, 16, 'Đã sao chép vào bộ nhớ tạm', 'Copied to clipboard'),
(695, 8, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(696, 16, 'Bạn đã đánh giá đơn hàng này rồi', 'You have already rated this order'),
(697, 8, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(698, 16, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'You are not eligible to rate this order'),
(699, 8, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(700, 16, 'Gửi đánh giá thành công', 'Submit a successful review'),
(701, 8, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(702, 16, 'Gửi đánh giá thất bại', 'Submit a failed review'),
(703, 8, 'Sản phẩm mới', 'Sản phẩm mới'),
(704, 16, 'Sản phẩm mới', 'New products'),
(705, 8, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(706, 16, 'Nạp tiền qua PayPal', 'Recharge via PayPal'),
(707, 8, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(709, 8, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(710, 16, 'Nhập số tiền cần nạp bằng USD', 'Enter the amount to deposit in USD'),
(711, 8, 'Tạo hoá đơn nạp tiền qua PayPal', 'Tạo hoá đơn nạp tiền qua PayPal'),
(712, 16, 'Tạo hoá đơn nạp tiền qua PayPal', 'Create a bill top up via PayPal'),
(713, 8, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(714, 16, 'Số tiền cần nạp', 'Amount to deposit'),
(715, 8, 'Giá', 'Giá'),
(716, 16, 'Giá', 'Price'),
(717, 8, 'MUA NGAY', 'MUA NGAY'),
(718, 16, 'MUA NGAY', 'BUY NOW'),
(719, 8, 'Đã bán', 'Đã bán'),
(720, 16, 'Đã bán', 'Sold'),
(721, 8, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(722, 16, 'Sản phẩm không tồn tại', 'Product does not exist'),
(723, 8, 'Quốc gia', 'Quốc gia'),
(724, 16, 'Quốc gia', 'Country'),
(725, 8, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(727, 8, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(728, 16, 'Tất Cả Sản Phẩm', 'All Product'),
(729, 8, 'Tên sản phẩm', 'Tên sản phẩm'),
(730, 16, 'Tên sản phẩm', 'Product name'),
(731, 8, 'Hiện có', 'Hiện có'),
(732, 16, 'Hiện có', 'Available'),
(733, 8, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(734, 16, 'Thanh toán đơn hàng', 'Payment Orders'),
(735, 8, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(736, 16, 'Nhập số lượng cần mua', 'Enter the quantity you want to buy'),
(737, 8, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(738, 16, 'Tổng tiền cần thanh toán', 'Total amount to pay'),
(739, 8, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(741, 8, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(743, 8, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(744, 16, 'Nhập mã giảm giá', 'Enter coupon'),
(745, 16, 'Nhập mã giảm giá của bạn', 'Enter your coupon'),
(746, 8, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(747, 16, 'Huỷ mã giảm giá', 'Cancel coupon'),
(748, 8, 'Số lượng cần mua', 'Số lượng cần mua'),
(749, 16, 'Số lượng cần mua', 'Quantity to buy'),
(750, 8, 'Mã giảm giá', 'Mã giảm giá'),
(751, 16, 'Mã giảm giá', 'Coupon'),
(752, 8, 'Đánh giá', 'Đánh giá'),
(753, 16, 'Đánh giá', 'Evaluate'),
(754, 8, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(755, 16, 'Tải Về File Backup VIA', 'Download File Backup VIA'),
(756, 8, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(757, 16, 'Nhập UID VIA cần tải về file backup', 'Enter the VIA UID to download the backup file'),
(758, 8, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(759, 16, 'Vui lòng nhập UID cần tải', 'Please enter the UID to download'),
(760, 8, 'FAQ', 'FAQ'),
(761, 16, 'FAQ', 'FAQ'),
(762, 8, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(763, 16, 'Xác nhận tải về đơn hàng', 'Order download confirmation'),
(764, 8, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(765, 16, 'Bạn có chắc chắn muốn tải về hàng này không', 'Are you sure you want to download this item?'),
(766, 8, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(767, 16, 'Tải về đơn hàng', 'Download order'),
(768, 8, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(769, 16, 'Tải về đơn hàng thành công', 'Download order successfully'),
(770, 8, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(771, 16, 'Tải về đơn hàng thất bại', 'Order download failed'),
(772, 8, 'Tài Liệu API', 'Tài Liệu API'),
(773, 16, 'Tài Liệu API', 'API Documentation'),
(774, 8, 'Số Dư', 'Số Dư'),
(775, 16, 'Số Dư', 'Balance'),
(776, 8, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(777, 16, 'Sản phẩm không tồn tại trong hệ thống', 'The product does not exist in the system'),
(778, 8, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(779, 16, 'Vui lòng nhập số lượng cần mua', 'Please enter the quantity you want to buy'),
(780, 8, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(781, 16, 'Số lượng trong hệ thống không đủ', 'The number in the system is not enough'),
(782, 8, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(783, 16, 'Số dư không đủ, vui lòng nạp thêm', 'The balance is not enough, please top up'),
(784, 8, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(785, 16, 'Bạn đã bị khoá tài khoản vì gian lận', 'Your account has been blocked for cheating'),
(786, 8, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(787, 16, 'Thanh toán đơn hàng thành công', 'Order payment successful'),
(788, 8, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(789, 16, 'Không thể thanh toán, vui lòng thử lại', 'Unable to pay, please try again'),
(790, 8, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(791, 16, 'Đang tải xuống đơn hàng...', 'Order downloading...'),
(792, 8, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(793, 16, 'Xóa sản phẩm thành công', 'Delete product successfully'),
(794, 8, 'Tài khoản', 'Tài khoản'),
(796, 8, 'Tài khoản:', 'Tài khoản:'),
(797, 16, 'Tài khoản:', 'Account:'),
(798, 8, 'Số lượng mua:', 'Số lượng mua:'),
(800, 8, 'Thông báo', 'Thông báo'),
(801, 16, 'Thông báo', 'Notifications'),
(802, 8, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(803, 16, 'Chi tiết thông báo', 'Notice details'),
(804, 8, 'Nạp Thẻ', 'Nạp Thẻ'),
(805, 16, 'Nạp Thẻ', 'Nạp Thẻ'),
(806, 8, 'Lưu Ý', 'Lưu Ý'),
(807, 16, 'Lưu ý', 'Note'),
(808, 8, 'Lý do', 'Lý do'),
(809, 16, 'Lý do', 'Reason'),
(810, 8, 'Thực nhận', 'Thực nhận'),
(811, 16, 'Thực nhận', 'Received'),
(812, 8, 'Nhà mạng', 'Nhà mạng'),
(813, 16, 'Nhà mạng', 'Telco'),
(1011, 8, 'Chính sách bảo mật', 'Chính sách bảo mật'),
(1012, 16, 'Chính sách bảo mật', 'Privacy Policy'),
(1013, 8, 'Điều khoản sử dụng', 'Điều khoản sử dụng'),
(1014, 16, 'Điều khoản sử dụng', 'Terms of Use'),
(1015, 8, 'Captcha không chính xác', 'Captcha không chính xác'),
(1016, 16, 'Captcha không chính xác', 'Captcha is incorrect'),
(1017, 8, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1018, 16, 'Nhập nội dung bên trái', 'Enter the content on the left'),
(1019, 8, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1020, 16, 'Vui lòng nhập mã captcha để xác minh', 'Please enter captcha code to verify'),
(1021, 8, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1022, 16, 'Bật/Tắt Google 2FA', 'Enable/Disable Google 2FA'),
(1023, 8, 'Bật', 'Bật'),
(1024, 16, 'Bật', 'Enable'),
(1025, 8, 'Tắt', 'Tắt'),
(1026, 16, 'Tắt', 'Disable'),
(1027, 8, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1028, 16, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Please save the information below before Enable this function'),
(1029, 8, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1030, 16, 'Vui lòng chọn trạng thái 2FA', 'Please select 2FA status'),
(1031, 8, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1032, 16, 'Nhập mã xác minh để lưu thay đổi', 'Enter the verification code to save changes'),
(1033, 8, 'Mã Xác Minh', 'Mã Xác Minh'),
(1034, 16, 'Mã Xác Minh', 'Verification Code'),
(1035, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1037, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1039, 16, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'OTP Verification: Perform verification using Google Authenticator App'),
(1040, 8, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1042, 8, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1043, 16, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1044, 8, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1045, 16, 'Vui lòng nhập mã xác minh 2FA', 'Please enter 2FA verification code'),
(1046, 8, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1047, 16, 'Mã xác minh không chính xác', 'Verification code is incorrect'),
(1048, 8, 'Xác minh 2FA', 'Xác minh 2FA'),
(1049, 16, 'Xác minh 2FA', '2FA Verification'),
(1050, 8, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1052, 8, 'Xác Minh OTP', 'Xác Minh OTP'),
(1053, 16, 'Xác Minh OTP', 'OTP Verification'),
(1054, 8, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1055, 16, 'Nhập mã xác minh', 'Enter verification code'),
(1056, 8, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1057, 16, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Please verify 2FA to complete the login process'),
(1058, 8, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1059, 16, 'Vui lòng nhập mã xác minh', 'Please enter the verification code'),
(1060, 8, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1061, 16, 'Đang bật bảo mật', 'Security is on'),
(1062, 8, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1063, 16, 'Đang tắt bảo mật', 'Turning off security'),
(1064, 8, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1065, 16, 'Số sao đánh giá không hợp lệ', 'Invalid rating stars'),
(1066, 8, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1067, 16, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Please enable Google 2FA 2-step verification to protect your account.'),
(1068, 8, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1069, 16, 'Số tiền thực nhận', 'The amount actually received'),
(1070, 8, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1071, 16, 'Bảo Mật Tài Khoản', 'Account Security'),
(1072, 8, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1073, 16, 'Thông tin tài nguyên', 'Resource Information'),
(1074, 8, 'Mở hộp quà', 'Mở hộp quà'),
(1075, 16, 'Mở hộp quà', 'Open the gift box'),
(1076, 8, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1077, 16, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'This gift box has already been received, good luck next time'),
(1078, 8, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1079, 16, 'Nhận Quà Thất Bại', 'Receive Failure Gift'),
(1080, 8, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1081, 16, 'Bạn đã mở hộp quà này rồi', 'You have already opened this gift box'),
(1084, 8, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1085, 16, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Congratulations on receiving a valuable gift box'),
(1086, 8, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1087, 16, 'Quay về Trang Chủ', 'Back to Home'),
(1089, 8, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1090, 16, 'Nhận Quà Thành Công', 'Receive Success Gifts'),
(1091, 8, 'Phiên bản', 'Phiên bản'),
(1092, 16, 'Phiên bản', 'Version'),
(1093, 8, 'Số tiền nạp', 'Số tiền nạp'),
(1094, 16, 'Số tiền nạp', 'Deposit amount'),
(1095, 8, 'Lịch sử nạp PayPal', 'Lịch sử nạp PayPal'),
(1096, 16, 'Lịch sử nạp PayPal', 'PayPal recharge history'),
(1097, 8, 'Thành công', 'Thành công'),
(1098, 16, 'Thành công', 'Success'),
(1099, 8, 'Cảm ơn bạn đã mua hàng', 'Cảm ơn bạn đã mua hàng'),
(1100, 16, 'Cảm ơn bạn đã mua hàng', 'Thank you for your purchase'),
(1101, 8, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây'),
(1102, 16, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Your order has been processed, you can view your account information through the link below'),
(1103, 8, 'Tổng thanh toán', 'Tổng thanh toán'),
(1104, 16, 'Tổng thanh toán', 'Total payment'),
(1105, 8, 'Xem chi tiết đơn hàng', 'Xem chi tiết đơn hàng'),
(1106, 16, 'Xem chi tiết đơn hàng', 'View order details'),
(1107, 8, 'Xem Ngay', 'Xem Ngay'),
(1108, 16, 'Xem Ngay', 'Watch Now'),
(1109, 8, 'Tạo hoá đơn nạp tiền thành công', 'Tạo hoá đơn nạp tiền thành công'),
(1110, 16, 'Tạo hoá đơn nạp tiền thành công', 'Create a successful recharge invoice'),
(1111, 8, 'Vòng quay may mắn', 'Vòng quay may mắn'),
(1112, 16, 'Vòng quay may mắn', 'Rotation luck'),
(1113, 8, 'Đang chờ kết quả...', 'Đang chờ kết quả...'),
(1114, 16, 'Đang chờ kết quả...', 'Waiting for results...'),
(1115, 8, 'Lịch Sử Quay Thưởng', 'Lịch Sử Quay Thưởng'),
(1116, 16, 'Lịch Sử Quay Thưởng', 'Spin History'),
(1117, 8, 'Số lượt quay hiện tại của bạn đã hết', 'Số lượt quay hiện tại của bạn đã hết'),
(1118, 16, 'Số lượt quay hiện tại của bạn đã hết', 'Your current spin has expired'),
(1119, 8, 'Chúc mừng bạn đã quay được phần thường', 'Chúc mừng bạn đã quay được phần thường'),
(1120, 16, 'Chúc mừng bạn đã quay được phần thường', 'Congratulations on filming the regular part'),
(1121, 8, 'Chức năng này đang được bảo trì', 'Chức năng này đang được bảo trì'),
(1122, 16, 'Chức năng này đang được bảo trì', 'This function is under maintenance'),
(1123, 8, 'Cách kiếm thêm lượt quay', 'Cách kiếm thêm lượt quay'),
(1124, 16, 'Cách kiếm thêm lượt quay', 'How to earn more spins'),
(1125, 8, 'Thực Hiện', 'Thực Hiện'),
(1126, 16, 'Thực Hiện', 'Submit'),
(1127, 8, 'Thanh Toán Bằng Perfect Money', 'Thanh Toán Bằng Perfect Money'),
(1128, 16, 'Thanh Toán Bằng Perfect Money', 'Paying With Perfect Money'),
(1129, 8, 'Khuôn Mặt Ngẫu Nhiên', 'Khuôn Mặt Ngẫu Nhiên'),
(1130, 16, 'Khuôn Mặt Ngẫu Nhiên', 'Random Faces'),
(1131, 8, 'Bạn chưa đăng nhập', 'Bạn chưa đăng nhập'),
(1132, 16, 'Bạn chưa đăng nhập', 'You are not logged in'),
(1133, 8, 'Mua', 'Mua'),
(1134, 16, 'Mua', 'Buy'),
(1135, 16, 'tài khoản', 'accounts'),
(1136, 8, 'với giá', 'với giá'),
(1137, 16, 'với giá', 'with price'),
(1138, 8, 'Giao Dịch Dần Đây Của Hệ Thống', 'Giao Dịch Dần Đây Của Hệ Thống'),
(1139, 16, 'Giao Dịch Dần Đây Của Hệ Thống', 'Recent Transactions'),
(1140, 8, 'giây trước', 'giây trước'),
(1141, 16, 'giây trước', 'seconds ago'),
(1142, 8, 'năm trước', 'năm trước'),
(1143, 16, 'năm trước', 'last year'),
(1144, 8, 'tháng trước', 'tháng trước'),
(1145, 16, 'tháng trước', 'last month'),
(1146, 8, 'tuần trước', 'tuần trước'),
(1147, 16, 'tuần trước', 'last week'),
(1148, 8, 'ngày trước', 'ngày trước'),
(1149, 16, 'ngày trước', 'yesterday'),
(1150, 8, 'Hôm qua', 'Hôm qua'),
(1151, 16, 'Hôm qua', 'Yesterday'),
(1152, 8, 'tiếng trước', 'tiếng trước'),
(1153, 16, 'tiếng trước', 'hour ago'),
(1154, 8, 'phút trước', 'phút trước'),
(1155, 16, 'phút trước', 'minute ago'),
(1156, 8, 'Sao Chép Tất Cả', 'Sao Chép Tất Cả'),
(1157, 16, 'Sao Chép Tất Cả', 'Copy All'),
(1158, 8, 'Bài viết nổi bật', 'Bài viết nổi bật'),
(1159, 16, 'Bài viết nổi bật', 'Featured Posts'),
(1160, 8, 'Danh sách bài viết', 'Danh sách bài viết'),
(1161, 16, 'Danh sách bài viết', 'List of articles'),
(1162, 8, 'HẾT HÀNG', 'HẾT HÀNG'),
(1163, 16, 'HẾT HÀNG', 'OUT OF STOCK'),
(1164, 8, 'MUA TÀI KHOẢN', 'Mua Tài Khoản'),
(1165, 16, 'MUA TÀI KHOẢN', 'BUY ACCOUNT'),
(1166, 8, 'MUA TÀI LIỆU', 'Mua Tài Liệu'),
(1167, 16, 'MUA TÀI LIỆU', 'BUY DOCUMENTS'),
(1168, 8, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v'),
(1169, 16, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Provide resources to run ADS, Clone, Via, BM, Mail etc'),
(1170, 8, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v'),
(1171, 16, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Provide documents, TUT in the field of marketing, mmo etc'),
(1172, 8, 'XEM CỬA HÀNG', 'XEM CỬA HÀNG'),
(1173, 16, 'XEM CỬA HÀNG', 'VIEW SHOP'),
(1174, 8, 'Danh sách TUT/Trick', 'Danh sách TUT/Trick'),
(1175, 16, 'Danh sách TUT/Trick', 'List of TUT/Trick'),
(1176, 8, 'Chuyên mục', 'Chuyên mục'),
(1177, 16, 'Chuyên mục', 'Categories'),
(1178, 8, 'Ngày đăng', 'Ngày đăng'),
(1179, 16, 'Ngày đăng', 'Create date'),
(1180, 8, 'Cập nhật', 'Cập nhật'),
(1181, 16, 'Cập nhật', 'Update date'),
(1182, 8, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'Bạn không được dùng chức năng này vì đây là trang web demo'),
(1183, 16, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'You cannot use this function because this is a demo site'),
(1184, 8, 'Tổng nạp lớn hơn hoặc bằng', 'Tổng nạp lớn hơn hoặc bằng'),
(1185, 16, 'Tổng nạp lớn hơn hoặc bằng', 'Total charge is greater than or equal to'),
(1186, 8, 'Khuyến mãi thêm', 'Khuyến mãi thêm'),
(1187, 16, 'Khuyến mãi thêm', 'Extra promotion'),
(1188, 8, 'Số tiền nhận được', 'Số tiền nhận được'),
(1189, 16, 'Số tiền nhận được', 'Amount received'),
(1190, 8, 'Ví', 'Ví'),
(1191, 16, 'Ví', 'Wallet'),
(1192, 8, 'Giảm', 'Giảm'),
(1193, 16, 'Giảm', 'Discount'),
(1194, 8, 'ĐƠN HÀNG GẦN ĐÂY', 'ĐƠN HÀNG GẦN ĐÂY'),
(1195, 16, 'ĐƠN HÀNG GẦN ĐÂY', 'LAST ORDER'),
(1196, 8, 'NẠP TIỀN GẦN ĐÂY', 'NẠP TIỀN GẦN ĐÂY'),
(1197, 16, 'NẠP TIỀN GẦN ĐÂY', 'LAST DEPOSIT'),
(1198, 8, 'Gợi ý sản phẩm cho bạn', 'Gợi ý sản phẩm cho bạn'),
(1199, 16, 'Gợi ý sản phẩm cho bạn', 'Recommend products for you'),
(1200, 8, 'Bảng Xếp Hạng', 'Bảng Xếp Hạng'),
(1201, 16, 'Bảng Xếp Hạng', 'Top Money'),
(1202, 8, 'Bài Viết', 'Bài Viết'),
(1203, 16, 'Bài Viết', 'Posts'),
(1204, 8, 'Công Cụ', 'Công Cụ'),
(1205, 16, 'Công Cụ', 'Tools'),
(1206, 8, 'Bảng Xếp Hạng Nạp Tiền', 'Bảng Xếp Hạng Nạp Tiền'),
(1207, 16, 'Bảng Xếp Hạng Nạp Tiền', 'Top Money'),
(1208, 8, 'Xếp Hạng', 'Xếp Hạng'),
(1209, 16, 'Xếp Hạng', 'Top'),
(1210, 8, 'Tổng Nạp', 'Tổng Nạp'),
(1211, 16, 'Tổng Nạp', 'Total Deposit'),
(1212, 8, 'Vị Trí', 'Vị Trí'),
(1213, 16, 'Vị Trí', 'Positions'),
(1214, 8, 'Thành Viên', 'Thành Viên'),
(1215, 16, 'Thành Viên', 'Member'),
(1216, 8, 'KHÁC', 'KHÁC'),
(1217, 16, 'KHÁC', 'OTHER'),
(1218, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1219, 18, 'Đăng Ký', 'Đăng Ký'),
(1220, 18, 'Tên đăng nhập', 'Tên đăng nhập'),
(1221, 18, 'Mật khẩu', 'Mật khẩu'),
(1222, 18, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(1223, 18, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(1224, 18, 'Đăng ký', 'Đăng ký'),
(1225, 18, 'Quên mật khẩu', 'Quên mật khẩu'),
(1226, 18, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(1227, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1228, 18, 'hoặc', 'hoặc'),
(1229, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1230, 18, 'Đang xử lý...', 'Đang xử lý...'),
(1231, 18, 'Đăng Ký', 'Đăng Ký'),
(1232, 18, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(1233, 18, 'Địa chỉ Email', 'Địa chỉ Email'),
(1234, 18, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(1235, 18, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(1236, 18, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(1237, 18, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(1238, 18, 'Username không được để trống', 'Username không được để trống'),
(1239, 18, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(1240, 18, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(1241, 18, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(1242, 18, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(1243, 18, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(1244, 18, 'Email không được để trống', 'Email không được để trống'),
(1245, 18, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(1246, 18, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(1247, 18, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(1248, 18, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(1249, 18, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(1250, 18, 'Đăng ký thành công', 'Đăng ký thành công'),
(1251, 18, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(1252, 18, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(1253, 18, 'Trang cá nhân', 'Trang cá nhân'),
(1254, 18, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(1255, 18, 'Đăng xuất', 'Đăng xuất'),
(1256, 18, 'Trang quản trị', 'Trang quản trị'),
(1257, 18, 'Bảo mật', 'Bảo mật'),
(1258, 18, 'Cộng tác viên', 'Cộng tác viên'),
(1259, 18, 'Bảng Điều Khiển', 'แผงควบคุม'),
(1260, 18, 'Nạp Tiền', 'เติมเงิน'),
(1261, 18, 'Ngân Hàng', 'ธนาคาร'),
(1262, 18, 'Ví Điện Tử', 'Ví Điện Tử'),
(1263, 18, 'Cửa Hàng', 'Cửa Hàng'),
(1264, 18, 'Lịch Sử Mua Hàng', 'ประวัติการซื้อ'),
(1265, 18, 'Liên Hệ', 'Liên Hệ'),
(1266, 18, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(1267, 18, 'Mã giao dịch', 'Mã giao dịch'),
(1268, 18, 'Sản phẩm', 'Sản phẩm'),
(1269, 18, 'Số lượng', 'Số lượng'),
(1270, 18, 'Thanh toán', 'Thanh toán'),
(1271, 18, 'Thời gian', 'Thời gian'),
(1272, 18, 'Thao tác', 'Thao tác'),
(1273, 18, 'Xem Thêm', 'Xem Thêm'),
(1274, 18, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(1275, 18, 'Họ và Tên', 'Họ và Tên'),
(1276, 18, 'Nhập họ và tên', 'Nhập họ và tên'),
(1277, 18, 'Số điện thoại', 'Số điện thoại'),
(1278, 18, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(1279, 18, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(1280, 18, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(1281, 18, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(1282, 18, 'Huỷ', 'Huỷ'),
(1283, 18, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(1284, 18, 'Tổng Tiền Nạp', 'ยอดเงินฝาก'),
(1285, 18, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(1286, 18, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(1287, 18, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(1288, 18, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(1289, 18, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(1290, 18, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(1291, 18, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(1292, 18, 'Lưu thành công', 'Lưu thành công'),
(1293, 18, 'Lưu thất bại', 'Lưu thất bại'),
(1294, 18, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(1295, 18, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(1296, 18, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(1297, 18, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(1298, 18, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(1299, 18, 'Đóng', 'Đóng'),
(1300, 18, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(1301, 18, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(1302, 18, 'Mật khẩu mới', 'Mật khẩu mới'),
(1303, 18, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(1304, 18, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(1305, 18, 'Biến động số dư', 'Biến động số dư'),
(1306, 18, 'Hành động', 'Hành động'),
(1307, 18, 'Địa chỉ IP', 'Địa chỉ IP'),
(1308, 18, 'Thiết bị', 'Thiết bị'),
(1309, 18, 'Số tiền trước', 'Số tiền trước'),
(1310, 18, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(1311, 18, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(1312, 18, 'Nội dung', 'Nội dung'),
(1313, 18, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(1314, 18, 'Nhập số tiền cần nạp', 'ใส่จำนวนเงินที่จะฝาก'),
(1315, 18, 'Tạo hoá đơn', 'สร้างใบแจ้งหนี้'),
(1316, 18, 'Nhập số tiền bạn cần nạp vào hệ thống', 'ระบุจำนวนที่ต้องการฝากเข้าระบบ'),
(1317, 18, 'Hoá Đơn', 'ใบแจ้งหนี้'),
(1318, 18, 'Trạng thái', 'Trạng thái'),
(1319, 18, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(1320, 18, 'Huỷ bỏ', 'Huỷ bỏ'),
(1321, 18, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(1322, 18, 'Đã thanh toán', 'Đã thanh toán'),
(1323, 18, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(1324, 18, 'Vui lòng nhập số tiền cần nạp', 'กรุณากรอกจำนวนเงินที่จะฝาก'),
(1325, 18, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(1326, 18, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(1327, 18, 'Số tiền nạp tối thiểu là', 'จำนวนเงินฝากขั้นต่ำคือ'),
(1328, 18, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'คุณมีใบแจ้งหนี้ที่รอดำเนินการมากเกินไปสำหรับวันนั้น'),
(1329, 18, 'Tạo hoá đơn nạp tiền', 'สร้างใบแจ้งหนี้การเติมเงิน'),
(1330, 18, 'Tạo hoá đơn thành công', 'การสร้างใบแจ้งหนี้ที่ประสบความสำเร็จ'),
(1331, 18, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'การสร้างใบแจ้งหนี้ล้มเหลว โปรดลองอีกครั้ง'),
(1332, 18, 'Chi tiết hoá đơn', 'รายละเอียดใบแจ้งหนี้'),
(1333, 18, 'Tải Về', 'Tải Về'),
(1334, 18, 'Xoá', 'Xoá'),
(1335, 18, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(1336, 18, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(1337, 18, 'Đồng Ý', 'Đồng Ý'),
(1338, 18, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(1339, 18, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(1340, 18, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(1341, 18, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(1342, 18, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(1343, 18, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(1344, 18, 'Sao Chép', 'Sao Chép'),
(1345, 18, 'Quay Lại', 'Quay Lại'),
(1346, 18, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(1347, 18, 'Đánh giá ngay', 'Đánh giá ngay'),
(1348, 18, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(1349, 18, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(1350, 18, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(1351, 18, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(1352, 18, 'Xác Nhận', 'Xác Nhận'),
(1353, 18, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(1354, 18, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(1355, 18, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(1356, 18, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(1357, 18, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(1358, 18, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(1359, 18, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(1360, 18, 'Sản phẩm mới', 'Sản phẩm mới'),
(1361, 18, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(1362, 18, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(1363, 18, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(1364, 18, 'Tạo hoá đơn nạp tiền qua PayPal', 'สร้างใบแจ้งหนี้การเติมเงินผ่าน PayPal'),
(1365, 18, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(1366, 18, 'Giá', 'Giá'),
(1367, 18, 'MUA NGAY', 'MUA NGAY'),
(1368, 18, 'Đã bán', 'Đã bán'),
(1369, 18, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(1370, 18, 'Quốc gia', 'Quốc gia'),
(1371, 18, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(1372, 18, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(1373, 18, 'Tên sản phẩm', 'Tên sản phẩm'),
(1374, 18, 'Hiện có', 'Hiện có'),
(1375, 18, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(1376, 18, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(1377, 18, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(1378, 18, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(1379, 18, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(1380, 18, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(1381, 18, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(1382, 18, 'Số lượng cần mua', 'Số lượng cần mua'),
(1383, 18, 'Mã giảm giá', 'Mã giảm giá'),
(1384, 18, 'Đánh giá', 'Đánh giá'),
(1385, 18, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(1386, 18, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(1387, 18, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(1388, 18, 'FAQ', 'FAQ'),
(1389, 18, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(1390, 18, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(1391, 18, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(1392, 18, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(1393, 18, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(1394, 18, 'Tài Liệu API', 'Tài Liệu API'),
(1395, 18, 'Số Dư', 'Số Dư'),
(1396, 18, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(1397, 18, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(1398, 18, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(1399, 18, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(1400, 18, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(1401, 18, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(1402, 18, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(1403, 18, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(1404, 18, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(1405, 18, 'Tài khoản', 'Tài khoản'),
(1406, 18, 'Tài khoản:', 'Tài khoản:'),
(1407, 18, 'Số lượng mua:', 'Số lượng mua:'),
(1408, 18, 'Thông báo', 'Thông báo'),
(1409, 18, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(1410, 18, 'Nạp Thẻ', 'Nạp Thẻ'),
(1411, 18, 'Lưu Ý', 'Lưu Ý'),
(1412, 18, 'Lý do', 'Lý do'),
(1413, 18, 'Thực nhận', 'Thực nhận'),
(1414, 18, 'Nhà mạng', 'Nhà mạng'),
(1415, 18, 'Chính sách bảo mật', 'นโยบายความเป็นส่วนตัว'),
(1416, 18, 'Điều khoản sử dụng', 'ข้อกำหนดการใช้งาน'),
(1417, 18, 'Captcha không chính xác', 'Captcha không chính xác'),
(1418, 18, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1419, 18, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1420, 18, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1421, 18, 'Bật', 'Bật'),
(1422, 18, 'Tắt', 'Tắt'),
(1423, 18, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1424, 18, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1425, 18, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1426, 18, 'Mã Xác Minh', 'Mã Xác Minh'),
(1427, 18, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1428, 18, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1429, 18, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1430, 18, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1431, 18, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1432, 18, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1433, 18, 'Xác minh 2FA', 'Xác minh 2FA'),
(1434, 18, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1435, 18, 'Xác Minh OTP', 'Xác Minh OTP'),
(1436, 18, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1437, 18, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1438, 18, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1439, 18, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1440, 18, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1441, 18, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1442, 18, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1443, 18, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1444, 18, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1445, 18, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1446, 18, 'Mở hộp quà', 'Mở hộp quà'),
(1447, 18, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1448, 18, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1449, 18, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1450, 18, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1451, 18, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1452, 18, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1453, 18, 'Phiên bản', 'Phiên bản'),
(1454, 18, 'Số tiền nạp', 'Số tiền nạp'),
(1455, 18, 'Lịch sử nạp PayPal', 'Lịch sử nạp PayPal'),
(1456, 18, 'Thành công', 'Thành công'),
(1457, 18, 'Cảm ơn bạn đã mua hàng', 'Cảm ơn bạn đã mua hàng'),
(1458, 18, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây'),
(1459, 18, 'Tổng thanh toán', 'Tổng thanh toán'),
(1460, 18, 'Xem chi tiết đơn hàng', 'Xem chi tiết đơn hàng'),
(1461, 18, 'Xem Ngay', 'Xem Ngay'),
(1462, 18, 'Tạo hoá đơn nạp tiền thành công', 'สร้างใบแจ้งหนี้การเติมเงินสำเร็จ'),
(1463, 18, 'Vòng quay may mắn', 'Vòng quay may mắn'),
(1464, 18, 'Đang chờ kết quả...', 'Đang chờ kết quả...'),
(1465, 18, 'Lịch Sử Quay Thưởng', 'Lịch Sử Quay Thưởng'),
(1466, 18, 'Số lượt quay hiện tại của bạn đã hết', 'Số lượt quay hiện tại của bạn đã hết'),
(1467, 18, 'Chúc mừng bạn đã quay được phần thường', 'Chúc mừng bạn đã quay được phần thường'),
(1468, 18, 'Chức năng này đang được bảo trì', 'Chức năng này đang được bảo trì'),
(1469, 18, 'Cách kiếm thêm lượt quay', 'Cách kiếm thêm lượt quay'),
(1470, 18, 'Thực Hiện', 'Thực Hiện'),
(1471, 18, 'Thanh Toán Bằng Perfect Money', 'Thanh Toán Bằng Perfect Money'),
(1472, 18, 'Khuôn Mặt Ngẫu Nhiên', 'Khuôn Mặt Ngẫu Nhiên'),
(1473, 18, 'Bạn chưa đăng nhập', 'Bạn chưa đăng nhập'),
(1474, 18, 'Mua', 'Mua'),
(1475, 18, 'với giá', 'với giá'),
(1476, 18, 'Giao Dịch Dần Đây Của Hệ Thống', 'Giao Dịch Dần Đây Của Hệ Thống'),
(1477, 18, 'giây trước', 'giây trước'),
(1478, 18, 'năm trước', 'năm trước'),
(1479, 18, 'tháng trước', 'tháng trước'),
(1480, 18, 'tuần trước', 'tuần trước'),
(1481, 18, 'ngày trước', 'ngày trước'),
(1482, 18, 'Hôm qua', 'Hôm qua'),
(1483, 18, 'tiếng trước', 'tiếng trước'),
(1484, 18, 'phút trước', 'phút trước'),
(1485, 18, 'Sao Chép Tất Cả', 'Sao Chép Tất Cả'),
(1486, 18, 'Bài viết nổi bật', 'Bài viết nổi bật'),
(1487, 18, 'Danh sách bài viết', 'Danh sách bài viết'),
(1488, 18, 'HẾT HÀNG', 'HẾT HÀNG'),
(1489, 18, 'MUA TÀI KHOẢN', 'ซื้อบัญชีผู้หญิง'),
(1490, 18, 'MUA TÀI LIỆU', 'ซื้อวัสดุ'),
(1491, 18, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v'),
(1492, 18, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v'),
(1493, 18, 'XEM CỬA HÀNG', 'XEM CỬA HÀNG'),
(1494, 18, 'Danh sách TUT/Trick', 'Danh sách TUT/Trick'),
(1495, 18, 'Chuyên mục', 'Chuyên mục'),
(1496, 18, 'Ngày đăng', 'วันที่ส่ง'),
(1497, 18, 'Cập nhật', 'อัปเดต'),
(1498, 18, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'คุณไม่สามารถใช้ฟังก์ชันนี้ได้เนื่องจากเป็นไซต์สาธิต'),
(1499, 18, 'Tổng nạp lớn hơn hoặc bằng', 'ค่าใช้จ่ายทั้งหมดมากกว่าหรือเท่ากับ'),
(1500, 18, 'Khuyến mãi thêm', 'โปรโมชั่นพิเศษ'),
(1501, 18, 'Số tiền nhận được', 'จำนวนเงินที่ได้รับ'),
(1502, 18, 'Ví', 'กระเป๋าสตางค์'),
(1503, 18, 'Giảm', 'ลด'),
(1504, 18, 'ĐƠN HÀNG GẦN ĐÂY', 'คำสั่งซื้อล่าสุด'),
(1505, 18, 'NẠP TIỀN GẦN ĐÂY', 'เงินฝากล่าสุด'),
(1506, 18, 'Gợi ý sản phẩm cho bạn', 'แนะนำสินค้าสำหรับคุณ');
INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(1507, 18, 'Bảng Xếp Hạng', 'ชาร์ต'),
(1508, 18, 'Bài Viết', 'Posts'),
(1509, 18, 'Công Cụ', 'เครื่องมือ'),
(1510, 18, 'Bảng Xếp Hạng Nạp Tiền', 'กระดานผู้นำเติมเงิน'),
(1511, 18, 'Xếp Hạng', 'เรตติ้ง'),
(1512, 18, 'Tổng Nạp', 'ยอดเงินฝาก'),
(1513, 18, 'Vị Trí', 'ที่ตั้ง'),
(1514, 18, 'Thành Viên', 'สมาชิก'),
(1515, 18, 'KHÁC', 'อื่นๆ'),
(1516, 8, 'THÔNG TIN CHI TIẾT', 'THÔNG TIN CHI TIẾT'),
(1517, 16, 'THÔNG TIN CHI TIẾT', 'DETAILS'),
(1518, 18, 'THÔNG TIN CHI TIẾT', 'รายละเอียด'),
(1519, 8, 'LINK GIỚI THIỆU CỦA BẠN', 'LINK GIỚI THIỆU CỦA BẠN'),
(1520, 16, 'LINK GIỚI THIỆU CỦA BẠN', 'YOUR INTRODUCTION LINK'),
(1521, 18, 'LINK GIỚI THIỆU CỦA BẠN', 'ลิงค์แนะนำของคุณ'),
(1522, 8, 'Tiếp Thị Liên Kết', 'Tiếp Thị Liên Kết'),
(1523, 16, 'Tiếp Thị Liên Kết', 'Affiliate Program'),
(1524, 18, 'Tiếp Thị Liên Kết', 'การตลาดพันธมิตร'),
(1525, 8, 'TỔNG SỐ CLICK', 'TỔNG SỐ CLICK'),
(1526, 18, 'TỔNG SỐ CLICK', 'TỔNG SỐ CLICK'),
(1527, 16, 'TỔNG SỐ CLICK', 'TOTAL CLICKS'),
(1528, 8, 'ĐĂNG KÝ MỚI', 'ĐĂNG KÝ MỚI'),
(1529, 18, 'ĐĂNG KÝ MỚI', 'ĐĂNG KÝ MỚI'),
(1530, 16, 'ĐĂNG KÝ MỚI', 'NEW SIGN UP'),
(1531, 8, 'HOA HỒNG ĐÃ NHẬN', 'HOA HỒNG ĐÃ NHẬN'),
(1532, 18, 'HOA HỒNG ĐÃ NHẬN', 'HOA HỒNG ĐÃ NHẬN'),
(1533, 16, 'HOA HỒNG ĐÃ NHẬN', 'COMMISSIONS RECEIVED'),
(1534, 8, 'Mức hoa hồng:', 'Mức hoa hồng:'),
(1535, 18, 'Mức hoa hồng:', 'Mức hoa hồng:'),
(1536, 16, 'Mức hoa hồng:', 'Commission level:'),
(1537, 8, 'Số dư hoa hồng khả dụng:', 'Số dư hoa hồng khả dụng:'),
(1538, 18, 'Số dư hoa hồng khả dụng:', 'Số dư hoa hồng khả dụng:'),
(1539, 16, 'Số dư hoa hồng khả dụng:', 'Available commission balance:'),
(1540, 8, 'TỔNG QUAN', 'TỔNG QUAN'),
(1541, 18, 'TỔNG QUAN', 'TỔNG QUAN'),
(1542, 16, 'TỔNG QUAN', 'OVERVIEW'),
(1543, 8, 'RÚT TIỀN', 'RÚT TIỀN'),
(1544, 18, 'RÚT TIỀN', 'RÚT TIỀN'),
(1545, 16, 'RÚT TIỀN', 'WITHDRAW'),
(1546, 8, 'LỊCH SỬ', 'LỊCH SỬ'),
(1547, 18, 'LỊCH SỬ', 'LỊCH SỬ'),
(1548, 16, 'LỊCH SỬ', 'HISTORY'),
(1549, 8, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.'),
(1550, 18, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'คัดลอกที่อยู่นี้และแชร์ให้เพื่อนของคุณ'),
(1551, 16, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Copy this address and share to your friends.'),
(1552, 8, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU'),
(1553, 18, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'รายชื่อเพื่อนที่คุณแนะนำ'),
(1554, 16, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'LIST OF FRIENDS RECOMMENDED BY YOU'),
(1555, 8, 'TẠO YÊU CẦU RÚT TIỀN', 'TẠO YÊU CẦU RÚT TIỀN'),
(1556, 18, 'TẠO YÊU CẦU RÚT TIỀN', 'สร้างคำขอถอนเงิน'),
(1557, 16, 'TẠO YÊU CẦU RÚT TIỀN', 'CREATE WITHDRAWAL REQUEST'),
(1558, 8, 'LỊCH SỬ HOA HỒNG', 'LỊCH SỬ HOA HỒNG'),
(1559, 18, 'LỊCH SỬ HOA HỒNG', 'ประวัติดอกกุหลาบ'),
(1560, 16, 'LỊCH SỬ HOA HỒNG', 'HISTORY OF COMMISSION'),
(1561, 8, 'Ngân hàng:', 'Ngân hàng:'),
(1562, 18, 'Ngân hàng:', 'ธนาคาร:'),
(1563, 16, 'Ngân hàng:', 'Bank:'),
(1564, 8, 'Số tài khoản:', 'Số tài khoản:'),
(1565, 18, 'Số tài khoản:', 'หมายเลขบัญชี:'),
(1566, 16, 'Số tài khoản:', 'Account number:'),
(1567, 8, 'Chủ tài khoản:', 'Chủ tài khoản:'),
(1568, 18, 'Chủ tài khoản:', 'ผู้ถือบัญชี:'),
(1569, 16, 'Chủ tài khoản:', 'Account holder:'),
(1570, 8, 'Số tiền cần rút:', 'Số tiền cần rút:'),
(1571, 18, 'Số tiền cần rút:', 'จำนวนเงินที่จะถอน:'),
(1572, 16, 'Số tiền cần rút:', 'Amount to withdraw:'),
(1573, 8, 'DANH SÁCH ĐƠN RÚT TIỀN', 'DANH SÁCH ĐƠN RÚT TIỀN'),
(1574, 18, 'DANH SÁCH ĐƠN RÚT TIỀN', 'รายชื่อใบสมัครถอนเงิน'),
(1575, 16, 'DANH SÁCH ĐƠN RÚT TIỀN', 'LIST OF WITHDRAWAL APPLICATIONS'),
(1576, 16, 'Số dư API không đủ, vui lòng liên hệ admin', 'Số dư API không đủ, vui lòng liên hệ admin'),
(1577, 18, 'Số dư API không đủ, vui lòng liên hệ admin', 'การทำธุรกรรมล้มเหลว โปรดติดต่อผู้ดูแลระบบ'),
(1578, 8, 'Số dư API không đủ, vui lòng liên hệ admin', 'Giao dịch thất bại, vui lòng liên hệ Admin'),
(1582, 16, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1583, 18, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1584, 8, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1585, 8, 'Quét mã QR để thanh toán', 'Quét mã QR để thanh toán'),
(1586, 18, 'Quét mã QR để thanh toán', 'Quét mã QR để thanh toán'),
(1587, 16, 'Quét mã QR để thanh toán', 'Scan QR code to pay'),
(1588, 8, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Vui lòng nhập đúng nội dung chuyển tiền'),
(1589, 18, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Vui lòng nhập đúng nội dung chuyển tiền'),
(1590, 16, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Please enter the correct remittance information'),
(1591, 8, 'Nội dung chuyển tiền', 'Nội dung chuyển tiền'),
(1592, 18, 'Nội dung chuyển tiền', 'Nội dung chuyển tiền'),
(1593, 16, 'Nội dung chuyển tiền', 'Money transfer content'),
(1594, 8, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1595, 18, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1596, 16, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1597, 8, 'Số tiền cần chuyển là', 'Số tiền cần chuyển là'),
(1598, 18, 'Số tiền cần chuyển là', 'Số tiền cần chuyển là'),
(1599, 16, 'Số tiền cần chuyển là', 'Amount to transfer is'),
(1600, 8, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công'),
(1601, 18, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công'),
(1602, 16, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'The system automatically processes the transaction when the money transfer is successful'),
(1603, 8, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.'),
(1604, 18, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.'),
(1605, 16, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Please pay to the above account information for the system to process the invoice automatically.'),
(1606, 8, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1607, 18, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1608, 16, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Use &lt;b&gt;MoMo App&lt;/b&gt; or a camera app that supports QR code to scan the code'),
(1609, 8, 'Số tiền cần thanh toán', 'Số tiền cần thanh toán'),
(1610, 18, 'Số tiền cần thanh toán', 'Số tiền cần thanh toán'),
(1611, 16, 'Số tiền cần thanh toán', 'Amount to be paid'),
(1612, 8, 'Nội dung chuyển khoản', 'Nội dung chuyển khoản'),
(1613, 18, 'Nội dung chuyển khoản', 'Nội dung chuyển khoản'),
(1614, 16, 'Nội dung chuyển khoản', 'Transfer Contents'),
(1615, 8, 'Chủ tài khoản', 'Chủ tài khoản'),
(1616, 18, 'Chủ tài khoản', 'Chủ tài khoản'),
(1617, 16, 'Chủ tài khoản', 'Account holder'),
(1618, 8, 'Số tài khoản', 'Số tài khoản'),
(1619, 18, 'Số tài khoản', 'Số tài khoản'),
(1620, 16, 'Số tài khoản', 'Account number'),
(1621, 8, 'Thanh toán hoá đơn', 'Thanh toán hoá đơn'),
(1622, 18, 'Thanh toán hoá đơn', 'Thanh toán hoá đơn'),
(1623, 16, 'Thanh toán hoá đơn', 'Payment bills'),
(1624, 8, 'LƯỢT QUAY CÒN LẠI:', 'LƯỢT QUAY CÒN LẠI:'),
(1625, 18, 'LƯỢT QUAY CÒN LẠI:', 'LƯỢT QUAY CÒN LẠI:'),
(1627, 8, 'LƯỢT QUAY CÒN LẠI', 'LƯỢT QUAY CÒN LẠI'),
(1628, 18, 'LƯỢT QUAY CÒN LẠI', 'LƯỢT QUAY CÒN LẠI'),
(1629, 16, 'LƯỢT QUAY CÒN LẠI', 'SPIN'),
(1630, 8, 'KIẾM LƯỢT QUAY', 'KIẾM LƯỢT QUAY'),
(1631, 18, 'KIẾM LƯỢT QUAY', 'KIẾM LƯỢT QUAY'),
(1632, 16, 'KIẾM LƯỢT QUAY', 'EARNING SPIN'),
(1633, 8, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng'),
(1634, 18, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng'),
(1635, 16, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Pay for an order with a price greater than or equal to'),
(1636, 8, 'sẽ nhận được thêm 1 lượt quay.', 'sẽ nhận được thêm 1 lượt quay.'),
(1637, 18, 'sẽ nhận được thêm 1 lượt quay.', 'sẽ nhận được thêm 1 lượt quay.'),
(1638, 16, 'sẽ nhận được thêm 1 lượt quay.', 'will get 1 extra spin.'),
(1639, 8, 'QUAY NGAY', 'QUAY NGAY'),
(1640, 18, 'QUAY NGAY', 'QUAY NGAY'),
(1641, 16, 'QUAY NGAY', 'START'),
(1642, 8, 'Thất bại', 'Thất bại'),
(1643, 18, 'Thất bại', 'Thất bại'),
(1644, 16, 'Thất bại', 'Error'),
(1645, 8, 'Cảnh báo', 'Cảnh báo'),
(1646, 18, 'Cảnh báo', 'Cảnh báo'),
(1647, 16, 'Cảnh báo', 'Warning'),
(1648, 8, 'Chọn ngân hàng cần rút', 'Chọn ngân hàng cần rút'),
(1649, 18, 'Chọn ngân hàng cần rút', 'Chọn ngân hàng cần rút'),
(1650, 16, 'Chọn ngân hàng cần rút', 'Select the bank to withdraw'),
(1651, 8, 'Nhập số tài khoản cần rút', 'Nhập số tài khoản cần rút'),
(1652, 18, 'Nhập số tài khoản cần rút', 'Nhập số tài khoản cần rút'),
(1653, 16, 'Nhập số tài khoản cần rút', 'Enter the account number to withdraw'),
(1654, 8, 'Nhập tên chủ tài khoản', 'Nhập tên chủ tài khoản'),
(1655, 18, 'Nhập tên chủ tài khoản', 'Nhập tên chủ tài khoản'),
(1656, 16, 'Nhập tên chủ tài khoản', 'Enter the account holder\\\'s name'),
(1657, 8, 'Nhập số dư hoa hồng cần rút', 'Nhập số dư hoa hồng cần rút'),
(1658, 18, 'Nhập số dư hoa hồng cần rút', 'Nhập số dư hoa hồng cần rút'),
(1659, 16, 'Nhập số dư hoa hồng cần rút', 'Enter the commission balance to withdraw'),
(1660, 8, 'Vui lòng chọn ngân hàng cần rút', 'Vui lòng chọn ngân hàng cần rút'),
(1661, 18, 'Vui lòng chọn ngân hàng cần rút', 'Vui lòng chọn ngân hàng cần rút'),
(1662, 16, 'Vui lòng chọn ngân hàng cần rút', 'Please select the bank to withdraw'),
(1663, 8, 'RÚT NGAY', 'RÚT NGAY'),
(1664, 18, 'RÚT NGAY', 'RÚT NGAY'),
(1665, 16, 'RÚT NGAY', 'WITHDRAW NOW'),
(1666, 8, 'Vui lòng nhập số tài khoản cần rút', 'Vui lòng nhập số tài khoản cần rút'),
(1667, 18, 'Vui lòng nhập số tài khoản cần rút', 'Vui lòng nhập số tài khoản cần rút'),
(1668, 16, 'Vui lòng nhập số tài khoản cần rút', 'Please enter the account number to withdraw'),
(1669, 8, 'Vui lòng nhập tên chủ tài khoản', 'Vui lòng nhập tên chủ tài khoản'),
(1670, 18, 'Vui lòng nhập tên chủ tài khoản', 'Vui lòng nhập tên chủ tài khoản'),
(1671, 16, 'Vui lòng nhập tên chủ tài khoản', 'Please enter the account holder\\\'s name'),
(1672, 8, 'Vui lòng nhập số tiền cần rút', 'Vui lòng nhập số tiền cần rút'),
(1673, 18, 'Vui lòng nhập số tiền cần rút', 'Vui lòng nhập số tiền cần rút'),
(1674, 16, 'Vui lòng nhập số tiền cần rút', 'Please enter the amount to withdraw'),
(1675, 8, 'NẠP TIỀN QUA CRYPTO', 'NẠP TIỀN QUA CRYPTO'),
(1676, 18, 'NẠP TIỀN QUA CRYPTO', 'NẠP TIỀN QUA CRYPTO'),
(1677, 16, 'NẠP TIỀN QUA CRYPTO', 'CRYPTO PAYMENT'),
(1678, 8, 'LỊCH SỬ NẠP CRYPTO', 'LỊCH SỬ NẠP CRYPTO'),
(1679, 18, 'LỊCH SỬ NẠP CRYPTO', 'LỊCH SỬ NẠP CRYPTO'),
(1680, 16, 'LỊCH SỬ NẠP CRYPTO', 'CRYPTO HISTORY'),
(1681, 8, 'Nhập số tiền:', 'Nhập số tiền:'),
(1682, 18, 'Nhập số tiền:', 'Nhập số tiền:'),
(1683, 16, 'Nhập số tiền:', 'Enter amount:'),
(1684, 8, 'Nhập số tiền: (USD)', 'Nhập số tiền: (USD)'),
(1685, 18, 'Nhập số tiền: (USD)', 'Nhập số tiền: (USD)'),
(1686, 16, 'Nhập số tiền: (USD)', 'Enter amount: (USD)'),
(1687, 8, 'thực hiện nạp', 'thực hiện nạp'),
(1688, 18, 'thực hiện nạp', 'thực hiện nạp'),
(1689, 16, 'thực hiện nạp', 'recharge');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `ctv` int(11) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `login_attempts` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `time_session` int(11) DEFAULT '0',
  `time_request` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money` float NOT NULL DEFAULT '0',
  `total_money` float NOT NULL DEFAULT '0',
  `rankings` int(11) NOT NULL DEFAULT '0',
  `icon_ranking` text COLLATE utf8_unicode_ci,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `device` text COLLATE utf8_unicode_ci,
  `avatar` text COLLATE utf8_unicode_ci,
  `status_2fa` int(11) NOT NULL DEFAULT '0',
  `SecretKey_2fa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chietkhau` float NOT NULL DEFAULT '0',
  `spin` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `ref_click` int(11) NOT NULL DEFAULT '0',
  `ref_money` float NOT NULL DEFAULT '0',
  `ref_total_money` float NOT NULL DEFAULT '0',
  `ref_amount` float NOT NULL DEFAULT '0',
  `ref_ck` float NOT NULL DEFAULT '0',
  `change_password` int(11) NOT NULL DEFAULT '0',
  `token_forgot_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_forgot_password` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(1, 'camking', '$2y$10$mJKUnV1cLbfY0K0UA0BCleZMVABITspEAAm3XNWyLWMiZsfnyYFdq', 'toisekhongcamchiu@gmail.com', NULL, NULL, 1, 0, 0, 0, 0, '2023-08-14 12:17:22', '2023-08-14 12:17:22', 1692075543, 1692008449, '2402:800:61b0:696c:ad68:c70f:e640:1710', '2d3c50f65fecc2fe56b42e6d5f955367', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, 0, 'ZCAXFTJD4MY7JWIB', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(2, 'Tiendung6288888', '$2y$10$8Q7nutiKWYGoDpqK4PjwCeRNjPMDFSpiAFgAnJseaDfBzlUqxNeSu', 'tiendung.123@gmail.com', NULL, NULL, 0, 0, 0, 0, 0, '2023-08-14 19:29:20', '2023-08-14 19:29:20', 1692016160, 0, '27.73.99.249', 'f1cd851ce4f0ecdbe96b3945adef5f26', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, 0, 'PZVDBL6DKYEPQOO5', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_ref`
--

CREATE TABLE `withdraw_ref` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned_ips`
--
ALTER TABLE `banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_service`
--
ALTER TABLE `category_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connect_api`
--
ALTER TABLE `connect_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `coupon_used`
--
ALTER TABLE `coupon_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Indexes for table `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sending`
--
ALTER TABLE `email_sending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giftbox`
--
ALTER TABLE `giftbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `ip_white`
--
ALTER TABLE `ip_white`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_ref`
--
ALTER TABLE `log_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nowpayments`
--
ALTER TABLE `nowpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `order_autofb`
--
ALTER TABLE `order_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_service`
--
ALTER TABLE `order_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_history`
--
ALTER TABLE `otp_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_paypal`
--
ALTER TABLE `payment_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_pm`
--
ALTER TABLE `payment_pm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_squadco`
--
ALTER TABLE `payment_squadco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_autofb`
--
ALTER TABLE `rate_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_email`
--
ALTER TABLE `send_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server2_autobank`
--
ALTER TABLE `server2_autobank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_order`
--
ALTER TABLE `service_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `service_otp`
--
ALTER TABLE `service_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `spin_history`
--
ALTER TABLE `spin_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_option`
--
ALTER TABLE `spin_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_fanpage`
--
ALTER TABLE `store_fanpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_email`
--
ALTER TABLE `task_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `BillCode` (`BillCode`);

--
-- Indexes for table `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112247;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned_ips`
--
ALTER TABLE `banned_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_service`
--
ALTER TABLE `category_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `connect_api`
--
ALTER TABLE `connect_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_used`
--
ALTER TABLE `coupon_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sending`
--
ALTER TABLE `email_sending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giftbox`
--
ALTER TABLE `giftbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_white`
--
ALTER TABLE `ip_white`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `log_ref`
--
ALTER TABLE `log_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nowpayments`
--
ALTER TABLE `nowpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_autofb`
--
ALTER TABLE `order_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_service`
--
ALTER TABLE `order_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_history`
--
ALTER TABLE `otp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_paypal`
--
ALTER TABLE `payment_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_pm`
--
ALTER TABLE `payment_pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_squadco`
--
ALTER TABLE `payment_squadco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_autofb`
--
ALTER TABLE `rate_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `send_email`
--
ALTER TABLE `send_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server2_autobank`
--
ALTER TABLE `server2_autobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_order`
--
ALTER TABLE `service_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_otp`
--
ALTER TABLE `service_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `spin_history`
--
ALTER TABLE `spin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_option`
--
ALTER TABLE `spin_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `store_fanpage`
--
ALTER TABLE `store_fanpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_email`
--
ALTER TABLE `task_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1690;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
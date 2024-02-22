-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 02:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `childerns`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `who_we_are` text NOT NULL,
  `what_we_do` text NOT NULL,
  `about_description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `image`, `who_we_are`, `what_we_do`, `about_description`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Childerns Medha', '1706614197.jpg', '<div class=\"content\">\r\n						<p> We have started this Childrens Medha Academy aiming to support the parents in mentoring their children enhance children skills and abilities mainly who are in age group between 10 to 15 years.&nbsp; We make them ready to face multiple competetive exams at national and state level.&nbsp; Our course curriculum helps children definitely to secure good rank \r\n						</p>\r\n						<p>\r\n						in competative exams and Perticularly who are aiming for strong performnace and secure good ranks at national and state level competetive exams like SAINIK, RMS, RIMS and NAVODAYA etc in India</p>\r\n					</div>', '<div class=\"content\">\r\n						<p> We have started this Childrens Medha Academy aiming to support the parents in mentoring their children enhance children skills and abilities mainly who are in age group between 10 to 15 years.&nbsp; We make them ready to face multiple competetive exams at national and state level.&nbsp; Our course curriculum helps children definitely to secure good rank \r\n						</p>\r\n						<p>\r\n						in competative exams and Perticularly who are aiming for strong performnace and secure good ranks at national and state level competetive exams like SAINIK, RMS, RIMS and NAVODAYA etc in India</p>\r\n					</div>', '<p style=\"display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; color: rgb(33, 37, 41); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 15px; letter-spacing: 0.3px; word-spacing: 2px;\">We established the Children\'s Medha Academy with the aim of aiding parents in guiding their children to enhance their competitive exam skills and abilities, specifically targeting those aged between 10 to 15 years. Our primary focus is on preparing them for excellence in various competitive exams like SAINIK, RMS, RIMS, and NAVODAYA at both national and state levels.</p><p style=\"margin-bottom: 1rem; display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; color: rgb(33, 37, 41); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 15px; letter-spacing: 0.3px; word-spacing: 2px;\">We have designed course curriculum to ensure strong performance and commendable ranks in competitive exams.</p><h5 class=\"mb-4\" style=\"font-size: 1.25rem; color: rgb(33, 37, 41); font-family: &quot;Noto Sans&quot;, sans-serif; letter-spacing: 0.3px; word-spacing: 2px;\">To achieve these objectives, we are committed to below fundamental principles:</h5><ul class=\" list-unstyled\" style=\"padding: 20px; background: rgb(222, 222, 222); border-left: 2px solid rgb(4, 149, 255); color: rgb(33, 37, 41); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 15px; letter-spacing: 0.3px; word-spacing: 2px;\"><li style=\"padding-left: 10px; margin-bottom: 8px;\">Strengthening fundamental concepts to establish a robust foundation.</li><li style=\"padding-left: 10px; margin-bottom: 8px;\">Encouraging regular practice to inculcate a disciplined approach to learning</li><li style=\"padding-left: 10px; margin-bottom: 8px;\">Effective monitoring techniques to track and enhance the progress</li></ul><div style=\"color: rgb(33, 37, 41); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 15px; letter-spacing: 0.3px; word-spacing: 2px;\">Our available courses are undoubtedly tailored to broaden the&nbsp;<span style=\"font-weight: bolder;\">long-term possibilities&nbsp;</span>of every child and nurture a&nbsp;<span style=\"font-weight: bolder;\">competitive spirit</span>.</div>', '2024-01-30 05:59:57', '2024-02-20 12:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` text NOT NULL,
  `banner_description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_image`, `banner_title`, `banner_description`, `status`, `created_at`, `updated_at`) VALUES
(1, '1706607721.jpg', 'Your Child\'s Future is Our Priority', 'Childrens Medha Academy is top-notch online educational platform designed for children to excel in various competitive exams such as SAINIK, RMS, RIMS, and NAVODAYA, both at the state and national levels in India.', 1, '2023-04-20 23:39:18', '2024-02-18 21:36:32'),
(2, '1706607988.jpg', 'Your Child\'s Future is Our Priority', 'Childrens Medha Academy  is top-notch online educational platform designed for children to excel in various competitive exams such as SAINIK, RMS, RIMS, and NAVODAYA, both at the state and national levels in India.', 1, '2024-01-30 04:16:28', '2024-02-18 21:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `booking_billing_address`
--

CREATE TABLE `booking_billing_address` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `state` varchar(256) DEFAULT NULL,
  `address` text NOT NULL,
  `city` varchar(256) NOT NULL,
  `pincode` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_billing_address`
--

INSERT INTO `booking_billing_address` (`id`, `booking_id`, `first_name`, `last_name`, `email`, `phone`, `state`, `address`, `city`, `pincode`) VALUES
(1, 17, 'Pandyan', 'G', 'gpandiyan.tech@gmail.com', '76346543534', NULL, 'Chennai', '32323', '322323'),
(2, 18, 'Pandyan', 'G', 'gpandiyan.tech@gmail.com', '76346543534', NULL, 'Chennai', '32323', '322323'),
(3, 19, 'Pandyan', 'G', 'gpandiyan.tech@gmail.com', '76346543534', NULL, 'Chennai', '32323', '322323'),
(4, 20, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '32332', NULL, '233232', '23323', '233223'),
(5, 21, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '32332', NULL, '233232', '23323', '233223'),
(6, 22, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '32332', NULL, '233232', '23323', '233223'),
(7, 23, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '32332', NULL, '233232', '23323', '233223'),
(8, 24, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '32332', NULL, '233232', '23323', '233223'),
(9, 25, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '32332', NULL, '233232', '23323', '233223'),
(10, 26, 'pandiyan', 'G', '36255632@jhsjhs.com', '376743', NULL, 'hgdhgsdghsf', '232332', '323223'),
(11, 27, 'pandiyan', 'G', '36255632@jhsjhs.com', '376743', NULL, 'hgdhgsdghsf', '232332', '323223'),
(12, 28, 'pandiyan', 'G', '36255632@jhsjhs.com', '376743', NULL, 'hgdhgsdghsf', '232332', '323223'),
(13, 29, 'pandiyan', 'G', '36255632@jhsjhs.com', '376743', NULL, 'hgdhgsdghsf', '232332', '323223'),
(14, 30, 'pandiyan', 'G', '36255632@jhsjhs.com', '376743', NULL, 'hgdhgsdghsf', '232332', '323223'),
(15, 31, 'pandiyan', 'G', '36255632@jhsjhs.com', '376743', NULL, 'hgdhgsdghsf', '232332', '323223'),
(16, 32, 'pandiyan', 'G', '36255632@jhsjhs.com', '376743', NULL, 'hgdhgsdghsf', '232332', '323223'),
(17, 33, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '23676326', NULL, 'Test', 'Chennai', '322332'),
(18, 34, 'ewew', 'eewew', 'ewwewe3JHFSSHG@cojdjd.com', '332332', NULL, '23323', '323232', '323232'),
(19, 35, 'EWWEWE', 'EW', 'hgdshg@sghf.com', '3746734', NULL, 'sddds', 'dsdds', 'dsd'),
(20, 36, 'EWWEWE', 'EW', 'hgdshg@sghf.com', '3746734', NULL, 'sddds', 'dsdds', 'dsd'),
(21, 37, 'sdjdsjh', 'jhhjsdjhs', 'jhdjh@jhsdjd.com', '344334', NULL, 'dsjsjd', '2332', '43434'),
(22, 38, 'sdjdsjh', 'jhhjsdjhs', 'jhdjh@jhsdjd.com', '344334', NULL, 'dsjsjd', '2332', '43434'),
(23, 39, 'sdjdsjh', 'jhhjsdjhs', 'jhdjh@jhsdjd.com', '344334', NULL, 'dsjsjd', '2332', '43434'),
(24, 40, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '9066418026', '7', 'Tedt', 'Chennai', '457'),
(25, 41, 'Pandiyan', 'G', 'gpandiyan.tech@gmail.com', '9066418026', '30', 'Test', 'Chennai', '3646534'),
(26, 42, 'Pandyan', 'G', 'gpandiyan.tech@gmail.com', '76346543534', '9', 'fasdf', 'fasdfa', '423'),
(27, 43, 'Pandyan', 'G', 'gpandiyan.tech@gmail.com', '76346543534', '2', 'csdf', 'fdasd', 'fasd'),
(28, 44, 'Pandyan', 'G', 'gpandiyan.tech@gmail.com', '76346543534', '4', 'sadas', 'fasd', 'fasd');

-- --------------------------------------------------------

--
-- Table structure for table `booking_data`
--

CREATE TABLE `booking_data` (
  `id` int(11) NOT NULL,
  `booking_no` varchar(256) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `booking_status` int(11) NOT NULL,
  `payment_status` int(11) DEFAULT 0,
  `sub_total` double NOT NULL,
  `total_price` double NOT NULL,
  `currency` varchar(50) NOT NULL,
  `payment_type` int(11) NOT NULL DEFAULT 0,
  `payment_response` longtext DEFAULT NULL,
  `transcation_id` varchar(256) DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_data`
--

INSERT INTO `booking_data` (`id`, `booking_no`, `user_id`, `booking_status`, `payment_status`, `sub_total`, `total_price`, `currency`, `payment_type`, `payment_response`, `transcation_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:46:29', '2024-02-12 03:46:29'),
(2, NULL, 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:47:03', '2024-02-12 03:47:03'),
(3, NULL, 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:47:10', '2024-02-12 03:47:10'),
(4, '0004', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:47:29', '2024-02-11 22:17:29'),
(5, 'CM0005', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:47:51', '2024-02-11 22:17:51'),
(6, 'CM0006', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:49:07', '2024-02-11 22:19:07'),
(7, 'CM0007', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:49:53', '2024-02-11 22:19:53'),
(8, 'CM0008', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:50:51', '2024-02-11 22:20:51'),
(9, 'CM0009', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:50:59', '2024-02-11 22:20:59'),
(10, 'CM0010', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:51:16', '2024-02-11 22:21:16'),
(11, 'CM0011', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:51:26', '2024-02-11 22:21:26'),
(12, 'CM0012', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:52:16', '2024-02-11 22:22:16'),
(13, 'CM0013', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:52:52', '2024-02-11 22:22:52'),
(14, 'CM0014', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:54:12', '2024-02-11 22:24:12'),
(15, 'CM0015', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:55:15', '2024-02-11 22:25:15'),
(16, 'CM0016', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:55:27', '2024-02-11 22:25:27'),
(17, 'CM0017', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 03:55:42', '2024-02-11 22:25:42'),
(18, 'CM0018', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 04:01:53', '2024-02-11 22:31:53'),
(19, 'CM0019', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 04:02:32', '2024-02-11 22:32:32'),
(20, 'CM0020', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 09:48:24', '2024-02-12 04:18:24'),
(21, 'CM0021', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 09:48:25', '2024-02-12 04:18:25'),
(22, 'CM0022', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 09:48:49', '2024-02-12 04:18:49'),
(23, 'CM0023', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 09:49:11', '2024-02-12 04:19:11'),
(24, 'CM0024', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 09:49:45', '2024-02-12 04:19:45'),
(25, 'CM0025', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 09:51:00', '2024-02-12 04:21:00'),
(26, 'CM0026', 2, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:23:33', '2024-02-12 06:53:33'),
(27, 'CM0027', 2, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:23:50', '2024-02-12 06:53:50'),
(28, 'CM0028', 2, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:24:19', '2024-02-12 06:54:19'),
(29, 'CM0029', 2, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:24:35', '2024-02-12 06:54:35'),
(30, 'CM0030', 2, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:24:46', '2024-02-12 06:54:46'),
(31, 'CM0031', 2, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:25:06', '2024-02-12 06:55:06'),
(32, 'CM0032', 2, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:25:17', '2024-02-12 06:55:17'),
(33, 'CM0033', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:27:02', '2024-02-12 06:57:02'),
(34, 'CM0034', 3, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:32:12', '2024-02-12 07:02:12'),
(35, 'CM0035', 4, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:37:51', '2024-02-12 07:07:51'),
(36, 'CM0036', 4, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:41:49', '2024-02-12 07:11:49'),
(37, 'CM0037', 5, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:54:47', '2024-02-12 07:24:47'),
(38, 'CM0038', 5, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:54:53', '2024-02-12 07:24:53'),
(39, 'CM0039', 5, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '::1', '2024-02-12 12:55:03', '2024-02-12 07:25:03'),
(40, 'CM0040', 1, 0, 0, 30000, 30000, 'INR', 0, NULL, NULL, '152.58.227.92', '2024-02-18 21:40:55', '2024-02-19 02:40:55'),
(41, 'CM0041', 1, 1, 0, 30000, 30000, 'INR', 2, 'CASH', 'CM0041', '182.76.247.76', '2024-02-19 03:18:05', '2024-02-19 08:18:10'),
(42, 'CM0042', 1, 1, 0, 35000, 35000, 'INR', 2, 'CASH', 'CM0042', '49.47.241.195', '2024-02-19 11:29:58', '2024-02-19 16:30:27'),
(43, 'CM0043', 1, 0, 0, 44000, 44000, 'INR', 0, NULL, NULL, '49.47.241.195', '2024-02-19 12:13:36', '2024-02-19 17:13:36'),
(44, 'CM0044', 1, 0, 0, 44000, 44000, 'INR', 0, NULL, NULL, '49.47.241.195', '2024-02-19 12:14:13', '2024-02-19 17:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `booking_product`
--

CREATE TABLE `booking_product` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `product_price` int(11) NOT NULL,
  `validity_days` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_product`
--

INSERT INTO `booking_product` (`id`, `booking_id`, `product_type`, `product_id`, `product_name`, `product_price`, `validity_days`) VALUES
(1, 24, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(2, 25, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(3, 26, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(4, 27, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(5, 28, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(6, 29, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(7, 30, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(8, 31, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(9, 32, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(10, 33, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(11, 34, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(12, 35, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(13, 36, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(14, 37, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(15, 38, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(16, 39, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(17, 40, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(18, 41, 1, 2, '6th Grade(SAINIK/RMS/RIMS)', 30000, 0),
(19, 42, 1, 3, '9th Grade(SAINIK/RMS/RIMS)', 35000, 0),
(20, 43, 1, 4, 'Academic Skills', 9000, 0),
(21, 43, 1, 3, '9th Grade(SAINIK/RMS/RIMS)', 35000, 0),
(22, 44, 1, 4, 'Academic Skills', 9000, 0),
(23, 44, 1, 3, '9th Grade(SAINIK/RMS/RIMS)', 35000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `cart_type` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `cart_type`, `product_id`, `created_at`, `updated_at`) VALUES
(4, '17076255209552649749', 1, 2, '2024-02-16 11:57:47', '2024-02-16 16:57:47'),
(5, '17082670999512788115', 1, 2, '2024-02-18 14:39:35', '2024-02-18 19:39:35'),
(6, '17082923309589680655', 1, 2, '2024-02-18 21:39:47', '2024-02-19 02:39:47'),
(7, '17083125349981447999', 1, 2, '2024-02-19 03:17:35', '2024-02-19 08:17:35'),
(8, '17083126909061890997', 1, 2, '2024-02-19 03:45:17', '2024-02-19 08:45:17'),
(10, '17083163209103643526', 1, 3, '2024-02-19 04:49:06', '2024-02-19 09:49:06'),
(12, '17083417289220118830', 1, 2, '2024-02-19 11:22:23', '2024-02-19 16:22:23'),
(13, '17083417289220118830', 1, 3, '2024-02-19 11:22:37', '2024-02-19 16:22:37'),
(14, '17083417289220118830', 1, 4, '2024-02-19 11:22:41', '2024-02-19 16:22:41'),
(15, '17083422279834186975', 1, 4, '2024-02-19 11:32:48', '2024-02-19 16:32:48'),
(16, '17083422279834186975', 1, 3, '2024-02-19 11:33:11', '2024-02-19 16:33:11'),
(17, '17083516299900953752', 1, 2, '2024-02-19 14:09:42', '2024-02-19 19:09:42'),
(18, '17084107519417315997', 1, 2, '2024-02-20 06:35:34', '2024-02-20 11:35:34'),
(19, '17084030559389765728', 1, 2, '2024-02-20 06:37:59', '2024-02-20 11:37:59'),
(20, '17084032779831489853', 1, 2, '2024-02-20 08:20:40', '2024-02-20 13:20:40'),
(21, '17084195789793682004', 1, 4, '2024-02-20 09:18:00', '2024-02-20 03:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `image` varchar(225) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` longtext DEFAULT NULL,
  `category_full_description` longtext DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `old_price` double DEFAULT NULL,
  `is_mutiple` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) DEFAULT '1',
  `validity_days` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `category_name`, `category_description`, `category_full_description`, `category_slug`, `price`, `old_price`, `is_mutiple`, `status`, `validity_days`, `updated_at`, `created_at`) VALUES
(2, '1708314182.jpg', '6th Grade(SAINIK/RMS/RIMS)', 'Solutions will be provided for all practice tests/Grand tests\r\nFinal grand tests solutions will be discussed over live sessions', '<p><span style=\"font-size: 14px;\">Solutions will be provided for all practice tests/Grand tests</span></p><p><span style=\"font-size: 14px;\">Final grand tests solutions will be discussed over live sessions</span></p><div><br></div>', '6th-gradesainikrmsrims', 30000, 45000, 1, '1', 0, '2024-02-19 08:43:02', '2024-02-03 21:43:34'),
(3, '1707016743.png', '9th Grade(SAINIK/RMS/RIMS)', NULL, NULL, '9th-gradesainikrmsrims', 35000, 50000, 1, '1', 0, '2024-02-16 13:00:25', '2024-02-03 21:49:03'),
(4, '1707016776.png', 'Academic Skills', NULL, NULL, 'academic-skills', 9000, 15000, 1, '1', 0, '2024-02-18 14:10:32', '2024-02-03 21:49:36'),
(5, '1707016790.png', 'Bank POs/RRB/SSC/SI etc', NULL, NULL, 'bank-posrrbsscsi-etc', NULL, NULL, 0, '1', 0, '2024-02-19 14:25:20', '2024-02-03 21:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `competitite_exams`
--

CREATE TABLE `competitite_exams` (
  `id` int(11) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `short_description` text DEFAULT NULL,
  `image_name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitite_exams`
--

INSERT INTO `competitite_exams` (`id`, `exam_name`, `description`, `short_description`, `image_name`, `slug`, `status`, `updated_at`, `created_at`) VALUES
(1, 'SAINIK (AISSEE)', '<p></p><p>AISSEE Admit Card 2024</p><p>The AISSEE admit card 2024 for the entrance exam is made available on 17 January 2024 by the NTA on the official website, https://aissee.ntaonline.in/, the Sainik school admit card 2024 will be accessible.&nbsp;</p><p>The Sainik school admission application form number and password must be entered by students in order to download the AISSE Hall Ticket 2024.</p><table class=\"table\" style=\"box-sizing: inherit; border-width: 1px 0px 0px 1px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial; border-spacing: 0px; margin: 0px auto 20px; width: 702.396px; table-layout: auto; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Exam Name&nbsp;</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">All India Sainik School Entrance Exam</font></span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Organization&nbsp;</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">National Test Agency (NTA)</font></span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Admit Card Date</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">17 January 2024</font></span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Admit Card Link</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><a href=\"https://aissee.ntaonline.in/frontend/web/admitcard/index\" data-wpel-link=\"external\" target=\"_blank\" rel=\"nofollow external noopener noreferrer\" style=\"box-sizing: inherit; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Check Here</font></a></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\"><span style=\"box-sizing: inherit;\"><a href=\"https://drntruhs.in/aissee-admit-card\" data-wpel-link=\"internal\" style=\"box-sizing: inherit; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s;\">E</a></span>xam Date</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">28 January 2024</font></span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Official Website</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><a href=\"https://drntruhs.in/aissee-admit-card\" data-wpel-link=\"internal\" style=\"box-sizing: inherit; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">https://exams.nta.ac.in/AISSEE</font></a></td></tr></tbody></table>Candidates who meet the requirements for eligibility will receive a provisional Sainik School Call letter. The AISSEE 2024 Hall Ticket is available about three weeks before the exam date on the NTA website, <a href=\"https://aissee.ntaonline.in/.\" target=\"_blank\">aissee.ntaonline.in</a><br><p></p><p>IDBI Executive Admit Card</p><p>How to download the Sainik School Admit Card 2024?</p><p>Students can use the instructions listed below to download their Sainik Schools Entrance Exam 2024, you have to go through the step-by-step instructions below.</p><p>Visit at https://aissee.ntaonline.in/, the official website of Sainik School Entrance Exam.</p><p>Locate ‘AISSEE Admit Card 2024’ from the homepage link.</p><p>This will open a new tab with a login window.</p><p>The application form number and password, which are generated during registration, must be entered by students.</p><p>Carefully review the mentioned details on the AISSEE 2024 admit card.</p><p>To download the Sainik School admit card 2024, click the “Submit” tab.</p><p>It is recommended that students make two or three photocopies of their Sainik School exam hall ticket 2024 and store them securely until the admissions process is finished.</p><p>Details mentioned on the Sainik School Entrance Admit Card 2024</p><p>These are the details that the candidate needs to check on the Aissee Admit Card 2024 at the time of downloading:</p><p>Student Name</p><p>Guardian Name</p><p>Name Of Examination</p><p>Scanned Photograph with signature</p><p>Signature of Official Authority</p><p>Date of Birth</p><p>Examination Date and Time</p><p>Gender</p><p>Roll Number</p><p>Registration ID</p><p>Examination Venue along with the address</p><p>Exam Center Code</p><p>Important Instructions About Exam</p><p>AISSEE 2024 Exam Date</p><p>The updated Sainik School Admission 2024 timetable has been made public on the National Testing Agency’s official website.&nbsp;</p><p>The All India Sainik School Entrance Exam 2024 Date for Classes 6 and 9 will take place on January 28, 2024, according to the updated schedule. The AISSEE Exam’s date was changed by the NTA since it conflicted with a significant exam.&nbsp;</p><p>E-counseling will be used to select students for admission to these schools based on their AISSEE 2024 ranking and their medical fitness as assessed by qualified medical authorities.&nbsp;</p><p>AISSEE 2024 Exam Pattern</p><p>Every student in the 6th and 9th is anxious about their exam syllabus. For the Sainik School Entrance Exam, however, students only need to study for their previous class syllabus.&nbsp; Get exam details from below.</p><p>AISSEE 2024 Exam Day Guidelines</p><p>Exam day guidelines for Sainik School Entrance Exam 2024 are as follows.</p><p>Before taking the AISSEE 2024 exam, the candidate needs to have their admit card.</p><p>Please take note that the Sainik School Admit Card will not be delivered by mail to the candidate.</p><p>There is no way that the exam centres will issue duplicate AISSEE 2024 admit cards.</p><p>It is forbidden for the candidate to alter or destroy the Admit Card or any of the entries recorded on it.</p><p>No candidate who has an incomplete application (including an unclear photograph or without a signed upload) or who does not meet the requirements to take the test will receive an admit card.</p><p>Go to Drntruhs Homepage To Get Relevant Content.<br></p><h3 style=\"box-sizing: inherit; margin: 24px 0px 16px; padding: 0px; border: 0px; font-family: Arial, sans-serif; font-size: 20px; line-height: 1.2em; color: var(--contrast-2); text-align: justify;\"><span style=\"box-sizing: inherit; font-weight: 700;\">AISSEE 2024 Exam Pattern</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Every student in the 6th and 9th is anxious about their exam syllabus. For the Sainik School Entrance Exam, however, students only need to study for their previous class syllabus.&nbsp; Get exam details from below.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Class 6:</span></p><div class=\"table-responsive wprt_style_display\" style=\"box-sizing: inherit; min-height: 0.01%; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px;\"><table class=\"table\" style=\"box-sizing: inherit; border-width: 1px 0px 0px 1px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial; border-spacing: 0px; margin: 0px auto 20px; width: 702.396px; table-layout: auto; padding: 0px; max-width: 100%;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">S.No.</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Subject</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Number of Questions and Marks</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Total Marks</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">1</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Mathematics</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50 questions of 3 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">150</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">2</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">G.K.</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">3</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Language</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">4</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Intelligence</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr></tbody></table></div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Class 9:</span></p><div class=\"table-responsive wprt_style_display\" style=\"box-sizing: inherit; min-height: 0.01%; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px;\"><table class=\"table\" style=\"box-sizing: inherit; border-width: 1px 0px 0px 1px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial; border-spacing: 0px; margin: 0px auto 20px; width: 702.396px; table-layout: auto; padding: 0px; max-width: 100%;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">S.No.</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Subject</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Number of Questions and Marks</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Total Marks</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">1</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Mathematics</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50 questions of 4 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">200</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">2</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">English</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">3</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Intelligence</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">4</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">General Science</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">5</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Social Studies</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr></tbody></table></div><h3 style=\"box-sizing: inherit; margin: 24px 0px 16px; padding: 0px; border: 0px; font-family: Arial, sans-serif; font-size: 20px; line-height: 1.2em; color: var(--contrast-2); text-align: justify;\"><span style=\"box-sizing: inherit; font-weight: 700;\">AISSEE 2024 Exam Day Guidelines</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Exam day guidelines for Sainik School Entrance Exam 2024 are as follows.</span></p><ul style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 3em; padding: 0px; border: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px; text-align: justify;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">Before taking the AISSEE 2024 exam, the candidate needs to have their admit card.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">Please take note that the Sainik School Admit Card will not be delivered by mail to the candidate.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">There is no way that the exam centres will issue duplicate AISSEE 2024 admit cards.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">It is forbidden for the candidate to alter or destroy the Admit Card or any of the entries recorded on it.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">No candidate who has an incomplete application (including an unclear photograph or without a signed upload) or who does not meet the requirements to take the test will receive an admit card.</span></li></ul>', 'The AISSEE Admit Card 2024 is anticipated to be released by the National Test Agency (NTA) on 17 January 2024. Once it is made public officially, students will be able to download the same using the Registration Number and Password.', '1708056277.png', 'sainik-aissee', 1, '2024-02-16 09:06:39', '2024-02-16 09:04:37');
INSERT INTO `competitite_exams` (`id`, `exam_name`, `description`, `short_description`, `image_name`, `slug`, `status`, `updated_at`, `created_at`) VALUES
(2, 'SAINIK (AISSEE) - 2', '<p></p><p>AISSEE Admit Card 2024</p><p>The AISSEE admit card 2024 for the entrance exam is made available on 17 January 2024 by the NTA on the official website, https://aissee.ntaonline.in/, the Sainik school admit card 2024 will be accessible.&nbsp;</p><p>The Sainik school admission application form number and password must be entered by students in order to download the AISSE Hall Ticket 2024.</p><table class=\"table\" style=\"box-sizing: inherit; border-width: 1px 0px 0px 1px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial; border-spacing: 0px; margin: 0px auto 20px; width: 702.396px; table-layout: auto; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Exam Name&nbsp;</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">All India Sainik School Entrance Exam</font></span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Organization&nbsp;</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">National Test Agency (NTA)</font></span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Admit Card Date</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">17 January 2024</font></span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Admit Card Link</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><a href=\"https://aissee.ntaonline.in/frontend/web/admitcard/index\" data-wpel-link=\"external\" target=\"_blank\" rel=\"nofollow external noopener noreferrer\" style=\"box-sizing: inherit; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Check Here</font></a></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\"><span style=\"box-sizing: inherit;\"><a href=\"https://drntruhs.in/aissee-admit-card\" data-wpel-link=\"internal\" style=\"box-sizing: inherit; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s;\">E</a></span>xam Date</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">28 January 2024</font></span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 216.062px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">Official Website</font></span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; width: 485.667px; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><a href=\"https://drntruhs.in/aissee-admit-card\" data-wpel-link=\"internal\" style=\"box-sizing: inherit; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; font-size: 14px;\"><font color=\"#4b4b5a\" face=\"Nunito Sans, sans-serif\">https://exams.nta.ac.in/AISSEE</font></a></td></tr></tbody></table>Candidates who meet the requirements for eligibility will receive a provisional Sainik School Call letter. The AISSEE 2024 Hall Ticket is available about three weeks before the exam date on the NTA website, <a href=\"https://aissee.ntaonline.in/.\" target=\"_blank\">aissee.ntaonline.in</a><br><p></p><p>IDBI Executive Admit Card</p><p>How to download the Sainik School Admit Card 2024?</p><p>Students can use the instructions listed below to download their Sainik Schools Entrance Exam 2024, you have to go through the step-by-step instructions below.</p><p>Visit at https://aissee.ntaonline.in/, the official website of Sainik School Entrance Exam.</p><p>Locate ‘AISSEE Admit Card 2024’ from the homepage link.</p><p>This will open a new tab with a login window.</p><p>The application form number and password, which are generated during registration, must be entered by students.</p><p>Carefully review the mentioned details on the AISSEE 2024 admit card.</p><p>To download the Sainik School admit card 2024, click the “Submit” tab.</p><p>It is recommended that students make two or three photocopies of their Sainik School exam hall ticket 2024 and store them securely until the admissions process is finished.</p><p>Details mentioned on the Sainik School Entrance Admit Card 2024</p><p>These are the details that the candidate needs to check on the Aissee Admit Card 2024 at the time of downloading:</p><p>Student Name</p><p>Guardian Name</p><p>Name Of Examination</p><p>Scanned Photograph with signature</p><p>Signature of Official Authority</p><p>Date of Birth</p><p>Examination Date and Time</p><p>Gender</p><p>Roll Number</p><p>Registration ID</p><p>Examination Venue along with the address</p><p>Exam Center Code</p><p>Important Instructions About Exam</p><p>AISSEE 2024 Exam Date</p><p>The updated Sainik School Admission 2024 timetable has been made public on the National Testing Agency’s official website.&nbsp;</p><p>The All India Sainik School Entrance Exam 2024 Date for Classes 6 and 9 will take place on January 28, 2024, according to the updated schedule. The AISSEE Exam’s date was changed by the NTA since it conflicted with a significant exam.&nbsp;</p><p>E-counseling will be used to select students for admission to these schools based on their AISSEE 2024 ranking and their medical fitness as assessed by qualified medical authorities.&nbsp;</p><p>AISSEE 2024 Exam Pattern</p><p>Every student in the 6th and 9th is anxious about their exam syllabus. For the Sainik School Entrance Exam, however, students only need to study for their previous class syllabus.&nbsp; Get exam details from below.</p><p>AISSEE 2024 Exam Day Guidelines</p><p>Exam day guidelines for Sainik School Entrance Exam 2024 are as follows.</p><p>Before taking the AISSEE 2024 exam, the candidate needs to have their admit card.</p><p>Please take note that the Sainik School Admit Card will not be delivered by mail to the candidate.</p><p>There is no way that the exam centres will issue duplicate AISSEE 2024 admit cards.</p><p>It is forbidden for the candidate to alter or destroy the Admit Card or any of the entries recorded on it.</p><p>No candidate who has an incomplete application (including an unclear photograph or without a signed upload) or who does not meet the requirements to take the test will receive an admit card.</p><p>Go to Drntruhs Homepage To Get Relevant Content.<br></p><h3 style=\"box-sizing: inherit; margin: 24px 0px 16px; padding: 0px; border: 0px; font-family: Arial, sans-serif; font-size: 20px; line-height: 1.2em; color: var(--contrast-2); text-align: justify;\"><span style=\"box-sizing: inherit; font-weight: 700;\">AISSEE 2024 Exam Pattern</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Every student in the 6th and 9th is anxious about their exam syllabus. For the Sainik School Entrance Exam, however, students only need to study for their previous class syllabus.&nbsp; Get exam details from below.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Class 6:</span></p><div class=\"table-responsive wprt_style_display\" style=\"box-sizing: inherit; min-height: 0.01%; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px;\"><table class=\"table\" style=\"box-sizing: inherit; border-width: 1px 0px 0px 1px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial; border-spacing: 0px; margin: 0px auto 20px; width: 702.396px; table-layout: auto; padding: 0px; max-width: 100%;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">S.No.</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Subject</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Number of Questions and Marks</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Total Marks</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">1</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Mathematics</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50 questions of 3 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">150</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">2</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">G.K.</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">3</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Language</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">4</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Intelligence</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr></tbody></table></div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Class 9:</span></p><div class=\"table-responsive wprt_style_display\" style=\"box-sizing: inherit; min-height: 0.01%; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px;\"><table class=\"table\" style=\"box-sizing: inherit; border-width: 1px 0px 0px 1px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial; border-spacing: 0px; margin: 0px auto 20px; width: 702.396px; table-layout: auto; padding: 0px; max-width: 100%;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">S.No.</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Subject</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Number of Questions and Marks</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Total Marks</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">1</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Mathematics</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50 questions of 4 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">200</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">2</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">English</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">3</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Intelligence</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">4</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">General Science</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr><tr style=\"box-sizing: inherit; background-color: rgb(249, 249, 249) !important;\"><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">5</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">Social Studies</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">25 questions of 2 marks each</span></td><td style=\"box-sizing: inherit; vertical-align: middle; text-align: center; border-right: 1px solid rgb(221, 221, 221) !important; border-bottom: 1px solid rgb(221, 221, 221) !important; border-left: 1px solid rgb(221, 221, 221) !important; border-top-color: rgb(221, 221, 221) !important; border-image: initial !important; padding: 8px !important; background-color: inherit !important;\"><span style=\"box-sizing: inherit;\">50</span></td></tr></tbody></table></div><h3 style=\"box-sizing: inherit; margin: 24px 0px 16px; padding: 0px; border: 0px; font-family: Arial, sans-serif; font-size: 20px; line-height: 1.2em; color: var(--contrast-2); text-align: justify;\"><span style=\"box-sizing: inherit; font-weight: 700;\">AISSEE 2024 Exam Day Guidelines</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; border: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit;\">Exam day guidelines for Sainik School Entrance Exam 2024 are as follows.</span></p><ul style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 3em; padding: 0px; border: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 16px; text-align: justify;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">Before taking the AISSEE 2024 exam, the candidate needs to have their admit card.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">Please take note that the Sainik School Admit Card will not be delivered by mail to the candidate.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">There is no way that the exam centres will issue duplicate AISSEE 2024 admit cards.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">It is forbidden for the candidate to alter or destroy the Admit Card or any of the entries recorded on it.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: inherit;\">No candidate who has an incomplete application (including an unclear photograph or without a signed upload) or who does not meet the requirements to take the test will receive an admit card.</span></li></ul>', 'The AISSEE Admit Card 2024 is anticipated to be released by the National Test Agency (NTA) on 17 January 2024. Once it is made public officially, students will be able to download the same using the Registration Number and Password.', '1708056277.png', 'sainik-aissee-2', 1, '2024-02-16 09:06:39', '2024-02-16 09:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `competitite_exams_pdf`
--

CREATE TABLE `competitite_exams_pdf` (
  `id` int(11) NOT NULL,
  `competitite_exams_id` int(11) NOT NULL,
  `pdf_name` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitite_exams_pdf`
--

INSERT INTO `competitite_exams_pdf` (`id`, `competitite_exams_id`, `pdf_name`, `created_at`, `updated_at`) VALUES
(0, 2, '1708453789.pdf', '2024-02-20 18:29:49', '2024-02-20 12:59:49'),
(0, 2, '1708454152.pdf', '2024-02-20 18:35:52', '2024-02-20 13:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE `contactforms` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactforms`
--

INSERT INTO `contactforms` (`id`, `first_name`, `last_name`, `email`, `mobile`, `message`, `status`, `updated_at`, `created_at`) VALUES
(2, 'admin', 'admin', 'admin@gmail.com', '52435234', 'asdf', NULL, '2024-02-20 05:37:34', '2024-02-20 05:37:34'),
(3, 'admin', 'admin', 'admin@hashref.org', '52435234', 'safdf', NULL, '2024-02-20 06:46:12', '2024-02-20 06:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `offered_price` double DEFAULT NULL,
  `description` text NOT NULL,
  `full_description` longtext DEFAULT NULL,
  `feedback_rating` varchar(255) DEFAULT NULL,
  `instructor_id` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `live_session` varchar(255) NOT NULL,
  `topic_count` smallint(6) NOT NULL,
  `total_hours_recordings` int(11) NOT NULL,
  `recording_count` smallint(6) NOT NULL,
  `material_count` smallint(6) NOT NULL,
  `practice_test_count` smallint(6) NOT NULL,
  `grand_test_chapter` smallint(6) NOT NULL,
  `grand_test_combine` smallint(6) NOT NULL,
  `grand_test_syllabus` smallint(6) NOT NULL,
  `validity` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `course_name`, `course_image`, `price`, `offered_price`, `description`, `full_description`, `feedback_rating`, `instructor_id`, `duration`, `language`, `live_session`, `topic_count`, `total_hours_recordings`, `recording_count`, `material_count`, `practice_test_count`, `grand_test_chapter`, `grand_test_combine`, `grand_test_syllabus`, `validity`, `slug`, `seo_keyword`, `seo_meta_description`, `status`, `created_at`, `updated_at`) VALUES
(6, '2', 'Mathematics(Aptitude)', '1708077451.png', NULL, NULL, 'Solutions will be provided for all practice tests/Grand tests\r\nFinal grand tests solutions will be discussed over live sessions', '<div><span style=\"font-size: 14px;\">Solutions will be provided for all practice tests/Grand tests</span></div><div><span style=\"font-size: 14px;\">Final grand tests solutions will be discussed over live sessions</span></div>', NULL, '[\"1\"]', '3 Hours', 'English', 'Weekly 2-3 hours', 26, 80, 100, 26, 250, 50, 25, 50, '360', 'mathematicsaptitude', NULL, NULL, 1, '2024-02-08 11:22:09', '2024-02-18 14:03:05'),
(7, '2', 'Intelligence(Reasoning)', '1708078024.png', NULL, NULL, 'Questions on Intelligence will be based on analogies (mathematical & verbal), pattern (spatial and mathematical), classification, visual, logical, reasoning etc', '<p><span style=\"font-size: 14px;\">Questions on Intelligence will be based on analogies (mathematical &amp; verbal), pattern (spatial and mathematical), classification, visual, logical, reasoning etc</span><br></p>', NULL, '[\"1\"]', '24 Hours', 'English', 'Weekly 1-2 hours', 20, 60, 80, 20, 200, 40, 20, 50, '360', 'intelligencereasoning', NULL, NULL, 1, '2024-02-08 11:27:35', '2024-02-18 14:02:53'),
(8, '2', 'English', '1708078038.png', NULL, NULL, 'Questions on Intelligence will be based on analogies (mathematical & verbal), pattern (spatial and mathematical), classification, visual, logical, reasoning etc.', '<p>Questions on Intelligence will be based on analogies (mathematical &amp; verbal), pattern (spatial and mathematical), classification, visual, logical, reasoning etc.<span style=\"white-space:pre\">	</span><br></p>', NULL, '[\"1\"]', '1 Hour', 'English', 'Weekly 1 hr', 25, 45, 50, 25, 200, 50, 25, 50, '360', 'english', NULL, NULL, 1, '2024-02-11 00:02:19', '2024-02-16 15:07:18'),
(9, '2', 'GK(General Knowledge)', '1708078053.png', NULL, NULL, 'GENERAL KNOWLEDGE', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"609\" style=\"width: 457pt;\"><tbody><tr height=\"21\" style=\"mso-height-source:userset;height:16.0pt\">\r\n  <td colspan=\"2\" height=\"21\" class=\"xl67\" width=\"609\" style=\"border-right:.5pt solid black;\r\n  height:16.0pt;width:457pt\">GENERAL KNOWLEDGE</td></tr></tbody></table>', NULL, '[\"1\"]', '1 Hour', 'English', 'Bi-weekly', 30, 15, 20, 30, 100, 50, 20, 50, '360', 'gkgeneral-knowledge', NULL, NULL, 1, '2024-02-11 00:03:43', '2024-02-16 15:07:33'),
(10, '3', 'Mathematics(Aptitude)', '1708077434.png', NULL, NULL, 'Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.', '<p style=\"margin-bottom: 1rem; color: rgb(147, 147, 147); font-family: &quot;Noto Sans&quot;, sans-serif; letter-spacing: 0.4px;\">Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.</p><div><br></div>', NULL, '[\"1\"]', '3 Hrs', 'English', 'Weekly 2-3 Hrs', 26, 80, 100, 26, 250, 50, 50, 50, '360', 'mathematicsaptitude', NULL, NULL, 1, '2024-02-16 14:57:15', '2024-02-18 14:03:27'),
(11, '3', 'Intelligence(Reasoning)', '1708079052.png', NULL, NULL, 'Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.', '<p>Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.<br></p>', NULL, '[\"1\"]', '3 Hrs', 'English', 'Weekly 1-2 Hrs', 20, 80, 60, 20, 200, 40, 20, 50, '360', 'intelligencereasoning', NULL, NULL, 1, '2024-02-16 15:24:12', '2024-02-18 14:03:45'),
(12, '3', 'English', '1708079173.png', NULL, NULL, 'Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.', '<p>Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.<br></p>', NULL, '[\"1\"]', '3 Hrs', 'English', 'Weekly 1-2 Hrs', 25, 45, 50, 25, 200, 50, 25, 50, '360', 'english', NULL, NULL, 1, '2024-02-16 15:26:13', '2024-02-16 15:26:13'),
(13, '3', 'General Science', '1708079284.jpg', NULL, NULL, 'Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.', '<p>Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.<br></p>', NULL, '[\"1\"]', '3 Hrs', 'English', 'Weekly 1-2 Hrs', 25, 40, 50, 25, 200, 50, 25, 50, '360', 'general-science', NULL, NULL, 1, '2024-02-16 15:28:04', '2024-02-16 15:28:04'),
(14, '3', 'Social Science', '1708079365.jpg', NULL, NULL, 'Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.', '<p>Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.<br></p>', NULL, '[\"1\"]', '3 Hrs', 'English', 'Weekly 1-2 Hrs', 28, 50, 60, 28, 200, 50, 50, 50, '360', 'social-science', NULL, NULL, 1, '2024-02-16 15:29:25', '2024-02-16 15:29:25'),
(15, '4', '9th Grade - Mathematics (CBSE)', '1708079630.png', 15000, 9000, 'Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.', '<p>Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.<br></p>', NULL, '[\"1\"]', '3 Hrs', 'English', 'Weekly 2-3 Hrs', 15, 80, 100, 15, 100, 50, 50, 50, '360', '9th-grade-mathematics-cbse', NULL, NULL, 1, '2024-02-16 15:33:50', '2024-02-18 14:04:43'),
(16, '4', '10th Grade - Mathematics (CBSE)', '1708079721.png', 15000, 10000, 'Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.', '<p>Solutions will be provided for all practice tests/Grand tests. Final grand tests solutions will be discussed over live sessions.<br></p>', NULL, '[\"1\"]', '3 Hrs', 'English', 'Weekly 1-2 Hrs', 15, 80, 100, 15, 100, 50, 25, 50, '360', '10th-grade-mathematics-cbse', NULL, NULL, 1, '2024-02-16 15:35:21', '2024-02-16 15:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `enquires`
--

CREATE TABLE `enquires` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquires`
--

INSERT INTO `enquires` (`id`, `first_name`, `last_name`, `email`, `mobile`, `state_id`, `message`, `status`, `updated_at`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin@hashref.org', '52435234', 12, 'dsadf', NULL, '2024-02-20 06:47:15', '2024-02-20 06:47:15'),
(2, 'admin', 'admin', 'admin@gmail.com', '5243523423', 13, 'Enter Message', NULL, '2024-02-20 20:20:12', '2024-02-20 20:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_description` longtext NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_title`, `faq_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Why won\'t my payment go through?', '<p>&lt;div class=\"\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;h4&gt;Course Description&lt;/h4&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p><br></p><p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</p>', 1, '2024-01-30 06:21:30', '2024-01-30 06:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `first_name`, `last_name`, `email`, `mobile`, `message`, `status`, `updated_at`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin@hashref.org', '52435234', 'fasd', NULL, '2024-02-20 06:47:46', '2024-02-20 06:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `freesessions`
--

CREATE TABLE `freesessions` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freesessions`
--

INSERT INTO `freesessions` (`id`, `first_name`, `last_name`, `email`, `mobile`, `state_id`, `status`, `updated_at`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin@hashref.org', '52435234', 17, NULL, '2024-02-20 06:45:38', '2024-02-20 06:45:38'),
(2, 'Admin', 'Admin', 'admin@hashref.org', '5243523423', 12, NULL, '2024-02-20 20:19:18', '2024-02-20 20:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_type` tinyint(4) NOT NULL,
  `instructor_image` varchar(255) NOT NULL,
  `instructor_name` varchar(255) NOT NULL,
  `about` text DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `skills` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `instructor_type`, `instructor_image`, `instructor_name`, `about`, `subject`, `skills`, `email`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1708281626.png', 'SREEKANTH', 'M.Tech in IIT Kanpur.\r\n20+ Yrs of experience in education field.', 'English', 'M.Tech - IIT Kanpur - 20+ Years of exp.', 'Sreekanth@gmail.com', '1234567890', 1, '2024-02-03 06:58:06', '2024-02-18 23:46:06'),
(2, 1, '1708282012.jpg', 'KIRAN', 'Name : Kiran\r\nQualification : M.Tech\r\nExperience : 10+ years of experience in teaching field.', 'Mathematics', 'M.Tech - S.V.University - 10+Yrs Exp.', 'Kiran@gmail.com', '1234567899', 1, '2024-02-03 07:16:09', '2024-02-18 23:46:52'),
(4, 2, '1708282315.jpeg', 'CHETHANA', NULL, 'Aptitute/Maths', 'B.Tech. - S.V.University - 2 Yrs Exp.', 'chethana@gmail.com', '123456789', 1, '2024-02-18 23:51:55', '2024-02-18 23:55:58'),
(5, 2, '1708282526.jpeg', 'HARSHITHA', NULL, 'English & Maths', 'B.Sc.(Maths), B.Ed - S.V.University - 2+ Yrs Exp.', 'harshitha@gmail.com', '12367899', 1, '2024-02-18 23:55:26', '2024-02-18 23:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `liveclasses`
--

CREATE TABLE `liveclasses` (
  `id` int(11) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `meeting_link` varchar(255) NOT NULL,
  `class_date` datetime DEFAULT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `additional_information` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `liveclasses`
--

INSERT INTO `liveclasses` (`id`, `exam_type`, `category_id`, `course_id`, `topic`, `meeting_link`, `class_date`, `date`, `time`, `additional_information`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Online', 4, '6', '1', 'https://youtu.be/b1t41Q3xRM8?si=jRC439VQ97DNUN-3', '2024-02-29 11:33:15', '2024-02-14', '16:54', 'fasdf', 1, '2024-02-05 13:26:34', '2024-02-05 10:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_30_081147_create_abouts_table', 2),
(6, '2024_01_30_111117_create_abouts_table', 3),
(7, '2024_01_30_114136_create_faqs_table', 4),
(8, '2024_01_30_120052_create_whychooses_table', 5),
(9, '2024_01_31_054402_create_ourvaluses_table', 6),
(10, '2024_02_02_094832_create_resources_table', 7),
(11, '2024_02_03_073021_create_topics_table', 8),
(12, '2024_02_03_073849_create_courses_table', 9),
(13, '2024_02_03_115259_create_instructors_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ourvalues`
--

CREATE TABLE `ourvalues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourvalues`
--

INSERT INTO `ourvalues` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '1706863740.png', 'Our Goals', '<ul class=\" list-unstyled\" style=\"color: rgb(255, 255, 255); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 15px; letter-spacing: 0.3px;\"><li class=\"mb-2\" style=\"\">Providing comprehensive coaching</li><li class=\"mb-2\" style=\"\">Excellence in Education to empower students with the knowledge and skills required</li><li class=\"mb-2\" style=\"\">Holistic Development – Along with exam specific content also nurturing critical thinking, problem-solving abilities, and overall personality development</li></ul>', '2024-02-02 03:19:00', '2024-02-20 10:51:52'),
(2, '1706863866.png', 'Our Mission', '<ul class=\" list-unstyled\" style=\"color: rgb(255, 255, 255); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 15px; letter-spacing: 0.3px;\"><li class=\"mb-2\" style=\"\">Provide Quality Education Access through online platforms, reaching students across geographical boundaries</li><li class=\"mb-2\" style=\"\">Develop and implement customized Curriculum for each competitive exam</li><li class=\"mb-2\" style=\"\">Committing to continuous improvement by regularly updating course content, incorporating feedback, and staying abreast of evolving educational trends to remain at the forefront of online education for competitive exams</li></ul>', '2024-02-02 03:21:06', '2024-02-20 10:53:04'),
(3, '1706864276.png', 'Our Vision', '<span style=\"color: rgb(255, 255, 255); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 15px; letter-spacing: 0.3px;\">To be a pioneering online education institute recognized for its unparalleled commitment to preparing students for multiple competitive exams at state and national levels, creating future leaders and achievers</span>', '2024-02-02 03:27:56', '2024-02-20 10:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `topic_id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `topic_id`, `title`, `video_link`, `pdf`, `is_free`, `updated_at`, `created_at`) VALUES
(2, 1, 'Video 2', 'https://www.youtube.com/', NULL, 1, '2024-02-19 13:53:27', '2024-02-07 01:48:34'),
(4, 5, 'Video 1', 'https://youtube.com/', NULL, 0, '2024-02-08 08:51:01', '2024-02-08 08:51:01'),
(5, 5, 'Video 2', 'https://www.youtube.com/', NULL, 0, '2024-02-08 08:53:27', '2024-02-08 08:53:27'),
(6, 5, 'Video 3', 'https://www.youtube.com/', NULL, 0, '2024-02-08 08:53:50', '2024-02-08 08:53:50'),
(7, 10, 'PDf 1', NULL, '1707547015.pdf', 0, '2024-02-10 01:06:55', '2024-02-10 01:06:55'),
(8, 10, 'PDf 2', NULL, '1707547025.pdf', 0, '2024-02-10 01:07:05', '2024-02-10 01:07:05'),
(9, 1, 'video 3', 'https://www.youtube.com/', NULL, 1, '2024-02-19 13:54:10', '2024-02-19 13:54:10'),
(10, 1, 'Video 3', 'https://www.youtube.com/', NULL, 0, '2024-02-19 13:54:20', '2024-02-19 13:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `fav_icon` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `phone_2` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_2` varchar(255) NOT NULL,
  `email_3` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `google_map_link` text NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `insta` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `linked_in` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `logo`, `fav_icon`, `phone`, `phone_2`, `email`, `email_2`, `email_3`, `currency`, `address`, `google_map_link`, `youtube`, `twitter`, `insta`, `facebook`, `linked_in`, `created_at`, `updated_at`) VALUES
(1, 'Childers Medha Academy', 'logo-1707012514.png', 'fav-icon-1708057181.png', '9030353300', '1234567890', 'info@childrensmedha.com', 'sales@childrensmedha.com', 'carrer@childrensmedha.com', 'INR', 'JP Residency	\r\n#14, 2nd Cross - 5th Main Road	\r\nSuncity Layout, JP Nagar 7th Phase	\r\nBangalore, Karnataka\r\nIndia - 560078', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1663021.9764678692!2d138.450442887185!3d35.50205774557601!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x605d1b87f02e57e7%3A0x2e01618b22571b89!2sTokyo%2C%20Japan!5e0!3m2!1sen!2sin!4v1684835658239!5m2!1sen!2sin\"', 'https://twitter.com/login?lang=en', 'https://twitter.com/login?lang=en', 'https://twitter.com/login?lang=en', 'https://twitter.com/login?lang=en', 'https://twitter.com/login?lang=en', NULL, '2024-02-18 21:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_code` varchar(10) NOT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_code`, `state_name`, `created_at`, `update_at`) VALUES
(1, 'AP', 'Andhra Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'AR', 'Arunachal Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'AS', 'Assam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'BR', 'Bihar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'CG', 'Chandigarh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'CH', 'Chhattisgarh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'DN', 'Dadra and Nagar Haveli', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'DD', 'Daman and Diu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'DL', 'Delhi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'GA', 'Goa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'GJ', 'GJ:Gujarat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'HR', 'Haryana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'HP', 'Himachal Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'JK', 'Jammu and Kashmir', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'JH', 'Jharkhand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'KA', 'Karnataka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'KL', 'Kerala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'LA', 'Ladakh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'LD', 'Lakshadweep', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'MP', 'Madhya Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'MH', 'Maharashtra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'MN', 'Manipur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'ML', 'Meghalaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'MZ', 'Mizoram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'NL', 'Nagaland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'OR', 'Odisha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'PY', 'Puducherry', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'PB', 'Punjab', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'RJ', 'Rajasthan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'SK', 'Sikkim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'TN', 'Tamil Nadu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'TS', 'Telangana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'TR', 'Tripura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'UP', 'Uttar Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'UK', 'Uttarakhand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'WB', 'West Bengal', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pincode` varchar(256) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `state`, `city`, `address`, `pincode`, `updated_at`, `created_at`, `status`) VALUES
(1, 'Pandyan', 'G', 'gpandiyan.tech@gmail.com', '76346543534', '$2y$10$yOwUBAt.YI3.aV5GyM7JSOEy0RKlQWb023ZShF5kwMdsn/AYiL8hK', NULL, '32323', 'Chennai', '322323', '2024-02-19 10:56:34', NULL, 1),
(6, 'Thirupal', 'Naik', 'thirupal.k595@hslvizag.in', '9493792074', '$2y$10$Nbyg5O7RtvWnnDw4g9EsYOvJMKFwQsc4XNGntWLVVBlWOtVeyH2CG', NULL, NULL, NULL, NULL, '2024-02-20 06:11:16', '2024-02-20 06:11:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_login_history`
--

CREATE TABLE `student_login_history` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `login_at` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_login_history`
--

INSERT INTO `student_login_history` (`id`, `student_id`, `login_at`, `ip_address`) VALUES
(1, 1, '2024-02-17 08:14:55', '::1'),
(2, 1, '2024-02-17 09:20:04', '::1'),
(3, 1, '2024-02-17 11:15:02', '::1'),
(4, 1, '2024-02-18 01:13:24', '::1'),
(5, 1, '2024-02-18 01:45:24', '::1'),
(6, 1, '2024-02-18 01:46:06', '::1'),
(7, 1, '2024-02-18 01:47:40', '::1'),
(8, 1, '2024-02-18 04:17:56', '::1'),
(9, 1, '2024-02-19 06:06:43', '182.76.247.76'),
(10, 1, '2024-02-19 08:19:07', '182.76.247.76'),
(11, 1, '2024-02-19 08:23:25', '49.47.241.195'),
(12, 1, '2024-02-19 12:34:08', '49.47.241.195'),
(13, 1, '2024-02-19 12:35:43', '49.47.241.195'),
(14, 6, '2024-02-20 01:11:45', '117.252.54.121'),
(15, 1, '2024-02-20 06:13:43', '182.76.247.76'),
(16, 1, '2024-02-20 09:16:43', '::1'),
(17, 1, '2024-02-20 09:16:59', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `full_description` longtext DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `full_description`, `updated_at`, `created_at`) VALUES
(1, 'Terms And Conditions', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Welcome to Childers Medha Academy!</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">These terms and conditions outline the rules and regulations for the use of Childers Medha Academy\'s Website, located at childersmedhaacademy.com.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use Childers Medha Academy if you do not agree to take all of the terms and conditions stated on this page.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of af. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">Cookies</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We employ the use of cookies. By accessing Childers Medha Academy, you agreed to use cookies in agreement with the Childers Medha Academy\'s Privacy Policy.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">License</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Unless otherwise stated, Childers Medha Academy and/or its licensors own the intellectual property rights for all material on Childers Medha Academy. All intellectual property rights are reserved. You may access this from Childers Medha Academy for your own personal use subjected to restrictions set in these terms and conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">You must not:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>Republish material from Childers Medha Academy</li><li>Sell, rent or sub-license material from Childers Medha Academy</li><li>Reproduce, duplicate or copy material from Childers Medha Academy</li><li>Redistribute content from Childers Medha Academy</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsandconditionsgenerator.com/\" style=\"color: rgb(102, 102, 102);\">Free Terms and Conditions Generator</a>.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Childers Medha Academy does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Childers Medha Academy,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Childers Medha Academy shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Childers Medha Academy reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">You warrant and represent that:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">You hereby grant Childers Medha Academy a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">Hyperlinking to our Content</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">The following organizations may link to our Website without prior written approval:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>Government agencies;</li><li>Search engines;</li><li>News organizations;</li><li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We may consider and approve other link requests from the following types of organizations:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>commonly-known consumer and/or business information sources;</li><li>dot.com community sites;</li><li>associations or other groups representing charities;</li><li>online directory distributors;</li><li>internet portals;</li><li>accounting, law and consulting firms; and</li><li>educational institutions and trade associations.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Childers Medha Academy; and (d) the link is in the context of general resource information.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Childers Medha Academy. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Approved organizations may hyperlink to our Website as follows:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>By use of our corporate name; or</li><li>By use of the uniform resource locator being linked to; or</li><li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">No use of Childers Medha Academy\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">iFrames</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">Content Liability</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">Reservation of Rights</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">Removal of links from our website</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 14px;\"><span style=\"font-weight: 700;\">Disclaimer</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>limit or exclude our or your liability for death or personal injury;</li><li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li>exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '2024-02-20 06:23:25', '2024-02-05 00:04:23'),
(2, 'Privacy And Policy', '<h1>Privacy Policy</h1>\r\n<p>Last updated: February 20, 2024</p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the <a href=\"https://www.termsfeed.com/privacy-policy-generator/\" target=\"_blank\">Privacy Policy Generator</a>.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Affiliate</strong> means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Childers Medha Academy.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong> refers to: Andhra Pradesh,  India</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n</li>\r\n<li>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong> refers to Childers Medha Academy, accessible from <a href=\"childersmedhaacademy.com\" rel=\"external nofollow noopener\" target=\"_blank\">childersmedhaacademy.com</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n<h3>Types of Data Collected</h3>\r\n<h4>Personal Data</h4>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul>\r\n<li>\r\n<p>Email address</p>\r\n</li>\r\n<li>\r\n<p>First name and last name</p>\r\n</li>\r\n<li>\r\n<p>Phone number</p>\r\n</li>\r\n<li>\r\n<p>Address, State, Province, ZIP/Postal code, City</p>\r\n</li>\r\n<li>\r\n<p>Usage Data</p>\r\n</li>\r\n</ul>\r\n<h4>Usage Data</h4>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h4>Tracking Technologies and Cookies</h4>\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n<ul>\r\n<li><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\r\n<li><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\r\n</ul>\r\n<p>Cookies can be \"Persistent\" or \"Session\" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. You can learn more about cookies on <a href=\"https://www.termsfeed.com/blog/cookies/#What_Are_Cookies\" target=\"_blank\">TermsFeed website</a> article.</p>\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Functionality Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n</li>\r\n</ul>\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n<h3>Use of Your Personal Data</h3>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<ul>\r\n<li>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n</li>\r\n<li>\r\n<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n</li>\r\n<li>\r\n<p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n</li>\r\n<li>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n</li>\r\n</ul>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul>\r\n<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service,  to contact You.</li>\r\n<li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n<li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n<h3>Retention of Your Personal Data</h3>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<h3>Transfer of Your Personal Data</h3>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h3>Delete Your Personal Data</h3>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<h3>Disclosure of Your Personal Data</h3>\r\n<h4>Business Transactions</h4>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h4>Law enforcement</h4>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h4>Other legal requirements</h4>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul>\r\n<li>Comply with a legal obligation</li>\r\n<li>Protect and defend the rights or property of the Company</li>\r\n<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n<li>Protect the personal safety of Users of the Service or the public</li>\r\n<li>Protect against legal liability</li>\r\n</ul>\r\n<h3>Security of Your Personal Data</h3>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h2>Children\'s Privacy</h2>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h2>Links to Other Websites</h2>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n<h2>Changes to this Privacy Policy</h2>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul>\r\n<li>By email: info@childrensmedha.com</li>\r\n</ul>', '2024-02-20 06:26:52', '2024-02-05 00:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `course_id`, `topic`, `duration`, `type`, `video_link`, `pdf`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Natural Numbers', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:23:39', '2024-02-08 11:23:39'),
(2, 6, 'LCM and HCF', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:23:56', '2024-02-08 11:23:56'),
(3, 6, 'Unitary Method', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:24:11', '2024-02-08 11:24:11'),
(4, 6, 'Fractions', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:24:23', '2024-02-08 11:24:23'),
(6, 6, 'Ratio and Proportion', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:24:48', '2024-02-08 11:24:48'),
(7, 7, 'Anology', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:28:18', '2024-02-08 11:28:18'),
(8, 7, 'Classification', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:28:39', '2024-02-08 11:28:39'),
(9, 7, 'Seriers', '1 Hour', 1, NULL, NULL, 1, '2024-02-08 11:28:52', '2024-02-08 11:28:52'),
(10, 6, 'Natural Numbers', NULL, 2, NULL, NULL, 1, '2024-02-10 01:06:26', '2024-02-18 16:14:36'),
(11, 7, 'Coding and de-coding', '1 Hour', 1, NULL, NULL, 1, '2024-02-11 00:24:36', '2024-02-11 00:25:23'),
(12, 7, 'Ranking', '1 hour', 1, NULL, NULL, 1, '2024-02-11 00:24:55', '2024-02-11 00:24:55'),
(13, 6, 'Profit and Loss', NULL, 1, NULL, NULL, 1, '2024-02-16 13:04:18', '2024-02-16 13:07:13'),
(14, 6, 'Simplification', NULL, 1, NULL, NULL, 1, '2024-02-16 13:05:29', '2024-02-16 13:07:32'),
(15, 6, 'Average', NULL, 1, NULL, NULL, 1, '2024-02-16 13:07:47', '2024-02-16 13:07:47'),
(16, 6, 'Percentage', NULL, 1, NULL, NULL, 1, '2024-02-16 13:07:59', '2024-02-16 13:07:59'),
(17, 6, 'Area and Perimeter', NULL, 1, NULL, NULL, 1, '2024-02-16 13:08:13', '2024-02-16 13:08:13'),
(18, 6, 'Simple Interest', NULL, 1, NULL, NULL, 1, '2024-02-16 13:08:27', '2024-02-16 13:08:27'),
(19, 6, 'Lines and Angles', NULL, 1, NULL, NULL, 1, '2024-02-16 13:53:25', '2024-02-16 13:53:25'),
(20, 6, 'Complementary and Supplementary Angles', NULL, 1, NULL, NULL, 1, '2024-02-16 13:53:36', '2024-02-16 13:53:36'),
(21, 6, 'Conversion of Units', NULL, 1, NULL, NULL, 1, '2024-02-16 13:53:58', '2024-02-16 13:53:58'),
(22, 6, 'Roman Numerals', NULL, 1, NULL, NULL, 1, '2024-02-16 13:54:34', '2024-02-16 13:54:34'),
(23, 6, 'Types of Angles', NULL, 1, NULL, NULL, 1, '2024-02-16 13:54:53', '2024-02-16 13:54:53'),
(24, 6, 'Circle', NULL, 1, NULL, NULL, 1, '2024-02-16 13:55:04', '2024-02-16 13:55:04'),
(25, 6, 'Volume of Cube and Cuboids', NULL, 1, NULL, NULL, 1, '2024-02-16 13:55:13', '2024-02-16 13:55:13'),
(26, 6, 'Prime and Composite Numbers', NULL, 1, NULL, NULL, 1, '2024-02-16 13:55:22', '2024-02-16 13:55:22'),
(27, 6, 'Plane Figures', NULL, 1, NULL, NULL, 1, '2024-02-16 13:55:31', '2024-02-16 13:55:31'),
(28, 6, 'Decimal Numbers', NULL, 1, NULL, NULL, 1, '2024-02-16 13:55:40', '2024-02-16 13:55:40'),
(29, 6, 'Speed and Time', NULL, 1, NULL, NULL, 1, '2024-02-16 13:55:58', '2024-02-16 13:55:58'),
(30, 6, 'Operation on Numbers', NULL, 1, NULL, NULL, 1, '2024-02-16 13:56:09', '2024-02-16 13:56:09'),
(31, 6, 'Temperature', NULL, 1, NULL, NULL, 1, '2024-02-16 13:56:18', '2024-02-16 13:56:18'),
(32, 6, 'Arranging of Fractions', NULL, 1, NULL, NULL, 1, '2024-02-16 14:00:08', '2024-02-16 14:00:08'),
(33, 8, 'Comprehension Passage', NULL, 1, NULL, NULL, 1, '2024-02-16 14:00:27', '2024-02-16 14:00:27'),
(34, 8, 'Preposition', NULL, 1, NULL, NULL, 1, '2024-02-16 14:00:37', '2024-02-16 14:00:37'),
(35, 8, 'Article', NULL, 1, NULL, NULL, 1, '2024-02-16 14:00:48', '2024-02-16 14:00:48'),
(36, 8, 'Vocabulary', NULL, 1, NULL, NULL, 1, '2024-02-16 14:00:57', '2024-02-16 14:00:57'),
(37, 8, 'Verbs and Type', NULL, 1, NULL, NULL, 1, '2024-02-16 14:01:06', '2024-02-16 14:01:06'),
(38, 8, 'Confusing Words', NULL, 1, NULL, NULL, 1, '2024-02-16 14:01:15', '2024-02-16 14:01:15'),
(39, 8, 'Question Tags', NULL, 1, NULL, NULL, 1, '2024-02-16 14:01:23', '2024-02-16 14:01:23'),
(40, 8, 'Types of sentence', NULL, 1, NULL, NULL, 1, '2024-02-16 14:01:32', '2024-02-16 14:01:32'),
(41, 8, 'Tense forms', NULL, 1, NULL, NULL, 1, '2024-02-16 14:01:44', '2024-02-16 14:01:44'),
(42, 8, 'Kinds of Nouns', NULL, 1, NULL, NULL, 1, '2024-02-16 14:01:53', '2024-02-16 14:01:53'),
(43, 8, 'Kinds of Pronouns', NULL, 1, NULL, NULL, 1, '2024-02-16 14:02:04', '2024-02-16 14:02:04'),
(44, 8, 'Correct Spelling', NULL, 1, NULL, NULL, 1, '2024-02-16 14:02:12', '2024-02-16 14:02:12'),
(45, 8, 'Ordering of words in sentence', NULL, 1, NULL, NULL, 1, '2024-02-16 14:02:22', '2024-02-16 14:02:22'),
(46, 8, 'Sentence Formation', NULL, 1, NULL, NULL, 1, '2024-02-16 14:02:32', '2024-02-16 14:02:32'),
(47, 8, 'Antonyms', NULL, 1, NULL, NULL, 1, '2024-02-16 14:02:41', '2024-02-16 14:02:41'),
(48, 8, 'Synonyms', NULL, 1, NULL, NULL, 1, '2024-02-16 14:02:50', '2024-02-16 14:02:50'),
(49, 8, 'Adjectives', NULL, 1, NULL, NULL, 1, '2024-02-16 14:03:09', '2024-02-16 14:03:09'),
(50, 8, 'Interjection', NULL, 1, NULL, NULL, 1, '2024-02-16 14:03:15', '2024-02-16 14:03:15'),
(51, 8, 'Idioms and Phrases', NULL, 1, NULL, NULL, 1, '2024-02-16 14:03:24', '2024-02-16 14:03:24'),
(52, 8, 'Collective Nouns', NULL, 1, NULL, NULL, 1, '2024-02-16 14:03:33', '2024-02-16 14:03:33'),
(53, 8, 'Number', NULL, 1, NULL, NULL, 1, '2024-02-16 14:03:50', '2024-02-16 14:03:50'),
(54, 8, 'Gender', NULL, 1, NULL, NULL, 1, '2024-02-16 14:04:03', '2024-02-16 14:04:03'),
(55, 8, 'Adverbs', NULL, 1, NULL, NULL, 1, '2024-02-16 14:04:11', '2024-02-16 14:04:11'),
(56, 8, 'Rhyming Words', NULL, 1, NULL, NULL, 1, '2024-02-16 14:04:20', '2024-02-16 14:04:20'),
(57, 8, 'Singular/Plural', NULL, 1, NULL, NULL, 1, '2024-02-16 14:04:29', '2024-02-16 14:04:29'),
(58, 9, 'Different Types of Scientific Devices Used in Daily Life', NULL, 1, NULL, NULL, 1, '2024-02-16 14:06:36', '2024-02-16 14:06:36'),
(59, 9, 'Icons and Symbols of India: National Insignia, National Emblem, Sports,Animal etc. (Elementary awareness of Such symbols)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:07:23', '2024-02-16 14:07:23'),
(60, 9, 'Major Religions of India (Elementary awareness about founder, place of origin,Religious books and important ideas)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:07:35', '2024-02-16 14:07:35'),
(61, 9, 'Art and Culture (Music, Classical and Folk Dance);Renowned Personalities, Instrumental and Vocal Music, Major Dance Forms', NULL, 1, NULL, NULL, 1, '2024-02-16 14:07:45', '2024-02-16 14:07:45'),
(62, 9, 'Defence (Equivalent Ranks in three services, Weapons, Aircraft, Missiles & Warships (Elementary awareness)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:07:54', '2024-02-16 14:07:54'),
(63, 9, 'Sports and Games (India & World). Renowned personalities, major competitions and trophies associated With various games', NULL, 1, NULL, NULL, 1, '2024-02-16 14:08:04', '2024-02-16 14:08:04'),
(64, 9, 'Super Senses (How do plants and Animals sense their surroundings)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:08:14', '2024-02-16 14:08:14'),
(65, 9, 'Relationship between Animals and Human Beings', NULL, 1, NULL, NULL, 1, '2024-02-16 14:08:24', '2024-02-16 14:08:24'),
(66, 9, 'Taste and Digestion (Basic concepts)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:08:34', '2024-02-16 14:08:34'),
(67, 9, 'Cooking and Preserving Techniques', NULL, 1, NULL, NULL, 1, '2024-02-16 14:08:45', '2024-02-16 14:08:45'),
(86, 9, 'Germination and Seed Dispersal', NULL, 1, NULL, NULL, 1, '2024-02-16 14:32:05', '2024-02-16 14:32:05'),
(87, 9, 'Traditional Water Harvesting Techniques', NULL, 1, NULL, NULL, 1, '2024-02-16 14:32:37', '2024-02-16 14:32:37'),
(88, 9, 'Experiment with Water on Everyday Life', NULL, 1, NULL, NULL, 1, '2024-02-16 14:32:49', '2024-02-16 14:32:49'),
(89, 9, 'Water Pollution and Microbial Diseases', NULL, 1, NULL, NULL, 1, '2024-02-16 14:32:58', '2024-02-16 14:32:58'),
(90, 9, 'Concepts on Mountain Terrain and Lifestyle', NULL, 1, NULL, NULL, 1, '2024-02-16 14:33:11', '2024-02-16 14:33:11'),
(91, 9, 'Historical Monuments', NULL, 1, NULL, NULL, 1, '2024-02-16 14:38:18', '2024-02-16 14:38:18'),
(92, 9, 'Shape of Earth and Gravitation(Basic concepts)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:38:30', '2024-02-16 14:38:30'),
(93, 9, 'Non-Renewable Energy Sources(Fossil Fuels)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:38:38', '2024-02-16 14:38:38'),
(94, 9, 'Food, Culture, Habitat, Languages etc of various regions (Basic concepts)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:38:47', '2024-02-16 14:38:47'),
(95, 9, 'Names of young ones of different animals', NULL, 1, NULL, NULL, 1, '2024-02-16 14:38:56', '2024-02-16 14:38:56'),
(96, 9, 'Functions of Body Parts of Plants and Animals', NULL, 1, NULL, NULL, 1, '2024-02-16 14:39:05', '2024-02-16 14:39:05'),
(97, 9, 'International Organizations: Basic knowledge about structure, Functioning and objectives of United Nations, World Bank etc.', NULL, 1, NULL, NULL, 1, '2024-02-16 14:39:32', '2024-02-16 14:39:32'),
(98, 9, 'Indian Literary and Cultural Personalities: Names and fields of achievements', NULL, 1, NULL, NULL, 1, '2024-02-16 14:39:44', '2024-02-16 14:39:44'),
(99, 9, 'Indian Literary and Cultural Awards(Names of the award sand recent recipients)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:39:55', '2024-02-16 14:39:55'),
(100, 9, 'Natural Calamities (Flood and Earthquake)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:40:05', '2024-02-16 14:40:05'),
(101, 9, 'Evaporation, Condensation and Water Cycle (Basic concepts)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:40:14', '2024-02-16 14:40:14'),
(102, 9, 'Life of Farmers (Farming techniques)', NULL, 1, NULL, NULL, 1, '2024-02-16 14:40:23', '2024-02-16 14:40:23'),
(103, 9, 'Tribal Communities and Forest Produce', NULL, 1, NULL, NULL, 1, '2024-02-16 14:40:37', '2024-02-16 14:40:37'),
(109, 7, 'Mathematical Operation', NULL, 1, NULL, NULL, 1, '2024-02-16 14:43:09', '2024-02-16 14:43:09'),
(110, 7, 'Blood relation', NULL, 1, NULL, NULL, 1, '2024-02-16 14:43:18', '2024-02-16 14:43:18'),
(111, 7, 'Direction and distance', NULL, 1, NULL, NULL, 1, '2024-02-16 14:43:26', '2024-02-16 14:43:26'),
(112, 7, 'Clock and calendar', NULL, 1, NULL, NULL, 1, '2024-02-16 14:43:36', '2024-02-16 14:43:36'),
(113, 7, 'Seating arrangement', NULL, 1, NULL, NULL, 1, '2024-02-16 14:43:46', '2024-02-16 14:43:46'),
(114, 7, 'Odd man out', NULL, 1, NULL, NULL, 1, '2024-02-16 14:44:09', '2024-02-16 14:44:09'),
(115, 7, 'Incomplete figures', NULL, 1, NULL, NULL, 1, '2024-02-16 14:44:17', '2024-02-16 14:44:17'),
(116, 7, 'Cutting figures', NULL, 1, NULL, NULL, 1, '2024-02-16 14:44:31', '2024-02-16 14:44:31'),
(117, 7, 'Embedded figures', NULL, 1, NULL, NULL, 1, '2024-02-16 14:44:40', '2024-02-16 14:44:40'),
(118, 7, 'Water images', NULL, 1, NULL, NULL, 1, '2024-02-16 14:44:48', '2024-02-16 14:44:48'),
(119, 7, 'Mirror images', NULL, 1, NULL, NULL, 1, '2024-02-16 14:44:56', '2024-02-16 14:44:56'),
(120, 6, 'LCM and HCF', NULL, 2, NULL, NULL, 1, '2024-02-17 07:16:05', '2024-02-18 16:14:58'),
(137, 10, 'Rational Numbers', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:30:39', '2024-02-18 14:30:39'),
(138, 10, 'Linear Equations in One Variable', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:30:51', '2024-02-18 14:30:51'),
(139, 10, 'Understanding Quadrilaterals', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:31:01', '2024-02-18 14:31:01'),
(140, 10, 'Data Handling (Bar Graph and Line Graph)', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:31:12', '2024-02-18 14:31:12'),
(141, 10, 'Squares and Square Roots', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:31:23', '2024-02-18 14:31:23'),
(142, 10, 'Cubes and Cube Roots', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:34:24', '2024-02-18 14:34:24'),
(143, 10, 'Comparing Quantities (Percentage,Profit and Loss)', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:34:36', '2024-02-18 14:34:36'),
(144, 10, 'Algebraic Expressions and Identities', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:34:52', '2024-02-18 14:34:52'),
(145, 10, 'Area and Perimeters', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:35:03', '2024-02-18 14:35:03'),
(146, 10, 'Volumes and Surface Areas', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:35:14', '2024-02-18 14:35:14'),
(147, 10, 'Exponents and Powers', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:35:26', '2024-02-18 14:35:26'),
(148, 10, 'Playing with Numbers', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:35:39', '2024-02-18 14:35:39'),
(149, 10, 'Visualizing Solid Shapes', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:35:51', '2024-02-18 14:35:51'),
(150, 10, 'Triangles (Pythagoras Theorem)', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:36:02', '2024-02-18 14:36:02'),
(151, 10, 'Euler\'s Formula', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:36:12', '2024-02-18 14:36:12'),
(152, 10, 'Average, Median, Mode', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:36:25', '2024-02-18 14:36:25'),
(153, 10, 'Probability', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:39:37', '2024-02-18 14:39:37'),
(154, 10, 'Pie Chart', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:39:50', '2024-02-18 14:39:50'),
(155, 10, 'Direct & Inverse Proportions', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:40:02', '2024-02-18 14:40:02'),
(156, 10, 'Factorizations', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:40:13', '2024-02-18 14:40:13'),
(157, 10, 'Introduction to Graph', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:40:23', '2024-02-18 14:40:23'),
(158, 10, 'Unitary Method', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:40:35', '2024-02-18 14:40:35'),
(159, 10, 'Divisibility Exam', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:40:45', '2024-02-18 14:40:45'),
(160, 10, 'Triangles (Angle Sum Property)', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:40:56', '2024-02-18 14:40:56'),
(161, 10, 'Parallel Lines', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:41:09', '2024-02-18 14:41:09'),
(162, 10, 'Simple Interest and Compound Interest', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:41:22', '2024-02-18 14:41:22'),
(163, 10, 'Time and Work', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:42:16', '2024-02-18 14:42:16'),
(164, 10, 'Area and Perimeter of Circles', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:42:27', '2024-02-18 14:42:27'),
(165, 10, 'Algebraic Expression (Addition, Subtraction, Multiplication, Division)', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:42:37', '2024-02-18 14:42:46'),
(166, 14, 'Revolt of 1857', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:45:50', '2024-02-18 14:45:50'),
(175, 14, 'Freedom Fighters', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:53:05', '2024-02-18 14:53:05'),
(176, 14, 'Important Freedom Movements', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:53:27', '2024-02-18 14:53:27'),
(177, 14, 'Social and Caste Reforms', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:53:39', '2024-02-18 14:53:39'),
(178, 14, 'Resources and sustainable development', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:53:50', '2024-02-18 14:53:50'),
(179, 14, 'Rock cycle of water cycle', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:54:00', '2024-02-18 14:54:00'),
(180, 14, 'Pressure and Wind System', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:54:12', '2024-02-18 14:54:12'),
(181, 14, 'Land Soil and Water Resources', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:54:24', '2024-02-18 14:54:24'),
(182, 14, 'Minerals and Power Resources', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:54:34', '2024-02-18 14:54:34'),
(183, 14, 'Indian Constitution and Secularism', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:54:44', '2024-02-18 14:54:44'),
(184, 14, 'Importance of Parliament', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:54:54', '2024-02-18 14:54:54'),
(185, 14, 'Types of Agriculture', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:55:05', '2024-02-18 14:55:05'),
(186, 14, 'Types of Government and Different tiers of Government', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:55:15', '2024-02-18 14:55:15'),
(187, 14, 'Understanding Markets', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:55:25', '2024-02-18 14:55:25'),
(188, 14, 'Elections', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:55:34', '2024-02-18 14:55:34'),
(189, 14, 'Role of Government in Health', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:56:31', '2024-02-18 14:56:31'),
(190, 14, 'Delhi Sultanate', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:56:42', '2024-02-18 14:56:42'),
(191, 14, 'Mughals', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:56:53', '2024-02-18 14:56:53'),
(192, 14, 'Bhakti and Sufi Movement', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:57:05', '2024-02-18 14:57:05'),
(193, 14, 'Interior of Earth', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:57:16', '2024-02-18 14:57:16'),
(194, 14, 'Climate Change', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:57:28', '2024-02-18 14:57:28'),
(195, 14, 'Earthquakes and Major Land Forms', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:57:39', '2024-02-18 14:57:39'),
(196, 14, 'Types of Rainfall', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:57:51', '2024-02-18 14:57:51'),
(197, 14, 'Major Grasslands', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:58:04', '2024-02-18 14:58:04'),
(198, 14, 'Types of Forests', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:58:16', '2024-02-18 14:58:16'),
(199, 14, 'Means of Transport', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 14:58:28', '2024-02-18 14:58:28'),
(200, 14, 'Communication', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:00:02', '2024-02-18 15:00:02'),
(201, 14, 'Life in deserts', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:00:13', '2024-02-18 15:00:13'),
(202, 14, 'Panchayat System', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:00:24', '2024-02-18 15:00:24'),
(203, 14, 'Local Self Government', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:00:36', '2024-02-18 15:00:36'),
(204, 14, 'Law and Social Justice.', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:00:47', '2024-02-18 15:00:47'),
(205, 14, 'Judiciary and Criminal Justice System', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:00:58', '2024-02-18 15:00:58'),
(206, 14, 'Marginalisation', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:01:10', '2024-02-18 15:01:10'),
(207, 14, 'Public Facilities', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:01:21', '2024-02-18 15:01:21'),
(208, 14, 'Natural Vegetation and Wildlife', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:01:32', '2024-02-18 15:01:32'),
(209, 14, 'Industries', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:02:26', '2024-02-18 15:02:26'),
(210, 14, 'Human Resources', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:02:37', '2024-02-18 15:02:37'),
(211, 14, 'Changes in the Arts', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:02:50', '2024-02-18 15:02:50'),
(212, 13, 'Fossil Fuel: Coal and Petroleum', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:03:28', '2024-02-18 15:03:28'),
(214, 13, 'Combustion and Flame', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:06:58', '2024-02-18 15:06:58'),
(215, 13, 'Cell Structure and Function', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:12:51', '2024-02-18 15:12:51'),
(216, 13, 'Reproduction in Plants And Animals', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:13:26', '2024-02-18 15:13:26'),
(217, 13, 'Force, Friction and Pressure', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:13:51', '2024-02-18 15:13:51'),
(218, 13, 'Sound and its basics', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:14:02', '2024-02-18 15:14:02'),
(219, 13, 'Reflection and Dispersion of Light', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:14:50', '2024-02-18 15:14:50'),
(220, 13, 'Metals and Non Metals', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:15:09', '2024-02-18 15:15:09'),
(221, 13, 'Synthetic Fibers and Plastics', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:15:41', '2024-02-18 15:15:41'),
(222, 13, 'Chemical Effects of Electric Current', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:15:52', '2024-02-18 15:15:52'),
(223, 13, 'Stars and Solar Systems', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:16:14', '2024-02-18 15:16:14'),
(224, 13, 'Pollution of Air and Water', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:16:26', '2024-02-18 15:16:26'),
(225, 13, 'Global Warming', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:16:39', '2024-02-18 15:16:39'),
(226, 13, 'Micro-Organisms', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:16:51', '2024-02-18 15:16:51'),
(227, 13, 'Some Natural Phenomenon', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:17:04', '2024-02-18 15:17:04'),
(228, 13, 'How to find calorific value of fuel?', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:17:29', '2024-02-18 15:17:29'),
(229, 13, 'Electroplating and Artificial Jewellery', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:17:40', '2024-02-18 15:17:40'),
(230, 13, 'Relation between types of friction', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:17:52', '2024-02-18 15:19:17'),
(231, 13, 'Cropping Seasons', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:19:27', '2024-02-18 15:19:27'),
(232, 13, 'Agricultural Practices', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:21:47', '2024-02-18 15:21:47'),
(233, 13, 'Conservation of Plants and Animals', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:21:58', '2024-02-18 15:21:58'),
(234, 13, 'Biosphere Reserves, National Parks and Sanctuaries', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:22:10', '2024-02-18 15:22:10'),
(235, 13, 'Reaching the age of Adolescence', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:22:25', '2024-02-18 15:22:25'),
(236, 13, 'Changes during Puberty', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:22:39', '2024-02-18 15:22:39'),
(237, 13, 'Endocrine Glands and Hormones', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:23:37', '2024-02-18 15:23:37'),
(238, 12, 'Spotting Errors', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:25:31', '2024-02-18 15:25:31'),
(239, 12, 'Comprehension Passage', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:25:44', '2024-02-18 15:25:44'),
(240, 12, 'Antonyms', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:25:56', '2024-02-18 15:25:56'),
(241, 12, 'Synonyms', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:26:10', '2024-02-18 15:26:10'),
(242, 12, 'Prepositions', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:26:21', '2024-02-18 15:26:21'),
(243, 12, 'Articles', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:26:31', '2024-02-18 15:26:31'),
(244, 12, 'Types of Verbs', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:26:41', '2024-02-18 15:26:41'),
(245, 12, 'Tense Form', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:26:53', '2024-02-18 15:26:53'),
(246, 12, 'Narration', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:27:05', '2024-02-18 15:27:05'),
(247, 12, 'Voices', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:27:16', '2024-02-18 15:27:16'),
(248, 12, 'Modals', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:27:44', '2024-02-18 15:27:44'),
(249, 12, 'Confusing Words', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:27:55', '2024-02-18 15:27:55'),
(250, 12, 'Subject-Verb Agreement', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:28:21', '2024-02-18 15:28:21'),
(251, 12, 'Correct Spellings', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:28:30', '2024-02-18 15:28:30'),
(252, 12, 'Order of words in a sentence', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:28:42', '2024-02-18 15:28:42'),
(253, 12, 'Idioms and Phrases', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:28:53', '2024-02-18 15:28:53'),
(254, 12, 'Sentence Improvement', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:29:05', '2024-02-18 15:29:05'),
(255, 12, 'Change of sentence as directed', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:29:17', '2024-02-18 15:29:17'),
(256, 12, 'Sentence Formation', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:29:31', '2024-02-18 15:29:31'),
(257, 12, 'Types of Sentences', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:29:50', '2024-02-18 15:29:50'),
(258, 12, 'Phrase and Clauses', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:30:22', '2024-02-18 15:30:22'),
(259, 12, 'Kinds of Noun', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:30:33', '2024-02-18 15:30:33'),
(260, 12, 'Adjectives', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:30:55', '2024-02-18 15:30:55'),
(261, 12, 'Interjection', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:31:07', '2024-02-18 15:31:07'),
(262, 12, 'Question Tags', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:31:40', '2024-02-18 15:31:40'),
(263, 12, 'Adverbs', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:31:54', '2024-02-18 15:31:54'),
(264, 12, 'Conjunctions', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:32:18', '2024-02-18 15:32:18'),
(265, 12, 'Conditions', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:32:31', '2024-02-18 15:32:31'),
(266, 12, 'Comparison of Adjectives', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:32:43', '2024-02-18 15:32:43'),
(267, 12, 'Personal Pronoun', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:32:56', '2024-02-18 15:32:56'),
(268, 12, 'Change of Gender', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:33:07', '2024-02-18 15:33:07'),
(269, 12, 'Change of Number', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:34:11', '2024-02-18 15:34:11'),
(272, 11, 'Anology', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:52:59', '2024-02-18 15:52:59'),
(273, 11, 'Classification', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:53:16', '2024-02-18 15:53:16'),
(274, 11, 'Seriers', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:53:26', '2024-02-18 15:53:26'),
(275, 11, 'Coding and de-coding', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:53:37', '2024-02-18 15:53:37'),
(276, 11, 'Ranking', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:53:52', '2024-02-18 15:53:52'),
(277, 11, 'Mathematical Operation', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:54:03', '2024-02-18 15:54:03'),
(278, 11, 'Blood relation', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:54:14', '2024-02-18 15:54:14'),
(279, 11, 'Direction and distance', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:54:27', '2024-02-18 15:54:27'),
(280, 11, 'Clock and calendar', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:54:44', '2024-02-18 15:54:44'),
(281, 11, 'Seating arrangement', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:54:55', '2024-02-18 15:54:55'),
(282, 11, 'Odd man out', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:55:19', '2024-02-18 15:56:48'),
(283, 11, 'Incomplete figures', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:55:32', '2024-02-18 15:55:32'),
(284, 11, 'Cutting figures', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:57:30', '2024-02-18 15:57:30'),
(285, 11, 'Embedded figures', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:57:42', '2024-02-18 15:57:42'),
(286, 11, 'Water images', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:57:54', '2024-02-18 15:57:54'),
(287, 11, 'Mirror images', '2 Hours', 1, NULL, NULL, 1, '2024-02-18 15:58:06', '2024-02-18 15:58:06'),
(288, 6, 'Unitary Method', NULL, 2, NULL, NULL, 1, '2024-02-18 16:35:39', '2024-02-18 16:35:39'),
(289, 6, 'Fractions', NULL, 2, NULL, NULL, 1, '2024-02-18 16:36:09', '2024-02-18 16:36:09'),
(290, 6, 'Ratio and Proportion', NULL, 2, NULL, NULL, 1, '2024-02-18 16:36:25', '2024-02-18 16:36:25'),
(291, 6, 'Profit and Loss', NULL, 2, NULL, NULL, 1, '2024-02-18 16:37:08', '2024-02-18 16:37:08'),
(292, 6, 'Simplification', NULL, 2, NULL, NULL, 1, '2024-02-18 16:37:28', '2024-02-18 16:37:28'),
(293, 6, 'Average', NULL, 2, NULL, NULL, 1, '2024-02-18 16:37:43', '2024-02-18 16:37:43'),
(294, 6, 'Percentage', NULL, 2, NULL, NULL, 1, '2024-02-18 16:37:57', '2024-02-18 16:37:57'),
(295, 6, 'Area and Perimeter', NULL, 2, NULL, NULL, 1, '2024-02-18 16:38:12', '2024-02-18 16:38:12'),
(296, 6, 'Simple Interest', NULL, 2, NULL, NULL, 1, '2024-02-18 16:39:15', '2024-02-18 16:39:15'),
(297, 6, 'Lines and Angles', NULL, 2, NULL, NULL, 1, '2024-02-18 16:39:33', '2024-02-18 16:39:33'),
(298, 6, 'Complementary and Supplementary Angles', NULL, 2, NULL, NULL, 1, '2024-02-18 16:39:48', '2024-02-18 16:39:48'),
(299, 6, 'Conversion of Units', NULL, 2, NULL, NULL, 1, '2024-02-18 16:40:01', '2024-02-18 16:40:01'),
(300, 6, 'Roman Numerals', NULL, 2, NULL, NULL, 1, '2024-02-18 16:40:15', '2024-02-18 16:40:15'),
(301, 6, 'Types of Angles', NULL, 2, NULL, NULL, 1, '2024-02-18 16:41:02', '2024-02-18 16:41:02'),
(302, 6, 'Circle', NULL, 2, NULL, NULL, 1, '2024-02-18 16:41:16', '2024-02-18 16:41:16'),
(303, 6, 'Volume of Cube and Cuboids', NULL, 2, NULL, NULL, 1, '2024-02-18 16:41:34', '2024-02-18 16:41:34'),
(304, 6, 'Prime and Composite Numbers', NULL, 2, NULL, NULL, 1, '2024-02-18 16:41:47', '2024-02-18 16:41:47'),
(305, 6, 'Plane Figures', NULL, 2, NULL, NULL, 1, '2024-02-18 16:42:10', '2024-02-18 16:42:10'),
(306, 6, 'Decimal Numbers', NULL, 2, NULL, NULL, 1, '2024-02-18 16:43:03', '2024-02-18 16:43:03'),
(307, 6, 'Speed and Time', NULL, 2, NULL, NULL, 1, '2024-02-18 16:43:44', '2024-02-18 16:43:44'),
(308, 6, 'Operation on Numbers', NULL, 2, NULL, NULL, 1, '2024-02-18 16:43:55', '2024-02-18 16:43:55'),
(309, 6, 'Temperature', NULL, 2, NULL, NULL, 1, '2024-02-18 16:44:06', '2024-02-18 16:44:06'),
(310, 6, 'Arranging of Fractions', NULL, 2, NULL, NULL, 1, '2024-02-18 16:44:19', '2024-02-18 16:44:19'),
(311, 7, 'Anology', NULL, 2, NULL, NULL, 1, '2024-02-18 16:48:44', '2024-02-18 16:48:44'),
(312, 11, 'Anology', NULL, 2, NULL, NULL, 1, '2024-02-18 16:48:55', '2024-02-18 16:48:55'),
(313, 7, 'Classification', NULL, 2, NULL, NULL, 1, '2024-02-18 16:49:10', '2024-02-18 16:49:10'),
(314, 11, 'Classification', NULL, 2, NULL, NULL, 1, '2024-02-18 16:49:21', '2024-02-18 16:49:21'),
(315, 7, 'Seriers', NULL, 2, NULL, NULL, 1, '2024-02-18 16:49:59', '2024-02-18 16:49:59'),
(316, 11, 'Seriers', NULL, 2, NULL, NULL, 1, '2024-02-18 16:50:08', '2024-02-18 16:50:08'),
(317, 7, 'Coding and de-coding', NULL, 2, NULL, NULL, 1, '2024-02-18 16:50:21', '2024-02-18 16:50:21'),
(318, 11, 'Coding and de-coding', NULL, 2, NULL, NULL, 1, '2024-02-18 16:50:31', '2024-02-18 16:50:31'),
(319, 7, 'Ranking', NULL, 2, NULL, NULL, 1, '2024-02-18 16:50:44', '2024-02-18 16:50:44'),
(320, 11, 'Ranking', NULL, 2, NULL, NULL, 1, '2024-02-18 16:50:55', '2024-02-18 16:50:55'),
(321, 7, 'Mathematical Operation', NULL, 2, NULL, NULL, 1, '2024-02-18 16:51:53', '2024-02-18 16:51:53'),
(322, 11, 'Mathematical Operation', NULL, 2, NULL, NULL, 1, '2024-02-18 16:52:04', '2024-02-18 16:52:04'),
(323, 7, 'Blood relation', NULL, 2, NULL, NULL, 1, '2024-02-18 16:52:15', '2024-02-18 16:52:15'),
(324, 11, 'Blood relation', NULL, 2, NULL, NULL, 1, '2024-02-18 16:52:26', '2024-02-18 16:52:26'),
(325, 7, 'Direction and distance', NULL, 2, NULL, NULL, 1, '2024-02-18 16:52:38', '2024-02-18 16:52:38'),
(326, 11, 'Direction and distance', NULL, 2, NULL, NULL, 1, '2024-02-18 16:52:49', '2024-02-18 16:52:49'),
(327, 7, 'Clock and calendar', NULL, 2, NULL, NULL, 1, '2024-02-18 16:53:11', '2024-02-18 16:53:11'),
(328, 11, 'Clock and calendar', NULL, 2, NULL, NULL, 1, '2024-02-18 16:53:22', '2024-02-18 16:53:22'),
(329, 7, 'Seating arrangement', NULL, 2, NULL, NULL, 1, '2024-02-18 16:53:34', '2024-02-18 16:53:34'),
(330, 11, 'Seating arrangement', NULL, 2, NULL, NULL, 1, '2024-02-18 16:53:43', '2024-02-18 16:53:43'),
(331, 7, 'Odd man out', NULL, 2, NULL, NULL, 1, '2024-02-18 16:54:52', '2024-02-18 16:54:52'),
(332, 11, 'Odd man out', NULL, 2, NULL, NULL, 1, '2024-02-18 16:55:04', '2024-02-18 16:55:04'),
(333, 7, 'Incomplete figures', NULL, 2, NULL, NULL, 1, '2024-02-18 16:55:17', '2024-02-18 16:55:17'),
(334, 11, 'Incomplete figures', NULL, 2, NULL, NULL, 1, '2024-02-18 16:55:28', '2024-02-18 16:55:28'),
(335, 7, 'Cutting figures', NULL, 2, NULL, NULL, 1, '2024-02-18 16:55:52', '2024-02-18 16:55:52'),
(336, 11, 'Cutting figures', NULL, 2, NULL, NULL, 1, '2024-02-18 16:56:03', '2024-02-18 16:56:03'),
(337, 7, 'Embedded figures', NULL, 2, NULL, NULL, 1, '2024-02-18 16:56:16', '2024-02-18 16:56:16'),
(338, 11, 'Embedded figures', NULL, 2, NULL, NULL, 1, '2024-02-18 16:56:26', '2024-02-18 16:56:26'),
(339, 7, 'Water images', NULL, 2, NULL, NULL, 1, '2024-02-18 16:56:39', '2024-02-18 16:56:39'),
(340, 11, 'Water images', NULL, 2, NULL, NULL, 1, '2024-02-18 16:56:48', '2024-02-18 16:56:48'),
(341, 7, 'Mirror images', NULL, 2, NULL, NULL, 1, '2024-02-18 16:56:59', '2024-02-18 16:56:59'),
(342, 11, 'Mirror images', NULL, 2, NULL, NULL, 1, '2024-02-18 16:57:09', '2024-02-18 16:57:09'),
(343, 8, 'Comprehension Passage', NULL, 2, NULL, NULL, 1, '2024-02-18 16:59:54', '2024-02-18 16:59:54'),
(344, 8, 'Preposition', NULL, 2, NULL, NULL, 1, '2024-02-18 17:00:06', '2024-02-18 17:00:06'),
(345, 8, 'Article', NULL, 2, NULL, NULL, 1, '2024-02-18 17:00:18', '2024-02-18 17:00:18'),
(346, 8, 'Vocabulary', NULL, 2, NULL, NULL, 1, '2024-02-18 17:01:05', '2024-02-18 17:01:05'),
(347, 8, 'Verbs and Type', NULL, 2, NULL, NULL, 1, '2024-02-18 17:01:16', '2024-02-18 17:01:16'),
(348, 8, 'Confusing Words', NULL, 2, NULL, NULL, 1, '2024-02-18 17:02:25', '2024-02-18 17:02:25'),
(349, 8, 'Question Tags', NULL, 2, NULL, NULL, 1, '2024-02-18 17:02:37', '2024-02-18 17:02:37'),
(350, 8, 'Types of sentence', NULL, 2, NULL, NULL, 1, '2024-02-18 17:02:48', '2024-02-18 17:02:48'),
(351, 8, 'Tense forms', NULL, 2, NULL, NULL, 1, '2024-02-18 17:02:58', '2024-02-18 17:02:58'),
(352, 8, 'Kinds of Nouns', NULL, 2, NULL, NULL, 1, '2024-02-18 17:03:10', '2024-02-18 17:03:10'),
(353, 8, 'Kinds of Pronouns', NULL, 2, NULL, NULL, 1, '2024-02-18 17:04:34', '2024-02-18 17:04:34'),
(354, 8, 'Correct Spelling', NULL, 2, NULL, NULL, 1, '2024-02-18 17:04:49', '2024-02-18 17:04:49'),
(355, 8, 'Ordering of words in sentence', NULL, 2, NULL, NULL, 1, '2024-02-18 17:05:00', '2024-02-18 17:05:00'),
(356, 8, 'Sentence Formation', NULL, 2, NULL, NULL, 1, '2024-02-18 17:05:11', '2024-02-18 17:05:11'),
(357, 8, 'Antonyms', NULL, 2, NULL, NULL, 1, '2024-02-18 17:05:23', '2024-02-18 17:05:23'),
(358, 8, 'Synonyms', NULL, 2, NULL, NULL, 1, '2024-02-18 17:08:12', '2024-02-18 17:08:12'),
(359, 8, 'Adjectives', NULL, 2, NULL, NULL, 1, '2024-02-18 17:08:44', '2024-02-18 17:08:44'),
(360, 8, 'Interjection', NULL, 2, NULL, NULL, 1, '2024-02-18 17:08:55', '2024-02-18 17:08:55'),
(361, 8, 'Idioms and Phrases', NULL, 2, NULL, NULL, 1, '2024-02-18 17:09:06', '2024-02-18 17:09:06'),
(362, 8, 'Collective Nouns', NULL, 2, NULL, NULL, 1, '2024-02-18 17:09:19', '2024-02-18 17:09:19'),
(363, 8, 'Number', NULL, 2, NULL, NULL, 1, '2024-02-18 17:10:16', '2024-02-18 17:10:16'),
(364, 8, 'Gender', NULL, 2, NULL, NULL, 1, '2024-02-18 17:10:28', '2024-02-18 17:10:28'),
(365, 8, 'Adverbs', NULL, 2, NULL, NULL, 1, '2024-02-18 17:10:39', '2024-02-18 17:10:39'),
(366, 8, 'Rhyming Words', NULL, 2, NULL, NULL, 1, '2024-02-18 17:10:50', '2024-02-18 17:10:50'),
(367, 8, 'Singular/Plural', NULL, 2, NULL, NULL, 1, '2024-02-18 17:11:02', '2024-02-18 17:11:02'),
(373, 9, 'Different Types of Scientific Devices Used in Daily Life', NULL, 2, NULL, NULL, 1, '2024-02-18 17:14:41', '2024-02-18 17:14:41'),
(374, 9, 'Icons and Symbols of India: National Insignia, National Emblem, Sports,Animal etc. (Elementary awareness of Such symbols)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:22:34', '2024-02-18 17:22:34'),
(375, 9, 'Major Religions of India (Elementary awareness about founder, place of origin,Religious books and important ideas)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:22:47', '2024-02-18 17:22:47'),
(376, 9, 'Art and Culture (Music, Classical and Folk Dance);Renowned Personalities, Instrumental and Vocal Music, Major Dance Forms', NULL, 2, NULL, NULL, 1, '2024-02-18 17:23:01', '2024-02-18 17:23:01'),
(377, 9, 'Defence (Equivalent Ranks in three services, Weapons, Aircraft, Missiles & Warships (Elementary awareness)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:23:14', '2024-02-18 17:23:14'),
(378, 9, 'Sports and Games (India & World). Renowned personalities, major competitions and trophies associated With various games', NULL, 2, NULL, NULL, 1, '2024-02-18 17:25:31', '2024-02-18 17:25:31'),
(379, 9, 'Super Senses (How do plants and Animals sense their surroundings)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:25:42', '2024-02-18 17:25:42'),
(380, 9, 'Relationship between Animals and Human Beings', NULL, 2, NULL, NULL, 1, '2024-02-18 17:25:55', '2024-02-18 17:25:55'),
(381, 9, 'Taste and Digestion (Basic concepts)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:26:22', '2024-02-18 17:26:22'),
(382, 9, 'Cooking and Preserving Techniques', NULL, 2, NULL, NULL, 1, '2024-02-18 17:26:33', '2024-02-18 17:26:33'),
(383, 9, 'Germination and Seed Dispersal', NULL, 2, NULL, NULL, 1, '2024-02-18 17:27:04', '2024-02-18 17:27:04'),
(384, 9, 'Traditional Water Harvesting Techniques', NULL, 2, NULL, NULL, 1, '2024-02-18 17:27:37', '2024-02-18 17:27:37'),
(385, 9, 'Experiment with Water on Everyday Life', NULL, 2, NULL, NULL, 1, '2024-02-18 17:27:48', '2024-02-18 17:27:48'),
(386, 9, 'Water Pollution and Microbial Diseases', NULL, 2, NULL, NULL, 1, '2024-02-18 17:28:00', '2024-02-18 17:28:00'),
(387, 9, 'Concepts on Mountain Terrain and Lifestyle', NULL, 2, NULL, NULL, 1, '2024-02-18 17:28:11', '2024-02-18 17:28:11'),
(388, 9, 'Historical Monuments', NULL, 2, NULL, NULL, 1, '2024-02-18 17:29:04', '2024-02-18 17:29:04'),
(389, 9, 'Shape of Earth and Gravitation(Basic concepts)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:29:27', '2024-02-18 17:29:27'),
(390, 9, 'Non-Renewable Energy Sources(Fossil Fuels)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:29:38', '2024-02-18 17:29:38'),
(391, 9, 'Food, Culture, Habitat, Languages etc of various regions (Basic concepts)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:29:50', '2024-02-18 17:29:50'),
(392, 9, 'Names of young ones of different animals', NULL, 2, NULL, NULL, 1, '2024-02-18 17:30:00', '2024-02-18 17:30:00'),
(393, 9, 'Functions of Body Parts of Plants and Animals', NULL, 2, NULL, NULL, 1, '2024-02-18 17:31:00', '2024-02-18 17:31:00'),
(394, 9, 'International Organizations: Basic knowledge about structure, Functioning and objectives of United Nations, World Bank etc.', NULL, 2, NULL, NULL, 1, '2024-02-18 17:31:11', '2024-02-18 17:31:11'),
(395, 9, 'Indian Literary and Cultural Personalities: Names and fields of achievements', NULL, 2, NULL, NULL, 1, '2024-02-18 17:31:21', '2024-02-18 17:31:21'),
(396, 9, 'Indian Literary and Cultural Awards(Names of the award sand recent recipients)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:31:32', '2024-02-18 17:31:32'),
(397, 9, 'Natural Calamities (Flood and Earthquake)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:31:43', '2024-02-18 17:31:43'),
(398, 9, 'Evaporation, Condensation and Water Cycle (Basic concepts)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:31:57', '2024-02-18 17:31:57'),
(399, 9, 'Life of Farmers (Farming techniques)', NULL, 2, NULL, NULL, 1, '2024-02-18 17:32:08', '2024-02-18 17:32:08'),
(400, 9, 'Tribal Communities and Forest Produce', NULL, 2, NULL, NULL, 1, '2024-02-18 17:32:20', '2024-02-18 17:32:20'),
(401, 10, 'Rational Numbers', NULL, 2, NULL, NULL, 1, '2024-02-18 20:34:51', '2024-02-18 20:34:51'),
(402, 10, 'Linear Equations in One Variable', NULL, 2, NULL, NULL, 1, '2024-02-18 20:35:02', '2024-02-18 20:35:02'),
(403, 10, 'Understanding Quadrilaterals', NULL, 2, NULL, NULL, 1, '2024-02-18 20:35:12', '2024-02-18 20:35:12'),
(404, 10, 'Data Handling (Bar Graph and Line Graph)', NULL, 2, NULL, NULL, 1, '2024-02-18 20:35:22', '2024-02-18 20:35:22'),
(405, 10, 'Squares and Square Roots', NULL, 2, NULL, NULL, 1, '2024-02-18 20:35:35', '2024-02-18 20:35:35'),
(406, 10, 'Cubes and Cube Roots', NULL, 2, NULL, NULL, 1, '2024-02-18 20:35:46', '2024-02-18 20:35:46'),
(407, 10, 'Comparing Quantities (Percentage,Profit and Loss)', NULL, 2, NULL, NULL, 1, '2024-02-18 20:35:58', '2024-02-18 20:35:58'),
(408, 10, 'Algebraic Expressions and Identities', NULL, 2, NULL, NULL, 1, '2024-02-18 20:36:09', '2024-02-18 20:36:09'),
(409, 10, 'Area and Perimeters', NULL, 2, NULL, NULL, 1, '2024-02-18 20:36:18', '2024-02-18 20:36:18'),
(410, 10, 'Volumes and Surface Areas', NULL, 2, NULL, NULL, 1, '2024-02-18 20:36:29', '2024-02-18 20:36:29'),
(411, 10, 'Exponents and Powers', NULL, 2, NULL, NULL, 1, '2024-02-18 20:37:02', '2024-02-18 20:37:02'),
(412, 10, 'Playing with Numbers', NULL, 2, NULL, NULL, 1, '2024-02-18 20:37:13', '2024-02-18 20:37:13'),
(413, 10, 'Visualizing Solid Shapes', NULL, 2, NULL, NULL, 1, '2024-02-18 20:37:24', '2024-02-18 20:37:24'),
(414, 10, 'Triangles (Pythagoras Theorem)', NULL, 2, NULL, NULL, 1, '2024-02-18 20:37:34', '2024-02-18 20:37:34'),
(415, 10, 'Euler\'s Formula', NULL, 2, NULL, NULL, 1, '2024-02-18 20:37:43', '2024-02-18 20:37:43'),
(416, 10, 'Average, Median, Mode', NULL, 2, NULL, NULL, 1, '2024-02-18 20:37:54', '2024-02-18 20:37:54'),
(417, 10, 'Probability', NULL, 2, NULL, NULL, 1, '2024-02-18 20:38:03', '2024-02-18 20:38:03'),
(418, 10, 'Pie Chart', NULL, 2, NULL, NULL, 1, '2024-02-18 20:38:16', '2024-02-18 20:38:16'),
(419, 10, 'Direct & Inverse Proportions', NULL, 2, NULL, NULL, 1, '2024-02-18 20:38:27', '2024-02-18 20:38:27'),
(420, 10, 'Factorizations', NULL, 2, NULL, NULL, 1, '2024-02-18 20:38:41', '2024-02-18 20:38:41'),
(421, 10, 'Introduction to Graph', NULL, 2, NULL, NULL, 1, '2024-02-18 20:40:00', '2024-02-18 20:40:00'),
(422, 10, 'Unitary Method', NULL, 2, NULL, NULL, 1, '2024-02-18 20:40:11', '2024-02-18 20:40:11'),
(423, 10, 'Divisibility Exam', NULL, 2, NULL, NULL, 1, '2024-02-18 20:40:22', '2024-02-18 20:40:22'),
(424, 10, 'Triangles (Angle Sum Property)', NULL, 2, NULL, NULL, 1, '2024-02-18 20:40:32', '2024-02-18 20:40:32'),
(425, 10, 'Parallel Lines', NULL, 2, NULL, NULL, 1, '2024-02-18 20:40:41', '2024-02-18 20:40:41'),
(426, 10, 'Simple Interest and Compound Interest', NULL, 2, NULL, NULL, 1, '2024-02-18 20:40:54', '2024-02-18 20:40:54'),
(427, 10, 'Time and Work', NULL, 2, NULL, NULL, 1, '2024-02-18 20:41:03', '2024-02-18 20:41:03'),
(428, 10, 'Area and Perimeter of Circles', NULL, 2, NULL, NULL, 1, '2024-02-18 20:41:13', '2024-02-18 20:41:13'),
(429, 10, 'Algebraic Expression (Addition, Subtraction, Multiplication, Division)', NULL, 2, NULL, NULL, 1, '2024-02-18 20:41:24', '2024-02-18 20:41:24'),
(430, 12, 'Spotting Errors', NULL, 2, NULL, NULL, 1, '2024-02-18 20:42:19', '2024-02-18 20:42:19'),
(431, 12, 'Comprehension Passage', NULL, 2, NULL, NULL, 1, '2024-02-18 20:42:30', '2024-02-18 20:42:30'),
(432, 12, 'Antonyms', NULL, 2, NULL, NULL, 1, '2024-02-18 20:42:44', '2024-02-18 20:42:44'),
(433, 12, 'Synonyms', NULL, 2, NULL, NULL, 1, '2024-02-18 20:42:58', '2024-02-18 20:42:58'),
(434, 12, 'Prepositions', NULL, 2, NULL, NULL, 1, '2024-02-18 20:43:10', '2024-02-18 20:48:29'),
(435, 12, 'Articles', NULL, 2, NULL, NULL, 1, '2024-02-18 20:43:20', '2024-02-18 20:48:57'),
(436, 12, 'Types of Verbs', NULL, 2, NULL, NULL, 1, '2024-02-18 20:43:31', '2024-02-18 20:49:17'),
(437, 12, 'Tense Form', NULL, 2, NULL, NULL, 1, '2024-02-18 20:43:43', '2024-02-18 20:43:43'),
(438, 12, 'Narration', NULL, 2, NULL, NULL, 1, '2024-02-18 20:43:53', '2024-02-18 20:43:53'),
(439, 12, 'Voices', NULL, 2, NULL, NULL, 1, '2024-02-18 20:44:48', '2024-02-18 20:44:48'),
(440, 12, 'Modals', NULL, 2, NULL, NULL, 1, '2024-02-18 20:45:02', '2024-02-18 20:45:02'),
(441, 12, 'Confusing Words', NULL, 2, NULL, NULL, 1, '2024-02-18 20:45:12', '2024-02-18 20:45:12'),
(442, 12, 'Subject-Verb Agreement', NULL, 2, NULL, NULL, 1, '2024-02-18 20:45:22', '2024-02-18 20:45:22'),
(443, 12, 'Correct Spellings', NULL, 2, NULL, NULL, 1, '2024-02-18 20:45:32', '2024-02-18 20:45:32'),
(444, 12, 'Order of words in a sentence', NULL, 2, NULL, NULL, 1, '2024-02-18 20:45:42', '2024-02-18 20:45:42'),
(445, 12, 'Idioms and Phrases', NULL, 2, NULL, NULL, 1, '2024-02-18 20:45:53', '2024-02-18 20:45:53'),
(446, 12, 'Sentence Improvement', NULL, 2, NULL, NULL, 1, '2024-02-18 20:46:03', '2024-02-18 20:46:03'),
(447, 12, 'Change of sentence as directed', NULL, 2, NULL, NULL, 1, '2024-02-18 20:46:12', '2024-02-18 20:46:12'),
(448, 12, 'Sentence Formation', NULL, 2, NULL, NULL, 1, '2024-02-18 20:46:22', '2024-02-18 20:46:22'),
(449, 12, 'Types of Sentences', NULL, 2, NULL, NULL, 1, '2024-02-18 20:46:33', '2024-02-18 20:46:33'),
(450, 12, 'Phrase and Clauses', NULL, 2, NULL, NULL, 1, '2024-02-18 20:50:55', '2024-02-18 20:50:55'),
(451, 12, 'Kinds of Noun', NULL, 2, NULL, NULL, 1, '2024-02-18 20:51:14', '2024-02-18 20:51:14'),
(452, 12, 'Adjectives', NULL, 2, NULL, NULL, 1, '2024-02-18 20:51:25', '2024-02-18 20:51:25'),
(453, 12, 'Interjection', NULL, 2, NULL, NULL, 1, '2024-02-18 20:51:40', '2024-02-18 20:51:40'),
(454, 12, 'Question Tags', NULL, 2, NULL, NULL, 1, '2024-02-18 20:51:52', '2024-02-18 20:51:52'),
(455, 12, 'Adverbs', NULL, 2, NULL, NULL, 1, '2024-02-18 20:53:57', '2024-02-18 20:53:57'),
(456, 12, 'Conjunctions', NULL, 2, NULL, NULL, 1, '2024-02-18 20:54:14', '2024-02-18 20:54:14'),
(457, 12, 'Conditions', NULL, 2, NULL, NULL, 1, '2024-02-18 20:54:25', '2024-02-18 20:54:25'),
(458, 12, 'Comparison of Adjectives', NULL, 2, NULL, NULL, 1, '2024-02-18 20:54:37', '2024-02-18 20:54:37'),
(459, 12, 'Personal Pronoun', NULL, 2, NULL, NULL, 1, '2024-02-18 20:54:50', '2024-02-18 20:54:50'),
(460, 12, 'Change of Gender', NULL, 2, NULL, NULL, 1, '2024-02-18 20:55:01', '2024-02-18 20:55:01'),
(461, 12, 'Change of Number', NULL, 2, NULL, NULL, 1, '2024-02-18 20:55:11', '2024-02-18 20:55:11'),
(462, 13, 'Fossil Fuel: Coal and Petroleum', NULL, 2, NULL, NULL, 1, '2024-02-18 20:56:12', '2024-02-18 20:56:12'),
(463, 13, 'Combustion and Flame', NULL, 2, NULL, NULL, 1, '2024-02-18 20:56:23', '2024-02-18 20:56:23'),
(464, 13, 'Cell Structure and Function', NULL, 2, NULL, NULL, 1, '2024-02-18 20:56:50', '2024-02-18 20:56:50'),
(465, 13, 'Reproduction in Plants And Animals', NULL, 2, NULL, NULL, 1, '2024-02-18 20:57:00', '2024-02-18 21:03:43'),
(466, 13, 'Force, Friction and Pressure', NULL, 2, NULL, NULL, 1, '2024-02-18 20:57:12', '2024-02-18 20:57:12'),
(468, 13, 'Sound and its basics', NULL, 2, NULL, NULL, 1, '2024-02-18 20:57:31', '2024-02-18 21:01:02'),
(469, 13, 'Reflection and Dispersion of Light', NULL, 2, NULL, NULL, 1, '2024-02-18 20:57:42', '2024-02-18 21:02:08'),
(470, 13, 'Metals and Non Metals', NULL, 2, NULL, NULL, 1, '2024-02-18 20:57:53', '2024-02-18 21:06:09'),
(471, 13, 'Synthetic Fibers and Plastics', NULL, 2, NULL, NULL, 1, '2024-02-18 20:58:04', '2024-02-18 21:06:20'),
(472, 13, 'Chemical Effects of Electric Current', NULL, 2, NULL, NULL, 1, '2024-02-18 21:06:32', '2024-02-18 21:06:32'),
(473, 13, 'Stars and Solar Systems', NULL, 2, NULL, NULL, 1, '2024-02-18 21:07:32', '2024-02-18 21:07:32'),
(474, 13, 'Pollution of Air and Water', NULL, 2, NULL, NULL, 1, '2024-02-18 21:07:42', '2024-02-18 21:07:42'),
(475, 13, 'Global Warming', NULL, 2, NULL, NULL, 1, '2024-02-18 21:07:51', '2024-02-18 21:07:51'),
(476, 13, 'Micro-Organisms', NULL, 2, NULL, NULL, 1, '2024-02-18 21:08:01', '2024-02-18 21:08:01'),
(477, 13, 'Some Natural Phenomenon', NULL, 2, NULL, NULL, 1, '2024-02-18 21:08:12', '2024-02-18 21:08:12'),
(478, 13, 'How to find calorific value of fuel?', NULL, 2, NULL, NULL, 1, '2024-02-18 21:08:22', '2024-02-18 21:08:22'),
(479, 13, 'Electroplating and Artificial Jewellery', NULL, 2, NULL, NULL, 1, '2024-02-18 21:08:33', '2024-02-18 21:08:33'),
(480, 13, 'Relation between types of friction', NULL, 2, NULL, NULL, 1, '2024-02-18 21:08:45', '2024-02-18 21:08:45'),
(481, 13, 'Cropping Seasons', NULL, 2, NULL, NULL, 1, '2024-02-18 21:08:59', '2024-02-18 21:08:59'),
(482, 13, 'Agricultural Practices', NULL, 2, NULL, NULL, 1, '2024-02-18 21:09:09', '2024-02-18 21:09:09'),
(483, 13, 'Conservation of Plants and Animals', NULL, 2, NULL, NULL, 1, '2024-02-18 21:09:46', '2024-02-18 21:09:46'),
(484, 13, 'Biosphere Reserves, National Parks and Sanctuaries', NULL, 2, NULL, NULL, 1, '2024-02-18 21:10:03', '2024-02-18 21:10:03'),
(485, 13, 'Reaching the age of Adolescence', NULL, 2, NULL, NULL, 1, '2024-02-18 21:10:16', '2024-02-18 21:10:16'),
(486, 13, 'Changes during Puberty', NULL, 2, NULL, NULL, 1, '2024-02-18 21:10:28', '2024-02-18 21:10:28'),
(487, 13, 'Endocrine Glands and Hormones', NULL, 2, NULL, NULL, 1, '2024-02-18 21:10:38', '2024-02-18 21:10:38'),
(488, 14, 'Revolt of 1857', NULL, 2, NULL, NULL, 1, '2024-02-18 21:11:26', '2024-02-18 21:11:26'),
(489, 14, 'Freedom Fighters', NULL, 2, NULL, NULL, 1, '2024-02-18 21:11:36', '2024-02-18 21:11:36'),
(490, 14, 'Important Freedom Movements', NULL, 2, NULL, NULL, 1, '2024-02-18 21:11:46', '2024-02-18 21:11:46'),
(491, 14, 'Social and Caste Reforms', NULL, 2, NULL, NULL, 1, '2024-02-18 21:11:54', '2024-02-18 21:11:54'),
(492, 14, 'Resources and sustainable development', NULL, 2, NULL, NULL, 1, '2024-02-18 21:12:04', '2024-02-18 21:12:04'),
(493, 14, 'Rock cycle of water cycle', NULL, 2, NULL, NULL, 1, '2024-02-18 21:12:15', '2024-02-18 21:12:15'),
(494, 14, 'Pressure and Wind System', NULL, 2, NULL, NULL, 1, '2024-02-18 21:12:25', '2024-02-18 21:12:25'),
(495, 14, 'Land Soil and Water Resources', NULL, 2, NULL, NULL, 1, '2024-02-18 21:12:35', '2024-02-18 21:12:35'),
(496, 14, 'Minerals and Power Resources', NULL, 2, NULL, NULL, 1, '2024-02-18 21:12:45', '2024-02-18 21:12:45'),
(497, 14, 'Indian Constitution and Secularism', NULL, 2, NULL, NULL, 1, '2024-02-18 21:12:54', '2024-02-18 21:12:54'),
(498, 14, 'Importance of Parliament', NULL, 2, NULL, NULL, 1, '2024-02-18 21:13:03', '2024-02-18 21:13:03'),
(499, 14, 'Types of Agriculture', NULL, 2, NULL, NULL, 1, '2024-02-18 21:13:15', '2024-02-18 21:13:15'),
(500, 14, 'Types of Government and Different tiers of Government', NULL, 2, NULL, NULL, 1, '2024-02-18 21:13:24', '2024-02-18 21:13:24'),
(501, 14, 'Understanding Markets', NULL, 2, NULL, NULL, 1, '2024-02-18 21:13:33', '2024-02-18 21:13:33'),
(502, 14, 'Elections', NULL, 2, NULL, NULL, 1, '2024-02-18 21:13:42', '2024-02-18 21:13:42'),
(503, 14, 'Role of Government in Health', NULL, 2, NULL, NULL, 1, '2024-02-18 21:14:25', '2024-02-18 21:14:25'),
(504, 14, 'Delhi Sultanate', NULL, 2, NULL, NULL, 1, '2024-02-18 21:14:34', '2024-02-18 21:14:34'),
(505, 14, 'Mughals', NULL, 2, NULL, NULL, 1, '2024-02-18 21:14:46', '2024-02-18 21:14:46'),
(506, 14, 'Bhakti and Sufi Movement', NULL, 2, NULL, NULL, 1, '2024-02-18 21:14:55', '2024-02-18 21:14:55'),
(507, 14, 'Interior of Earth', NULL, 2, NULL, NULL, 1, '2024-02-18 21:15:06', '2024-02-18 21:15:06'),
(508, 14, 'Climate Change', NULL, 2, NULL, NULL, 1, '2024-02-18 21:15:17', '2024-02-18 21:15:17'),
(509, 14, 'Earthquakes and Major Land Forms', NULL, 2, NULL, NULL, 1, '2024-02-18 21:15:27', '2024-02-18 21:15:27'),
(510, 14, 'Types of Rainfall', NULL, 2, NULL, NULL, 1, '2024-02-18 21:15:39', '2024-02-18 21:15:39'),
(511, 14, 'Major Grasslands', NULL, 2, NULL, NULL, 1, '2024-02-18 21:15:49', '2024-02-18 21:15:49'),
(512, 14, 'Types of Forests', NULL, 2, NULL, NULL, 1, '2024-02-18 21:15:58', '2024-02-18 21:15:58'),
(513, 14, 'Means of Transport', NULL, 2, NULL, NULL, 1, '2024-02-18 21:16:56', '2024-02-18 21:16:56'),
(514, 14, 'Communication', NULL, 2, NULL, NULL, 1, '2024-02-18 21:17:08', '2024-02-18 21:17:08'),
(515, 14, 'Life in deserts', NULL, 2, NULL, NULL, 1, '2024-02-18 21:17:18', '2024-02-18 21:17:18'),
(516, 14, 'Panchayat System', NULL, 2, NULL, NULL, 1, '2024-02-18 21:17:30', '2024-02-18 21:17:30'),
(517, 14, 'Local Self Government', NULL, 2, NULL, NULL, 1, '2024-02-18 21:17:41', '2024-02-18 21:17:41'),
(518, 14, 'Law and Social Justice', NULL, 2, NULL, NULL, 1, '2024-02-18 21:17:53', '2024-02-18 21:22:03');
INSERT INTO `topics` (`id`, `course_id`, `topic`, `duration`, `type`, `video_link`, `pdf`, `status`, `created_at`, `updated_at`) VALUES
(519, 14, 'Judiciary and Criminal Justice System', NULL, 2, NULL, NULL, 1, '2024-02-18 21:18:06', '2024-02-18 21:18:06'),
(520, 14, 'Marginalisation', NULL, 2, NULL, NULL, 1, '2024-02-18 21:19:02', '2024-02-18 21:19:02'),
(521, 14, 'Public Facilities', NULL, 2, NULL, NULL, 1, '2024-02-18 21:19:12', '2024-02-18 21:19:12'),
(522, 14, 'Natural Vegetation and Wildlife', NULL, 2, NULL, NULL, 1, '2024-02-18 21:19:25', '2024-02-18 21:19:25'),
(523, 14, 'Industries', NULL, 2, NULL, NULL, 1, '2024-02-18 21:20:29', '2024-02-18 21:20:29'),
(524, 14, 'Human Resources', NULL, 2, NULL, NULL, 1, '2024-02-18 21:20:41', '2024-02-18 21:20:41'),
(525, 14, 'Changes in the Arts', NULL, 2, NULL, NULL, 1, '2024-02-18 21:20:55', '2024-02-18 21:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2023-04-23 02:06:47', '$2y$10$CM9nwFXFpVv83S7imVBJc.liJEvDhJqvxra5b4CID7r4Uw5Ylw3D.', NULL, NULL, '2024-02-04 23:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `whychooses`
--

CREATE TABLE `whychooses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `whychoose_image` varchar(255) NOT NULL,
  `whychoose_title` varchar(255) DEFAULT NULL,
  `whychoose_description` text NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whychooses`
--

INSERT INTO `whychooses` (`id`, `whychoose_image`, `whychoose_title`, `whychoose_description`, `status`, `created_at`, `updated_at`) VALUES
(5, '1708086762.jpg', NULL, '24x7 availability of pre-recorded video\'s for all subjects and topics', 1, '2024-02-16 17:30:19', '2024-02-16 17:33:42'),
(6, '1708086713.png', NULL, 'Weekly Interactive Live Classes with the best experienced teachers', 1, '2024-02-16 17:31:53', '2024-02-16 17:31:53'),
(7, '1708108730.png', NULL, 'Question and Answer Sessions', 1, '2024-02-16 17:32:14', '2024-02-16 23:39:48'),
(8, '1708086968.webp', NULL, 'Mobile app – Android/iOS mobile devices', 1, '2024-02-16 17:36:08', '2024-02-16 17:36:08'),
(9, '1708087152.jpeg', NULL, 'Well Structured Study Materials and Quick guides', 1, '2024-02-16 17:39:12', '2024-02-16 17:39:12'),
(10, '1708087231.png', NULL, 'Strong fundamentals', 1, '2024-02-16 17:40:31', '2024-02-16 17:40:31'),
(11, '1708109075.jpeg', NULL, 'Topic wise mock tests and solutions', 1, '2024-02-16 23:44:35', '2024-02-16 23:44:35'),
(12, '1708109105.jpeg', NULL, 'Weekly Tests and solutions', 1, '2024-02-16 23:45:05', '2024-02-16 23:45:05'),
(13, '1708109123.jpeg', NULL, 'Grad Tests - Subject wise and solutions', 1, '2024-02-16 23:45:23', '2024-02-16 23:45:23'),
(14, '1708109141.jpeg', NULL, 'Grad Tests (whole syllabus of all subjects) and solutions', 1, '2024-02-16 23:45:41', '2024-02-16 23:45:41'),
(15, '1708109162.jpeg', NULL, 'Regular feedbacks from Students and Parents', 1, '2024-02-16 23:46:02', '2024-02-16 23:46:02'),
(16, '1708109605.jpeg', NULL, 'Progress/completion percentage Dashboard', 1, '2024-02-16 23:53:25', '2024-02-16 23:53:25'),
(17, '1708109659.jpeg', NULL, 'All reminders and communications will be sent over Normal message, WhatsApp message and Email about live classes/mock tests/grand tests', 1, '2024-02-16 23:54:19', '2024-02-16 23:54:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_billing_address`
--
ALTER TABLE `booking_billing_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_data`
--
ALTER TABLE `booking_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_product`
--
ALTER TABLE `booking_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competitite_exams`
--
ALTER TABLE `competitite_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquires`
--
ALTER TABLE `enquires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freesessions`
--
ALTER TABLE `freesessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_email_unique` (`email`),
  ADD UNIQUE KEY `instructors_phone_unique` (`phone`);

--
-- Indexes for table `liveclasses`
--
ALTER TABLE `liveclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourvalues`
--
ALTER TABLE `ourvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_login_history`
--
ALTER TABLE `student_login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `whychooses`
--
ALTER TABLE `whychooses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_billing_address`
--
ALTER TABLE `booking_billing_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `booking_data`
--
ALTER TABLE `booking_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `booking_product`
--
ALTER TABLE `booking_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `competitite_exams`
--
ALTER TABLE `competitite_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `enquires`
--
ALTER TABLE `enquires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `freesessions`
--
ALTER TABLE `freesessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `liveclasses`
--
ALTER TABLE `liveclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ourvalues`
--
ALTER TABLE `ourvalues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_login_history`
--
ALTER TABLE `student_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whychooses`
--
ALTER TABLE `whychooses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

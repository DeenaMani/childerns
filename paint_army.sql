-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 04:39 AM
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
-- Database: `paint_army`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `about_description` longtext NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `about_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ABOUT US', '<p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.4px; word-spacing: 3px;\">I, Chinnapa Reddy D, initiated the establishment of PAINTARMY with the primary goal of contributing to the \"education of very needy and poor children,\" supporting \"intellectually disabled individuals,\" and actively participating in efforts to \"save the environment\" to the best of our ability. Many of us share the desire to make a positive impact on society, but our busy lives, encompassing job pressures, family responsibilities, and other personal commitments, often hinder us from dedicating time to such noble causes.</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.4px; word-spacing: 3px;\">Puneeth Rajkumar, commonly known as Appu (17 March 1975 – 29 October 2021), the renowned Indian actor, philanthropist, playback singer, television presenter, and producer in Kannada cinema, serves as a profound inspiration for me to take this step in founding the PAINTARMY trust. Also, the life stories of Sudha Murthy, Dr. A. P. J. Abdul Kalam and Swami Vivekananda have greatly influenced me, motivating me to initiate positive change and contribute to society.</p><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.4px; word-spacing: 3px;\">Based on the money getting pooled, activities will be planned and executed. All details will be updated in the website and communicated to all members of PAINTARMY community.</p>', 1, '2024-01-30 05:59:57', '2024-02-16 12:09:59'),
(2, 'ABOUT US', '<p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.4px; word-spacing: 3px;\">I, Chinnapa Reddy D, initiated the establishment of PAINTARMY with the primary goal of contributing to the \"education of very needy and poor children,\" supporting \"intellectually disabled individuals,\" and actively participating in efforts to \"save the environment\" to the best of our ability. Many of us share the desire to make a positive impact on society, but our busy lives, encompassing job pressures, family responsibilities, and other personal commitments, often hinder us from dedicating time to such noble causes.</p><p style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.4px; word-spacing: 3px;\">Puneeth Rajkumar, commonly known as Appu (17 March 1975 – 29 October 2021), the renowned Indian actor, philanthropist, playback singer, television presenter, and producer in Kannada cinema, serves as a profound inspiration for me to take this step in founding the PAINTARMY trust. Also, the life stories of Sudha Murthy, Dr. A. P. J. Abdul Kalam and Swami Vivekananda have greatly influenced me, motivating me to initiate positive change and contribute to society.</p><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.4px; word-spacing: 3px;\">Based on the money getting pooled, activities will be planned and executed. All details will be updated in the website and communicated to all members of PAINTARMY community.</p>', 1, '2024-02-17 21:26:23', '2024-02-17 21:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `addgalleries`
--

CREATE TABLE `addgalleries` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video_link` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addgalleries`
--

INSERT INTO `addgalleries` (`id`, `gallery_id`, `title`, `image`, `video_link`, `updated_at`, `created_at`) VALUES
(2, 2, 'Gallery', '1707997286.jpg', 'https://www.youtube.com/watch?v=oGOO94rRzCQ&ab_channel=CodewithAbdullahNahian', '2024-02-15 06:11:26', '2024-02-15 06:11:26'),
(3, 2, 'Gallery', '1707997312.jpg', 'https://www.youtube.com/watch?v=oGOO94rRzCQ&ab_channel=CodewithAbdullahNahian', '2024-02-15 06:11:52', '2024-02-15 06:11:52'),
(4, 1, 'Event', '1707997433.jpg', NULL, '2024-02-15 06:13:53', '2024-02-15 06:13:53'),
(5, 1, 'Event', '1707997447.jpg', NULL, '2024-02-15 06:14:07', '2024-02-15 06:14:07'),
(6, 3, 'Gallery', '1708227429.jpg', NULL, '2024-02-17 22:07:09', '2024-02-17 22:07:09'),
(7, 4, 'Gallery', '1708227479.jpg', NULL, '2024-02-17 22:07:59', '2024-02-17 22:07:59');

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
(1, '1707997591.jpg', 'Change The life', 'lend a helping hand to who those need', 1, '2023-04-20 23:39:18', '2024-02-15 06:16:31'),
(2, '1707997642.jpg', 'Change The life', 'Every Good Activity Is A Charity', 1, '2024-01-30 04:16:28', '2024-02-15 06:17:22'),
(3, '1708224420.jpg', 'Change the World', 'Help the Children Who need in help', 1, '2024-02-17 21:17:00', '2024-02-17 21:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `district` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `country_id`, `state_id`, `district`, `place`, `pincode`, `status`, `updated_at`, `created_at`) VALUES
(1, 'admin', NULL, NULL, 'admin@hashref.org', '1234567890', 1, 2, 'Dharmapuri', 'senu mansion', '636 704', 1, '2024-02-16 04:47:09', '2024-02-16 04:06:26'),
(2, 'admin', NULL, NULL, 'info@mattisirvioartgalleria.com', '8072921221', 1, 2, 'Dharmapuri', 'seenu manshion', '636 704', 1, '2024-02-17 06:40:04', '2024-02-17 06:40:04'),
(3, 'admin', NULL, NULL, 'admin1234@gmail.com', '9066418026', 1, 1, 'Dharmapuri', 'seenu manshion', '636 704', 1, '2024-02-17 06:44:17', '2024-02-17 06:44:17'),
(4, 'admin', NULL, 'admin', 'admin@gmail.com', '1234567896', 1, 1, 'Dharmapuri', 'seenu manshion', '636 704', 1, '2024-02-17 06:45:55', '2024-02-17 06:45:55'),
(5, 'admin', NULL, 'admin', 'deenam1910@gmail.com', '1234567823', 1, 1, 'Dharmapuri', 'seenu manshion', '636 704', 1, '2024-02-17 06:46:23', '2024-02-17 06:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE `contactforms` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `status` tinyint(11) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `status`, `updated_at`, `created_at`) VALUES
(1, 'India', 1, '2024-02-16 02:11:52', '2024-02-16 02:11:52'),
(2, 'Japan', 1, '2024-02-17 21:46:21', '2024-02-17 21:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `donates`
--

CREATE TABLE `donates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `upi_number` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donates`
--

INSERT INTO `donates` (`id`, `name`, `account_number`, `bank`, `ifsc_code`, `phone`, `email`, `upi_number`, `updated_at`, `created_at`) VALUES
(1, 'Paint Army', 'XXXX XXXX XXXX XXXX', 'SBI', 'SBIN0000781', '+91 XXXXXXXXXX', 'paintarmy@gmail.com', '+91 XXXXXXXXXX', '2024-02-16 11:24:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `meeting_link` text NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `type`, `title`, `description`, `date`, `meeting_link`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'Intending To Organize A One-Hour', '<span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.3px; background-color: rgb(244, 244, 244);\">Currently, intending to organize a one-hour Zoom meeting every three months to discuss financial planning, activities, and events.</span>', '2024-04-13', 'https://us05web.zoom.us/j/83426909282?pwd=EEM22LXD3i1gigkRhtaXUWVGgpuxao.1', 1, '2024-02-15 06:53:35', '2024-02-15 06:53:02'),
(2, 2, 'Intending To Organize A One-Hour', '<span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.3px; background-color: rgb(244, 244, 244);\">Currently, considering an annual physical gathering to deliberate on financial planning, activities, and events, and to celebrate the achievements resulting from our collective contributions towards creating positive change.</span>', '2024-02-17', 'https://www.google.com/maps/dir//D.No+4%2F81+2nd+floor,+Soodamani+St,+Dharmapuri,+Tamil+Nadu+636701/@12.1276079,78.0729257,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3bac17a6ec589dd5:0x29a5855940dfab55!2m2!1d78.1553269!2d12.1276144?entry=ttu', 1, '2024-02-15 07:02:04', '2024-02-15 06:57:12');

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
-- Table structure for table `financials`
--

CREATE TABLE `financials` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financials`
--

INSERT INTO `financials` (`id`, `year`, `total_amount`, `status`, `updated_at`, `created_at`) VALUES
(1, '2014', 123123, 1, '2024-02-15 03:20:41', '2024-02-15 03:14:37'),
(2, '2015', 4352454, 1, '2024-02-15 03:30:12', '2024-02-15 03:21:32'),
(3, '2016', 5234, 1, '2024-02-15 03:30:16', '2024-02-15 03:22:51'),
(4, '2017', 333333, 1, '2024-02-17 04:26:35', '2024-02-17 04:26:35'),
(5, '2018', 412341, 1, '2024-02-17 04:26:47', '2024-02-17 04:26:47'),
(6, '2019', 41234123, 1, '2024-02-17 04:26:58', '2024-02-17 04:26:58'),
(7, '2020', 4213423, 1, '2024-02-17 04:27:11', '2024-02-17 04:27:11'),
(8, '2021', 3242423, 1, '2024-02-17 04:27:35', '2024-02-17 04:27:35'),
(9, '2022', 4123413, 1, '2024-02-17 04:27:47', '2024-02-17 04:27:47'),
(10, '2023', 4123, 1, '2024-02-17 04:27:56', '2024-02-17 04:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video_link` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `year`, `type`, `title`, `image`, `video_link`, `status`, `updated_at`, `created_at`) VALUES
(1, '2014', 1, 'Gallery Event', '1707989290.jpg', NULL, 1, '2024-02-15 03:58:10', '2024-02-15 03:58:10'),
(2, '2014', 2, 'Gallery Event', '1707989356.jpg', 'https://www.youtube.com/watch?v=oGOO94rRzCQ&ab_channel=CodewithAbdullahNahian', 1, '2024-02-17 14:03:14', '2024-02-15 03:59:16'),
(3, '2015', 1, 'galley', '1708189131.jpg', NULL, 1, '2024-02-17 11:28:51', '2024-02-17 11:28:51'),
(4, '2015', 2, 'Gallery', '1708189265.jpg', 'https://www.youtube.com/watch?v=oGOO94rRzCQ&ab_channel=CodewithAbdullahNahian', 1, '2024-02-17 14:20:40', '2024-02-17 11:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `video_link` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `title`, `image`, `description`, `video_link`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Goal & Vision', '1707973805.jpg', '<ul class=\"list-unstyled d-grid gap-2\" style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: 0.4px; word-spacing: 3px; background-color: rgb(244, 244, 244); display: grid !important; gap: 0.5rem !important;\"><li style=\"padding-left: 26px; position: relative;\">Embrace the education of underprivileged children.</li><li style=\"padding-left: 26px; position: relative;\">Support individuals with intellectual disabilities.</li><li style=\"padding-left: 26px; position: relative;\">Id elderly individuals in dire circumstances.</li><li style=\"padding-left: 26px; position: relative;\">Assist those affected by disasters.</li><li style=\"padding-left: 26px; position: relative;\">Champion environmental preservation initiatives.</li><li style=\"padding-left: 26px; position: relative;\">Provide essential water and electricity infrastructure to the very rural villages.</li><li style=\"padding-left: 26px; position: relative;\">Cultivate sports and play areas for children\'s development.</li><li style=\"padding-left: 26px; position: relative;\">Coordinate initiatives focused on minimizing plastic usage, preserving water resources, and promoting health enhancements through the consumption of natural foods, engagement in physical fitness activities, participation in sports, and the practice of yoga.</li><li style=\"padding-left: 26px; position: relative;\">Facilitate personality development programs for children and students.</li><li style=\"padding-left: 26px; position: relative;\">Organize games and sports activities.</li></ul>', NULL, 1, '2024-02-16 12:10:28', '2024-02-14 23:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `inspirations`
--

CREATE TABLE `inspirations` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inspirations`
--

INSERT INTO `inspirations` (`id`, `image`, `name`, `status`, `updated_at`, `created_at`) VALUES
(1, '1707976400.jpg', 'Puneeth Rajkumar', 1, '2024-02-15 01:03:54', '2024-02-15 00:23:20'),
(2, '1707978618.jpg', 'SUDHA MURTHY', 1, '2024-02-15 01:00:18', '2024-02-15 01:00:18'),
(3, '1707978654.jpg', 'DR. APJ ABDUL KALAM', 1, '2024-02-15 01:03:56', '2024-02-15 01:00:54'),
(5, '1707978869.jpg', 'SWAMI VIVEKANANDA', 1, '2024-02-15 01:04:29', '2024-02-15 01:04:29');

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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `fav_icon` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_2` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `google_map_link` text DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `insta` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `background_image_2` varchar(255) DEFAULT NULL,
  `thoughts` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `logo`, `fav_icon`, `phone`, `phone_2`, `email`, `email_2`, `currency`, `address`, `google_map_link`, `youtube`, `twitter`, `insta`, `facebook`, `pinterest`, `background_image`, `background_image_2`, `thoughts`, `created_at`, `updated_at`) VALUES
(1, 'Paint Army', 'logo-1708073532.png', 'fav-icon-1708073532.png', '+91 XXXXXXXXXX', NULL, 'paintarmy@gmail.com', NULL, '₹', 'XXXXXXX, XXXXXXX, Madanapalle, Andra Pradesh - 517325', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3900.77385061395!2d78.15532759999998!3d12.127620100000012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bac17a6ec589dd5%3A0x29a5855940dfab55!2sHASHREF%20TECHNOLOGIES%20PRIVATE%20LIMITED!5e0!3m2!1sen!2sin!4v1707737469774!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, NULL, NULL, NULL, NULL, 'contact-image1708195606.jpg', 'contact-image1708227081.jpg', 'Doesn\'t matter how much you contribute and how frequently you contribute. Empower change with your small and possible contributions only!! Your financial assistance fuels initiatives that bring hope, education, and brighter futures to those in need. Together, we can make a difference. Please join hands with us to build a stronger, more compassionate community.', NULL, '2024-02-17 22:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state_name`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'Tamil Nadu', 1, '2024-02-16 03:07:01', '2024-02-16 03:05:44'),
(2, 1, 'Kerala', 1, '2024-02-16 03:07:10', '2024-02-16 03:07:10'),
(3, 1, 'Karnataka', 1, '2024-02-16 03:08:35', '2024-02-16 03:08:35'),
(6, 2, 'Tokyo', 1, '2024-02-17 21:46:37', '2024-02-17 21:46:37'),
(7, 2, 'Kyoto', 1, '2024-02-17 21:47:10', '2024-02-17 21:47:10');

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
(1, 'Terms And Conditions', '<p>Terms And Conditions<br></p>', '2024-02-05 05:34:23', '2024-02-05 00:04:23'),
(2, 'Privacy And Policy', '<p>Privacy And Policy<br></p>', '2024-02-05 05:37:06', '2024-02-05 00:07:06');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addgalleries`
--
ALTER TABLE `addgalleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `financials`
--
ALTER TABLE `financials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspirations`
--
ALTER TABLE `inspirations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addgalleries`
--
ALTER TABLE `addgalleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donates`
--
ALTER TABLE `donates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financials`
--
ALTER TABLE `financials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inspirations`
--
ALTER TABLE `inspirations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

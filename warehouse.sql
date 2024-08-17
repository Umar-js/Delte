-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 08:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `is_active`, `firstname`, `lastname`, `img`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Super Admin', NULL, NULL, 'superadmin@gmail.com', NULL, '$2y$10$vQkLcTvJmUt0DPRrrWoSIeWPOWEAahnBZ1xv/O5k5v/ffmHDkHse.', 'CRA33JfHusSqI7hLOjLkDcMXwYaKgbo4T6QYcFqJAk0oinNgZgnOuICbn9OU', '2022-06-08 12:11:37', '2023-02-03 10:21:09'),
(4, 2, 1, 'Admin', NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$OGoYmiqzguFvWM3urJiPFuUtQET1kR.HfB9esyQPSGC8.4SMCMbxC', 'ln6bbCsVen9CF0z2SgwFstYpKdS4IXTvjUlJX0k2sazOXBryEPzbjCfhyaG1', '2022-01-05 10:10:28', '2023-04-11 11:11:17'),
(13, 4, 1, 'Owner', 'Butt g', NULL, 'owner@gmail.com', NULL, '$2y$10$vQkLcTvJmUt0DPRrrWoSIeWPOWEAahnBZ1xv/O5k5v/ffmHDkHse.', NULL, '2022-12-20 15:25:08', '2023-04-15 21:05:22'),
(30, 3, 1, 'Subhan', 'Shahid', NULL, 'employee@gmail.com', NULL, '$2y$10$VwjY571IK09bITF.O5R4aeZJgFuxMR2fFM/omXlim6PwcYjhqcuIW', NULL, '2023-04-04 17:54:50', '2023-04-12 01:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`email`, `token`, `created_at`, `updated_at`) VALUES
('abdulhanan4295@gmail.com', '$2y$10$MYAZCMj/b0es0srU2F7i7O3bBy2K3bS4sRwXpf9geyIaF5JQxuX6a', '2022-02-02 12:01:54', NULL),
('staff@gmail.com', '$2y$10$XN4nZrEo3KGM52XGBSIUTO5kow0rCB/zZ/to0Mert73Ydqp134b7y', '2022-12-26 13:15:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL DEFAULT 0,
  `sender_id` int(11) NOT NULL DEFAULT 0,
  `message` varchar(255) DEFAULT NULL,
  `date` varchar(25) DEFAULT NULL,
  `time` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Karachi'),
(2, 'Lahore'),
(3, 'Faisalabad'),
(4, 'Rawalpindi'),
(5, 'Gujranwala'),
(6, 'Peshawar'),
(7, 'Multan'),
(8, 'Saidu Sharif'),
(9, 'Hyderabad City'),
(10, 'Islamabad'),
(11, 'Quetta'),
(12, 'Bahawalpur'),
(13, 'Sargodha'),
(14, 'Sialkot City'),
(15, 'Sukkur'),
(16, 'Larkana'),
(17, 'Chiniot'),
(18, 'Shekhupura'),
(19, 'Jhang City'),
(20, 'Dera Ghazi Khan'),
(21, 'Gujrat'),
(22, 'Rahimyar Khan'),
(23, 'Kasur'),
(24, 'Mardan'),
(25, 'Mingaora'),
(26, 'Nawabshah'),
(27, 'Sahiwal'),
(28, 'Mirpur Khas'),
(29, 'Okara'),
(30, 'Mandi Burewala'),
(31, 'Jacobabad'),
(32, 'Saddiqabad'),
(33, 'Kohat'),
(34, 'Muridke'),
(35, 'Muzaffargarh'),
(36, 'Khanpur'),
(37, 'Gojra'),
(38, 'Mandi Bahauddin'),
(39, 'Abbottabad'),
(40, 'Turbat'),
(41, 'Dadu'),
(42, 'Bahawalnagar'),
(43, 'Khuzdar'),
(44, 'Pakpattan'),
(45, 'Tando Allahyar'),
(46, 'Ahmadpur East'),
(47, 'Vihari'),
(48, 'Jaranwala'),
(49, 'New Mirpur'),
(50, 'Kamalia'),
(51, 'Kot Addu'),
(52, 'Nowshera'),
(53, 'Swabi'),
(54, 'Khushab'),
(55, 'Dera Ismail Khan'),
(56, 'Chaman'),
(57, 'Charsadda'),
(58, 'Kandhkot'),
(59, 'Chishtian'),
(60, 'Hasilpur'),
(61, 'Attock Khurd'),
(62, 'Muzaffarabad'),
(63, 'Mianwali'),
(64, 'Jalalpur Jattan'),
(65, 'Bhakkar'),
(66, 'Zhob'),
(67, 'Dipalpur'),
(68, 'Kharian'),
(69, 'Mian Channun'),
(70, 'Bhalwal'),
(71, 'Jamshoro'),
(72, 'Pattoki'),
(73, 'Harunabad'),
(74, 'Kahror Pakka'),
(75, 'Toba Tek Singh'),
(76, 'Samundri'),
(77, 'Shakargarh'),
(78, 'Sambrial'),
(79, 'Shujaabad'),
(80, 'Hujra Shah Muqim'),
(81, 'Kabirwala'),
(82, 'Mansehra'),
(83, 'Lala Musa'),
(84, 'Chunian'),
(85, 'Nankana Sahib'),
(86, 'Bannu'),
(87, 'Pasrur'),
(88, 'Timargara'),
(89, 'Parachinar'),
(90, 'Chenab Nagar'),
(91, 'Gwadar'),
(92, 'Abdul Hakim'),
(93, 'Hassan Abdal'),
(94, 'Tank'),
(95, 'Hangu'),
(96, 'Risalpur Cantonment'),
(97, 'Karak'),
(98, 'Kundian'),
(99, 'Umarkot'),
(100, 'Chitral'),
(101, 'Dainyor'),
(102, 'Kulachi'),
(103, 'Kalat'),
(104, 'Kotli'),
(105, 'Gilgit'),
(106, 'Narowal'),
(107, 'Khairpur Mir’s'),
(108, 'Khanewal'),
(109, 'Jhelum'),
(110, 'Haripur'),
(111, 'Shikarpur'),
(112, 'Rawala Kot'),
(113, 'Hafizabad'),
(114, 'Lodhran'),
(115, 'Malakand'),
(116, 'Attock City'),
(117, 'Batgram'),
(118, 'Matiari'),
(119, 'Ghotki'),
(120, 'Naushahro Firoz'),
(121, 'Alpurai'),
(122, 'Bagh'),
(123, 'Daggar'),
(124, 'Leiah'),
(125, 'Tando Muhammad Khan'),
(126, 'Chakwal'),
(127, 'Badin'),
(128, 'Lakki'),
(129, 'Rajanpur'),
(130, 'Dera Allahyar'),
(131, 'Shahdad Kot'),
(132, 'Pishin'),
(133, 'Sanghar'),
(134, 'Upper Dir'),
(135, 'Thatta'),
(136, 'Dera Murad Jamali'),
(137, 'Kohlu'),
(138, 'Mastung'),
(139, 'Dasu'),
(140, 'Athmuqam'),
(141, 'Loralai'),
(142, 'Barkhan'),
(143, 'Musa Khel Bazar'),
(144, 'Ziarat'),
(145, 'Gandava'),
(146, 'Sibi'),
(147, 'Dera Bugti'),
(148, 'Eidgah'),
(149, 'Uthal'),
(150, 'Khuzdar'),
(151, 'Chilas'),
(152, 'Panjgur'),
(153, 'Gakuch'),
(154, 'Qila Saifullah'),
(155, 'Kharan'),
(156, 'Aliabad'),
(157, 'Awaran'),
(158, 'Dalbandin');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inspections`
--

CREATE TABLE `inspections` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT 0,
  `warehouse_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `request_date` varchar(255) DEFAULT NULL,
  `report_date` varchar(255) DEFAULT NULL,
  `assign_date` varchar(255) DEFAULT NULL,
  `report` varchar(255) DEFAULT NULL,
  `status` enum('request','assign','report') DEFAULT 'request',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_21_055443_create_admins_table', 1),
(6, '2021_12_24_120807_create_admin_password_resets_table', 1),
(7, '2021_12_26_105923_create_employees_table', 1),
(8, '2021_12_29_222238_create_permission_tables', 1),
(9, '2022_01_01_025322_languages_table', 1),
(10, '0000_00_00_000000_create_websockets_statistics_entries_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `user` varchar(255) DEFAULT NULL,
  `warehouse` varchar(255) DEFAULT NULL,
  `is_seen` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nccsteam@gmail.com', '$2y$10$PdIAaNTjTQGiXV7v4VDnkOPM2i.L4hm0DPO6Rtds3dw0WffVxWBUO', '2022-01-27 14:52:47'),
('ehtishammughal26@gmail.com', '$2y$10$/xe5CF1g3/YaV/1RV0QjTexxj3ITcqvZvt.4s1bGEQOb9Rf.HprnO', '2022-02-24 16:32:14'),
('zeshanzubair81@gmail.com', '$2y$10$DIchkqmWkn.WvSXSXYsFy.q/5AIDvGFiFN62101z3qRHTrdKgbp6m', '2022-03-05 16:24:16'),
('umark1142@gmail.com', '$2y$10$C1epDR8bIVnWpdkcvA7w7OZZyK21qB65.WYNrOOLS8LoubWsL/xn6', '2022-04-08 23:06:14'),
('abdulhanan4295@gmail.com', '$2y$10$pMOgTOK8Ohb4NgibICUR6ON9tsbV5DuvQJtHFpC16bfSzFVXFf/SO', '2022-09-01 00:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `warehouse` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`warehouse`)),
  `advance` int(11) NOT NULL DEFAULT 0,
  `comission` int(11) NOT NULL DEFAULT 0,
  `status` enum('pending','sended','received') NOT NULL DEFAULT 'pending',
  `is_ratting` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(82, 'Tes', 'admins', '2022-11-10 02:26:14', '2022-11-10 02:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admins', '2022-01-01 10:09:28', '2022-01-01 10:09:35'),
(2, 'Admin', 'admins', '2022-01-05 10:30:46', '2022-01-05 10:30:46'),
(3, 'Employee', 'admins', '2022-01-05 13:08:53', '2022-01-05 13:08:53'),
(4, 'Owner', 'admins', '2022-01-05 12:47:51', '2022-11-06 19:27:34'),
(5, 'Customer', 'web', '2022-11-06 13:03:37', '2022-11-06 13:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 5,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `role_id`, `is_active`, `firstname`, `lastname`, `img`, `password`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'user@gmail.com', 5, 1, 'User User', 'User Data', 'assets/front/uploads/20230415221527.jpg', '$2y$10$vQkLcTvJmUt0DPRrrWoSIeWPOWEAahnBZ1xv/O5k5v/ffmHDkHse.', 'ykWrzfrPDxJn0chuTbkateIuW6fuui892M3fATy7DadiUYX8ShJc36ttt5f1', NULL, '2022-12-25 02:21:44', '2023-04-15 17:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ratting` int(11) NOT NULL DEFAULT 0,
  `location` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `floor` int(11) NOT NULL DEFAULT 0,
  `area` varchar(255) DEFAULT NULL,
  `starting` int(11) DEFAULT 0,
  `monthly` int(11) DEFAULT 0,
  `advance` int(11) DEFAULT 0,
  `property` varchar(30) DEFAULT NULL,
  `lift` int(11) NOT NULL DEFAULT 0,
  `parking` int(11) NOT NULL DEFAULT 1,
  `electricity` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_book` int(11) NOT NULL DEFAULT 0,
  `booked_date` varchar(20) DEFAULT NULL,
  `wifi` int(11) NOT NULL DEFAULT 0,
  `security_cameras` int(11) NOT NULL DEFAULT 0,
  `market_near_by` int(11) NOT NULL DEFAULT 0,
  `floor_ground` int(11) NOT NULL DEFAULT 0,
  `floor_upper` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inspections`
--
ALTER TABLE `inspections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspections`
--
ALTER TABLE `inspections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

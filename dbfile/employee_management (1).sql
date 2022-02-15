-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 06:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_otp`
--

CREATE TABLE `email_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `create_at` varchar(100) DEFAULT NULL,
  `update_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_otp`
--

INSERT INTO `email_otp` (`id`, `email`, `otp`, `create_at`, `update_at`) VALUES
(1, 'sakildeshwali1@gmail.com', '8602', '2021-09-09 07:22:28', '2021-09-09 07:22:28'),
(2, 'ranu.appic@gmail.com', '2131', '2021-09-09 12:18:40', '2021-09-09 12:18:40'),
(3, 'muskan@yopmail.com', '5534', '2021-11-18 06:03:33', '2021-11-18 06:03:33'),
(4, 'vinod@yopmail.com', '1152', '2021-11-18 06:03:54', '2021-11-18 06:03:54');

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
-- Table structure for table `password_otp`
--

CREATE TABLE `password_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(4) NOT NULL COMMENT '	97-User/Customer,98-Admin, 99-Agent',
  `otp` varchar(255) NOT NULL,
  `create_at` varchar(100) NOT NULL,
  `update_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password_otp`
--

INSERT INTO `password_otp` (`id`, `email`, `role`, `otp`, `create_at`, `update_at`) VALUES
(2, 'fullname@yopmail.com', 0, '362302', '2022-01-21 06:40:09', '2022-01-21 06:40:09'),
(4, 'fullname_agent@yopmail.com', 0, '770115', '2022-01-24 11:18:43', '2022-01-24 11:18:43');

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
('test12345@yopmail.com', 'AsuoMXXe1OQiifPv', '2021-10-11 07:14:56'),
('test12345@yopmail.com', 'oTxSOdUskKPoeEFy', '2021-10-11 07:16:08'),
('test12345@yopmail.com', 'T44k5jI5P2cBZagL', '2021-10-11 07:16:47'),
('test12345@yopmail.com', 'GZQIpNshlffVGGl5', '2021-10-11 07:17:42'),
('test12345@yopmail.com', '12EnGs1ThKwakpB3', '2021-10-11 08:53:27'),
('test12345@yopmail.com', 'YO312B2cJKCFVORP', '2021-10-14 23:36:59'),
('test12345@yopmail.com', '9UvT5tOQ60L9iyN8', '2021-10-14 23:37:44'),
('test12345@yopmail.com', 'hgYa4Nh7NHEttoFk', '2021-10-14 23:46:43'),
('test12345@yopmail.com', 'rfQZrOcErIWlR3nx', '2021-10-14 23:57:27'),
('test12345@yopmail.com', 'lpiSrOsrlzi2pCXf', '2021-10-15 00:00:08');

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_users`
--

CREATE TABLE `temp_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(2) DEFAULT NULL COMMENT '	97-User/Customer,98-Admin, 99-Agent',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_check` tinyint(4) NOT NULL DEFAULT 0,
  `business_type` int(11) DEFAULT NULL,
  `email_verified` int(11) NOT NULL DEFAULT 0,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opeing_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_upto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) DEFAULT 0 COMMENT '(For Agent Only)0/1=Pending,2=Approved,3=Rejected,4=Delete||0/1-Active/Deactive for User',
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doj` date NOT NULL DEFAULT current_timestamp(),
  `date_of_training` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(2) DEFAULT NULL COMMENT '97-User/Customer,98-Admin, 99-Agent',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Photograph',
  `emergency_contact_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_station` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_check` tinyint(4) NOT NULL DEFAULT 0,
  `email_verified` int(11) NOT NULL DEFAULT 0,
  `approved` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'comming from client side'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `employee_id`, `full_name`, `username`, `email`, `agency`, `valid_upto`, `authorized_by`, `blood_group`, `status`, `level`, `doj`, `date_of_training`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `image`, `emergency_contact_no`, `gender`, `dob`, `work_station`, `upload_doc`, `address`, `login_check`, `email_verified`, `approved`, `reason`, `fcm_token`) VALUES
(1, 'Admin', '', '', 'admin', 'admin1@yopmail.com', '', '', '', '', 0, '', '2022-02-11', '', '2022-02-10 22:48:29', '$2y$10$rIedSLNJGEOCCcH1vcESauHQPpgzVk3sU0D/J4MxsmlW4m8p9ahMa', NULL, NULL, '2022-02-11 10:49:17', 98, 'http://localhost/development/employee_management/public/images/210893f1a34728658dfd76ddc4938407.png', NULL, NULL, NULL, '', NULL, NULL, 0, 0, 0, NULL, ''),
(2, NULL, 'test', 'test', NULL, '', 'test', 'test', 'test', 'A', 0, 'test', '2022-01-01', '2022-12-31', NULL, NULL, NULL, '2022-02-11 00:18:09', '2022-02-14 05:11:21', 97, '', '9876543210', NULL, '1996-12-31', 'tst', NULL, 'test', 0, 0, 0, '', ''),
(4, NULL, 'test1', 's', NULL, NULL, 'test', 'test', 'test', 'A', 1, 'test', '2021-12-26', '2022-12-31', NULL, NULL, NULL, '2022-02-11 00:25:02', '2022-02-15 04:24:57', 97, 'http://localhost/development/employee_management/public/images/null.png', '9876543211', NULL, '1996-01-01', 'tst', NULL, 'tet', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `verify_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `email`, `otp`, `verify_at`, `created_at`, `updated_at`) VALUES
(8, 'ravi233@gmail.com', '125082', '2021-10-13 09:09:22', '2021-10-13 09:09:22', '2021-10-13 09:09:22'),
(10, 'gagan@gmail.com', '722959', '2021-10-19 12:06:39', '2021-10-19 12:06:39', '2021-10-19 12:06:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_otp`
--
ALTER TABLE `email_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `password_otp`
--
ALTER TABLE `password_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `temp_users`
--
ALTER TABLE `temp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `phone` (`emergency_contact_no`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_otp`
--
ALTER TABLE `email_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_otp`
--
ALTER TABLE `password_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_users`
--
ALTER TABLE `temp_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

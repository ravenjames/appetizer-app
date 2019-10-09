-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 02:27 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appetizer_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendar_date` int(11) NOT NULL,
  `day_id` bigint(20) UNSIGNED NOT NULL,
  `calendar_event` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlighted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`id`, `calendar_date`, `day_id`, `calendar_event`, `highlighted`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 0, '2019-10-01 12:54:52', '2019-10-01 15:59:57'),
(2, 2, 4, NULL, 0, '2019-10-01 12:54:53', '2019-10-01 16:01:19'),
(3, 3, 5, NULL, 0, '2019-10-01 12:54:53', '2019-10-01 16:02:43'),
(4, 4, 6, NULL, 0, '2019-10-01 12:54:53', '2019-10-01 15:42:57'),
(5, 5, 7, NULL, 0, '2019-10-01 12:54:53', '2019-10-01 16:25:34'),
(6, 6, 1, 'Code', 1, '2019-10-01 12:54:53', '2019-10-01 16:25:43'),
(7, 7, 2, NULL, 0, '2019-10-01 12:54:54', '2019-10-01 15:58:29'),
(8, 8, 3, NULL, 0, '2019-10-01 12:54:54', '2019-10-01 15:59:57'),
(9, 9, 4, NULL, 0, '2019-10-01 12:54:54', '2019-10-01 16:01:19'),
(10, 10, 5, NULL, 0, '2019-10-01 12:54:54', '2019-10-01 16:02:43'),
(11, 11, 6, NULL, 0, '2019-10-01 12:54:54', '2019-10-01 15:42:58'),
(12, 12, 7, NULL, 0, '2019-10-01 12:54:54', '2019-10-01 16:25:34'),
(13, 13, 1, 'Code', 1, '2019-10-01 12:54:55', '2019-10-01 16:25:43'),
(14, 14, 2, NULL, 0, '2019-10-01 12:54:55', '2019-10-01 15:58:30'),
(15, 15, 3, NULL, 0, '2019-10-01 12:54:55', '2019-10-01 15:59:57'),
(16, 16, 4, NULL, 0, '2019-10-01 12:54:55', '2019-10-01 16:01:19'),
(17, 17, 5, NULL, 0, '2019-10-01 12:54:55', '2019-10-01 16:02:43'),
(18, 18, 6, NULL, 0, '2019-10-01 12:54:55', '2019-10-01 15:42:58'),
(19, 19, 7, NULL, 0, '2019-10-01 12:54:56', '2019-10-01 16:25:34'),
(20, 20, 1, 'Code', 1, '2019-10-01 12:54:56', '2019-10-01 16:25:43'),
(21, 21, 2, NULL, 0, '2019-10-01 12:54:56', '2019-10-01 15:58:30'),
(22, 22, 3, NULL, 0, '2019-10-01 12:54:56', '2019-10-01 15:59:57'),
(23, 23, 4, NULL, 0, '2019-10-01 12:54:56', '2019-10-01 16:01:19'),
(24, 24, 5, NULL, 0, '2019-10-01 12:54:56', '2019-10-01 16:02:43'),
(25, 25, 6, NULL, 0, '2019-10-01 12:54:56', '2019-10-01 15:42:58'),
(26, 26, 7, NULL, 0, '2019-10-01 12:54:57', '2019-10-01 16:25:35'),
(27, 27, 1, 'Code', 1, '2019-10-01 12:54:57', '2019-10-01 16:25:43'),
(28, 28, 2, NULL, 0, '2019-10-01 12:54:57', '2019-10-01 15:58:30'),
(29, 29, 3, NULL, 0, '2019-10-01 12:54:57', '2019-10-01 15:59:58'),
(30, 30, 4, NULL, 0, '2019-10-01 12:54:57', '2019-10-01 16:01:20'),
(31, 31, 5, NULL, 0, '2019-10-01 12:54:59', '2019-10-01 16:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sunday', '2019-10-01 12:54:02', '2019-10-01 12:54:02'),
(2, 'Monday', '2019-10-01 12:54:02', '2019-10-01 12:54:02'),
(3, 'Tuesday', '2019-10-01 12:54:02', '2019-10-01 12:54:02'),
(4, 'Wednesday', '2019-10-01 12:54:02', '2019-10-01 12:54:02'),
(5, 'Thursday', '2019-10-01 12:54:02', '2019-10-01 12:54:02'),
(6, 'Friday', '2019-10-01 12:54:03', '2019-10-01 12:54:03'),
(7, 'Saturday', '2019-10-01 12:54:03', '2019-10-01 12:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_10_01_151535_create_days_table', 1),
(29, '2019_10_01_160913_create_dates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dates_day_id_foreign` (`day_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dates`
--
ALTER TABLE `dates`
  ADD CONSTRAINT `dates_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

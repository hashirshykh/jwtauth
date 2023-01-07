-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 09:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jwttask`
--

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
(5, '2023_01_07_160818_add_confirmation_fields_to_users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripation` varchar(121) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `users_id` int(12) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `descripation`, `status`, `users_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 'sasaqasasas', 'asdsdsdasa', 0, NULL, NULL, '2023-01-07 04:37:03', '2023-01-07 04:37:03'),
(8, 'Testing', 'Testingdata', 1, NULL, NULL, '2023-01-07 07:06:51', '2023-01-07 07:06:51'),
(9, 'Testaaa', 'Tstingaa', 0, NULL, NULL, '2023-01-07 10:01:46', '2023-01-07 10:01:46'),
(10, 'Hashir', 'Hashir Test', 0, NULL, NULL, '2023-01-07 10:12:26', '2023-01-07 10:12:26'),
(11, 'Hashiraa', 'Hashir Test', 0, NULL, NULL, '2023-01-07 10:14:18', '2023-01-07 10:14:18'),
(12, 'Hashiraaaa', 'Hashir Test', 0, NULL, NULL, '2023-01-07 10:15:08', '2023-01-07 10:15:08'),
(13, 'Hashiraaaaaa', 'Hashir Test', 0, NULL, NULL, '2023-01-07 10:16:31', '2023-01-07 10:16:31'),
(14, 'Hashiraaaaaaaa', 'Hashir Test', 0, NULL, NULL, '2023-01-07 10:16:53', '2023-01-07 10:16:53'),
(15, 'Hashiraaaaaaaaaaa', 'Hashir Test', 0, NULL, NULL, '2023-01-07 10:16:59', '2023-01-07 10:16:59'),
(16, 'hsakhskas', 'Hashir Test', 0, NULL, NULL, '2023-01-07 10:17:25', '2023-01-07 10:17:25'),
(17, 'hsakhskasa', 'Hashir Test', 0, NULL, NULL, '2023-01-07 13:59:30', '2023-01-07 13:59:30'),
(18, 'hsakhskasaq', 'Hashir Test', 0, NULL, NULL, '2023-01-07 14:15:09', '2023-01-07 14:15:09'),
(19, 'cnmcn', 'Hashir Test', 0, NULL, NULL, '2023-01-07 14:15:16', '2023-01-07 14:15:16'),
(20, 'cnmcna', 'Hashir Test', 0, NULL, NULL, '2023-01-07 14:16:21', '2023-01-07 14:16:21'),
(21, 'cnmcnawww', 'Hashir Test', 0, NULL, NULL, '2023-01-07 14:16:47', '2023-01-07 14:16:47'),
(22, 'cnmcnawwwss', '\"Hashir Test\"', 0, NULL, NULL, '2023-01-07 14:18:13', '2023-01-07 14:18:13'),
(23, 'xzx', 'Hashir Test', 0, NULL, NULL, '2023-01-07 14:20:19', '2023-01-07 14:20:19'),
(24, 'xzxs', 'Hashir Test', 0, 34, NULL, NULL, NULL),
(25, 'xzxsa', 'Hashir Test', 0, 7, NULL, NULL, NULL),
(26, 'xzxsaaa', 'Hashir Test', 0, 7, NULL, NULL, NULL),
(27, 'xzxsaaaa', 'Hashir Test', 0, 7, NULL, NULL, NULL),
(28, 'xzxsaaaaa', 'Hashir Test', 0, NULL, NULL, '2023-01-07 14:24:30', '2023-01-07 14:24:30'),
(29, 'xzxsaaaaaaa', 'Hashir Test', 0, 7, NULL, '2023-01-07 14:25:25', '2023-01-07 14:25:25'),
(30, 'xzxsaaaaaaaa', 'Hashir Test', 0, 34, NULL, '2023-01-07 14:31:45', '2023-01-07 14:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `confirmation_code`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', '2023-01-12 11:59:23', '$2y$10$Gn8G7qkl5ZOHUCJQj77Zyu/S9sJHBNUoJ7lQ.a2oSgF6UksplqfmG', NULL, '2023-01-07 06:39:32', '2023-01-07 06:39:32', NULL, NULL),
(2, 'John Doe', 'johndoe1@gmail.com', NULL, '$2y$10$eax8CYzkawoovpeosfuMGedp.B723PgvEUt6y0LssfoTVf0mtBN.K', NULL, '2023-01-07 06:48:03', '2023-01-07 06:48:03', NULL, NULL),
(3, 'John Doe', 'johndoe2@gmail.com', NULL, '$2y$10$ulAW8vRjlErkWw7avrziDuxySfUgn/OR4rcLP3hq8tVYRxmx.vV9m', NULL, '2023-01-07 06:48:39', '2023-01-07 06:48:39', NULL, NULL),
(4, 'John Doe', 'johndoe3@gmail.com', NULL, '$2y$10$RlgbBCSYnG1VoTXwd/ORDeSAFeMi8mUukIXtVEgp17encNZlv43cq', NULL, '2023-01-07 06:51:05', '2023-01-07 06:51:05', NULL, NULL),
(5, 'John Doe', 'johndoe4@gmail.com', NULL, '$2y$10$Izx5BAabZ9.Q7WKQ/GJwxOjz9mhdOKkLZNVpbTqWX19AmJCxCodkm', NULL, '2023-01-07 07:39:41', '2023-01-07 07:39:41', NULL, NULL),
(6, 'John Doe', 'johndoe5@gmail.com', NULL, '$2y$10$swd4GJdMpShdzj6m7JOY4ORAtovMU0wLos6WByzeuulZaFBa9Iz8.', NULL, '2023-01-07 10:18:46', '2023-01-07 10:18:46', NULL, NULL),
(7, 'John Doe', 'johndoe6@gmail.com', NULL, '$2y$10$9a.gblMwdGTkEO80KxsxSOCGu9ap.t2HBCmqGxdHFI4scLJaaz6DK', NULL, '2023-01-07 10:24:13', '2023-01-07 10:24:13', NULL, NULL),
(8, 'John Doe', 'johndoe7@gmail.com', NULL, '$2y$10$hptixPs2Rp2f9m/GEdU3z.2.4/u.m.ad1/XJlsQaHGIcTKQYlDtAq', NULL, '2023-01-07 10:35:16', '2023-01-07 10:35:16', NULL, NULL),
(9, 'John Doe', 'johndoe8@gmail.com', NULL, '$2y$10$ATWDRYG0j/CpMV1LR3vMC.zWSgKUX/WYDSFWEu8okf6L7pc/Xr3am', NULL, '2023-01-07 10:40:52', '2023-01-07 10:40:52', NULL, NULL),
(10, 'John Doe', 'johndoe9@gmail.com', NULL, '$2y$10$3yDCwc9AyUqUuzWxCBMxO.fLPqc88P19dFrdlfAh7qBIf5f.V8vLu', NULL, '2023-01-07 10:41:04', '2023-01-07 10:41:04', NULL, NULL),
(11, 'John Doe', 'johndoe10@gmail.com', NULL, '$2y$10$eXTq6yj6d4CYCyl7nhSPcORfKD/bVOqPe0Ee1aSvNyncbib11pRe2', NULL, '2023-01-07 10:42:23', '2023-01-07 10:42:23', NULL, NULL),
(12, 'John Doe', 'johndoe11@gmail.com', NULL, '$2y$10$0A44YPQloiZHG/y5hwo/M.WJPZppNvXDm7QC/zVPTH3CvFt2jQnIy', NULL, '2023-01-07 10:44:42', '2023-01-07 10:44:42', NULL, NULL),
(13, 'John Doe', 'johndoe12@gmail.com', NULL, '$2y$10$3ZWOl2b9kr6aXeiJs7h8m.tLeGfQ1TwSclFvLSRPOM2HqCYB3fT/q', NULL, '2023-01-07 10:54:42', '2023-01-07 10:54:42', NULL, NULL),
(14, 'John Doe', 'johndoe13@gmail.com', NULL, '$2y$10$.ONqrggELw2ohqH7ehnHUOiqQil3BAM2pcezmovhO70HWu4YLLwiS', NULL, '2023-01-07 11:18:13', '2023-01-07 11:18:13', NULL, NULL),
(15, 'John Doe', 'johndoe14@gmail.com', NULL, '$2y$10$M9.wfxLW5JVTkAQm1vUxo.ur.UmTuTErU54y3MlYFkn5m4pUOTpgq', NULL, '2023-01-07 11:20:26', '2023-01-07 11:20:26', NULL, NULL),
(16, 'John Doe', 'johndoe15@gmail.com', NULL, '$2y$10$GTCsFUQwTMiNlXMx1AWjHebB2LmjTHTbc22zgF9FxMm5NXiT6XETG', NULL, '2023-01-07 11:21:42', '2023-01-07 11:21:42', NULL, NULL),
(17, 'John Doe', 'johndoe16@gmail.com', NULL, '$2y$10$7oCFRXItcH.MFq4qw2F4EOCwhsnh3g2tU779oT5AgIjQiqVBoPgpu', NULL, '2023-01-07 11:36:35', '2023-01-07 11:36:35', NULL, NULL),
(18, 'John Doe', 'johndoe17@gmail.com', NULL, '$2y$10$QHAbQm3bD3bOuF104afkXex3PG5.8OsQEk0b8.jW4kUoWwQ71hDri', NULL, '2023-01-07 11:40:36', '2023-01-07 11:40:36', NULL, NULL),
(19, 'John Doe', 'johndoe18@gmail.com', NULL, '$2y$10$yJdzRBUb.4vzg57dF5h1buunN1ZRY0df4L4ispIUbahRnpxZFeV5y', NULL, '2023-01-07 11:41:16', '2023-01-07 11:41:16', NULL, NULL),
(20, 'John Doe', 'johndoe19@gmail.com', NULL, '$2y$10$Vv9W62sPxg/SzGssT8Fsq.5iELG2zfbx0GQq5huGgbO9IXdVdBv.y', NULL, '2023-01-07 11:43:30', '2023-01-07 11:43:30', NULL, NULL),
(21, 'John Doe', 'johndoe20@gmail.com', NULL, '$2y$10$GcSG8j/EcE.6z2TR9qzVtuB7DxR65y7X9dAo9ooa3eVS6O/ZnfZ9K', NULL, '2023-01-07 12:51:30', '2023-01-07 12:51:30', NULL, NULL),
(22, 'John Doe', 'johndoe21@gmail.com', NULL, '$2y$10$pGBcKXjetU7Rrl/Et/S2d.oIKLhvGvheD44dl8b.AxBBFPL0sRwIy', NULL, '2023-01-07 12:53:19', '2023-01-07 12:53:19', NULL, NULL),
(34, 'John Doe', 'sheikhhashir188@gmail.com', '2023-01-07 18:59:05', '$2y$10$tjhjaIewE/DTq3.iqfmYjeW7koQH0SioDr6vEfVQkIcbw2Kbbsza.', NULL, '2023-01-07 13:57:35', '2023-01-07 13:57:50', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 01:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewire`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Erdmanshire', 7, '2024-02-21 23:53:34', '2024-02-21 23:53:34'),
(2, 'East Gavintown', 7, '2024-02-21 23:53:34', '2024-02-21 23:53:34'),
(3, 'North Maddison', 2, '2024-02-21 23:53:34', '2024-02-21 23:53:34'),
(4, 'New Ethyl', 5, '2024-02-21 23:53:34', '2024-02-21 23:53:34'),
(5, 'Antoinetteport', 6, '2024-02-21 23:53:34', '2024-02-21 23:53:34'),
(6, 'North Dockborough', 8, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(7, 'Connerton', 9, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(8, 'West Jensenchester', 7, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(9, 'Alantown', 1, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(10, 'Torphyhaven', 4, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(11, 'Reichelberg', 6, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(12, 'Lake Connorhaven', 8, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(13, 'Port Eliane', 4, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(14, 'North Carminehaven', 5, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(15, 'Rowefurt', 5, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(16, 'Port Hulda', 8, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(17, 'Lake Oscarshire', 3, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(18, 'Keenanchester', 7, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(19, 'Port Nathaniel', 2, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(20, 'East Era', 3, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(21, 'Budville', 2, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(22, 'Port Karolannbury', 3, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(23, 'Ernserbury', 7, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(24, 'Runteberg', 9, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(25, 'East Montanaville', 9, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(26, 'Cartwrightberg', 8, '2024-02-21 23:53:35', '2024-02-21 23:53:35'),
(27, 'Mariamland', 4, '2024-02-21 23:53:36', '2024-02-21 23:53:36'),
(28, 'East Nat', 7, '2024-02-21 23:53:36', '2024-02-21 23:53:36'),
(29, 'Schmidtborough', 9, '2024-02-21 23:53:36', '2024-02-21 23:53:36'),
(30, 'Huelsburgh', 2, '2024-02-21 23:53:36', '2024-02-21 23:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Uganda', '2024-02-21 23:52:04', '2024-02-21 23:52:04'),
(2, 'Uzbekistan', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(3, 'Gambia', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(4, 'Zambia', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(5, 'Seychelles', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(6, 'Armenia', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(7, 'Qatar', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(8, 'Oman', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(9, 'Swaziland', '2024-02-21 23:52:05', '2024-02-21 23:52:05'),
(10, 'Saint Pierre and Miquelon', '2024-02-21 23:52:05', '2024-02-21 23:52:05');

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
(5, '2024_02_21_120334_create_todo_items_table', 1),
(6, '2024_02_22_050705_create_countries_table', 2),
(7, '2024_02_22_050920_create_cities_table', 2),
(8, '2024_02_22_101945_create_photos_table', 3);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'photos/hSS9sbfvu4Rlz8tNdc7xGeAM2iILHTtkSPPjC49X.png', '2024-02-22 04:58:23', '2024-02-22 04:58:23'),
(4, 'photos/DHgc4qXKDlRr41aHu2lTvoFNnhWFChGxuFRRQwDY.png', '2024-02-22 05:04:24', '2024-02-22 05:04:24'),
(5, 'photos/orP2RYfTTvuP2u05dDZ5jps19DEbUr95d3c2j5Of.jpg', '2024-02-22 05:05:15', '2024-02-22 05:05:15'),
(6, 'photos/9HMoAg5w5gdB1nnK2zm39aOs3ZLE3q6pmX5b8foT.png', '2024-02-22 05:07:26', '2024-02-22 05:07:26'),
(7, 'photos/JnrfqTYglpS1hVWrTP6LlKCqVC0Ea7g0MvqYuRzt.png', '2024-02-22 05:10:10', '2024-02-22 05:10:10'),
(8, 'photos/TIx8vKbj4wTvYXboesf2ByJwM75FAc4HbbRvvsen.png', '2024-02-22 05:12:25', '2024-02-22 05:12:25'),
(9, 'photos/bNp4llSiqLUm5RiH4IDqnFQltc6IK5z2ChQvBzrd.png', '2024-02-22 05:23:39', '2024-02-22 05:23:39'),
(10, 'photos/NLyAaoaviPfb2PP9RirLFYIm5Ck5LlAbcFCb1Kcs.png', '2024-02-22 05:31:59', '2024-02-22 05:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `todo_items`
--

CREATE TABLE `todo_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todo_items`
--

INSERT INTO `todo_items` (`id`, `task`, `completed`, `created_at`, `updated_at`) VALUES
(21, 'task1', 0, '2024-02-21 22:53:23', '2024-02-21 23:17:43'),
(22, 'task2', 1, '2024-02-21 22:54:02', '2024-02-21 23:17:14'),
(23, 'sa', 1, '2024-02-21 23:17:22', '2024-02-22 04:42:09'),
(27, 'new task', 0, '2024-02-22 00:33:41', '2024-02-22 00:33:41');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo_items`
--
ALTER TABLE `todo_items`
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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `todo_items`
--
ALTER TABLE `todo_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

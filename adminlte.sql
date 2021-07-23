-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4306
-- Generation Time: Jul 23, 2021 at 05:00 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminlte`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `photo`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5e00968857847_19.jpg', 'fgftgyrtdyrt', '2019-12-23 03:57:20', '2019-12-23 03:57:20', NULL),
(13, '5e01d77b9f0aa_150df948-244c-4682-909b-adc5cbba96a4_5.jpg', 'sfdsrferte', '2019-12-24 02:46:43', '2019-12-24 02:46:43', NULL),
(14, '5e03582af3038_102.jpg', 'fdgdgdfg', '2019-12-25 06:08:03', '2019-12-25 06:08:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_webpages`
--

CREATE TABLE `ads_webpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ads_id` int(11) NOT NULL,
  `webpage_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_webpages`
--

INSERT INTO `ads_webpages` (`id`, `ads_id`, `webpage_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2019-12-23 03:57:20', '2019-12-23 03:57:20', NULL),
(2, 1, 2, '2019-12-23 03:57:20', '2019-12-23 03:57:20', NULL),
(26, 13, 4, '2019-12-24 02:46:43', '2019-12-24 02:46:43', NULL),
(27, 13, 5, '2019-12-24 02:46:43', '2019-12-24 02:46:43', NULL),
(28, 14, 2, '2019-12-25 06:08:03', '2019-12-25 06:08:03', NULL),
(29, 14, 3, '2019-12-25 06:08:03', '2019-12-25 06:08:03', NULL),
(30, 14, 4, '2019-12-25 06:08:03', '2019-12-25 06:08:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aungs`
--

CREATE TABLE `aungs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'Hotel & Tourism', '2019-12-19 22:25:55', '2019-12-19 22:25:55', NULL),
(8, 'Restaurant11', '2019-12-20 01:04:24', '2019-12-25 07:49:19', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_18_072731_create_categories_table', 2),
(5, '2019_12_18_091451_create_posts_table', 3),
(6, '2019_12_19_042752_create_posts_table', 4),
(7, '2019_12_19_043454_create_posts_table', 5),
(8, '2019_12_19_053820_create_categories_table', 6),
(9, '2019_12_19_054121_create_posts_table', 7),
(10, '2019_12_19_073058_create_products_table', 8),
(11, '2019_12_20_040049_create_moons_table', 9),
(12, '2019_12_20_101055_create_roles_table', 10),
(13, '2019_12_23_071956_create_ads_table', 11),
(14, '2019_12_23_072244_create_webpages_table', 12),
(15, '2019_12_23_075840_create_ads_table', 13),
(16, '2019_12_23_080029_create_webpages_table', 14),
(17, '2019_12_23_080440_create_ads_table', 15),
(18, '2019_12_23_083051_create_ads_webpages_table', 16),
(19, '2019_12_26_053603_create_moons_table', 17),
(20, '2019_12_26_054941_create_moes_table', 18),
(21, '2019_12_26_141915_create_processes_table', 18),
(22, '2019_12_26_144031_create_aungs_table', 18),
(23, '2019_12_26_144059_create_thus_table', 18),
(24, '2019_12_26_152334_create_yamins_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `moes`
--

CREATE TABLE `moes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moons`
--

CREATE TABLE `moons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moons`
--

INSERT INTO `moons` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aaa111', '2019-12-25 23:06:28', '2019-12-25 23:06:34', NULL),
(2, 'bbb', '2019-12-25 23:06:44', '2019-12-25 23:06:44', NULL),
(3, 'ccc', '2019-12-25 23:06:48', '2019-12-25 23:06:48', NULL),
(4, 'ddd', '2019-12-25 23:06:52', '2019-12-25 23:06:52', NULL),
(5, 'eee', '2019-12-25 23:06:57', '2019-12-25 23:06:57', NULL),
(6, 'fff', '2019-12-25 23:07:01', '2019-12-25 23:07:01', NULL),
(7, 'ggg', '2019-12-25 23:07:06', '2019-12-25 23:07:06', NULL),
(8, 'hhh', '2019-12-25 23:07:10', '2019-12-25 23:07:10', NULL),
(9, 'iiii', '2019-12-25 23:07:14', '2019-12-25 23:07:14', NULL),
(10, 'jjjjj', '2019-12-25 23:07:18', '2019-12-25 23:07:18', NULL),
(11, 'kkkk', '2019-12-25 23:07:22', '2019-12-25 23:07:22', NULL),
(12, 'lll', '2019-12-25 23:07:25', '2019-12-25 23:07:25', NULL),
(13, 'nnnnnn1111', '2019-12-25 23:07:38', '2019-12-25 23:59:01', NULL);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `photo`, `cat_id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, '5dfc93a347b59_03056_fireoverskye_1920x1408.jpg', 7, 'Hotel', 'hotel hello world how areu', '2019-12-19 22:26:14', '2019-12-20 02:55:55', NULL),
(5, '5dfc75041f525_1042_the_way.jpg', 7, 'hotel', 'hello world1111', '2019-12-19 22:26:34', '2019-12-20 00:45:16', NULL),
(8, '5dfc989cc719e_ws_Summer_hay_field_1024x768.jpg', 8, 'mingalar', 'helo', '2019-12-20 02:52:03', '2019-12-20 03:17:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aaaaaaa', '2019-12-19 01:01:36', '2019-12-19 01:01:36', NULL),
(2, 'bbbb', '2019-12-19 01:01:41', '2019-12-19 01:01:41', NULL),
(3, 'cccc', '2019-12-19 01:01:46', '2019-12-19 01:01:59', '2019-12-19 01:01:59'),
(4, 'eee', '2019-12-19 01:09:50', '2019-12-19 01:52:20', '2019-12-19 01:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `thus`
--

CREATE TABLE `thus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$6Sqnnq0DvDzEJTCv.NdHOehP5v6cTj2Z87i5hvbLbuiaf6n63QH5G', 'jsLYmNxXotwpZYEpVb824JUfGiENS6kSPiKjmxYD6RghmeoJgiA0sqAJSvOv', '2019-12-18 00:59:14', '2019-12-18 00:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE `webpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', '2019-12-23 01:32:23', '2019-12-23 01:32:23', NULL),
(2, 'News', '2019-12-23 01:32:29', '2019-12-23 01:32:29', NULL),
(3, 'Events', '2019-12-23 01:32:35', '2019-12-23 01:32:35', NULL),
(4, 'About', '2019-12-23 01:40:29', '2019-12-23 01:40:29', NULL),
(5, 'Contact', '2019-12-23 03:29:02', '2019-12-23 03:29:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yamins`
--

CREATE TABLE `yamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_webpages`
--
ALTER TABLE `ads_webpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aungs`
--
ALTER TABLE `aungs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `moes`
--
ALTER TABLE `moes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moons`
--
ALTER TABLE `moons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thus`
--
ALTER TABLE `thus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webpages`
--
ALTER TABLE `webpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yamins`
--
ALTER TABLE `yamins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ads_webpages`
--
ALTER TABLE `ads_webpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `aungs`
--
ALTER TABLE `aungs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `moes`
--
ALTER TABLE `moes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moons`
--
ALTER TABLE `moons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thus`
--
ALTER TABLE `thus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yamins`
--
ALTER TABLE `yamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

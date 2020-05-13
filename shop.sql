-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 03:49 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guest_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`size`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `guest_id`, `post_id`, `size`, `created_at`, `updated_at`) VALUES
(1, '16857005851226046276', 9, '[\"XS\",\"S\",\"M\"]', '2020-05-06 14:36:53', '2020-05-06 14:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(2, 'dejkedjek', 'edkjdekdej', '2020-05-02 18:35:07', '2020-05-02 18:35:07'),
(3, 'ddkjekdj', 'edkjde', '2020-05-02 18:35:49', '2020-05-02 18:35:49'),
(4, 'dekdjkj', 'kdjekj', '2020-05-02 18:36:00', '2020-05-02 18:36:00'),
(5, 'dekdejdekj', 'kdejdkje', '2020-05-02 18:37:44', '2020-05-02 18:37:44'),
(6, 'ekjdedjke', 'kedjdejk', '2020-05-02 18:37:57', '2020-05-02 18:37:57');

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2020_04_22_090156_add_column_to_post_table', 1),
(5, '2014_10_12_000000_create_users_table', 2),
(6, '2019_08_19_000000_create_failed_jobs_table', 2),
(7, '2020_04_19_163955_post', 2),
(8, '2020_05_02_210938_contact', 2),
(9, '2020_05_06_122254_cart', 3),
(10, '2020_05_06_172427_cart', 4);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sizes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`sizes`)),
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `sizes`, `price`, `image`, `userid`, `details`) VALUES
(8, 'Grey Super Skinny', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '18.000', '2.jpg', 5, 'This is Kurdish Model'),
(9, 'shirt', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '20.000', '3.jpg', 5, 'This is Kurdish Model'),
(10, 'Ecru Set ', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '12.000', '4.jpg', 3, 'This is Kurdish Model'),
(11, 'Navy Shorts ', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '22.000', '5.jpg', 5, 'This is Kurdish Model'),
(12, 'Green Thin Jumper ', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '12.000', '6.jpg', 3, 'This is Kurdish Model'),
(13, 'Shirt', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '22.000', '7.jpg', 5, ''),
(14, 'Turquoise Shorts', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '10.000', '8.jpg', 3, ''),
(15, 'Turquoise Shorts', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '12.000', '9.jpg', 3, ''),
(16, 'Blue Shirt', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '20.000', '10.jpg', 5, ''),
(17, 'Black Null ', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '30.000', '11.jpg', 2, ''),
(18, 'Black Skirt ', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '30.000', '12.jpg', 5, ''),
(19, 'Red T-shirt ', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"2XL\"]', '23.000', '13.jpg', 2, '');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Nashwan', 'nashwan@gmail.com', NULL, '$2y$10$/rWq7TWWTknLTYYaS52XuuUNVM/O.RVJz2IEIPGXrj0qxq3bfbnG.', '10PaXy4amdntAzSEG4ehkySgP0tbSmntjNmf4KgAd4mDQh5ilHqxlPFQ3vwv', '2020-05-09 20:10:12', '2020-05-09 20:10:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
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
-- Indexes for table `post`
--
ALTER TABLE `post`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

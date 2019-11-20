-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2019 at 06:58 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'ismael', 'ismael@gmail.com', NULL, '$2y$10$XLriA/AIbs/cttCJxNmd6e/rdBM6ftKw8dH0sbL.TuAFobfpxASji', NULL, '2019-11-20 16:46:38', '2019-11-20 16:46:38', '004366064022'),
(2, 'sarah', 'sarah@yahoo.com', NULL, '$2y$10$Fu9YZHDNkKO5La3p2tirBeoGOY9e5.W1d6uS.67G6E0s2Xrmplxmq', NULL, '2019-11-20 16:48:58', '2019-11-20 16:48:58', '00436409898'),
(3, 'nicolas', 'nico@gmail.com', NULL, '$2y$10$ca2.CtdsogidieqFici4B.1caHJwBtsAiLlubV62tKGu/uLqSd4j2', NULL, '2019-11-20 16:49:46', '2019-11-20 16:49:46', '0043660688'),
(4, 'karin', 'karin@gmail.com', NULL, '$2y$10$aIYLkygfRlFsw.vGDQRhGubbAlBm5hhz4d1.8KqnHRdz9l2LYCxwa', NULL, '2019-11-20 16:50:23', '2019-11-20 16:50:23', '00436606403232'),
(5, 'sudo', 'sudo@yahoo.com', NULL, '$2y$10$XqSN9yAj.ANapOn.zP6QE.B21NQqLz7R7.DkMI7unnWEzQ/dMb2p.', NULL, '2019-11-20 16:51:26', '2019-11-20 16:51:26', '0096434343'),
(6, 'patrik', 'patrik@hotmail.com', NULL, '$2y$10$c9Y/g9jNfE6wkFumNEzH/uElQ4LLHNsUMEsKCn9Y5Nh4Q5vdzcGcO', NULL, '2019-11-20 16:52:39', '2019-11-20 16:52:39', '00476408989'),
(7, 'alic', 'alic@gmail.com', NULL, '$2y$10$F73CDy7lESVoyZeTKNe8ZeCxMZAMCAvLj9AXx5lqD4LcJikFY7/BS', NULL, '2019-11-20 16:53:32', '2019-11-20 16:53:32', '004366065476'),
(8, 'angila', 'angila@hotmail.com', NULL, '$2y$10$QVWsRWzIAgGtw2nxL1n35ez9vtrpW69xX66OTMN9WkVJ6W/YZcuQa', NULL, '2019-11-20 16:54:52', '2019-11-20 16:54:52', '00509234322'),
(9, 'ali', 'ali931@gmail.com', NULL, '$2y$10$prK7KXMXZ2F1zeLwub6xDO7aKtEbrVvtDUQWXr41Ea.TLu98xN8..', NULL, '2019-11-20 16:55:35', '2019-11-20 16:55:35', '009663423423'),
(10, 'alexander', 'alex1234@gmail.com', NULL, '$2y$10$q3jRXSjNt3spIAFYCtFKEupW0kfpa0GVAzG29.FeM0yM3NOrbSt7C', NULL, '2019-11-20 16:56:33', '2019-11-20 16:56:33', '003512897645'),
(11, 'monika', 'monika91@yahoo.com', NULL, '$2y$10$Z3KiLFENd9wp/ldY1L5I/.VhZ6.JsiZ60y0oGi/eVYATP5VZagh6i', NULL, '2019-11-20 16:57:17', '2019-11-20 16:57:17', '004498762378');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

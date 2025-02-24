-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2025 at 06:27 AM
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
-- Database: `falcondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `author_id`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Latest rooms on rent in lahore', 'Latest rooms on rent in lahore. Latest rooms on rent in lahore', 2, '2025-02-23 23:09:03', '2025-02-23 23:09:03', '../uploads/4.jpeg'),
(2, 'Latest rooms on rent in lahore', 'Latest rooms on rent in lahore', 2, '2025-02-23 23:09:14', '2025-02-23 23:09:14', '../uploads/5.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'sdfm sdfm', 'afa@gmail.com', '$2y$10$buyvpOalkZolqZ4Q0zVzM.i4xQoIUhTH10RHpx7Jcib/ALp5uLMDi', '2025-02-22 15:41:43'),
(2, 'Abdullah', 'abd@gmail.com', '$2y$10$NOSPt/dRWThJVplgyInMfejD/dwWl.EfaPz2mmMNwPHkVqxsl5l2O', '2025-02-22 15:42:55'),
(3, 'hello', 'hello@gmail.com', '$2y$10$dZSbSgkrkFT8Z2riqoi1xuNUBWn5LOt2Jvx/lxgPv778VnigOlqra', '2025-02-22 16:00:08'),
(4, 'Sidra', 'sidra@gmail.com', '$2y$10$tzwdES3Rt0TRF2Lqdw2Sieci5xEik3uB3CdNGViUY4bxNWPVcy4Oq', '2025-02-22 17:26:34'),
(6, 'arslan', 'arslan@gmail.com', '$2y$10$jcGSJVI2xEhFdPh8FZutseO/LXfiTFoW15mi6iXAbxyHUJTi.XXte', '2025-02-22 22:21:58'),
(7, 'ahmad', 'ahmad@gmail.com', '$2y$10$pLiqXt/fwPByY6wPxLh1XOzpV5OsqYhBU6XUsvrywak1W7iL6jheO', '2025-02-22 22:24:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

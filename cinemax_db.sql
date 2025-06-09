-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2025 at 04:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemax_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Hakorimana', '12345', '2025-05-28 07:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'action', '2025-05-28 07:29:16'),
(2, 'Adventure', '2025-05-28 07:32:30'),
(3, 'Comedy', '2025-05-28 07:32:44'),
(4, 'Drama', '2025-05-28 07:32:56'),
(5, 'Horror', '2025-05-28 07:33:20'),
(6, 'Thriller', '2025-05-28 07:33:31'),
(7, 'Sci-Fi', '2025-05-28 07:33:47'),
(8, 'Fantasy', '2025-05-28 07:39:33'),
(9, 'Romance', '2025-05-28 07:44:48'),
(10, 'Mystery', '2025-05-28 07:44:59'),
(11, 'Crime', '2025-05-28 07:45:10'),
(12, 'Documentary', '2025-05-28 07:45:20'),
(13, 'Biography', '2025-05-28 07:45:37'),
(14, 'Family', '2025-05-28 07:45:48'),
(15, 'Musical', '2025-05-28 07:45:59'),
(16, 'War', '2025-05-28 07:46:09'),
(17, 'Western', '2025-05-28 07:46:19'),
(18, 'History', '2025-05-28 07:46:29'),
(19, 'Sports', '2025-05-28 07:46:49'),
(20, 'Superhero', '2025-05-28 07:46:59'),
(21, 'Film-Noir', '2025-05-28 07:47:12'),
(22, 'Teen', '2025-05-28 07:47:23'),
(23, 'Disaster', '2025-05-28 07:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `movie_id`, `user_name`, `comment`, `created_at`) VALUES
(1, 9, 'esdhiibcwjkdfbcd;jhjcbdv', 'jcdbjk', '2025-05-29 12:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `trailer_url` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `visit_count` int(11) DEFAULT 0,
  `release_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `poster`, `video_url`, `trailer_url`, `category_id`, `year`, `duration`, `created_at`, `visit_count`, `release_date`) VALUES
(1, 'Die hard', 'chdbvlhkjfbvhsbhvbhvbsvjkb', '6836bb69162c0.jpg', '6836bb6917ef3.mp4', 'https://youtu.be/Uj1g5oumzWY', 1, 2025, '2:30', '2025-05-28 07:29:45', 0, NULL),
(2, 'upehdcjk', 'chbdsvjksfnvjkfb', '6836bfc60a555.jpg', '6836bfc60cf81.mp4', 'https://youtu.be/Uj1g5oumzWY', 2, 2025, '2:30', '2025-05-28 07:48:08', 0, NULL),
(4, 'wehlc bd', 'chldvbfjkb', '6837442d42705.jpg', '6837442d44a6b.mp4', 'https://youtu.be/Uj1g5oumzWY', 4, 2025, '2:30', '2025-05-28 17:13:17', 0, NULL),
(5, 'dkbdv', '(\'ALTER TABLE movies ADD COLUMN visit_count INT DEFAULT 0\');  TABLE movies ADD COLUMN release_date DATE DEFAULT NULL\');', '6837fbb89eec8.jpg', '68374aa2a6e03.mp4', 'https://youtu.be/Uj1g5oumzWY', 14, 2025, '2:30', '2025-05-28 17:40:50', 0, NULL),
(6, 'fhvlbfsjkvbscbds vsjkvbsvhk', 'jdbvdsjkvbdsjkvbdsjkv', '6837fdc2a02c2.jpg', '6837fdc2a2472.mp4', 'https://youtu.be/Uj1g5oumzWY', 1, 2025, '2:30', '2025-05-29 06:25:06', 0, NULL),
(7, 'lhcvdb vnkdsv ndsv sdnv', 'dshvbfdvjkbdvjk', '6837fdeba37dc.jpg', '6837fdeba4bf8.mp4', 'https://youtu.be/Uj1g5oumzWY', 1, 2025, '2:30', '2025-05-29 06:25:29', 0, NULL),
(8, 'vbfjkvfdnvjk', 'dhbvdsjkvbdsjsk', '6837fe05e289a.jpg', NULL, 'https://youtu.be/Uj1g5oumzWY', 1, 2025, '2:30', '2025-05-29 06:26:13', 0, NULL),
(9, 'hbdsb cvndsbhewvchjdksb', 'ehcbdsjkcbdsjhk', '6837fe393ff49.jpg', '6837fe3941ece.mp4', 'https://youtu.be/Uj1g5oumzWY', 1, 2025, '2:30', '2025-05-29 06:27:05', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `subheadline` varchar(255) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `image_url`, `headline`, `subheadline`, `movie_id`, `created_at`) VALUES
(5, '68383ce580e26.jpg', 'wowo12', 'lhdbckjdbvh', 9, '2025-05-29 10:54:29'),
(7, '68384682d5f28.jpg', 'wowo', 'lhdbckjdbvh', 9, '2025-05-29 11:35:30'),
(9, '683849d0435ec.jpg', 'Sharif', 'lhdbckjdbvh', 1, '2025-05-29 11:48:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD CONSTRAINT `slideshow_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

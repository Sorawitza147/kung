-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 11:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `place`
--

-- --------------------------------------------------------

--
-- Table structure for table `place_info`
--

CREATE TABLE `place_info` (
  `id` int(10) NOT NULL,
  `nameplace` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place_info`
--

INSERT INTO `place_info` (`id`, `nameplace`, `detail`, `latitude`, `longitude`) VALUES
(1, 'Chiang Mai Thailand', 'Many travelers prefer Thailand\'s pleasant northern capital over the hectic pace of life in Bangkok.', '18.796143', '98.979263'),
(2, 'Penang Malaysia', 'Known as the \"Pearl of the Orient,\" Penang is a place to relax, eat delicious food to the brink of misery, and appreciate Malaysia in a new way.', '5.285153', '100.456238'),
(3, 'Phuket Thailand', 'Phuket boasts some of the best beaches in the country, with clean, soft, rolling sands,Beautiful coral reefs line up the coastline.', '7.878978', '98.398392'),
(4, 'Beijing China', 'One of the most populous cities in the world, Beijing is also one of the oldest. You can get a peek into that history by walking the hutongs of Beijing, the narrow alleyways lined up with traditional homes and courtyards.', '39.916668', '116.383331'),
(5, 'Hoi An Vietnam', 'Most visitors arriving in Vietnam land in either Hanoi or Ho Chi Minh City, or head straight to Halong Bay and the beach-but Vietnam\'s best place to visit is actually a well-guarded secret.', '15.8801', '108.3380'),
(6, 'Hong Kong', 'Hong Kong also has the largest number of skyscrapers in the world at 355-an impressive 75 more than the city in second place, New York. Popular tourist area with one of the most stunning coastal skylines in Asia.', '22.302711', '114.177216'),
(7, 'Singapore', 'Singapore only gained full independence from the UK and became a sovereign state in 1965, but this brand-new country is now a financial powerhouse and one of the most fun countries to visit in Southeast Asia.', '1.3521', '103.8198'),
(8, 'Bali Indonesia', 'Bali is best known for its stunning golden beaches lined with swaying palm trees and blue-green waters.', '-8.409518', '115.188919'),
(9, 'Tokyo Japan', 'Perhaps not the cheapest of places to visit in Asia, bustling Tokyo is the world\'s largest metropolitan economy.', '35.6762', '139.6503'),
(10, 'Mount Fuji Japan', 'Mount Fuji belongs to the group of volcanic mountains. You don\'t need mountaineering equipment for a walking tour of Mount Fuji.', '35.3606', '138.7274');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `place_info`
--
ALTER TABLE `place_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `place_info`
--
ALTER TABLE `place_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

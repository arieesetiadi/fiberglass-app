-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 09:24 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiberglass_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investors`
--

INSERT INTO `investors` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Justus', 'justus.jpg', NULL, NULL, NULL),
(2, 'SHCP', 'shcp.gif', NULL, NULL, NULL),
(3, 'Liaonning', NULL, NULL, NULL, NULL),
(4, 'Haichen', 'haichen.png', NULL, NULL, NULL),
(5, 'HDK', 'hdk.png', NULL, NULL, NULL),
(6, 'Matapelangi', 'matapelangi.png', NULL, NULL, NULL),
(7, 'Unipol', 'unipol.png', NULL, NULL, NULL),
(8, 'Cerepol', 'cerepol.png', NULL, NULL, NULL),
(9, 'Everpol', NULL, NULL, NULL, NULL),
(10, 'Mepoxe', NULL, NULL, NULL, NULL),
(11, 'Tripoxe', NULL, NULL, NULL, NULL),
(12, 'Chemset', NULL, NULL, NULL, NULL),
(13, 'Eternal', 'eternal.jpeg', NULL, NULL, NULL),
(14, 'Jushi', 'jushi.jpeg', NULL, NULL, NULL),
(15, 'Nisser', NULL, NULL, NULL, NULL),
(16, 'Fantatex', 'fantatex.png', NULL, NULL, NULL),
(17, 'Chemtec', 'chemtec.png', NULL, NULL, NULL),
(18, 'Eterset', NULL, NULL, NULL, NULL),
(19, 'Deluxe', 'deluxe.png', NULL, NULL, NULL),
(20, 'Union Poliglass', NULL, NULL, NULL, NULL),
(21, 'Fantalon', 'fantalon.png', NULL, NULL, NULL),
(22, 'Butanox', 'butanox.png', NULL, NULL, NULL),
(23, 'Trigonox', 'trigonox.png', NULL, NULL, NULL),
(24, 'Miror glaze / Miracle gloss', 'miracle-gloss.png', NULL, NULL, NULL),
(25, 'Sekar prima warna', NULL, NULL, NULL, NULL),
(26, '3M', NULL, NULL, NULL, NULL),
(27, 'Biomass (Polishing Pad)', NULL, NULL, NULL, NULL),
(28, 'Plasthateic Clinic', 'plasthetic.png', NULL, NULL, NULL),
(29, 'Biotop Technology', NULL, NULL, NULL, NULL),
(30, 'Propertize', NULL, NULL, NULL, NULL),
(31, 'Developer Rumah', NULL, NULL, NULL, NULL),
(32, 'Logistic', NULL, NULL, NULL, NULL),
(33, 'Nisser', NULL, NULL, NULL, NULL),
(34, 'Cobalt', NULL, NULL, NULL, NULL),
(35, 'Kimco', 'kimco.png', 'soon', NULL, NULL),
(36, 'Excel', NULL, 'soon', NULL, NULL),
(37, 'DMX', NULL, 'soon', NULL, NULL),
(38, 'DMW', NULL, 'soon', NULL, NULL),
(39, 'Samson Spray Gun', NULL, 'soon', NULL, NULL),
(40, 'Setir Yacht', NULL, 'soon', NULL, NULL),
(41, 'Alat Navigator', NULL, 'soon', NULL, NULL),
(42, 'Polishing Pad 3M dan Biomass', NULL, 'soon', NULL, NULL),
(43, 'Mesin Evergreen/Evalube', NULL, 'soon', NULL, NULL),
(44, 'Mesin Yamaha', 'yamaha.jpg', 'soon', NULL, NULL),
(45, 'Mesin Honda', 'honda.png', 'soon', NULL, NULL),
(46, 'Alat Poles Bumpering Buff', NULL, 'soon', NULL, NULL),
(47, 'Cairan Kristal', NULL, 'soon', NULL, NULL),
(48, 'Amplas 3M', NULL, 'soon', NULL, NULL),
(49, 'Kompressor', NULL, 'soon', NULL, NULL),
(50, 'Wacker', 'wacker.jpeg', NULL, NULL, NULL),
(51, 'Aerosil', 'aerosil.jpeg', NULL, NULL, NULL),
(52, 'Norton', 'norton.jpeg', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

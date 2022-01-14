-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2022 at 04:52 AM
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Produk Fiberglass'),
(2, 'Yacht & Boat'),
(3, 'Produk Chemical'),
(4, 'Tools'),
(5, 'Custom Order'),
(6, 'Maklon'),
(7, 'Jasa Lining'),
(8, 'Solid Surface');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Foto Gallery', '1642032148 02.png', '2022-01-13 00:02:29', NULL),
(2, 'Foto Gallery', '1642032149 03.png', '2022-01-13 00:02:29', NULL),
(3, 'Foto Gallery', '1642032149 04.png', '2022-01-13 00:02:29', NULL),
(4, 'Foto Gallery', '1642032149 05.png', '2022-01-13 00:02:29', NULL),
(5, 'Foto Gallery', '1642032149 06.png', '2022-01-13 00:02:29', NULL),
(6, 'Foto Gallery', '1642032149 07.png', '2022-01-13 00:02:29', NULL),
(7, 'Foto Gallery', '1642032149 08.png', '2022-01-13 00:02:29', NULL),
(8, 'Foto Gallery', '1642032150 09.png', '2022-01-13 00:02:30', NULL),
(9, 'Foto Gallery', '1642032150 10.png', '2022-01-13 00:02:30', NULL),
(10, 'Foto Gallery', '1642032150 17.png', '2022-01-13 00:02:30', NULL),
(11, 'Foto Gallery', '1642032150 18.png', '2022-01-13 00:02:30', NULL),
(12, 'Foto Gallery', '1642032150 19.png', '2022-01-13 00:02:30', NULL),
(13, 'Foto Gallery', '1642032150 21.png', '2022-01-13 00:02:30', NULL),
(14, 'Foto Gallery', '1642032150 22.png', '2022-01-13 00:02:30', NULL),
(15, 'Foto Gallery', '1642032150 24.png', '2022-01-13 00:02:30', NULL),
(16, 'Foto Gallery', '1642032150 25.png', '2022-01-13 00:02:30', NULL),
(17, 'Foto Gallery', '1642032150 26.png', '2022-01-13 00:02:30', NULL),
(18, 'Foto Gallery', '1642032150 27.png', '2022-01-13 00:02:30', NULL),
(19, 'Foto Gallery', '1642032150 28.png', '2022-01-13 00:02:30', NULL),
(20, 'Foto Gallery', '1642032150 29.png', '2022-01-13 00:02:30', NULL),
(21, 'Foto Gallery', '1642032150 30.png', '2022-01-13 00:02:30', NULL),
(22, 'Foto Gallery', '1642032151 31.png', '2022-01-13 00:02:31', NULL),
(23, 'Foto Gallery', '1642032151 32.png', '2022-01-13 00:02:31', NULL),
(24, 'Foto Gallery', '1642032151 33.png', '2022-01-13 00:02:31', NULL),
(25, 'Foto Gallery', '1642032151 34.png', '2022-01-13 00:02:31', NULL);

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
(1, 'Justus', NULL, NULL, NULL, NULL),
(2, 'SHCP', NULL, NULL, NULL, NULL),
(3, 'Liaonning', NULL, NULL, NULL, NULL),
(4, 'Haichen', NULL, NULL, NULL, NULL),
(5, 'HDK', NULL, NULL, NULL, NULL),
(6, 'Matapelangi', NULL, NULL, NULL, NULL),
(7, 'Unipol', NULL, NULL, NULL, NULL),
(8, 'Cerepol', NULL, NULL, NULL, NULL),
(9, 'Everpol', NULL, NULL, NULL, NULL),
(10, 'Mepoxe', NULL, NULL, NULL, NULL),
(11, 'Tripoxe', NULL, NULL, NULL, NULL),
(12, 'Chemset', NULL, NULL, NULL, NULL),
(13, 'Eternal', NULL, NULL, NULL, NULL),
(14, 'Jushi', NULL, NULL, NULL, NULL),
(15, 'Nisser', NULL, NULL, NULL, NULL),
(16, 'Fantatex', NULL, NULL, NULL, NULL),
(17, 'Chemtec', NULL, NULL, NULL, NULL),
(18, 'Eterset', NULL, NULL, NULL, NULL),
(19, 'Deluxe', NULL, NULL, NULL, NULL),
(20, 'Union Poliglass', NULL, NULL, NULL, NULL),
(21, 'Fantalon', NULL, NULL, NULL, NULL),
(22, 'Butanox', NULL, NULL, NULL, NULL),
(23, 'Trigonox', NULL, NULL, NULL, NULL),
(24, 'Miror glaze / Miracle gloss', NULL, NULL, NULL, NULL),
(25, 'Sekar prima warna', NULL, NULL, NULL, NULL),
(26, '3M', NULL, NULL, NULL, NULL),
(27, 'Biomass (Polishing Pad)', NULL, NULL, NULL, NULL),
(28, 'Plasthateic Clinic', NULL, NULL, NULL, NULL),
(29, 'Biotop Technology', NULL, NULL, NULL, NULL),
(30, 'Propertize', NULL, NULL, NULL, NULL),
(31, 'Developer Rumah', NULL, NULL, NULL, NULL),
(32, 'Logistic', NULL, NULL, NULL, NULL),
(33, 'Nisser', NULL, NULL, NULL, NULL),
(34, 'Cobalt', NULL, NULL, NULL, NULL),
(35, 'Kimco', NULL, 'soon', NULL, NULL),
(36, 'Excel', NULL, 'soon', NULL, NULL),
(37, 'DMX', NULL, 'soon', NULL, NULL),
(38, 'DMW', NULL, 'soon', NULL, NULL),
(39, 'Samson Spray Gun', NULL, 'soon', NULL, NULL),
(40, 'Setir Yacht', NULL, 'soon', NULL, NULL),
(41, 'Alat Navigator', NULL, 'soon', NULL, NULL),
(42, 'Polishing Pad 3M dan Biomass', NULL, 'soon', NULL, NULL),
(43, 'Mesin Evergreen/Evalube', NULL, 'soon', NULL, NULL),
(44, 'Mesin Yamaha', NULL, 'soon', NULL, NULL),
(45, 'Mesin Honda', NULL, 'soon', NULL, NULL),
(46, 'Alat Poles Bumpering Buff', NULL, 'soon', NULL, NULL),
(47, 'Cairan Kristal', NULL, 'soon', NULL, NULL),
(48, 'Amplas 3M', NULL, 'soon', NULL, NULL),
(49, 'Kompressor', NULL, 'soon', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`) VALUES
(1, 'logo.png'),
(3, '1641387618 stikombaru.png'),
(4, '1641387649 office.png'),
(5, '1641387758 logo.png'),
(6, '1641440840 phoenix.jpg'),
(7, '1641815306 03.png'),
(8, '1641815344 03@2x.png');

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_01_05_101512_create_logos_table', 2),
(4, '2022_01_05_130402_create_kategori_table', 3),
(5, '2022_01_05_131111_create_categories_table', 4),
(6, '2022_01_05_143858_create_products_table', 5),
(8, '2022_01_05_144225_create_product_images_table', 6),
(9, '2022_01_11_231105_create_visitors_table', 7),
(11, '2022_01_12_110048_create_gallery_table', 8),
(12, '2022_01_12_212708_create_investors_table', 9),
(13, '2022_01_13_204022_create_socials_table', 10),
(14, '2022_01_13_211631_create_social_types_table', 11);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `stock`, `description`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tangki Plastik', 'tangki-plastik', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(2, 'Tangki Stainless', 'tangki-stainless', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(3, 'Plywood', 'plywood', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(4, 'Tangki Panel', 'tangki-panel', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(5, 'Tangki Air', 'tangki-air', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(6, 'Septic Tank', 'septic-tank', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(7, 'Grease Trap', 'grease-trap', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(8, 'Water Slide', 'water-slide', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(9, 'Atap Fiber', 'atap-fiber', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(10, 'Kursi Salon', 'kursi-salon', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(11, 'Alat Dulang Emas', 'alat-dulang-emas', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(12, 'Sepeda Air', 'sepeda-air', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(13, 'Tong Sampah', 'tong-sampah', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(14, 'Action Figure', 'action-figure', 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(15, 'Kursi', 'kursi', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(16, 'Mini Bar', 'mini-bar', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(17, 'Stp', 'stp', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(18, 'Ipal', 'ipal', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(19, 'Storage Tank', 'storage-tank', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(20, 'Cool Box', 'cool-box', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(21, 'Dermaga Apung', 'dermaga-apung', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(22, 'Urinator / Urinoir', 'urinator-/-urinoir', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(23, 'Cetakan Semen', 'cetakan-semen', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(24, 'Topi Truk', 'topi-truk', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(25, 'Jacket Life Box', 'jacket-life-box', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(26, 'Pintu Kereta', 'pintu-kereta', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(27, 'Dashboard Mobil Dan Pesawat', 'dashboard-mobil-dan-pesawat', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(28, 'Pipa', 'pipa', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(29, 'Kap Lampu Tidur', 'kap-lampu-tidur', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(30, 'Kursi Bus', 'kursi-bus', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(31, 'Chemical Tank', 'chemical-tank', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(32, 'Bak Budidaya Pembibitan Ikan', 'bak-budidaya-pembibitan-ikan', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(33, 'Bak Filter', 'bak-filter', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(34, 'Playground', 'playground', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(35, 'Bathup', 'bathup', 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(36, 'Wastafel', 'wastafel', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(37, 'Toilet Portable', 'toilet-portable', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(38, 'Toilet Set Hotel', 'toilet-set-hotel', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(39, 'Bak Mandi', 'bak-mandi', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(40, 'Papan Seluncur Surfing Boat', 'papan-seluncur-surfing-boat', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(41, 'Gocart', 'gocart', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(42, 'Kancing', 'kancing', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(43, 'Hotel Kapsul', 'hotel-kapsul', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(44, 'Gear Box', 'gear-box', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(45, 'Over Vender', 'over-vender', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(46, 'List Jendela Bus', 'list-jendela-bus', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(47, 'Nozzle Minipom', 'nozzle-minipom', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(48, 'Pinhole Golf', 'pinhole-golf', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(49, 'Box Motor', 'box-motor', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(50, 'Tangki Water Filter', 'tangki-water-filter', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(51, 'Manekin', 'manekin', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(52, 'Meja Payung Fiber', 'meja-payung-fiber', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(53, 'Box Mobil', 'box-mobil', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(54, 'Ground Tank', 'ground-tank', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(55, 'Bilah Kincir Angin', 'bilah-kincir-angin', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(56, 'Bak Indikator', 'bak-indikator', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(57, 'Patung Fiber', 'patung-fiber', 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(58, 'Speed Boat', 'speed-boat', 0, NULL, 2, 1, '2022-01-06 01:29:57', NULL),
(59, 'Motor Boat', 'motor-boat', 0, NULL, 2, 1, '2022-01-06 01:29:57', NULL),
(60, 'Yacht', 'yacht', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(61, 'Fishing Boat', 'fishing-boat', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(62, 'Ambulance Boat', 'ambulance-boat', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(63, 'Patrol Boat', 'patrol-boat', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(64, 'Passenger Boat', 'passenger-boat', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(65, 'Water Transport', 'water-transport', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(66, 'Cano', 'cano', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(67, 'Catamaran', 'catamaran', 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(68, 'Resin Poliester', 'resin-poliester', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(69, 'Resin Bening', 'resin-bening', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(70, 'Resin Lycal', 'resin-lycal', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(71, 'Resin Vinilester', 'resin-vinilester', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(72, 'Resin Bisfenol', 'resin-bisfenol', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(73, 'Polyamida Resin', 'polyamida-resin', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(74, 'Gelcoat', 'gelcoat', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(75, 'Mma (anti Bubble)', 'mma-(anti-bubble)', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(76, 'Dempul Norton Dll', 'dempul-norton-dll', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(77, 'Resin Epoxy', 'resin-epoxy', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(78, 'Pigmen', 'pigmen', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(79, 'Katalis', 'katalis', 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(80, 'Matt Serat', 'matt-serat', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(81, 'Matt Roving', 'matt-roving', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(82, 'Matt Pultrusion', 'matt-pultrusion', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(83, 'Talk', 'talk', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(84, 'Aerosil', 'aerosil', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(85, 'Katalis', 'katalis', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(86, 'Miror Glaze', 'miror-glaze', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(87, 'Alkohol', 'alkohol', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(88, 'Aseton', 'aseton', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(89, 'Thinner', 'thinner', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(90, 'Formaline', 'formaline', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(91, 'Silicon Emulsion', 'silicon-emulsion', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(92, 'Silicon Oil', 'silicon-oil', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(93, 'Silicon Rubber', 'silicon-rubber', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(94, 'Pu', 'pu', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(95, 'Kaustik Soda Asahi, Tjiwi', 'kaustik-soda-asahi,-tjiwi', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(96, 'Kaporit Tjiwi Powder, Dan Granul', 'kaporit-tjiwi-powder,-dan-granul', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(97, 'Kaporit China Tablet', 'kaporit-china-tablet', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(98, 'Manganese', 'manganese', 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(99, 'Zeolit', 'zeolit', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(100, 'Citrun', 'citrun', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(101, 'Texaphone', 'texaphone', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(102, 'Sodium Sulfat', 'sodium-sulfat', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(103, 'Sls', 'sls', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(104, 'Parfum', 'parfum', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(105, 'Perekat Fixative Parfum', 'perekat-fixative-parfum', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(106, 'Pac', 'pac', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(107, 'Tawas', 'tawas', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(108, 'Trusi', 'trusi', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(109, 'Stpp', 'stpp', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(110, 'Sodium Karbonat', 'sodium-karbonat', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(111, 'Sodium Bikarbonat', 'sodium-bikarbonat', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(112, 'Hcl', 'hcl', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(113, 'H2so4', 'h2so4', 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(114, 'Hf', 'hf', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(115, 'Titanium Dioxide', 'titanium-dioxide', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(116, 'Pemanis Makanan', 'pemanis-makanan', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(117, 'Pewarna Makanan', 'pewarna-makanan', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(118, 'Pigment Pakaian', 'pigment-pakaian', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(119, 'Metanol', 'metanol', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(120, 'Peroksida', 'peroksida', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(121, 'Ipa', 'ipa', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(122, 'Etil Asetat', 'etil-asetat', 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(123, 'Pisau Blade Marmer', 'pisau-blade-marmer', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(124, 'Pisau Gerinda', 'pisau-gerinda', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(125, 'Amplas', 'amplas', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(126, 'Mata Bor', 'mata-bor', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(127, 'Diamond Pad (merek Makita)', 'diamond-pad-(merek-makita)', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(128, 'Mesin Grinder', 'mesin-grinder', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(129, 'Mesin Bor', 'mesin-bor', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(130, 'Roda', 'roda', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(131, 'Gerinda', 'gerinda', 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(132, 'Kitchen Set', 'kitchen-set', 0, NULL, 8, 1, '2022-01-06 01:30:01', NULL),
(133, 'Event', 'event', 0, NULL, 8, 1, '2022-01-06 01:30:01', NULL),
(134, 'Our Client', 'our-client', 0, NULL, 8, 1, '2022-01-06 01:30:01', '2022-01-13 11:55:08'),
(137, 'Nama Produk Baru', 'nama-produk-baru', 1212, '<h2>Deskripsi Produk</h2>\r\n\r\n<p>It&#39;s not only writers who can benefit from this free online tool. If you&#39;re a programmer who&#39;s working on a project where blocks of text are needed, this tool can be a great way to get that. It&#39;s a good way to test your programming and that the tool being created is working well.</p>\r\n\r\n<p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\r\n\r\n<p>If you do find this paragraph tool useful, please do us a favor and let us know how you&#39;re using it. It&#39;s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you&#39;d like to see changed or added to make it better in the future.</p>', 1, 1, '2022-01-06 10:18:39', '2022-01-12 02:30:23'),
(138, 'Contoh Nama Produk', 'contoh-nama-produk', 100, '<h1>Deskripsi Produk</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque sunt laborum quo atque quas consectetur repellat asperiores dolore fugit? Quidem incidunt consectetur nihil praesentium nostrum aspernatur cupiditate laboriosam ipsam quo a rerum minus, et in ea possimus architecto! Nemo veritatis pariatur, ea porro molestias, iure vel perspiciatis totam optio nulla libero quam adipisci ullam modi quidem illo consectetur commodi voluptate esse ipsa laudantium sed? Culpa quia, voluptatum illo consequatur nostrum temporibus sunt natus dolorem, non, eos asperiores? In aspernatur, vero nostrum pariatur, ut laborum repudiandae aut molestias corporis nisi accusamus quam deleniti officiis voluptatibus harum eveniet aperiam blanditiis, numquam maxime.</p>', 3, 1, '2022-01-13 02:17:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hide` tinyint(1) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `is_hide`, `product_id`, `created_at`, `updated_at`) VALUES
(4, '1641542984 1641387649 office.png', 0, 137, '2022-01-07 08:09:44', NULL),
(7, '1641954623 03.png', 0, 137, '2022-01-12 02:30:23', NULL),
(8, '1642040241 twitch (1).png', 0, 138, '2022-01-13 02:17:21', NULL),
(9, '1642040241 twitch.png', 0, 138, '2022-01-13 02:17:21', NULL),
(10, '1642040242 youtube.png', 0, 138, '2022-01-13 02:17:22', NULL),
(11, '1642074908 01.png', 1, 134, '2022-01-13 11:55:08', NULL),
(12, '1642074908 02.png', 0, 134, '2022-01-13 11:55:08', NULL),
(13, '1642074909 03.png', 1, 134, '2022-01-13 11:55:09', NULL),
(14, '1642074909 04.png', 0, 134, '2022-01-13 11:55:09', NULL),
(15, '1642074909 05.png', 0, 134, '2022-01-13 11:55:09', NULL),
(16, '1642074909 06.png', 0, 134, '2022-01-13 11:55:09', NULL),
(17, '1642074909 07.png', 1, 134, '2022-01-13 11:55:09', NULL),
(18, '1642074909 08.png', 0, 134, '2022-01-13 11:55:09', NULL),
(19, '1642074909 09.png', 0, 134, '2022-01-13 11:55:09', NULL),
(20, '1642074909 10.png', 1, 134, '2022-01-13 11:55:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `type`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Instagram', 'instagram', 'https://instagram.com/', '2022-01-13 15:02:39', NULL),
(2, 'Facebook', 'facebook', 'https://www.facebook.com/', '2022-01-13 15:03:02', NULL),
(3, 'YouTube', 'youtube', 'https://www.youtube.com/', '2022-01-13 15:03:37', NULL),
(4, 'Tokopedia', 'tokopedia', 'https://www.tokopedia.com/', '2022-01-13 15:03:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_types`
--

CREATE TABLE `social_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_types`
--

INSERT INTO `social_types` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'instagram', 'Instagram', NULL, NULL),
(2, 'facebook', 'Facebook', NULL, NULL),
(3, 'twitter', 'Twitter', NULL, NULL),
(4, 'hello', 'Hello', NULL, NULL),
(5, 'whatsapp', 'Whatsapp', NULL, NULL),
(6, 'wechat', 'WeChat', NULL, NULL),
(7, 'snapchat', 'Snapchat', NULL, NULL),
(8, 'youtube', 'Youtube', NULL, NULL),
(9, 'twitch', 'Twitch', NULL, NULL),
(10, 'tokopedia', 'Tokopedia', NULL, NULL),
(11, 'line', 'Line', NULL, NULL),
(12, 'shopee', 'Shopee', NULL, NULL),
(13, 'bukalapak', 'Bukalapak', NULL, NULL),
(14, 'jdid', 'JD.ID', NULL, NULL),
(15, 'email', 'Email', '2022-01-14 01:51:07', NULL),
(16, 'phone', 'Phone', '2022-01-14 01:51:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tuarie', 'Arie', 'tuarimb29@gmail.com', '$2y$10$eOJ5.qYUhLJWWYQtyMr6TeHgQFd5sNaJGfPHpjaHLGDkYwi7XUc7W', 'NKUNKst5PizkC9IfaopyWQaWlSveEv3F9ondEe6aeaSPg9nI04v59OhcSoqH', '2022-01-05 06:24:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `country`, `city`, `state`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:30:37', NULL),
(2, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:34:16', NULL),
(3, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:42:58', NULL),
(4, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:43:01', NULL),
(5, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:43:03', NULL),
(6, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:43:07', NULL),
(7, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:43:10', NULL),
(8, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 15:43:13', NULL),
(9, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:23:26', NULL),
(10, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:32:14', NULL),
(11, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:33:38', NULL),
(12, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:35:06', NULL),
(13, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:37:10', NULL),
(14, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:37:26', NULL),
(15, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:38:59', NULL),
(16, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:39:43', NULL),
(17, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 02:40:21', NULL),
(18, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 06:11:48', NULL),
(19, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 06:14:41', NULL),
(20, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 06:15:25', NULL),
(21, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 06:53:42', NULL),
(22, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 09:08:02', NULL),
(23, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 09:23:42', NULL),
(24, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:35:44', NULL),
(25, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:38:14', NULL),
(26, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:42:56', NULL),
(27, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:43:31', NULL),
(28, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:44:23', NULL),
(29, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:44:41', NULL),
(30, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:47:17', NULL),
(31, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:49:41', NULL),
(32, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:50:18', NULL),
(33, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:52:31', NULL),
(34, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:53:10', NULL),
(35, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:53:22', NULL),
(36, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:53:34', NULL),
(37, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:54:02', NULL),
(38, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:54:25', NULL),
(39, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:54:33', NULL),
(40, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:54:41', NULL),
(41, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 12:55:22', NULL),
(42, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-14 16:00:00', NULL),
(43, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-09 16:00:00', NULL),
(44, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-06 16:00:00', NULL),
(45, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-08 16:00:00', NULL),
(46, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-05 16:00:00', NULL),
(47, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-08 16:00:00', NULL),
(48, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-16 16:00:00', NULL),
(49, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-23 16:00:00', NULL),
(50, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-31 16:00:00', NULL),
(51, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-06 16:00:00', NULL),
(52, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-23 16:00:00', NULL),
(53, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-20 16:00:00', NULL),
(54, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-04 16:00:00', NULL),
(55, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-10 16:00:00', NULL),
(56, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-25 16:00:00', NULL),
(57, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-05 16:00:00', NULL),
(58, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-17 16:00:00', NULL),
(59, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-21 16:00:00', NULL),
(60, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-22 16:00:00', NULL),
(61, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-18 16:00:00', NULL),
(62, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-17 16:00:00', NULL),
(63, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-03 16:00:00', NULL),
(64, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-12 16:00:00', NULL),
(65, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-31 16:00:00', NULL),
(66, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 16:00:00', NULL),
(67, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-03 16:00:00', NULL),
(68, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-07 16:00:00', NULL),
(69, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-24 16:00:00', NULL),
(70, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-08 16:00:00', NULL),
(71, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-21 16:00:00', NULL),
(72, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 16:00:00', NULL),
(73, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 16:00:00', NULL),
(74, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 16:00:00', NULL),
(75, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-06 16:00:00', NULL),
(76, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-03 16:00:00', NULL),
(77, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-05 16:00:00', NULL),
(78, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-02 16:00:00', NULL),
(79, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-11 16:00:00', NULL),
(80, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-04 16:00:00', NULL),
(81, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-12 16:00:00', NULL),
(82, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-02 16:00:00', NULL),
(83, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-26 16:00:00', NULL),
(84, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-24 16:00:00', NULL),
(85, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-02 16:00:00', NULL),
(86, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-01 16:00:00', NULL),
(87, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-05 16:00:00', NULL),
(88, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-10 16:00:00', NULL),
(89, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-02 16:00:00', NULL),
(90, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-21 16:00:00', NULL),
(91, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-18 16:00:00', NULL),
(92, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-24 16:00:00', NULL),
(93, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-06 16:00:00', NULL),
(94, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-16 16:00:00', NULL),
(95, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-03 16:00:00', NULL),
(96, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-23 16:00:00', NULL),
(97, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-29 16:00:00', NULL),
(98, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-01 16:00:00', NULL),
(99, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-13 16:00:00', NULL),
(100, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-25 16:00:00', NULL),
(101, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-11 16:00:00', NULL),
(102, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-17 16:00:00', NULL),
(103, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-14 16:00:00', NULL),
(104, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-10 16:00:00', NULL),
(105, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-07 16:00:00', NULL),
(106, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-04 16:00:00', NULL),
(107, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-21 16:00:00', NULL),
(108, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-26 16:00:00', NULL),
(109, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-11 16:00:00', NULL),
(110, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-14 16:00:00', NULL),
(111, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-06 16:00:00', NULL),
(112, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-23 16:00:00', NULL),
(113, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-27 16:00:00', NULL),
(114, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-03 16:00:00', NULL),
(115, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-01 16:00:00', NULL),
(116, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-27 16:00:00', NULL),
(117, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-27 16:00:00', NULL),
(118, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-05 16:00:00', NULL),
(119, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-11 16:00:00', NULL),
(120, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-10 16:00:00', NULL),
(121, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-12 16:00:00', NULL),
(122, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-09 16:00:00', NULL),
(123, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-02 16:00:00', NULL),
(124, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-01 16:00:00', NULL),
(125, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-28 16:00:00', NULL),
(126, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-04 16:00:00', NULL),
(127, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-12 16:00:00', NULL),
(128, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-26 16:00:00', NULL),
(129, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-12 16:00:00', NULL),
(130, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-20 16:00:00', NULL),
(131, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-05 16:00:00', NULL),
(132, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-08 16:00:00', NULL),
(133, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-27 16:00:00', NULL),
(134, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-06 16:00:00', NULL),
(135, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-07 16:00:00', NULL),
(136, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-01 16:00:00', NULL),
(137, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-06 16:00:00', NULL),
(138, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-15 16:00:00', NULL),
(139, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-27 16:00:00', NULL),
(140, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-13 16:00:00', NULL),
(141, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2021-12-19 16:00:00', NULL),
(142, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 13:06:06', NULL),
(143, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 13:10:17', NULL),
(144, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 13:12:15', NULL),
(145, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 13:12:54', NULL),
(146, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 13:13:06', NULL),
(147, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 13:13:33', NULL),
(148, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 13:17:54', NULL),
(149, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-12 23:26:37', NULL),
(150, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 00:04:03', NULL),
(151, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 01:14:58', NULL),
(152, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 01:55:22', NULL),
(153, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 02:27:30', NULL),
(154, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 02:28:18', NULL),
(155, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 02:31:38', NULL),
(156, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 02:32:06', NULL),
(157, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 09:53:42', NULL),
(158, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 09:55:00', NULL),
(159, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 09:55:39', NULL),
(160, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 09:56:28', NULL),
(161, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 09:57:26', NULL),
(162, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 09:57:44', NULL),
(163, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 09:57:57', NULL),
(164, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:00:06', NULL),
(165, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:00:26', NULL),
(166, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:06:14', NULL),
(167, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:06:45', NULL),
(168, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:08:28', NULL),
(169, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:09:10', NULL),
(170, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:09:33', NULL),
(171, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:10:36', NULL),
(172, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:11:00', NULL),
(173, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:11:29', NULL),
(174, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:13:02', NULL),
(175, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:13:21', NULL),
(176, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:24:13', NULL),
(177, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:35:06', NULL),
(178, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:36:47', NULL),
(179, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:37:04', NULL),
(180, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:38:03', NULL),
(181, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 10:38:57', NULL),
(182, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 15:04:24', NULL),
(183, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-13 15:21:40', NULL),
(184, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-14 01:39:52', NULL),
(185, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-14 01:52:21', NULL),
(186, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-14 01:54:12', NULL),
(187, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-14 02:39:45', NULL),
(188, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-14 02:44:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_types`
--
ALTER TABLE `social_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_types`
--
ALTER TABLE `social_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

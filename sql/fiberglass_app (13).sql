-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 05:16 PM
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
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `name`, `content`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Brochure', 'https://www.google.co.id', NULL, '2022-01-21 15:59:58', NULL),
(2, 'Price List', '1642781709-pedoman ta s1 2019 revisi 1.1.pdf', 'file', '2022-01-21 16:15:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(2, 'Apa itu Fiberglass ?', '<p>Fiberglass atau sering disebut juga Sebagai FRP (Fiber Reinforced Plastic) adalah bahan yang terbuat dari serat kaca yang diresapi dengan Resin sehingga menjadi bahan yang kuat dan tahan korosi yang dapat digunakan untuk membuat berbagai macam bentuk dan desain seperti bagian mobil, badan kapal, dan lainnya.</p>', '2022-01-19 10:26:44', NULL),
(3, 'Apa saja keunggulan dari Fiberglass ?', '<ol>\r\n	<li>Mudah dibentuk dan didesain menjadi apapun sesuai dengan keinginan</li>\r\n	<li>Kuat dan Tahan Lama</li>\r\n	<li>Tahan Korosi</li>\r\n	<li>Tidak mudah berlumut</li>\r\n	<li>Ringan</li>\r\n	<li>Dapat menjadi Isolator Panas dan Listrik</li>\r\n	<li>Tahan terhadap Bahan Kimia</li>\r\n	<li>Stabilitas Dimensional&nbsp;Fiberglass tidak akan menyusut atau merenggang dan tidak sensitive terhadap perubahan suhu</li>\r\n	<li>Ekonomis : Cenderung Lebih Murah dibandingkan Material lain dengan kekuatan serupa, seperti untuk pembuatan kapal dalam jumlah sedikit dan tidak dapat diotomatisasi</li>\r\n	<li>Estetika : Dapat dibuat menjadi bahan dekorasi ruangan seperti Vas Bunga, Tiruan Marmer, Action Figure, dan lainnya</li>\r\n	<li>Mudah Diperbaiki seandainya terjadi kerusakan atau kebocoran</li>\r\n	<li>Pembuatannya relatif cepat</li>\r\n</ol>', '2022-01-19 10:29:08', NULL),
(4, 'Apa itu Tangki Air Panel ?', '<p>Tangki Air Panel adalah Tangki Air berbentuk kotak yang terdiri dari panel panel yang dirangkai dan disusun menjadi sebuah tangki yang umumnya digunakan untuk menampung air dengan volume yang cukup besar dan biasanya diletakkan di atas bangunan sehingga disebut juga sebagai roof tank. Keunggulan tangki panel adalah ukurannya dapat disesuaikan dengan space yang tersedia dan memudahkan dalam pengiriman sehingga tidak membutuhkan biaya mahal untuk pengirimannya, yang mana biaya pengiriman untuk tangki silinder biasanya dihitung berdasarkan volume sedangkan isinya kosong sehingga bebiaya mahal, untuk tangki panel dapat dikirim dalam bentuk panel yang disusun sehingga menghemat biaya pengiriman.</p>', '2022-01-19 10:31:04', NULL),
(5, 'Apa itu Septic Tank ?', '<p>Septic Tank adalah tangki yang digunakan untuk menampung kotoran manusia untuk sementara sebelum dialirkan ke saluran pembuangan limbah kota. Untuk mencegah terjadinya pencemaran lingkungan oleh limbah manusia, khususnya untuk mencegah pencemaran air tanah yang masih umum digunakan oleh banyak masyarakat umum, Septic Tank perlu didesain khusus menjadi beberapa sekat di dalamnya yang berfungsi untuk mengendapkan kotoran, menguraikan limbah padat dan mematikan kuman bakteri yang ada pada kotoran yang sudah diuraikan. Septic Tank yang baik perlu ditambahkan bakteri pengurai di dalamnya untuk menguraikan kotoran yang berbentuk padat untuk menjadi cair dan desinfektan seperti klorin di saluran pipa keluarnya untuk mematikan bakteri yang ada sebelum disalurkan ke saluran pembuangan tata kota.</p>', '2022-01-19 10:33:35', NULL),
(6, 'Apakah ada peraturan pemerintah yang mengatur tentang Septic Tank ?', '<p>Ya ada, penjelasan mengenai septic tank diatur didalam <strong>Peraturan Menteri Kesehatan No. 3 Tahun 2014 tentang Sanitasi Total Berbasis Masyarakat</strong> &nbsp;yang mengatur bahwa setiap jamban perlu dilengkapi dengan fasilitas septic tank</p>', '2022-01-19 10:34:37', NULL),
(7, 'Bagaimana cara menghitung ukuran Septic Tank ?', '<p>Berdasarkan ketentuan <strong>Standar Nasional Indonesia (SNI 2398:2017),</strong> untuk septic tank khusus tinja dan urin yg terpisah dengan limbah rumah tangga, berdasarkan jumlah pemakainya :<br />\r\n- jumlah pemakai 10 orang, volume septic tank = 1,66 meter kubik<br />\r\n- jumlah pemakai 15 orang, volume = 2,5 meter kubik<br />\r\n- jumlah pemakai 20 orang, volume = 2,9 meter kubik<br />\r\n- jumlah pemakai 50 orang, volume = 5,2 meter kubik</p>\r\n\r\n<p><br />\r\nAturan tersebut mengatur tentang septic tank yang berukuran kotak, Tetapi untuk rekomendasi dari SSP-Fiberglass adalah 200 liter untuk setiap jumlah pemakai<br />\r\n- jumlah pemakai 4-6 orang = 800 liter<br />\r\n- jumlah pemakai 6-8 orang = 1,4 meter kubik<br />\r\n- jumlah pemakai 8-10 orang = 2 meter kubik<br />\r\n- jumlah pemakai 10-12 orang = 2,4 meter kubik</p>', '2022-01-19 10:36:43', NULL),
(8, 'Apa Itu Grease Trap ?', '<p>Grease Trap atau bak lemak adalah alat perangkap minyak yang berguna untuk membantu memisahkan minyak dari air pada limbah rumah tangga sehingga minyak tidak menggumpal dan membeku di pipa saluran pembuangan dan mencegah pipa tersumbat. Grease Trap biasanya dipasang pada wastafel di dapur yang biasanya sering digunakan untuk memasak karena umumnya limbah dari dapur sedikit banyak akan mengandung minyak. Limbah minyak ini apabila tidak disaring dengan baik dapat menyebabkan pipa saluran akan tersumbat oleh minyak yang membeku membentuk kerak, apabila masuk ke dalam Septic Tank dapat mengganggu proses penguraian yang ada di Septic Tank dan apabila sampai keluar ke saluran tata kota dapat menyebabkan bau yang tidak sedap, pencemaran dan dapat menimbulkan penyakit. Lapisan Minyak dan lemak ini sangat lambat diolah dan diurai oleh mikoroorganisme dalam proses penguraian secara anaerobic .&nbsp;</p>', '2022-01-19 10:38:47', NULL),
(9, 'Bagaimana perbedaan material Plastik vs Fiberglass ?', '<p><strong>Penampilan :</strong></p>\r\n\r\n<ul>\r\n	<li><strong><em>Plastik:</em></strong><em> </em>&nbsp;Produk Plastik bisa terlihat licin dan warna cerah tetapi tidak dapat bertahan lama dan akan luntur dalam jangka panjang</li>\r\n	<li><strong><em>Fiberglass :</em></strong><em> </em>Fiberglass dapat dilapisi gelcoat dalam cetakan dengan berbagai macam warna untuk mencapai tampilan yang licin, cerah dan berkilau. Selain itu warana dari gelcoat akan tahan lebih lama dan bahkan tidak membutuhkan perawatan</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Korosi :</strong></p>\r\n\r\n<ul>\r\n	<li><strong><em>Plastic :</em></strong> <em>&nbsp;</em>Plastik mempunyai ketahanan yang rendah dan umur penggunaan yang singkatketika digunakan di lingkungan yang korosif</li>\r\n	<li><strong><em>Fiberglass :</em></strong><em> </em>Sangat tahan terhadap lingkungan yang ekstrim, fiberglass tidak berkarat dan sangat tahan korosif. Sifat NonKorosif dari fiberglass memberikan daya ahan lebih lama dibandingkanlogam atau kayu karena fiberglass tidak bereaksi dengan bahan kimia lain</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Stabilitas :</strong></p>\r\n\r\n<ul>\r\n	<li><strong><em>Plastic :</em></strong> Plastik bisa mengalami perubahan ketika dibawh tekanan dan lingkungan yang ekstrim. Cahaya UV akan menyebabkan degradasi membuat plastic semakin rapuh dan rentan terhadap keretakan atau kebocoran</li>\r\n	<li><strong><em>Fiberglass :</em></strong> Fiberglass menunjukan pengerutan atau perengangan yang paling minimal jika dibandingkan plastic atau logam sehingga Fiberglass lebih stabil dibawah tekanan mekanis dan lingkungan yang ekstrim karena fiberglass dapat memberikan perlindungan terhadapUV, suhu ekstrim, garam dan berbagai bahan kimia.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Harga :</strong></p>\r\n\r\n<ul>\r\n	<li><strong><em>Plastik </em></strong>: Harga Plastik Murah dan Terjangkau jika diproduksi dengan jumlah sangat banyak</li>\r\n	<li><strong><em>Fiberglass :</em></strong> Harga untuk Produk Fiberglas sangat terjangkau , biaya teknik dan cetakan relative rendah dibandingkan dengan bahan lainnya. Setelah cetakan dibuat, komponen atau produk dapat dicetak dengan cepat dan tepat. Selain itu sifat nonkorosif dan daya tahan fiberglass akan membantu menurunkan biaya perawatan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ketahanan :</strong></p>\r\n\r\n<ul>\r\n	<li><strong><em>Plastic</em></strong> : Berfungsi sebagai alternative untuk bahan kayu dan logam meskipun tidak bersaing dengan kekuatan fiberglass</li>\r\n	<li><strong><em>Fiberglass</em></strong> :&nbsp; Komposit adalah bahan yang terdiri dari dua komponenyang tergabung dan menghasilkan kekuatan fisik jauh lebih kuat dibandingkan sifat setiap komponen nya masing masing. FRP atau Fiberglass Reinforced Plastic adalah gabungan serat kaca dan resin plastic atau polimer yang bila dikombinasikan akan menjadi lebih kuat, tahan lama, non korosif dan ringan. Fiberglass mempunyai rasio kekuatan yang tinggi dengan berat yang ringan bi;a dibandingkan dengan baja yang meskipun kuat tetapi mempunyai berat yang besar pula sehingga fiberglass cocok digunakan untuk menghasilkan produk yang membutuhkan kekuatan unggul dan berat minimal seperti kapal.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Perawatan :</strong></p>\r\n\r\n<ul>\r\n	<li><strong><em>Plastik </em></strong>: Ketika retak, pecah, berlubang atau bolong maka plastic tidak bisa diperbaiki dan harus dibuang</li>\r\n	<li><strong><em>Fiberglass </em></strong>: Ketika ada retak, pecah, berlubang atau bocor maka fiberglass mudah untuk diperbaiki kembali sehingga lebih efisien</li>\r\n</ul>', '2022-01-19 10:44:32', '2022-01-19 12:55:33'),
(10, 'Apa itu Solid Surface ?', '<p>Solid Surface adalah material bahan sintetis yang sering digunakan sebagai alas permukaan meja dan mempunyai penampilan yang mirip dengan batu granit atau marmer sehingga bahan ini sering disebut sebagai tiruan granit atau marmer. Material Solid Surface ditemukan oleh Du Pont pertama kali pada tahun 1967 dan saat ini Solid Surface dapat dibuat lembaran dengan ukuran dimensi tertentu</p>', '2022-01-19 10:45:09', NULL),
(11, 'Apa Keunggulan dan Kekurangan Solid Surface ?', '<p>Keunggulan Solid surface</p>\r\n\r\n<ol>\r\n	<li>Lebih Tahan Gores</li>\r\n	<li>Lebih Higienis</li>\r\n	<li>Lebih Tahan terhadap Noda</li>\r\n	<li>Warna Warninya menarik , dapat di customed dan tidak kalah menarik dibandingkan marmer ataupun granit</li>\r\n	<li>Pada pemasangannya tidak berupa sambungan sehingga tidak meninggalkan bekas garis sambungan, berbeda dengan marmer atau granit yang pada sambungganya akan meninggalkan garis sambungan sehingga terlihat lebih rapi</li>\r\n	<li>Mempunyai kepadatan yang tinggi sehingga tahan terhadap panas, zat kimia tetapi kata &ldquo;tahan&rdquo; bukan berarti &ldquo;anti&rdquo; sehingga material solid surface tetap membutuhkan perawatan.</li>\r\n	<li>Solid Surface mempunyai pori-pori dengan ukuran sangat kecil sehinga tidak akan menyerap kotoran dan mudah dibersihkan</li>\r\n	<li>Bobotnya yang ringan</li>\r\n	<li>Permukannya yang licin sehingga mudah dibersihkan</li>\r\n	<li>Elegan. Solid surface mempunyai penampilan mirip dengan batu granit atau marmer yang menambah kesan mewah namun dengan biaya yang lebih murah dan lebih mudah perawatannya</li>\r\n	<li>Aplikasi. Dengan bobotnya yang ringan, solid surface dapat digunakan pada tempat yang tidak bisa menampung bobot terlalu besar misalnya untuk digunakan pada yacht atau kapal pesiar.</li>\r\n	<li>Dapat dibuat menjadi minibar</li>\r\n	<li>Perawatan yang mudah. Jika ada goresan tipis maka hanya perlu dipoles ulang, jika goresan cukup tajam atau ada keretakan atau berlubang, maka dapat ditambal.</li>\r\n	<li>Tingkat Fleksibilitas yang baik. Bila mau digunakna pada bagian yang melengkung, solid surface dapat dibentuk melengkung sesuai keinginanyang lebih mudah dibandingkan batu marmer atau granit</li>\r\n	<li>Memiliki banyak varian motif dan ukuran ketebalan karena solid surface adalah material sintetis sehingga untuk varian motif dan ketebalan dapat dibuat sesuai keinginan, berbeda dengan batu granit atau marmer yang berasal dari alam</li>\r\n	<li>Tidak mudah pecah. Solid surface mempunyai daya tahan benturan yang tidak mudah pecah dibandingkan batu marmer atau granit yang mudah pecah apabila terjadi benturan.</li>\r\n	<li>Permukaan nya yang licin menjadika solid surface terlihat mengkilap</li>\r\n</ol>\r\n\r\n<p>Kekurangan Solid surface</p>\r\n\r\n<ol>\r\n	<li>Solid surface mmepunyai harga yang lebih mahal dibandingkan batu granit atau marmer Ekonomis. Dengan penampilan semewah batu granit atau marmer, solid surface mempunyai biaya yang lebih murah dibandingkan batu marmer atau granit dan dengan bobotnya yang ringan dapat menurunkan biaya pengiriman</li>\r\n	<li>Jika digunakan sebagai penutup permukaan lantai maka solid surface bisa berubah menjadi licin kalau dalam kondisi basah sehingga perlu berhati hati</li>\r\n	<li>Rentan terhadap goresan apabila terkena benda berujung tajam dengan tekanan yang kuat</li>\r\n</ol>', '2022-01-19 10:45:50', NULL),
(12, 'Apa Saja yang bisa dibuat dari Fiberglass ?', '<ol>\r\n	<li>Coated Plywood</li>\r\n	<li>Tangki Panel</li>\r\n	<li>Tangki Air</li>\r\n	<li>Septic Tank</li>\r\n	<li>Grease Trap</li>\r\n	<li>Water Slide</li>\r\n	<li>Atap Fiber</li>\r\n	<li>Kursi Salon</li>\r\n	<li>Alat Dulang Emas</li>\r\n	<li>Sepeda Air</li>\r\n	<li>Tong Sampah</li>\r\n	<li>Action Figure</li>\r\n	<li>Kursi</li>\r\n	<li>STP</li>\r\n	<li>IPAL</li>\r\n	<li>Storage Tank</li>\r\n	<li>Cool Box</li>\r\n	<li>Dermaga Apung</li>\r\n	<li>Urinator / Urinoir</li>\r\n	<li>Cetakan Semen</li>\r\n	<li>Topi Truk</li>\r\n	<li>Jacket life box</li>\r\n	<li>Pintu Kereta</li>\r\n	<li>Dashboard Mobil dan Pesawat</li>\r\n	<li>Pipa</li>\r\n	<li>Kap Lampu Tidur</li>\r\n	<li>Kursi Bus</li>\r\n	<li>Chemical Tank</li>\r\n	<li>Bak Budidaya Pembibitan Ikan</li>\r\n	<li>Bak Filter</li>\r\n	<li>Playground</li>\r\n	<li>Toilet Portable</li>\r\n	<li>Toilet Set Hotel</li>\r\n	<li>Bak Mandi</li>\r\n	<li>Papan Seluncur surfing boat</li>\r\n	<li>Gocart</li>\r\n	<li>kancing</li>\r\n	<li>hotel kapsul</li>\r\n	<li>gear box</li>\r\n	<li>over vender</li>\r\n	<li>list jendela bus</li>\r\n	<li>nozzle minipom</li>\r\n	<li>pinhole golf</li>\r\n	<li>box motor</li>\r\n	<li>tangki water filter</li>\r\n	<li>Manekin</li>\r\n	<li>meja payung fiber</li>\r\n	<li>Box mobil</li>\r\n	<li>Ground Tank</li>\r\n	<li>Bilah kincir angin</li>\r\n	<li>Bak Indikator</li>\r\n</ol>', '2022-01-19 10:48:04', NULL),
(13, 'Apa saja yang bisa dibuat dari Solid Surface ?', '<ol>\r\n	<li>kitchen Set</li>\r\n	<li>Top Table</li>\r\n	<li>Mini Bar</li>\r\n	<li>Meja Cafe</li>\r\n	<li>bathup&nbsp;</li>\r\n	<li>Wastafel</li>\r\n	<li>Meja Counter</li>\r\n	<li>Meja Resepsionis</li>\r\n	<li>DLL</li>\r\n</ol>', '2022-01-19 11:15:50', NULL),
(14, 'Bagaimana Cara Order ?', '<p>Klik whatsapp dan beritahukan kami tentang produk yang di inginkan beserta dengan spesifikasinya dan ukurannya, dan kami akan memberikan harga yang terbaik</p>', '2022-01-19 11:16:34', NULL),
(15, 'Bagaimana Cara Pembayarannya ?', '<p>Kami membutuhkan DP 50% di awal sebagai konfirmasi pesanan dan pelunasan perlu dibayarkan saat pesanan sudah selesai dibuat dan akan dikirim</p>', '2022-01-19 11:17:03', NULL),
(16, 'Bagaimana Klaim Garansi ?', '<p>Tunjukan bukti Pembelian dan Pembayaran yang sudah dilakukan dan kami akan memberikan garansi Service selama masa garansi dan kerusakan ada di pihak kami (bukan disebabkan kesalahan pembeli)</p>', '2022-01-19 11:17:23', NULL),
(17, 'Bagaimana Metode Pembayaran ?', '<p>Saat ini kami menerima pembayaran melalui transfer bank</p>', '2022-01-19 11:17:42', NULL),
(18, 'Bagaimana Proses Pengiriman Pesanan ?', '<p>Pembeli bisa menunjuk ekspedisi langganan untuk mengambil pesanan di tempat kami atau kami yang memilihkan ekspedisi pilihan kami untuk menjangkau wilayah anda</p>', '2022-01-19 11:17:55', NULL);

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
(14, '2022_01_13_211631_create_social_types_table', 11),
(15, '2022_01_15_192020_create_news_table', 12),
(16, '2022_01_19_150716_create_faqs_table', 13),
(17, '2022_01_21_224029_create_downloads_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Contoh Judul Dari Berita Terkini 1', 'contoh-judul-dari-berita-terkini-1', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(2, 'Contoh Judul Dari Berita Terkini 2', 'contoh-judul-dari-berita-terkini-2', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(3, 'Contoh Judul Dari Berita Terkini 3', 'contoh-judul-dari-berita-terkini-3', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(4, 'Contoh Judul Dari Berita Terkini 4', 'contoh-judul-dari-berita-terkini-4', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(5, 'Contoh Judul Dari Berita Terkini 5', 'contoh-judul-dari-berita-terkini-5', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(6, 'Contoh Judul Dari Berita Terkini 6', 'contoh-judul-dari-berita-terkini-6', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(7, 'Contoh Judul Dari Berita Terkini 7', 'contoh-judul-dari-berita-terkini-7', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(8, 'Contoh Judul Dari Berita Terkini 8', 'contoh-judul-dari-berita-terkini-8', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(9, 'Contoh Judul Dari Berita Terkini 9', 'contoh-judul-dari-berita-terkini-9', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(10, 'Contoh Judul Dari Berita Terkini 10', 'contoh-judul-dari-berita-terkini-10', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(11, 'Contoh Judul Dari Berita Terkini 11', 'contoh-judul-dari-berita-terkini-11', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(12, 'Contoh Judul Dari Berita Terkini 12', 'contoh-judul-dari-berita-terkini-12', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(13, 'Contoh Judul Dari Berita Terkini 13', 'contoh-judul-dari-berita-terkini-13', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(14, 'Contoh Judul Dari Berita Terkini 14', 'contoh-judul-dari-berita-terkini-14', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(15, 'Contoh Judul Dari Berita Terkini 15', 'contoh-judul-dari-berita-terkini-15', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(16, 'Contoh Judul Dari Berita Terkini 16', 'contoh-judul-dari-berita-terkini-16', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(17, 'Contoh Judul Dari Berita Terkini 17', 'contoh-judul-dari-berita-terkini-17', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:36', NULL),
(18, 'Contoh Judul Dari Berita Terkini 18', 'contoh-judul-dari-berita-terkini-18', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(19, 'Contoh Judul Dari Berita Terkini 19', 'contoh-judul-dari-berita-terkini-19', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(20, 'Contoh Judul Dari Berita Terkini 20', 'contoh-judul-dari-berita-terkini-20', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(21, 'Contoh Judul Dari Berita Terkini 21', 'contoh-judul-dari-berita-terkini-21', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(22, 'Contoh Judul Dari Berita Terkini 22', 'contoh-judul-dari-berita-terkini-22', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(23, 'Contoh Judul Dari Berita Terkini 23', 'contoh-judul-dari-berita-terkini-23', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(24, 'Contoh Judul Dari Berita Terkini 24', 'contoh-judul-dari-berita-terkini-24', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(25, 'Contoh Judul Dari Berita Terkini 25', 'contoh-judul-dari-berita-terkini-25', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(26, 'Contoh Judul Dari Berita Terkini 26', 'contoh-judul-dari-berita-terkini-26', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(27, 'Contoh Judul Dari Berita Terkini 27', 'contoh-judul-dari-berita-terkini-27', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(28, 'Contoh Judul Dari Berita Terkini 28', 'contoh-judul-dari-berita-terkini-28', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(29, 'Contoh Judul Dari Berita Terkini 29', 'contoh-judul-dari-berita-terkini-29', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(30, 'Contoh Judul Dari Berita Terkini 30', 'contoh-judul-dari-berita-terkini-30', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(31, 'Contoh Judul Dari Berita Terkini 31', 'contoh-judul-dari-berita-terkini-31', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(32, 'Contoh Judul Dari Berita Terkini 32', 'contoh-judul-dari-berita-terkini-32', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(33, 'Contoh Judul Dari Berita Terkini 33', 'contoh-judul-dari-berita-terkini-33', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(34, 'Contoh Judul Dari Berita Terkini 34', 'contoh-judul-dari-berita-terkini-34', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(35, 'Contoh Judul Dari Berita Terkini 35', 'contoh-judul-dari-berita-terkini-35', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(36, 'Contoh Judul Dari Berita Terkini 36', 'contoh-judul-dari-berita-terkini-36', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(37, 'Contoh Judul Dari Berita Terkini 37', 'contoh-judul-dari-berita-terkini-37', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(38, 'Contoh Judul Dari Berita Terkini 38', 'contoh-judul-dari-berita-terkini-38', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(39, 'Contoh Judul Dari Berita Terkini 39', 'contoh-judul-dari-berita-terkini-39', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL),
(40, 'Contoh Judul Dari Berita Terkini 40', 'contoh-judul-dari-berita-terkini-40', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:37', NULL);
INSERT INTO `news` (`id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(41, 'Contoh Judul Dari Berita Terkini 41', 'contoh-judul-dari-berita-terkini-41', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(42, 'Contoh Judul Dari Berita Terkini 42', 'contoh-judul-dari-berita-terkini-42', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(43, 'Contoh Judul Dari Berita Terkini 43', 'contoh-judul-dari-berita-terkini-43', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(44, 'Contoh Judul Dari Berita Terkini 44', 'contoh-judul-dari-berita-terkini-44', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(45, 'Contoh Judul Dari Berita Terkini 45', 'contoh-judul-dari-berita-terkini-45', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(46, 'Contoh Judul Dari Berita Terkini 46', 'contoh-judul-dari-berita-terkini-46', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(47, 'Contoh Judul Dari Berita Terkini 47', 'contoh-judul-dari-berita-terkini-47', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(48, 'Contoh Judul Dari Berita Terkini 48', 'contoh-judul-dari-berita-terkini-48', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(49, 'Contoh Judul Dari Berita Terkini 49', 'contoh-judul-dari-berita-terkini-49', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(50, 'Contoh Judul Dari Berita Terkini 50', 'contoh-judul-dari-berita-terkini-50', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(51, 'Contoh Judul Dari Berita Terkini 51', 'contoh-judul-dari-berita-terkini-51', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(52, 'Contoh Judul Dari Berita Terkini 52', 'contoh-judul-dari-berita-terkini-52', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(53, 'Contoh Judul Dari Berita Terkini 53', 'contoh-judul-dari-berita-terkini-53', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(54, 'Contoh Judul Dari Berita Terkini 54', 'contoh-judul-dari-berita-terkini-54', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(55, 'Contoh Judul Dari Berita Terkini 55', 'contoh-judul-dari-berita-terkini-55', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(56, 'Contoh Judul Dari Berita Terkini 56', 'contoh-judul-dari-berita-terkini-56', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(57, 'Contoh Judul Dari Berita Terkini 57', 'contoh-judul-dari-berita-terkini-57', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(58, 'Contoh Judul Dari Berita Terkini 58', 'contoh-judul-dari-berita-terkini-58', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(59, 'Contoh Judul Dari Berita Terkini 59', 'contoh-judul-dari-berita-terkini-59', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(60, 'Contoh Judul Dari Berita Terkini 60', 'contoh-judul-dari-berita-terkini-60', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:38', NULL),
(61, 'Contoh Judul Dari Berita Terkini 61', 'contoh-judul-dari-berita-terkini-61', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(62, 'Contoh Judul Dari Berita Terkini 62', 'contoh-judul-dari-berita-terkini-62', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(63, 'Contoh Judul Dari Berita Terkini 63', 'contoh-judul-dari-berita-terkini-63', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(64, 'Contoh Judul Dari Berita Terkini 64', 'contoh-judul-dari-berita-terkini-64', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(65, 'Contoh Judul Dari Berita Terkini 65', 'contoh-judul-dari-berita-terkini-65', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(66, 'Contoh Judul Dari Berita Terkini 66', 'contoh-judul-dari-berita-terkini-66', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(67, 'Contoh Judul Dari Berita Terkini 67', 'contoh-judul-dari-berita-terkini-67', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(68, 'Contoh Judul Dari Berita Terkini 68', 'contoh-judul-dari-berita-terkini-68', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(69, 'Contoh Judul Dari Berita Terkini 69', 'contoh-judul-dari-berita-terkini-69', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(70, 'Contoh Judul Dari Berita Terkini 70', 'contoh-judul-dari-berita-terkini-70', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(71, 'Contoh Judul Dari Berita Terkini 71', 'contoh-judul-dari-berita-terkini-71', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(72, 'Contoh Judul Dari Berita Terkini 72', 'contoh-judul-dari-berita-terkini-72', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(73, 'Contoh Judul Dari Berita Terkini 73', 'contoh-judul-dari-berita-terkini-73', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(74, 'Contoh Judul Dari Berita Terkini 74', 'contoh-judul-dari-berita-terkini-74', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(75, 'Contoh Judul Dari Berita Terkini 75', 'contoh-judul-dari-berita-terkini-75', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(76, 'Contoh Judul Dari Berita Terkini 76', 'contoh-judul-dari-berita-terkini-76', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(77, 'Contoh Judul Dari Berita Terkini 77', 'contoh-judul-dari-berita-terkini-77', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(78, 'Contoh Judul Dari Berita Terkini 78', 'contoh-judul-dari-berita-terkini-78', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(79, 'Contoh Judul Dari Berita Terkini 79', 'contoh-judul-dari-berita-terkini-79', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(80, 'Contoh Judul Dari Berita Terkini 80', 'contoh-judul-dari-berita-terkini-80', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL);
INSERT INTO `news` (`id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(81, 'Contoh Judul Dari Berita Terkini 81', 'contoh-judul-dari-berita-terkini-81', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(82, 'Contoh Judul Dari Berita Terkini 82', 'contoh-judul-dari-berita-terkini-82', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:39', NULL),
(83, 'Contoh Judul Dari Berita Terkini 83', 'contoh-judul-dari-berita-terkini-83', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(84, 'Contoh Judul Dari Berita Terkini 84', 'contoh-judul-dari-berita-terkini-84', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(85, 'Contoh Judul Dari Berita Terkini 85', 'contoh-judul-dari-berita-terkini-85', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(86, 'Contoh Judul Dari Berita Terkini 86', 'contoh-judul-dari-berita-terkini-86', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(87, 'Contoh Judul Dari Berita Terkini 87', 'contoh-judul-dari-berita-terkini-87', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(88, 'Contoh Judul Dari Berita Terkini 88', 'contoh-judul-dari-berita-terkini-88', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(89, 'Contoh Judul Dari Berita Terkini 89', 'contoh-judul-dari-berita-terkini-89', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(90, 'Contoh Judul Dari Berita Terkini 90', 'contoh-judul-dari-berita-terkini-90', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(91, 'Contoh Judul Dari Berita Terkini 91', 'contoh-judul-dari-berita-terkini-91', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(92, 'Contoh Judul Dari Berita Terkini 92', 'contoh-judul-dari-berita-terkini-92', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(93, 'Contoh Judul Dari Berita Terkini 93', 'contoh-judul-dari-berita-terkini-93', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(94, 'Contoh Judul Dari Berita Terkini 94', 'contoh-judul-dari-berita-terkini-94', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(95, 'Contoh Judul Dari Berita Terkini 95', 'contoh-judul-dari-berita-terkini-95', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(96, 'Contoh Judul Dari Berita Terkini 96', 'contoh-judul-dari-berita-terkini-96', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(97, 'Contoh Judul Dari Berita Terkini 97', 'contoh-judul-dari-berita-terkini-97', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(98, 'Contoh Judul Dari Berita Terkini 98', 'contoh-judul-dari-berita-terkini-98', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(99, 'Contoh Judul Dari Berita Terkini 99', 'contoh-judul-dari-berita-terkini-99', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(100, 'Contoh Judul Dari Berita Terkini 100', 'contoh-judul-dari-berita-terkini-100', '<p>It\'s not only writers who can benefit from this free online tool. If you\'re a programmer who\'s working on a project where blocks of text are needed, this tool can be a great way to get that. It\'s a good way to test your programming and that the tool being created is working well.</p>\n                <p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\n                <p>If you do find this paragraph tool useful, please do us a favor and let us know how you\'re using it. It\'s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you\'d like to see changed or added to make it better in the future.</p>', '2022-01-15 12:11:40', NULL),
(101, 'Contoh Judul Berita Terkini 2021', 'contoh-judul-berita-terkini-2021', '<p>New If you&#39;re looking for random paragraphs, you&#39;ve come to the right place. When a random word or a random sentence isn&#39;t quite enough, the next logical step is to find a random paragraph. We created the Random Paragraph Generator with you in mind. The process is quite simple. Choose the number of random paragraphs you&#39;d like to see and click the button. Your chosen number of paragraphs will instantly appear.</p>\r\n\r\n<p>While it may not be obvious to everyone, there are a number of reasons creating random paragraphs can be useful. A few examples of how some people use this generator are listed in the following paragraphs.</p>', '2022-01-15 12:22:30', '2022-01-15 12:40:01');

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
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `stock`, `price`, `description`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tangki Plastik', 'tangki-plastik', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(2, 'Tangki Stainless', 'tangki-stainless', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(3, 'Plywood', 'plywood', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(4, 'Tangki Panel', 'tangki-panel', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(5, 'Tangki Air', 'tangki-air', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(6, 'Septic Tank', 'septic-tank', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(7, 'Grease Trap', 'grease-trap', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(8, 'Water Slide', 'water-slide', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(9, 'Atap Fiber', 'atap-fiber', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(10, 'Kursi Salon', 'kursi-salon', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(11, 'Alat Dulang Emas', 'alat-dulang-emas', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(12, 'Sepeda Air', 'sepeda-air', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(13, 'Tong Sampah', 'tong-sampah', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(14, 'Action Figure', 'action-figure', 0, 0, NULL, 1, 1, '2022-01-06 01:29:55', NULL),
(15, 'Kursi', 'kursi', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(16, 'Mini Bar', 'mini-bar', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(17, 'Stp', 'stp', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(18, 'Ipal', 'ipal', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(19, 'Storage Tank', 'storage-tank', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(20, 'Cool Box', 'cool-box', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(21, 'Dermaga Apung', 'dermaga-apung', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(22, 'Urinator / Urinoir', 'urinator-/-urinoir', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(23, 'Cetakan Semen', 'cetakan-semen', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(24, 'Topi Truk', 'topi-truk', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(25, 'Jacket Life Box', 'jacket-life-box', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(26, 'Pintu Kereta', 'pintu-kereta', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(27, 'Dashboard Mobil Dan Pesawat', 'dashboard-mobil-dan-pesawat', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(28, 'Pipa', 'pipa', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(29, 'Kap Lampu Tidur', 'kap-lampu-tidur', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(30, 'Kursi Bus', 'kursi-bus', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(31, 'Chemical Tank', 'chemical-tank', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(32, 'Bak Budidaya Pembibitan Ikan', 'bak-budidaya-pembibitan-ikan', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(33, 'Bak Filter', 'bak-filter', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(34, 'Playground', 'playground', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(35, 'Bathup', 'bathup', 0, 0, NULL, 1, 1, '2022-01-06 01:29:56', NULL),
(36, 'Wastafel', 'wastafel', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(37, 'Toilet Portable', 'toilet-portable', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(38, 'Toilet Set Hotel', 'toilet-set-hotel', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(39, 'Bak Mandi', 'bak-mandi', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(40, 'Papan Seluncur Surfing Boat', 'papan-seluncur-surfing-boat', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(41, 'Gocart', 'gocart', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(42, 'Kancing', 'kancing', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(43, 'Hotel Kapsul', 'hotel-kapsul', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(44, 'Gear Box', 'gear-box', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(45, 'Over Vender', 'over-vender', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(46, 'List Jendela Bus', 'list-jendela-bus', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(47, 'Nozzle Minipom', 'nozzle-minipom', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(48, 'Pinhole Golf', 'pinhole-golf', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(49, 'Box Motor', 'box-motor', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(50, 'Tangki Water Filter', 'tangki-water-filter', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(51, 'Manekin', 'manekin', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(52, 'Meja Payung Fiber', 'meja-payung-fiber', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(53, 'Box Mobil', 'box-mobil', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(54, 'Ground Tank', 'ground-tank', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(55, 'Bilah Kincir Angin', 'bilah-kincir-angin', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(56, 'Bak Indikator', 'bak-indikator', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(57, 'Patung Fiber', 'patung-fiber', 0, 0, NULL, 1, 1, '2022-01-06 01:29:57', NULL),
(58, 'Speed Boat', 'speed-boat', 0, 0, NULL, 2, 1, '2022-01-06 01:29:57', NULL),
(59, 'Motor Boat', 'motor-boat', 0, 0, NULL, 2, 1, '2022-01-06 01:29:57', NULL),
(60, 'Yacht', 'yacht', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(61, 'Fishing Boat', 'fishing-boat', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(62, 'Ambulance Boat', 'ambulance-boat', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(63, 'Patrol Boat', 'patrol-boat', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(64, 'Passenger Boat', 'passenger-boat', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(65, 'Water Transport', 'water-transport', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(66, 'Cano', 'cano', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(67, 'Catamaran', 'catamaran', 0, 0, NULL, 2, 1, '2022-01-06 01:29:58', NULL),
(68, 'Resin Poliester', 'resin-poliester', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(69, 'Resin Bening', 'resin-bening', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(70, 'Resin Lycal', 'resin-lycal', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(71, 'Resin Vinilester', 'resin-vinilester', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(72, 'Resin Bisfenol', 'resin-bisfenol', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(73, 'Polyamida Resin', 'polyamida-resin', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(74, 'Gelcoat', 'gelcoat', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(75, 'Mma (anti Bubble)', 'mma-(anti-bubble)', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(76, 'Dempul Norton Dll', 'dempul-norton-dll', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(77, 'Resin Epoxy', 'resin-epoxy', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(78, 'Pigmen', 'pigmen', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(79, 'Katalis', 'katalis', 0, 0, NULL, 3, 1, '2022-01-06 01:29:58', NULL),
(80, 'Matt Serat', 'matt-serat', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(81, 'Matt Roving', 'matt-roving', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(82, 'Matt Pultrusion', 'matt-pultrusion', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(83, 'Talk', 'talk', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(84, 'Aerosil', 'aerosil', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(85, 'Katalis', 'katalis', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(86, 'Miror Glaze', 'miror-glaze', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(87, 'Alkohol', 'alkohol', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(88, 'Aseton', 'aseton', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(89, 'Thinner', 'thinner', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(90, 'Formaline', 'formaline', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(91, 'Silicon Emulsion', 'silicon-emulsion', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(92, 'Silicon Oil', 'silicon-oil', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(93, 'Silicon Rubber', 'silicon-rubber', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(94, 'Pu', 'pu', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(95, 'Kaustik Soda Asahi, Tjiwi', 'kaustik-soda-asahi,-tjiwi', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(96, 'Kaporit Tjiwi Powder, Dan Granul', 'kaporit-tjiwi-powder,-dan-granul', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(97, 'Kaporit China Tablet', 'kaporit-china-tablet', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(98, 'Manganese', 'manganese', 0, 0, NULL, 3, 1, '2022-01-06 01:29:59', NULL),
(99, 'Zeolit', 'zeolit', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(100, 'Citrun', 'citrun', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(101, 'Texaphone', 'texaphone', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(102, 'Sodium Sulfat', 'sodium-sulfat', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(103, 'Sls', 'sls', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(104, 'Parfum', 'parfum', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(105, 'Perekat Fixative Parfum', 'perekat-fixative-parfum', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(106, 'Pac', 'pac', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(107, 'Tawas', 'tawas', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(108, 'Trusi', 'trusi', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(109, 'Stpp', 'stpp', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(110, 'Sodium Karbonat', 'sodium-karbonat', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(111, 'Sodium Bikarbonat', 'sodium-bikarbonat', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(112, 'Hcl', 'hcl', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(113, 'H2so4', 'h2so4', 0, 0, NULL, 3, 1, '2022-01-06 01:30:00', NULL),
(114, 'Hf', 'hf', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(115, 'Titanium Dioxide', 'titanium-dioxide', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(116, 'Pemanis Makanan', 'pemanis-makanan', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(117, 'Pewarna Makanan', 'pewarna-makanan', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(118, 'Pigment Pakaian', 'pigment-pakaian', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(119, 'Metanol', 'metanol', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(120, 'Peroksida', 'peroksida', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(121, 'Ipa', 'ipa', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(122, 'Etil Asetat', 'etil-asetat', 0, 0, NULL, 3, 1, '2022-01-06 01:30:01', NULL),
(123, 'Pisau Blade Marmer', 'pisau-blade-marmer', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(124, 'Pisau Gerinda', 'pisau-gerinda', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(125, 'Amplas', 'amplas', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(126, 'Mata Bor', 'mata-bor', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(127, 'Diamond Pad (merek Makita)', 'diamond-pad-(merek-makita)', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(128, 'Mesin Grinder', 'mesin-grinder', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(129, 'Mesin Bor', 'mesin-bor', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(130, 'Roda', 'roda', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(131, 'Gerinda', 'gerinda', 0, 0, NULL, 4, 1, '2022-01-06 01:30:01', NULL),
(132, 'Kitchen Set', 'kitchen-set', 0, 0, NULL, 8, 1, '2022-01-06 01:30:01', NULL),
(133, 'Event', 'event', 0, 0, NULL, 8, 1, '2022-01-06 01:30:01', NULL),
(134, 'Our Client', 'our-client', 0, 0, NULL, 8, 1, '2022-01-06 01:30:01', '2022-01-13 11:55:08'),
(137, 'Nama Produk Baru', 'nama-produk-baru', 1212, 0, '<h2>Deskripsi Produk</h2>\r\n\r\n<p>It&#39;s not only writers who can benefit from this free online tool. If you&#39;re a programmer who&#39;s working on a project where blocks of text are needed, this tool can be a great way to get that. It&#39;s a good way to test your programming and that the tool being created is working well.</p>\r\n\r\n<p>Above are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current project.</p>\r\n\r\n<p>If you do find this paragraph tool useful, please do us a favor and let us know how you&#39;re using it. It&#39;s greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you&#39;d like to see changed or added to make it better in the future.</p>', 1, 1, '2022-01-06 10:18:39', '2022-01-12 02:30:23'),
(138, 'Contoh Nama Produk', 'contoh-nama-produk', 100, 0, '<h1>Deskripsi Produk</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque sunt laborum quo atque quas consectetur repellat asperiores dolore fugit? Quidem incidunt consectetur nihil praesentium nostrum aspernatur cupiditate laboriosam ipsam quo a rerum minus, et in ea possimus architecto! Nemo veritatis pariatur, ea porro molestias, iure vel perspiciatis totam optio nulla libero quam adipisci ullam modi quidem illo consectetur commodi voluptate esse ipsa laudantium sed? Culpa quia, voluptatum illo consequatur nostrum temporibus sunt natus dolorem, non, eos asperiores? In aspernatur, vero nostrum pariatur, ut laborum repudiandae aut molestias corporis nisi accusamus quam deleniti officiis voluptatibus harum eveniet aperiam blanditiis, numquam maxime.</p>', 3, 1, '2022-01-13 02:17:21', NULL),
(139, 'aaa', 'aaa', 4, 400000, '<p>sdsdsdsd</p>', 3, 1, '2022-01-21 03:16:45', '2022-01-21 03:18:10');

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
(1, 'tuarie', 'Arie', 'tuarimb11@gmail.com', '$2y$10$eOJ5.qYUhLJWWYQtyMr6TeHgQFd5sNaJGfPHpjaHLGDkYwi7XUc7W', 'NKUNKst5PizkC9IfaopyWQaWlSveEv3F9ondEe6aeaSPg9nI04v59OhcSoqH', '2022-01-05 06:24:39', NULL),
(4, 'tuarie', 'Arie', 'tuarimb79@gmail.com', '$2y$10$eOJ5.qYUhLJWWYQtyMr6TeHgQFd5sNaJGfPHpjaHLGDkYwi7XUc7W', 'NKUNKst5PizkC9IfaopyWQaWlSveEv3F9ondEe6aeaSPg9nI04v59OhcSoqH', '2022-01-05 06:24:39', NULL);

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
(188, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-14 02:44:12', NULL),
(189, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 01:35:40', NULL),
(190, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 02:46:04', NULL),
(191, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 03:12:39', NULL),
(192, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 11:27:52', NULL),
(193, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:41:49', NULL),
(194, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:43:35', NULL),
(195, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:44:01', NULL),
(196, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:48:03', NULL),
(197, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:48:20', NULL),
(198, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:48:31', NULL),
(199, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:48:46', NULL),
(200, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:49:07', NULL),
(201, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:49:28', NULL),
(202, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:49:48', NULL),
(203, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:49:56', NULL),
(204, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:50:16', NULL),
(205, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:50:39', NULL),
(206, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:51:04', NULL),
(207, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:51:16', NULL),
(208, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:52:42', NULL),
(209, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:54:05', NULL),
(210, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:54:27', NULL),
(211, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:54:43', NULL),
(212, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:55:42', NULL),
(213, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:58:27', NULL),
(214, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 12:59:17', NULL),
(215, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:00:01', NULL),
(216, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:25:39', NULL),
(217, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:25:53', NULL),
(218, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:28:05', NULL),
(219, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:28:15', NULL),
(220, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:28:30', NULL),
(221, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:28:48', NULL),
(222, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:34:35', NULL),
(223, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:34:53', NULL),
(224, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:36:56', NULL),
(225, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:37:14', NULL),
(226, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:37:54', NULL),
(227, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:38:05', NULL),
(228, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:38:11', NULL),
(229, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:38:15', NULL),
(230, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:43:12', NULL),
(231, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:47:59', NULL),
(232, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:48:34', NULL),
(233, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:49:08', NULL),
(234, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:49:18', NULL),
(235, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:49:30', NULL),
(236, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:49:52', NULL),
(237, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:50:03', NULL),
(238, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:50:10', NULL),
(239, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:53:19', NULL),
(240, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:53:45', NULL),
(241, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 13:54:45', NULL),
(242, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:00:49', NULL),
(243, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:01:36', NULL),
(244, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:03:05', NULL),
(245, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:03:17', NULL),
(246, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:03:45', NULL),
(247, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:03:58', NULL),
(248, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:04:10', NULL),
(249, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:04:26', NULL),
(250, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:04:32', NULL),
(251, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:04:41', NULL),
(252, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:05:46', NULL),
(253, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-15 14:05:53', NULL),
(254, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:20:45', NULL),
(255, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:32:45', NULL),
(256, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:33:38', NULL),
(257, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:34:11', NULL),
(258, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:34:26', NULL),
(259, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:34:37', NULL),
(260, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:34:49', NULL),
(261, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:35:02', NULL),
(262, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:35:38', NULL),
(263, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:36:10', NULL),
(264, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:37:10', NULL),
(265, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:37:27', NULL),
(266, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:38:43', NULL),
(267, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:39:36', NULL),
(268, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:40:01', NULL),
(269, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:40:24', NULL),
(270, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:40:50', NULL),
(271, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:41:16', NULL),
(272, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:42:20', NULL),
(273, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:42:31', NULL),
(274, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:42:42', NULL),
(275, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:43:36', NULL),
(276, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:48:45', NULL),
(277, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 09:48:54', NULL),
(278, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:01:22', NULL),
(279, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:02:22', NULL),
(280, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:03:05', NULL),
(281, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:05:24', NULL),
(282, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:05:42', NULL),
(283, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:06:01', NULL),
(284, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:08:23', NULL),
(285, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:08:46', NULL),
(286, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:09:30', NULL),
(287, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:09:43', NULL),
(288, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:10:03', NULL),
(289, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:10:30', NULL),
(290, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:10:43', NULL),
(291, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:11:34', NULL),
(292, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:12:14', NULL),
(293, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:12:27', NULL),
(294, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:13:14', NULL),
(295, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:13:56', NULL),
(296, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:14:10', NULL),
(297, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:14:29', NULL),
(298, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:14:53', NULL),
(299, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:16:55', NULL),
(300, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:19:00', NULL),
(301, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:19:53', NULL),
(302, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:20:49', NULL),
(303, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:24:28', NULL),
(304, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:30:28', NULL),
(305, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:31:37', NULL),
(306, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:32:01', NULL),
(307, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:33:43', NULL),
(308, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:35:18', NULL),
(309, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:35:40', NULL),
(310, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:37:24', NULL),
(311, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-17 10:38:46', NULL),
(312, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 01:23:20', NULL),
(313, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 01:24:53', NULL),
(314, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 02:35:25', NULL),
(315, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 03:18:24', NULL),
(316, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 06:53:49', NULL),
(317, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:08:37', NULL),
(318, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:13:03', NULL),
(319, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:15:03', NULL),
(320, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:18:06', NULL),
(321, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:18:24', NULL),
(322, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:18:31', NULL),
(323, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:18:35', NULL),
(324, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:22:45', NULL),
(325, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:23:42', NULL),
(326, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:23:57', NULL),
(327, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:24:02', NULL),
(328, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:24:11', NULL),
(329, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:26:52', NULL),
(330, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 09:36:38', NULL),
(331, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 10:26:17', NULL),
(332, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:11:23', NULL),
(333, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:25:55', NULL),
(334, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:26:11', NULL),
(335, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:27:01', NULL),
(336, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:27:24', NULL),
(337, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:28:07', NULL),
(338, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:28:50', NULL),
(339, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:30:28', NULL),
(340, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:31:25', NULL),
(341, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:32:06', NULL),
(342, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:32:57', NULL),
(343, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:33:17', NULL),
(344, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:33:52', NULL),
(345, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:34:10', NULL),
(346, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:34:30', NULL),
(347, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:35:07', NULL),
(348, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:35:44', NULL),
(349, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:36:38', NULL),
(350, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:37:09', NULL),
(351, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:37:46', NULL),
(352, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:39:01', NULL),
(353, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:39:49', NULL),
(354, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:40:14', NULL),
(355, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:40:52', NULL),
(356, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:41:02', NULL),
(357, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:41:44', NULL),
(358, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:42:07', NULL),
(359, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:42:18', NULL),
(360, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:42:38', NULL),
(361, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:43:06', NULL),
(362, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:51:48', NULL),
(363, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:53:05', NULL),
(364, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:54:57', NULL),
(365, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:55:34', NULL),
(366, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:55:45', NULL),
(367, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:56:37', NULL),
(368, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 15:56:47', NULL),
(369, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:08:10', NULL),
(370, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:08:22', NULL),
(371, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:08:37', NULL),
(372, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:08:45', NULL),
(373, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:09:43', NULL),
(374, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:09:58', NULL),
(375, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:28:50', NULL),
(376, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:29:41', NULL),
(377, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:41:42', NULL),
(378, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:43:21', NULL),
(379, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:46:01', NULL),
(380, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:46:18', NULL),
(381, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:46:26', NULL),
(382, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:46:37', NULL),
(383, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:47:18', NULL),
(384, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:50:14', NULL),
(385, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:50:40', NULL),
(386, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:51:04', NULL),
(387, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:51:16', NULL),
(388, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:51:35', NULL),
(389, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:52:53', NULL),
(390, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:53:46', NULL),
(391, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:53:57', NULL),
(392, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:55:10', NULL),
(393, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:55:17', NULL),
(394, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 16:56:23', NULL),
(395, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-19 17:04:10', NULL),
(396, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:28:11', NULL),
(397, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:28:58', NULL),
(398, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:29:48', NULL),
(399, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:40:26', NULL),
(400, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:42:16', NULL),
(401, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:42:45', NULL),
(402, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:45:39', NULL),
(403, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:46:08', NULL),
(404, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:46:20', NULL),
(405, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:46:32', NULL),
(406, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:46:41', NULL),
(407, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:47:07', NULL),
(408, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:48:14', NULL),
(409, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:48:37', NULL),
(410, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:49:07', NULL),
(411, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:49:26', NULL),
(412, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:50:50', NULL),
(413, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:51:36', NULL),
(414, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:53:18', NULL),
(415, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:54:18', NULL),
(416, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:54:52', NULL),
(417, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:55:05', NULL),
(418, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 00:55:24', NULL),
(419, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:04:05', NULL),
(420, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:04:23', NULL),
(421, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:04:33', NULL),
(422, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:04:42', NULL),
(423, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:04:55', NULL),
(424, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:05:18', NULL),
(425, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:07:11', NULL),
(426, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:07:24', NULL),
(427, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:07:36', NULL),
(428, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:08:16', NULL),
(429, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:08:25', NULL),
(430, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:08:33', NULL),
(431, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:08:40', NULL),
(432, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:47:43', NULL),
(433, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:48:20', NULL),
(434, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:48:34', NULL),
(435, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:52:45', NULL),
(436, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:55:21', NULL),
(437, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:55:46', NULL),
(438, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:56:45', NULL),
(439, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:57:14', NULL),
(440, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:57:42', NULL),
(441, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:57:55', NULL),
(442, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:58:14', NULL),
(443, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:58:45', NULL),
(444, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:59:24', NULL),
(445, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 01:59:46', NULL),
(446, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:00:54', NULL);
INSERT INTO `visitors` (`id`, `ip`, `country`, `city`, `state`, `time_zone`, `created_at`, `updated_at`) VALUES
(447, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:03:54', NULL),
(448, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:04:28', NULL),
(449, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:04:43', NULL),
(450, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:05:24', NULL),
(451, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:05:36', NULL),
(452, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:05:58', NULL),
(453, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:06:34', NULL),
(454, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:07:14', NULL),
(455, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:07:37', NULL),
(456, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:08:28', NULL),
(457, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:09:01', NULL),
(458, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:10:12', NULL),
(459, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:11:22', NULL),
(460, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:12:51', NULL),
(461, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:13:25', NULL),
(462, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:17:50', NULL),
(463, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:19:53', NULL),
(464, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:20:31', NULL),
(465, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:20:39', NULL),
(466, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:24:44', NULL),
(467, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:28:44', NULL),
(468, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:31:14', NULL),
(469, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:32:10', NULL),
(470, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:32:29', NULL),
(471, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:32:48', NULL),
(472, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:33:05', NULL),
(473, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:33:46', NULL),
(474, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:34:04', NULL),
(475, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:37:34', NULL),
(476, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:37:53', NULL),
(477, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:38:23', NULL),
(478, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:38:37', NULL),
(479, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:40:08', NULL),
(480, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:41:48', NULL),
(481, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:42:00', NULL),
(482, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:46:07', NULL),
(483, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:46:36', NULL),
(484, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:46:56', NULL),
(485, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:47:48', NULL),
(486, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:47:59', NULL),
(487, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:49:01', NULL),
(488, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-20 02:49:17', NULL),
(489, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:34:47', NULL),
(490, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:35:48', NULL),
(491, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:43:33', NULL),
(492, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:44:30', NULL),
(493, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:45:07', NULL),
(494, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:46:14', NULL),
(495, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:46:26', NULL),
(496, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:47:11', NULL),
(497, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:48:48', NULL),
(498, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:48:53', NULL),
(499, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:49:21', NULL),
(500, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:49:50', NULL),
(501, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:50:09', NULL),
(502, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:50:27', NULL),
(503, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:51:21', NULL),
(504, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:52:50', NULL),
(505, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:53:39', NULL),
(506, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 01:55:43', NULL),
(507, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:00:09', NULL),
(508, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:02:17', NULL),
(509, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:03:52', NULL),
(510, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:04:48', NULL),
(511, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:05:00', NULL),
(512, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:05:23', NULL),
(513, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:06:36', NULL),
(514, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:07:23', NULL),
(515, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:07:41', NULL),
(516, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:08:17', NULL),
(517, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:08:32', NULL),
(518, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:08:45', NULL),
(519, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:09:00', NULL),
(520, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:09:30', NULL),
(521, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:10:27', NULL),
(522, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:11:11', NULL),
(523, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:11:31', NULL),
(524, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:12:31', NULL),
(525, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:13:29', NULL),
(526, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:13:38', NULL),
(527, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:19:18', NULL),
(528, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:19:34', NULL),
(529, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:20:06', NULL),
(530, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:21:12', NULL),
(531, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:21:46', NULL),
(532, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:22:07', NULL),
(533, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:22:18', NULL),
(534, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:26:17', NULL),
(535, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:26:28', NULL),
(536, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:39:42', NULL),
(537, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:39:50', NULL),
(538, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:40:33', NULL),
(539, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 02:40:47', NULL),
(540, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 03:19:45', NULL),
(541, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:23:37', NULL),
(542, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:30:37', NULL),
(543, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:53:25', NULL),
(544, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:54:51', NULL),
(545, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:55:38', NULL),
(546, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:55:49', NULL),
(547, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:56:53', NULL),
(548, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-01-21 14:57:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
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
-- Indexes for table `news`
--
ALTER TABLE `news`
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
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

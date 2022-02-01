-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 08:29 AM
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
  `category` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 'Apa saja keunggulan dari Fiberglass ?', '<ol>\r\n	<li>Mudah dibentuk dan didesain menjadi apapun sesuai dengan keinginan</li>\r\n	<li>Kuat dan Tahan Lama</li>\r\n	<li>Tahan Korosi</li>\r\n	<li>Tidak mudah berlumut</li>\r\n	<li>Ringan</li>\r\n	<li>Dapat menjadi Isolator Panas dan Listrik</li>\r\n	<li>Tahan terhadap Bahan Kimia</li>\r\n	<li>Stabilitas Dimensional&nbsp;Fiberglass tidak akan menyusut atau merenggang dan tidak sensitive terhadap perubahan suhu</li>\r\n	<li>Ekonomis : Cenderung Lebih Murah dibandingkan Material lain dengan kekuatan serupa, seperti untuk pembuatan kapal dalam jumlah sedikit dan tidak dapat diotomatisasi</li>\r\n	<li>Estetika : Dapat dibuat menjadi bahan dekorasi ruangan seperti Vas Bunga, Tiruan Marmer, Action Figure, dan lainnya</li>\r\n	<li>Mudah Diperbaiki seandainya terjadi kerusakan atau kebocoran</li>\r\n	<li>Pembuatannya relatif cepat</li>\r\n</ol>', '2022-01-19 10:29:08', '2022-02-01 06:08:54'),
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Judul Job 1', '<p>Generating random paragraphs can be an excellent way for writers to get their creative flow going at the beginning of the day. The writer has no idea what topic the random paragraph will be about when it appears. This forces the writer to use creativity to complete one of three common writing challenges. The writer can use the paragraph as the first one of a short story and build upon it. A second option is to use the random paragraph somewhere in a short story they create. The third option is to have the random paragraph be the ending paragraph in a short story. No matter which of these challenges is undertaken, the writer is forced to use creativity to incorporate the paragraph into their writing.</p>', '2022-01-23 13:35:00', NULL),
(3, 'Judul Job 2', '<p>Another productive way to use this tool to begin a daily writing routine. One way is to generate a random paragraph with the intention to try to rewrite it while still keeping the original meaning. The purpose here is to just get the writing started so that when the writer goes onto their day&#39;s writing projects, words are already flowing from their fingers.</p>', '2022-01-23 13:49:19', NULL);

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
(17, '2022_01_21_224029_create_downloads_table', 14),
(18, '2022_01_23_202946_create_jobs_table', 15);

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
(134, 'Our Client', 'our-client', 0, 0, NULL, 8, 1, '2022-01-06 01:30:01', '2022-01-13 11:55:08');

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
(1, 'admin', 'Administrator', 'phoenixfiberglass@gmail.com', '$2y$10$ZzN0NkaneKtxgHIoB4WSAeyv46rVHLksJKela5naHAIHS/VGKldG2', NULL, NULL, NULL);

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
(1, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 03:12:05', NULL),
(2, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:02:07', NULL),
(3, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:02:22', NULL),
(4, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:02:37', NULL),
(5, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:03:04', NULL),
(6, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:03:11', NULL),
(7, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:03:19', NULL),
(8, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:05:11', NULL),
(9, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:05:30', NULL),
(10, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:09:00', NULL),
(11, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:13:36', NULL),
(12, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:14:33', NULL),
(13, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:15:34', NULL),
(14, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:15:51', NULL),
(15, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:16:11', NULL),
(16, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:16:30', NULL),
(17, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 06:59:32', NULL),
(18, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:02:23', NULL),
(19, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:02:33', NULL),
(20, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:04:21', NULL),
(21, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:04:44', NULL),
(22, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:05:09', NULL),
(23, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:05:12', NULL),
(24, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:05:49', NULL),
(25, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:06:51', NULL),
(26, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:07:14', NULL),
(27, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:11:48', NULL),
(28, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:13:09', NULL),
(29, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:16:35', NULL),
(30, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:17:03', NULL),
(31, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:17:28', NULL),
(32, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:17:48', NULL),
(33, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:19:36', NULL),
(34, '127.0.0.0', 'United States', 'New Haven', 'Connecticut', 'America/New_York', '2022-02-01 07:23:24', NULL);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

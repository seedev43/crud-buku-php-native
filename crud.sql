-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2023 at 10:01 AM
-- Server version: 8.0.33-0ubuntu0.20.04.2
-- PHP Version: 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `name` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`) VALUES
(1, 'Andrea Hirata', 'andrea-hirata'),
(2, 'Tere Liye', 'tere-liye'),
(5, 'Dee Lestari', 'dee-lestari'),
(10, 'Abdul Kadir', 'abdul-kadir');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `publication_year_id` int DEFAULT NULL,
  `cover` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_id`, `publisher_id`, `publication_year_id`, `cover`, `title`, `slug`, `description`, `created_at`) VALUES
(1, 5, 3, 3, 'https://s3-ap-southeast-1.amazonaws.com/ebook-previews/31752/100792/1.jpg', 'Perahu Kertas', 'perahu-kertas', 'Namanya Kugy. Mungil, pengkhayal, dan berantakan. Dari benaknya, mengalir untaian dongeng indah. Keenan belum pernah bertemu manusia seaneh itu ....  Namanya Keenan. Cerdas, artistik, dan penuh kejutan. Dari tangannya, mewujud lukisan-lukisan magis. Kugy belum pernah bertemu manusia seajaib itu ....  Dan kini mereka berhadapan di antara hamparan misteri dan rintangan. Akankah dongeng dan lukisan itu bersatu? Akankah hati dan impian mereka bertemu?', '2023-06-17 23:10:07'),
(3, 1, 2, 3, 'https://cdnwpseller.gramedia.net/wp-content/uploads/2021/12/20114540/9786022915249_orang-orang-b-2-561x892.jpg', 'Orang-orang Biasa', 'orang-orang-biasa', '\"The Rainbow Troops is the first Indonesian novel to find its way into the international general fiction market.\"\r\n\r\n                -The Sydney Morning Herald', '2023-06-18 11:16:53'),
(5, 2, 2, 3, 'https://ebooks.gramedia.com/ebook-covers/50156/image_highres/ID_180MN2019MTH11MN.jpg', 'Buku Resep Masakan', 'buku-resep-masakan', 'Masakan khas Minang menyajikan cita rasa yang khas di lidah para penikmatnya. Makanan asal Sumatera Barat, Indonesia ini identik dengan rasanya yang unik dan kaya bumbu nusantara. Tidak mudah mengikuti resep masakan khas Minang karena prosesnya yang rumit.', '2023-06-20 13:58:39'),
(6, NULL, NULL, 3, 'https://cdn.gramedia.com/uploads/items/Analisis_Dan_Desain_Perangkat_Lunak.jpg', 'Analisis dan Desain Perangkat Lunak', 'analisis-dan-desain-perangkat-lunak', 'Pada buku ANALISIS DAN DESAIN PERANGKAT LUNAK ini akan membahas tentang analisis dan desain sistem dengan disertai suatu studi kasus untuk memudahkan dalam pemahaman. Analisis dan desain sistem itu dimulai dengan analisis dan desain basis data, analisis dan desain sistem untuk pemrograman terstruktur dengan menggunakan DFD, dan analisis dan desain sistem untuk pemrograman berorientasi objek dengan menggunakan UML, dan contoh-contoh rich picture untuk rekayasa dengan metode Agile.\r\nSetelah membaca studi kasus tersebut, pembaca diharapkan dapat memahami bagaimana melakukan analisis dan desain sistem untuk pemrograman terstruktur, pemrograman berorientasi objek, maupun metode Agile. Untuk menghasilkan analisis dan desain perangkat lunak yang baik, seorang analis seharusnya memahami konsep pemrograman. Tanpa pemahaman konsep pemrograman yang baik, analis tidak mungkin menghasilkan perancangan perangkat lunak yang baik. Pada buku ini juga dijelaskan mengenai tahapan-tahapan yang harus dilalui dalam rekayasa perangkat lunak serta penjelasan secara umum tentang manajemen proyek perangkat lunak.\r\nBahasan Buku ;\r\n* Analisis Dan Desain Sistem\r\n* Software Development Life Cycle ( SDLC )\r\n* Basis Data\r\n* Rekayasa Perangkat Lunak Untuk Pemrograman Terstruktur\r\n* Pemrograman Berorientasi Objek\r\n* Analisis Data Dan Desain Berorientasi Objek\r\n* Pemodelan Dan UML\r\n* Studi Kasus UML\r\n* Perancangan Pola Berorientasi Objek\r\n* Rekayasa Perangkat Lunak Dengan Metodologi Agile\r\n* Manajemen Proyek Perangkat Lunak\r\nSegera dapatkan buku berjudul ANALISIS DAN DESAIN PERANGKAT LUNAK karya Rosa A.S hanya di toko buku Gramedia terdekat atau melalui Gramedia.com', '2023-06-20 14:01:15'),
(7, 1, 1, 1, 'https://marketplace.canva.com/EAFIDWtGZ9I/2/0/1003w/canva-biru-dan-putih-modern-simpel-sampul-buku-catatan-LSshgJ7Zs4Y.jpg', 'Buku Kita', 'buku-kita', 'Buku ini adalah buku milik kita bersama. digunukan untuk mencatat keperluan bersama dan untuk catatan-catatan penting lainnya.', '2023-06-20 14:04:33'),
(8, 10, 2, 1, 'https://cdn.gramedia.com/uploads/items/img20200713_10340341.jpg', 'Logika Pemrograman Java', 'logika-pemrograman-java', 'Buku Logika Pemrograman Java ini merupakan salah satu seri dasar pemrograman komputer yang dirancang sebagai bahan penuntun dalam memprogram komputer menggunakan bahasa pemrograman Java. Buku karya Abdul Kadir ini dapat digunakan untuk pelajar, mahasiswa, atau siapa saja yang ingin mempelajari pemrograman Java. Buku ini terdiri dari 11 bab dan lebih menekankan pada cara untuk menyelesaikan masalah. Oleh karena itu, banyak contoh permasalahan yang diberikan dan cara untuk menyelesaikannya. Dengan contoh-contoh yang cukup banyak dan bahasa yang mudah dipahami, membuat buku ini sangat mudah digunakan dan dapat menjadi penuntun untuk mempelajari bahasa Java secara mandiri. Selamat belajar!', '2023-06-20 14:06:46'),
(9, 5, 2, 6, 'https://cdn.gramedia.com/uploads/items/9786020479439_7-in-1-Pemrog.jpg', '7 in 1 Pemrograman Web untuk Pemula', '7-in-1-pemrograman-web-untuk-pemula', 'Adanya sebuah website bukan tanpa manfaat. Banyak sekali manfaat web atau website bagi individu, perusahaan, sampai pemerintahan. Website bisa digunakan untuk menampilkan profil, memajang portofolio atau hasil karya, sehingga memberi kemudahan untuk proses belanja secara online. Di dalam sebuah website akan ada banyak halaman mulai dari blog, menu, halaman kontak, dan sebagainya yang bisa diakses secara langsung melalui halaman beranda.\r\n\r\nMembuat sebuah website bukanlah hal mudah, Anda memerlukan kemahiran programming seperti PHP-MySQL, HTML, CSS, ataupun Javascript. Bagi Anda yang sama sekali tidak punya basic dunia programming, membuat website sama seperti kembali belajar dari dasar.\r\n\r\nTeknologi pemrograman web berkembang begitu cepat. Bagi pemula, tentu akan sangat tertinggal jika tidak cepat mengejarnya. Buku ini membahas 7 materi utama dalam mempelajari pemrograman web. Ketujuh bahasan ini akan sangat membantu pemula yang ingin menjadi web programmer dalam waktu yang singkat. Pembahasan dimulai dari pengetahuan dasar tentang pemrograman web, dilanjutkan dengan pembahasan 7 materi pemrograman web satu per satu disertai dengan contoh skrip beserta hasilnya.', '2023-06-20 14:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id` int NOT NULL,
  `mata_kuliah` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `mata_kuliah`, `sks`) VALUES
(5, 'Jaringan Komputer I', '2'),
(8, 'Pendidikan Pancasila', '2'),
(24, 'Kecerdasan Buatan', '2'),
(27, 'yowaimo', '3');

-- --------------------------------------------------------

--
-- Table structure for table `publication_years`
--

CREATE TABLE `publication_years` (
  `id` int NOT NULL,
  `year` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publication_years`
--

INSERT INTO `publication_years` (`id`, `year`) VALUES
(1, 2002),
(2, 2011),
(3, 2016),
(5, 2019),
(6, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int NOT NULL,
  `name` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `slug`) VALUES
(1, 'Bentang Pustaka', 'bentang-pustaka'),
(2, 'Gramedia', 'gramedia'),
(3, 'Mizan Publishing', 'mizan-publishing'),
(6, 'Halo', 'halo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'adm', 'adm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `pub_year_id` (`publication_year_id`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publication_years`
--
ALTER TABLE `publication_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `publication_years`
--
ALTER TABLE `publication_years`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`publication_year_id`) REFERENCES `publication_years` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

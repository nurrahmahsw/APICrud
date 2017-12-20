-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 Des 2017 pada 16.12
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kulina`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_review`
--

CREATE TABLE `user_review` (
  `id` int(4) NOT NULL,
  `order_id` varchar(4) NOT NULL,
  `product_id` varchar(4) NOT NULL,
  `user_id` varchar(4) NOT NULL,
  `rating` float NOT NULL,
  `review` varchar(285) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_review`
--

INSERT INTO `user_review` (`id`, `order_id`, `product_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(18, 'o01', 'p01', 'u01', 7, 'hahaha', '2017-12-20 08:00:03', '2017-12-20 08:00:03'),
(19, 'o01', 'p01', 'u01', 7, 'hahaha', '2017-12-20 08:00:18', '2017-12-20 08:00:18'),
(20, 'o01', 'p01', 'u01', 7, 'hahaha', '2017-12-20 08:00:36', '2017-12-20 08:00:36'),
(21, 'o01', 'p01', 'u01', 7, 'hahaha', '2017-12-20 08:02:48', '2017-12-20 08:02:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 20 Jun 2024 pada 13.48
-- Versi server: 10.5.20-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22285139_makananmanado`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`) VALUES
(1, 'savio@gmail.com', 'savio'),
(2, 'brando@gmail.com', 'brando'),
(3, 'nathan@gmail.com', 'nathan'),
(4, 'sarmila@gmail.com', 'sarmila'),
(5, 'mnerdirko@gmail.com', 'mnerdirko123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `image`) VALUES
(1, 'Tinutuan', '12.000', 'tinutuan.jpeg'),
(2, 'Mie Cakalang', '12.000', 'mie cakalang.jpeg'),
(3, 'Mie Brenebon', '15.000', 'mie brenebon.jpeg'),
(6, 'Mie Brenebon Ceker', '15.000', 'mie brenebon ceker.jpeg'),
(7, 'Pisang Goroho', '10.000', 'goroho.jpeg'),
(8, 'Nike', '2.000', 'nike.jpeg'),
(9, 'Nutrisari', '5.000', 'nutrisari.jpeg'),
(10, 'Es Teh Manis', '6.000', 'es teh manis.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `saran` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saran`
--

INSERT INTO `saran` (`id`, `nama`, `email`, `saran`, `created_at`) VALUES
(1, 'sarmila', 'sarmila@gmail.com', 'jangan kase ikan mantah', '2024-06-06 22:34:56'),
(2, 'savio', 'savio@gmail.com', 'kase pidis lei dpe rica!!!', '2024-06-07 00:32:28'),
(4, 'Vincent', 'vincent@gmail.com', 'so enak mar rica tlalu pidis', '2024-06-11 20:38:26'),
(5, 'gojo', 'gojo@gmail.com', 'yowaimo', '2024-06-11 20:39:09'),
(7, 'atan', 'xyz@gmail.com', 'bole ba bon?', '2024-06-18 14:15:59'),
(8, 'Sarmila Adabaye', 'sarmila@gmail.com', 'dpe rica biji kalo bole 1 kilo kwa', '2024-06-18 14:18:16'),
(11, 'gita', 'gita@gmail.com', 'dpe rica ksih pedis', '2024-06-19 07:19:38'),
(12, 'Vincent', 'Vincent@gmail.com', 'Kurang dpe tahu ini no', '2024-06-20 08:00:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `password`) VALUES
(1, 'nathan', 'nathan@gmail.com', 'nathan'),
(2, 'sarmila', 'sarmila@gmail.com', 'sarmila123'),
(3, 'gojo', 'gojo@gmail.com', 'gojo123'),
(5, 'vincent', 'vincent@gmail.com', 'vincent'),
(6, 'gintoki', 'gintoki@gmail.com', 'gintoki'),
(7, 'yowaimo', 'yowaimo@gmail.com', 'datekimi'),
(8, 'naftali', 'tes@gmail.com', '123'),
(9, 'gita', 'gita@gmail.com', 'gita'),
(10, 'Mner Dirko', 'mnerdirko@gmail.com', 'mnerdirko123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

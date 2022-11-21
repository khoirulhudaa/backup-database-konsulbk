-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2022 pada 05.05
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konsulbk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(190) NOT NULL,
  `alamat_admin` varchar(190) NOT NULL,
  `jk_admin` varchar(190) NOT NULL,
  `no_telephone` int(13) NOT NULL,
  `password` varchar(190) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `alamat_admin`, `jk_admin`, `no_telephone`, `password`, `created_at`) VALUES
(1, 'admin', 'default', 'Wanita', 891271567, 'admin123', '2022-11-20 07:24:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluhan`
--

CREATE TABLE `keluhan` (
  `id_keluhan` int(4) NOT NULL,
  `username` varchar(122) NOT NULL,
  `jk_user` varchar(122) NOT NULL,
  `lk1_s1` varchar(190) NOT NULL,
  `lk2_s1` varchar(190) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluhan`
--

INSERT INTO `keluhan` (`id_keluhan`, `username`, `jk_user`, `lk1_s1`, `lk2_s1`, `tgl_konsultasi`) VALUES
(1, 'huda', 'Pria', 'asasas', 'asassa', '2022-11-21 03:47:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluhan2`
--

CREATE TABLE `keluhan2` (
  `id_keluhan` int(3) NOT NULL,
  `username` varchar(190) NOT NULL,
  `jk_user` varchar(190) NOT NULL,
  `lk1_s2` varchar(13) NOT NULL,
  `lk2a_s2` varchar(190) NOT NULL,
  `lk2b_s2` varchar(190) NOT NULL,
  `lk2c_s2` varchar(190) NOT NULL,
  `lk2d_s2` varchar(180) NOT NULL,
  `lk2e_s2` varchar(190) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluhan2`
--

INSERT INTO `keluhan2` (`id_keluhan`, `username`, `jk_user`, `lk1_s2`, `lk2a_s2`, `lk2b_s2`, `lk2c_s2`, `lk2d_s2`, `lk2e_s2`, `tgl_konsultasi`) VALUES
(1, 'huda', 'Pria', 'eqe', 'eqe', 'eqeq', 'eqeqe', 'eqeq', 'eqe', '2022-11-21 03:58:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluhan3`
--

CREATE TABLE `keluhan3` (
  `id_keluhan` int(3) NOT NULL,
  `username` varchar(190) NOT NULL,
  `jk_user` varchar(190) NOT NULL,
  `lk1a_s3` varchar(190) NOT NULL,
  `lk1b_s3` varchar(190) NOT NULL,
  `lk1c_s3` varchar(190) NOT NULL,
  `lk1d_s3` varchar(190) NOT NULL,
  `lk1e_s3` varchar(190) NOT NULL,
  `lk2a_s3` varchar(190) NOT NULL,
  `lk3a_s3` varchar(190) NOT NULL,
  `lk3b_s3` varchar(190) NOT NULL,
  `lk3c_s3` varchar(190) NOT NULL,
  `lk3d_s3` varchar(190) NOT NULL,
  `lk3e_s3` varchar(190) NOT NULL,
  `lk3f_s3` varchar(190) NOT NULL,
  `lk3g_s3` varchar(190) NOT NULL,
  `lk3h_s3` varchar(190) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluhan3`
--

INSERT INTO `keluhan3` (`id_keluhan`, `username`, `jk_user`, `lk1a_s3`, `lk1b_s3`, `lk1c_s3`, `lk1d_s3`, `lk1e_s3`, `lk2a_s3`, `lk3a_s3`, `lk3b_s3`, `lk3c_s3`, `lk3d_s3`, `lk3e_s3`, `lk3f_s3`, `lk3g_s3`, `lk3h_s3`, `tgl_konsultasi`) VALUES
(1, 'huda', 'Pria', 'dad', 'dad', 'da', 'dad', 'dada', 'dad', 'dad', 'dada', 'dad', 'dad', 'dad', 'dadadadddddddddddddd', 'dadada', 'dadada', '2022-11-21 04:04:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(190) NOT NULL,
  `no_telephone` int(13) NOT NULL,
  `jk_user` varchar(6) NOT NULL,
  `role` varchar(10) NOT NULL,
  `sesi` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `no_telephone`, `jk_user`, `role`, `sesi`, `created_at`) VALUES
(1, 'huda', 'qwerty', 2147483647, 'Pria', 'user', 3, '2022-11-20 07:18:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `keluhan`
--
ALTER TABLE `keluhan`
  ADD PRIMARY KEY (`id_keluhan`);

--
-- Indeks untuk tabel `keluhan2`
--
ALTER TABLE `keluhan2`
  ADD PRIMARY KEY (`id_keluhan`);

--
-- Indeks untuk tabel `keluhan3`
--
ALTER TABLE `keluhan3`
  ADD PRIMARY KEY (`id_keluhan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `keluhan`
--
ALTER TABLE `keluhan`
  MODIFY `id_keluhan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `keluhan2`
--
ALTER TABLE `keluhan2`
  MODIFY `id_keluhan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `keluhan3`
--
ALTER TABLE `keluhan3`
  MODIFY `id_keluhan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

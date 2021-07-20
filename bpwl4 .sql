-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2021 pada 17.01
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpwl4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(20) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `penerbit` varchar(20) NOT NULL,
  `pengarang` varchar(20) NOT NULL,
  `tahun` int(20) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penerbit`, `pengarang`, `tahun`, `id_kategori`, `harga`) VALUES
('B-001', 'Retrocession', 'Elex Media Komputind', 'Ayunita Quraisy', 2020, 'K-110', 98000),
('B-002', 'Kartini', 'PT. Trinaya Tirta Me', '-', 1973, 'K-114', 56000),
('B-003', 'Ensiklopedia Sejarah', 'Indoeduka', 'Retno Sasongkowati', 2015, 'K-113', 480000),
('B-004', 'Hansel & Gretel', 'Atria', 'Grimm Bersaudara', 2011, 'K-115', 28000),
('B-005', 'Becoming Michelle Ob', 'Naura Book Publishin', 'Michelle Obama', 2018, 'K-112', 75000),
('B-006', 'Milk & Honey', 'Gramedia', 'Rupikaur', 2014, 'K-117', 90000),
('B-007', 'Captain America', 'Marvel Comic', 'Jack Kirby & Syd Sho', 1940, 'K-111', 125000),
('B-008', 'Si Juki', 'Bukune', 'Faze Meonk', 2011, 'K-116', 77000),
('B-009', 'Atlas Perglobal', 'Cahaya Agensi', 'Tim Grafis Cahaya', 2018, 'K-118', 74000),
('B-010', 'Bloging', 'Gramedia', 'Jefferly Helianthuso', 2017, 'K-120', 89000),
('B-011', 'Tafsir Jalalain', 'Ummul Qura', 'Jalaludin Almahali', 1459, 'K-119', 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
('K-110', 'Novel'),
('K-111', 'Komik'),
('K-112', 'Biografi'),
('K-113', 'Ensiklopedia'),
('K-114', 'Majalah'),
('K-115', 'Dongeng'),
('K-116', 'Cergam'),
('K-117', 'Antologi'),
('K-118', 'Atlas'),
('K-119', 'Tafsir'),
('K-120', 'Panduan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tgl_beli` date NOT NULL,
  `jml_beli` varchar(200) NOT NULL,
  `total` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `email`, `judul`, `tgl_beli`, `jml_beli`, `total`) VALUES
(1, 'ling@gmail.com', 'Hansel & Gretel', '2012-12-11', '1', '28000'),
(3, 'ica@gmail.com', 'Kartini', '2021-07-21', '2', '112000'),
(4, 'lili@gmail.com', 'Captain America', '2021-07-14', '1', '125000'),
(7, 'ica@gmail.com', 'Milk & Honey', '2021-07-21', '1', '90000'),
(12, 'sholawati281@gmail.com', 'Si Juki', '2021-07-29', '2', '154000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'ica', 'ica@gmail.com', 'default.png', '$2y$10$7VUsNJy7e9FoSVrtjM/VWO9wa8/YPMTKfF0NwC2Pj/veAQPr6OpT.', 2, 1, 1626776334),
(6, 'Sholawati', 'sholawati281@gmail.com', 'default.png', '$2y$10$Y2QfmhNJPAIpOqnkP88FQudDkm3KIqd37XPlUCBd0MHvMUG43M5EW', 1, 1, 1626780020),
(7, 'ling', 'ling@gmail.com', 'default.png', '$2y$10$2FpR/8izXwig/c4snKn2yOWHYm4SuSfl3NBKjHstL5FPTaxwc1J0C', 2, 1, 1626781613),
(8, 'indah', 'indah@gmail.com', 'default.png', '$2y$10$hxYuSanLH7f2bOzx0Z/GuOXkOem2ZnMwQ99Th/6JoTekE6.juXgiq', 2, 1, 1626784003);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'pembeli');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

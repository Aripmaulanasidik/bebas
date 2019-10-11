-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2019 pada 07.53
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
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `deskripsi` varchar(256) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `deskripsi`, `harga`, `stok`, `gambar`) VALUES
(12, 'The Dead Return ', 'Akiyoshi Rikako', 'Haru', 'Suatu malam, aku didorong jatuh dari tebing.\r\nUntungnya aku selamat.\r\n\r\nNamun, saat aku membuka mataku dan menatap cermin,\r\naku tidak lagi memandang diriku yang biasa-biasa saja.\r\nTubuhku berganti dengan sosok pemuda tampan yang tadinya hendak menolongku.\r', 50000, 43, 'The_Dead_Return.jpg'),
(14, 'Girls in the dark', 'Akiyoshi Rikako', 'Haru', ' Apa yang ingin disampaikan oleh gadis itu?\r\n\r\nGadis itu mati.\r\nKetua Klub Sastra, Shiraishi Itsumi, mati.\r\nDi tangannya ada setangkai bunga lily.\r\n\r\nPembunuhan? Bunuh diri?\r\nTidak ada yang tahu.\r\nSatu dari enam gadis anggota Klub Sastra digosipkan sebagai', 40000, 1, 'gadis.jpg'),
(15, 'Holy Mother', 'Akiyoshi Rikako', 'Haru', ' Terjadi pembunuhan mengerikan terhadap seorang anak laki-laki di kota tempat Honami tinggal. Korban bahkan diperkosa setelah dibunuh.\r\n\r\nBerita itu membuat Honami mengkhawatirkan keselamatan putri satu-satunya yang dia miliki. Pihak kepolisian bahkan tida', 62000, 43, 'ibu.jpg'),
(16, 'Absolute Justice', 'Akiyoshi Rikako', 'Haru', ' Seharusnya monster itu sudah mati ….', 54000, 7, 'adil.jpg'),
(17, 'Giselle', 'Akiyoshi Rikako', 'Haru', ' Lima belas tahun yang lalu, prima balerina Himemiya Mayumi tak sengaja menusuk dirinya sendiri hingga mati dalam usahanya menyerang Karebayashi Reina, saat balet \"Giselle\" ditampilkan. \"Giselle\" pun menjadi judul terlarang dalam Tokyo Grand Ballet.\r\n\r\nLim', 80000, 90, 'balet.jpg'),
(18, 'Silence', 'Akiyoshi Rikako', 'Haru', ' Kenapa aku tidak bisa keluar dari pulau ini?\r\n\r\nMiyuki dibesarkan di Yuki-no- Shima, sebuah pulau terpencil yang konon dilindungi oleh Simatama-san, dewa penjaga pulau. Miyuki yang bermimpi menjadi artis akhirnya keluar dari pulau itu dan tinggal di Tokyo', 54000, 12, 'diam.jpg'),
(19, 'Harry Potter 1', 'J.K Rowling', 'Scholastic inc', ' Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a w', 0, 23, '1.jpg'),
(20, 'Harry Potter 2', 'J.K Rowling', 'Scholastic inc', ' Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a w', 120000, 4, '2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_buku`, `id_user`, `qty`) VALUES
(14, 14, 2, 0),
(15, 12, 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

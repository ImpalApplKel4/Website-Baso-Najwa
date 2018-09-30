-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Sep 2018 pada 10.32
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baksonajwa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan`
--

CREATE TABLE `bahan` (
  `username` varchar(20) NOT NULL,
  `idBahan` varchar(10) NOT NULL,
  `NamaBahan` varchar(20) NOT NULL,
  `stockBahan` int(11) NOT NULL,
  `tglBahan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detil_pemesanan`
--

CREATE TABLE `detil_pemesanan` (
  `idPemesanan` varchar(10) NOT NULL,
  `jumPesan` int(10) NOT NULL,
  `pesanan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `NamaKar` varchar(30) NOT NULL,
  `Divisi` varchar(20) NOT NULL,
  `Gaji` int(11) NOT NULL,
  `noHP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `p`
--

CREATE TABLE `p` (
  `idPOL` varchar(10) NOT NULL,
  `tglPOL` date NOT NULL,
  `totalPemesanan` int(11) NOT NULL,
  `totalPengeluaran` int(11) NOT NULL,
  `PorL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesan`
--

CREATE TABLE `pemesan` (
  `idPemesanan` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `namaCust` varchar(20) NOT NULL,
  `namaInstansi` varchar(20) NOT NULL,
  `CP` varchar(15) NOT NULL,
  `alamatCust` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `tglBayar` date NOT NULL,
  `TotaldiBayar` int(11) NOT NULL,
  `pesanan` varchar(20) NOT NULL,
  `jumPesan` int(11) NOT NULL,
  `tglPesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `idPOL` varchar(10) NOT NULL,
  `idPengeluaran` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `tglPengeluaran` date NOT NULL,
  `hargaPengeluaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idProduk` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `NamaProduk` varchar(20) NOT NULL,
  `TipeProduk` varchar(20) NOT NULL,
  `HargaProduk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`idBahan`);

--
-- Indeks untuk tabel `detil_pemesanan`
--
ALTER TABLE `detil_pemesanan`
  ADD PRIMARY KEY (`idPemesanan`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `p`
--
ALTER TABLE `p`
  ADD PRIMARY KEY (`idPOL`);

--
-- Indeks untuk tabel `pemesan`
--
ALTER TABLE `pemesan`
  ADD PRIMARY KEY (`idPemesanan`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`idPengeluaran`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2020 pada 07.03
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
-- Database: `sewa_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` int(20) NOT NULL,
  `NamaK` varchar(20) NOT NULL,
  `Jk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`NIK`, `NamaK`, `Jk`) VALUES
(123, 'nia', 'perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `Nopol` varchar(15) NOT NULL,
  `Merk` varchar(20) NOT NULL,
  `Tipe` varchar(20) NOT NULL,
  `Tahun` varchar(5) NOT NULL,
  `Harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`Nopol`, `Merk`, `Tipe`, `Tahun`, `Harga`) VALUES
('123', 'wewe', 'wew', '1323', 1232),
('123B', 'avanza', 'qwsw', '200', 234234);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `KTP` int(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `No_Telp` int(15) NOT NULL,
  `Nopol` varchar(15) NOT NULL,
  `Merk` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jangka` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `KTP` int(20) NOT NULL,
  `Nopol` varchar(15) NOT NULL,
  `Pinjam` date NOT NULL,
  `Kembali` date NOT NULL,
  `Lama` bigint(255) NOT NULL,
  `Denda` bigint(255) NOT NULL,
  `NIK` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`KTP`, `Nopol`, `Pinjam`, `Kembali`, `Lama`, `Denda`, `NIK`) VALUES
(123123, '123', '2020-12-09', '2020-12-10', 1, 0, 123),
(123213, '123', '2020-12-09', '2020-12-11', 2, 0, 123),
(121332, '123B', '2020-12-09', '2020-12-12', 3, 0, 123);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`Nopol`);

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`KTP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

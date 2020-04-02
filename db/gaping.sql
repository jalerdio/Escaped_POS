-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2019 pada 08.00
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaping`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT '0',
  `barang_min_stok` int(11) DEFAULT '0',
  `barang_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'Nitrogen', '1M3', 1600000, 1700000, 1700000, 60, 1, '2019-05-01 05:47:03', NULL, 7, 1),
('BR000002', 'Fluorin', '2M3', 700000, 0, 800000, 32, 1, '2019-05-01 05:47:35', NULL, 9, 1),
('BR000003', 'Oksigen', '7M3', 1600000, 1700000, 1700000, 78, 1, '2019-05-01 05:48:00', NULL, 7, 1),
('BR000004', 'Argon', '5M3', 900000, 1000000, 1000000, 67, 1, '2019-05-01 05:48:32', NULL, 8, 1),
('BR000005', 'Hidrogen', '5M3', 1700000, 0, 1800000, 41, 1, '2019-05-01 05:49:25', NULL, 9, 1),
('BR000006', 'Metana', '2M3', 650000, 0, 750000, 90, 1, '2019-05-01 05:51:50', NULL, 0, 1),
('BR000007', 'Surya', '2M3', 1600000, 0, 1000000, 89, 1, '2019-05-04 12:37:20', NULL, 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_beli`
--

INSERT INTO `tbl_beli` (`beli_nofak`, `beli_tanggal`, `beli_suplier_id`, `beli_user_id`, `beli_kode`) VALUES
('90137153', '2019-05-01', 6, 1, 'A010519000001'),
('12121331', '2019-04-30', 4, 1, 'A010519000002'),
('1', '2019-04-26', 6, 1, 'A250419000001'),
('1', '2019-04-26', 7, 1, 'A250419000002'),
('1', '2019-04-26', 4, 1, 'A260419000003'),
('1', '2019-04-27', 6, 1, 'A270419000001'),
('2342332', '2019-04-29', 7, 1, 'A290419000001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_beli`
--

CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_beli`
--

INSERT INTO `tbl_detail_beli` (`d_beli_id`, `d_beli_nofak`, `d_beli_barang_id`, `d_beli_harga`, `d_beli_jumlah`, `d_beli_total`, `d_beli_kode`) VALUES
(7, '89898', 'BR000003', 1000, 6, 6000, 'BL250419000001'),
(8, '89898', 'BR000002', 500000, 10, 5000000, 'BL250419000001'),
(9, '2', 'BR000004', 1000, 6, 6000, 'BL250419000001'),
(10, '1', 'BR000001', 700000, 1, 700000, 'A250419000001'),
(11, '678890', 'BR000001', 700000, 1, 700000, 'A250419000002'),
(12, '1', 'BR000001', 700000, 1, 700000, 'A250419000001'),
(13, '1', 'BR000001', 700000, 1, 700000, 'A250419000002'),
(14, '1', 'BR000001', 700000, 20, 14000000, 'A260419000003'),
(15, '1', 'BR000002', 500000, 10, 5000000, 'A260419000003'),
(16, '1', 'BR000003', 15000, 5, 75000, 'A270419000001'),
(17, '2342332', 'BR000001', 700000, 12, 8400000, 'A290419000001'),
(18, '90137153', 'BR000001', 1600000, 8, 12800000, 'A010519000001'),
(19, '90137153', 'BR000003', 1600000, 2, 3200000, 'A010519000001'),
(20, '12121331', 'BR000004', 900000, 4, 3600000, 'A010519000002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(7, '250419000001', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 1, 0, 750000),
(8, '250419000002', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 1, 0, 750000),
(9, '250419000003', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 1, 0, 750000),
(10, '250419000004', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 1, 0, 750000),
(11, '250419000005', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 1, 0, 750000),
(12, '250419000006', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 1, 0, 750000),
(13, '250419000010', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 1, 0, 750000),
(14, '290419000001', 'BR000001', 'Nitrogen', '1M3', 700000, 750000, 2, 0, 1500000),
(15, '010519000001', 'BR000001', 'Nitrogen', '1M3', 1600000, 1700000, 1, 5000, 1695000),
(16, '040519000001', 'BR000007', 'Surya', '2M3', 1600000, 1000000, 5, 0, 5000000),
(17, '080519000001', 'BR000001', 'Nitrogen', '1M3', 1600000, 1700000, 1, 1000000, 700000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('010519000001', '2019-05-01 05:54:10', 1695000, 1800000, 105000, 2, 'grosir'),
('080519000001', '2019-05-08 16:56:45', 700000, 1000000, 300000, 2, 'grosir'),
('250419000001', '2019-04-25 18:03:41', 750000, 1000000, 250000, 2, 'grosir'),
('250419000002', '2019-04-25 18:04:46', 750000, 2000000, 1250000, 2, 'grosir'),
('250419000003', '2019-04-25 18:14:24', 750000, 1000000, 250000, 2, 'grosir'),
('250419000004', '2019-04-25 18:16:54', 750000, 1000000, 250000, 2, 'grosir'),
('250419000005', '2019-04-25 18:18:04', 750000, 1000000, 250000, 2, 'grosir'),
('250419000006', '2019-04-25 18:32:51', 750000, 1000000, 250000, 2, 'grosir'),
('250419000007', '2019-04-25 18:38:34', 750000, 1000000, 250000, 2, 'grosir'),
('250419000008', '2019-04-25 18:40:19', 750000, 1000000, 250000, 2, 'grosir'),
('250419000009', '2019-04-25 18:41:01', 750000, 1000000, 250000, 2, 'grosir'),
('250419000010', '2019-04-25 18:41:43', 750000, 1000000, 250000, 2, 'grosir'),
('290419000001', '2019-04-29 17:57:26', 1500000, 2000000, 500000, 2, 'grosir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(0, 'Gas Cair'),
(7, 'Gas Udara'),
(8, 'Gas Mulia'),
(9, 'Gas Unsur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL,
  `retur_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_retur`
--

INSERT INTO `tbl_retur` (`retur_id`, `retur_tanggal`, `retur_barang_id`, `retur_barang_nama`, `retur_barang_satuan`, `retur_harjul`, `retur_qty`, `retur_subtotal`, `retur_keterangan`) VALUES
(1, '2019-04-29 17:57:41', 'BR000001', 'Nitrogen', '1M3', 750000, 1, NULL, 'rusak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `satuan_id` int(11) NOT NULL,
  `satuan_nama` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`) VALUES
(1, '1M3'),
(2, '5M3'),
(3, '2M3'),
(4, '7M3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`suplier_id`, `suplier_nama`, `suplier_alamat`, `suplier_notelp`) VALUES
(4, 'Yoga', 'Jl.Ra kosasih KP.Kibodas', '085280016495'),
(6, 'Raju', 'Jl.cikembar', '0822801010163'),
(7, 'Zaenal', 'jl.Sebintana', '085720016422');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'Yoga Permana', 'gaping', '65bafeb3c8669d6f638c09b95dd70fdd', '1', '1'),
(2, 'Yoga', 'yoga', '807659cd883fc0a63f6ce615893b3558', '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_user_id` (`barang_user_id`),
  ADD KEY `barang_kategori_id` (`barang_kategori_id`);

--
-- Indeks untuk tabel `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD PRIMARY KEY (`beli_kode`),
  ADD KEY `beli_user_id` (`beli_user_id`),
  ADD KEY `beli_suplier_id` (`beli_suplier_id`),
  ADD KEY `beli_id` (`beli_kode`);

--
-- Indeks untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD PRIMARY KEY (`d_beli_id`),
  ADD KEY `d_beli_barang_id` (`d_beli_barang_id`),
  ADD KEY `d_beli_nofak` (`d_beli_nofak`),
  ADD KEY `d_beli_kode` (`d_beli_kode`);

--
-- Indeks untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`),
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`),
  ADD KEY `d_jual_nofak` (`d_jual_nofak`);

--
-- Indeks untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`),
  ADD KEY `jual_user_id` (`jual_user_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indeks untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indeks untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

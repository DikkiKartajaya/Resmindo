-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 03:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resmindo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_order`
--

CREATE TABLE `tb_detail_order` (
  `id_dorder` int(11) NOT NULL,
  `check_available` int(11) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `keterangan_dorder` text DEFAULT NULL,
  `jumlah_dorder` int(11) NOT NULL,
  `hartot_dorder` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_dorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_order`
--

INSERT INTO `tb_detail_order` (`id_dorder`, `check_available`, `id_order`, `id_masakan`, `keterangan_dorder`, `jumlah_dorder`, `hartot_dorder`, `id_user`, `status_dorder`) VALUES
(64, 1, 'ORD0001', 12, 'pedes', 6, 150000, 8, 0),
(65, 1, 'ORD0001', 16, '', 1, 9000, 8, 0),
(66, 2, 'ORD0002', 12, '', 1, 25000, 15, 0),
(67, 2, 'ORD0002', 16, '', 1, 9000, 15, 0),
(77, 3, 'ORD0003', 33, '', 3, 75000, 15, 0),
(78, 3, 'ORD0003', 19, '', 3, 15000, 15, 0),
(80, 4, 'ORD0004', 30, '', 1, 15000, 15, 0),
(81, 5, 'ORD0005', 28, '', 1, 20000, 15, 0),
(82, 5, 'ORD0005', 19, '', 1, 5000, 15, 0),
(83, 6, 'ORD0006', 29, '', 1, 21000, 15, 0),
(86, 7, 'ORD0007', 28, 'Pedas', 1, 20000, 15, 0),
(87, 7, 'ORD0007', 42, 'Extra Ice', 1, 7000, 15, 0),
(88, 8, 'ORD0008', 28, 'Pedas', 1, 20000, 15, 0),
(89, 8, 'ORD0008', 42, 'Ice Milo', 1, 7000, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'Administrator'),
(2, 'Pelayan'),
(3, 'Kasir'),
(4, 'Gudang'),
(5, 'Koki');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `kategori_masakan` varchar(128) NOT NULL,
  `nama_masakan` varchar(128) NOT NULL,
  `harga_masakan` int(128) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status_masakan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `kategori_masakan`, `nama_masakan`, `harga_masakan`, `foto`, `status_masakan`) VALUES
(28, 'Makanan', 'Indomie Burger', 20000, '02082023210659Indomie Burger.png', 0),
(29, 'Makanan', 'Indomie Croquette 7 Pcs', 21000, '02082023210818Indomie Croquette.png', 1),
(30, 'Makanan', 'Indomie Fight Fire', 15000, '02082023210845Indomie Fight Fire.png', 1),
(31, 'Makanan', 'Indomie Rica Rica', 12000, '02082023210923Indomie Rica Rica.png', 1),
(32, 'Makanan', 'Indomie Salted Egg', 10000, '02082023210944Indomie Salted Egg.png', 0),
(33, 'Makanan', 'Indomie Seafood Sambal Matah', 25000, '02082023211008Indomie Seafood Sambal Matah.png', 1),
(34, 'Makanan', 'Indomie Setan', 20000, '02082023211029Indomie Setan.png', 1),
(42, 'Minuman', 'Es Milo', 7000, '05082023132104Es Milo.png', 1),
(43, 'Minuman', 'Extrajoss', 7500, '05082023132122ExtraJoss.png', 1),
(44, 'Minuman', 'GoodDay', 5000, '05082023132144Goodday.png', 1),
(46, 'Minuman', 'Nutrisari Floridina Orange', 5000, '05082023132219Nutrisari Florida Orange.png', 1),
(47, 'Minuman', 'kopi kapal api', 5500, '07082023184226Kapal Api.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_meja`
--

CREATE TABLE `tb_meja` (
  `meja_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_meja`
--

INSERT INTO `tb_meja` (`meja_id`, `status`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` varchar(50) NOT NULL,
  `meja_order` int(11) NOT NULL,
  `tanggal_order` int(11) NOT NULL,
  `aTanggal_order` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan_order` text DEFAULT NULL,
  `status_order` varchar(20) NOT NULL,
  `statusPesanan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `meja_order`, `tanggal_order`, `aTanggal_order`, `id_user`, `keterangan_order`, `status_order`, `statusPesanan`) VALUES
('ORD0001', 1, 1591074127, '02-06-2020', 8, 'jangan lama', '1', ''),
('ORD0002', 2, 1690980674, '02-08-2023', 15, '', '1', ''),
('ORD0003', 2, 1690986525, '02-08-2023', 15, '', '1', 'cooked'),
('ORD0004', 1, 1690993180, '02-08-2023', 15, '', '1', 'cooked'),
('ORD0005', 4, 1691048848, '03-08-2023', 15, '', '1', 'cooked'),
('ORD0006', 3, 1691398710, '07-08-2023', 15, '', '1', 'cooked'),
('ORD0007', 1, 1691406748, '07-08-2023', 15, 'dnajsdh', '1', 'cooked'),
('ORD0008', 1, 1691407190, '07-08-2023', 15, 'asdjhk', '1', 'cooked');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_order` varchar(50) NOT NULL,
  `tanggal_transaksi` int(11) NOT NULL,
  `aTanggal_transaksi` varchar(50) NOT NULL,
  `hartot_transaksi` int(11) NOT NULL,
  `diskon_transaksi` int(11) NOT NULL,
  `totbar_transaksi` int(11) NOT NULL,
  `uang_transaksi` int(11) NOT NULL,
  `kembalian_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_order`, `tanggal_transaksi`, `aTanggal_transaksi`, `hartot_transaksi`, `diskon_transaksi`, `totbar_transaksi`, `uang_transaksi`, `kembalian_transaksi`) VALUES
(26, 8, 'ORD0001', 1591074220, '02-06-2020', 159000, 50, 79500, 100000, 20500),
(27, 0, 'ORD0002', 1690981098, '02-08-2023', 34000, 0, 34000, 50000, 16000),
(29, 0, 'ORD0003', 1690986631, '02-08-2023', 90000, 0, 90000, 90000, 0),
(30, 0, 'ORD0004', 1690993295, '02-08-2023', 15000, 15, 12750, 13000, 250),
(31, 0, 'ORD0005', 1691048916, '03-08-2023', 25000, 0, 25000, 50000, 25000),
(32, 0, 'ORD0006', 1691403652, '07-08-2023', 21000, 0, 21000, 21000, 0),
(33, 0, 'ORD0007', 1691407044, '07-08-2023', 27000, 10, 24300, 30000, 5700),
(34, 0, 'ORD0008', 1691407521, '07-08-2023', 27000, 15, 22950, 30000, 7050);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `id_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(12, 'admin', 'admin', 'Dikki Yusuf K', 1),
(14, 'gudang', 'gudang', 'Haffizh', 4),
(15, 'pelayan', 'pelayan', 'Alzha Asshawal', 2),
(16, 'koki', 'koki', 'Adhiva Deva', 5),
(17, 'kasir', 'kasir', 'Raffi', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  ADD PRIMARY KEY (`id_dorder`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tb_meja`
--
ALTER TABLE `tb_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  MODIFY `id_dorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tb_meja`
--
ALTER TABLE `tb_meja`
  MODIFY `meja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 01:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `iddetail` int(11) NOT NULL,
  `idpenjualan` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `jumlahproduk` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`iddetail`, `idpenjualan`, `idproduk`, `jumlahproduk`, `total`) VALUES
(1, 1, 1, 1, 12000),
(2, 2, 1, 1, 12000),
(3, 3, 2, 1, 9000),
(4, 4, 1, 1, 12000),
(5, 5, 1, 1, 12000),
(8, 8, 2, 1, 9000),
(10, 10, 1, 1, 12000),
(11, 11, 2, 5, 9000),
(11, 12, 1, 8, 12000),
(12, 13, 1, 1, 12000),
(13, 14, 1, 20, 12000),
(14, 15, 2, 8, 9000),
(14, 16, 1, 1, 12000),
(16, 19, 2, 50, 9000),
(17, 20, 2, 1, 9000),
(18, 21, 2, 1, 9000),
(19, 22, 1, 2, 12000),
(20, 23, 50040030, 9, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomeja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `nama`, `nomeja`) VALUES
(0, 'ichsan', 1),
(2, 'anggah1', 19),
(3, 'angga2', 20),
(4, 'angga3', 19),
(5, 'iyan', 21),
(6, 'iyan1', 22),
(7, 'rahid', 1),
(8, 'hatchi', 2),
(9, 'mansyur', 12),
(10, 'paule', 1),
(11, 'saya', 13),
(12, 'zia', 1),
(13, 'zia', 1),
(14, 'satu', 20),
(15, 'gali', 1),
(16, 'ichsan', 4),
(17, 'anggah', 1),
(18, 'anggah', 1),
(19, 'ouhiijj0909', 1),
(20, 'Ucok', 111);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `idpenjualan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `idpelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`idpenjualan`, `nama`, `tanggal`, `total`, `idpelanggan`) VALUES
(2, '', '2024-02-12', 0.00, 0),
(3, '', '2024-02-12', 0.00, 0),
(4, '', '2024-02-12', 0.00, 0),
(5, '', '2024-02-12', 0.00, 0),
(6, '', '2024-02-12', 0.00, 0),
(7, '', '2024-02-12', 0.00, 0),
(8, '', '2024-02-12', 0.00, 0),
(9, '', '2024-02-12', 0.00, 0),
(10, '', '2024-02-12', 0.00, 0),
(11, '', '2024-02-12', 0.00, 0),
(12, '', '2024-02-12', 0.00, 0),
(13, '', '2024-02-12', 0.00, 0),
(14, '', '2024-02-12', 0.00, 0),
(15, '', '2024-02-12', 0.00, 0),
(16, '', '2024-02-13', 0.00, 0),
(17, '', '2024-02-13', 0.00, 0),
(18, '', '2024-02-13', 0.00, 0),
(19, '', '2024-02-13', 0.00, 0),
(20, '', '2024-02-13', 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `sold` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `nama`, `harga`, `stok`, `sold`, `foto`) VALUES
(1, 'nasiayam', 12000.00, 937, '42', '05022024071724.jpeg'),
(2, 'kopi', 9000.00, 19, '85', '05022024071746.jpeg'),
(50040030, 'maman', 120000.00, 19, '1', '12022024075350.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(5566, 'dinda', '202cb962ac59075b964b07152d234b70', 'Petugas'),
(91031, 'petugas', '80b02585ccce92bce04f924288648a07', 'Petugas'),
(191919, 'angpet', '5db639cae1d17bf73b20e758c80a18af', 'Petugas'),
(999999, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(2147483647, 'angga', '8479c86c7afcb56631104f5ce5d6de62', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`idpenjualan`),
  ADD KEY `idpenjualan` (`idpenjualan`,`idproduk`),
  ADD KEY `idproduk` (`idproduk`),
  ADD KEY `iddetail` (`iddetail`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idpenjualan`),
  ADD KEY `idpelanggan` (`idpelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `idpenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `idpenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`idpelanggan`) REFERENCES `pelanggan` (`idpelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

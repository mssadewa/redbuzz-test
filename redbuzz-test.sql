-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 18, 2023 at 05:39 AM
-- Server version: 8.0.33
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redbuzz-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `id` int NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `harga_satuan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`id`, `nama_barang`, `harga_satuan`) VALUES
(1, 'Pencil', 2000),
(2, 'Ruler', 7000),
(3, 'Pulpen', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_po`
--

CREATE TABLE `transaksi_po` (
  `id_transaksi` int NOT NULL,
  `nama_kustomer` varchar(255) NOT NULL,
  `jumlah_item` int NOT NULL,
  `total_harga` double NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_po_detail`
--

CREATE TABLE `transaksi_po_detail` (
  `id_detail` int NOT NULL,
  `id_transaksi` int NOT NULL,
  `id_barang` int NOT NULL,
  `harga_satuan` double NOT NULL,
  `qty` int NOT NULL,
  `harga_total_item` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_po`
--
ALTER TABLE `transaksi_po`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `transaksi_po_detail`
--
ALTER TABLE `transaksi_po_detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_barang`
--
ALTER TABLE `master_barang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi_po`
--
ALTER TABLE `transaksi_po`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_po_detail`
--
ALTER TABLE `transaksi_po_detail`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2023 at 05:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pp2_biodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `no_telepon`, `jenis_kelamin`, `alamat`) VALUES
('3099d513-fa7e-4cd6-b485-d124c5415319', 'Gumi', '081572831122', 'Laki-Laki', 'Bandung'),
('3864f6ba-69ea-4983-8d1a-20667ae61015', 'Iwan Garna', '082240947443', 'Laki-Laki', 'Kaum Kidul'),
('66e875f8-c374-4318-bdd1-8360f446037b', 'Wini Agustini', 'Wini Agustini', 'Perempuan', 'Pasirjambu'),
('7a167a18-50f4-45e3-a76d-b0d1be795d0d', 'Muhammad Lutfy', '081288242165', 'Laki-Laki', 'Bogor'),
('85d6a537-0323-48ef-b3a3-b638604b09f9', 'Dwi Tanti', '082116800521', 'Perempuan', 'Bekasi'),
('8853ee2d-7109-4de1-ac4d-b5a778a677d7', 'Rika Anggraeni', '081222765780', 'Perempuan', 'Ciwidey Tengah'),
('8d8bae15-8532-4541-88cd-f5dca2991eb6', 'Andika Febriansyah', '082219744309', 'Laki-Laki', 'Ciwidey'),
('9382a1d3-12a0-47fc-a146-37f78a809b45', 'Neni Darliani', '081214142903', 'Perempuan', 'Cicaheum'),
('d12f82fb-adfb-4e4d-8788-6a8633f3fc67', 'Alifa Siti', '081572831822', 'Perempuan', 'Baleendah'),
('e856b18c-46b5-49dc-ae30-fae3932b0d81', 'Indira Putri', '082121912604', 'Perempuan', 'Jakarta'),
('e8752779-aff2-471a-99cc-cffa1fc96a9d', 'Wina Agustina', '082121918608', 'Perempuan', 'Ciwidey'),
('f9fa7c9e-47b3-4244-81c4-ded23cf6ea07', 'Taufiq Apriadi', '081313231070', 'Laki-Laki', 'Sukasari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2023 at 06:00 AM
-- Server version: 5.7.42-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngorei`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `userid` varchar(11) DEFAULT NULL,
  `fireid` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `Provinsi` varchar(25) DEFAULT NULL,
  `Kabupaten` varchar(25) DEFAULT NULL,
  `Kecamatan` varchar(25) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `Desa` varchar(25) DEFAULT NULL,
  `kode` varchar(25) DEFAULT NULL,
  `archive` varchar(25) DEFAULT NULL,
  `bulan` varchar(15) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `mapId` varchar(100) DEFAULT NULL,
  `nama_file` longtext,
  `row` enum('1') NOT NULL,
  `imagePath` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `userid`, `fireid`, `nama`, `title`, `Provinsi`, `Kabupaten`, `Kecamatan`, `deskripsi`, `Desa`, `kode`, `archive`, `bulan`, `tahun`, `date`, `time`, `mapId`, `nama_file`, `row`, `imagePath`) VALUES
(1, '1', NULL, 'asasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '05:09:50pm', NULL, NULL, '1', NULL),
(2, '1', NULL, 'sdsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '05:10:45pm', NULL, NULL, '1', NULL),
(3, '1', NULL, 'bvbvbv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '05:35:53pm', NULL, NULL, '1', NULL),
(4, '1', NULL, 'saasasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '05:38:17pm', NULL, NULL, '1', NULL),
(5, '1', NULL, 'sasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '06:03:53pm', NULL, NULL, '1', NULL),
(6, '1', NULL, 'dsdsdsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '06:03:58pm', NULL, NULL, '1', NULL),
(7, '1', NULL, 'cxcxcx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '06:04:41pm', NULL, NULL, '1', NULL),
(8, '1', NULL, 'cxcx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '06:20:41pm', NULL, NULL, '1', NULL),
(9, '1', NULL, 'sdsdsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '06:34:03pm', NULL, NULL, '1', NULL),
(11, '1', NULL, 'dsdsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '10:42:39pm', NULL, NULL, '1', NULL),
(12, '1', NULL, 'zxzxzx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/11', '11:47:00pm', NULL, NULL, '1', NULL),
(15, '1', NULL, 'dantrik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '04:34:04pm', NULL, NULL, '1', NULL),
(16, '1', NULL, 'Gibran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '04:39:13pm', NULL, NULL, '1', NULL),
(17, '1', NULL, 'asasa23344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '06:02:44pm', NULL, NULL, '1', NULL),
(18, '1', NULL, 'xcxcxcxxzxzx112121212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '06:07:24pm', NULL, NULL, '1', NULL),
(19, '1', NULL, 'casasasasa121212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '07:35:16pm', NULL, NULL, '1', NULL),
(20, '1', NULL, 'dssasasadsdsd12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '08:24:14pm', NULL, NULL, '1', NULL),
(24, '1', NULL, 'xzzxzx122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '11:09:40pm', NULL, NULL, '1', NULL),
(29, '1', NULL, 'sasass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '11:09:44pm', NULL, NULL, '1', NULL),
(30, '1', NULL, 'dantrik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/12', '11:09:52pm', NULL, NULL, '1', NULL),
(39, '1', NULL, 'asas assascxc xcxcxcxcx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2023', '2023/11/14', '01:00:53pm', NULL, NULL, '1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

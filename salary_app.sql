-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 08:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salary_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(10) NOT NULL,
  `id_employee` varchar(30) NOT NULL,
  `salary` int(30) NOT NULL,
  `attandance` varchar(30) NOT NULL,
  `id_team` varchar(30) NOT NULL,
  `id_slary` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id_detail`, `id_employee`, `salary`, `attandance`, `id_team`, `id_slary`) VALUES
(1, 'H03', 500000, '5', 'TM01', 'G001'),
(2, 'H03', 100000, '1', 'TM02', 'G001'),
(5, 'H03', 100000, '1', 'TM01', 'G001'),
(6, 'K01', 750000, '5', 'TM01', 'GK01-1'),
(7, 'K01', 300000, '2', 'TM02', 'GK01-1'),
(8, 'K02', 1000000, '5', 'TM02', 'GK02-1');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id_employee` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `addres` text NOT NULL,
  `bank_account` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id_employee`, `name`, `level`, `phone`, `addres`, `bank_account`) VALUES
('H03', 'Rehan', 'Helper', '102019820', 'Jl.Nusa Bangsa', 'CIMB- 3131412 a/n rehan'),
('K01', 'Ahmad', 'Teknisi', '081818212812', 'Jl. Selamat Sentosa Raya 20', 'BRI - 8128092120 a/n Achmad Sa'),
('K02', 'farid', 'leader', '0098201221', 'Jl.Sukses Selalu', 'BCA - 121098210921 a/n farid m'),
('K03', 'Budi', 'Teknisi', '08924352671', 'Jl. Ceger Raya No.10', 'BCA -  89289181928 a/n Budi');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id_project` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `addres` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `contrac` varchar(30) NOT NULL,
  `additional` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `name`, `addres`, `phone`, `contrac`, `additional`) VALUES
('P001', 'PT. Example', 'Jl. Sukses Makmur , Jakarta Barat', '+21 910912', '14 Hari', '10.000 per Jam '),
('P002', 'PT Louserindo', 'Jl.Kangkung Kebayoran Lama', '+621091921', '14', 'Gaji : Tidak Ada Tambahan | Jobs:  instalasi LAN .'),
('P003 ', 'PT. Ebonia Home Indonesia', 'Ruko Panglima Poli. Kv.89 Jakarta Selatan', '+628912891', '4', 'Gaji : tidak ada tambahan | Jobs: Instalasi kabel CCTV 2 unit');

-- --------------------------------------------------------

--
-- Table structure for table `slary`
--

CREATE TABLE `slary` (
  `id_salary` varchar(30) NOT NULL,
  `id_user` varchar(30) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `total_salary` int(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slary`
--

INSERT INTO `slary` (`id_salary`, `id_user`, `date`, `total_salary`) VALUES
('G001', 'admin', '2022-09-09', 700000),
('GK01-1', 'admin', '2022-09-15', 1050000),
('GK02-1', 'admin', '2022-09-16', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id_team` varchar(30) NOT NULL,
  `id_project` varchar(30) NOT NULL,
  `id_employee` varchar(30) NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id_team`, `id_project`, `id_employee`, `list`) VALUES
('TM01', 'P001', 'K01', 'Farid(K02),Reski(K03),Rehan(H04)'),
('TM02', 'P002', 'K02', 'Ahmad(K01),Rehan(H03)'),
('TM03 ', 'P003', 'K03', 'Ahmad(K01), Rehan(H03), Budi(K03)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `position`, `phone`, `password`) VALUES
('admin', 'farid', 'admin', '089291812', 'admin'),
('theblues', 'Farid Noor Afandi', 'Admin', '0892891', 'chealsea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_team` (`id_team`),
  ADD KEY `id_invoice` (`id_slary`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `slary`
--
ALTER TABLE `slary`
  ADD PRIMARY KEY (`id_salary`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id_team`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id_employee`),
  ADD CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`id_team`) REFERENCES `team` (`id_team`),
  ADD CONSTRAINT `detail_ibfk_3` FOREIGN KEY (`id_slary`) REFERENCES `slary` (`id_salary`);

--
-- Constraints for table `slary`
--
ALTER TABLE `slary`
  ADD CONSTRAINT `slary_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`id_project`) REFERENCES `project` (`id_project`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

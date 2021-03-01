-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 07:58 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sppku`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_bayar`
--

CREATE TABLE IF NOT EXISTS `jenis_bayar` (
  `th_pelajaran` char(9) NOT NULL,
  `tingkat` varchar(3) NOT NULL,
  `jumlah` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_bayar`
--

INSERT INTO `jenis_bayar` (`th_pelajaran`, `tingkat`, `jumlah`) VALUES
('2020/2021', 'XI', 300),
('2020/2021', 'XII', 300);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `kelas` varchar(8) NOT NULL DEFAULT '',
  `th_pelajaran` char(9) NOT NULL DEFAULT '',
  `nis` char(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas`, `th_pelajaran`, `nis`) VALUES
('X-MIF', '2014/2015', '2014201504'),
('X-MIF', '2014/2015', '2014201505'),
('X-MIF', '2014/2015', '2014201506'),
('X-MIF', '2014/2015', '2014201507'),
('X-MIF', '2014/2015', '2014201508'),
('X-MIF', '2014/2015', '2014201509'),
('X-MIF', '2014/2015', '2014201510'),
('X-MIF', '2014/2015', '2014201514'),
('X-MIF', '2014/2015', '2014201515'),
('X-MIF', '2014/2015', '2014201516'),
('X-MIF', '2014/2015', '2014201517'),
('X-MIF', '2014/2015', '2014201518'),
('X-MIF', '2014/2015', '2014201519'),
('X-MIF', '2014/2015', '2014201520'),
('X-MIF', '2014/2015', '2014201521'),
('X-MIF', '2014/2015', '2014201522'),
('X-MIF', '2014/2015', '2014201523'),
('X-MIF', '2014/2015', '2014201524'),
('X-MIF', '2014/2015', '2014201525'),
('X-TIP', '2014/2015', '2014201526'),
('X-TIP', '2014/2015', '2014201527'),
('X-TIP', '2014/2015', '2014201528'),
('X-TIP', '2014/2015', '2014201529'),
('X-TIP', '2014/2015', '2014201530'),
('X-TIP', '2014/2015', '2014201531'),
('X-TIP', '2014/2015', '2014201532'),
('X-TIP', '2014/2015', '2014201533'),
('X-TIP', '2014/2015', '2014201534'),
('X-TIP', '2014/2015', '2014201535'),
('X-TIP', '2014/2015', '2014201538'),
('X-TIP', '2014/2015', '2014201539'),
('X-TIP', '2014/2015', '2014201540'),
('X-TIP', '2014/2015', '2014201541'),
('X-TIP', '2014/2015', '2014201542'),
('X-TIP', '2014/2015', '2014201543'),
('X-TIP', '2014/2015', '2014201544'),
('X-TIP', '2014/2015', '2014201545'),
('X-TKJ', '2014/2015', '2014201511'),
('X-TKJ', '2014/2015', '2014201512'),
('X-TKJ', '2014/2015', '2014201513'),
('X-TKJ', '2014/2015', '2014201536'),
('X-TKJ', '2014/2015', '2014201537'),
('XI-MIF', '2014/2015', '2014201501'),
('XI-MIF', '2014/2015', '2014201502'),
('XI-MIF', '2014/2015', '2014201503'),
('XII', '2020/2021', '1234576856');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `kelas` varchar(8) NOT NULL,
  `nis` char(10) NOT NULL,
  `bulan` varchar(45) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `jumlah` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kelas`, `nis`, `bulan`, `tgl_bayar`, `jumlah`) VALUES
('X-TIP', '2014201539', 'January', '2021-02-25', -100000),
('XII', '1234576856', 'February', '2021-02-19', -100000),
('XII_RPL', '1718190001', 'Februari', '2021-02-11', 300),
('XII_RPL', '1718190001', 'February', '2021-02-11', 300),
('XII_RPL', '2014201501', 'December', '2014-12-30', 85000),
('XII_RPL', '2014201504', 'December', '2014-12-27', 90000),
('XII_RPL', '2014201507', 'December', '2014-12-27', 90000),
('XII_RPL', '2014201507', 'January', '2021-02-11', -100),
('XII_RPL', '2014201508', 'December', '2014-12-27', 90000),
('XII_RPL', '2014201536', 'December', '2014-12-27', 90000),
('XII_RPL', '2014201537', 'February', '2021-02-16', -100000),
('XII_TKR', '2014201513', 'December', '2014-12-27', 90000),
('XII_TKR', '2014201535', 'December', '2014-12-27', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE IF NOT EXISTS `prodi` (
  `idprodi` varchar(4) NOT NULL,
  `prodi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`idprodi`, `prodi`) VALUES
('1233', 'Rekayasa Perangkat Lunak'),
('2345', 'Teknik Kendaraan Ringan Otomotif'),
('4567', 'Perhotelan');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` char(10) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `idprodi` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `idprodi`) VALUES
('1234576856', 'Teti Sumyati', '1233'),
('166398109', 'Ai Nurrohmah', '1233'),
('2014201535', 'Agum Sugianto', '2345'),
('2014201536', 'Dede Silviana', '1233'),
('2014201537', 'Dewi Anggraeni', '1233'),
('2014201538', 'Nita Talia', '1233'),
('2014201539', 'Novintan Nurdelis', '1233'),
('2014201540', 'Putri Indriani', '1233'),
('2014201541', 'Riska Aryanti', '1233'),
('2014201542', 'Regi Muhamad Fikry', '2345'),
('2014201543', 'Risqiya Ayu Lestari', '1233'),
('2435645777', 'Saipil Akbar', '2345');

-- --------------------------------------------------------

--
-- Table structure for table `tapel`
--

CREATE TABLE IF NOT EXISTS `tapel` (
  `id` int(11) NOT NULL,
  `tapel` char(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tapel`
--

INSERT INTO `tapel` (`id`, `tapel`) VALUES
(5, '2020/2021'),
(6, '2019/2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `admin`, `fullname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'Administrator'),
(2, 'kasir', 'c7911af3adbd12a035b289556d96470a', 0, 'Kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_bayar`
--
ALTER TABLE `jenis_bayar`
  ADD PRIMARY KEY (`th_pelajaran`,`tingkat`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas`,`th_pelajaran`,`nis`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kelas`,`nis`,`bulan`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`idprodi`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tapel`
--
ALTER TABLE `tapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`), ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tapel`
--
ALTER TABLE `tapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

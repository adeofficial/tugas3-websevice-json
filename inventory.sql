-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2014 at 12:10 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(25) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `stok` varchar(20) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `isi` varchar(20) NOT NULL,
  `harga_beli` varchar(30) NOT NULL,
  `harga_jual` bigint(30) NOT NULL,
  `expired` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `nama`, `kategori`, `stok`, `satuan`, `isi`, `harga_beli`, `harga_jual`, `expired`) VALUES
(91, 'BAR-017', 'oli', '38', '5', '23', '12', '0', 0, '0000-00-00'),
(92, 'BAR-018', 'tinta', '42', '0', '15', '0', '0', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE IF NOT EXISTS `detail_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` varchar(30) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`id`, `id_pembelian`, `barang`, `jumlah`) VALUES
(137, '123', '75', '10'),
(136, '123', '77', '10'),
(135, '123', '75', '10'),
(134, '122', '76', '10'),
(133, '120', '76', '10'),
(132, '120', '76', '10'),
(131, '118', '75', '10'),
(130, '118', '76', '10'),
(129, '117', '75', '10'),
(128, '116', '76', '10'),
(138, '123', '76', '10'),
(139, '123', '75', '10'),
(140, '122', '76', '10'),
(141, '122', '75', '10'),
(142, '122', '77', '12'),
(143, '131', '76', '10000'),
(144, '131', '75', '10000'),
(145, '133', '76', '10'),
(146, '134', '76', '10'),
(147, '135', '76', '10'),
(148, '136', '75', '10'),
(149, '137', '80', '10'),
(150, '138', '79', '10'),
(151, '139', '78', '1'),
(152, '140', '75', '20'),
(153, '141', '76', '1');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE IF NOT EXISTS `detail_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjualan` varchar(30) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `id_penjualan`, `barang`, `jumlah`) VALUES
(1, '', '76', '10'),
(2, '12', '76', '10'),
(3, '12', '77', '10'),
(4, '14', '76', '50'),
(5, '14', '75', '20'),
(6, '16', '77', '23'),
(7, '17', '75', '10'),
(8, '18', '76', '10'),
(9, '19', '76', '10'),
(10, '19', '77', '50'),
(11, '21', '76', '10000'),
(12, '21', '77', '10000'),
(13, '23', '76', '10'),
(14, '23', '79', '10');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokter` varchar(45) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `spesialisasi` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `id_dokter`, `nama`, `alamat`, `spesialisasi`) VALUES
(3, 'D001', 'Drs. Setyawan', 'Malang', 'Poli Kulit'),
(4, 'D002', 'Drs. Sugiono', 'Lawang', 'Poli Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE IF NOT EXISTS `jual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faktur` varchar(30) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `customer` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `sesjual` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id`, `faktur`, `barang`, `jumlah`, `tanggal`, `customer`, `total`, `sesjual`) VALUES
(186, 'Kirim-FK-20140421-31', 'BAR-017', '5', '2014-04-21', 'kentir', '0', '20140421130414');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` varchar(10) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `id_kategori`, `kategori`) VALUES
(38, 'KAT-09 ', 'Specialty '),
(39, 'KAT-010 ', 'Jasa Konstruksi'),
(37, 'KAT-08 ', 'Industri '),
(30, 'KAT-06 ', 'Elektronik'),
(31, 'KAT-07 ', 'Makanan'),
(32, 'KAT-08 ', 'Minuman'),
(33, 'KAT-09 ', 'Alat rumah Tangga'),
(34, 'KAT-010 ', 'Makanan ringan'),
(35, 'KAT-011 ', 'Makanan Berat'),
(36, 'KAT-012 ', 'Soda'),
(40, 'KAT-011 ', 'Jasa Konsultansi'),
(41, 'KAT-012 ', 'Jasa Lainnya'),
(42, 'KAT-013 ', 'Obat');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `faktur` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `total` int(30) NOT NULL,
  `subtotal` varchar(30) NOT NULL,
  `sesbeli` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=217 ;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `barang`, `jumlah`, `faktur`, `tanggal`, `supplier`, `total`, `subtotal`, `sesbeli`) VALUES
(215, 'BAR-017', '24', 'AMBIL-FK-20140420-12', '2014-04-20', ' ID01', 0, '', '20140420210409');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_satuan` varchar(10) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `id_satuan`, `satuan`) VALUES
(23, 'SAT-012 ', 'Puyer'),
(25, 'SAT-012 ', 'Paket'),
(24, 'SAT-012 ', 'Botol'),
(14, 'SAT-05 ', 'Pak'),
(15, 'SAT-06 ', 'Pcs'),
(16, 'SAT-07 ', 'Dus'),
(17, 'SAT-08 ', 'Buah'),
(18, 'SAT-09 ', 'Buku'),
(19, 'SAT-010 ', 'Roll'),
(20, 'SAT-011  ', 'Unit'),
(21, 'SAT-012 ', 'Tablet'),
(22, 'SAT-013 ', 'Puyer'),
(26, 'SAT-013 ', 'Lusin');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_supplier` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `obat` varchar(35) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `id_supplier`, `nama`, `obat`, `alamat`, `telepon`) VALUES
(102, 'ID02', 'Mitra Makmur CV', '79', 'JL Baru 34', '022-31223122'),
(103, 'ID03', 'Ingram Micro Asia Limited', '79', '205 Kallang Bahru  #04-00', '+(65) 6298 0888'),
(104, 'ID04', 'Datum Technology Pte Ltd', '79', '10 Ubi Crescent #05-31 Ubi Tec', '+(65) 6842 6966'),
(105, 'ID05', 'CA Solutions (Thailand) C', '76', '183 Regent House Bldg. (16th F', '+(662) 650 5039'),
(106, 'ID06', 'nForce Security Systems A', '76', '9/2 The Synchronized, Soi Ratc', '+(66)2-274-0984'),
(107, 'ID07', 'Synnex (Thailand) Co., Lt', '76', 'Khwang/Khet Lardprao, 188 M.1 ', '+(66)2-553-8888');

-- --------------------------------------------------------

--
-- Table structure for table `t_menu`
--

CREATE TABLE IF NOT EXISTS `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `aktif` int(11) DEFAULT NULL,
  `urut` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `t_menu`
--

INSERT INTO `t_menu` (`id`, `name`, `role`, `url`, `aktif`, `urut`) VALUES
(35, 'User', 1, 'user', 1, 11),
(36, 'User', 2, 'user', 1, 11),
(37, 'User', 4, 'user', 1, 11),
(38, 'User', 5, 'user', 1, 11),
(39, 'Penjualan', 1, 'jual', 1, 2),
(40, 'Penjualan', 2, 'jual', 1, 2),
(41, 'Penjualan', 4, 'jual', 1, 2),
(42, 'Penjualan', 5, 'jual', 1, 2),
(43, 'Role', 1, 'Role', 1, 12),
(44, 'Role', 2, 'Role', 1, 12),
(45, 'Role', 4, 'Role', 1, 12),
(46, 'Role', 5, 'Role', 1, 12),
(47, 'Menu', 1, 'menus', 1, 9),
(48, 'Menu', 2, 'menus', 1, 9),
(49, 'Menu', 4, 'menus', 1, 9),
(50, 'Menu', 5, 'menus', 1, 9),
(56, 'Laporan Pembelian', 2, 'laporanbeli', 1, 5),
(70, 'Laporan Penjualan', 1, 'laporanjual', 1, 6),
(66, 'Menu', 7, 'menus', 1, 9),
(55, 'Laporan Pembelian', 1, 'laporanbeli', 1, 5),
(57, 'Laporan Pembelian', 4, 'laporanbeli', 1, 5),
(58, 'Laporan Pembelian', 5, 'laporanbeli', 1, 5),
(59, 'Pembelian', 1, 'beli', 1, 1),
(60, 'Pembelian', 2, 'beli', 1, 1),
(61, 'Pembelian', 4, 'beli', 1, 1),
(62, 'Pembelian', 5, 'beli', 1, 1),
(65, 'Pembelian', 7, 'beli', 1, 1),
(67, 'Role', 7, 'Role', 1, 12),
(64, 'Laporan Pembelian', 7, 'laporanbeli', 1, 5),
(63, 'Penjualan', 7, 'jual', 1, 2),
(69, 'User', 7, 'user', 1, 11),
(71, 'Laporan Penjualan', 2, 'laporanjual', 1, 6),
(72, 'Laporan Penjualan', 4, 'laporanjual', 1, 6),
(73, 'Laporan Penjualan', 5, 'laporanjual', 1, 6),
(74, 'Laporan Penjualan', 7, 'laporanjual', 1, 6),
(75, 'MASTER', 1, '#', 1, 3),
(76, 'MASTER', 2, '#', 1, 3),
(77, 'MASTER', 4, '#', 1, 3),
(78, 'MASTER', 5, '#', 1, 3),
(79, 'MASTER', 7, '#', 1, 3),
(116, 'INVENTORI', 2, '##', 1, 0),
(115, 'INVENTORI', 1, '##', 1, 0),
(119, 'INVENTORI', 7, '##', 1, 0),
(118, 'INVENTORI', 5, '##', 1, 0),
(80, 'Dashboard', 1, 'home', 1, 1),
(81, 'Dashboard', 2, 'home', 1, 1),
(82, 'Dashboard', 4, 'home', 1, 1),
(83, 'Dashboard', 5, 'home', 1, 1),
(84, 'Dashboard', 7, 'home', 1, 1),
(93, 'Master Barang', 5, 'barang', 1, 9),
(92, 'Master Barang', 4, 'barang', 1, 9),
(91, 'Master Barang', 2, 'barang', 1, 9),
(90, 'Master Barang', 1, 'barang', 1, 9),
(94, 'Master Barang', 7, 'barang', 1, 9),
(95, 'Master Supplier', 1, 'supplier', 1, 9),
(96, 'Master Supplier', 2, 'supplier', 1, 9),
(97, 'Master Supplier', 4, 'supplier', 1, 9),
(98, 'Master Supplier', 5, 'supplier', 1, 9),
(99, 'Master Supplier', 7, 'supplier', 1, 9),
(105, 'Master Kategori', 1, 'kategori', 1, 9),
(106, 'Master Kategori', 2, 'kategori', 1, 9),
(107, 'Master Kategori', 4, 'kategori', 1, 9),
(108, 'Master Kategori', 5, 'kategori', 1, 9),
(109, 'Master Kategori', 7, 'kategori', 1, 9),
(110, 'Master Satuan', 1, 'satuan', 1, 9),
(111, 'Master Satuan', 2, 'satuan', 1, 9),
(112, 'Master Satuan', 4, 'satuan', 1, 9),
(113, 'Master Satuan', 5, 'satuan', 1, 9),
(114, 'Master Satuan', 7, 'satuan', 1, 9),
(117, 'INVENTORI', 4, '#', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_pegawai`
--

CREATE TABLE IF NOT EXISTS `t_pegawai` (
  `nik` varchar(20) NOT NULL,
  `kd_level` varchar(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `t_pegawai`
--

INSERT INTO `t_pegawai` (`nik`, `kd_level`, `nama`, `id`) VALUES
('00 00 123', '1', 'Rangga', 1),
('00 00 136', '2', 'Jonas Johan Aipassa', 2),
('00 00 137', '2', 'Rani Mainake', 3),
('00 00 138', '4', 'Frengky. M. N. Wairatta', 4),
('00 00 139', '4', 'Ronald. Y. Hehakaya', 5),
('00 00 140', '4', 'Novalina Soulissa', 6),
('00 00 141', '4', 'Noviyanti Ismi Latuconsina', 7),
('00 00 142', '4', 'Ferdinand Rocky Parera', 8),
('00 00 143', '4', 'Melattie Tuwanakotta', 9),
('00 00 144', '2', 'Lisiani Herawati', 10),
('00 00 145', '2', 'Vico Papilaya', 11),
('00 00 146', '4', 'Ricardo. TH. P. Pattimahau', 12),
('00 00 147', '3', 'Monika G.K. Siahaya', 13),
('00 00 148', '4', 'Gleenda Nicolas Hehamahua', 14),
('00 00 149', '4', 'Elsa Adriana Lekatompessy', 15),
('00 00 150', '4', 'Theddy Reymond Maitimu', 16),
('00 00 151', '4', 'Husain Salampessy', 17),
('00 00 152', '4', 'Ridwan Tuahena', 18),
('00 00 153', '4', 'Sandra Cynthia Mahupale', 19),
('00 00 154', '4', 'Abdullah Marasabessy', 20),
('00 00 155', '4', 'Donatus Ferdinand. B. Anaktatoty', 21),
('00 00 159', '7', 'Agus Edi Permadi', 22),
('1234567', 'ho', 'ASEP DAYAT', 29);

-- --------------------------------------------------------

--
-- Table structure for table `t_role`
--

CREATE TABLE IF NOT EXISTS `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `t_role`
--

INSERT INTO `t_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'User'),
(4, 'User Biasa'),
(5, 'User Biasa Juga'),
(7, 'Ghoib');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7884 ;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `nik`, `status`, `username`, `password`, `role`, `nama`) VALUES
(7875, '00 00 136', 0, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'Herlina'),
(7877, '00 00 138', 1, '00 00 138', '6c27412170c5d42364618aca20dede28', 2, 'Johan Anis Pssa'),
(7879, '00 00 137', 1, 'rani', 'b9f81618db3b0d7a8be8fd904cca8b6a', 2, 'Rani Maineke'),
(7880, '00 00 153', 0, '00 00 153', '073efcda1a5d7780bc4b9c3c3ce8b412', 7, 'Lala '),
(7882, NULL, 0, 'myadmin', '15eed4d30e4e0fa9dd36f96237b1024c', 1, 'Admin Ku'),
(7883, '12345', 1, 'tes', '202cb962ac59075b964b07152d234b70', 2, 'tes');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

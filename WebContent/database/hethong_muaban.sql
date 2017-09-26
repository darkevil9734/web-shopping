-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2017 at 05:08 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hthong_muaban`
--

-- --------------------------------------------------------

--
-- Table structure for table `dki_ncc`
--

CREATE TABLE IF NOT EXISTS `dki_ncc` (
  `ma_nha_ccap` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ma_nha_ccap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bảng đăng ký nhà cung cấp' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `giohang_sanpham`
--

CREATE TABLE IF NOT EXISTS `giohang_sanpham` (
  `ma_gio_hang` int(10) NOT NULL,
  `ma_san_pham` int(10) NOT NULL,
  PRIMARY KEY (`ma_gio_hang`,`ma_san_pham`),
  KEY `ma_san_pham` (`ma_san_pham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE IF NOT EXISTS `gio_hang` (
  `ma_gio_hang` int(10) NOT NULL AUTO_INCREMENT,
  `ma_khach_hang` int(10) NOT NULL,
  `phi_van_chuyen` int(11) NOT NULL,
  PRIMARY KEY (`ma_gio_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
  `ma_khach_hang` int(10) NOT NULL AUTO_INCREMENT,
  `ho_khach_hang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_khach_hang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  PRIMARY KEY (`ma_khach_hang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12345690 ;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ho_khach_hang`, `ten_khach_hang`, `dia_chi`, `sdt`) VALUES
(12345689, 'vu', 'nguyen', '123 nguyen trai', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `nha_cung_cap`
--

CREATE TABLE IF NOT EXISTS `nha_cung_cap` (
  `ma_nha_cung_cap` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_nha_cung_cap` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  PRIMARY KEY (`ma_nha_cung_cap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`ma_nha_cung_cap`, `ten_nha_cung_cap`, `dia_chi`, `sdt`) VALUES
('AP', 'Apple', 'iCenter Sài Gòn', 39305883),
('SA', 'Samsung', 'KCN Quận 9', 62855599);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_nhacungcap`
--

CREATE TABLE IF NOT EXISTS `sanpham_nhacungcap` (
  `ma_san_pham` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_nha_cung_cap` int(10) NOT NULL,
  PRIMARY KEY (`ma_san_pham`,`ma_nha_cung_cap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `ma_san_pham` int(10) NOT NULL AUTO_INCREMENT,
  `ten_san_pham` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_san_pham` int(11) NOT NULL,
  `thong_tin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_san_pham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giohang_sanpham`
--
ALTER TABLE `giohang_sanpham`
  ADD CONSTRAINT `giohang_sanpham_ibfk_1` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`ma_gio_hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `giohang_sanpham_ibfk_2` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `gio_hang_ibfk_1` FOREIGN KEY (`ma_gio_hang`) REFERENCES `khach_hang` (`ma_khach_hang`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

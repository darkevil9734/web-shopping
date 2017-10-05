-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2017 at 01:05 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `ma_san_pham` int(10) NOT NULL AUTO_INCREMENT,
  `ten_san_pham` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hang_san_xuat` varchar(45) NOT NULL,
  `gia_san_pham` int(11) NOT NULL,
  `tinh_trang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh_mo_phong` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_san_pham`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ten_san_pham`, `hang_san_xuat`, `gia_san_pham`, `tinh_trang`, `hinh_anh_mo_phong`) VALUES
(1, 'iPhone 7 plus 32Gb', 'Apple', 22490000, 'còn hàng', 'ip7plus.jpg'),
(2, 'iPhone 6', 'Apple', 7690000, 'còn hàng', 'ip6.jpg'),
(3, 'Nokia 216', 'Nokia', 760000, 'còn hàng', 'nokia216.jpg'),
(4, 'Nokia 150 ', 'Nokia', 650000, 'hết hàng', 'nokia150.jpg'),
(5, 'Nokia 105', 'Nokia', 350000, 'còn hàng', 'nokia105.jpg'),
(6, 'Nokia 3', 'Nokia', 3000000, 'còn hàng', 'nokia3.jpg'),
(7, 'Asus Zenphone Go', 'Asus', 2990000, 'hết hàng', 'asusgo.jpg'),
(8, 'Samsung Galaxy J2', 'Samsung', 2490000, 'hết hàng', 'galaxyj2.jpg'),
(9, 'Asus Zenphone 2 Go', 'Asus', 1990000, 'còn hàng', 'asus2.jpg'),
(10, 'Nokia 230', 'Nokia', 1250000, 'hết hàng', 'nokia230.jpg');

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

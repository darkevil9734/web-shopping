-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2017 at 05:24 PM
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
-- Table structure for table `nhan_vien`
--

CREATE TABLE IF NOT EXISTS `nhan_vien` (
  `idnhan_vien` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `ho_nhan_vien` varchar(45) NOT NULL,
  `ten_nhan_vien` varchar(45) NOT NULL,
  `sdt` int(15) NOT NULL,
  PRIMARY KEY (`idnhan_vien`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`idnhan_vien`, `username`, `password`, `ho_nhan_vien`, `ten_nhan_vien`, `sdt`) VALUES
(1, 'admin', 'admin', 'Vũ ', 'Nguyên', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `ma_san_pham` int(10) NOT NULL AUTO_INCREMENT,
  `ten_san_pham` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hang_san_xuat` varchar(45) NOT NULL,
  `gia_san_pham` int(11) NOT NULL,
  `tinh_trang` varchar(20) NOT NULL,
  `hinh_anh_mo_phong` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `camera_truoc` text NOT NULL,
  `camera_sau` text NOT NULL,
  `dung_luong_pin` text NOT NULL,
  `tinh_nang` text NOT NULL,
  `bao_mat` text NOT NULL,
  `mau_sac` text NOT NULL,
  PRIMARY KEY (`ma_san_pham`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ten_san_pham`, `hang_san_xuat`, `gia_san_pham`, `tinh_trang`, `hinh_anh_mo_phong`, `camera_truoc`, `camera_sau`, `dung_luong_pin`, `tinh_nang`, `bao_mat`, `mau_sac`) VALUES
(1, 'iPhone 7 plus 32Gb', 'Apple', 22490000, 'còn hàng', 'ip7plus.jpg', '7 MP', '12 MP Camera kép', '2900 mAh', 'Bảo mật nâng cao	Mở khóa bằng vân tay\nTính năng đặc biệt	Chống nước, chống bụi\n3D Touch\nGhi âm	Có, microphone chuyên dụng chống ồn\nRadio	Không\nXem phim	H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid\nNghe nhạc	Lossless, Midi, MP3, WAV, WMA, AAC, eAAC+', 'vân tay', ''),
(2, 'iPhone 6', 'Apple', 7690000, 'còn hàng', 'ip6.jpg', '', '', '', '', '', ''),
(3, 'Nokia 216', 'Nokia', 760000, 'còn hàng', 'nokia216.jpg', '', '', '', '', '', ''),
(4, 'Nokia 150 ', 'Nokia', 650000, 'hết hàng', 'nokia150.jpg', '', '', '', '', '', ''),
(5, 'Nokia 105', 'Nokia', 350000, 'còn hàng', 'nokia105.jpg', '', '', '', '', '', ''),
(6, 'Nokia 3', 'Nokia', 3000000, 'còn hàng', 'nokia3.jpg', '', '', '', '', '', ''),
(7, 'Asus Zenphone Go', 'Asus', 2990000, 'hết hàng', 'asusgo.jpg', '', '', '', '', '', ''),
(8, 'Samsung Galaxy J2', 'Samsung', 2490000, 'hết hàng', 'galaxyj2.jpg', '', '', '', '', '', ''),
(9, 'Asus Zenphone 2 Go', 'Asus', 1990000, 'còn hàng', 'asus2.jpg', '', '', '', '', '', ''),
(10, 'Nokia 230', 'Nokia', 1250000, 'hết hàng', 'nokia230.jpg', '', '', '', '', '', ''),
(12, ' Samsung Galaxy Note', 'Samsung', 22490000, 'còn hàng', 'sgn8.jpg', '8MP', '2 camera 12MP', '3300mAh', 'Chống nước, chống bụi', 'Mở khóa bằng khuôn mặt, Quét mồng mắt, Mở khóa bằng vân tay', 'Đen'),
(13, 'Samsung Galaxy S8', 'Samsung', 18490000, 'còn hàng', 'sgs8.jpg', '8MP', '12MP', '3000mAh', 'Chống nước, chống bụi, Mặt kính 2.5D', 'Quét mồng mắt, Mở khóa bằng vân tay', 'Xanh dương, Đen'),
(14, 'Samsung Galaxy C9 Pr', 'Samsung', 11490000, 'còn hàng', 'sgc9.jpg', '16MP', '16MP', '4000mAh', 'Không', 'Mở khóa bằng vân tay', 'Đen, Vàng đồng'),
(15, 'Samsung Galaxy Note ', 'Samsung', 9990000, 'còn hàng', 'sgn5.png', '5MP', '16MP', '3000mAh', 'Mặt kính 2.5D', 'Mở khóa bằng vân tay', 'Vàng đồng'),
(16, 'Samsung Galaxy A7', 'Samsung', 9990000, 'còn hàng', 'sga7.jpg', '16MP', '16MP', '3600mAh', 'Mặt kính 2.5D, Chống nước, Chống bụi', 'Mở khóa bằng vân tay', 'Đen, Vàng đồng'),
(17, 'Samsung Galaxy A5', 'Samsung', 7990000, 'còn hàng', 'sga5.jpg', '16MP', '16MP', '3000mAh', 'Mặt kính 2.5D, Chống nước, Chống bụi', 'Mở khóa bằng vân tay', 'Đen, Vàng đồng'),
(18, 'Oppo F3 Plus', 'Oppo', 10690000, 'còn hàng', 'of3+.jpg', '16MP và 8MP', '16MP', '4000mAh', 'Mở ứng dụng nhanh bằng vân tay, hình vẽ', 'Mở khóa bằng vân tay', 'Đen, Vàng đồng'),
(19, 'Oppo F3', 'Oppo', 6990000, 'còn hàng', 'of3.jpg', '16MP và 8MP', '13MP', '3200mAh', 'Chạm 2 lần sáng màn hình', 'Mở khóa bằng vân tay', 'Đen, Vàng đồng, Vàng hồng'),
(20, 'Oppo A71', 'Oppo', 4690000, 'còn hàng', '', '5MP', '13MP', '3000mAh', 'Chạm 2 lần sáng màn hình', 'Không', 'Đen, Vàng đồng'),
(21, 'Oppo A37', 'Oppo', 3290000, 'còn hàng', '', '5MP', '8MP', '2630mAh', 'Chạm 2 lần sáng màn hình', 'Không', 'Vàng đồng, Vàng Hồng'),
(22, 'HTC U11', 'HTC', 16990000, 'còn hàng', '', '16MP', '12MP', '3000mAh', 'Mặt kính 2.5D, Chống nước, Chống bụi', 'Mở khóa bằng vân tay', 'Xanh dương, Bạc'),
(23, 'HTC U Ultra', 'HTC', 14990000, 'còn hàng', '', '16MP', '12MP', '3000mAh', 'Mặt kính 2.5D', 'Mở khóa bằng vân tay', 'Xanh dương, đen'),
(24, 'HTC U Play', 'HTC', 8990000, 'còn hàng', '', '16MP', '16MP', '2500mAh', 'Mặt kính 2.5D', 'Mở khóa bằng vân tay', 'Xanh dương, đen'),
(25, 'HTC 10 EVO', 'HTC', 5990000, 'còn hàng', '', '8MP', '16MP', '3200mAh', 'Chống nước, Chống bụi', 'Mở khóa bằng vân tay', 'Bạc, Xám'),
(26, 'HTC One ME', 'HTC', 4990000, 'còn hàng', 'hom.png', '4 Ultra Pixel', '20MP', '2840mAh', 'HTC BoomSound', 'Mở khóa bằng vân tay', 'Vàng đồng, Trắng và Vàng Đồng'),
(27, 'HTC One A9s', 'HTC', 4990000, 'còn hàng', 'hoa9s.jpg', '5MP', '13MP', '2300mAh', 'Sạc pin nhanh', 'Mở khóa bằng vân tay', 'Bạc, Vàng đồng'),
(28, 'Vivo V7+', 'Vivo', 7990000, 'còn hàng', 'vv7+.jpg', '24MP', '16MP', '3225mAh', 'Đang cập nhật', 'Mở khóa bằng vân tay', 'Đen, Vàng đồng'),
(29, 'Vivo V5s', 'Vivo', 6690000, 'còn hàng', 'vv5s.png', '20MP', '13MP', '3000mAh', 'Mặt kính 2.5D', 'Mở khóa bằng vân tay', 'Vàng đồng, Vàng Hồng'),
(30, 'Vivo Y53', 'Vivo', 3390000, 'còn hàng', 'vy53.png', '5MP', '8MP', '2500mAh', 'Không', 'Không', 'Đen, Vàng đồng'),
(32, 'Philips E181', 'Philips', 690000, 'còn hàng', 'philipsE181.jpg', 'VGA', 'không', '3100mAh', '2G, Bluetooth, pin lâu, 2 sim', 'không', 'đen, vàng');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `ho_user` varchar(45) NOT NULL,
  `ten_user` varchar(45) NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dia_chi` varchar(45) NOT NULL,
  `thanh_pho` varchar(45) NOT NULL,
  `nuoc` varchar(45) NOT NULL,
  `zip_code` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`,`username`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `ho_user`, `ten_user`, `sdt`, `email`, `dia_chi`, `thanh_pho`, `nuoc`, `zip_code`) VALUES
(1, 'nguyenvana', '123456789', 'nguyen', 'van a', 123456789, 'nguyenvana@yahoo.com', '123 nguyen trai', 'ho chi minh', 'vietnam', '88888'),
(2, 'abc', 'abc', 'abc', 'abc', 123, 'abc@abc.com', '1234 nguyen trai', 'ho chi minh', 'vietnam', '88888'),
(5, 'abcd', 'nguyen', 'vu', 'nguyen', 1234567895, 'darkevil9712@gmail.com', '123 nguyen trai', 'hcm', 'vietnam', '88888');

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

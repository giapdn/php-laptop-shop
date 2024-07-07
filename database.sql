-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 11, 2024 at 05:46 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_One`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img_path`) VALUES
(1, 'banner1.jpg'),
(2, 'banner2.jpg'),
(3, 'banner3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bienthe_img`
--

CREATE TABLE `bienthe_img` (
  `id` int(11) NOT NULL,
  `id_sanPham` int(11) NOT NULL,
  `PATH` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bienthe_img`
--

INSERT INTO `bienthe_img` (`id`, `id_sanPham`, `PATH`) VALUES
(1, 1, 'airm1.webp'),
(2, 1, 'airm1(1).webp'),
(3, 1, 'airm1(3).webp'),
(4, 1, 'airm1(4).webp'),
(5, 1, 'airm1(5).webp'),
(6, 2, '637860593087770791_HASP-ASUS-FX506H-1.webp'),
(7, 2, 'sp21.webp'),
(8, 2, 'sp22.webp'),
(9, 2, 'sp23.webp'),
(10, 2, 'sp24.webp'),
(11, 3, 'sp31.webp'),
(12, 3, 'sp32.webp'),
(13, 3, 'sp33.webp'),
(14, 3, 'sp34.webp'),
(15, 3, 'sp35.webp'),
(16, 4, 'sp41.webp'),
(17, 4, 'sp42.webp'),
(18, 4, 'sp43.webp'),
(19, 4, 'sp44.webp'),
(20, 4, 'sp45.webp'),
(21, 5, 'sp51.webp'),
(22, 5, 'sp52.webp'),
(23, 5, 'sp53.webp'),
(24, 5, 'sp54.webp'),
(25, 5, 'sp55.webp'),
(26, 6, 'sp65.webp'),
(27, 6, 'sp61.webp'),
(28, 6, 'sp62.png'),
(29, 6, 'sp63.webp'),
(30, 6, 'sp64.webp'),
(31, 7, 'sp75.jpg'),
(32, 7, 'sp71.jpg'),
(33, 7, 'sp72.webp'),
(34, 7, 'sp73.webp'),
(35, 7, 'sp7.webp'),
(36, 8, 'sp81.webp'),
(37, 8, 'sp82.webp'),
(38, 8, 'sp8.webp'),
(39, 8, 'sp84.webp'),
(40, 8, 'sp85.webp');

-- --------------------------------------------------------

--
-- Table structure for table `bienthe_sanpham`
--

CREATE TABLE `bienthe_sanpham` (
  `ID` int(11) NOT NULL,
  `id_sanPham` int(11) NOT NULL,
  `id_Img` int(11) DEFAULT NULL,
  `chip` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `gb` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bienthe_sanpham`
--

INSERT INTO `bienthe_sanpham` (`ID`, `id_sanPham`, `id_Img`, `chip`, `ram`, `gb`, `display`, `color`, `price`, `weight`) VALUES
(1, 1, NULL, 'M1', '8', '512', '13.3', 'Vàng', '26999999', 1.29),
(4, 2, NULL, 'i7', '8', '256', '15.6', 'Đen', '17990000', 2.5),
(5, 2, NULL, 'i5', '16', '512', '15.6', 'Đen', '20990000', 2.5),
(6, 3, NULL, 'i5', '8', '256', '14.8', 'Trắng ', '16899000', 1.8),
(7, 3, NULL, 'i7', '16', '512', '14.8', 'Trắng', '25000000', 1.8),
(8, 4, NULL, 'i5', '8', '256', '15.9', 'Xanh', '15900000', 1.5),
(9, 4, NULL, 'i7', '16', '512', '15.9', 'Xanh', '25000000', 1.5),
(10, 5, NULL, 'i5', '8', '512', '15.5', 'Vàng', '20000000', 1.5),
(11, 5, NULL, 'i7', '16', '512', '15.5', 'Vàng', '30000000', 1.5),
(12, 6, NULL, 'i5', '8', '256', '15.5', 'Đen', '19630000', 1.5),
(13, 6, NULL, 'i7', '16', '512', '15.5', 'Đen', '23999999', 1.5),
(14, 7, NULL, 'i5', '8', '256', '15.5', 'Trắng', '16000000', 1.8),
(15, 7, NULL, 'i7', '16', '512', '15.5', 'Trắng', '24999999', 1.8),
(16, 8, NULL, 'i5', '8', '256', '15.5', 'Đen', '14000000', 2.5),
(17, 8, NULL, 'i7', '16', '512', '15.5', 'Đen', '20000000', 2.5),
(18, 1, NULL, 'M1', '8', '256', '13.3', 'Trắng', '26999999', 1.29);

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id_binhLuan` int(11) NOT NULL,
  `noidung_binhLuan` text,
  `ngay_binhLuan` date DEFAULT NULL,
  `userName` varchar(255) NOT NULL,
  `id_sanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id_binhLuan`, `noidung_binhLuan`, `ngay_binhLuan`, `userName`, `id_sanPham`) VALUES
(19, 'Sản phẩm rất tốt !', '2023-12-02', 'giapdn', 1),
(20, 'c', '2023-12-02', 'giapdn', 1),
(22, 'Giao hàng nhanh', '2023-12-02', 'giapdn', 1),
(23, 'Sản phẩm tốt !', '2023-12-02', 'giapdn', 1),
(24, 'Sản phẩm tốt !', '2023-12-02', 'giapdn', 1),
(25, 'Sản phẩm tốt !', '2023-12-03', 'giapdn', 7),
(26, 'Sản phẩm tốt !', '2023-12-03', 'giapdn', 8),
(27, 'Sản phẩm tốt !', '2023-12-03', 'giapdn', 8),
(28, 'Sản phẩm tốt !', '2023-12-03', 'giapdn', 8),
(29, 'kkk', '2023-12-03', 'giapdn', 8),
(30, 'a', '2023-12-03', 'giapdn', 7),
(31, 'hehe', '2023-12-03', 'giapdn', 1),
(32, 'X', '2023-12-03', 'giapdn', 1),
(33, 'hehehehehehe', '2023-12-03', 'giapdn', 7),
(34, 'hehehe', '2023-12-03', 'giapdn', 7),
(35, 'heheheh', '2023-12-03', 'giapdn', 7),
(36, 'heheheh', '2023-12-04', 'giapdn', 6),
(37, 'kkkkkkkkk', '2023-12-04', 'giapdn', 6),
(38, 'hehehehehehe', '2023-12-04', 'giapdn', 4);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `id_donHang` int(11) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `id_sanPham` int(11) NOT NULL,
  `GB` varchar(255) DEFAULT NULL,
  `tongGia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `id_donHang`, `soLuong`, `id_sanPham`, `GB`, `tongGia`) VALUES
(73, 118, 1, 7, '512', NULL),
(74, 119, 2, 1, '256', NULL),
(79, 125, 2, 8, '512', NULL),
(80, 129, 1, 7, NULL, NULL),
(81, 129, 1, 1, NULL, NULL),
(82, 130, 1, 1, '256', NULL),
(83, 131, 1, 7, '256', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(255) DEFAULT NULL,
  `img_danhmuc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `tendanhmuc`, `img_danhmuc`) VALUES
(1, 'APPLE', 'z4957236588272_0388f6563a686b3bd3a5a41a57ea4cb3.jpg'),
(2, 'DELL', 'delllogo.jpg'),
(3, 'ACER', 'acerlogo.jpg'),
(4, 'HP', 'z4957239120442_9c2a2cb54167fbe4b8dfcda4f94ef5e2.jpg'),
(5, 'Asus', 'logo-asus-inkythuatso-2-01-26-09-21-11.jpg'),
(6, 'Lenovo', 'z4957239120442_9c2a2cb54167fbe4b8dfcda4f94ef5e2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_donHang` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `ngayDatHang` date DEFAULT NULL,
  `tongGiaDonHang` varchar(255) DEFAULT NULL,
  `trangThai` varchar(255) DEFAULT 'pending',
  `pttt` varchar(255) DEFAULT NULL,
  `tenNguoiNhan` varchar(255) DEFAULT NULL,
  `diaChi` varchar(255) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id_donHang`, `userName`, `ngayDatHang`, `tongGiaDonHang`, `trangThai`, `pttt`, `tenNguoiNhan`, `diaChi`, `SDT`) VALUES
(118, 'giapdn', '2023-12-08', '24999999', 'shipping', 'Vnpay', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(119, 'giapdn', '2023-12-08', '39380000', 'success', 'momo_wallet', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(120, 'giapdn', '2023-12-08', '39380000', 'canceled', 'TTKNH', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(125, 'giapdn', '2023-12-09', '40000000', 'pending', 'Vnpay', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(127, 'giapdn', '2023-12-08', '39380000', 'canceled', 'TTKNH', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(128, 'giapdn', '2023-12-08', '39380000', 'shipped', 'TTKNH', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(129, 'giapdn', '2023-12-09', '35690000', 'pending', 'TTKNH', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(130, 'giapdn', '2023-12-09', '26999999', 'pending', 'Vnpay', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943'),
(131, 'giapdn', '2023-12-09', '16000000', 'pending', 'momo_wallet', 'Đỗ Nguyên Giáp', 'Hà Nội', '0988306943');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `id_sanPham` int(11) NOT NULL,
  `soluong` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanPham` int(11) NOT NULL,
  `tenSanPham` varchar(255) DEFAULT NULL,
  `giaSanPham` int(11) DEFAULT '0',
  `moTaSanPham` text,
  `img_path` varchar(199) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `count` int(11) DEFAULT '0',
  `dateAdd` date DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `chip` varchar(255) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `store` int(11) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sanPham`, `tenSanPham`, `giaSanPham`, `moTaSanPham`, `img_path`, `views`, `count`, `dateAdd`, `id_danhmuc`, `chip`, `ram`, `store`, `display`, `card`, `color`, `weight`) VALUES
(1, 'MacBook Air 13 inch M1 2020 8CPU 7GPU 8GB/256GB', 19690000, 'Chưa có mô tả xx', 'macc.webp', 18, 1, '2023-12-11', 1, 'M1', 8, 256, '13.3 ', 'Retina', 'Vàng', 1.29),
(2, 'Asus TUF Gaming FX506HF-HN017W i5 11400H', 17990000, 'Asus TUF Gaming FX506HF-HN017W i5 11400H', 'asus1.webp', 7, 0, '2023-12-05', 5, 'i5', 16, 256, '15.3', 'NVIDIA', 'Đen', 1.56),
(3, 'MSI Gaming Thin GF63 12VE-454VN i5 12450H', 25000000, 'MSI Gaming Thin GF63 12VE-454VN i5 12450H', 'msi1.webp', 10, 0, '2023-12-27', 4, 'i5', 16, 512, '15.3', 'GF63', 'Đen', 1.67),
(4, 'HP 14s-em0086AU R5 7520U (835T9PA)', 25000000, 'Chưa có mô tả', 'hp1.webp', 9, 0, '2023-12-01', 4, 'Ryzen 5', 16, 512, '14', 'AMD', 'Trắng', 1.4),
(5, 'Asus Vivobook E1404FA-NK186W R5 7520U', 30000000, 'Chưa có mô tả', 'asus2.webp', 10, 0, '2023-12-05', 5, 'Ryzen 5', 16, 512, '14', 'AMD', 'Đen', 1.4),
(6, 'Asus TUF Gaming FX507ZC4-HN095W i5 12500H', 23999999, 'Chưa có mô tả', 'asus3.webp', 17, 0, '2023-12-11', 5, 'Core i5', 16, 512, '14', 'NVIDIA', 'Đen', 1.4),
(7, 'HP 14s-em0044AU R67520U (123T9PA)', 16000000, 'Chưa có mô tả', 'lenovo1.webp', 18, 0, '2023-12-09', 6, 'Ryzen 5', 16, 256, '14', 'Ryzen 5', 'Trắng', 1.3),
(8, 'Acer Aspire 7 Gaming A715-76-57CY i5 12450H ', 20000000, 'Chưa có mô tả', 'acer1.webp', 10, 0, '2023-12-11', 3, 'Core i5', 8, 512, '15.6', 'intel UHD Graphic', 'Đen', 2.1);

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `noidung` text,
  `dateCreate` date DEFAULT NULL,
  `id_donHang` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`id`, `userName`, `noidung`, `dateCreate`, `id_donHang`, `checked`) VALUES
(1, 'giapdn', 'Đơn hàng của bạn đã được huỷ.', '2023-12-09', 127, 1),
(2, 'giapdn', 'Bạn vừa xác nhận đã nhận đơn hàng, mong bạn hài lòng về sản phẩm của chúng tôi !', '2023-12-09', 119, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id_tinTuc` int(11) NOT NULL,
  `noidung_tinTuc` text NOT NULL,
  `ngaydang_tinTuc` date NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id_tinTuc`, `noidung_tinTuc`, `ngaydang_tinTuc`, `tieude`, `img_path`) VALUES
(1, 'Chào quý khách hàng của chúng tôi,\r\n\r\nChúng tôi hân hạnh chia sẻ những tin tức mới nhất và xu hướng đang diễn ra tại shop bán máy tính của chúng tôi. Được biết đến là địa chỉ uy tín, chúng tôi luôn nỗ lực mang đến cho khách hàng những sản phẩm và dịch vụ tốt nhất, cùng với sự đổi mới liên tục để đáp ứng nhu cầu ngày càng cao về công nghệ.', '2023-11-22', 'Tin tức laptop 1', 'tintuc1.jpg'),
(2, 'Trong tháng vừa qua, chúng tôi đã chứng kiến sự tăng động mạnh mẽ trong lĩnh vực máy tính gaming. Đối với những người yêu thích trải nghiệm giải trí số và e-sports, các dòng máy tính gaming mới nhất với hiệu suất đỉnh cao và đèn LED RGB đa dạng đang thu hút sự chú ý.', '2023-11-29', 'Tin tức laptop 2', 'tintuc5.jpg'),
(3, 'Ổ đĩa cứng SSD NVMe đang trở thành một xu hướng quan trọng trong thế giới máy tính. Với tốc độ truyền tải dữ liệu chói lọi, SSD NVMe mang lại trải nghiệm làm việc và giải trí mượt mà hơn bao giờ hết. Chúng tôi đã cập nhật nhiều mô hình mới từ các thương hiệu nổi tiếng để đáp ứng nhu cầu ngày càng cao của khách hàng.', '2023-11-21', 'Tin tức laptop 3', 'tintuc4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT 'Người dùng',
  `sdt` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `author` varchar(10) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userName`, `password`, `name`, `sdt`, `email`, `author`, `diachi`, `avatar`) VALUES
('giapdn', 'a', 'Đỗ Nguyên Giáp', '0988306943', 'giapdnph35799@fpt.edu.vn', 'admin', 'Hà Nội', 'giapdn_avtr.jpeg'),
('giapdnn', 'a', 'Người dùng', NULL, NULL, NULL, NULL, NULL),
('test', 'a', 'Người dùng', '0988306943', 'giapdnph35799@fpt.edu.vn', 'user', 'Mỹ', 'giapdn_avtr.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `yeuthich`
--

CREATE TABLE `yeuthich` (
  `id_yeuthich` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `id_sanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yeuthich`
--

INSERT INTO `yeuthich` (`id_yeuthich`, `userName`, `id_sanPham`) VALUES
(57, 'giapdn', 5),
(58, 'giapdn', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bienthe_img`
--
ALTER TABLE `bienthe_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_VrntsImg_sanpham` (`id_sanPham`);

--
-- Indexes for table `bienthe_sanpham`
--
ALTER TABLE `bienthe_sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_VARIANTS_sanpham` (`id_sanPham`),
  ADD KEY `FK_VRPROD_VRIMG` (`id_Img`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_binhLuan`),
  ADD KEY `lk_binhluan_users` (`userName`),
  ADD KEY `lk_binhluan_sanpham` (`id_sanPham`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chitietdonhang_donhang` (`id_donHang`),
  ADD KEY `fk_chitietdonhang_sanpham` (`id_sanPham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_donHang`),
  ADD KEY `lk_donhang_users` (`userName`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_giohang_users` (`userName`),
  ADD KEY `lk_giohang_sanpham` (`id_sanPham`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanPham`),
  ADD KEY `fk_sanpham_danhmuc` (`id_danhmuc`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_thongbao_users` (`userName`),
  ADD KEY `fk_thongbao_donhang` (`id_donHang`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_tinTuc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userName`);

--
-- Indexes for table `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD PRIMARY KEY (`id_yeuthich`),
  ADD KEY `fk_yeuthich_sanpham` (`id_sanPham`),
  ADD KEY `fk_yeuthich_users` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bienthe_img`
--
ALTER TABLE `bienthe_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bienthe_sanpham`
--
ALTER TABLE `bienthe_sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_binhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_donHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_tinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `yeuthich`
--
ALTER TABLE `yeuthich`
  MODIFY `id_yeuthich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bienthe_img`
--
ALTER TABLE `bienthe_img`
  ADD CONSTRAINT `FK_VrntsImg_sanpham` FOREIGN KEY (`id_sanPham`) REFERENCES `sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bienthe_sanpham`
--
ALTER TABLE `bienthe_sanpham`
  ADD CONSTRAINT `FK_VARIANTS_sanpham` FOREIGN KEY (`id_sanPham`) REFERENCES `sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VRPROD_VRIMG` FOREIGN KEY (`id_Img`) REFERENCES `bienthe_img` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `lk_binhluan_sanpham` FOREIGN KEY (`id_sanPham`) REFERENCES `sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lk_binhluan_users` FOREIGN KEY (`userName`) REFERENCES `users` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_chitietdonhang_donhang` FOREIGN KEY (`id_donHang`) REFERENCES `donhang` (`id_donHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chitietdonhang_sanpham` FOREIGN KEY (`id_sanPham`) REFERENCES `sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `lk_donhang_users` FOREIGN KEY (`userName`) REFERENCES `users` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `lk_giohang_sanpham` FOREIGN KEY (`id_sanPham`) REFERENCES `sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lk_giohang_users` FOREIGN KEY (`userName`) REFERENCES `users` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_danhmuc` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `fk_thongbao_donhang` FOREIGN KEY (`id_donHang`) REFERENCES `donhang` (`id_donHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_thongbao_users` FOREIGN KEY (`userName`) REFERENCES `users` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD CONSTRAINT `fk_yeuthich_sanpham` FOREIGN KEY (`id_sanPham`) REFERENCES `sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yeuthich_users` FOREIGN KEY (`userName`) REFERENCES `users` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

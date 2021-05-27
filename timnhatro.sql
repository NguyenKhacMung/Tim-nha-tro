-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 19, 2021 lúc 04:30 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `timnhatro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `uid` int(11) NOT NULL,
  `tendangnhap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangnhap`
--

INSERT INTO `dangnhap` (`uid`, `tendangnhap`, `matkhau`) VALUES
(1, 'loi', '123'),
(2, 'admin', '123'),
(10, 'nhat', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `tieude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `giatien` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dientich` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `loaitin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `doituong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chitiet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` datetime DEFAULT current_timestamp(),
  `khuvuc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`id`, `uid`, `tieude`, `anh`, `diachi`, `giatien`, `dientich`, `sdt`, `email`, `loaitin`, `doituong`, `chitiet`, `ngay`, `khuvuc`, `trangthai`) VALUES
(1, 1, 'CẦN TÌM NỮ Ở GHÉP TẠI SỐ 131A, NGÕ 105/20 ĐƯỜNG DOÃN KẾ THIỆN, MAI DỊCH, QUẬN CẦU GIẤY', '3.jpg', '16 Nguyen nhac', '300000', '25', '012345678', 'mung@gmail.com', 'Cho thuê phòng trọ', 'Nữ', 'Mình đang tìm 01 bạn nữ ở cùng để share tiền nhà, vào ở được ngay, tại địa chỉ số 131A ngõ 105/20 đường Doãn Kế Thiện, Mai Dịch, cách nhà nghỉ Thanh Trà 2: 10m.', '2021-01-16 16:52:40', 'Ngô Mây', 1),
(17, 2, 'tjj55ghgjkfljsdklg', '6.jpg', 'ưertyj', 'sdfghjk', 'ádfghjk', 'ádfghjk', 'sdfghj', 'Nhà nguyên căn', 'Nam', 'ưertyuhgfvgbn', '2021-01-19 06:52:09', 'Nguyễn Văn Cừ', 1),
(18, 1, 'brbreb', '6.jpg', 'ẻbebreb', 'ẻberb', 'reberb', 'ẻberberb', 'rebeberber', 'Nhà nguyên căn', 'Nam', 'rbebr', '2021-01-19 07:24:37', 'Nguyễn Văn Cừ', 0),
(19, 3, 'cho thuê nhà trọ qn', '4.jpg', '33 Nguyễn văn trỗi', '20000', '26', '0987654345', 'mung@gmail.com', 'Phòng trọ', 'Nam', 'cho thue nhà trọ không chung chủ , h giấc tự do', '2021-01-19 09:37:36', 'Nguyễn Văn Cừ', 1),
(20, 3, 'Nhà nguyên căn quy nhơn', '6.jpg', '22 Hàm Nghi TP Quy Nhơn', '3000000', '23', '09345678', 'h@gmail.com', 'Nhà nguyên căn', 'Nữ', 'Cho thuê nhà nguyên căn giá rẻ', '2021-01-19 09:39:39', 'Quang Trung', 1),
(21, 10, 'tim phong tro', '1.jpg', 'ngô may', '456', '45', '037415516515', 'thanhnhat@gmail.com', 'Phòng trọ', 'Nam', 'tim phong tro cho nam 2 nguoi', '2021-01-19 09:52:39', 'Ngô Mây', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`uid`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

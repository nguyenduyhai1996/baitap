-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 03, 2021 lúc 04:51 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `id` int(11) NOT NULL,
  `account` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dangnhap`
--

INSERT INTO `dangnhap` (`id`, `account`, `password`) VALUES
(1, 'hai', '1'),
(2, 'admin', '12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemthi`
--

CREATE TABLE `diemthi` (
  `diemthiID` int(11) NOT NULL,
  `sinhvienID` int(11) NOT NULL,
  `ltud` float NOT NULL,
  `toanlogic` float NOT NULL,
  `httt` int(11) NOT NULL,
  `mmt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `diemthi`
--

INSERT INTO `diemthi` (`diemthiID`, `sinhvienID`, `ltud`, `toanlogic`, `httt`, `mmt`) VALUES
(1, 6, 8, 8.5, 8, 8),
(2, 2, 10, 9, 8, 5),
(3, 12, 8, 7, 8, 7),
(4, 11, 9, 8, 8, 8),
(5, 13, 7, 9, 10, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `idGiangvien` int(11) NOT NULL,
  `masoGV` text NOT NULL,
  `hoten` text NOT NULL,
  `trinhdo` text NOT NULL,
  `chuyenmon` text NOT NULL,
  `email` text NOT NULL,
  `sdt` text NOT NULL,
  `link_avt_GV` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`idGiangvien`, `masoGV`, `hoten`, `trinhdo`, `chuyenmon`, `email`, `sdt`, `link_avt_GV`) VALUES
(1, 'GV001', 'Phạm Tiến Huy', 'Thạc sĩ', 'Lập trinh ứng dụng', 'phamhuy@gmail.com', '0326589565', '7.jpg'),
(2, 'GV002', 'Lê Thị Cúc ', 'Thạc sĩ', 'Mạng máy tính ', 'lecuc@gmail.com', '0658585858', '8.jpg'),
(3, 'GV003', 'Nguyễn Thu Thủy ', 'Tiến sĩ', 'Đời lối cách mạng', 'thuthuy@mail.vn', '0254549878', '9.jpg'),
(4, 'GV004', 'Đỗ Tú Uyên', 'Tiến sĩ', 'Toán logic', 'tuuyen@gmail.com', '0145745869', '6.jpg'),
(5, 'GV005', 'Nguyền Trà My', 'Thạc sĩ', 'Tư tương Hồ Chí Minh', 'tramy@gmail.com', '0909900009', '1.jpg'),
(6, 'GV006', 'Vũ Song Tùng ', 'Tiến sĩ', 'Điện tử viễn thông ', 'songtung@gmail.com', '0959595947', '5.png'),
(7, 'GV007', 'Dương Kiều Ngoan', 'Thạc sĩ', 'Mac - Lenin', 'kieungoan@gmail.com', '0698541224', '3.png'),
(8, 'GV008', 'Nguyễn La Thanh', 'Tiên sĩ', 'văn', 'lathanh@mail.com', '0124844468', '2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `lopID` int(11) NOT NULL,
  `tenlop` text NOT NULL,
  `chunhiem` text NOT NULL,
  `phonghoc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`lopID`, `tenlop`, `chunhiem`, `phonghoc`) VALUES
(8, 'K21-A', 'Phạm Thị Lê Huyền', 'P.101'),
(10, 'K19-A', 'Nguyễn Thu Thủy ', 'P.203'),
(11, 'K20-A', 'Trần Minh Tâm', 'P.103'),
(14, 'K41A', 'Đào Thị Lê Thu', 'P.303');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `sinhvienID` int(11) NOT NULL,
  `MaSV` int(11) NOT NULL,
  `lopID` int(11) NOT NULL,
  `name` text NOT NULL,
  `birthday` date NOT NULL,
  `phonenumber` text NOT NULL,
  `address` text NOT NULL,
  `avt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`sinhvienID`, `MaSV`, `lopID`, `name`, `birthday`, `phonenumber`, `address`, `avt`) VALUES
(2, 5, 10, 'Trịnh Đức Duy', '1998-10-30', '0963646586', 'Thanh Hóa', ''),
(5, 2, 8, 'Phạm Anh Khoa', '2000-10-15', '0955489954', 'Hà Nam', ''),
(6, 1, 10, 'Phạm Viết Hiếu', '1998-09-19', '0326985412', 'Thanh Hóa', 'phamhieu.jpg'),
(11, 0, 10, 'Lê Minh Hải', '1998-06-22', '0369852185', 'Hà Nội', 'minhhai.jpg'),
(12, 0, 10, 'Nguyễn Đức Duy', '1998-10-30', '0384695556', 'Thanh Hóa', ''),
(13, 0, 11, 'Nguyễn Đức Độ ', '1998-09-27', '0967454125', 'Nam Định', 'ducdo.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diemthi`
--
ALTER TABLE `diemthi`
  ADD PRIMARY KEY (`diemthiID`,`sinhvienID`),
  ADD KEY `sinhvienID` (`sinhvienID`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`idGiangvien`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`lopID`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`sinhvienID`),
  ADD KEY `lopID` (`lopID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `diemthi`
--
ALTER TABLE `diemthi`
  MODIFY `diemthiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `idGiangvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  MODIFY `lopID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `sinhvienID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemthi`
--
ALTER TABLE `diemthi`
  ADD CONSTRAINT `diemthi_ibfk_1` FOREIGN KEY (`sinhvienID`) REFERENCES `sinhvien` (`sinhvienID`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`lopID`) REFERENCES `lophoc` (`lopID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

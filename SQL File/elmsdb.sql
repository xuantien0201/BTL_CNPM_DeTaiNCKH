-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 31, 2024 lúc 02:32 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elmsdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin', '2024-12-24 03:18:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_tai`
--

CREATE TABLE `de_tai` (
  `MaDeTai` varchar(50) NOT NULL,
  `TenDeTai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MoTa` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LinhVucNghienCuu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThucDuKien` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `de_tai`
--

INSERT INTO `de_tai` (`MaDeTai`, `TenDeTai`, `MoTa`, `LinhVucNghienCuu`, `NgayBatDau`, `NgayKetThucDuKien`) VALUES
('DT003', 'Phát triển năng lượng tái tạo', 'Nghiên cứu về pin mặt trời thế hệ mới', 'Kỹ thuật năng lượng', '2024-03-01', '2025-03-01'),
('DT004', 'Ứng dụng IoT trong nông nghiệp', 'Xây dựng hệ thống giám sát thông minh cho cây trồng', 'Công nghệ thông tin', '2024-04-01', '2025-04-01'),
('DT005', 'Điều trị ung thư bằng liệu pháp gen', 'Nghiên cứu phương pháp điều trị gen đột phá', 'Y học', '2024-05-01', '2026-05-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_tai_sinh_vien`
--

CREATE TABLE `de_tai_sinh_vien` (
  `id` int(11) NOT NULL,
  `ma_de_tai` varchar(50) NOT NULL,
  `ma_sinh_vien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `de_tai_sinh_vien`
--

INSERT INTO `de_tai_sinh_vien` (`id`, `ma_de_tai`, `ma_sinh_vien`) VALUES
(52, 'DT005', 'MSV01'),
(58, 'DT005', '333'),
(59, 'DT003', 'MSV01'),
(62, 'DT004', 'MSV02'),
(63, 'DT004', 'MSV01'),
(64, 'DT004', 'MSV03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `MaSV` varchar(50) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Lop` varchar(50) NOT NULL,
  `Khoa` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sinh_vien`
--

INSERT INTO `sinh_vien` (`MaSV`, `Hoten`, `Lop`, `Khoa`, `Email`, `Password`) VALUES
('333', '333', '333', '333', '123@gmail.com', '213'),
('MSV01', 'Hoàng Nguyễn', '73DCTT22', 'CNTT', 'hoang@gmail.com', '123'),
('MSV02', 'Linh Trần', '73DCKN21', 'KT', 'linh@gmail.com', '123'),
('MSV03', 'Trần Tùng', 'DCTT33', 'HTTT', 'tung@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(3, 'Accounts', 'Accounts', 'ACCNT01', '2023-09-01 14:50:20'),
(4, 'ADMIN', 'Admin', 'ADMN01', '2023-09-01 14:50:20'),
(6, 'EMPLOYEE01', 'EMPL', '01', '2024-12-23 15:02:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldetai`
--

CREATE TABLE `tbldetai` (
  `MaDeTai` varchar(20) NOT NULL,
  `TenDeTai` varchar(50) NOT NULL,
  `LinhVuc` varchar(50) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `TrangThai` varchar(50) NOT NULL,
  `MoTa` varchar(100) NOT NULL,
  `GiangVien` varchar(20) NOT NULL,
  `SinhVien` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldetai`
--

INSERT INTO `tbldetai` (`MaDeTai`, `TenDeTai`, `LinhVuc`, `NgayBatDau`, `NgayKetThuc`, `TrangThai`, `MoTa`, `GiangVien`, `SinhVien`) VALUES
('002', 'Nghiên cứu chuyển động của tên lửa liên lục địa', 'Khoa học', '2024-11-05', '2025-01-01', 'Hoàn thành', 'Cấu tạo phức tạp và khó đoán', 'CNFA23134sss', 'MSV01'),
('CNTT001', 'Trí thông minh của loài kiến', 'Công nghệ', '2024-12-02', '2024-12-14', 'Tạm dừng', 'bàn về trí thông minh ', 'CNFA23134', 'MSV03'),
('CNTT002', 'd', 'Công nghệ thông tin', '2024-01-02', '2024-01-01', 'Chưa bắt đầu', '', '2', '6'),
('CNTT003', 'oaihf', 'Công nghệ thông tin', '2024-12-14', '2024-12-01', 'Chưa bắt đầu', '', '2', '4,5'),
('CNTT004', 'hádg', 'Công nghệ thông tin', '2024-12-05', '2024-11-30', 'Chưa bắt đầu', 'fafa', '2', '6'),
('DT004', 'Tìm trọ cho sinh viên', 'Công nghệ thông tin', '2024-12-01', '2024-11-22', 'Chưa bắt đầu', '', 'CNFA23134', 'MSV02'),
('KT001', 'Kinh tế số thời kì đổi mới', 'Kinh tế', '2024-12-04', '2024-12-15', 'Chưa bắt đầu', '', '2', 'MSV03'),
('KT005', 'k', 'Kinh tế', '2024-01-19', '2024-01-01', 'Chưa bắt đầu', '', '2', 'MSV03'),
('LS001', 'Phương pháp giữ nước của triều Nguyễn ', 'Lịch sử', '4142-02-01', '1233-04-05', 'Chưa bắt đầu', '', '2', 'MSV03'),
('XHH001', 'b', 'Xã hội học', '2024-01-01', '2024-09-01', 'Chưa bắt đầu', '', '2', '6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, '10805121', 'Rahul', 'Kumar', 'rk1995@test.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 August, 1995', 'Information Technology', 'A 123 XYZ Apartment ', 'New Delhi', 'India', '020103', 1, '2024-09-10 14:56:23'),
(2, '10235612', 'Garima', 'Yadav', 'grama123@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Female', '2 January, 1997', 'Accounts', 'Hno 123 ABC Colony', 'New Delhi', 'India', '7485963210', 1, '2024-09-10 14:56:23'),
(5, '7856214', 'John', 'Doe', 'jhn12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 January, 1995', 'Accounts', 'H no 1', 'Ghaziabad ', 'India', '23232323', 1, '2024-09-10 14:56:23'),
(6, '120', 'tientran', 'rooo', 'eieie@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '5 December, 2024', 'Accounts', 'Ha Noi', 'HA NOI', 'Vi?t Nam', '0431001309', 1, '2024-12-19 09:07:51'),
(7, '123', '123', '123', '123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '5 December, 2024', 'Accounts', 'Ha Noi', 'HA NOI', 'Vi?t Nam', '123', 1, '2024-12-23 14:26:20'),
(8, '1234', '1234', '12341', 'rk1995@admin.com', '202cb962ac59075b964b07152d234b70', 'Male', '5 December, 2024', 'ADMIN', '123', '123', '123', '13', 1, '2024-12-27 09:41:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblgiangvien`
--

CREATE TABLE `tblgiangvien` (
  `magiangvien` varchar(20) NOT NULL,
  `tengiangvien` varchar(50) NOT NULL,
  `khoa_giangvien` varchar(50) NOT NULL,
  `email_giangvien` varchar(100) NOT NULL,
  `mk_giangvien` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblgiangvien`
--

INSERT INTO `tblgiangvien` (`magiangvien`, `tengiangvien`, `khoa_giangvien`, `email_giangvien`, `mk_giangvien`) VALUES
('CNFA23134', 'Nguyễn Mạnh Tùng', 'CNTT', 'tungnguyen1235@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `IsRead` int(1) DEFAULT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(11, 'Casual Leaves', '17/09/2024', '10/09/2024', 'I need leave to visit my home town. ', '2024-09-11 15:06:21', 'Approved', '2024-09-13 20:39:40 ', 1, 1, 1),
(12, 'Casual Leaves', '15/09/2024', '09/09/2024', 'Need casual leaves for some personal work.', '2024-09-12 11:42:40', 'Leave approved', '2024-09-13 20:39:40', 1, 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leaves', 'Casual Leaves', '2024-09-01 14:52:22'),
(2, 'Earned Leaves', 'Earned Leaves', '2024-09-01 14:52:22'),
(3, 'Sick Leaves', 'Sick Leaves', '2024-09-01 14:52:22'),
(4, 'RH (Restricted Leaves)', 'Restricted Leaves', '2024-09-01 14:52:22'),
(5, '12331', '123123', '2024-12-21 15:33:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 'no-image-available.png', '2020-11-26 10:57:04'),
(2, 'John', 'Smith', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 2, '1606978560_avatar.jpg', '2020-12-03 09:26:03'),
(3, 'Tran', 'Tien', 'tien@gmail.com', '202cb962ac59075b964b07152d234b70', 3, '1734666840_bocauu.jpg', '2020-12-03 09:26:42'),
(4, 'George', 'Wilson', 'gwilson@sample.com', 'd40242fb23c45206fadee4e2418f274f', 3, '1606963560_avatar.jpg', '2020-12-03 10:46:41'),
(5, 'Mike', 'Williams', 'mwilliams@sample.com', '3cc93e9a6741d8b40460457139cf8ced', 3, '1606963620_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 10:47:06'),
(6, 'Tiến', 'Xuân', 'tien3@gmail.com', '202cb962ac59075b964b07152d234b70', 3, 'no-image-available.png', '2024-12-22 08:55:50'),
(7, '123', '123', '1231@gmail.com', '202cb962ac59075b964b07152d234b70', 3, 'no-image-available.png', '2024-12-23 09:03:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `de_tai`
--
ALTER TABLE `de_tai`
  ADD PRIMARY KEY (`MaDeTai`);

--
-- Chỉ mục cho bảng `de_tai_sinh_vien`
--
ALTER TABLE `de_tai_sinh_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_de_tai` (`ma_de_tai`),
  ADD KEY `de_tai_sinh_vien_ibfk_2` (`ma_sinh_vien`);

--
-- Chỉ mục cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`MaSV`);

--
-- Chỉ mục cho bảng `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbldetai`
--
ALTER TABLE `tbldetai`
  ADD PRIMARY KEY (`MaDeTai`);

--
-- Chỉ mục cho bảng `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblgiangvien`
--
ALTER TABLE `tblgiangvien`
  ADD PRIMARY KEY (`magiangvien`);

--
-- Chỉ mục cho bảng `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Chỉ mục cho bảng `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `de_tai_sinh_vien`
--
ALTER TABLE `de_tai_sinh_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `de_tai_sinh_vien`
--
ALTER TABLE `de_tai_sinh_vien`
  ADD CONSTRAINT `de_tai_sinh_vien_ibfk_1` FOREIGN KEY (`ma_de_tai`) REFERENCES `de_tai` (`MaDeTai`),
  ADD CONSTRAINT `de_tai_sinh_vien_ibfk_2` FOREIGN KEY (`ma_sinh_vien`) REFERENCES `sinh_vien` (`MaSV`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

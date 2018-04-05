-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 02, 2018 lúc 06:28 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ictu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(20) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_birthday` date DEFAULT NULL,
  `admin_gender` varchar(5) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `password` varchar(65) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adminid`, `admin_name`, `admin_birthday`, `admin_gender`, `provinceid`, `email`, `phone`, `password`, `level`) VALUES
('bomi', 'Jun Bomi', '1993-01-20', 'Nu', 22, 'Bomi1993@gmail.com', 168111111, '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 1),
('nguyenviet', 'Nguyen Van Viet', '1990-05-01', 'Nam', 58, 'vanviet@gmail.com', 1682222222, '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `classid` int(11) NOT NULL,
  `classname` varchar(30) DEFAULT NULL,
  `majorsid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`classid`, `classname`, `majorsid`, `courseid`) VALUES
(1, 'CNTT K14A', 1, 2),
(2, 'CNTT K14B', 1, 2),
(4, 'KTPM K14A', 2, 2),
(5, 'KTPM K1A', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(30) DEFAULT NULL,
  `begins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`courseid`, `coursename`, `begins`) VALUES
(1, 'K1', 2002),
(2, 'K14', 2015),
(3, 'K2', 2003),
(4, 'K3', 2004),
(5, 'K4', 2005),
(6, 'K5', 2006),
(7, 'K6', 2007),
(8, 'K7', 2008),
(9, 'K8', 2009),
(10, 'K9', 2010),
(11, 'K10', 2011),
(12, 'K11', 2012),
(13, 'K13', 2014),
(14, 'K15', 2016),
(15, 'K16', 2017);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faculty`
--

CREATE TABLE `faculty` (
  `facultyid` varchar(20) NOT NULL,
  `facultyname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `faculty`
--

INSERT INTO `faculty` (`facultyid`, `facultyname`) VALUES
('CNTT', 'Công nghệ thông tin'),
('TTDPT', 'Truyền thông đa phương tiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `majors`
--

CREATE TABLE `majors` (
  `majorsid` int(11) NOT NULL,
  `majorsname` varchar(30) DEFAULT NULL,
  `facultyid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `majors`
--

INSERT INTO `majors` (`majorsid`, `majorsname`, `facultyid`) VALUES
(1, 'Công nghệ thông tin', 'CNTT'),
(2, 'Kỹ thuật phần mềm', 'CNTT'),
(4, 'Thiết kế đồ họa', 'TTDPT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parent`
--

CREATE TABLE `parent` (
  `studentid` varchar(20) DEFAULT NULL,
  `parentname` varchar(30) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `parent`
--

INSERT INTO `parent` (`studentid`, `parentname`, `phone`) VALUES
('DTC155D4802010103', 'Phạm Thị Thanh Tân', 985290912),
('DTC155D4802010204', 'Nguyễn Minh A', 984327542);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `profile`
--

CREATE TABLE `profile` (
  `birth_certificate` int(1) DEFAULT NULL,
  `people_id` int(1) DEFAULT NULL,
  `school_profile` int(1) DEFAULT NULL,
  `img` int(1) DEFAULT NULL,
  `health_certificate` int(1) DEFAULT NULL,
  `studentid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `provinceid` int(11) NOT NULL,
  `provincename` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`provinceid`, `provincename`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Đắk Lắk'),
(15, 'Đắk Nông'),
(16, 'Điện Biên'),
(17, 'Đồng Nai'),
(18, 'Đồng Tháp'),
(19, 'Gia Lai'),
(20, 'Hà Giang'),
(21, 'Hà Nam'),
(22, 'Hà Nội'),
(23, 'Hà Tĩnh'),
(24, 'Hải Dương'),
(25, 'Hậu Giang'),
(26, 'Hòa Bình'),
(27, 'Hưng Yên'),
(28, 'Khánh Hòa'),
(29, 'Kiên Giang'),
(30, 'Kon Tum'),
(31, 'Lai Châu'),
(32, 'Lâm Đồng'),
(33, 'Lạng Sơn'),
(34, 'Lào Cai'),
(35, 'Long An'),
(36, 'Nam Định'),
(37, 'Nghệ An'),
(38, 'Ninh Bình'),
(39, 'Ninh Thuận'),
(40, 'Phú Thọ'),
(41, 'Quảng Bình'),
(42, 'Quảng Nam'),
(43, 'Quảng Ngãi'),
(44, 'Quảng Ninh'),
(45, 'Quảng Trị'),
(46, 'Sóc Trăng'),
(47, 'Sơn La'),
(48, 'Tây Ninh'),
(49, 'Thái Bình'),
(50, 'Thái Nguyên'),
(51, 'Thanh Hóa'),
(52, 'Thừa Thiên Huế'),
(53, 'Tiền Giang'),
(54, 'Trà Vinh'),
(55, 'Tuyên Quang'),
(56, 'Vĩnh Long'),
(57, 'Vĩnh Phúc'),
(58, 'Yên Bái'),
(59, 'Phú Yên'),
(60, 'Cần Thơ'),
(61, 'Đà Nẵng'),
(62, 'Hải Phòng'),
(63, 'TP HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `residence`
--

CREATE TABLE `residence` (
  `studentid` varchar(20) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `isdorm` varchar(255) DEFAULT NULL,
  `ismotel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `residence`
--

INSERT INTO `residence` (`studentid`, `provinceid`, `isdorm`, `ismotel`) VALUES
('DTC155D4802010204', 50, NULL, 'Xóm trọ cô Tân'),
('DTC155D4802010103', 50, NULL, 'Tổ 13, phường Tân Thịnh, TPTN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `studentid` varchar(20) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`studentid`, `firstname`, `lastname`, `birthday`, `gender`, `provinceid`, `email`, `phone`, `level`, `classid`) VALUES
('DTC155D4802010103', 'Trần Công ', 'Tùng', '1997-02-12', 'Nam', 50, 'tungtran130@gmail.com', 1684386405, 1, 1),
('DTC155D4802010204', 'Nguyễn Minh', 'Đức', '1997-02-25', 'Nam', 58, 'duc2521997@gmail.com', 1676460699, 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD KEY `fk_provicead` (`provinceid`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`),
  ADD KEY `fk_course` (`courseid`),
  ADD KEY `fk_majors` (`majorsid`);

--
-- Chỉ mục cho bảng `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Chỉ mục cho bảng `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyid`);

--
-- Chỉ mục cho bảng `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`majorsid`),
  ADD KEY `fk_faculty` (`facultyid`);

--
-- Chỉ mục cho bảng `parent`
--
ALTER TABLE `parent`
  ADD KEY `fk_student` (`studentid`);

--
-- Chỉ mục cho bảng `profile`
--
ALTER TABLE `profile`
  ADD KEY `fk_studentfile` (`studentid`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`provinceid`);

--
-- Chỉ mục cho bảng `residence`
--
ALTER TABLE `residence`
  ADD KEY `fk_student1` (`studentid`),
  ADD KEY `fk_province1` (`provinceid`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD KEY `fk_province` (`provinceid`),
  ADD KEY `fk_class` (`classid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `class`
--
ALTER TABLE `class`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `majors`
--
ALTER TABLE `majors`
  MODIFY `majorsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `provinceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_provicead` FOREIGN KEY (`provinceid`) REFERENCES `province` (`provinceid`);

--
-- Các ràng buộc cho bảng `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`),
  ADD CONSTRAINT `fk_majors` FOREIGN KEY (`majorsid`) REFERENCES `majors` (`majorsid`);

--
-- Các ràng buộc cho bảng `majors`
--
ALTER TABLE `majors`
  ADD CONSTRAINT `fk_faculty` FOREIGN KEY (`facultyid`) REFERENCES `faculty` (`facultyid`);

--
-- Các ràng buộc cho bảng `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

--
-- Các ràng buộc cho bảng `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_studentfile` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

--
-- Các ràng buộc cho bảng `residence`
--
ALTER TABLE `residence`
  ADD CONSTRAINT `fk_province1` FOREIGN KEY (`provinceid`) REFERENCES `province` (`provinceid`),
  ADD CONSTRAINT `fk_student1` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_class` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`),
  ADD CONSTRAINT `fk_province` FOREIGN KEY (`provinceid`) REFERENCES `province` (`provinceid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

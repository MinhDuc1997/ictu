-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2018 at 09:25 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ictu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
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
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `admin_name`, `admin_birthday`, `admin_gender`, `provinceid`, `email`, `phone`, `password`, `level`) VALUES
('bomi', 'Jun Bomi', '1993-01-20', 'Nu', 22, 'Bomi1993@gmail.com', 168111111, '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 1),
('nguyenviet', 'Nguyen Van Viet', '1990-05-01', 'Nam', 58, 'vanviet@gmail.com', 1682222222, '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classid` int(11) NOT NULL,
  `classname` varchar(30) DEFAULT NULL,
  `majorsid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classid`, `classname`, `majorsid`, `courseid`) VALUES
(1, 'CNTT K14A', 1, 2),
(2, 'CNTT K14B', 1, 2),
(4, 'KTPM K14A', 2, 2),
(5, 'KTPM K1A', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(30) DEFAULT NULL,
  `begins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `coursename`, `begins`) VALUES
(1, 'K1', 2002),
(2, 'K2', 2003),
(3, 'K3', 2004),
(4, 'K4', 2005),
(5, 'K5', 2006),
(6, 'K6', 2007),
(7, 'K7', 2008),
(8, 'K8', 2009),
(9, 'K9', 2010),
(10, 'K10', 2011),
(11, 'K11', 2012),
(12, 'K12', 2013),
(13, 'K13', 2014),
(14, 'K14', 2015),
(15, 'K15', 2016),
(16, 'K16', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyid` varchar(20) NOT NULL,
  `facultyname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyid`, `facultyname`) VALUES
('ATTT', 'Bộ môn an toàn hệ thống thông tin'),
('CNDT', 'Công nghệ điện tử và truyền thông'),
('CNTDH', 'Công nghệ tự động hóa'),
('CNTT', 'Công nghệ thông tin'),
('HTTTKT', 'Hệ thống thông tin kinh tế'),
('KHCB', 'Khoa học cơ bản'),
('TTDPT', 'Truyền thông đa phương tiện');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `majorsid` int(11) NOT NULL,
  `majorsname` varchar(30) DEFAULT NULL,
  `facultyid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`majorsid`, `majorsname`, `facultyid`) VALUES
(1, 'Công nghệ thông tin', 'CNTT'),
(2, 'Kỹ thuật phần mềm', 'CNTT'),
(4, 'Thiết kế đồ họa', 'TTDPT');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `studentid` varchar(20) DEFAULT NULL,
  `parentname` varchar(30) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`studentid`, `parentname`, `phone`) VALUES
('DTC155D4802010103', 'Phạm Thị Thanh Tân', 985290912),
('DTC155D4802010204', 'Nguyễn Minh A', 984327542);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
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
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `provinceid` int(11) NOT NULL,
  `provincename` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
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
-- Table structure for table `residence`
--

CREATE TABLE `residence` (
  `studentid` varchar(20) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `isdorm` varchar(255) DEFAULT NULL,
  `ismotel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `residence`
--

INSERT INTO `residence` (`studentid`, `provinceid`, `isdorm`, `ismotel`) VALUES
('DTC155D4802010204', 50, NULL, 'Xóm trọ cô Tân'),
('DTC155D4802010103', 50, NULL, 'Tổ 13, phường Tân Thịnh, TPTN'),
('DTC15HD4801030003', 50, 'KTX A10 P10', NULL),
('DTC15HD4802010021', 50, NULL, 'Tổ 13, Xã Quyết Thắng, TPTN'),
('DTC15HD4802010132', 50, 'KTX A1 P1', NULL),
('DTC15HD4802010286', 50, 'KTX A1 P1', NULL),
('DTC15HD4802010408', 50, 'KTX A1 P2', NULL),
('DTC155D3201040008', 50, NULL, 'Tổ 12 Xã Quyết Thắng TPTN'),
('DTC155D4802010001', 50, 'KTX A1 P2', NULL),
('DTC155D4802010002', 50, NULL, 'Tổ 13 Xã Quyết Thắng TPTN'),
('DTC155D4802010003', 50, 'KTX A1 P3', NULL),
('DTC155D4802010004', 50, 'KTX A1 P3', NULL),
('DTC155D4802010055', 50, 'KTX A1 P3', NULL),
('DTC155D4802010056', 50, NULL, 'Tổ 12 Xã Quyết Thắng TPTN'),
('DTC155D4802010077', 50, 'KTX A2 P1', NULL),
('DTC155D4802010575', 50, 'KTX A2 P2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
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
  `classid` int(11) DEFAULT NULL,
  `studying` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `firstname`, `lastname`, `birthday`, `gender`, `provinceid`, `email`, `phone`, `classid`, `studying`) VALUES
('DTC155D3201040008', 'Hà Quang', 'Huy', '1997-06-15', 'Nam', 23, 'DTC155D3201040008@ictu.edu.vn', 948345435, 4, 'yes'),
('DTC155D4802010001', 'Nguyễn Ngọc ', 'Ánh', '1997-05-06', 'Nữ', 22, 'DTC155D4802010001@ictu.edu.vn', 912353845, 1, 'yes'),
('DTC155D4802010002', 'Nguyễn Văn ', 'Trung', '1997-03-24', 'Nam', 40, 'DTC155D4802010002@ictu.edu.vn', 912358345, 1, 'yes'),
('DTC155D4802010003', 'Đặng Việt ', 'Anh', '1997-03-12', 'Nam', 4, 'DTC155D4802010003@ictu.edu.vn', 987439423, 1, 'yes'),
('DTC155D4802010004', 'Nguyễn Tuấn ', 'Anh', '1997-07-29', 'Nam', 62, 'DTC155D4802010004@ictu.edu.vn', 1684357403, 2, 'no'),
('DTC155D4802010055', 'Phạm Thị', 'Loan', '1997-05-19', 'Nữ', 28, 'DTC155D4802010055@ictu.edu.vn', 984759483, 2, 'yes'),
('DTC155D4802010056', 'Vũ Thị Như ', 'Loan', '1997-02-14', 'Nữ', 53, 'DTC155D4802010056@ictu.edu.vn', 948384954, 5, 'yes'),
('DTC155D4802010077', 'Đồng Minh', 'Tâm', '1997-05-17', 'Nam', 60, 'DTC155D4802010077@ictu.edu.vn', 985483432, 1, 'yes'),
('DTC155D4802010103', 'Trần Công ', 'Tùng', '1997-02-12', 'Nam', 50, 'tungtran130@gmail.com', 1684386405, 1, 'yes'),
('DTC155D4802010204', 'Nguyễn Minh', 'Đức', '1997-02-25', 'Nam', 58, 'duc2521997@gmail.com', 1676460699, 4, 'yes'),
('DTC155D4802010575', 'Lê Thị ', 'Loan', '1997-03-11', 'Nữ', 20, 'DTC155D4802010575@ictu.edu.vn', 985738531, 4, 'yes'),
('DTC15HD4801030003', 'Hoàng Tuấn', 'Anh', '1997-03-03', 'Nam', 6, 'DTC15HD4801030003@ictu.edu.vn', 978463243, 4, 'yes'),
('DTC15HD4802010021', 'Đinh Quốc ', 'Chiến', '1997-02-14', 'Nam', 23, 'DTC15HD4802010021@ictu.edu.vn', 978345243, 2, 'yes'),
('DTC15HD4802010132', 'Dương Hữu', 'Long', '1995-08-07', 'Nam', 59, 'DTC15HD4802010132@ictu.edu.vn', 985459653, 4, 'no'),
('DTC15HD4802010286', 'Nguyễn Văn ', 'Hưng', '1997-08-21', 'Nam', 11, 'DTC15HD4802010286@ictu.edu.vn', 985439525, 4, 'yes'),
('DTC15HD4802010408', 'Nguyễn Tiến ', 'Bình', '1997-03-10', 'Nam', 31, 'DTC15HD4802010408@ictu.edu.vn', 987343234, 2, 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD KEY `fk_provicead` (`provinceid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`),
  ADD KEY `fk_course` (`courseid`),
  ADD KEY `fk_majors` (`majorsid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyid`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`majorsid`),
  ADD KEY `fk_faculty` (`facultyid`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD KEY `fk_student` (`studentid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD KEY `fk_studentfile` (`studentid`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`provinceid`);

--
-- Indexes for table `residence`
--
ALTER TABLE `residence`
  ADD UNIQUE KEY `studentid` (`studentid`),
  ADD KEY `fk_student1` (`studentid`),
  ADD KEY `fk_province1` (`provinceid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD KEY `fk_province` (`provinceid`),
  ADD KEY `fk_class` (`classid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `majorsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `provinceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_provicead` FOREIGN KEY (`provinceid`) REFERENCES `province` (`provinceid`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`),
  ADD CONSTRAINT `fk_majors` FOREIGN KEY (`majorsid`) REFERENCES `majors` (`majorsid`);

--
-- Constraints for table `majors`
--
ALTER TABLE `majors`
  ADD CONSTRAINT `fk_faculty` FOREIGN KEY (`facultyid`) REFERENCES `faculty` (`facultyid`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_studentfile` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

--
-- Constraints for table `residence`
--
ALTER TABLE `residence`
  ADD CONSTRAINT `fk_province1` FOREIGN KEY (`provinceid`) REFERENCES `province` (`provinceid`),
  ADD CONSTRAINT `fk_student1` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_class` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`),
  ADD CONSTRAINT `fk_province` FOREIGN KEY (`provinceid`) REFERENCES `province` (`provinceid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

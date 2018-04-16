-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2018 at 03:32 PM
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
(5, 'KTPM K1A', 2, 1),
(6, 'CNTT K1A', 1, 1),
(7, 'CNTT K1B', 1, 1),
(8, 'CNTT K1C', 1, 1),
(9, 'CNTT K2A', 1, 2),
(10, 'CNTT K2B', 1, 2),
(11, 'CNTT K2C', 1, 2),
(12, 'CNTT K3A', 1, 3),
(13, 'CNTT K3B', 1, 3),
(14, 'CNTT K3C', 1, 3),
(15, 'CNTT K4A', 1, 4),
(16, 'CNTT K4B', 1, 4),
(17, 'CNTT K4C', 1, 4),
(18, 'CNTT K5A', 1, 5),
(19, 'CNTT K5B', 1, 5),
(20, 'CNTT K5C', 1, 5),
(21, 'CNTT K6A', 1, 6),
(22, 'CNTT K6B', 1, 6),
(23, 'CNTT K6C', 1, 6),
(24, 'CNTT K7A', 1, 7),
(25, 'CNTT K7B', 1, 7),
(26, 'CNTT K7C', 1, 7),
(27, 'CNTT K8A', 1, 8),
(28, 'CNTT K8B', 1, 8),
(29, 'CNTT K8C', 1, 8),
(30, 'CNTT K9A', 1, 9),
(31, 'CNTT K9B', 1, 9),
(32, 'CNTT K9C', 1, 9),
(33, 'CNTT K10A', 1, 10),
(34, 'CNTT K10B', 1, 10),
(35, 'CNTT K10C', 1, 10),
(36, 'CNTT K11A', 1, 11),
(37, 'CNTT K11B', 1, 11),
(38, 'CNTT K11C', 1, 11),
(39, 'CNTT K12A', 1, 12),
(40, 'CNTT K12B', 1, 12),
(41, 'CNTT K12C', 1, 12),
(42, 'CNTT K13A', 1, 13),
(43, 'CNTT K13B', 1, 13),
(44, 'CNTT K13C', 1, 13),
(45, 'CNTT K14C', 1, 14),
(46, 'CNTT K15A', 1, 15),
(47, 'CNTT K15B', 1, 15),
(48, 'CNTT K15C', 1, 15),
(49, 'CNTT K16A', 1, 16),
(50, 'CNTT K16B', 1, 16),
(51, 'CNTT K16C', 1, 16),
(52, 'KTPM K1B', 2, 1),
(53, 'KTPM K1C', 2, 1),
(54, 'KTPM K2A', 2, 2),
(55, 'KTPM K2B', 2, 2),
(57, 'KTPM K2C', 2, 2),
(58, 'KTPM K3A', 2, 3),
(59, 'KTPM K3B', 2, 3),
(60, 'KTPM K3C', 2, 3),
(61, 'KTPM K4A', 2, 4),
(62, 'KTPM K4B', 2, 4),
(63, 'KTPM K4C', 2, 4),
(64, 'KTPM K5A', 2, 5),
(65, 'KTPM K5B', 2, 5),
(66, 'KTPM K5C', 2, 5),
(67, 'KTPM K6A', 2, 6),
(68, 'KTPM K6B', 2, 6),
(69, 'KTPM K6C', 2, 6),
(70, 'KTPM K7A', 2, 7),
(71, 'KTPM K7B', 2, 7),
(72, 'KTPM K7C', 2, 7),
(73, 'KTPM K8A', 2, 8),
(74, 'KTPM K8B', 2, 8),
(75, 'KTPM K8C', 2, 8),
(76, 'KTPM K9A', 2, 9),
(77, 'KTPM K9B', 2, 9),
(78, 'KTPM K9C', 2, 9),
(79, 'KTPM K10A', 2, 10),
(80, 'KTPM K10B', 2, 10),
(81, 'KTPM K10C', 2, 10),
(82, 'KTPM K11A', 2, 11),
(83, 'KTPM K11B', 2, 11),
(84, 'KTPM K11C', 2, 11),
(85, 'KTPM K12A', 2, 12),
(86, 'KTPM K12B', 2, 12),
(87, 'KTPM K12C', 2, 12),
(88, 'KTPM K13A', 2, 13),
(89, 'KTPM K13B', 2, 13),
(90, 'KTPM K13C', 2, 13),
(91, 'KTPM K14B', 2, 14),
(92, 'KTPM K14C', 2, 14),
(93, 'KTPM K15A', 2, 15),
(94, 'KTPM K15B', 2, 15),
(95, 'KTPM K15C', 2, 15),
(96, 'KTPM K16A', 2, 16),
(97, 'KTPM K16B', 2, 16),
(98, 'KTPM K16C', 2, 16),
(99, 'KHMT K1A', 7, 1),
(147, 'KHMT K1B', 7, 1),
(194, 'KHMT K1C', 7, 1),
(195, 'KHMT K2A', 7, 2),
(196, 'KHMT K2B', 7, 2),
(197, 'KHMT K2C', 7, 2),
(198, 'KHMT K3A', 7, 3),
(199, 'KHMT K3B', 7, 3),
(200, 'KHMT K3C', 7, 3),
(201, 'KHMT K4A', 7, 4),
(202, 'KHMT K4B', 7, 4),
(203, 'KHMT K4C', 7, 4),
(204, 'KHMT K5A', 7, 5),
(205, 'KHMT K5B', 7, 5),
(206, 'KHMT K5C', 7, 5),
(207, 'KHMT K6A', 7, 6),
(208, 'KHMT K6B', 7, 6),
(209, 'KHMT K6C', 7, 6),
(210, 'KHMT K7A', 7, 7),
(211, 'KHMT K7B', 7, 7),
(212, 'KHMT K7C', 7, 7),
(213, 'KHMT K8A', 7, 8),
(214, 'KHMT K8B', 7, 8),
(215, 'KHMT K8C', 7, 8),
(216, 'KHMT K9A', 7, 9),
(217, 'KHMT K9B', 7, 9),
(218, 'KHMT K9C', 7, 9),
(219, 'KHMT K10A', 7, 10),
(220, 'KHMT K10B', 7, 10),
(221, 'KHMT K10C', 7, 10),
(222, 'KHMT K11A', 7, 11),
(223, 'KHMT K11B', 7, 11),
(224, 'KHMT K11C', 7, 11),
(225, 'KHMT K12A', 7, 12),
(226, 'KHMT K12B', 7, 12),
(227, 'KHMT K12C', 7, 12),
(228, 'KHMT K13A', 7, 13),
(229, 'KHMT K13B', 7, 13),
(230, 'KHMT K13C', 7, 13),
(231, 'KHMT K14A', 7, 14),
(232, 'KHMT K14B', 7, 14),
(233, 'KHMT K14C', 7, 14),
(234, 'KHMT K15A', 7, 15),
(235, 'KHMT K15B', 7, 15),
(236, 'KHMT K15C', 7, 15),
(237, 'KHMT K16A', 7, 16),
(238, 'KHMT K16B', 7, 16),
(239, 'KHMT K16C', 7, 16),
(240, 'TKDH K1B', 4, 1),
(241, 'TKDH K1C', 4, 1),
(242, 'TKDH K2A', 4, 2),
(243, 'TKDH K2B', 4, 2),
(244, 'TKDH K2C', 4, 2),
(245, 'TKDH K3A', 4, 3),
(246, 'TKDH K3B', 4, 3),
(247, 'TKDH K3C', 4, 3),
(248, 'TKDH K4A', 4, 4),
(249, 'TKDH K4B', 4, 4),
(250, 'TKDH K4C', 4, 4),
(251, 'TKDH K5A', 4, 5),
(252, 'TKDH K5B', 4, 5),
(253, 'TKDH K5C', 4, 5),
(254, 'TKDH K6A', 4, 6),
(255, 'TKDH K6B', 4, 6),
(256, 'TKDH K6C', 4, 6),
(257, 'TKDH K7A', 4, 7),
(258, 'TKDH K7B', 4, 7),
(259, 'TKDH K7C', 4, 7),
(260, 'TKDH K8A', 4, 8),
(261, 'TKDH K8B', 4, 8),
(262, 'TKDH K8C', 4, 8),
(263, 'TKDH K9A', 4, 9),
(264, 'TKDH K9B', 4, 9),
(265, 'TKDH K9C', 4, 9),
(266, 'TKDH K10A', 4, 10),
(267, 'TKDH K10B', 4, 10),
(268, 'TKDH K10C', 4, 10),
(269, 'TKDH K11A', 4, 11),
(270, 'TKDH K11B', 4, 11),
(271, 'TKDH K11C', 4, 11),
(272, 'TKDH K12A', 4, 12),
(273, 'TKDH K12B', 4, 12),
(274, 'TKDH K12C', 4, 12),
(275, 'TKDH K13A', 4, 13),
(276, 'TKDH K13B', 4, 13),
(277, 'TKDH K13C', 4, 13),
(278, 'TKDH K14A', 4, 14),
(279, 'TKDH K14B', 4, 14),
(280, 'TKDH K14C', 4, 14),
(281, 'TKDH K15A', 4, 15),
(282, 'TKDH K15B', 4, 15),
(283, 'TKDH K15C', 4, 15),
(284, 'TKDH K16A', 4, 16),
(285, 'TKDH K16B', 4, 16),
(286, 'TKDH K16C', 4, 16),
(287, 'HTTT K1B', 5, 1),
(288, 'HTTT K1C', 5, 1),
(289, 'HTTT K2A', 5, 2),
(290, 'HTTT K2B', 5, 2),
(291, 'HTTT K2C', 5, 2),
(292, 'HTTT K3A', 5, 3),
(293, 'HTTT K3B', 5, 3),
(294, 'HTTT K3C', 5, 3),
(295, 'HTTT K4A', 5, 4),
(296, 'HTTT K4B', 5, 4),
(297, 'HTTT K4C', 5, 4),
(298, 'HTTT K5A', 5, 5),
(299, 'HTTT K5B', 5, 5),
(300, 'HTTT K5C', 5, 5),
(301, 'HTTT K6A', 5, 6),
(302, 'HTTT K6B', 5, 6),
(303, 'HTTT K6C', 5, 6),
(304, 'HTTT K7A', 5, 7),
(305, 'HTTT K7B', 5, 7),
(306, 'HTTT K7C', 5, 7),
(307, 'HTTT K8A', 5, 8),
(308, 'HTTT K8B', 5, 8),
(309, 'HTTT K8C', 5, 8),
(310, 'HTTT K9A', 5, 9),
(311, 'HTTT K9B', 5, 9),
(312, 'HTTT K9C', 5, 9),
(313, 'HTTT K10A', 5, 10),
(314, 'HTTT K10B', 5, 10),
(315, 'HTTT K10C', 5, 10),
(316, 'HTTT K11A', 5, 11),
(317, 'HTTT K11B', 5, 11),
(318, 'HTTT K11C', 5, 11),
(319, 'HTTT K12A', 5, 12),
(320, 'HTTT K12B', 5, 12),
(321, 'HTTT K12C', 5, 12),
(322, 'HTTT K13A', 5, 13),
(323, 'HTTT K13B', 5, 13),
(324, 'HTTT K13C', 5, 13),
(325, 'HTTT K14A', 5, 14),
(326, 'HTTT K14B', 5, 14),
(327, 'HTTT K14C', 5, 14),
(328, 'HTTT K15A', 5, 15),
(329, 'HTTT K15B', 5, 15),
(330, 'HTTT K15C', 5, 15),
(331, 'HTTT K16A', 5, 16),
(332, 'HTTT K16B', 5, 16),
(333, 'HTTT K16C', 5, 16),
(334, 'MTT K1B', 6, 1),
(335, 'MTT K1C', 6, 1),
(336, 'MTT K2A', 6, 2),
(337, 'MTT K2B', 6, 2),
(338, 'MTT K2C', 6, 2),
(339, 'MTT K3A', 6, 3),
(340, 'MTT K3B', 6, 3),
(341, 'MTT K3C', 6, 3),
(342, 'MTT K4A', 6, 4),
(343, 'MTT K4B', 6, 4),
(344, 'MTT K4C', 6, 4),
(345, 'MTT K5A', 6, 5),
(346, 'MTT K5B', 6, 5),
(347, 'MTT K5C', 6, 5),
(348, 'MTT K6A', 6, 6),
(349, 'MTT K6B', 6, 6),
(350, 'MTT K6C', 6, 6),
(351, 'MTT K7A', 6, 7),
(352, 'MTT K7B', 6, 7),
(353, 'MTT K7C', 6, 7),
(354, 'MTT K8A', 6, 8),
(355, 'MTT K8B', 6, 8),
(356, 'MTT K8C', 6, 8),
(357, 'MTT K9A', 6, 9),
(358, 'MTT K9B', 6, 9),
(359, 'MTT K9C', 6, 9),
(360, 'MTT K10A', 6, 10),
(361, 'MTT K10B', 6, 10),
(362, 'MTT K10C', 6, 10),
(363, 'MTT K11A', 6, 11),
(364, 'MTT K11B', 6, 11),
(365, 'MTT K11C', 6, 11),
(366, 'MTT K12A', 6, 12),
(367, 'MTT K12B', 6, 12),
(368, 'MTT K12C', 6, 12),
(369, 'MTT K13A', 6, 13),
(370, 'MTT K13B', 6, 13),
(371, 'MTT K13C', 6, 13),
(372, 'MTT K14A', 6, 14),
(373, 'MTT K14B', 6, 14),
(374, 'MTT K14C', 6, 14),
(375, 'MTT K15A', 6, 15),
(376, 'MTT K15B', 6, 15),
(377, 'MTT K15C', 6, 15),
(378, 'MTT K16A', 6, 16),
(379, 'MTT K16B', 6, 16),
(380, 'MTT K16C', 6, 16),
(381, 'CNVT K1B', 9, 1),
(382, 'CNVT K1C', 9, 1),
(383, 'CNVT K2A', 9, 2),
(384, 'CNVT K2B', 9, 2),
(385, 'CNVT K2C', 9, 2),
(386, 'CNVT K3A', 9, 3),
(387, 'CNVT K3B', 9, 3),
(388, 'CNVT K3C', 9, 3),
(389, 'CNVT K4A', 9, 4),
(390, 'CNVT K4B', 9, 4),
(391, 'CNVT K4C', 9, 4),
(392, 'CNVT K5A', 9, 5),
(393, 'CNVT K5B', 9, 5),
(394, 'CNVT K5C', 9, 5),
(395, 'CNVT K6A', 9, 6),
(396, 'CNVT K6B', 9, 6),
(397, 'CNVT K6C', 9, 6),
(398, 'CNVT K7A', 9, 7),
(399, 'CNVT K7B', 9, 7),
(400, 'CNVT K7C', 9, 7),
(401, 'CNVT K8A', 9, 8),
(402, 'CNVT K8B', 9, 8),
(403, 'CNVT K8C', 9, 8),
(404, 'CNVT K9A', 9, 9),
(405, 'CNVT K9B', 9, 9),
(406, 'CNVT K9C', 9, 9),
(407, 'CNVT K10A', 9, 10),
(408, 'CNVT K10B', 9, 10),
(409, 'CNVT K10C', 9, 10),
(410, 'CNVT K11A', 9, 11),
(411, 'CNVT K11B', 9, 11),
(412, 'CNVT K11C', 9, 11),
(413, 'CNVT K12A', 9, 12),
(414, 'CNVT K12B', 9, 12),
(415, 'CNVT K12C', 9, 12),
(416, 'CNVT K13A', 9, 13),
(417, 'CNVT K13B', 9, 13),
(418, 'CNVT K13C', 9, 13),
(419, 'CNVT K14A', 9, 14),
(420, 'CNVT K14B', 9, 14),
(421, 'CNVT K14C', 9, 14),
(422, 'CNVT K15A', 9, 15),
(423, 'CNVT K15B', 9, 15),
(424, 'CNVT K15C', 9, 15),
(425, 'CNVT K16A', 9, 16),
(426, 'CNVT K16B', 9, 16),
(427, 'CNVT K16C', 9, 16),
(428, 'CNDT K1B', 10, 1),
(429, 'CNDT K1C', 10, 1),
(430, 'CNDT K2A', 10, 2),
(431, 'CNDT K2B', 10, 2),
(432, 'CNDT K2C', 10, 2),
(433, 'CNDT K3A', 10, 3),
(434, 'CNDT K3B', 10, 3),
(435, 'CNDT K3C', 10, 3),
(436, 'CNDT K4A', 10, 4),
(437, 'CNDT K4B', 10, 4),
(438, 'CNDT K4C', 10, 4),
(439, 'CNDT K5A', 10, 5),
(440, 'CNDT K5B', 10, 5),
(441, 'CNDT K5C', 10, 5),
(442, 'CNDT K6A', 10, 6),
(443, 'CNDT K6B', 10, 6),
(444, 'CNDT K6C', 10, 6),
(445, 'CNDT K7A', 10, 7),
(446, 'CNDT K7B', 10, 7),
(447, 'CNDT K7C', 10, 7),
(448, 'CNDT K8A', 10, 8),
(449, 'CNDT K8B', 10, 8),
(450, 'CNDT K8C', 10, 8),
(451, 'CNDT K9A', 10, 9),
(452, 'CNDT K9B', 10, 9),
(453, 'CNDT K9C', 10, 9),
(454, 'CNDT K10A', 10, 10),
(455, 'CNDT K10B', 10, 10),
(456, 'CNDT K10C', 10, 10),
(457, 'CNDT K11A', 10, 11),
(458, 'CNDT K11B', 10, 11),
(459, 'CNDT K11C', 10, 11),
(460, 'CNDT K12A', 10, 12),
(461, 'CNDT K12B', 10, 12),
(462, 'CNDT K12C', 10, 12),
(463, 'CNDT K13A', 10, 13),
(464, 'CNDT K13B', 10, 13),
(465, 'CNDT K13C', 10, 13),
(466, 'CNDT K14A', 10, 14),
(467, 'CNDT K14B', 10, 14),
(468, 'CNDT K14C', 10, 14),
(469, 'CNDT K15A', 10, 15),
(470, 'CNDT K15B', 10, 15),
(471, 'CNDT K15C', 10, 15),
(472, 'CNDT K16A', 10, 16),
(473, 'CNDT K16B', 10, 16),
(474, 'CNDT K16C', 10, 16);

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
(4, 'Thiết kế đồ họa', 'TTDPT'),
(5, 'Hệ thống thông tin', 'CNTT'),
(6, 'Mạng và truyền thông', 'CNTT'),
(7, 'Khoa học máy tính', 'CNTT'),
(9, 'Công nghệ viễn thông', 'CNDT'),
(10, 'Công nghệ điện tử', 'CNDT'),
(11, 'Công nghệ kỹ thuật máy tính', 'CNDT'),
(12, 'Tin học viễn thông', 'CNDT'),
(13, 'Kỹ thuật y sinh', 'CNDT'),
(15, 'Kĩ thuật điện điện tử', 'CNTDH'),
(16, 'Công nghệ thiết bị tự động hóa', 'CNTDH'),
(17, 'Đo lường và điều khiển', 'CNTDH'),
(18, 'Robot và công nghệ oto', 'CNTDH'),
(19, 'Tin học kinh tế', 'HTTTKT'),
(20, 'Tin học tài chính', 'HTTTKT'),
(21, 'Thương mại điện tử', 'HTTTKT'),
(22, 'Quản trị văn phòng', 'HTTTKT'),
(23, 'Công nghệ truyền thông', 'TTDPT');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `studentid` varchar(20) DEFAULT NULL,
  `parentname` varchar(30) DEFAULT NULL,
  `parentphone` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`studentid`, `parentname`, `parentphone`) VALUES
('DTC15HD4801030003', 'Nguyễn Thị A', 948374954),
('DTC15HD4802010021', 'Nguyễn Văn B', 984753421),
('DTC15HD4802010132', 'Nguyễn Văn C', 985748543),
('DTC15HD4802010286', 'Nguyễn Thị B', 948375843),
('DTC15HD4802010408', 'Nguyễn Thị C', 958493845),
('DTC155D3201040008', 'Tran van GG', 1987),
('DTC155D4802010001', 'Nguyễn Thị D', 984958495),
('DTC155D4802010002', 'Trần Văn A', 948473495),
('DTC155D4802010003', 'Trần Văn B', 984738453),
('DTC155D4802010004', 'Hacker IS', 1987),
('DTC155D4802010055', 'Nguyễn Văn C', 984737432),
('DTC155D4802010056', 'Trần Thị C', 948374854),
('DTC155D4802010077', 'Nguyễn Văn E', 948384934),
('DTC155D4802010575', 'Phạm Văn A', 94873948),
('DTC145D4802010037', 'Đỗ Đăng Hải', 985382914),
('DTC155D4802010022', 'Nguyễn Văn FF', 1212122),
('DTC145D4802010038', 'Đỗ Đăng Hải', 985382914),
('DTC155D4802010020', 'Nguyễn Văn Minh', 1632121212),
('DTC155D4802010021', 'Nguyễn Minh A', 141151530),
('DTC155D4802010103', 'Phạm Thị Thanh Tân', 13545615),
('DTC155D4802015555', 'Nguyễn Thị A', 1645155626),
('DTC155D3201040044', 'Nguyễn Văn V', 168165151),
('DTC155D4802010498', 'Nguyễn Văn Cảnh', 1674544444),
('DTC155D4802063584', 'Nguyễn Minh D', 1632121128),
('DTC155D4802020125', 'Nguyễn Minh E', 163211444),
('DTC155D4802010412', 'Nguyễn Minh A', 1676464125);

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
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `residence`
--

INSERT INTO `residence` (`studentid`, `provinceid`, `address`) VALUES
('DTC15HD4801030003', 50, 'KTX A10 P10'),
('DTC15HD4802010021', 50, 'Tổ 13, Xã Quyết Thắng, TPTN'),
('DTC15HD4802010132', 50, 'KTX A1 P1'),
('DTC15HD4802010286', 50, 'KTX A1 P1'),
('DTC15HD4802010408', 50, 'KTX A1 P2'),
('DTC155D3201040008', 59, 'Quất lâm Hà Nội'),
('DTC155D4802010001', 50, 'KTX A1 P2'),
('DTC155D4802010002', 50, 'Tổ 13 Xã Quyết Thắng TPTN'),
('DTC155D4802010003', 50, 'KTX A1 P3'),
('DTC155D4802010004', 59, 'Quất lâm Hà Nội'),
('DTC155D4802010055', 50, 'KTX A1 P3'),
('DTC155D4802010056', 50, 'Tổ 12 Xã Quyết Thắng TPTN'),
('DTC155D4802010077', 50, 'KTX A2 P1'),
('DTC155D4802010575', 50, 'KTX A2 P2'),
('DTC145D4802010037', 50, 'Xóm trọ Thanh Phượng'),
('DTC155D4802010022', 1, 'KTX A9 P202'),
('DTC145D4802010038', 50, 'Xóm trọ Thanh Phượng'),
('DTC155D4802010020', 58, 'Xóm trọ cô Tân'),
('DTC155D4802010021', 34, 'Xóm trọ anh Hoàng'),
('DTC155D4802010103', 50, 'Tổ 13, phường Tân Thịnh, TPTN'),
('DTC155D4802015555', 21, 'KTX A7 P201'),
('DTC155D3201040044', 1, 'KTX A7 P201'),
('DTC155D4802010498', 34, 'KTX A9 P202'),
('DTC155D4802063584', 4, 'Xóm trọ Thanh Phượng'),
('DTC155D4802020125', 40, 'Xóm trọ Thanh Phượng'),
('DTC155D4802010412', 4, 'Xóm trọ anh Hoàng');

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
('DTC145D4802010037', 'Đỗ Đăng', 'Thảo', '1996-04-28', 'Nữ', 50, 'DTC145D4802010037@ictu.edu.vn', 985948347, 42, 'yes'),
('DTC145D4802010038', 'Đỗ Đăng', 'Mai', '1996-05-26', 'Nữ', 50, 'DTC145D4802010038@ictu.edu.vn', 985948347, 42, 'yes'),
('DTC155D3201040008', 'Huy', 'Hà Quang', '1998-02-15', 'Nam', 59, 'huy@gmail.com', 1133, 1, 'yes'),
('DTC155D3201040044', 'Nguyễn Minh', 'Hằng', '1997-07-24', 'Nữ', 1, 'DTC155D3201040044', 1674542600, 45, 'yes'),
('DTC155D4802010001', 'Nguyễn Ngọc', 'Ánh', '1997-05-06', 'Nữ', 22, 'DTC155D4802010001@ictu.edu.vn', 912353845, 1, 'yes'),
('DTC155D4802010002', 'Nguyễn Văn ', 'Trung', '1997-03-24', 'Nam', 40, 'DTC155D4802010002@ictu.edu.vn', 912358345, 1, 'yes'),
('DTC155D4802010003', 'Đặng Việt ', 'Anh', '1997-03-12', 'Nam', 4, 'DTC155D4802010003@ictu.edu.vn', 987439423, 1, 'yes'),
('DTC155D4802010004', 'Huyy', 'Hà Quang', '1998-02-13', 'Nam', 59, 'huy@gmail.com', 113, 1, 'yes'),
('DTC155D4802010020', 'Nguyễn Minh', 'Đức', '1997-02-25', 'Nam', 58, 'DTC155D4802010020@gmail.com', 1676460699, 45, 'yes'),
('DTC155D4802010021', 'Nguyễn Đăng', 'Hải', '1997-03-05', 'Nữ', 34, 'DTC155D4802010021@gmail.com', 1625645455, 45, 'yes'),
('DTC155D4802010022', 'Nguyễn Thị', 'Quỳnh', '1997-02-16', 'Nữ', 1, 'DTC155D4802010022@gmail.com', 1674542633, 45, 'yes'),
('DTC155D4802010055', 'Phạm Thị', 'Loan', '1997-05-19', 'Nữ', 28, 'DTC155D4802010055@ictu.edu.vn', 984759483, 2, 'yes'),
('DTC155D4802010056', 'Vũ Thị Như ', 'Loan', '1997-02-14', 'Nữ', 53, 'DTC155D4802010056@ictu.edu.vn', 948384954, 5, 'yes'),
('DTC155D4802010077', 'Đồng Minh', 'Tâm', '1997-05-17', 'Nam', 60, 'DTC155D4802010077@ictu.edu.vn', 985483432, 1, 'yes'),
('DTC155D4802010103', 'Trần Công', 'Tùng', '1997-02-12', 'Nam', 50, 'tungtran130@gmail.com', 1684386405, 45, 'yes'),
('DTC155D4802010412', 'Trần Lê', 'Huy', '1996-04-21', 'Nam', 4, 'DTC155D4802010412', 1651652455, 45, 'yes'),
('DTC155D4802010498', 'Nguyễn Minh', 'Hiếu', '1995-08-05', 'Nam', 34, 'DTC155D4802010498', 1674542402, 45, 'yes'),
('DTC155D4802010575', 'Lê Thị ', 'Loan', '1997-03-11', 'Nữ', 20, 'DTC155D4802010575@ictu.edu.vn', 985738531, 4, 'yes'),
('DTC155D4802015555', 'Nguyễn Ngọc ', 'Huệ', '1997-07-16', 'Nữ', 21, 'DTC155D4802015555@gmail.com', 1685452111, 45, 'yes'),
('DTC155D4802020125', 'Nguyễn Thị Thu', 'Thảo', '1997-01-25', 'Nữ', 40, 'DTC155D4802020125', 1625640412, 45, 'yes'),
('DTC155D4802063584', 'Nguyễn Thị', 'Thảo', '1997-08-25', 'Nữ', 4, 'DTC155D4802063584', 1625640123, 45, 'yes'),
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
  ADD UNIQUE KEY `studentid` (`studentid`),
  ADD KEY `fk_student` (`studentid`);

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
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `majorsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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

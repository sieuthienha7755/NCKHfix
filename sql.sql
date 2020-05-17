-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 20, 2020 lúc 10:47 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qratt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admininfo`
--

CREATE TABLE `admininfo` (
  `id` int(2) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admininfo`
--

INSERT INTO `admininfo` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$CUAhT8S7EmpJVVt7kN.O7OxKEHCA7S7HdraMy/6/wiZV6Y8LM0XXi'),
(3, 'thang', '$2y$12$OladVM1hSf9BRKagMi0pKOz1eIkhj3jNW6q9kFMgxJnnk4hz2EoNS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classinfo`
--

CREATE TABLE `classinfo` (
  `classid` int(100) NOT NULL,
  `courseid` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `division` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `classinfo`
--

INSERT INTO `classinfo` (`classid`, `courseid`, `year`, `division`) VALUES
(5, '7', 'nam1', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courseinfo`
--

CREATE TABLE `courseinfo` (
  `courseid` tinyint(4) NOT NULL,
  `coursename` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `courseinfo`
--

INSERT INTO `courseinfo` (`courseid`, `coursename`) VALUES
(7, 'k60');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logincontrol`
--

CREATE TABLE `logincontrol` (
  `id` int(11) NOT NULL,
  `unixtime` int(15) NOT NULL,
  `username` text NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nam1k60-a`
--

CREATE TABLE `nam1k60-a` (
  `attid` int(5) NOT NULL,
  `date` date DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `subid` int(3) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `r1111` tinyint(1) NOT NULL DEFAULT 0,
  `c1111` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nam1k60-a`
--

INSERT INTO `nam1k60-a` (`attid`, `date`, `time`, `subid`, `status`, `r1111`, `c1111`) VALUES
(1, '2020-04-20', '2020-04-19 18:54:17', 9, 1, 0, NULL),
(2, '2020-04-20', '2020-04-19 19:14:09', 9, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nam1k60-a-multi`
--

CREATE TABLE `nam1k60-a-multi` (
  `id` int(3) UNSIGNED NOT NULL,
  `sid` int(3) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user-agent` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `studentinfo`
--

CREATE TABLE `studentinfo` (
  `id` int(11) NOT NULL,
  `rollno` smallint(6) NOT NULL,
  `name` tinytext NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `classid` smallint(6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `studentinfo`
--

INSERT INTO `studentinfo` (`id`, `rollno`, `name`, `username`, `password`, `email`, `classid`, `status`) VALUES
(1521050102, 1111, 'nguyen thang', 'crthang', '$2y$10$CGYibAXJ/eH2Ns3qrnBt8e1Cyws0.rEok4B9PZTJDz8HTRwnVVfMi', '', 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjectinfo`
--

CREATE TABLE `subjectinfo` (
  `subjectid` int(100) NOT NULL,
  `subname` varchar(100) NOT NULL,
  `classid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `subjectinfo`
--

INSERT INTO `subjectinfo` (`subjectid`, `subname`, `classid`) VALUES
(9, 'java', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sybscit-b`
--

CREATE TABLE `sybscit-b` (
  `attid` int(5) NOT NULL,
  `date` date DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `subid` int(3) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacherinfo`
--

CREATE TABLE `teacherinfo` (
  `tid` int(50) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rights` char(2) NOT NULL DEFAULT 'T',
  `sub1` int(100) DEFAULT NULL,
  `sub2` int(100) DEFAULT NULL,
  `sub3` int(100) DEFAULT NULL,
  `sub4` int(100) DEFAULT NULL,
  `sub5` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teacherinfo`
--

INSERT INTO `teacherinfo` (`tid`, `name`, `username`, `password`, `rights`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`) VALUES
(5, 'le hong anh', 'honganh', '$2y$10$YQdATwhLhSjHaMHkDq4ku.9yPow3rrRipQkY3HSCo7968vVxkmMmi', 't', 9, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `classinfo`
--
ALTER TABLE `classinfo`
  ADD PRIMARY KEY (`classid`),
  ADD UNIQUE KEY `courseid` (`courseid`,`year`,`division`);

--
-- Chỉ mục cho bảng `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD PRIMARY KEY (`courseid`),
  ADD UNIQUE KEY `coursename` (`coursename`);

--
-- Chỉ mục cho bảng `logincontrol`
--
ALTER TABLE `logincontrol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `nam1k60-a`
--
ALTER TABLE `nam1k60-a`
  ADD PRIMARY KEY (`attid`);

--
-- Chỉ mục cho bảng `nam1k60-a-multi`
--
ALTER TABLE `nam1k60-a-multi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sid` (`sid`);

--
-- Chỉ mục cho bảng `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`(64));

--
-- Chỉ mục cho bảng `subjectinfo`
--
ALTER TABLE `subjectinfo`
  ADD PRIMARY KEY (`subjectid`);

--
-- Chỉ mục cho bảng `sybscit-b`
--
ALTER TABLE `sybscit-b`
  ADD PRIMARY KEY (`attid`);

--
-- Chỉ mục cho bảng `teacherinfo`
--
ALTER TABLE `teacherinfo`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `classinfo`
--
ALTER TABLE `classinfo`
  MODIFY `classid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `courseinfo`
--
ALTER TABLE `courseinfo`
  MODIFY `courseid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `logincontrol`
--
ALTER TABLE `logincontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `nam1k60-a`
--
ALTER TABLE `nam1k60-a`
  MODIFY `attid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nam1k60-a-multi`
--
ALTER TABLE `nam1k60-a-multi`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subjectinfo`
--
ALTER TABLE `subjectinfo`
  MODIFY `subjectid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sybscit-b`
--
ALTER TABLE `sybscit-b`
  MODIFY `attid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teacherinfo`
--
ALTER TABLE `teacherinfo`
  MODIFY `tid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 21, 2021 lúc 09:54 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `job`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `application_master`
--

CREATE TABLE `application_master` (
  `ApplicationId` int(11) NOT NULL,
  `JobSeekId` int(11) NOT NULL,
  `JobId` int(11) NOT NULL,
  `Status` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `application_master`
--

INSERT INTO `application_master` (`ApplicationId`, `JobSeekId`, `JobId`, `Status`, `Description`) VALUES
(6, 5, 1, 'Apply', 'No Message'),
(7, 3, 1, 'Apply', 'No Message');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employer_reg`
--

CREATE TABLE `employer_reg` (
  `EmployerId` int(11) NOT NULL,
  `CompanyName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ContactPerson` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `City` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Area_Work` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `UserName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Question` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Answer` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `employer_reg`
--

INSERT INTO `employer_reg` (`EmployerId`, `CompanyName`, `ContactPerson`, `Address`, `City`, `Email`, `Mobile`, `Area_Work`, `Status`, `UserName`, `Password`, `Question`, `Answer`) VALUES
(2, 'FPT Sofware', 'Chu Thị Thanh Hà', 'Quy Nhơn', 'Quy Nhơn', 'fptqn@gmail.com', 9898989898, 'Software', 'Confirm', 'fpt', 'fpt', 'Who is Your Favourite Person?', 'ronaldo'),
(3, 'Logitech\r\n', 'Nguyễn Minh Hoàng', 'Quy Nhơn', 'Quy Nhơn', 'lgtqn@wipro.com', 8989898989, 'Database ', 'Confirm', 'logitech', 'logitech', '', ''),
(4, 'FPT Sofware', 'Nguyễn Minh Tiến', 'Narayanpura', 'Sài Gòn', 'fptsg@gmail.com', 9898989898, 'Software', 'Confirm', 'fpt1', 'fpt1', 'What is Your Pet Name?', 'nigga'),
(5, 'Logitech', 'Võ Hoàng Liên', 'Sahibagh', 'Sài Gòn', 'lgtsg@yahoo.com', 6767676767, 'Database ', 'Confirm', 'logitech1', 'logitech1', 'What is Your Pet Name?', 'harrem'),
(7, 'a', 'a', 'tp hcm', 'TP. Hồ Chí Minh', 'datqn1261@gmail.com', 344332204, 'a', 'Pending', 'fpt1', 'fpt1', 'Who is Your Favourite Person?', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackId` int(11) NOT NULL,
  `JobSeekId` int(11) NOT NULL,
  `Feedback` varchar(200) CHARACTER SET utf8 NOT NULL,
  `FeedbakDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`FeedbackId`, `JobSeekId`, `Feedback`, `FeedbakDate`) VALUES
(5, 3, 'asdad', '2020-09-13'),
(6, 3, 'asd', '2020-09-18'),
(7, 4, 'Thanks For Your Support.', '2020-09-18'),
(8, 3, 'asd', '2020-09-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobseeker_education`
--

CREATE TABLE `jobseeker_education` (
  `EduId` int(11) NOT NULL,
  `JobSeekId` int(11) NOT NULL,
  `Degree` varchar(20) CHARACTER SET utf8 NOT NULL,
  `University` varchar(100) CHARACTER SET utf8 NOT NULL,
  `PassingYear` mediumint(9) NOT NULL,
  `Percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `jobseeker_education`
--

INSERT INTO `jobseeker_education` (`EduId`, `JobSeekId`, `Degree`, `University`, `PassingYear`, `Percentage`) VALUES
(7, 3, 'It.CNTT', 'DHQN', 2021, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobseeker_reg`
--

CREATE TABLE `jobseeker_reg` (
  `JobSeekId` int(11) NOT NULL,
  `JobSeekerName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `City` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Qualification` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `BirthDate` date NOT NULL,
  `Resume` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `UserName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Question` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Answer` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `jobseeker_reg`
--

INSERT INTO `jobseeker_reg` (`JobSeekId`, `JobSeekerName`, `Address`, `City`, `Email`, `Mobile`, `Qualification`, `Gender`, `BirthDate`, `Resume`, `Status`, `UserName`, `Password`, `Question`, `Answer`) VALUES
(3, 'Le Quốc Đạt', 'Cao bá Quát', 'Quy Nhơn', 'dat@gmail.com', 9898989898, 'IT.CNPM', 'Male', '2020-09-10', 'Marksheet.pdf', 'Confirm', 'dat', '123', 'What is Your Pet Name?', 'occho'),
(7, 'ada', 'tp hcm', 'TP. Hồ Chí Minh', 'datqn1261@gmail.com', 344332204, 'IT.CNPM', 'Male', '2021-01-05', '', 'Confirm', '1', '1', 'What is Your Pet Name?', 'â');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_master`
--

CREATE TABLE `job_master` (
  `JobId` int(11) NOT NULL,
  `CompanyName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `JobTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Vacancy` int(11) NOT NULL,
  `MinQualification` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `job_master`
--

INSERT INTO `job_master` (`JobId`, `CompanyName`, `JobTitle`, `Vacancy`, `MinQualification`, `Description`) VALUES
(1, 'Logitech', 'Phát triển phần mềm ASP.net', 2, 'IT.CNPM', 'ASP.NET'),
(2, 'FPT Sofware', 'Thiết kế CSDL', 5, 'IT.HTTT', 'SQL Sever'),
(3, 'FPT Sofware', 'Phát triển Web', 1, 'IT.CNPM', 'JAVA'),
(4, 'Logitech', 'Thiết kế CSDL', 3, 'IT.HTTT', 'SQLite');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_master`
--

CREATE TABLE `news_master` (
  `NewsId` int(11) NOT NULL,
  `News` varchar(200) CHARACTER SET utf8 NOT NULL,
  `NewsDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `news_master`
--

INSERT INTO `news_master` (`NewsId`, `News`, `NewsDate`) VALUES
(1, 'Đăng ký và nhận việc', '2020-09-24'),
(2, 'Công việc đa dạng', '2020-10-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_master`
--

CREATE TABLE `user_master` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Password` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user_master`
--

INSERT INTO `user_master` (`UserId`, `UserName`, `Password`) VALUES
(6, 'admin', 'admin'),
(11, 'a', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `walkin_master`
--

CREATE TABLE `walkin_master` (
  `WalkInId` int(11) NOT NULL,
  `CompanyName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `JobTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Vacancy` int(11) NOT NULL,
  `MinQualification` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `InterviewDate` date NOT NULL,
  `InterviewTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `application_master`
--
ALTER TABLE `application_master`
  ADD PRIMARY KEY (`ApplicationId`);

--
-- Chỉ mục cho bảng `employer_reg`
--
ALTER TABLE `employer_reg`
  ADD PRIMARY KEY (`EmployerId`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackId`);

--
-- Chỉ mục cho bảng `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  ADD PRIMARY KEY (`EduId`);

--
-- Chỉ mục cho bảng `jobseeker_reg`
--
ALTER TABLE `jobseeker_reg`
  ADD PRIMARY KEY (`JobSeekId`),
  ADD KEY `JobSeekId` (`JobSeekId`);

--
-- Chỉ mục cho bảng `job_master`
--
ALTER TABLE `job_master`
  ADD PRIMARY KEY (`JobId`);

--
-- Chỉ mục cho bảng `news_master`
--
ALTER TABLE `news_master`
  ADD PRIMARY KEY (`NewsId`);

--
-- Chỉ mục cho bảng `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`UserId`);

--
-- Chỉ mục cho bảng `walkin_master`
--
ALTER TABLE `walkin_master`
  ADD PRIMARY KEY (`WalkInId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `application_master`
--
ALTER TABLE `application_master`
  MODIFY `ApplicationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `employer_reg`
--
ALTER TABLE `employer_reg`
  MODIFY `EmployerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  MODIFY `EduId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `jobseeker_reg`
--
ALTER TABLE `jobseeker_reg`
  MODIFY `JobSeekId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `job_master`
--
ALTER TABLE `job_master`
  MODIFY `JobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `news_master`
--
ALTER TABLE `news_master`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_master`
--
ALTER TABLE `user_master`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `walkin_master`
--
ALTER TABLE `walkin_master`
  MODIFY `WalkInId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

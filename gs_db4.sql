-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2022 at 11:01 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_db4`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `age` int(3) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`, `age`, `title`) VALUES
(2, '織田信長', 'test1@test.jp', 'メモ', '2020-09-22 16:02:47', 20, '明日は明日の風が吹く'),
(3, '徳川家康', 'test2@test.jp', 'メモ', '2020-09-22 16:06:42', 30, '昨日は今日の土台'),
(4, '伊達政宗', 'test4@test.jp', 'メモ', '2020-09-22 16:07:48', 30, '今昔物語'),
(5, 'デンゼル・ワシントン', 'test5@test.jp', 'メモ', '2020-09-22 16:07:48', 40, 'I have my dream.'),
(6, 'ディカプリオ', 'test6@test.jp', 'メモ', '2020-09-22 16:07:48', 40, 'Wonder sea!'),
(7, '山田太郎', 'test7@test.jp', 'テスト', '2020-09-22 17:14:36', 20, 'お名前辞典'),
(8, '服部半蔵', 'test8@test.jp', '服部くん', '2020-09-22 17:59:31', 10, '伊賀流忍法'),
(9, 'テスト９', 'test9@test.jp', '自分', '2020-09-22 18:13:28', 20, 'お金の後ろに人がいる'),
(10, 'TEST10', 'test10@test.jp', 'ウイスキー', '2020-09-29 05:19:42', 20, 'お酒百選'),
(11, 'TEST11', 'test11@test.jp', 'テスト', '2020-09-29 05:20:05', 20, '夢辞典'),
(12, 'test1', 'test1@email', '', '2022-06-18 11:23:44', 30, '0'),
(13, 'test1', 'test1@email', '', '2022-06-18 11:25:21', 30, '心が豊かになる本');

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', 'test1', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト３', 'test3', 'test3', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

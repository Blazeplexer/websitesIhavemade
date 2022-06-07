-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 02:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
DROP DATABASE IF EXISTS teamhentaidatabase;
CREATE DATABASE teamhentaidatabase;
USE teamhentaidatabase;

--

-- --------------------------------------------------------

--
-- Table structure for table `jujutsu_kaisen`
--

CREATE TABLE `jujutsu_kaisen` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jujutsu_kaisen`
--

INSERT INTO `jujutsu_kaisen` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 04:20:03', 'Billy', 'Bob\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `kill_the_hero`
--

CREATE TABLE `kill_the_hero` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kill_the_hero`
--

INSERT INTO `kill_the_hero` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 05:55:39', 'Bob', 'NIck ');

-- --------------------------------------------------------

--
-- Table structure for table `mashle`
--

CREATE TABLE `mashle` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mashle`
--

INSERT INTO `mashle` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 06:03:59', 'MOm', 'momma');

-- --------------------------------------------------------

--
-- Table structure for table `my_dad_is_too_strong`
--

CREATE TABLE `my_dad_is_too_strong` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `my_dad_is_too_strong`
--

INSERT INTO `my_dad_is_too_strong` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 06:11:22', 'Nani', 'Hai');

-- --------------------------------------------------------

--
-- Table structure for table `nande_koko_ni_sensei_ga`
--

CREATE TABLE `nande_koko_ni_sensei_ga` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peerless_dad`
--

CREATE TABLE `peerless_dad` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peerless_dad`
--

INSERT INTO `peerless_dad` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 06:20:37', 'DAD', 'Hello\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `switch_(atsushi_namikiri)`
--

CREATE TABLE `switch_(atsushi_namikiri)` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(250) NOT NULL,
  `image_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `image_name`, `image_description`) VALUES
(15, 'Switch (Atsushi Namikiri).jpg', ''),
(16, 'Terra Formars.jpg', ''),
(17, 'Jujutsu_kaisen.jpg', ''),
(18, 'Kill_The_Hero cover art .jpeg', ''),
(19, 'Nande_Koko_ni_Sensei_ga_volume_1_cover.png', ''),
(20, 'Mashle.png', ''),
(21, 'My Dad Is Too Strong.png', ''),
(22, 'The Gamer.jpg', ''),
(26, 'Peerless Dad .jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `terra_formars`
--

CREATE TABLE `terra_formars` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `terra_formars`
--

INSERT INTO `terra_formars` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 06:36:30', 'GG', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `the_gamer`
--

CREATE TABLE `the_gamer` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `the_gamer`
--

INSERT INTO `the_gamer` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 06:50:42', 'Nini', 'Hi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `the_undefeatable_swordsman`
--

CREATE TABLE `the_undefeatable_swordsman` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `the_undefeatable_swordsman`
--

INSERT INTO `the_undefeatable_swordsman` (`comment_id`, `post_id`, `timestamp`, `name`, `message`) VALUES
(1, 999, '2020-12-08 06:50:52', 'Mick', 'Hehe\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'jj5ben77', '$2y$10$3Ltisej796N/82tTYrhhNelrc5JE633ErXTh6ulrjupyjANZSANTW', '2020-12-06 00:05:00'),
(2, 'bigben10499', '$2y$10$QYehPdsYJMLYw2k4pyjKWOSCZGwhtposI/QxoX4fgsudEOlarDPMW', '2020-12-06 00:57:17'),
(3, 'ssdssds', '$2y$10$3NeLFcmY3qLEwzwC/pFMZeMP3wDfKG453KgpHfKlB6x/zmTW78j5m', '2020-12-07 19:31:23'),
(4, 'bigben77', '$2y$10$xUnnxMGSxkIEsoP8f9y.DOfQcprLLyE.ABLv.1r1ZvDpTsXhYDE5e', '2020-12-08 03:42:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jujutsu_kaisen`
--
ALTER TABLE `jujutsu_kaisen`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `kill_the_hero`
--
ALTER TABLE `kill_the_hero`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `mashle`
--
ALTER TABLE `mashle`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `my_dad_is_too_strong`
--
ALTER TABLE `my_dad_is_too_strong`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `nande_koko_ni_sensei_ga`
--
ALTER TABLE `nande_koko_ni_sensei_ga`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `peerless_dad`
--
ALTER TABLE `peerless_dad`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `switch_(atsushi_namikiri)`
--
ALTER TABLE `switch_(atsushi_namikiri)`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `terra_formars`
--
ALTER TABLE `terra_formars`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `the_gamer`
--
ALTER TABLE `the_gamer`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `the_undefeatable_swordsman`
--
ALTER TABLE `the_undefeatable_swordsman`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jujutsu_kaisen`
--
ALTER TABLE `jujutsu_kaisen`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kill_the_hero`
--
ALTER TABLE `kill_the_hero`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mashle`
--
ALTER TABLE `mashle`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_dad_is_too_strong`
--
ALTER TABLE `my_dad_is_too_strong`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nande_koko_ni_sensei_ga`
--
ALTER TABLE `nande_koko_ni_sensei_ga`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peerless_dad`
--
ALTER TABLE `peerless_dad`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `switch_(atsushi_namikiri)`
--
ALTER TABLE `switch_(atsushi_namikiri)`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `terra_formars`
--
ALTER TABLE `terra_formars`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `the_gamer`
--
ALTER TABLE `the_gamer`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `the_undefeatable_swordsman`
--
ALTER TABLE `the_undefeatable_swordsman`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

GRANT SELECT, INSERT, DELETE, UPDATE
ON teamhentaidatabase.*
TO teamhentai@localhost
IDENTIFIED BY 'F131d=tEk';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

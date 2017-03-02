-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2017 at 01:47 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rubi_tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `fbchat_chats`
--

CREATE TABLE IF NOT EXISTS `fbchat_chats` (
  `id` bigint(25) NOT NULL,
  `content` text NOT NULL,
  `sender` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fbchat_chats`
--

INSERT INTO `fbchat_chats` (`id`, `content`, `sender`, `username`, `date`) VALUES
(28, 'hey jack', 'ruby', 'jack', '2017-03-01 18:20:37'),
(29, 'how are you', 'ruby', 'jack', '2017-03-01 18:20:40'),
(30, 'do you like meatball?', 'jack', 'ruby', '2017-03-01 18:20:52'),
(31, 'i like it', 'ruby', 'jack', '2017-03-01 18:20:57'),
(32, 'meatball is my middle name', 'ruby', 'jack', '2017-03-01 18:21:03'),
(33, 'hmmm', 'jack', 'ruby', '2017-03-01 18:21:09'),
(34, 'so, ok', 'jack', 'ruby', '2017-03-01 18:21:17'),
(35, 'tonight?', 'ruby', 'jack', '2017-03-01 18:21:22'),
(36, 'thanks', 'jack', 'ruby', '2017-03-01 18:21:27'),
(37, 'you are really my best friend!', 'jack', 'ruby', '2017-03-01 18:21:37'),
(38, 'ok, then, lets we make something in kutemukan.com', 'ruby', 'jack', '2017-03-01 18:22:00'),
(39, 'you first', 'jack', 'ruby', '2017-03-01 18:22:08'),
(40, 'morning buddy', 'ruby', 'jack', '2017-03-01 18:32:04'),
(41, 'i cant sleep', 'ruby', 'jack', '2017-03-01 18:32:11'),
(42, 'oh my gosh, go sleep', 'jack', 'ruby', '2017-03-01 18:32:19'),
(43, 'btw, my coffe is broke', 'jack', 'ruby', '2017-03-01 18:32:38'),
(44, 'i still feeling sleepy', 'jack', 'ruby', '2017-03-01 18:32:47'),
(45, 'ok then, lets sleep', 'ruby', 'jack', '2017-03-01 18:32:55'),
(46, 'HEY', 'ruby', 'jack', '2017-03-01 18:37:15'),
(47, 'how are you', 'ruby', 'jack', '2017-03-01 18:37:18'),
(48, 'lets take some sleep', 'jack', 'ruby', '2017-03-01 18:37:32'),
(49, 'great, actually, i need some sleep', 'ruby', 'jack', '2017-03-01 18:37:44'),
(50, 'bye', 'ruby', 'jack', '2017-03-01 18:37:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fbchat_chats`
--
ALTER TABLE `fbchat_chats`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fbchat_chats`
--
ALTER TABLE `fbchat_chats`
  MODIFY `id` bigint(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2020 at 09:38 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_FIP`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `item_id` int(11) NOT NULL,
  `item_title` varchar(200) NOT NULL,
  `item_src` text NOT NULL,
  `item_desc` text NOT NULL,
  `item_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`item_id`, `item_title`, `item_src`, `item_desc`, `item_category`) VALUES
(1, 'McCabe\'s', 'videos/mccabes.mp4', 'McCabe\'s is an Irish pub & grill located in London, Ontario. One of London\'s more popular bars for students due to it\'s most famous Wine Wednesday (half price wine)! This video was to demonstrate their newly redesigned rooftop patio due to the COVID-19 restrictions limiting the amount of guests in the restaurant at a time. This video was created on August 15th, 2020.', 'video'),
(2, 'Riverside Market', 'videos/riverside.mp4', 'Formerly known as the Cowboy Ranch, Riverside Market was born as a result of the COVID-19 implications. This video features drone footage as well as super fun and engaging editing techniques. This video was created on August 8th, 2020.', 'video'),
(3, 'Score Pizza', 'videos/scorePizza.mp4', 'Score Pizza is a build your own pizza chain with locations all across Canada. This video was filmed to capture the unique process Score Pizza offers. All music in this video was sourced off of Epidemic Sound. Video was created on August 31st, 2020.', 'video'),
(4, 'J.C. Cruz', 'images/ball1.jpg', '', 'pic'),
(5, 'Prom', 'images/prom2.jpg', '', 'pic'),
(6, 'Canadian Party Life', 'images/cpl1.jpg', '', 'pic'),
(7, 'Canadian Party Life', 'images/cpl2.jpg', '', 'pic'),
(8, 'Prom', 'images/prom1.jpg', '', 'pic'),
(9, 'Elegant Cuts', 'images/ElegantCuts-34.jpg', '', 'pic'),
(10, 'Elegant Cuts', 'images/ElegantCuts-3.jpg', '', 'pic'),
(11, 'Spencer Kanters', 'images/ball2.jpg', '', 'pic'),
(12, 'Sosa Emovon', 'images/sosa.jpg', '', 'graphic'),
(13, 'Matt MacNeil', 'images/matt.jpg', '', 'graphic'),
(14, 'Marko Maletic', 'images/marko.jpg', '', 'graphic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

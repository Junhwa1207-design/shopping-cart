-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 21, 2021 at 07:27 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping-cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`) VALUES
(1, 'power_tools'),
(2, 'hand_tools'),
(3, 'storages');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img_jpg` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `video` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `title`, `img_jpg`, `price`, `video`, `description`, `quantity`) VALUES
(1, 'Kombo Kits 01: Milwaukee Tool', 'tool_01.jpg', ' $529.00 ', 'tool_01.mp4', 'M18 18V Lithium-Ion Cordless Combo Tool Kit (6-Tool) w/(2) 3.0 Ah Batteries, (1) Charger, (1) Tool Bag', '0'),
(2, 'Kombo Kits 02:RYOBI ', 'tool_02.jpg', '$328.00', 'tool_02.mp4\r\n', '18V ONE+ Lithium-Ion Cordless 6-Tool Combo Kit with (2) Batteries, Charger, and Bag', '0'),
(3, 'Kombo Kits 03:DEWALT', 'tool_03.jpg', '$199.00', 'tool_03.mp4\r\n', '20V MAX Lithium-Ion Cordless Drill/Driver and Impact Combo Kit (2-Tool) with Battery 1.3Ah, Charger and Bag', '0'),
(4, 'Kombo Kits 04:MAKITA', 'tool_04.jpg', '$199.00 ', 'tool_04.mp4\r\n', '18V Lithium-Ion Cordless Drill and Impact Driver Combo Kit with 2 Batteries & Charger', '0'),
(5, 'Kombo Kits 05:RIDGID', 'tool_05.jpg', '$248.00', 'tool_05.mp4\r\n', 'GEN5X 18V Lithium-Ion Brushless Cordless Drill/Driver and Impact Driver Combo Kit (2-Tool)', '0'),
(6, 'Stiletto hammer', 'tool_06.jpg', '$298.00', 'tool_06.mp4', '15oz. TiBone 3 with Milled Face and Curved Handle\r\n', '0'),
(7, 'DEWALT hammer', 'tool_07.jpg', '$49.98 ', 'tool_07.mp4', '22 Oz. Steel Checkered Face Hammer', '0'),
(8, 'Milwaukee Tool:Tape Measure', 'tool_08.jpg', '$14.98', 'tool_08.mp4', '25 ft. Compact Tape Measure with 12 ft. Reach', '0'),
(9, 'DEWALT:Tape Measure', 'tool_09.jpg', '$21.97', 'tool_09.mp4', '25 ft. x 1-1/8-inch Tape Measure (2-Pack)', '0'),
(10, 'STANLEY:Tape Measure', 'tool_10.jpg', '$5.98', 'tool_10.mp4', '25 ft. x 1-inch Tape Measure', '0'),
(11, 'Husky:Tool Storage Chest and Cabinet Combo', 'tool_11.jpg', '$298.00 ', 'tool_11.mp4', '27-inch 9-Drawer Mobile Tool Storage Chest and Cabinet Combo in Black', '0'),
(12, 'DEWALT:4-DRAWER TOOL CHEST', 'tool_12.jpg', '$399.00', 'tool_12.mp4', '26-inch WIDE 4-DRAWER TOOL CHEST', '0'),
(13, 'Milwaukee Too:Tool Box Storage', 'tool_13.jpg', '$298.00', 'tool_13.mp4', '22-inch Packout Modular Tool Box Storage System', '0'),
(14, 'Husky:Plastic Portable Tool Box', 'tool_14.jpg', '$29.98', 'tool_14.mp4', '22-inch Plastic Portable Tool Box with Metal Latches in Black', '0'),
(15, 'Milwaukee Tool:PACKOUT 10-Compartment', 'tool_15.jpg', '$49.00 ', 'tool_15.mp4', 'PACKOUT 10-Compartment Low-Profile Small Parts Tool Organizer', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

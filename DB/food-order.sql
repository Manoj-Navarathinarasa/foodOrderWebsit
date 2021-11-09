-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2021 at 05:43 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(14, 'Manoj Navarathinarasa', 'manoj', '5e81f9859d223ea420aca993c647b839'),
(15, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(14, 'Breakfast', 'Food_Category_346.jpg', 'Yes', 'Yes'),
(15, 'Lunch', 'Food_Category_138.jpg', 'Yes', 'Yes'),
(16, 'Dinner', 'Food_Category_839.jpg', 'Yes', 'Yes'),
(17, 'Sodies', 'Food_Category_650.jpg', 'Yes', 'Yes'),
(18, 'SpecialFood', 'Food_Category_677.jpg', 'Yes', 'Yes'),
(19, 'Sweets', 'Food_Category_95.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

DROP TABLE IF EXISTS `tbl_food`;
CREATE TABLE IF NOT EXISTS `tbl_food` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(17, 'Puttu', 'Breakfast Food', '60.00', 'Food-Name-5993.jpg', 14, 'Yes', 'Yes'),
(18, 'Dosha', 'Breakfast Food', '40.00', 'Food-Name-1905.jpg', 14, 'Yes', 'Yes'),
(19, 'Chicken Biryani', 'Lunch Food', '450.00', 'Food-Name-2282.jpg', 15, 'Yes', 'Yes'),
(20, 'Chicken Kothu Prata', 'Lunch Food', '550.00', 'Food-Name-349.jpg', 15, 'Yes', 'Yes'),
(21, 'Idiyappam', 'Dinner Food', '15.00', 'Food-Name-7929.jpg', 16, 'Yes', 'Yes'),
(22, 'Idli', 'Dinner Food', '25.00', 'Food-Name-5068.jpg', 16, 'Yes', 'Yes'),
(23, 'Vadey', 'Sodies Food', '50.00', 'Food-Name-8588.jpg', 17, 'Yes', 'Yes'),
(24, 'Uttapam', 'Special Food', '80.00', 'Food-Name-8470.jpg', 18, 'Yes', 'Yes'),
(25, 'Paratha', 'Special Food', '70.00', 'Food-Name-7628.jpg', 18, 'Yes', 'Yes'),
(26, 'Laddu', 'Sweets Food', '40.00', 'Food-Name-548.jpeg', 19, 'Yes', 'Yes'),
(27, 'GulabJamun', 'Sweets Food', '30.00', 'Food-Name-3859.jpg', 19, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(12, 'Chicken Biryani', '450.00', 4, '1800.00', '2021-05-19 01:49:48', 'Delivered', 'Nithu', '0764655305', 'Nithu@gmail.com', '28,kandy road ,Ariyali ,Jaffna'),
(13, 'Chicken Kothu Prata', '550.00', 2, '1100.00', '2021-05-20 03:49:48', 'Delivered', 'Manoj', '0764655305', 'manoj@gmail.com', '309,kandy road ,Ariyali ,Jaffna');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

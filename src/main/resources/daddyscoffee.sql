-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 05:28 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daddyscoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `order_quantity`) VALUES
(1, '2020-11-28 04:00:00', 10),
(2, '2020-11-28 08:06:10', 15),
(3, '2020-11-29 06:00:00', 20),
(4, '2020-11-27 07:00:00', 40),
(5, '2020-11-27 07:00:00', 40),
(6, '2020-11-27 07:00:00', 40),
(7, '2020-11-27 07:00:00', 40);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_discription` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_discription`, `product_name`) VALUES
(1, 'imply put, black coffee is a combination of water and coffee without any milk', 'Black Coffee'),
(2, 'As the name suggests, drip coffee involves dripping boiling water over ground coffee.', 'Drip Coffee'),
(3, 'instant coffee is one of the simplest coffees to make', 'Instant Coffee'),
(4, 'To make this type of coffee, you need to use an AeroPress device', 'AeroPress Coffee'),
(5, 'The vacuum coffee pot, used to make this coffee type', 'Vacuum Coffee'),
(6, 'Immersion coffee is made by dipping the grounds into boiling water where they steep for some time', 'Immersion Coffee'),
(7, 'Despite a lot of people opting for one of the black varieties, adding milk to your coffee can provide a special type of aroma', 'Milk Based Coffee'),
(8, 'Caffè breve, “breve” meaning short in Italian, is an American version', 'Caffe Breve'),
(9, 'Piccolo latte, or a small latte, is made by pouring warm milk over a ristretto shot', 'Piccolo Latte');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

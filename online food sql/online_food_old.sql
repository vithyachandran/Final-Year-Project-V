-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 17, 2020 at 12:09 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'John', 'John@Admin.lk', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(2, 'ikirupan@gmail.com', 'Master_1006', '2020-11-13 15:19:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Breakfast_Recipes', 'Morning_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(2, 'Lunch_Recipes', 'Lunch_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(3, 'Dinner_Recipes', 'Dinner_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(4, 'Dessert_Recipes', 'Taste_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` int(10) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(14, 1, 2, '1', 1, '2020-11-17 09:33:26', 'COD', NULL),
(15, 2, 2, '1', 1, '2020-11-17 09:34:23', 'COD', NULL),
(16, 2, 2, '13', 1, '2020-11-17 09:34:23', 'COD', NULL),
(17, 2, 2, '25', 1, '2020-11-17 09:34:23', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'Order has been Shipped.', '2020-07-24 16:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 3, 2, 5, 5, 'Shajanthan', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT WITH AFFORDABLE PRICE', '2020-07-24 16:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Banana-Pancakes', 'Food Mafia', 150, 0, 'Banana Flavour Pancakes', 'Banana-Pancakes.jpg', 'Banana-Pancakes.jpg', 'Banana-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(2, 1, 2, 'ButterMilk-Pancakes', 'Food Mafia', 200, 0, 'ButterMilk Flavour Pancakes', 'ButterMilk-Pancakes.jpg', 'ButterMilk-Pancakes.jpg', 'ButterMilk-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(3, 1, 3, 'Chocolate-Cake', 'Food Mafia', 180, 0, 'Chocolate-Cake', 'Chocolate-Cake.jpg', 'Chocolate-Cake.jpg', 'Chocolate-Cake.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(4, 1, 4, 'Fluffy-Pancakes', 'Food Mafia', 220, 0, 'Fluffy Flavour Pancakes', 'Fluffy-Pancakes.jpg', 'Fluffy-Pancakes.jpg', 'Fluffy-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(5, 1, 5, 'Hot-Chocolate-Pancakes', 'Food Mafia', 200, 0, 'Hot-Chocolate Flavour Pancakes', 'Hot-Chocolate-Pancakes.jpg', 'Hot-Chocolate-Pancakes.jpg', 'Hot-Chocolate-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(6, 1, 6, 'Ihop-Pancakes', 'Food Mafia', 300, 0, 'Strawberry Flavour Pancakes', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(7, 1, 7, 'Nutella-Pancakes', 'Food Mafia', 170, 0, 'Nutella Flavour Pancakes', 'Nutella-Pancakes.jpg', 'Nutella-Pancakes.jpg', 'Nutella-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(8, 1, 8, 'Strawberry-Pancakes', 'Food Mafia', 160, 0, 'Strawberry Flavour Pancakes', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(9, 2, 1, 'BeefRice', 'Food Mafia', 350, 0, 'BeefRice', 'BeefRice.jpg', 'BeefRice.jpg', 'BeefRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(10, 2, 2, 'ChickenRice', 'Food Mafia', 300, 0, 'ChickenRice', 'ChickenRice.jpg', 'ChickenRice.jpg', 'ChickenRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(11, 2, 3, 'ChineseRice', 'Food Mafia', 650, 0, 'ChineseRice', 'ChineseRice.jpg', 'ChineseRice.jpg', 'ChineseRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(12, 2, 4, 'FishRice', 'Food Mafia', 250, 0, 'FishRice', 'FishRice.jpg', 'FishRice.jpg', 'FishRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(13, 2, 5, 'SpiccyRice', 'Food Mafia', 330, 0, 'SpiccyRice', 'SpiccyRice.jpg', 'SpiccyRice.jpg', 'SpiccyRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(14, 2, 6, 'ThaiRice', 'Food Mafia', 600, 0, 'ThaiRice', 'ThaiRice.jpg', 'ThaiRice.jpg', 'ThaiRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(15, 2, 7, 'VegetableRice', 'Food Mafia', 200, 0, 'VegetableRice', 'VegetableRice.jpg', 'VegetableRice.jpg', 'VegetableRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(16, 2, 8, 'YellowRice', 'Food Mafia', 180, 0, 'YellowRice', 'YellowRice.jpg', 'YellowRice.jpg', 'YellowRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(17, 3, 1, 'Beef-Kottu', 'Food Mafia', 320, 0, 'Beef-Kottu', 'Beef-Kottu.jpg', 'Beef-Kottu.jpg', 'Beef-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(18, 3, 2, 'Chicken-Kottu', 'Food Mafia', 400, 0, 'Chicken-Kottu', 'Chicken-Kottu.jpg', 'Chicken-Kottu.jpg', 'Chicken-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(19, 3, 3, 'Dolphin-Kottu', 'Food Mafia', 280, 0, 'Dolphin-Kottu', 'Dolphin-Kottu.jpg', 'Dolphin-Kottu.jpg', 'Dolphin-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(20, 3, 4, 'Egg-Kottu', 'Food Mafia', 160, 0, 'Egg-Kottu', 'Egg-Kottu.jpg', 'Egg-Kottu.jpg', 'Egg-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(21, 3, 5, 'Kothu-Parotta', 'Food Mafia', 220, 0, 'Kothu-Parotta', 'Kothu-Parotta.jpg', 'Kothu-Parotta.jpg', 'Kothu-Parotta.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(22, 3, 6, 'Mixed-Kottu', 'Food Mafia', 650, 0, 'Mixed-Kottu', 'Mixed-Kottu.jpg', 'Mixed-Kottu.jpg', 'Mixed-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(23, 3, 7, 'Mutton-Kottu', 'Food Mafia', 500, 0, 'Mutton-Kottu', 'Mutton-Kottu.jpg', 'Mutton-Kottu.jpg', 'Mutton-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(24, 3, 8, 'Veg-Kottu', 'Food Mafia', 150, 0, 'Veg-Kottu', 'Veg-Kottu.jpg', 'Veg-Kottu.jpg', 'Veg-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(25, 4, 1, 'Chocolate-Dessert', 'Food Mafia', 250, 0, 'Chocolate-Dessert', 'Chocolate-Dessert.jpg', 'Chocolate-Dessert.jpg', 'Chocolate-Dessert.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(26, 4, 2, 'Fruit-Cream-Cheese', 'Food Mafia', 300, 0, 'Fruit-Cream-Cheese', 'Fruit-Cream-Cheese.jpg', 'Fruit-Cream-Cheese.jpg', 'Fruit-Cream-Cheese.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(27, 4, 3, 'Fruit-Custard', 'Food Mafia', 280, 0, 'Fruit-Custard', 'Fruit-Custard.jpg', 'Fruit-Custard.jpg', 'Fruit-Custard.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(28, 4, 4, 'Fruit-Pizza', 'Food Mafia', 550, 0, 'Fruit-Pizza', 'Fruit-Pizza.jpg', 'Fruit-Pizza.jpg', 'Fruit-Pizza.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(29, 4, 5, 'Ice-Cream-Waffle', 'Food Mafia', 400, 0, 'Ice-Cream-Waffle', 'Ice-Cream-Waffle.jpg', 'Ice-Cream-Waffle.jpg', 'Ice-Cream-Waffle.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(30, 4, 6, 'Kitkat-Ice-Cream-Pie', 'Food Mafia', 650, 0, 'Kitkat-Ice-Cream-Pie', 'Kitkat-Ice-Cream-Pie.jpg', 'Kitkat-Ice-Cream-Pie.jpg', 'Kitkat-Ice-Cream-Pie.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(31, 4, 7, 'Strawberry-Cake', 'Food Mafia', 200, 0, 'Strawberry-Cake', 'Strawberry-Cake.jpg', 'Strawberry-Cake.jpg', 'Strawberry-Cake.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(32, 4, 8, 'Strawberry-Short-Cake', 'Food Mafia', 150, 0, 'Strawberry-Short-Cake', 'Strawberry-Short-Cake.jpg', 'Strawberry-Short-Cake.jpg', 'Strawberry-Short-Cake.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Vanilla Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(2, 1, 'Butter Milk Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(3, 1, 'Banana Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(4, 1, 'Nutella Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(5, 1, 'Strawberry Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(6, 1, 'Nutella Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(7, 1, 'Bacon Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(8, 1, 'Ihop Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(9, 2, 'Chicken Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(10, 2, 'Beef Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(11, 2, 'Chinese Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(12, 2, 'Fish Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(13, 2, 'Vegetable Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(14, 2, 'Yellow Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(15, 2, 'Thai Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(16, 2, 'Spicy Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(17, 3, 'Mixed Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(18, 3, 'Beef Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(19, 3, 'Chicken Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(20, 3, 'Chinese Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(21, 3, 'Vegetable Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(22, 3, 'Egg Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(23, 3, 'Mutton Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(24, 3, 'Chili Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(25, 4, 'Chocolate Dessert', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(26, 4, 'KitKat Icecream Pie', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(27, 4, 'Chocolate Cake', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(28, 4, 'Strawberry Cake', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(29, 4, 'Fruit Pizza', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(30, 4, 'Ice Cream Waffle', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(31, 4, 'Fruit Custard', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(32, 4, 'Fruit Cream Cheese', '2020-07-24 17:21:18', '2020-07-24 17:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'johnshajanthan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 17:28:38', '', 1),
(2, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-13 15:04:09', NULL, 0),
(3, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-13 15:06:26', '13-11-2020 08:47:57 PM', 1),
(4, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-13 16:34:27', '13-11-2020 10:04:30 PM', 1),
(5, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-16 10:40:34', NULL, 1),
(6, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-16 11:19:26', NULL, 1),
(7, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-17 07:20:51', NULL, 1),
(8, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-17 09:30:30', '17-11-2020 03:59:36 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'John Shajanthan', 'johnshajanthan@gmail.com', 7615148888, 'Abcd@0149', 'Kondavil', 'Northern', 'Jaffna', 40000, 'Kondavil', 'Northern', 'Jaffna', 40000, '2020-07-24 17:28:38', ''),
(2, 'Kirupan', 'ikirupan@gmail.com', 770221046, 'Master_1006', 'Karaveddy East , Karaveddy', 'Jaffna', 'Nelliady', 40000, 'Karaveddy east , karaveddy', 'Jaffna', 'Nelliady', 40000, '2020-11-13 15:06:20', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

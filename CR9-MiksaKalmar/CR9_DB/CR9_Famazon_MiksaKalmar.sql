-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 03:24 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `famazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_ID` int(6) NOT NULL,
  `company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_ID`, `company_name`) VALUES
(1, 'Olliwanders'),
(2, 'Magical_menagerie'),
(3, 'Gringotts'),
(4, 'Madam_Malkins'),
(5, 'Sugarplam_sweets'),
(6, 'Flourish_Botts'),
(7, 'Hogsmeade'),
(8, 'Roxmorts'),
(9, 'Quidditch_supplies'),
(10, 'Weasleyswizardwheezes'),
(11, 'Shutterbutton');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_ID` int(6) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_ID`, `first_name`, `last_name`, `username`, `address`) VALUES
(1, 'Harry', 'Potter', 'HarryPotter', 'private_drive4'),
(2, 'Ron', 'Weasley', 'RonWeasly', 'TheBurrow'),
(3, 'Hermione', 'Granger', 'HermioneG', 'Hampstead'),
(4, 'Sirius', 'Black', 'SiriusB', 'Grimmauld_place'),
(5, 'Severus', 'Snape', 'SevSnap', 'Roxfort'),
(6, 'Voldemort', 'Lord', 'LordVold', 'BorginandBurkes'),
(7, 'Albus', 'Dumbledore', 'AlbieD', 'Roxfort'),
(8, 'Ginny', 'Weasly', 'Ginger', 'TheBurrow'),
(9, 'Dobby', 'Malfoy', 'Dobbbbby', 'ShellCottage'),
(10, 'Draco', 'Malfoy', 'Dracon', 'Wiltshire');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_ID` int(6) NOT NULL,
  `fk_product_ID` int(6) NOT NULL,
  `fk_customer_ID` int(6) NOT NULL,
  `payment_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_ID`, `fk_product_ID`, `fk_customer_ID`, `payment_type`) VALUES
(1, 1, 10, 'Credit_card'),
(2, 2, 10, 'Credit_card'),
(3, 2, 5, 'Debit_card'),
(4, 2, 4, 'Gift_card'),
(5, 3, 4, 'Gift_card'),
(6, 10, 2, 'Credit_card'),
(7, 20, 8, 'Gift_card'),
(8, 40, 8, 'Gift_card'),
(9, 41, 9, 'Gift_card'),
(10, 21, 1, 'Credit_card'),
(11, 30, 1, 'Debit_card'),
(12, 22, 1, 'Credit_card'),
(13, 23, 1, 'Credit_card'),
(14, 23, 5, 'Gift_card'),
(15, 23, 10, 'Credit_card'),
(16, 30, 3, 'Debit_card'),
(17, 31, 3, 'Debit_card'),
(18, 15, 3, 'Debit_card'),
(19, 16, 4, 'Gift_card'),
(20, 1, 4, 'Gift_card'),
(21, 2, 4, 'Gift_card'),
(22, 30, 5, 'Debit_card'),
(23, 31, 5, 'Debit_card'),
(24, 41, 5, 'Debit_card'),
(25, 10, 2, 'Debit_card'),
(26, 31, 2, 'Debit_card'),
(27, 5, 2, 'Paypal');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_ID` int(6) NOT NULL,
  `fk_company_ID` int(6) NOT NULL,
  `product_name` varchar(120) DEFAULT NULL,
  `product_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `fk_company_ID`, `product_name`, `product_price`) VALUES
(1, 1, 'staves', 800),
(2, 1, 'dragonheart_string', 15000),
(3, 1, 'unicorn_fur', 3500),
(4, 1, 'thestral_hoof', 3000),
(5, 1, 'siren_tears', 550),
(6, 2, 'magical_mugs', 50),
(7, 2, 'house_elf', 12000),
(8, 2, 'wardrobes', 150),
(9, 2, 'glasses', 300),
(10, 3, 'lepreachauns_gold', 5000),
(11, 3, 'deposit_box', 400),
(12, 3, 'cart', 40),
(13, 4, 'black_robe', 120),
(14, 4, 'white_robe', 110),
(15, 4, 'grey_robe', 110),
(16, 4, 'green_robe', 100),
(17, 4, 'black_hat', 60),
(18, 4, 'white_hat', 50),
(19, 4, 'grey_hat', 50),
(20, 4, 'green_hat', 40),
(21, 5, 'chocolate_frog', 10),
(22, 5, 'rum_n_plum', 5),
(23, 5, 'cookies', 3),
(24, 5, 'choco_drops', 3),
(25, 5, 'dragee', 3),
(26, 6, 'wizard_boots', 200),
(27, 6, 'wizard_gloves', 100),
(28, 7, 'boar_head', 270),
(29, 7, 'picture', 200),
(30, 7, 'cauldron', 70),
(31, 8, 'butter_ale', 12),
(32, 8, 'champagne', 20),
(33, 8, 'wizard_vodka', 15),
(34, 9, 'broom', 150),
(35, 9, 'quidditch_gates', 2500),
(36, 9, 'golden_snitch', 5000),
(37, 10, 'explosive_cask', 150),
(38, 10, 'weasly_crackers', 20),
(39, 10, 'fireflies', 12),
(40, 10, 'wonderwitch', 25),
(41, 11, 'sparkling_snake', 100),
(42, 11, 'grey_owl', 500),
(43, 11, 'white_owl', 600),
(44, 11, 'grey_weasel', 240),
(45, 11, 'red_weasel', 220);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_ID`),
  ADD KEY `fk_product_ID` (`fk_product_ID`,`fk_customer_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_ID`),
  ADD KEY `fk_company_ID` (`fk_company_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`fk_customer_ID`) REFERENCES `customers` (`customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`fk_product_ID`) REFERENCES `products` (`product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`fk_company_ID`) REFERENCES `companies` (`company_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

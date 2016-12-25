-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2016 at 07:27 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpgurukulshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartdetails`
--

CREATE TABLE IF NOT EXISTS `cartdetails` (
  `ser_no` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  PRIMARY KEY (`ser_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cartdetails`
--

INSERT INTO `cartdetails` (`ser_no`, `email`, `image1`, `product_name`, `price`) VALUES
(1, 'rashmicsjm5@gmail.com', 'm1.jpg', 'HP Laptop', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `S.no` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `phone_no` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  PRIMARY KEY (`S.no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`S.no`, `company_name`, `address`, `phone_no`, `mobile_no`, `email_id`) VALUES
(1, 'Himanshu Electronics & Communitation ', '', '45455455', 'q44234', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` int(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `contact`, `subject`, `message`) VALUES
(1, 'bhargav', 'bhargavs2493@gmail.com', 2147483647, 'hey there', 'hi'),
(2, 'bhargav', 'bhargavs2493@gmail.com', 2147483647, 'review', 'hry'),
(3, 'bhargav', 'bhargavs2493@gmail.com', 2147483647, 'review', 'hry'),
(4, 'deepesh', 'deepeshchhadva@gmail.com', 2147483647, 'complente', 'hi'),
(5, 'deepesh', 'deepeshl@gmail.com', 2147483647, 'dss', 'ddd');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `ser_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`ser_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ser_no`, `user_name`, `password`) VALUES
(1, 'bhargav', '123'),
(3, 'deepesh', '123');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `item` text NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `contact`, `address`, `email`, `item`, `amount`) VALUES
(1, 'bhargav', '74110101', 'temple', 'bhar@gmail.com', '(1) Mouse', '5000'),
(18, 'Deepesh', '9035728726', 'bull temple road', 'deepeshchhadva@gmail.com', '(1) ONIDASNTVE4, (1) PANASONIC SNM3, ', '51000'),
(19, 'Deepesh', '9035728726', 'bull temple road', 'deepeshchhadva@gmail.com', '(1) ONIDASNTVE4, (1) PANASONIC SNM3, ', '51000'),
(20, 'Deepesh', '9035728726', 'bull temple road', 'deepeshchhadva@gmail.com', '(1) Samsung SNTVE1, ', '5500'),
(34, 'bhargav', '7411221043', 'bangalore', 'bhargavs2493@gmail.com', '(1) MUSIC2, (1) STEELSERIES, (1) STEELSERIES, ', '45000'),
(35, 'bhargav', '7411221043', 'bangalore', 'bhargavs2493@gmail.com', '(1) LOGITECH, (1) MUSIC3, (1) LGSNTVE5, (6) ROCAATA, ', '120500'),
(36, 'bhargav', '9535357151', 'bangalore', 'bhargavs2493@gmail.com', '(1) STEELSERIES, (1) STEELSERIES, ', '24000'),
(37, 'Srinivas', '9739846990', '#520 2nd main Shastrinagar Bangalore-28', 'kssrinivas.097@gmail.com', '(1) SAPPHIRE PURE, (1) STEELSERIES, ', '18000'),
(38, 'Srinivas', '9739846990', '#520 2nd main Shastrinagar Bangalore-28', 'kssrinivas.097@gmail.com', '(1) SONYSNTVE2, (1) MUSIC3, ', '37500'),
(39, 'Deepesh', '9035728726', 'ssfdff', 'deepeshchhadva@gmail.com', '(9) Samsung , ', '49500'),
(40, 'Deepesh', '9035728726', 'x', 'deepeshchhadva@gmail.com', '(1) Kingston UV300, ', '2800');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ser_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `pro_cat` varchar(200) NOT NULL,
  `product_price` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `features` varchar(200) NOT NULL,
  `plateform` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `display` varchar(200) NOT NULL,
  `waranty` varchar(200) NOT NULL,
  `shipping_time` varchar(300) NOT NULL,
  `price` varchar(100) NOT NULL,
  `offer_price` varchar(100) NOT NULL,
  `save` varchar(200) NOT NULL,
  `image1` varchar(200) NOT NULL,
  PRIMARY KEY (`ser_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ser_no`, `product_code`, `product_name`, `pro_cat`, `product_price`, `description`, `brand`, `category`, `features`, `plateform`, `model`, `type`, `display`, `waranty`, `shipping_time`, `price`, `offer_price`, `save`, `image1`) VALUES
(26, 'SNTVE1', 'Samsung ', 'monitor', '6000', 'Samsung tv', 'Samsung', 'MONITOR', '21 "', 'Samsung', 'Samsung', 'LED ', 'Samsung', '1 year warranty ', 'within 5-7 working days', '6000', '5500', '500', 'tv1.png'),
(4, 'SNMO2', 'RAZER', 'mouse', '9573', '1080dpi', 'RAZER', 'RAZER', 'RAZER', 'USB', '2016', 'gaming', 'laser', '1 year warranty ', 'within 15-20 working days', '9573', '9000', '573', 'm1.png'),
(72, 'GPU1', 'EVGA GTX TITAN X', 'gpu', '110000', '12gb', 'NVIDIA', 'Grapics card', '12gb on board memory', 'Desktop', '2016', 'Maxwell Architecture', '2*Hdmi 3*Dvi', '2Years', '2300hrs', '110000', '105000', '5000', 'gpu1.png'),
(63, 'i7', 'Intel I7pro', 'cpu', '20000', 'Processor', 'INTEL', '4th Gen', '3MB cache 4.00hz', 'Intel chipset x64 Architecture', 'feb2016', '-', '-NIL-', '3years', '0430hrs', '20000', '18500', '1500', 'inteli7.png'),
(64, 'cool1', 'ASUS TRITON', 'cooling', '6000', 'SMOOTH COOLER WITH Led', 'ASUS', 'COOLING', 'v8 HP', '-NIL-', '2016cool', '-', '-NIL-', '', '0500hrs', '6000', '5800', '200', 'cooling1.png'),
(71, 'SNM4', 'JBL 5.1', 'music', '6550', '5.1 surround', 'JBL', 'Headset', 'Dolby digital', '-NIL-', '2015', '3.5mm jack', '-NIL-', '2.5years', '0300hrs', '6550', '6000', '550', 'music2.png'),
(7, 'SN1', 'RAZER', 'keyboard', '9000', 'RAZER', 'RAZER', 'RAZER', 'RAZER', 'RAZER', 'RAZER', 'RAZER', 'RAZER', '1 year warranty ', 'within 5-7 working days', '9000', '8000', '1000', 'camera1.png'),
(8, 'SN2', 'STEELSERIES', 'keyboard', '15000', 'STEELSERIES', 'STEELSERIES', 'STEELSERIES', 'STEELSERIES', 'STEELSERIES', 'STEELSERIES', 'gaming', '-NIL-', '1 years', '20-25 dayd', '15000', '12000', '3000', 'camera2.png'),
(11, 'SN3', 'LOGITECH', 'keyboard', '8000', 'LOGITECH', 'LOGITECH', 'LOGITECH', 'LOGITECH', 'LOGITECH', 'LOGITECH', 'keyboard', '-NIL-', '1 year', 'within 10-15 days', '8000', '7500', '500', 'camera3.png'),
(12, 'SN4', 'ROCAATA', 'keyboard', '11000', 'ROCAATA', 'ROCAATA', 'ROCAATA', 'ROCAATA', 'ROCAATA', 'ROCAATA', 'keyboard', '-NIL-', '2 year', 'within 20 days', '11000', '10000', '1000', 'camera4.png'),
(15, 'SNM1', 'MUSIC1', 'music', '9000', 'SONYMUSIC', 'SONYMUSIC', 'SONYMUSIC', 'SONYMUSIC', 'SONYMUSIC', 'SONYMUSIC', '7.1', '-NIL-', '1 year warranty ', 'within 15-20 working days', '9000', '5000', '4000', 'b.jpg'),
(16, 'SNM2', 'MUSIC2', 'music', '3000', 'LGMUSIC', 'LGMUSIC', 'LGMUSIC', 'LGMUSIC', 'LGMUSIC', 'LGMUSIC', 'LGMUSIC', '-NIL-', '2 years', 'within 21 days', '3000', '2800', '200', 'b1.jpg'),
(17, 'SNM3', 'MUSIC3', 'music', '28000', 'PANASONIC ', 'PANASONIC ', 'PANASONIC ', 'PANASONIC ', 'PANASONIC ', 'PANASONIC ', 'Home Theater', '-NIL-', '2 years', '20 days', '28000', '27000', '1000', 'music4.png'),
(20, 'SNTVE2', 'SONYSNTVE2', 'monitor', '11000', 'Sales Package Handset, USB Cable, Charger, Battery', 'SONY', 'SONY', 'Processor A6X Dual Core', 'SONY', 'SONY', 'MONITOR', 'Display Type LED', '5 years', '20 days', '11000', '10500', '500', 'tv2.png'),
(21, 'SNTVE3', 'VideoconSNTVE3', 'monitor', '20000', 'Videocon', 'Videocon', 'Videocon', 'Videocon', 'Videocon', 'Videocon', 'MONITOR', 'Display Type LED', '1 year warranty ', 'within 15-20 working days', '20000', '18000', '2000', 'tv3.png'),
(23, 'SNTVE5', 'LGSNTVE5', 'monitor', '28000', 'LG', 'LG', 'LG', 'LG', 'LG', 'LG', 'MONITOR', 'Display Type LED', '2 years', '15 days', '28000', '26000', '2000', 'tv6.png'),
(24, 'SNTVE6', 'PhilipsSNTVE6', 'monitor', '20000', 'Philips', 'Philips', 'Philips', 'Philips', 'Philips', 'Philips', 'MONITOR', 'Display Type LED', '2 years ', '20 days', '20000', '19000', '1000', 'tv5.png'),
(80, 'M2', 'ASUS M5A', 'motherboard', '5500', 'usb 3.0 sata 6gb/s PCIE 3.0', 'ASUS', 'MOTHERBOARD', 'usb 3.0 sata 6gb/s PCIE 3.0', 'Desktop', 'ASUS 2014', 'gaming/casual', '2*Hdmi 3*Dvi', '3years', '0500hrs', '5500', '4500', '1000', 'mother2.png'),
(79, 'P3', 'CORSAIR CX500', 'powersupply', '3800', '500watts', 'CORSAIR', 'Coolers', 'silent cooling 500w', '-NIL-', '2014', '-NIL-', '-NIL-', '2.5years', '0430hrs', '3800', '3600', '200', 'power4.png'),
(75, 'ram1', 'CORSAIR VENGEANCE', 'ram', '60000', 'DDR4 2333MHz', 'CORSAIR', 'RAM', '64gb DDR4', 'Desktop', '2016', 'sata 6gb/s', '-NIL-', '2Years', '1300hrs', '60000', '58000', '2000', 'ram2.png'),
(76, 'ram2', 'KINGSTON FURY HYPERX', 'ram', '6000', '4gb', 'KINGSTON', 'RAM', '4gb Memory', 'Desktop', '2014', 'ddr3', '-NIL-', '3.5years', '0430hrs', '6000', '5500', '500', 'ram4.png'),
(77, 'P1', 'CORSAIR RM1000', 'powersupply', '12000', '1000watts', 'CORSAIR', 'SMPS', '1000w Better Transistors', '-NIL-', 'RM2016', '-NIL-', '-NIL-', '3years', '0500hrs', '12000', '11000', '1000', 'power2.png'),
(78, 'P2', 'COOLER MASTER THUNDER', 'powersupply', '4000', '500watts', 'COOLER MASTER', 'Coolers', 'silent cooling 500w', '-NIL-', '2014', '-NIL-', '-NIL-', '3years', '0300hrs', '4000', '3500', '500', 'power3.png'),
(62, 'M1', 'MSI Motherboard', 'motherboard', '16000', 'The E3 KRAIT GAMING V5 and E3M WORKSTATION V5. With the their ability to use the less expensive IntelÂ® Xeon CPUs make both models a promising solution for users who are looking to build a Xeon based ', 'MSI', 'MOTHERBOARD', 'DIRECTX-12 Ready', 'pcie 3.0 express', 'ms2016', 'USB-3.0', '2*Hdmi 3*lcd', '3years', '0300hrs', '16000', '13000', '3000', 'mother1.png'),
(66, 'AMD2', 'AMD Fx', 'cpu', '6550', 'Processor', 'AMD', 'processor', '6MB cache 3.75Hz', 'desktop', 'AMD2016', 'desktop', '-NIL-', '1year', '0500hrs', '6550', '6400', '150', 'amd2.png'),
(67, 'i5', 'Intel I5pro', 'cpu', '11550', 'i5 2nd gen', 'INTEL', 'processor', '4MB cache', 'desktop', 'feb2016', 'desktop', '-NIL-', '2Years', '0430hrs', '11550', '9050', '2500', 'intei5.png'),
(68, 'i3', 'Intel I3pro', 'cpu', '6000', 'Processor', 'INTEL', 'processor', '3MB cache 3.00hz', 'processor', 'zm2014', 'desktop', '-NIL-', '3years', '1300hrs', '6000', '5000', '1000', 'inteli3.png'),
(70, 'M5', 'RAZER NAGA', 'mouse', '11000', '15macro keys', 'RAZER', 'mouse', 'laser Tracking/auto dpi', 'desktop', '2016', 'gaming/casual', '-NIL-', '2.5years', '0500hrs', '11000', '9500', '1500', 'm2.png'),
(53, 'M3', 'STEELSERIES', 'mouse', '5000', 'The E3 KRAIT GAMING V5 and E3M WORKSTATION V5. With the their ability to use the less expensive IntelÂ® Xeon CPUs make both models a promising solution for users who are looking to build a Xeon based ', 'STEELSERIES', 'mouse', 'laser Tracking', 'usb', 'zm2016', 'USB-3.0', '-NIL-', '2Years', '1300hrs', '5000', '4500', '500', 'm3.png'),
(69, 'M4', 'RAZER DEATHADDER', 'mouse', '8000', '8100dpi', 'RAZER', 'mouse', 'laser Tracking/auto dpi', 'desktop', 'R2016', 'gaming/casual', '-NIL-', '3.5years', '1300hrs', '8000', '5000', '3000', 'm4.png'),
(65, 'AMD1', 'AMD Athlon', 'cpu', '8550', '11MB cache', 'AMD', 'processor', 'unlocked', '64', 'AMD2016', 'desktop', '-NIL-', '1year', '2300hrs', '8550', '6450', '2100', 'amd1.png'),
(81, 'M3', 'INTEL Media Series', 'motherboard', '4500', '800mhz sata6gb/s pcie 2.0', 'INTEL', 'MOTHERBOARD', '800mhz sata6gb/s pcie 2.0', 'Desktop', 'DG451D', 'gaming/casual', '2*Hdmi 3*Dvi', '3.5years', '0500hrs', '4500', '3500', '1000', 'mother3.png'),
(82, 'M4', 'SAPPHIRE PURE', 'motherboard', '6550', 'Ati Radeon Ready', 'AMD', 'MOTHERBOARD', '800mhz sata6gb/s pcie 2.0', 'Desktop', '2015', 'gaming/casual', '2*Hdmi 3*Dvi', '2Years', '0500hrs', '6550', '6000', '500', 'mother4.png'),
(83, 'GPU5', 'ASUS STRIX', 'gpu', '22000', '4gb oc edition Maxwell Architecture', 'ASUS', 'Grapics card', '4gb oc edition', 'Desktop', '2015 feb', 'gaming/casual', '2*Hdmi 3*Dvi', '3.5years', '2300hrs', '22000', '20000', '2000', 'gpu3.png'),
(84, 'GPU7', 'SAPPHIRE 270 Vapour-x', 'gpu', '19500', '2gb video memory', 'AMD', 'Grapics card', '2gb memory Directx 12 ready', 'Desktop', '2014', 'gaming/casual', '2*Hdmi 3*Dvi', '2Years', '0500hrs', '19500', '17000', '2500', 'gpu2.png'),
(85, 'GPU8', 'EVGA GTX 580', 'gpu', '5600', '1gb video memory', 'NVIDIA', 'Grapics card', '1gb video Memory', 'Desktop', '2013', 'casual', '2*Hdmi 3*Dvi', '3years', '0300hrs', '5600', '4600', '1000', 'gpu4.png'),
(86, 'ram3', 'KINGSTON FURY HYPERX', 'ram', '4500', '2gb memory 1333MHz', 'KINGSTON', 'RAM', '2gb memory', 'Desktop', '2014', '-NIL-', '-NIL-', '3years', '0300hrs', '4500', '3900', '600', 'ram4.png'),
(87, 'H1', 'SEAGATE BARRACUDA', 'harddisk', '6850', 'Internal 1TB', 'SEAGATE', 'Hard Disk', '1TB', 'Desktop', '2015', '-NIL-', '-NIL-', '2Years', '0500hrs', '6850', '6000', '850', 'harddisk1.png'),
(88, 'H2', 'TRANSCEND', 'harddisk', '9000', 'External 1TB', 'TRANSCEND', 'Hard Disk', 'External Hard Disk', 'External', '2014', '-NIL-', '-NIL-', '3years', '0500hrs', '9000', '8500', '500', 'harddisk2.png'),
(90, 'H4', 'TOSHIBA pro', 'harddisk', '2800', '500gb Internal', 'TOSHIBA', 'Hard Disk', '500gb Internal', 'Desktop', '2014', '-NIL-', '-NIL-', '2.5years', '0300hrs', '2800', '2000', '800', 'harddisk4.png'),
(91, 'H5', 'WD 3.0', 'harddisk', '12000', '3.0Tb Internal ', 'WESTERN DIGITAL', 'Hard Disk', '3tb Internal', 'Desktop', '2016', '-NIL-', '-NIL-', '2Years', '2300hrs', '12000', '11000', '1000', 'harddisk3.png'),
(92, 'CC 821', 'CC 821', 'cabinet', '3500', 'Cabinet', 'Circle', 'Cabinet', 'Gaming', 'Circle', 'CC 821', 'Cabinet', 'CC 821', '1 year', '4-5 days', '3500', '3400', '100', '51jtYmAcQmL.jpg'),
(99, 'k380', 'Master K380', 'cabinet', '4500', 'Master K380', 'master', 'cabinet', 'gaming cabinet', 'gaming', 'k380', 'cabinet', 'cabinet', '1 year', '5-6 days', '4500', '4400', '100', '81zh-eTeGJL._SL1500_.jpg'),
(100, 'UV300', 'Kingston UV300', 'ssd', '3000', '120 GB', 'kingston', 'ssd', '120 GB', 'kingston', 'UV 300', 'ssd', '', '2 years', '2 days', '3000', '2800', '200', '41eug4wxoQL.jpg'),
(101, '850 EVO', 'Samsung 850 EVO', 'ssd', '7500', '250 GB', 'samsung', 'ssd', '250 GB', 'samsung', '850 EVO', 'ssd', '', '5 years', '5 days', '7500', '7000', '500', '91ZPflI8tzL._SL1500_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `ser_no` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `txn_status` varchar(255) NOT NULL,
  PRIMARY KEY (`ser_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=199 ;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`ser_no`, `email`, `product_code`, `product_name`, `image1`, `quantity`, `price`, `txn_status`) VALUES
(105, 'r@gmail.com', 'SNTVE1', 'Samsung SNTVE1', 'tv1.png', '1', '5500', ''),
(5, 'rashmi@gmail.com', '$code', 'Nokia SNTV3', 'm3.png', '3', '6000', ''),
(14, 'rashmi@gmail.com', 'SNTVE2', 'philipsSNTVE2', 'tv3.png', '1', '', ''),
(64, 'rashmicsjm5@gmail.com', 'SNM1', 'SONYMUSIC1', 'music1.png', '1', '35000', ''),
(21, 'h@gmail.com', 'SNTVE2', 'philipsSNTVE2', 'tv3.png', '1', '', ''),
(70, 'h@gmail.com', 'SNM2', 'LGMUSIC2', 'music2.png', '1', '28000', ''),
(67, 'a@gmail.com', 'SNTVE2', 'SONYSNTVE2', 'tv2.png', '1', '10500', ''),
(58, 'a@gmail.com', 'SNTVE1', 'philipsSNTVE1', 'tv2.png', '1', '', ''),
(68, 'h@gmail.com', 'SNTVE1', 'Samsung SNTVE1', 'tv1.png', '1', '5500', ''),
(69, 'h@gmail.com', 'SNTVE1', 'Samsung SNTVE1', 'tv1.png', '1', '5500', ''),
(95, 'bsraazit@gmail.com', 'SNTVE2', 'SONYSNTVE2', 'tv2.png', '1', '10500', ''),
(89, 'raj@gmail.com', 'SNCAMERA3', 'SAMSUNG SNCAMERA3', 'camera3.png', '12', '7500', ''),
(88, 'raj@gmail.com', 'SNTVE3', 'VideoconSNTVE3', 'tv3.png', '2', '18000', ''),
(115, 'amit@gmail.com', 'SNMO2', 'LG-L5II- E450SNMO2', 'm2.png', '1', '9000', ''),
(103, 'rashmicsjm5@gmail.com', 'SNTVE4', 'ONIDASNTVE4', 'tv4.png', '1', '24000', ''),
(110, 'amit@gmail.com', 'SNTVE3', 'VideoconSNTVE3', 'tv3.png', '1', '18000', ''),
(111, 'amit@gmail.com', 'SNTVE3', 'VideoconSNTVE3', 'tv3.png', '1', '18000', ''),
(130, 'anuj.lpu1@gmail.com', 'SNTVE3', 'VideoconSNTVE3', 'tv3.png', '1', '18000', ''),
(129, 'anuj.lpu1@gmail.com', 'SNTVE2', 'SONYSNTVE2', 'tv2.png', '1', '10500', ''),
(163, 'kssrinivas.097@gmail.com', 'SN3', 'LOGITECH', 'camera3.png', '1', '7500', ''),
(197, 'deepeshchhadva@gmail.com', 'P3', 'CORSAIR CX500', 'power4.png', '1', '3600', 'powersupply'),
(198, 'deepeshchhadva@gmail.com', 'ram1', 'CORSAIR VENGEANCE', 'ram2.png', '1', '58000', 'ram'),
(195, 'deepeshchhadva@gmail.com', 'k380', 'Master K380', '81zh-eTeGJL._SL1500_.jpg', '1', '4400', 'cabinet'),
(192, 'deepeshchhadva@gmail.com', 'H1', 'SEAGATE BARRACUDA', 'harddisk1.png', '1', '6000', 'harddisk'),
(191, 'deepeshchhadva@gmail.com', 'M2', 'ASUS M5A', 'mother2.png', '1', '4500', 'motherboard'),
(190, 'deepeshchhadva@gmail.com', 'SNTVE1', 'Samsung ', 'tv1.png', '1', '5500', 'monitor'),
(189, 'deepeshchhadva@gmail.com', 'SNMO2', 'RAZER', 'm1.png', '1', '9000', 'mouse'),
(188, 'deepeshchhadva@gmail.com', 'i7', 'Intel I7pro', 'inteli7.png', '1', '18500', 'cpu'),
(196, 'deepeshchhadva@gmail.com', 'SN1', 'RAZER', 'camera1.png', '1', '8000', 'keyboard');

-- --------------------------------------------------------

--
-- Table structure for table `static`
--

CREATE TABLE IF NOT EXISTS `static` (
  `static_id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(200) NOT NULL,
  `details` longtext NOT NULL,
  PRIMARY KEY (`static_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `static`
--

INSERT INTO `static` (`static_id`, `page`, `details`) VALUES
(1, 'aboutus', '\r\n<font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n\r\n \r\n<font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n\r\n <font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n <font style="font-family: Verdana, Geneva, sans-serif;">\r\n <div style="text-align: justify;"><font face="times new roman" color="#000033"><b>PHPGURKUL Shopping - </b>in full bloom</font></div><div style="text-align: justify;"><font face="times new roman" color="#000033"><br></font></div><div><font face="times new roman"><div style="text-align: justify;"><b style="color: rgb(0, 0, 51);">PHPGURKUL Shopping</b><font color="#000033">, holds the distinction of being the one-stop-destination for quality electronic Products in Central India. It offers an array of world-renowned brands like Apple, Sony, Samsung, LG, Philips, Nokia, Dell, Lenovo, Blackberry, Compaq, Nikon, Canon, Whirlpool, Hitachi etc. all under one roof.</font></div><div style="text-align: justify;"><font color="#000033"><br></font></div><div><div style="text-align: justify;"><font color="#000033">Online shopping - Great Brands, Great Value</font></div></div><div style="text-align: justify;"><font color="#000033"><br></font></div><div><div style="text-align: justify;"><font color="#000033">Apart from 9 mega showrooms in Delhi,&nbsp;</font><b style="color: rgb(0, 0, 51);">PHPGURKUL Shopping</b><font color="#000033">&nbsp;now boasts of a strong presence in the virtual world too. Its website&nbsp;www.phpgurukul.com facilitates safe &amp; convenient online shopping for the customers.&nbsp;</font></div></div><div><div style="text-align: justify;"><font color="#000033">There are many wonderful things that you can do on this website - Get acquainted with the vast number of brands available for each product. Get in-depth information about them, compare the options &amp; select the product of your choice. You can also chat online with our advisors - clear queries &amp; get expert guidance. Plus there are special schemes and offers for the customers. The buying process too is very easy &amp; convenient. Every purchase comes with an assurance of timely delivery, anywhere in India. The happiness does not fade away even after the purchase. The prompt after-sales service keeps the product and your smile intact - year after year.</font></div></div><div style="text-align: justify;"><font color="#000033"><br></font></div><div><div style="text-align: justify;"><font color="#000033">RishtaBehtarZindagi se: A way of life.</font></div></div><div style="text-align: justify;"><font color="#000033"><br></font></div><div><div style="text-align: justify;"><font color="#000033">A bond with a better life, this is the philosophy that we live by and it is reflected in each and every endeavor of the company.</font></div></div><div style="text-align: justify;">&nbsp;</div></font></div></font>\r\n\r\n</font>\r\n\r\n</font>\r\n\r\n\r\n\r\n</font>\r\n\r\n\r\n\r\n'),
(2, 'contact', '\r\n<font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n\r\n <font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n <font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n <font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n <font style="font-family:Verdana, Geneva, sans-serif; color:#930;">\r\n <font style="font-family: Verdana, Geneva, sans-serif;">\r\n <font style="font-family: Verdana, Geneva, sans-serif;">\r\n <font style="font-family: Verdana, Geneva, sans-serif;">\r\n <div><b>PHP GURUKUL Shopping</b></div><div><font face="Verdana, Geneva, sans-serif" color="#000033"><br></font></div><div><font face="Verdana, Geneva, sans-serif" color="#000033">&nbsp;Address : &nbsp; &nbsp; &nbsp;New Delhi</font></div><div><font face="Verdana, Geneva, sans-serif" color="#000033"><br></font></div><div><font face="Verdana, Geneva, sans-serif" color="#000033">&nbsp;Email-Id : &nbsp; &nbsp; anuj.lpu1@gmail.com</font></div><div><font face="Verdana, Geneva, sans-serif" color="#000033"><br></font></div><div><font face="Verdana, Geneva, sans-serif" color="#000033">&nbsp;Contact No : &nbsp;+91-9999857868</font></div><div style="color: rgb(153, 51, 0);"><font face="Verdana, Geneva, sans-serif">&nbsp;</font></div></font>\r\n\r\n</font>\r\n\r\n</font>\r\n\r\n</font>\r\n\r\n</font>\r\n\r\n</font>\r\n\r\n</font>\r\n\r\n</font>\r\n\r\n\r\n\r\n'),
(3, 'Privacy&Policy', ''),
(4, 'Terms&Condition', '');

-- --------------------------------------------------------

--
-- Table structure for table `txn_status`
--

CREATE TABLE IF NOT EXISTS `txn_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `txn_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `ser_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`ser_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`ser_no`, `name`, `email`, `contact`, `password`) VALUES
(15, 'Deepesh', 'deepeshchhadva@gmail.com', '9035728726', '123'),
(16, 'bhargav', 'bhargavs2493@gmail.com', '9535357151', '123'),
(18, 'Srinivas', 'kssrinivas.097@gmail.com', '9739846990', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

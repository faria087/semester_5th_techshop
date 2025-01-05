-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 06:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_mangement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`) VALUES
(0, 'Nahianemon', 'nahianemon282@gmail.com', 'nahianemon282@');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `name` varchar(50) NOT NULL,
  `phno` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `id` int(11) NOT NULL,
  `profit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `des` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `costprice` float NOT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `des`, `quantity`, `costprice`, `image`) VALUES
(60, 'Cash / Bill/ Currency/  Note Counting Machine ', 6000, 'SToK ST-MC01 Cash / Bill / Currency/ Money / Note Counting Machine with Fake Note Detector & LED Display ', 80, 5000, ''),
(61, 'iBall Nirantar UPS-621V(600VA) Power Protection', 3000, 'iBall Nirantar UPS-621V(600VA) Power Protection', 40, 2300, ''),
(62, 'Quantum QHM7403 USB/PS2 Keyboard (Black)', 5000, 'Quantum QHM7403 USB/PS2 Keyboard (Black)', 20, 3999, ''),
(63, 'Mobitron Rugby Bluetooth Multimedia Speaker', 4999, 'Mobitron Rugby Bluetooth Multimedia Speaker (Multicolor)', 20, 2999, ''),
(64, 'Portronics POR 343 UFO Home Charger 6 Ports', 1000, 'Portronics POR 343 UFO Home Charger 6 Ports 8A Charging Station - White', 100, 800, ''),
(65, 'V-Guard Mini Crystal Voltage Stabilizer for TV', 3000, 'V-Guard Mini Crystal Voltage Stabilizer for Television (Black', 100, 2500, ''),
(67, ' Huawei Airtel 4G wifi hotspotwith any 4G network ', 4999, 'Shadow Securitronics Huawei Airtel 4G wifi hotspot unlocked works with any 4G network - WITH 1 METER CABLE & WALL CHARGER', 100, 4500, ''),
(76, 'iBall Soundwave2 2.0 Multimedia Speakers', 4000, 'iBall Soundwave2 2.0 Multimedia Speakers, Black', 29, 3499, ''),
(77, 'Leather Case Cover Stand USB Keyboard ', 500, 'PTron Universal Leather Case Cover Stand USB Keyboard for All 7-inch Tablets', 100, 459, ''),
(78, 'Sony MDRZX110 On-Ear Stereo Headphone (Black)', 1300, 'Sony MDRZX110 On-Ear Stereo Headphone (Black)', 0, 1200, ''),
(79, 'Sennheiser HD 180 Over-Ear Headphone ', 1000, 'Sennheiser HD 180 Over-Ear Headphone (Black)', 10, 8999, ''),
(80, 'Lenovo Yoga Tab 3 8 Tablet (8 inch, 16GB, )', 16000, 'Lenovo Yoga Tab 3 8 Tablet (8 inch, 16GB, Wi-Fi + 4G LTE + Voice Calling), Slate Black', 56, 14999, ''),
(81, 'Canon EOS 700D 18MP Digital SLR Camera', 45000, 'Canon EOS 700D 18MP Digital SLR Camera (Black) with 18-55mm IS II and 55-250mm IS II Lens, 8GB card and Carry Bag', 10, 42999, ''),
(82, 'Sony MDR-AS200 Clip Headphones (Blue)', 2399, 'Sony MDR-AS200 Clip On Active Sport Lightweight Angled Earbud Headphones (Blue)', 34, 2000, ''),
(83, 'iBall Excelance CompBook 11.6-inch Laptop', 10000, 'iBall Excelance CompBook 11.6-inch Laptop (Atom Z3735F/2GB/32GB/Windows 10/Integrated Graphics)', 12, 8999, ''),
(84, 'Zebronics BT4440RUCF 4.1  Bluetooth Speakers', 3000, 'Zebronics BT4440RUCF 4.1 Channel Bluetooth Speakers', 12, 2599, ''),
(85, 'Reliance JIO Jio-fi wireless Router', 2500, 'Reliance JIO Jio-fi wireless Router', 34, 2299, ''),
(86, 'Dell Inspiron 3558 Notebook laptop', 35000, 'Dell Inspiron 3558 Notebook (5th Gen Intel Core i3- 4GB RAM- 1TB HDD- 39.62 cm(15.6)- Ubuntu) (Black)', 54, 33999, ''),
(87, 'TP-Link TL-WA850RE 300Mbps Universal WiFi Range', 3000, 'TP-Link TL-WA850RE 300Mbps Universal WiFi Range Extender (White)', 76, 2399, ''),
(88, 'Clublaptop Reversible 15.6-inch Laptop Sleeve', 500, 'Clublaptop Reversible 15.6-inch Laptop Sleeve', 76, 239, ''),
(89, 'YU YUNIQUE YU4711 Smartphone (Black)', 5500, 'YU YUNIQUE YU4711 Smartphone (Black)', 78, 4599, ''),
(90, 'Strontium Ammo 16GB USB Pen Drive', 1000, 'Strontium Ammo 16GB USB Pen Drive', 23, 799, ''),
(91, 'Intex JOIN-IT 2.0 Multimedia Speaker', 650, 'Intex JOIN-IT 2.0 Multimedia Speaker', 43, 539, ''),
(92, 'MacBook Pro 13.3\" Case. Laptop cover', 1200, 'MacBook Pro 13.3\" Case. Laptop Frosted Matte Rubberized Hard Cover Case Skin+Silicon Keyboard Cover', 23, 1000, ''),
(93, 'Intex IT-HP904FM Over-Ear Headphones (Black)', 900, 'Intex IT-HP904FM Over-Ear Headphones (Black)', 7, 789, ''),
(94, 'WireSwipe™ HDMI Male to HDMI Male Cable ', 500, 'WireSwipe™ HDMI Male to HDMI Male Cable TV Lead 1.4V High Speed Ethernet 3D Full HD 1080p (1.5 meter)', 34, 349, ''),
(95, 'Wayona Wifi Adapter', 1000, '\r\nRoll over image to zoom in\r\nWayona WYN 12 150Mbps 1T1R 2.4Ghz 802.11n/g/b Soft AP Wireless Mini USB Wifi Adapter', 23, 567, ''),
(96, 'Quantam QHMPL QHM7468 USB Vibration Game', 500, 'Quantam QHMPL QHM7468 USB Vibration Game Pad Remote Joystick', 23, 349, ''),
(97, 'HDD WD Seagate hard disk cover', 500, 'Technotech WD Hard Disk Drive Pouch case for 2.5\" HDD WD Seagate Slim Sony Dell Toshiba (Black)\r\n', 12, 349, ''),
(98, 'Netgear WNR614 N300 Wi-Fi Router (White)', 1500, 'Netgear WNR614 N300 Wi-Fi Router (White)', 87, 1299, ''),
(99, 'Air 13\" 13-Inch Mint Green Cover', 1000, 'Air 13\" 13-Inch Mint Green Rubberized Hard Case Cover For Macbook Air 13\" 13.3\" 13-Inch Shell Cover Case', 32, 567, ''),
(100, 'Fitbit Charge 2 Wireless Activity Tracker ', 15000, 'Fitbit Charge 2 Wireless Activity Tracker and Sleep Wristband (Large, Black/Silver)', 45, 13999, ''),
(101, 'CNCT Heavy Duty(Weight Capacity-15 KG)  Single Arm', 600, 'CNCT Heavy Duty (Weight Capacity - 15 KG) Wall Mount / Bracket / Stand Single Arm for upto 27\" LCD - LED - OLED TV with Maximum VESA 100 MM - Supports Displays - Monitors ', 23, 457, ''),
(102, '15 PIN MALE TO MALE VGA CABLE 1.5 Meter', 500, '15 PIN MALE TO MALE VGA CABLE 1.5 Meter', 57, 455, ''),
(103, 'JunkYard Laptop Skins 15.6 inch-Batman VS Superman', 500, 'JunkYard Laptop Skins 15.6 inch - Batman VS Superman - Movie Skins - HD Quality - Dell', 23, 450, ''),
(104, 'Kaspersky Anti-Virus 2016 new for 1 pc,1 year (CD)', 1000, 'Kaspersky Anti-Virus 2016 - 1 PC, 1 Year (CD)', 87, 879, ''),
(105, 'ESET NOD32 Antivirus 2016 Edition ', 599, 'ESET NOD32 Antivirus 2016 Edition ', 98, 450, ''),
(106, 'Bluetooth Receiver Adapter ', 599, 'Bluetooth Receiver Adapter ', 76, 459, ''),
(107, 'Samsung 18.5 Super Slim LED Monitor ', 6000, 'Samsung 18.5 Super Slim LED Monitor ', 9, 5699, ''),
(108, 'Micromax 46.99 cm (18.5) MM185H65 Monitor', 5500, 'Micromax 46.99 cm (18.5) MM185H65 Monitor', 45, 5199, ''),
(109, 'BRAND NEW DESKTOP CPU', 4000, 'BRAND NEW DESKTOP COMPUTER', 8, 3499, ''),
(110, 'HP Slimline 260-A062IL CPU', 6000, 'HP Slimline 260-A062IL', 56, 5499, ''),
(111, 'high configuration CORE 2 CPU', 6799, 'HIGH CONFIGURATION CORE 2', 34, 6199, ''),
(112, 'Circle LIL Desktop Computer', 3000, 'Circle LIL Desktop Computer', 0, 2699, ''),
(113, 'CPU COMPUTER Intel Core i5-650', 2500, 'CPU COMPUTER Intel Core i5-650', 65, 2199, ''),
(114, 'Wi-Fi Range Extender ', 2900, 'Wi-Fi Range Extender ', 34, 2599, ''),
(115, 'Bluetooth Smart Wrist Watch', 1900, 'Bluetooth Smart Wrist Watch', 9, 1599, ''),
(116, 'SanDisk Connect Wireless Stick', 999, 'SanDisk Connect Wireless Stick', 45, 789, ''),
(117, 'Technotech 3 Pin Computer Power Cord Cable', 999, 'Technotech 3 Pin Computer Power Cord Cable', 76, 789, ''),
(118, 'Logitech C310 HD Webcam', 2100, 'Logitech C310 HD Webcam', 87, 1799, ''),
(119, 'Netgear EX2700 N300 Wi-Fi Range Extender', 899, 'Netgear EX2700 N300 Wi-Fi Range Extender', 44, 678, ''),
(120, 'V-Guard VG 50 Voltage Stabilizer', 1199, 'V-Guard VG 50 Voltage Stabilizer', 87, 999, ''),
(121, 'Tenda A301 Wireless N300 ', 2999, 'Tenda A301 Wireless N300 ', 98, 2599, ''),
(122, 'Usb Type-C Cable 100cm', 888, 'Usb Type-C Cable 100cm', 67, 599, ''),
(123, 'TP-Link TL-WA850RE 300Mbps', 899, 'TP-Link TL-WA850RE 300Mbps', 87, 699, ''),
(124, 'CE-101L 3 PIN CONVERSION PLUG 5', 200, 'CE-101L 3 PIN CONVERSION PLUG 5', 32, 149, ''),
(125, 'Intex Fitrist Health Band', 999, 'Intex Fitrist Health Band', 0, 799, ''),
(126, 'Unique Gadget Card Reader ', 499, 'Unique Gadget Card Reader ', 76, 399, ''),
(127, 'Zebronics  Bluetooth Headset', 499, 'Zebronics ZEB-BH498 Wireless Bluetooth Headset', 45, 399, ''),
(128, 'Corsair VS Series VS450', 2999, 'Corsair VS Series VS450', 46, 2019, ''),
(129, 'Ultrascan Decoding Technology', 2500, 'Ultrascan Decoding Technology', 0, 1999, ''),
(130, 'Logitech Wireless presenter', 4499, 'Logitech Wireless presenter', 21, 3999, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` text NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `password`, `phone_number`, `Address`) VALUES
(8, 'nahian', 'emon', 'nahianemon82@gmail.com', 'nahianemon282', '01989732205', 'badda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `name_2` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

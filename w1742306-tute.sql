-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 at 10:18 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w1742306-tute`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNo` int(4) NOT NULL,
  `userId` int(4) NOT NULL,
  `orderDateTime` datetime NOT NULL,
  `orderTotal` decimal(8,2) NOT NULL DEFAULT 0.00,
  `orderStatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNo`, `userId`, `orderDateTime`, `orderTotal`, `orderStatus`) VALUES
(1, 8, '2020-03-26 17:55:16', '0.00', 'Placed'),
(17, 10, '2020-03-26 20:25:32', '432799.98', 'Collected'),
(20, 15, '2020-04-03 16:52:00', '400969.99', 'Placed'),
(21, 1, '2020-04-03 16:54:10', '2269.36', 'Placed');

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `oderLineId` int(4) NOT NULL,
  `orderNo` int(4) NOT NULL,
  `prodId` int(4) NOT NULL,
  `quantityOrdered` int(4) NOT NULL,
  `subTotal` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`oderLineId`, `orderNo`, `prodId`, `quantityOrdered`, `subTotal`) VALUES
(5, 17, 1, 1, '181799.99'),
(6, 17, 4, 1, '250999.99'),
(13, 20, 8, 3, '149970.00'),
(14, 20, 4, 1, '250999.99'),
(15, 21, 1, 1, '567.34'),
(16, 21, 2, 3, '1702.02');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodId` int(4) NOT NULL,
  `prodName` varchar(30) NOT NULL,
  `prodPicNameSmall` varchar(100) NOT NULL,
  `prodPicNameLarge` varchar(100) NOT NULL,
  `prodDescripShort` varchar(1000) DEFAULT NULL,
  `prodDescripLong` varchar(3000) DEFAULT NULL,
  `prodPrice` decimal(8,2) NOT NULL,
  `prodQuantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodId`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`, `prodQuantity`) VALUES
(1, 'Bosch Serie 6 9KG', 'washingMachine.jpg', 'washingMachine.jpg', 'Professional high-end gamer. Thanks to a hexa-core processor and GeForce RTX 2080 GPU, the G703GX brings all the current games smoothly to the matte 144-Hz IPS screen. We also like the rest of the equipment: an NVMe SSD, SSHD, 32 GB of RAM, and Thunderbolt 3. If needed, you could still upgrade the working memory and storage media.', 'The Asus G703GX belongs to the high-end gaming notebooks in the 17.3-inch format. The inside of the notebook is filled with the most current technology: a Coffee-Lake hexa-core processor, an NVMe SSD, Thunderbolt 3, and a brand-new GeForce RTX 2080 graphics core. The notebook is not unknown to us. With the Asus ROG Chimera G703GI and the Asus ROG Chimera G703, we already tested two similar predecessors, with the 703GI being its direct predecessor. While that is also equipped with a Coffee-Lake processor, the GPU is a GeForce GTX 1080. The competitors of the G703GX include devices like the Acer Predator Helios 500 PH517-51, the Schenker XMG Ultra 17, and the Aorus X7 DT v8.', '567.34', 7),
(2, 'Asus-g703gx', 'asus-g703gx-s.jpg', 'asus-g703gx-s.jpg', 'Professional high-end gamer. Thanks to a hexa-core processor and GeForce RTX 2080 GPU, the G703GX brings all the current games smoothly to the matte 144-Hz IPS screen. We also like the rest of the equipment: an NVMe SSD, SSHD, 32 GB of RAM, and Thunderbolt 3. If needed, you could still upgrade the working memory and storage media.', 'The Asus G703GX belongs to the high-end gaming notebooks in the 17.3-inch format. The inside of the notebook is filled with the most current technology: a Coffee-Lake hexa-core processor, an NVMe SSD, Thunderbolt 3, and a brand-new GeForce RTX 2080 graphics core. The notebook is not unknown to us. With the Asus ROG Chimera G703GI and the Asus ROG Chimera G703, we already tested two similar predecessors, with the 703GI being its direct predecessor. While that is also equipped with a Coffee-Lake processor, the GPU is a GeForce GTX 1080. The competitors of the G703GX include devices like the Acer Predator Helios 500 PH517-51, the Schenker XMG Ultra 17, and the Aorus X7 DT v8.', '567.34', 5),
(3, 'LG Smart TV', 'smartTV.jpg', 'smartTV.jpg', 'Enjoy LG 32? HD Smart LED TV\r\nModel No: LG Smart 32LJ610D\r\n\r\nEnjoy The Smart Experience\r\nHD Smart TV\r\nWebOS 3.5\r\nIPS Panel\r\nMagic Remote\r\nSingle Click Access', 'Get LG UHD smart TVs from Abans with the next-gen features. Cinematic 4K UHD, WebOS, Smart Magic Remote, Dolby Surround Sound. WebOS + Magic Remote. Cinematic 4K Experience. Smart TV. Ultra HD. Brands: Abans LG Next is Now, Smart UHD TV.Get LG UHD smart TVs from Abans with the next-gen features. Cinematic 4K UHD, WebOS, Smart Magic Remote, Dolby Surround Sound. WebOS + Magic Remote. Cinematic 4K Experience. Smart TV. Ultra HD. Brands: Abans LG Next is Now, Smart UHD TV.Get LG UHD smart TVs from Abans with the next-gen features. Cinematic 4K UHD, WebOS, Smart Magic Remote, Dolby Surround Sound. WebOS + Magic Remote. Cinematic 4K Experience. Smart TV. Ultra HD. Brands: Abans LG Next is Now, Smart UHD TV.Get LG UHD smart TVs from Abans with the next-gen features. Cinematic 4K UHD, WebOS, Smart Magic Remote, Dolby Surround Sound. WebOS + Magic Remote. Cinematic 4K Experience. Smart TV. Ultra HD. Brands: Abans LG Next is Now, Smart UHD TV.', '300.00', 6),
(4, 'msi-gs75', 'Firdge.jpg', 'Firdge.jpg', 'With the freezer on the left, the refrigerator on the right, the LG double door fridge brings innovation and style to your kitchen like never before.', 'Expand your vision across multiple display with HDMI and Thunderbolt 3\r\nand enjoy up to 4K (3840x2160) resolution output for some extra productivity and fun.\r\nat 60Hz for some extra productivity and fun.The newly designed Whirlwind Blade fans effectively increase air pressure and airflow at the same RPM.\r\nIndependent thermal solution for both CPU and GPU ensures the best gaming performance, even under extreme loads.', '250999.99', 2),
(5, 'iPad-pro-18-s', 'iPad-pro-18-s.jpg', 'iPad-pro-18-s.jpg', 'The iPad Pro family is a line of iPad tablet computers designed, developed, and marketed by Apple Inc., that runs the iOS and iPadOS mobile operating systems. Its current generation is available in two screen sizes, 11-inch (28 cm) and 12.9-inch (33 cm),[12] each with four options for internal storage capacities: 64, 256, 512 GB, and 1 TB.', 'Features 12.9? IPS LCD display, Apple A12X Bionic chipset, 9720 mAh battery, 1024 GB ... Also known as Apple iPad Pro (12.9-inch, 3rd generation) ... 14(700), 17(700), 18(800), 19(800), 20(800), 21(1500), 25(1900), 26(850), 29(700), 30(2300), ... We can not guarantee that the information on this page is 100% correct.', '348234.76', 5),
(6, 'lenovo-330s', 'lenovo-330s-l.jpg', 'lenovo-330s-l.jpg', 'Meet the Ideapad 330S. Thinner & lighter with narrow bezels for broader viewing, it boasts state-of-the-art processing and accelerated graphics performance. Power through any task with ease.', 'Featuring a streamlined chassis with a polished aluminum cover, the Ideapad 330S is designed to make an impression. Choose from four sophisticated tone-on-tone color options to make it yours.\r\n\r\nKeep moving\r\nWith up to seven hours* of battery life, the Ideapad 330S will easily go wherever your day takes you.\r\n\r\n*Based on testing with MobileMark 2014. Battery life varies significantly with settings, usage, & other factors.\r\n\r\nLenovo Ideapad 330S (14, AMD), left top view laying flat.\r\nAmp up your productivity\r\nThe latest generation of Intel® Core™ i7 processing offers up to a 40 percent improvement in performance,* with unprecedented gaming capabilities, theater-like entertainment, faster boot-ups, and seamless multi-tasking.\r\n\r\n*Software and workloads used in performance tests may have been optimized for performance only on Intel® microprocessors. Performance tests are measured using specific computer systems, components, software, operations, and functions. Any change to any of those factors may cause the results to vary.', '176000.34', 4),
(7, 'Amazon Echo', 'echo.jfif', 'echo.jfif', 'Amazon Echo is a hands-free speaker you control with your voice. Echo connects to the Alexa Voice Service to play music, make calls, send and receive messages, provide information, news, sports scores, weather, and moreâ€”instantly. All you have to do is ask.', 'Plays all your music from Amazon Music, Spotify, Pandora, iHeartRadio, TuneIn, and more using just your voice Call or message anyone hands-free with your Echo device. Also, instantly connect to other Echo devices in your home using just your voice. Fills the room with immersive, 360? omni-directional audio. Play music simultaneously across Echo devices with multi-room music (Spotify and Sirius XM support coming soon). Hears you from across the room with far-field voice recognition, even while music is playing Answers questions, reads the news, reports traffic and weather, reads audiobooks from Audible, gives info on local businesses, provides sports scores and schedules, controls Amazon Video on Fire TV, and more using the Alexa Voice Service Controls lights, fans, TVs, switches, thermostats, garage doors, sprinklers, locks, and more with compatible connected devices from WeMo, Philips Hue, Sony, Samsung SmartThings, Nest, and others Always getting smarter and adding new features, plus thousands of skills lik', '8900.00', 10),
(8, 'LG Microwave Oven 32L', 'micro.jpg', 'micro.jpg', 'The Charcoal Lighting Heaterâ„¢ enables you to cook with a revolutionary charcoal filament for tastier, all natural, deep even cooking in a shorter time. Charcoal heating is a Worldâ€™s 1st heating grill that enhances Water heat absorption, cooking more naturally and efficiently compared to conventional sheath, like Real Charcoal grilling. ', 'Indian food is delicious, but traditional cooking methods involve deep-frying that   turns your favorite snacks into unhealthy food. But now you can enjoy these crispy delights without worrying about all that oil playing havoc with your health. Thatâ€™s because the Diet Fryâ„¢ feature in LG Microwave Ovens lets you prepare these dishes with minimum use of oil. So now dig into those samosas, gujiyas, pakoras andmore without feeling guilty!  Now you can prepare a variety of exotic Indian rotis at the touch of a button. The wide variety of recipes in the Indian Roti Basket* lets you prepare delicious Naans, Lachcha Paranthas, Tandoori Rotis, Thepla, Missi Rotis, Appams easily. When it is possible to prepare all this at home, why would you want to eat out any more! ', '49990.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(4) NOT NULL,
  `userType` varchar(1) NOT NULL,
  `userFName` varchar(50) NOT NULL,
  `userSName` varchar(50) NOT NULL,
  `userAddress` varchar(50) NOT NULL,
  `userPostCode` varchar(50) NOT NULL,
  `userTelNo` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userType`, `userFName`, `userSName`, `userAddress`, `userPostCode`, `userTelNo`, `userEmail`, `userPassword`) VALUES
(1, '', 'shenal', 'anthony', 'colombo', '10100', '0112956332', 'yyyyyyy@gmail.com', 'aaa'),
(8, '', 'lahiru', 'rukshan', 'colombo', '10100', '0112956332', 'lahiru@gmail.com', 'as'),
(10, 'C', 'shenal', 'anthony', 'colombo', '10100', '0112956332', 'shenaljoes99@gmail.com', 'asjc'),
(11, 'C', 'lahiru', 'bhagya', 'kuliyapitiya', '330', '567890', 'ruk@gmail.com', 'jk'),
(13, 'A', 'Shane', 'Perera', 'Kurunagala', '30000', '0112956345', 'shaneperera98@gmail.com', 'shane'),
(15, 'C', 'Sheneli', 'Anthony', 'Ragama', '10100', '0112956332', 'shenalanthony99@gmail.com', 'asjc5555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNo`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`oderLineId`),
  ADD KEY `orderNo` (`orderNo`),
  ADD KEY `prodId` (`prodId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderNo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `oderLineId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `order_line_ibfk_1` FOREIGN KEY (`orderNo`) REFERENCES `orders` (`orderNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_line_ibfk_2` FOREIGN KEY (`prodId`) REFERENCES `product` (`prodId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

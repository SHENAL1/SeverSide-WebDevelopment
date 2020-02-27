-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2020 at 05:03 PM
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
-- Database: `product`
--

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
(1, 'asus-g703gx', 'asus-g703gx-l.jpg', 'asus-g703gx-l.jpg', 'Professional high-end gamer. Thanks to a hexa-core processor and GeForce RTX 2080 GPU, the G703GX brings all the current games smoothly to the matte 144-Hz IPS screen. We also like the rest of the equipment: an NVMe SSD, SSHD, 32 GB of RAM, and Thunderbolt 3. If needed, you could still upgrade the working memory and storage media.', 'The Asus G703GX belongs to the high-end gaming notebooks in the 17.3-inch format. The inside of the notebook is filled with the most current technology: a Coffee-Lake hexa-core processor, an NVMe SSD, Thunderbolt 3, and a brand-new GeForce RTX 2080 graphics core. The notebook is not unknown to us. With the Asus ROG Chimera G703GI and the Asus ROG Chimera G703, we already tested two similar predecessors, with the 703GI being its direct predecessor. While that is also equipped with a Coffee-Lake processor, the GPU is a GeForce GTX 1080. The competitors of the G703GX include devices like the Acer Predator Helios 500 PH517-51, the Schenker XMG Ultra 17, and the Aorus X7 DT v8.', '181799.99', 6),
(2, 'asus-g703gx', 'asus-g703gx-s.jpg', '', 'Professional high-end gamer. Thanks to a hexa-core processor and GeForce RTX 2080 GPU, the G703GX brings all the current games smoothly to the matte 144-Hz IPS screen. We also like the rest of the equipment: an NVMe SSD, SSHD, 32 GB of RAM, and Thunderbolt 3. If needed, you could still upgrade the working memory and storage media.', 'The Asus G703GX belongs to the high-end gaming notebooks in the 17.3-inch format. The inside of the notebook is filled with the most current technology: a Coffee-Lake hexa-core processor, an NVMe SSD, Thunderbolt 3, and a brand-new GeForce RTX 2080 graphics core. The notebook is not unknown to us. With the Asus ROG Chimera G703GI and the Asus ROG Chimera G703, we already tested two similar predecessors, with the 703GI being its direct predecessor. While that is also equipped with a Coffee-Lake processor, the GPU is a GeForce GTX 1080. The competitors of the G703GX include devices like the Acer Predator Helios 500 PH517-51, the Schenker XMG Ultra 17, and the Aorus X7 DT v8.', '179999.99', 4),
(3, 'msi-gs75', '', 'msi-gs75-l.jpg', 'The latest thin Bezel design not only offers immersive visual, but also fits a bigger display in a compact and small form factor. A perfect fit for your mobile experience.', 'Expand your vision across multiple display with HDMI and Thunderbolt 3\r\nand enjoy up to 4K (3840x2160) resolution output for some extra productivity and fun.\r\nat 60Hz for some extra productivity and fun.The newly designed Whirlwind Blade fans effectively increase air pressure and airflow at the same RPM.\r\nIndependent thermal solution for both CPU and GPU ensures the best gaming performance, even under extreme loads.', '244599.99', 3),
(4, 'msi-gs75', 'msi-gs75-s.jpg', '', 'The latest thin Bezel design not only offers immersive visual, but also fits a bigger display in a compact and small form factor. A perfect fit for your mobile experience.', 'Expand your vision across multiple display with HDMI and Thunderbolt 3\r\nand enjoy up to 4K (3840x2160) resolution output for some extra productivity and fun.\r\nat 60Hz for some extra productivity and fun.The newly designed Whirlwind Blade fans effectively increase air pressure and airflow at the same RPM.\r\nIndependent thermal solution for both CPU and GPU ensures the best gaming performance, even under extreme loads.', '250999.99', 2),
(5, 'iPad-pro-18-s', 'iPad-pro-18-s.jpg', '', 'The iPad Pro family is a line of iPad tablet computers designed, developed, and marketed by Apple Inc., that runs the iOS and iPadOS mobile operating systems. Its current generation is available in two screen sizes, 11-inch (28 cm) and 12.9-inch (33 cm),[12] each with four options for internal storage capacities: 64, 256, 512 GB, and 1 TB.', 'Features 12.9? IPS LCD display, Apple A12X Bionic chipset, 9720 mAh battery, 1024 GB ... Also known as Apple iPad Pro (12.9-inch, 3rd generation) ... 14(700), 17(700), 18(800), 19(800), 20(800), 21(1500), 25(1900), 26(850), 29(700), 30(2300), ... We can not guarantee that the information on this page is 100% correct.', '348234.76', 5),
(6, 'lenovo-330s', '', 'lenovo-330s-l.jpg', 'Meet the Ideapad 330S. Thinner & lighter with narrow bezels for broader viewing, it boasts state-of-the-art processing and accelerated graphics performance. Power through any task with ease.', 'Featuring a streamlined chassis with a polished aluminum cover, the Ideapad 330S is designed to make an impression. Choose from four sophisticated tone-on-tone color options to make it yours.\r\n\r\nKeep moving\r\nWith up to seven hours* of battery life, the Ideapad 330S will easily go wherever your day takes you.\r\n\r\n*Based on testing with MobileMark 2014. Battery life varies significantly with settings, usage, & other factors.\r\n\r\nLenovo Ideapad 330S (14, AMD), left top view laying flat.\r\nAmp up your productivity\r\nThe latest generation of Intel® Core™ i7 processing offers up to a 40 percent improvement in performance,* with unprecedented gaming capabilities, theater-like entertainment, faster boot-ups, and seamless multi-tasking.\r\n\r\n*Software and workloads used in performance tests may have been optimized for performance only on Intel® microprocessors. Performance tests are measured using specific computer systems, components, software, operations, and functions. Any change to any of those factors may cause the results to vary.', '176000.34', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

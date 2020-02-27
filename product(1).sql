-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2020 at 06:06 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w1742306_tute1`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `proId` int(4) NOT NULL,
  `prodname` varchar(30) NOT NULL,
  `prodPicNameSmall` varchar(100) NOT NULL,
  `prodPicNameLarge` varchar(100) NOT NULL,
  `prodDescriShort` varchar(1000) DEFAULT NULL,
  `prodDescripLong` varchar(3000) DEFAULT NULL,
  `prodPrice` decimal(6,2) NOT NULL,
  `prodQuantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`proId`, `prodname`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescriShort`, `prodDescripLong`, `prodPrice`, `prodQuantity`) VALUES
(1, 'asus-g703gx-l', '', 'asus-g703gx-l.jpg', 'The G703 raises the bar for Windows 10 Pro gaming, \r\ntaking on today’s gaming desktops with its powerful factory-overclocked 9th Gen Intel® Core™ i9 processor and \r\nNVIDIA® GeForce RTX™ 2080 GPU. Its IPS-level, 144Hz/3ms display makes intense in-game encounters look \r\nsmooth and crisp.\r\n', 'G-SYNC™ enhances your gaming experience even more by eliminating visual tear and minimizing stuttering,\r\n while switching to Optimus mode enables better battery life for everyday tasks. Three NVMe® PCI Express® SSDs running in \r\nRAID 0 offer the speediest laptop storage available, giving you fast access to your full game library anywhere you go, \r\nwhile 2.5G Ethernet and Intel Gigabit Wi-Fi raise the stakes for networking.', '9999.99', 6),
(2, 'lenovo-330s-l', '', 'lenovo-330s-l.jpg', 'Meet the Ideapad 330S. Thinner & lighter with narrow bezels for broader viewing, it boasts state-of-the-art processing and accelerated graphics performance. Power through any task with ease.', 'The Ideapad 330S can be customized to fit all your storage needs: Up to 2 TB SATA HDD stores thousands of videos, photos and files. A responsive PCIe SSD—up to 256 GB—features shorter boot-up times and faster data transfer speeds. And 128 GB PCIe SSD + 1 TB SATA HDD hybrid storage offers the best of both options.', '9999.99', 5),
(3, 'msi-gs75-l', '', 'msi-gs75-l.jpg', 'NVIDIA GeForce RTX delivers the ultimate laptop gaming experience. These sleek, powerful gaming rigs are powered by the new NVIDIA Turing GPU architecture and the revolutionary RTX platform. RTX graphics bring together real-time ray tracing, artificial intelligence, and programmable shading.', 'Up to latest 8th Gen Intel® Core™ i7 processor\r\nWindows 10 Home / Windows 10 Pro\r\nUp to GeForce® RTX 2080 8GB GDDR6 with Max-Q Design\r\n17.3\" Full HD (1920x1080), 144Hz, IPS-level gaming display (Optional)\r\n4-sided thin bezel design\r\nUltra-thin 18.95mm, ultra-light 2.25 kg\r\nDragon Center with exclusive gaming mode\r\nPer-Key RGB gaming keyboard by SteelSeries with Silver-Lining Print\r\nProductivity 8+ hours battery life\r\nSilky smooth touchpad with multi-touch gesture\r\nSound by Dynaudio with passive radiator design and High-Resolution Audio ready', '9999.99', 4),
(4, 'asus-g703gx-s', 'asus-g703gx-s.jpg', '', 'Professional high-end gamer. Thanks to a hexa-core processor and GeForce RTX 2080 GPU, the G703GX brings all the current games smoothly to the matte 144-Hz IPS screen. We also like the rest of the equipment: an NVMe SSD, SSHD, 32 GB of RAM, and Thunderbolt 3. If needed, you could still upgrade the working memory and storage media.', 'The Asus G703GX belongs to the high-end gaming notebooks in the 17.3-inch format. The inside of the notebook is filled with the most current technology: a Coffee-Lake hexa-core processor, an NVMe SSD, Thunderbolt 3, and a brand-new GeForce RTX 2080 graphics core. The notebook is not unknown to us. With the Asus ROG Chimera G703GI and the Asus ROG Chimera G703, we already tested two similar predecessors, with the 703GI being its direct predecessor. While that is also equipped with a Coffee-Lake processor, the GPU is a GeForce GTX 1080. The competitors of the G703GX include devices like the Acer Predator Helios 500 PH517-51, the Schenker XMG Ultra 17, and the Aorus X7 DT v8.', '9999.99', 0),
(5, 'iPad-pro-18-s', 'iPad-pro-18-s.jpg', '', 'The iPad Pro 11-inch is excellent, and easily the best tablet Apple has ever made – but you\'ll need to know how to get the best out of it. It\'s designed for the professional, and those in creative lines of work will love the power, precision and overall quality on offer. If you\'re a \'standard\' user, then you\'ll be buying the iPad Pro as a luxury device and media powerhouse – and you\'ll be paying for the privilege.', 'Ever since the original iPad Pro, Apple needed to improve on its formula, and the iPad Pro 11 (2018) is the tablet it always set out to make. With a smaller frame but larger screen, bags of power, and a new redesigned Apple Pencil, this is the new face of Apple\'s slate game.\r\n\r\nApple needed to make these improvements so the iPad Pro 11 could be the true device for a professional user, and it seems the company has delivered. So here we are with the iPad Pro 11-inch (or iPad Pro 11, to you and us), which aims to fix the various issues the first Pros had. There\'s also the iPad Pro 12.9, with a screen that\'s a little bigger, for those of you who need extra screen real estate.', '9999.99', 5),
(6, 'msi-gs75-s', 'msi-gs75-s.jpg', '', 'Power up with 40% performance gains over the previous generation with the extra cores.', 'The premium glass touchpad comes with an enlarged surface area and an extremely smooth finish, perfect for all your for click, scroll, and multi-touch gesture needs.Have all you games and data on-the-go with up to 3 M.2 SSD storage slots,\r\nall within a slim and sleek chassis.', '9999.99', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`proId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `proId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

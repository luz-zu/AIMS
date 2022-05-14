-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for hamro_agriculture
CREATE DATABASE IF NOT EXISTS `hamro_agriculture` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `hamro_agriculture`;

-- Dumping structure for table hamro_agriculture.admin_details
CREATE TABLE IF NOT EXISTS `admin_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table hamro_agriculture.admin_details: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
INSERT INTO `admin_details` (`id`, `name`, `email`, `password`) VALUES
	(1, 'Lujana Bajracharya', 'lujanabajra@gmail.com', '654321');
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;

-- Dumping structure for table hamro_agriculture.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `blog_title` longtext DEFAULT NULL,
  `blog_description` longtext DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table hamro_agriculture.blog: ~6 rows (approximately)
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`id`, `name`, `blog_title`, `blog_description`, `updated_on`) VALUES
	(17, 'Lujana Bajracharya', 'Fridays on the Farm: Evolving and Diversifying for the Future', 'This Friday meet Forrest Pritchard, owner of Smithfield Farm in Clarke County, Virginia. Forrest is a seventh-generation farmer raising cattle, swine, sheep, and chickens on land that has been a part of his family’s history since 1816. Life on the farm has certainly changed a lot since then.\r\n\r\nDiversifying the operation has been a priority for Forrest. In addition to supplying meats to subscribers and his farm store, he owns and operates a bed-and-breakfast on the property, as well as a farm-to-table restaurant in downtown Berryville.\r\n\r\nA New Game Plan\r\n\r\n“When I got out of college in the mid-1990s, we pivoted away from a commodity-based farm into a completely grass-based pasture-intensive system,” said Forrest.\r\n\r\nHis mother, Ruth, established the family’s initial relationship with USDA’s Natural Resources Conservation Service. As he became more comfortable in his role as farm manager, Forrest reached out to NRCS conservationists in the Strasburg field office for assistance in addressing resource concerns on the land. His goals were to enhance soil health and to improve water quality in Long Marsh Run, a stream that flows through his property.\r\n\r\nForrest recalled that his pastures initially tested at 1.8 percent organic content, which is less than half the usual 5 percent usually regarded as sufficient for a grazing operation. His cattle were free to wander in and out of the stream as they pleased. Changes needed to be made and time mattered.', '2022-05-09 11:37:38'),
	(21, 'Lujana Bajracharya', 'Fridays on the Farm: Evolving and Diversifying', 'This Friday meet Forrest Pritchard, owner of Smithfield Farm in Clarke County, Virginia. Forrest is a seventh-generation farmer raising cattle, swine, sheep, and chickens on land that has been a part of his family’s history since 1816. Life on the farm has certainly changed a lot since then.\r\n\r\nDiversifying the operation has been a priority for Forrest. In addition to supplying meats to subscribers and his farm store, he owns and operates a bed-and-breakfast on the property, as well as a farm-to-table restaurant in downtown Berryville.\r\n\r\nA New Game Plan\r\n\r\n“When I got out of college in the mid-1990s, we pivoted away from a commodity-based farm into a completely grass-based pasture-intensive system,” said Forrest.\r\n\r\nHis mother, Ruth, established the family’s initial relationship with USDA’s Natural Resources Conservation Service. As he became more comfortable in his role as farm manager, Forrest reached out to NRCS conservationists in the Strasburg field office for assistance in addressing resource concerns on the land. His goals were to enhance soil health and to improve water quality in Long Marsh Run, a stream that flows through his property.\r\n\r\nForrest recalled that his pastures initially tested at 1.8 percent organic content, which is less than half the usual 5 percent usually regarded as sufficient for a grazing operation. His cattle were free to wander in and out of the stream as they pleased. Changes needed to be made and time mattered.', '2022-05-09 11:38:44'),
	(22, 'Lujana Bajracharya', 'In Nepal, a messy breakup with hybrid seeds is good news for organic farming', 'Some farmers in Nepal are slowly returning to organic farming methods using native crop varieties, after more than a decade of hybrid seeds being available in the market.\r\nCritics say hybrids require more intensive use of chemical fertilizers and pesticides, and produce fruit and vegetables with less flavor than native or openly pollinated varieties.\r\nThe government is also supporting the push for organic, including through subsidies for farmers, but acknowledges it’s difficult to change minds.\r\nMany farmers continue to prefer hybrids, despite the associated problems, because of their higher yields, which mean more income.\r\nKAVREPALANCHOK, Nepal — Ram Shrestha is spraying pesticide on his potato plants next to a paved road. The cracked earth seems lifeless here in this part of Kavrepalanchok district, a couple of hours’ drive east of Kathmandu, Nepal’s capital.\r\n\r\nSince 2004, farmers here and elsewhere in Nepal have sown hybrid seeds distributed by Monsanto, and increasingly from producers in neighboring India and China. They’ve also had to use more chemical fertilizers and pesticides in the process — something that critics of hybrid and genetically modified seeds, also known as GMO seeds, say is common where these varieties of crops are cultivated.\r\n\r\n“I know it’s bad to use it,” Ram says, “but if I don’t spray, there won’t be any potatoes at all.”', '2022-05-09 11:46:56'),
	(23, 'Lujana Bajracharya', 'test', 'test2', '2022-05-09 11:46:57'),
	(24, 'Lujana Bajracharya', 'test', 'testing 123 hello ', '2022-05-09 11:46:27'),
	(25, 'Lujana Bajracharya', 'AIMS achievements', 'abcdefg', '2022-05-09 14:45:17');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Dumping structure for table hamro_agriculture.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table hamro_agriculture.contact: ~1 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`id`, `username`, `phonenumber`, `email`, `message`, `time`) VALUES
	(1, 'Lujana', '9863196948', 'lujanabajra@gmail.com', 'Nice work', '2022-05-09 14:28:29');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

-- Dumping structure for table hamro_agriculture.crop_details
CREATE TABLE IF NOT EXISTS `crop_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `crop_name` varchar(50) DEFAULT NULL,
  `crop_image` varchar(255) DEFAULT NULL,
  `production` varchar(50) DEFAULT NULL,
  `growth_status` varchar(50) DEFAULT NULL,
  `fertilizers_used` varchar(50) DEFAULT NULL,
  `reproduction_type` varchar(50) DEFAULT NULL,
  `crop_cycle` varchar(50) DEFAULT NULL,
  `seasons` varchar(50) DEFAULT NULL,
  `market_rate` varchar(50) DEFAULT '10',
  `farmer_rate` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table hamro_agriculture.crop_details: ~10 rows (approximately)
/*!40000 ALTER TABLE `crop_details` DISABLE KEYS */;
INSERT INTO `crop_details` (`id`, `username`, `crop_name`, `crop_image`, `production`, `growth_status`, `fertilizers_used`, `reproduction_type`, `crop_cycle`, `seasons`, `market_rate`, `farmer_rate`, `province`, `time`) VALUES
	(1, 'Lujana', 'Rice', 'rice.jpg', '15', 'Slow', 'Organic', 'Sexual', 'Annual', 'Summer', '10', '1500', '2', '2022-05-08 05:58:12'),
	(2, 'magus4450', 'Buck Wheat', 'barley.jpg', '20', 'Normal', 'Good', 'Asexual', 'Annual', 'Summer', '10', '1500', '3', '2022-05-08 13:34:05'),
	(3, 'Lujana', 'Apricot', 'apricot.jpg', '10', 'Normal', 'Inorganic', 'Asexual', 'Annual', 'Summer', '10', '200', '2', '2022-05-09 02:42:26'),
	(4, 'Lujana', 'Avocado', 'avocado.jpg', '20', 'Normal', 'Compost Manure', 'Sexual', 'Annual', 'Summer', '10', '4000', '2', '2022-05-09 02:43:27'),
	(5, 'Lujana', 'Wheat', 'wheat.jpg', '10', 'Fast', 'Inorganic', 'Asexual', 'Perennial', 'Autumn', '10', '1500', '5', '2022-05-09 02:44:40'),
	(6, 'Lujana', 'Cauliflower', 'cauliflower.jpg', '20', 'Normal', 'Inorganic', 'Sexual', 'Perennial', 'Summer', '10', '80', '4', '2022-05-09 02:45:29'),
	(7, 'Lujana', 'Cotton', 'cotton.jpg', '25', 'Slow', 'Organic', 'Sexual', 'Biennial', 'Summer', '10', '1300', '1', '2022-05-09 02:46:28'),
	(8, 'shreya', 'Rice', 'rice.jpg', '12', 'Slow', 'Insecticide', 'Asexual', 'Perennial', 'Autumn', '10', '125', '2', '2022-05-09 14:40:35'),
	(10, 'hahahehe', 'Potato', 'potato.jpg', '12', 'Fast', 'Pesticides', 'Asexual', 'Biennial', 'Spring', '10', '150', '7', '2022-05-09 14:54:02'),
	(11, '_nimisha.x', 'Wheat', 'barley.jpg', '30/kg', 'Normal', 'Insecticide', 'Asexual', 'Perennial', 'Autumn', '10', '200', '3', '2022-05-09 16:06:08');
/*!40000 ALTER TABLE `crop_details` ENABLE KEYS */;

-- Dumping structure for table hamro_agriculture.farmer_details
CREATE TABLE IF NOT EXISTS `farmer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `citizenship_number` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `spouse_name` varchar(50) DEFAULT NULL,
  `child_name` varchar(50) DEFAULT NULL,
  `family_member` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table hamro_agriculture.farmer_details: ~9 rows (approximately)
/*!40000 ALTER TABLE `farmer_details` DISABLE KEYS */;
INSERT INTO `farmer_details` (`id`, `firstname`, `middlename`, `lastname`, `email`, `username`, `dob`, `phone_number`, `password`, `nationality`, `citizenship_number`, `education`, `marital_status`, `father_name`, `mother_name`, `spouse_name`, `child_name`, `family_member`, `province`, `district`, `city`, `street`, `ward`, `gender`, `timestamp`) VALUES
	(1, 'Lujana', '', 'Bajracharya', 'lujanabajra@gmail.com', 'Lujana', '2022/01/01', '9863196938', 'password', 'nepal', '123456', 'Bachelors', 'unmarried', 'Sarbagya Bajracharya', 'Sajana Bajracharya', '', '', '9', '2', 'Kathmandu', 'Kathmandu', 'Dhoka Bahal', '25', 'female', '2022-05-09 16:12:08'),
	(2, 'Sugam', '', 'Karki', 'sugamkarki4450@gmail.com', 'magus4450', '01/19/2002', '9878787878', 'apple1234', 'canada', '986754', 'Very Good', 'married', 'Halla Bahardur', 'Kripa Narayani', 'Gopi', 'Dallu', '8', '3', 'Kathmandu', 'Thali', 'Radha Krishna', '5', 'other', '2022-05-08 13:32:55'),
	(3, 'Shreya', '', 'Shakya', 'shreya12@gmail.com', 'shreya', '2002/01/01', '', '123456', 'nepal', '12abcd', '', 'staus', 'Sangam Shakya', 'Sangila Shakya', '', '', '', 'staus', '', '', '', '', 'female', '2022-05-09 14:39:02'),
	(4, 'hahaha', '', 'hehehe', '', 'hahahehe', '01/01/2020', '', '123456', 'usa', '9841', '', 'married', 'Sarbagya Bajracharya', 'Sajana Bajracharya', 'Troye Sivan', 'Shreeya', '', 'staus', '', '', '', '', 'female', '2022-05-09 14:56:20'),
	(5, 'Ashim', '', 'Dhungel', 'ashim@gmail.com', 'ashim', '2002/10/09', '9812345678', '123456', 'australia', '9090', 'SEE passed', 'unmarried', 'Hari', 'Maya', '', '', '4', '3', 'Kathmandu', 'Kathmandu', 'Ason', '9', 'female', '2022-05-09 15:06:11'),
	(6, 'Nimisha', '', 'Pradhan', '', '_nimisha.x', '01/01/2020', '', '123456', 'nepal', '1234', '', 'staus', 'Rajesh Raj Pradhan', 'Niru Pradhan', '', 'Ashim', '', 'staus', '', '', '', '', 'female', '2022-05-09 16:06:46'),
	(7, 'Nimisha', '', 'Pradhan', 'pradhan.nimi1@gmail.com', '_nimisha.x', '01/01/2020', '0987654321', '123456', 'nepal', '1234', 'Bachelors', 'unmarried', 'Rajesh Raj Pradhan', 'Niru Pradhan', '', '', '4', '3', 'Kathamandu', 'Kathmandu', 'Sangam Chowk', '6', 'female', '2022-05-09 16:02:59'),
	(8, 'Nimisha', '', 'Pradhan', 'pradhan.nimi1@gmail.com', '_nimisha.x', '01/01/2020', '0987654321', '123456', 'nepal', '1234', 'Bachelors', 'unmarried', 'Rajesh Raj Pradhan', 'Niru Pradhan', '', '', '4', '3', 'Kathamandu', 'Kathmandu', 'Sangam Chowk', '6', 'female', '2022-05-09 16:03:07'),
	(9, 'Nimisha', '', 'Pradhan', 'pradhan.nimi1@gmail.com', '_nimisha.x', '01/01/2020', '0987654321', '123456', 'nepal', '1234', 'Bachelors', 'unmarried', 'Rajesh Raj Pradhan', 'Niru Pradhan', '', '', '4', '3', 'Kathamandu', 'Kathmandu', 'Sangam Chowk', '6', 'female', '2022-05-09 16:04:10');
/*!40000 ALTER TABLE `farmer_details` ENABLE KEYS */;

-- Dumping structure for table hamro_agriculture.market_details
CREATE TABLE IF NOT EXISTS `market_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `crop_name` varchar(50) DEFAULT NULL,
  `market_rate` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table hamro_agriculture.market_details: ~9 rows (approximately)
/*!40000 ALTER TABLE `market_details` DISABLE KEYS */;
INSERT INTO `market_details` (`id`, `email`, `crop_name`, `market_rate`, `province`, `time`) VALUES
	(1, 'lujanabajra@gmail.com', 'Rice', '1500', '1', '2022-05-08 05:52:54'),
	(2, 'lujanabajra@gmail.com', 'Maize', '1500', '3', '2022-05-09 02:37:21'),
	(3, 'lujanabajra@gmail.com', 'Wheat', '200', '3', '2022-05-09 02:37:34'),
	(4, 'lujanabajra@gmail.com', 'Potato', '710', '7', '2022-05-09 02:37:56'),
	(5, 'lujanabajra@gmail.com', 'Maize', '200', '5', '2022-05-09 02:38:09'),
	(6, 'lujanabajra@gmail.com', 'Oranges', '300', '5', '2022-05-09 02:38:57'),
	(11, 'lujanabajra@gmail.com', 'Tea', '100', '7', '2022-05-09 11:34:32'),
	(12, 'lujanabajra@gmail.com', 'Litchi', '15', '2', '2022-05-09 14:41:54'),
	(13, 'lujanabajra@gmail.com', 'Millet', '200', '6', '2022-05-09 14:44:31');
/*!40000 ALTER TABLE `market_details` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

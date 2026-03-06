-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.39 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for chat_app
CREATE DATABASE IF NOT EXISTS `chat_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `chat_app`;

-- Dumping structure for table chat_app.chat
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `files` longtext NOT NULL,
  `message` longtext NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  `from_user` int DEFAULT NULL,
  `to_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qydhn8kg94hqya41okkq4h5ng` (`from_user`),
  KEY `FK_e6od82vcl84c3j9hawauu8xwn` (`to_user`),
  CONSTRAINT `FK_e6od82vcl84c3j9hawauu8xwn` FOREIGN KEY (`to_user`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_qydhn8kg94hqya41okkq4h5ng` FOREIGN KEY (`from_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table chat_app.chat: ~10 rows (approximately)
REPLACE INTO `chat` (`id`, `created_at`, `updated_at`, `files`, `message`, `status`, `from_user`, `to_user`) VALUES
	(1, '2025-10-08 20:47:29', '2025-10-08 20:47:31', 'FILE:', 'hi', 'online', 14, 14),
	(2, '2025-10-08 20:52:12', '2025-10-08 20:52:13', 'FILE:', 'Nice tomeet you', 'online', 14, 4),
	(3, '2025-10-08 20:53:02', '2025-10-08 20:53:02', 'FILE:', 'kohomd', 'online', 14, 1),
	(4, '2025-10-08 20:53:32', '2025-10-08 20:53:33', 'FILE:', 'what happend?', 'online', 14, 3),
	(5, '2025-10-08 20:54:07', '2025-10-08 20:54:08', 'FILE:', 'welcome', 'online', 14, 2),
	(47, '2025-10-08 21:02:38', '2025-10-08 21:02:38', 'FILE:', 'Hi', 'SENT', 14, 3),
	(48, '2025-10-08 21:02:48', '2025-10-08 21:02:48', 'FILE:', 'Oyt kohomd', 'SENT', 14, 3),
	(49, '2025-10-08 21:04:06', '2025-10-08 21:04:06', 'FILE:', 'Nice to meet you\n', 'SENT', 14, 1),
	(50, '2025-10-08 21:06:24', '2025-10-08 21:06:24', 'FILE:', 'Hi', 'SENT', 14, 4),
	(51, '2025-10-08 21:10:47', '2025-10-08 21:10:48', 'FILE:', 'MK', 'DELIVERED', 4, 14),
	(52, '2025-10-11 14:35:22', '2025-10-11 14:35:22', 'FILE:', 'Hi\n\n', 'SENT', 14, 4),
	(53, '2025-10-11 16:45:30', '2025-10-11 16:45:30', 'FILE:', 'Hi\n', 'SENT', 18, 14);

-- Dumping structure for table chat_app.friend_list
CREATE TABLE IF NOT EXISTS `friend_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_status` varchar(30) DEFAULT NULL,
  `friend_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t35f03kjx6389385fthfry288` (`friend_id`),
  KEY `FK_rmlr6b76l6606kgyo9uim7maf` (`user_id`),
  CONSTRAINT `FK_rmlr6b76l6606kgyo9uim7maf` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_t35f03kjx6389385fthfry288` FOREIGN KEY (`friend_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table chat_app.friend_list: ~6 rows (approximately)
REPLACE INTO `friend_list` (`id`, `user_status`, `friend_id`, `user_id`, `display_name`) VALUES
	(10, 'ACTIVE', 3, 14, 'Abhi Jayaweera'),
	(11, 'ACTIVE', 14, 3, NULL),
	(12, 'ACTIVE', 1, 14, 'Suranga Jayaweera'),
	(13, 'ACTIVE', 14, 1, NULL),
	(14, 'ACTIVE', 4, 14, 'Tharuka Jayaweera'),
	(15, 'ACTIVE', 14, 4, NULL),
	(16, 'ACTIVE', 14, 18, 'Rashmi Tharuka'),
	(17, 'ACTIVE', 18, 14, NULL);

-- Dumping structure for table chat_app.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contact_no` varchar(45) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lo565olv8by15v9qgmqq8ajh8` (`contact_no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table chat_app.user: ~6 rows (approximately)
REPLACE INTO `user` (`id`, `created_at`, `updated_at`, `contact_no`, `country_code`, `first_name`, `last_name`, `status`) VALUES
	(1, '2025-10-08 20:49:08', '2025-10-08 20:49:09', '763102117', '+94', 'Suranga', 'Jayaweera', 'ONLINE'),
	(2, '2025-10-08 20:49:48', '2025-10-08 20:49:49', '766643610', '+94', 'Thanuja', 'Vithanage', 'ONLINE'),
	(3, '2025-10-08 20:50:37', '2025-10-08 20:50:38', '779546685', '+94', 'Abhi', 'Jayaweera', 'ONLINE'),
	(4, '2025-10-08 20:51:15', '2025-10-08 20:51:16', '740145153', '+94', 'Tharuka', 'Jayaweera', 'ONLINE'),
	(5, '2025-10-08 21:09:02', '2025-10-08 21:09:03', '762245431', '+94', 'Yasith', 'Perera', 'ONLINE'),
	(14, '2025-10-08 20:45:00', '2025-10-11 14:36:03', '740637699', '+94', 'Rashmi', 'Tharuka', 'OFFLINE'),
	(18, '2025-10-11 16:42:03', '2025-10-11 16:46:21', '714563241', '+94', 'Anjana', 'Abhimani', 'OFFLINE');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

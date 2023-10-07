-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for  prakweb_2023_b_213040061
CREATE DATABASE IF NOT EXISTS ` prakweb_2023_b_213040061` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE ` prakweb_2023_b_213040061`;

-- Dumping structure for table  prakweb_2023_b_213040061.buku
CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` year NOT NULL,
  `kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table  prakweb_2023_b_213040061.buku: ~10 rows (approximately)
REPLACE INTO `buku` (`id_buku`, `gambar`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `kategori`) VALUES
	(1, '1.jpg', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Scholastic', '1997', 'Fantasi'),
	(2, '2.jpg', 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '1960', 'Fiksi'),
	(3, '3.jpg', 'YEAR1984', 'George Orwell', 'Secker & Warburg', '1949', 'Fiksi Ilmiah'),
	(4, '4.jpg', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', '1925', 'Klasik'),
	(5, '5.jpg', 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', 'Fiksi'),
	(6, '7.jpg', 'The Hobbit', 'J.R.R. Tolkien', 'Allen & Unwin', '1937', 'Fantasi'),
	(7, '8.jpg', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '1999', 'Klasik'),
	(8, '9.jpg', 'The Lord of the Rings', 'J.R.R. Tolkien', 'Allen & Unwin', '1954', 'Fantasi'),
	(9, '6.jpg', 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '1932', 'Fiksi Ilmiah'),
	(10, '10.jpg', 'The Hunger Games', 'Suzanne Collins', 'Scholastic', '2008', 'Fiksi Ilmiah');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

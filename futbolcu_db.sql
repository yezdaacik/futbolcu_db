-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- futbolcu_db için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `futbolcu_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `futbolcu_db`;

-- tablo yapısı dökülüyor futbolcu_db.futbolcu
CREATE TABLE IF NOT EXISTS `futbolcu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(30) NOT NULL DEFAULT '0',
  `soyad` varchar(30) NOT NULL DEFAULT '0',
  `dtarih` date DEFAULT NULL,
  `takim_id` int(11) NOT NULL DEFAULT 0,
  `mevki_id` int(11) NOT NULL DEFAULT 0,
  `forma_no` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_futbolcu_takim` (`takim_id`),
  KEY `FK_futbolcu_mevki` (`mevki_id`),
  CONSTRAINT `FK_futbolcu_mevki` FOREIGN KEY (`mevki_id`) REFERENCES `mevki` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_futbolcu_takim` FOREIGN KEY (`takim_id`) REFERENCES `takim` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- futbolcu_db.futbolcu: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `futbolcu` DISABLE KEYS */;
/*!40000 ALTER TABLE `futbolcu` ENABLE KEYS */;

-- tablo yapısı dökülüyor futbolcu_db.mevki
CREATE TABLE IF NOT EXISTS `mevki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanim` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- futbolcu_db.mevki: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `mevki` DISABLE KEYS */;
/*!40000 ALTER TABLE `mevki` ENABLE KEYS */;

-- tablo yapısı dökülüyor futbolcu_db.takim
CREATE TABLE IF NOT EXISTS `takim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(100) NOT NULL DEFAULT '0',
  `stad` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- futbolcu_db.takim: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `takim` DISABLE KEYS */;
/*!40000 ALTER TABLE `takim` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        10.6.4-MariaDB-log - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 导出  表 demo_lb4_relation.account 结构
DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `accountManager` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_lb4_relation.account 的数据：~4 rows (大约)
DELETE FROM `account`;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `customerId`, `accountManager`) VALUES
	(1, 1, 'jun'),
	(4, 2, 'jerry'),
	(7, 4, 'cat'),
	(8, 3, 'jacky');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- 导出  表 demo_lb4_relation.customer 结构
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_lb4_relation.customer 的数据：~4 rows (大约)
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `name`) VALUES
	(1, 'jackson'),
	(2, 'tom'),
	(3, 'marry'),
	(4, 'kitty');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- 导出  表 demo_lb4_relation.order 结构
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `isDelivered` int(11) NOT NULL DEFAULT 0,
  `customerId` int(11) DEFAULT NULL COMMENT 'customer''s id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_lb4_relation.order 的数据：~6 rows (大约)
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `name`, `isDelivered`, `customerId`) VALUES
	(1, 'notebook', 1, 1),
	(2, 'mobile phone', 1, 1),
	(3, 'banana', 0, 1),
	(4, 'mouse', 0, 2),
	(5, 'Dior', 0, 3),
	(6, 'Coach', 1, 3);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

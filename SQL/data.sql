-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.19 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица lib1.autors
DROP TABLE IF EXISTS `autors`;
CREATE TABLE IF NOT EXISTS `autors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы lib1.autors: 8 rows
DELETE FROM `autors`;
/*!40000 ALTER TABLE `autors` DISABLE KEYS */;
INSERT INTO `autors` (`id`, `fio`) VALUES
	(1, 'Гудков'),
	(2, 'Понамарев'),
	(3, 'Митрофанов'),
	(4, 'Тихонов'),
	(5, 'Егоров'),
	(6, 'Леонов'),
	(7, 'Афанасьев'),
	(8, 'Ковальчук');
/*!40000 ALTER TABLE `autors` ENABLE KEYS */;

-- Дамп структуры для таблица lib1.books
DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы lib1.books: 0 rows
DELETE FROM `books`;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `caption`) VALUES
	(1, 'Основы дискретной автоматизации'),
	(2, 'Арифметика для программистов'),
	(3, 'Как выучить PHP'),
	(4, 'Знатие и сила'),
	(5, 'Курс практической линейной алгебры');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Дамп структуры для таблица lib1.books_autors
DROP TABLE IF EXISTS `books_autors`;
CREATE TABLE IF NOT EXISTS `books_autors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_id_autor_id` (`book_id`,`autor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы lib1.books_autors: 0 rows
DELETE FROM `books_autors`;
/*!40000 ALTER TABLE `books_autors` DISABLE KEYS */;
INSERT INTO `books_autors` (`id`, `book_id`, `autor_id`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 2, 3),
	(4, 2, 4),
	(5, 2, 1),
	(6, 3, 1),
	(7, 4, 2),
	(8, 5, 8),
	(9, 5, 7);
/*!40000 ALTER TABLE `books_autors` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

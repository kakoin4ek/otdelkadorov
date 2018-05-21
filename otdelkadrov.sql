-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.1.33-community - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных otdel kadrov
CREATE DATABASE IF NOT EXISTS `otdel kadrov` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `otdel kadrov`;

-- Дамп структуры для таблица otdel kadrov.должность
CREATE TABLE IF NOT EXISTS `должность` (
  `Должность` char(50) NOT NULL,
  PRIMARY KEY (`Должность`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы otdel kadrov.должность: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `должность` DISABLE KEYS */;
INSERT INTO `должность` (`Должность`) VALUES
	('Администратор'),
	('Бармен'),
	('Бухгалтер'),
	('Водитель'),
	('Воспитательница'),
	('Дизайнер'),
	('Директор'),
	('Комплектовщик'),
	('Консультант'),
	('Маляр'),
	('Менеджер'),
	('Механик'),
	('Официант'),
	('Охранник'),
	('Повар'),
	('Помощник Воспитателя'),
	('Помощник повора'),
	('Поставщик'),
	('Посудомойщица'),
	('Преподователь'),
	('Программист'),
	('Продавец'),
	('Рабочий'),
	('Сборщик мебели'),
	('Секретарь'),
	('Служба Доставки'),
	('Тренер'),
	('Учитель'),
	('Шеф Повар'),
	('Электрик');
/*!40000 ALTER TABLE `должность` ENABLE KEYS */;

-- Дамп структуры для таблица otdel kadrov.зарплата
CREATE TABLE IF NOT EXISTS `зарплата` (
  `ИДЗарплата` int(11) NOT NULL,
  `ИДПаспорт` int(11) DEFAULT NULL,
  `Вид Зарплаты` char(50) DEFAULT NULL,
  `Сумма зарплаты` float DEFAULT NULL,
  `Валюта` char(50) DEFAULT NULL,
  `День зарплаты` datetime DEFAULT NULL,
  `Номер Приказа` int(11) DEFAULT NULL,
  `Дата приказа` datetime DEFAULT NULL,
  PRIMARY KEY (`ИДЗарплата`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы otdel kadrov.зарплата: 1 rows
/*!40000 ALTER TABLE `зарплата` DISABLE KEYS */;
INSERT INTO `зарплата` (`ИДЗарплата`, `ИДПаспорт`, `Вид Зарплаты`, `Сумма зарплаты`, `Валюта`, `День зарплаты`, `Номер Приказа`, `Дата приказа`) VALUES
	(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `зарплата` ENABLE KEYS */;

-- Дамп структуры для таблица otdel kadrov.образование
CREATE TABLE IF NOT EXISTS `образование` (
  `ИДПаспорта` int(11) DEFAULT NULL,
  `НазваниеУчебногоЗаведения` char(50) DEFAULT NULL,
  `Факультет` char(50) DEFAULT NULL,
  `ФормаОбучения` char(50) DEFAULT NULL,
  `Специальность` char(50) DEFAULT NULL,
  `Квалификация` char(50) DEFAULT NULL,
  `ТипДокумента` char(50) DEFAULT NULL,
  `ВидДокумента` char(50) DEFAULT NULL,
  `Дата начала обучения` date DEFAULT NULL,
  `Дата окончание обчучения` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Дамп данных таблицы otdel kadrov.образование: 0 rows
/*!40000 ALTER TABLE `образование` DISABLE KEYS */;
/*!40000 ALTER TABLE `образование` ENABLE KEYS */;

-- Дамп структуры для таблица otdel kadrov.отдел кадров
CREATE TABLE IF NOT EXISTS `отдел кадров` (
  `ИДРаботника` int(11) NOT NULL AUTO_INCREMENT,
  `Фамилия` char(50) DEFAULT NULL,
  `Имя` char(50) DEFAULT NULL,
  `Отчество` char(50) DEFAULT NULL,
  `Серия  Паспорта` int(11) DEFAULT NULL,
  `Номер Паспорта` int(11) DEFAULT NULL,
  `Дата Рождения` date DEFAULT NULL,
  `Образование` char(50) DEFAULT NULL,
  `Специальность` char(50) DEFAULT NULL,
  `Должность` char(50) DEFAULT NULL,
  `Дата Поступление на Предприятия` date DEFAULT NULL,
  `Оклад` int(11) DEFAULT NULL,
  PRIMARY KEY (`ИДРаботника`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы otdel kadrov.отдел кадров: 4 rows
/*!40000 ALTER TABLE `отдел кадров` DISABLE KEYS */;
INSERT INTO `отдел кадров` (`ИДРаботника`, `Фамилия`, `Имя`, `Отчество`, `Серия  Паспорта`, `Номер Паспорта`, `Дата Рождения`, `Образование`, `Специальность`, `Должность`, `Дата Поступление на Предприятия`, `Оклад`) VALUES
	(1, 'Ситников', 'Арсений', 'Михайлович', 3342, 42345, '1999-04-19', 'Среднее', 'Техник Программист', 'нету', '2018-07-15', 2000),
	(2, 'Ананян', 'Артём', 'Араратович', 2141, 52346, '1999-10-06', 'Среднее', 'Техник Программист', 'Стажор', '2018-06-12', 1500),
	(3, 'Казанцев', 'Влад', 'Дмитривич', 4213, 54345, '1993-02-11', 'Высшее', 'Менеджер', 'Директор', '2014-05-16', 1000),
	(4, 'Кондратьев', 'Илья', 'Олегович', 3453, 14325, '1995-05-16', 'Высшее', 'Кондитер', 'Шеф Повар', '2009-08-22', 5000);
/*!40000 ALTER TABLE `отдел кадров` ENABLE KEYS */;

-- Дамп структуры для таблица otdel kadrov.паспорт
CREATE TABLE IF NOT EXISTS `паспорт` (
  `Имя` char(50) DEFAULT NULL,
  `ИДПаспорт` int(11) NOT NULL,
  `Фамилия` char(50) DEFAULT NULL,
  `Отчество` char(50) DEFAULT NULL,
  `Серия` int(11) DEFAULT NULL,
  `Номер` int(11) DEFAULT NULL,
  `КемВыдан` char(50) DEFAULT NULL,
  `Датарождения` date DEFAULT NULL,
  `Пол` char(50) DEFAULT NULL,
  `ДатаВыдачи` date DEFAULT NULL,
  PRIMARY KEY (`ИДПаспорт`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы otdel kadrov.паспорт: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `паспорт` DISABLE KEYS */;
INSERT INTO `паспорт` (`Имя`, `ИДПаспорт`, `Фамилия`, `Отчество`, `Серия`, `Номер`, `КемВыдан`, `Датарождения`, `Пол`, `ДатаВыдачи`) VALUES
	('Андрей', 1, 'Воскреса', 'Владимирович', 2387, 45763, 'г.Глазов', '1984-03-26', 'М', '2007-03-30'),
	('Андрей', 2, 'Ившин', 'Александрович', 3476, 78465, 'г.Глазов', '1983-05-16', 'М', '2006-05-20'),
	('Дима', 3, 'Залескис', 'Эдуардович', 3354, 52647, 'г.Ижевск', '1984-04-02', 'М', '2005-04-09'),
	('Юлия', 4, 'Вербина', 'Юрьевна', 4432, 25364, 'п.Балезино', '1973-04-21', 'Ж', '2005-04-27'),
	('Полина', 5, 'Елагина', 'Тихоновна', 5324, 23432, 'г.Глазов', '1971-02-09', 'Ж', '2007-02-17'),
	('Татьяна', 6, 'Княжина', 'Семёновна', 4253, 35453, 'п.Балезино', '1964-08-13', 'Ж', '2009-08-25');
/*!40000 ALTER TABLE `паспорт` ENABLE KEYS */;

-- Дамп структуры для таблица otdel kadrov.пенсия
CREATE TABLE IF NOT EXISTS `пенсия` (
  `Пол` char(50) DEFAULT NULL,
  `предпенсионный возраст` int(11) DEFAULT NULL,
  `пенсионный возраст` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы otdel kadrov.пенсия: 2 rows
/*!40000 ALTER TABLE `пенсия` DISABLE KEYS */;
INSERT INTO `пенсия` (`Пол`, `предпенсионный возраст`, `пенсионный возраст`) VALUES
	('М', 55, 60),
	('Ж', 50, 55);
/*!40000 ALTER TABLE `пенсия` ENABLE KEYS */;

-- Дамп структуры для таблица otdel kadrov.трудовая деятельность
CREATE TABLE IF NOT EXISTS `трудовая деятельность` (
  `ИДПредприятия` int(11) NOT NULL AUTO_INCREMENT,
  `НазваниеПредприятия` char(50) DEFAULT NULL,
  `Должность` char(50),
  `Дата поступления` datetime DEFAULT NULL,
  `Начало работы` datetime DEFAULT NULL,
  `Причина увольнения` char(50) DEFAULT NULL,
  `Дата увольнения` datetime DEFAULT NULL,
  `Конец работы` datetime DEFAULT NULL,
  PRIMARY KEY (`ИДПредприятия`),
  KEY `FK_трудовая деятельность_должность` (`Должность`),
  CONSTRAINT `FK_трудовая деятельность_должность` FOREIGN KEY (`Должность`) REFERENCES `должность` (`Должность`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы otdel kadrov.трудовая деятельность: ~22 rows (приблизительно)
/*!40000 ALTER TABLE `трудовая деятельность` DISABLE KEYS */;
INSERT INTO `трудовая деятельность` (`ИДПредприятия`, `НазваниеПредприятия`, `Должность`, `Дата поступления`, `Начало работы`, `Причина увольнения`, `Дата увольнения`, `Конец работы`) VALUES
	(1, 'СушиМания', 'Администратор', NULL, NULL, NULL, NULL, NULL),
	(2, 'СушиМания', 'Официант', NULL, NULL, NULL, NULL, NULL),
	(3, 'СушиМания', 'Служба Доставки', NULL, NULL, NULL, NULL, NULL),
	(4, 'СушиМания', 'Бухгалтер', NULL, NULL, NULL, NULL, NULL),
	(5, 'СушиМания', 'Официант', NULL, NULL, NULL, NULL, NULL),
	(6, 'СушиМания', 'Повар', NULL, NULL, NULL, NULL, NULL),
	(7, 'СушиМания', 'Охранник', NULL, NULL, NULL, NULL, NULL),
	(8, 'ООО Мебельная фабрика', 'Бухгалтер', NULL, NULL, NULL, NULL, NULL),
	(9, 'ООО Мебельная фабрика', 'Водитель', NULL, NULL, NULL, NULL, NULL),
	(10, 'ООО Мебельная фабрика', 'Дизайнер', NULL, NULL, NULL, NULL, NULL),
	(11, 'ООО Мебельная фабрика', 'Служба Доставки', NULL, NULL, NULL, NULL, NULL),
	(12, 'ООО Мебельная фабрика', 'Сборщик мебели', NULL, NULL, NULL, NULL, NULL),
	(13, 'Магнит', 'Администратор', NULL, NULL, NULL, NULL, NULL),
	(14, 'Магнит', 'Бухгалтер', NULL, NULL, NULL, NULL, NULL),
	(15, 'Магнит', 'Продавец', NULL, NULL, NULL, NULL, NULL),
	(16, 'ЧМЗ', 'Рабочий', NULL, NULL, NULL, NULL, NULL),
	(17, 'ЧМЗ', 'Директор', NULL, NULL, NULL, NULL, NULL),
	(18, 'ЧМЗ', 'Электрик', NULL, NULL, NULL, NULL, NULL),
	(19, 'ЧМЗ', 'Охранник', NULL, NULL, NULL, NULL, NULL),
	(20, 'СберБанк', 'Бухгалтер', NULL, NULL, NULL, NULL, NULL),
	(21, 'СберБанк', 'Консультант', NULL, NULL, NULL, NULL, NULL),
	(22, 'СберБанк', 'Программист', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `трудовая деятельность` ENABLE KEYS */;

-- Дамп структуры для таблица otdel kadrov.трудовая деятельность на предприятии
CREATE TABLE IF NOT EXISTS `трудовая деятельность на предприятии` (
  `ИД` int(11) NOT NULL AUTO_INCREMENT,
  `ИДПредприятия` int(11) NOT NULL,
  `ИДПаспорт` int(11) NOT NULL DEFAULT '0',
  `Подразделение` char(50) DEFAULT NULL,
  `Должность` char(50) DEFAULT NULL,
  `Номер Приказа` int(11) DEFAULT NULL,
  `Дата Приказа` datetime DEFAULT NULL,
  `Начало Работы` int(11) NOT NULL,
  PRIMARY KEY (`ИД`),
  KEY `FK_трудовая деятельность на предприятии_трудовая деятельность` (`ИДПредприятия`),
  KEY `FK_трудовая деятельность на предприятии_паспорт` (`ИДПаспорт`),
  CONSTRAINT `FK_трудовая деятельность на предприятии_паспорт` FOREIGN KEY (`ИДПаспорт`) REFERENCES `паспорт` (`ИДПаспорт`),
  CONSTRAINT `FK_трудовая деятельность на предприятии_трудовая деятельность` FOREIGN KEY (`ИДПредприятия`) REFERENCES `трудовая деятельность` (`ИДПредприятия`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы otdel kadrov.трудовая деятельность на предприятии: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `трудовая деятельность на предприятии` DISABLE KEYS */;
INSERT INTO `трудовая деятельность на предприятии` (`ИД`, `ИДПредприятия`, `ИДПаспорт`, `Подразделение`, `Должность`, `Номер Приказа`, `Дата Приказа`, `Начало Работы`) VALUES
	(1, 13, 2, NULL, NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `трудовая деятельность на предприятии` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
`отдел кадров`
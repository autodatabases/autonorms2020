CREATE TABLE `autoNorms2020Data` (
  `motorId` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Идентификатор двигателя',
  `workId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор работы',
  `TopCatId` int(11) NOT NULL DEFAULT 0 COMMENT 'Идентификатор главной категории',
  `SubCatId` int(11) NOT NULL DEFAULT 0 COMMENT 'Идентификатор подкатегории',
  `TopCat` varchar(350) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Главная категория',
  `SubCat` varchar(350) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Подкатегория',
  `workName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Наименование работ',
  `workTarget` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Обслуживаемая деталь',
  `workTime` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'Норма времени',
  `workPrice` int(1) NOT NULL DEFAULT 0 COMMENT 'Цена за н.ч.',
  `parent` int(11) DEFAULT 0 COMMENT 'Идентификатор родительской категории',
  PRIMARY KEY (`workId`,`motorId`),
  KEY `motorId` (`motorId`),
  KEY `motorId_2` (`motorId`,`workId`,`TopCatId`,`SubCatId`),
  KEY `workName` (`workName`),
  KEY `workTarget` (`workTarget`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица "Норм времени" базы "АвтоНормы 2020". Издано 18.01.2020 @ Copyright (c) AUTODATABASES.RU';


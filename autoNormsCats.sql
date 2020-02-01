/*
Navicat MySQL Data Transfer

Source Server         : NEWREMOTE
Source Server Version : 50728
Source Host           : vds.tecdoc.ru:3306
Source Database       : autonorms2020

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-02-01 05:55:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for autoNormsCats
-- ----------------------------
DROP TABLE IF EXISTS `autoNormsCats`;
CREATE TABLE `autoNormsCats` (
  `TopCatId` int(11) NOT NULL DEFAULT '0' COMMENT 'Идентификатор главной категории',
  `SubCatId` int(11) NOT NULL DEFAULT '0' COMMENT 'Идентификатор подкатегории',
  `TopCat` varchar(350) DEFAULT '' COMMENT 'Главная категория',
  `SubCat` varchar(350) DEFAULT '' COMMENT 'Подкатегория',
  PRIMARY KEY (`TopCatId`,`SubCatId`),
  KEY `TopCatId` (`TopCatId`,`SubCatId`),
  KEY `TopCatId_2` (`TopCatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Категории работ';

-- ----------------------------
-- Records of autoNormsCats
-- ----------------------------
INSERT INTO `autoNormsCats` VALUES ('1', '2', 'Двигатель', 'Двигатель в сборе');
INSERT INTO `autoNormsCats` VALUES ('1', '3', 'Двигатель', 'Головка блока цилиндров');
INSERT INTO `autoNormsCats` VALUES ('1', '4', 'Двигатель', 'Распределительный вал и шестерня привода');
INSERT INTO `autoNormsCats` VALUES ('1', '5', 'Двигатель', 'Коленчатый вал и поршни');
INSERT INTO `autoNormsCats` VALUES ('1', '6', 'Двигатель', 'Система смазки');
INSERT INTO `autoNormsCats` VALUES ('1', '80', 'Двигатель', 'Дополнительный привод');
INSERT INTO `autoNormsCats` VALUES ('7', '8', 'Управление двигателем - Зажигание', 'Система зажигания');
INSERT INTO `autoNormsCats` VALUES ('9', '10', 'Управление двигателем - топливная система', 'Воздушный фильтр, коллекторы и резонатор');
INSERT INTO `autoNormsCats` VALUES ('9', '11', 'Управление двигателем - топливная система', 'Управление дроссельной заслонкой');
INSERT INTO `autoNormsCats` VALUES ('9', '12', 'Управление двигателем - топливная система', 'Система впрыска');
INSERT INTO `autoNormsCats` VALUES ('9', '13', 'Управление двигателем - топливная система', 'Система подачи топлива');
INSERT INTO `autoNormsCats` VALUES ('9', '82', 'Управление двигателем - топливная система', 'Система впрыска дизельного двигателя');
INSERT INTO `autoNormsCats` VALUES ('9', '83', 'Управление двигателем - топливная система', 'Турбокомпрессор');
INSERT INTO `autoNormsCats` VALUES ('9', '93', 'Управление двигателем - топливная система', 'Карбюратор');
INSERT INTO `autoNormsCats` VALUES ('9', '98', 'Управление двигателем - топливная система', 'Топливная система (газ)');
INSERT INTO `autoNormsCats` VALUES ('14', '15', 'Система охлаждения', 'Радиатор, вентилятор и промежуточный охладитель');
INSERT INTO `autoNormsCats` VALUES ('14', '16', 'Система охлаждения', 'Насос и привод');
INSERT INTO `autoNormsCats` VALUES ('14', '17', 'Система охлаждения', 'Расширительный бачок и шланги');
INSERT INTO `autoNormsCats` VALUES ('18', '19', 'Система выпуска', 'Коллектор, трубки и глушители');
INSERT INTO `autoNormsCats` VALUES ('18', '20', 'Система выпуска', 'Система очистки отработавших газов');
INSERT INTO `autoNormsCats` VALUES ('18', '81', 'Система выпуска', 'Опоры и тепловая защита');
INSERT INTO `autoNormsCats` VALUES ('21', '22', 'Сцепление и привод сцепления', 'Педаль сцепления, тяги и гидропривод');
INSERT INTO `autoNormsCats` VALUES ('21', '23', 'Сцепление и привод сцепления', 'Сцепление и маховик');
INSERT INTO `autoNormsCats` VALUES ('24', '25', 'Механическая коробка переключения передач', 'Узел коробки передач и картер');
INSERT INTO `autoNormsCats` VALUES ('24', '26', 'Механическая коробка переключения передач', 'Тяги и рычаги управления переключением передач');
INSERT INTO `autoNormsCats` VALUES ('24', '27', 'Механическая коробка переключения передач', 'Шестерни, подшипники и сальники');
INSERT INTO `autoNormsCats` VALUES ('28', '29', 'Главная передача, приводные валы и оси', 'Передняя ось');
INSERT INTO `autoNormsCats` VALUES ('28', '30', 'Главная передача, приводные валы и оси', 'Задняя ось');
INSERT INTO `autoNormsCats` VALUES ('28', '87', 'Главная передача, приводные валы и оси', 'Карданный вал, межосевой дифференциал и раздаточная коробка');
INSERT INTO `autoNormsCats` VALUES ('31', '32', 'Подвеска', 'Передняя подвеска');
INSERT INTO `autoNormsCats` VALUES ('31', '33', 'Подвеска', 'Задняя подвеска');
INSERT INTO `autoNormsCats` VALUES ('31', '94', 'Подвеска', 'Система управления подвеской');
INSERT INTO `autoNormsCats` VALUES ('34', '35', 'Рулевое управление', 'Углы установки колес');
INSERT INTO `autoNormsCats` VALUES ('34', '36', 'Рулевое управление', 'Рулевой механизм');
INSERT INTO `autoNormsCats` VALUES ('34', '37', 'Рулевое управление', 'Рулевая колонка');
INSERT INTO `autoNormsCats` VALUES ('34', '38', 'Рулевое управление', 'Усилитель рулевого управления');
INSERT INTO `autoNormsCats` VALUES ('34', '85', 'Рулевое управление', 'Колеса');
INSERT INTO `autoNormsCats` VALUES ('39', '40', 'Тормоза', 'Гидравлическая тормозная система');
INSERT INTO `autoNormsCats` VALUES ('39', '41', 'Тормоза', 'Тормозные механизмы (колодки, диски и др.)');
INSERT INTO `autoNormsCats` VALUES ('39', '42', 'Тормоза', 'Педаль тормоза и усилитель');
INSERT INTO `autoNormsCats` VALUES ('39', '43', 'Тормоза', 'ABS или ABS/ESP');
INSERT INTO `autoNormsCats` VALUES ('39', '44', 'Тормоза', 'Стояночный тормоз');
INSERT INTO `autoNormsCats` VALUES ('45', '46', 'Электрооборудование автомобиля', 'Аккумуляторная батарея и проводка');
INSERT INTO `autoNormsCats` VALUES ('45', '47', 'Электрооборудование автомобиля', 'Система зарядки');
INSERT INTO `autoNormsCats` VALUES ('45', '48', 'Электрооборудование автомобиля', 'Система запуска');
INSERT INTO `autoNormsCats` VALUES ('45', '49', 'Электрооборудование автомобиля', 'Лампы и светодиоды');
INSERT INTO `autoNormsCats` VALUES ('45', '50', 'Электрооборудование автомобиля', 'Передние фары');
INSERT INTO `autoNormsCats` VALUES ('45', '51', 'Электрооборудование автомобиля', 'Задние фонари');
INSERT INTO `autoNormsCats` VALUES ('45', '52', 'Электрооборудование автомобиля', 'Лампы освещения салона');
INSERT INTO `autoNormsCats` VALUES ('45', '53', 'Электрооборудование автомобиля', 'Выключатели');
INSERT INTO `autoNormsCats` VALUES ('45', '54', 'Электрооборудование автомобиля', 'Приборы');
INSERT INTO `autoNormsCats` VALUES ('45', '55', 'Электрооборудование автомобиля', 'Датчики');
INSERT INTO `autoNormsCats` VALUES ('45', '56', 'Электрооборудование автомобиля', 'Предохранители и реле');
INSERT INTO `autoNormsCats` VALUES ('45', '57', 'Электрооборудование автомобиля', 'Электродвигатели');
INSERT INTO `autoNormsCats` VALUES ('45', '58', 'Электрооборудование автомобиля', 'Управление и аудиосистема');
INSERT INTO `autoNormsCats` VALUES ('45', '59', 'Электрооборудование автомобиля', 'Очистители/омыватели лобового стекла');
INSERT INTO `autoNormsCats` VALUES ('45', '60', 'Электрооборудование автомобиля', 'Очистители/омыватели заднего стекла');
INSERT INTO `autoNormsCats` VALUES ('45', '86', 'Электрооборудование автомобиля', 'Очистители/омыватели фар');
INSERT INTO `autoNormsCats` VALUES ('45', '97', 'Электрооборудование автомобиля', 'Программное обеспечение автомобиля');
INSERT INTO `autoNormsCats` VALUES ('61', '62', 'Кондиционер и отопитель', 'Отопитель и система вентиляции');
INSERT INTO `autoNormsCats` VALUES ('61', '63', 'Кондиционер и отопитель', 'Кондиционер');
INSERT INTO `autoNormsCats` VALUES ('64', '65', 'Передняя часть кузова', 'Передний бампер/спойлер');
INSERT INTO `autoNormsCats` VALUES ('64', '66', 'Передняя часть кузова', 'Передняя решетка');
INSERT INTO `autoNormsCats` VALUES ('64', '67', 'Передняя часть кузова', 'Капот');
INSERT INTO `autoNormsCats` VALUES ('64', '68', 'Передняя часть кузова', 'Передние крылья');
INSERT INTO `autoNormsCats` VALUES ('64', '69', 'Передняя часть кузова', 'Лобовое стекло');
INSERT INTO `autoNormsCats` VALUES ('64', '96', 'Передняя часть кузова', 'Передняя панель');
INSERT INTO `autoNormsCats` VALUES ('70', '71', 'Центральная часть кузова', 'Передняя дверь');
INSERT INTO `autoNormsCats` VALUES ('70', '72', 'Центральная часть кузова', 'Задняя боковая дверь');
INSERT INTO `autoNormsCats` VALUES ('70', '73', 'Центральная часть кузова', 'Внутренняя отделка/Сиденья/Ремни безопасности');
INSERT INTO `autoNormsCats` VALUES ('70', '74', 'Центральная часть кузова', 'Люк');
INSERT INTO `autoNormsCats` VALUES ('70', '95', 'Центральная часть кузова', 'Складывающаяся крыша (кабриолет/convertible)');
INSERT INTO `autoNormsCats` VALUES ('75', '76', 'Задняя часть кузова', 'Задний бампер');
INSERT INTO `autoNormsCats` VALUES ('75', '77', 'Задняя часть кузова', 'Задняя дверь');
INSERT INTO `autoNormsCats` VALUES ('75', '78', 'Задняя часть кузова', 'Заднее крыло');
INSERT INTO `autoNormsCats` VALUES ('75', '79', 'Задняя часть кузова', 'Заднее стекло');
INSERT INTO `autoNormsCats` VALUES ('75', '84', 'Задняя часть кузова', 'Крышка багажника');
INSERT INTO `autoNormsCats` VALUES ('88', '89', 'Автоматическая трансмиссия', 'Гидротрансформатор и пластина привода');
INSERT INTO `autoNormsCats` VALUES ('88', '90', 'Автоматическая трансмиссия', 'Автоматическая трансмиссия, картер и гидросистема');
INSERT INTO `autoNormsCats` VALUES ('88', '91', 'Автоматическая трансмиссия', 'Управление, регулятор и клапаны');
INSERT INTO `autoNormsCats` VALUES ('88', '92', 'Автоматическая трансмиссия', 'Шестерни, муфты и тормоза');

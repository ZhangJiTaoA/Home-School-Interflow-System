/*
Navicat MySQL Data Transfer

Source Server         : myLink
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : hsproject

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2020-06-15 16:05:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for 1l1ldayl4月19日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月19日`;
CREATE TABLE `1l1ldayl4月19日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月19日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月19日
-- ----------------------------
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680126', '张吉涛0', '80', '81', '62', '54', '27', '23', '55', '68', '87', '92', '62.9');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680127', '张吉涛1', '22', '29', '24', '83', '95', '50', '74', '77', '72', '26', '55.2');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680128', '张吉涛2', '99', '78', '83', '68', '20', '68', '57', '32', '67', '72', '64.4');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680129', '张吉涛3', '35', '57', '77', '59', '45', '64', '41', '45', '27', '27', '47.7');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680130', '张吉涛4', '87', '93', '65', '25', '49', '37', '85', '21', '64', '34', '56');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680131', '张吉涛5', '28', '51', '89', '48', '74', '35', '78', '92', '89', '36', '62');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680132', '张吉涛6', '76', '91', '61', '99', '90', '90', '72', '28', '24', '23', '65.4');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680133', '张吉涛7', '95', '91', '44', '49', '55', '76', '24', '34', '36', '74', '57.8');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680134', '张吉涛8', '48', '82', '32', '54', '50', '69', '89', '90', '32', '76', '62.2');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680135', '张吉涛9', '67', '58', '56', '76', '71', '56', '52', '61', '76', '83', '65.6');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680136', '张吉涛10', '30', '64', '32', '39', '72', '56', '68', '72', '31', '95', '55.9');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680137', '张吉涛11', '91', '27', '39', '81', '87', '64', '47', '24', '98', '57', '61.5');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680138', '张吉涛12', '93', '88', '98', '20', '88', '47', '79', '39', '77', '78', '70.7');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680139', '张吉涛13', '49', '34', '46', '27', '24', '93', '68', '80', '99', '56', '57.6');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680140', '张吉涛14', '23', '62', '54', '79', '57', '39', '21', '94', '84', '56', '56.9');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680141', '张吉涛15', '61', '40', '99', '39', '42', '21', '76', '86', '70', '97', '63.1');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680142', '张吉涛16', '69', '80', '56', '48', '52', '26', '32', '45', '50', '47', '50.5');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680143', '张吉涛17', '54', '85', '97', '72', '36', '48', '79', '43', '96', '57', '66.7');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680144', '张吉涛18', '37', '54', '22', '53', '24', '59', '29', '29', '81', '74', '46.2');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680145', '张吉涛19', '95', '90', '20', '95', '46', '63', '79', '71', '42', '33', '63.4');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680146', '张吉涛20', '84', '41', '35', '81', '42', '92', '63', '44', '21', '25', '52.8');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680147', '张吉涛21', '32', '23', '85', '66', '86', '90', '57', '87', '53', '36', '61.5');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680148', '张吉涛22', '96', '93', '42', '24', '92', '84', '80', '79', '36', '22', '64.8');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680149', '张吉涛23', '96', '36', '47', '20', '68', '72', '38', '33', '55', '99', '56.4');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680150', '张吉涛24', '39', '27', '98', '36', '36', '21', '76', '40', '75', '21', '46.9');
INSERT INTO `1l1ldayl4月19日` VALUES ('20160680151', '张吉涛25', '52', '75', '75', '64', '73', '91', '94', '77', '30', '78', '70.9');

-- ----------------------------
-- Table structure for 1l1ldayl4月20日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月20日`;
CREATE TABLE `1l1ldayl4月20日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月20日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月20日
-- ----------------------------
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680126', '张吉涛0', '68', '87', '22', '51', '87', '47', '82', '90', '74', '83', '69.1');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680127', '张吉涛1', '93', '82', '24', '95', '26', '34', '77', '53', '27', '86', '59.7');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680128', '张吉涛2', '43', '52', '54', '40', '41', '84', '63', '81', '29', '62', '54.9');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680129', '张吉涛3', '58', '20', '34', '37', '44', '64', '76', '39', '55', '77', '50.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680130', '张吉涛4', '80', '68', '70', '99', '59', '97', '68', '40', '71', '52', '70.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680131', '张吉涛5', '81', '60', '100', '51', '60', '96', '50', '86', '88', '32', '70.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680132', '张吉涛6', '100', '85', '51', '48', '42', '88', '75', '28', '87', '94', '69.8');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680133', '张吉涛7', '90', '24', '50', '61', '65', '22', '22', '70', '54', '50', '50.8');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680134', '张吉涛8', '92', '73', '97', '33', '79', '65', '31', '24', '22', '98', '61.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680135', '张吉涛9', '21', '49', '33', '51', '63', '42', '61', '62', '100', '65', '54.7');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680136', '张吉涛10', '70', '39', '35', '82', '77', '52', '93', '32', '74', '91', '64.5');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680137', '张吉涛11', '68', '33', '57', '86', '64', '48', '21', '25', '95', '39', '53.6');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680138', '张吉涛12', '90', '56', '70', '36', '84', '49', '50', '74', '96', '87', '69.2');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680139', '张吉涛13', '40', '35', '71', '49', '56', '94', '79', '26', '67', '47', '56.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680140', '张吉涛14', '26', '46', '87', '45', '22', '20', '46', '51', '53', '48', '44.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680141', '张吉涛15', '42', '27', '37', '23', '46', '52', '64', '44', '62', '34', '43.1');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680142', '张吉涛16', '56', '84', '71', '80', '36', '76', '93', '66', '43', '100', '70.5');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680143', '张吉涛17', '91', '47', '28', '65', '32', '27', '55', '64', '34', '86', '52.9');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680144', '张吉涛18', '27', '88', '31', '36', '87', '68', '42', '48', '23', '87', '53.7');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680145', '张吉涛19', '86', '47', '84', '43', '33', '38', '96', '64', '88', '85', '66.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680146', '张吉涛20', '63', '91', '93', '29', '83', '47', '78', '86', '87', '91', '74.8');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680147', '张吉涛21', '53', '22', '44', '28', '89', '41', '53', '43', '33', '72', '47.8');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680148', '张吉涛22', '27', '69', '38', '69', '81', '73', '84', '35', '94', '53', '62.3');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680149', '张吉涛23', '48', '39', '62', '60', '94', '87', '97', '63', '87', '99', '73.6');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680150', '张吉涛24', '94', '29', '54', '38', '48', '97', '93', '33', '62', '36', '58.4');
INSERT INTO `1l1ldayl4月20日` VALUES ('20160680151', '张吉涛25', '28', '78', '90', '67', '33', '72', '66', '92', '59', '58', '64.3');

-- ----------------------------
-- Table structure for 1l1ldayl4月21日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月21日`;
CREATE TABLE `1l1ldayl4月21日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月21日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月21日
-- ----------------------------
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680126', '张吉涛0', '53', '59', '20', '97', '90', '73', '37', '32', '73', '94', '62.8');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680127', '张吉涛1', '31', '61', '58', '59', '65', '33', '45', '33', '40', '76', '50.1');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680128', '张吉涛2', '97', '65', '80', '36', '81', '28', '61', '88', '34', '49', '61.9');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680129', '张吉涛3', '92', '41', '30', '51', '99', '91', '28', '39', '95', '89', '65.5');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680130', '张吉涛4', '72', '77', '40', '54', '44', '74', '22', '45', '45', '21', '49.4');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680131', '张吉涛5', '27', '36', '37', '49', '74', '53', '62', '38', '49', '32', '45.7');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680132', '张吉涛6', '32', '32', '80', '86', '78', '31', '35', '59', '25', '52', '51');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680133', '张吉涛7', '32', '37', '70', '32', '63', '86', '69', '21', '30', '97', '53.7');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680134', '张吉涛8', '100', '52', '80', '68', '79', '38', '63', '51', '35', '37', '60.3');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680135', '张吉涛9', '20', '54', '38', '65', '20', '29', '28', '59', '69', '46', '42.8');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680136', '张吉涛10', '29', '29', '76', '57', '70', '83', '55', '95', '63', '25', '58.2');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680137', '张吉涛11', '21', '67', '23', '65', '90', '45', '91', '65', '58', '41', '56.6');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680138', '张吉涛12', '23', '77', '72', '100', '54', '43', '51', '78', '55', '48', '60.1');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680139', '张吉涛13', '58', '100', '53', '33', '51', '84', '52', '100', '97', '32', '66');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680140', '张吉涛14', '38', '30', '55', '70', '62', '72', '75', '85', '97', '79', '66.3');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680141', '张吉涛15', '91', '46', '39', '84', '89', '42', '24', '98', '83', '63', '65.9');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680142', '张吉涛16', '100', '94', '100', '45', '87', '92', '99', '35', '86', '25', '76.3');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680143', '张吉涛17', '62', '95', '43', '66', '28', '64', '42', '26', '60', '84', '57');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680144', '张吉涛18', '32', '77', '74', '64', '24', '46', '97', '53', '90', '64', '62.1');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680145', '张吉涛19', '22', '71', '29', '85', '91', '27', '38', '81', '78', '29', '55.1');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680146', '张吉涛20', '85', '48', '64', '82', '37', '28', '46', '90', '72', '100', '65.2');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680147', '张吉涛21', '36', '85', '75', '42', '70', '78', '71', '52', '44', '28', '58.1');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680148', '张吉涛22', '20', '71', '42', '42', '98', '84', '71', '95', '43', '97', '66.3');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680149', '张吉涛23', '38', '71', '54', '30', '88', '70', '37', '37', '20', '39', '48.4');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680150', '张吉涛24', '85', '28', '56', '86', '35', '22', '98', '25', '49', '72', '55.6');
INSERT INTO `1l1ldayl4月21日` VALUES ('20160680151', '张吉涛25', '24', '56', '47', '66', '97', '21', '33', '48', '73', '93', '55.8');

-- ----------------------------
-- Table structure for 1l1ldayl4月22日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月22日`;
CREATE TABLE `1l1ldayl4月22日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月22日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月22日
-- ----------------------------
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680126', '张吉涛0', '52', '97', '98', '90', '94', '65', '77', '34', '86', '79', '77.2');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680127', '张吉涛1', '32', '92', '96', '93', '92', '44', '51', '86', '69', '94', '74.9');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680128', '张吉涛2', '45', '62', '61', '58', '59', '77', '75', '50', '92', '40', '61.9');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680129', '张吉涛3', '60', '59', '86', '60', '69', '86', '79', '75', '28', '41', '64.3');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680130', '张吉涛4', '87', '91', '82', '88', '57', '38', '20', '41', '94', '97', '69.5');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680131', '张吉涛5', '53', '94', '72', '80', '59', '58', '61', '52', '29', '46', '60.4');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680132', '张吉涛6', '60', '32', '55', '52', '42', '24', '85', '74', '47', '51', '52.2');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680133', '张吉涛7', '76', '64', '78', '25', '100', '91', '61', '62', '33', '64', '65.4');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680134', '张吉涛8', '66', '24', '23', '82', '69', '35', '60', '91', '38', '20', '50.8');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680135', '张吉涛9', '76', '83', '46', '70', '23', '98', '47', '70', '68', '53', '63.4');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680136', '张吉涛10', '25', '40', '36', '78', '31', '25', '67', '46', '72', '32', '45.2');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680137', '张吉涛11', '40', '20', '72', '92', '75', '59', '96', '75', '98', '51', '67.8');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680138', '张吉涛12', '53', '86', '90', '57', '96', '70', '69', '53', '36', '40', '65');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680139', '张吉涛13', '60', '45', '55', '47', '55', '77', '25', '78', '77', '64', '58.3');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680140', '张吉涛14', '67', '33', '90', '73', '44', '49', '93', '93', '49', '25', '61.6');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680141', '张吉涛15', '32', '41', '91', '49', '64', '89', '79', '96', '86', '36', '66.3');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680142', '张吉涛16', '80', '42', '58', '69', '60', '100', '86', '57', '30', '78', '66');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680143', '张吉涛17', '64', '23', '63', '61', '72', '98', '48', '33', '83', '38', '58.3');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680144', '张吉涛18', '67', '38', '63', '70', '36', '20', '80', '33', '75', '27', '50.9');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680145', '张吉涛19', '51', '90', '93', '69', '51', '91', '95', '90', '93', '28', '75.1');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680146', '张吉涛20', '30', '65', '37', '92', '89', '61', '26', '46', '100', '77', '62.3');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680147', '张吉涛21', '38', '41', '91', '50', '91', '85', '98', '64', '74', '90', '72.2');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680148', '张吉涛22', '29', '25', '71', '100', '22', '33', '27', '20', '50', '43', '42');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680149', '张吉涛23', '34', '31', '59', '58', '84', '34', '73', '71', '75', '85', '60.4');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680150', '张吉涛24', '49', '100', '54', '52', '90', '32', '99', '86', '20', '76', '65.8');
INSERT INTO `1l1ldayl4月22日` VALUES ('20160680151', '张吉涛25', '53', '41', '50', '80', '52', '33', '79', '20', '83', '73', '56.4');

-- ----------------------------
-- Table structure for 1l1ldayl4月23日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月23日`;
CREATE TABLE `1l1ldayl4月23日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月23日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月23日
-- ----------------------------
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680126', '张吉涛0', '23', '23', '36', '69', '80', '86', '43', '71', '70', '62', '56.3');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680127', '张吉涛1', '32', '32', '81', '23', '36', '40', '58', '20', '25', '50', '39.7');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680128', '张吉涛2', '58', '54', '23', '70', '26', '41', '88', '83', '35', '83', '56.1');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680129', '张吉涛3', '48', '36', '43', '33', '97', '25', '32', '82', '72', '71', '53.9');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680130', '张吉涛4', '65', '70', '96', '54', '39', '83', '48', '30', '58', '85', '62.8');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680131', '张吉涛5', '24', '43', '48', '74', '63', '48', '26', '54', '25', '85', '49');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680132', '张吉涛6', '49', '58', '38', '25', '43', '78', '43', '58', '21', '94', '50.7');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680133', '张吉涛7', '78', '48', '78', '49', '43', '26', '54', '46', '70', '27', '51.9');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680134', '张吉涛8', '64', '95', '93', '34', '70', '55', '73', '54', '77', '64', '67.9');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680135', '张吉涛9', '55', '63', '83', '21', '95', '72', '37', '70', '85', '71', '65.2');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680136', '张吉涛10', '62', '52', '66', '75', '32', '74', '58', '57', '29', '21', '52.6');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680137', '张吉涛11', '53', '32', '64', '49', '52', '96', '40', '29', '66', '92', '57.3');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680138', '张吉涛12', '97', '22', '55', '33', '46', '98', '63', '77', '57', '89', '63.7');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680139', '张吉涛13', '24', '95', '97', '93', '26', '86', '60', '62', '68', '69', '68');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680140', '张吉涛14', '51', '60', '33', '72', '92', '70', '75', '57', '29', '78', '61.7');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680141', '张吉涛15', '98', '32', '20', '37', '42', '76', '56', '57', '88', '64', '57');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680142', '张吉涛16', '48', '39', '64', '50', '84', '41', '47', '70', '59', '38', '54');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680143', '张吉涛17', '65', '91', '28', '26', '49', '27', '34', '96', '78', '29', '52.3');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680144', '张吉涛18', '78', '85', '100', '83', '92', '83', '83', '64', '88', '44', '80');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680145', '张吉涛19', '44', '85', '34', '80', '26', '41', '91', '41', '70', '71', '58.3');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680146', '张吉涛20', '99', '69', '80', '27', '50', '71', '78', '37', '39', '23', '57.3');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680147', '张吉涛21', '30', '22', '80', '92', '65', '95', '40', '39', '92', '24', '57.9');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680148', '张吉涛22', '91', '48', '32', '77', '63', '98', '71', '76', '50', '100', '70.6');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680149', '张吉涛23', '27', '40', '81', '29', '29', '60', '42', '88', '67', '74', '53.7');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680150', '张吉涛24', '41', '46', '94', '44', '56', '97', '93', '61', '22', '63', '61.7');
INSERT INTO `1l1ldayl4月23日` VALUES ('20160680151', '张吉涛25', '82', '67', '72', '76', '22', '81', '58', '33', '30', '65', '58.6');

-- ----------------------------
-- Table structure for 1l1ldayl4月24日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月24日`;
CREATE TABLE `1l1ldayl4月24日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月24日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月24日
-- ----------------------------
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680126', '张吉涛0', '97', '98', '31', '38', '61', '29', '47', '36', '96', '73', '60.6');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680127', '张吉涛1', '35', '92', '85', '86', '86', '31', '32', '63', '77', '44', '63.1');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680128', '张吉涛2', '25', '54', '91', '71', '38', '45', '44', '80', '29', '81', '55.8');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680129', '张吉涛3', '38', '57', '84', '55', '43', '27', '56', '67', '54', '79', '56');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680130', '张吉涛4', '37', '94', '32', '32', '22', '20', '35', '78', '41', '29', '42');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680131', '张吉涛5', '24', '45', '40', '27', '75', '89', '61', '30', '99', '87', '57.7');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680132', '张吉涛6', '98', '28', '38', '98', '86', '59', '31', '95', '32', '66', '63.1');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680133', '张吉涛7', '37', '24', '95', '64', '26', '35', '71', '63', '35', '57', '50.7');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680134', '张吉涛8', '53', '79', '65', '29', '100', '20', '27', '72', '29', '86', '56');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680135', '张吉涛9', '36', '66', '100', '38', '22', '24', '84', '74', '67', '40', '55.1');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680136', '张吉涛10', '60', '44', '39', '90', '52', '80', '20', '22', '35', '94', '53.6');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680137', '张吉涛11', '23', '88', '99', '85', '65', '59', '83', '38', '77', '81', '69.8');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680138', '张吉涛12', '75', '25', '45', '55', '92', '96', '97', '31', '22', '95', '63.3');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680139', '张吉涛13', '57', '20', '55', '44', '67', '75', '74', '93', '21', '22', '52.8');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680140', '张吉涛14', '88', '31', '39', '36', '61', '28', '26', '72', '43', '23', '44.7');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680141', '张吉涛15', '99', '61', '82', '96', '44', '32', '41', '59', '32', '79', '62.5');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680142', '张吉涛16', '52', '62', '88', '93', '26', '46', '99', '80', '71', '52', '66.9');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680143', '张吉涛17', '31', '96', '57', '60', '90', '83', '49', '86', '32', '74', '65.8');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680144', '张吉涛18', '92', '28', '93', '66', '74', '23', '69', '20', '25', '60', '55');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680145', '张吉涛19', '30', '52', '72', '49', '92', '39', '65', '82', '20', '68', '56.9');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680146', '张吉涛20', '97', '45', '80', '75', '22', '77', '58', '32', '80', '37', '60.3');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680147', '张吉涛21', '62', '75', '61', '97', '79', '92', '87', '21', '94', '56', '72.4');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680148', '张吉涛22', '99', '71', '69', '22', '67', '61', '22', '41', '93', '63', '60.8');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680149', '张吉涛23', '53', '43', '41', '86', '23', '32', '30', '89', '21', '86', '50.4');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680150', '张吉涛24', '90', '43', '20', '36', '64', '35', '31', '99', '72', '59', '54.9');
INSERT INTO `1l1ldayl4月24日` VALUES ('20160680151', '张吉涛25', '38', '44', '100', '83', '29', '78', '90', '23', '43', '84', '61.2');

-- ----------------------------
-- Table structure for 1l1ldayl4月25日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月25日`;
CREATE TABLE `1l1ldayl4月25日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月25日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月25日
-- ----------------------------
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680126', '张吉涛0', '47', '37', '91', '29', '90', '74', '78', '45', '86', '26', '60.3');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680127', '张吉涛1', '95', '69', '58', '63', '24', '100', '94', '72', '49', '95', '71.9');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680128', '张吉涛2', '66', '97', '30', '92', '90', '34', '77', '58', '56', '84', '68.4');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680129', '张吉涛3', '46', '44', '73', '80', '68', '82', '100', '82', '25', '74', '67.4');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680130', '张吉涛4', '53', '62', '42', '60', '38', '46', '37', '96', '97', '80', '61.1');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680131', '张吉涛5', '85', '28', '42', '27', '53', '97', '78', '41', '62', '62', '57.5');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680132', '张吉涛6', '79', '79', '49', '59', '81', '41', '83', '53', '86', '24', '63.4');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680133', '张吉涛7', '60', '81', '84', '39', '59', '95', '95', '25', '69', '76', '68.3');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680134', '张吉涛8', '91', '32', '88', '75', '83', '65', '50', '75', '72', '90', '72.1');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680135', '张吉涛9', '97', '41', '61', '99', '96', '36', '73', '96', '95', '23', '71.7');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680136', '张吉涛10', '59', '91', '22', '84', '69', '37', '84', '49', '57', '54', '60.6');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680137', '张吉涛11', '74', '39', '29', '79', '55', '91', '40', '35', '44', '66', '55.2');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680138', '张吉涛12', '50', '30', '80', '79', '48', '84', '23', '28', '63', '30', '51.5');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680139', '张吉涛13', '29', '76', '20', '63', '93', '55', '69', '58', '90', '39', '59.2');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680140', '张吉涛14', '82', '41', '66', '93', '33', '60', '47', '56', '53', '84', '61.5');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680141', '张吉涛15', '72', '96', '56', '90', '55', '21', '89', '21', '45', '43', '58.8');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680142', '张吉涛16', '20', '91', '82', '67', '34', '50', '29', '52', '45', '95', '56.5');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680143', '张吉涛17', '52', '46', '87', '93', '96', '61', '83', '87', '91', '30', '72.6');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680144', '张吉涛18', '89', '50', '62', '95', '45', '24', '77', '47', '37', '46', '57.2');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680145', '张吉涛19', '20', '87', '44', '34', '95', '71', '80', '77', '72', '99', '67.9');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680146', '张吉涛20', '66', '33', '98', '34', '24', '97', '75', '82', '90', '48', '64.7');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680147', '张吉涛21', '44', '37', '28', '95', '49', '27', '40', '46', '34', '81', '48.1');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680148', '张吉涛22', '76', '71', '39', '73', '53', '41', '32', '43', '58', '87', '57.3');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680149', '张吉涛23', '39', '27', '88', '68', '26', '58', '41', '60', '36', '30', '47.3');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680150', '张吉涛24', '44', '28', '26', '29', '51', '50', '49', '43', '78', '62', '46');
INSERT INTO `1l1ldayl4月25日` VALUES ('20160680151', '张吉涛25', '83', '98', '83', '61', '87', '98', '87', '21', '79', '93', '79');

-- ----------------------------
-- Table structure for 1l1ldayl4月26日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月26日`;
CREATE TABLE `1l1ldayl4月26日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月26日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月26日
-- ----------------------------
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680126', '张吉涛0', '94', '66', '60', '95', '100', '95', '95', '29', '81', '35', '75');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680127', '张吉涛1', '31', '54', '43', '48', '91', '36', '39', '53', '49', '92', '53.6');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680128', '张吉涛2', '87', '32', '89', '36', '44', '51', '76', '48', '76', '92', '63.1');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680129', '张吉涛3', '83', '74', '100', '85', '93', '76', '97', '84', '32', '60', '78.4');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680130', '张吉涛4', '61', '38', '82', '33', '47', '91', '27', '29', '83', '35', '52.6');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680131', '张吉涛5', '78', '44', '62', '33', '67', '56', '93', '61', '80', '53', '62.7');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680132', '张吉涛6', '76', '100', '49', '68', '30', '90', '27', '22', '20', '69', '55.1');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680133', '张吉涛7', '45', '28', '31', '21', '98', '31', '93', '97', '35', '92', '57.1');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680134', '张吉涛8', '73', '50', '75', '85', '44', '54', '84', '32', '91', '87', '67.5');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680135', '张吉涛9', '20', '35', '88', '99', '36', '34', '85', '87', '48', '89', '62.1');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680136', '张吉涛10', '69', '44', '40', '69', '45', '64', '68', '92', '80', '61', '63.2');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680137', '张吉涛11', '39', '92', '53', '77', '54', '91', '44', '96', '64', '28', '63.8');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680138', '张吉涛12', '27', '75', '29', '34', '72', '64', '34', '37', '56', '42', '47');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680139', '张吉涛13', '49', '70', '83', '47', '73', '20', '65', '42', '28', '24', '50.1');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680140', '张吉涛14', '97', '72', '99', '30', '28', '42', '42', '62', '96', '83', '65.1');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680141', '张吉涛15', '88', '50', '45', '46', '43', '64', '25', '72', '98', '38', '56.9');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680142', '张吉涛16', '88', '28', '45', '97', '73', '96', '68', '23', '79', '39', '63.6');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680143', '张吉涛17', '70', '40', '67', '37', '65', '69', '90', '89', '75', '28', '63');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680144', '张吉涛18', '54', '71', '88', '47', '31', '77', '48', '22', '61', '87', '58.6');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680145', '张吉涛19', '67', '98', '94', '33', '87', '67', '81', '45', '69', '85', '72.6');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680146', '张吉涛20', '78', '88', '46', '79', '85', '82', '72', '52', '98', '20', '70');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680147', '张吉涛21', '64', '91', '36', '82', '88', '51', '52', '60', '71', '20', '61.5');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680148', '张吉涛22', '96', '29', '67', '82', '75', '71', '33', '85', '98', '84', '72');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680149', '张吉涛23', '61', '33', '41', '43', '34', '24', '22', '55', '97', '86', '49.6');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680150', '张吉涛24', '63', '35', '68', '55', '34', '96', '32', '34', '23', '99', '53.9');
INSERT INTO `1l1ldayl4月26日` VALUES ('20160680151', '张吉涛25', '92', '89', '100', '61', '80', '50', '27', '75', '44', '63', '68.1');

-- ----------------------------
-- Table structure for 1l1ldayl4月27日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl4月27日`;
CREATE TABLE `1l1ldayl4月27日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl4月27日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl4月27日
-- ----------------------------
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680126', '张吉涛0', '97', '98', '31', '38', '61', '29', '47', '36', '96', '73', '60.6');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680127', '张吉涛1', '35', '92', '85', '86', '86', '31', '32', '63', '77', '44', '63.1');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680128', '张吉涛2', '25', '54', '91', '71', '38', '45', '44', '80', '29', '81', '55.8');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680129', '张吉涛3', '38', '57', '84', '55', '43', '27', '56', '67', '54', '79', '56');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680130', '张吉涛4', '37', '94', '32', '32', '22', '20', '35', '78', '41', '29', '42');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680131', '张吉涛5', '24', '45', '40', '27', '75', '89', '61', '30', '99', '87', '57.7');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680132', '张吉涛6', '98', '28', '38', '98', '86', '59', '31', '95', '32', '66', '63.1');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680133', '张吉涛7', '37', '24', '95', '64', '26', '35', '71', '63', '35', '57', '50.7');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680134', '张吉涛8', '53', '79', '65', '29', '100', '20', '27', '72', '29', '86', '56');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680135', '张吉涛9', '36', '66', '100', '38', '22', '24', '84', '74', '67', '40', '55.1');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680136', '张吉涛10', '60', '44', '39', '90', '52', '80', '20', '22', '35', '94', '53.6');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680137', '张吉涛11', '23', '88', '99', '85', '65', '59', '83', '38', '77', '81', '69.8');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680138', '张吉涛12', '75', '25', '45', '55', '92', '96', '97', '31', '22', '95', '63.3');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680139', '张吉涛13', '57', '20', '55', '44', '67', '75', '74', '93', '21', '22', '52.8');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680140', '张吉涛14', '88', '31', '39', '36', '61', '28', '26', '72', '43', '23', '44.7');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680141', '张吉涛15', '99', '61', '82', '96', '44', '32', '41', '59', '32', '79', '62.5');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680142', '张吉涛16', '52', '62', '88', '93', '26', '46', '99', '80', '71', '52', '66.9');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680143', '张吉涛17', '31', '96', '57', '60', '90', '83', '49', '86', '32', '74', '65.8');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680144', '张吉涛18', '92', '28', '93', '66', '74', '23', '69', '20', '25', '60', '55');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680145', '张吉涛19', '30', '52', '72', '49', '92', '39', '65', '82', '20', '68', '56.9');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680146', '张吉涛20', '97', '45', '80', '75', '22', '77', '58', '32', '80', '37', '60.3');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680147', '张吉涛21', '62', '75', '61', '97', '79', '92', '87', '21', '94', '56', '72.4');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680148', '张吉涛22', '99', '71', '69', '22', '67', '61', '22', '41', '93', '63', '60.8');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680149', '张吉涛23', '53', '43', '41', '86', '23', '32', '30', '89', '21', '86', '50.4');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680150', '张吉涛24', '90', '43', '20', '36', '64', '35', '31', '99', '72', '59', '54.9');
INSERT INTO `1l1ldayl4月27日` VALUES ('20160680151', '张吉涛25', '38', '44', '100', '83', '29', '78', '90', '23', '43', '84', '61.2');

-- ----------------------------
-- Table structure for 1l1ldayl5月1日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl5月1日`;
CREATE TABLE `1l1ldayl5月1日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl5月1日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl5月1日
-- ----------------------------
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680126', '张吉涛0', '47', '37', '91', '29', '90', '74', '78', '45', '86', '26', '60.3');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680127', '张吉涛1', '95', '69', '58', '63', '24', '100', '94', '72', '49', '95', '71.9');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680128', '张吉涛2', '66', '97', '30', '92', '90', '34', '77', '58', '56', '84', '68.4');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680129', '张吉涛3', '46', '44', '73', '80', '68', '82', '100', '82', '25', '74', '67.4');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680130', '张吉涛4', '53', '62', '42', '60', '38', '46', '37', '96', '97', '80', '61.1');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680131', '张吉涛5', '85', '28', '42', '27', '53', '97', '78', '41', '62', '62', '57.5');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680132', '张吉涛6', '79', '79', '49', '59', '81', '41', '83', '53', '86', '24', '63.4');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680133', '张吉涛7', '60', '81', '84', '39', '59', '95', '95', '25', '69', '76', '68.3');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680134', '张吉涛8', '91', '32', '88', '75', '83', '65', '50', '75', '72', '90', '72.1');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680135', '张吉涛9', '97', '41', '61', '99', '96', '36', '73', '96', '95', '23', '71.7');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680136', '张吉涛10', '59', '91', '22', '84', '69', '37', '84', '49', '57', '54', '60.6');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680137', '张吉涛11', '74', '39', '29', '79', '55', '91', '40', '35', '44', '66', '55.2');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680138', '张吉涛12', '50', '30', '80', '79', '48', '84', '23', '28', '63', '30', '51.5');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680139', '张吉涛13', '29', '76', '20', '63', '93', '55', '69', '58', '90', '39', '59.2');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680140', '张吉涛14', '82', '41', '66', '93', '33', '60', '47', '56', '53', '84', '61.5');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680141', '张吉涛15', '72', '96', '56', '90', '55', '21', '89', '21', '45', '43', '58.8');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680142', '张吉涛16', '20', '91', '82', '67', '34', '50', '29', '52', '45', '95', '56.5');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680143', '张吉涛17', '52', '46', '87', '93', '96', '61', '83', '87', '91', '30', '72.6');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680144', '张吉涛18', '89', '50', '62', '95', '45', '24', '77', '47', '37', '46', '57.2');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680145', '张吉涛19', '20', '87', '44', '34', '95', '71', '80', '77', '72', '99', '67.9');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680146', '张吉涛20', '66', '33', '98', '34', '24', '97', '75', '82', '90', '48', '64.7');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680147', '张吉涛21', '44', '37', '28', '95', '49', '27', '40', '46', '34', '81', '48.1');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680148', '张吉涛22', '76', '71', '39', '73', '53', '41', '32', '43', '58', '87', '57.3');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680149', '张吉涛23', '39', '27', '88', '68', '26', '58', '41', '60', '36', '30', '47.3');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680150', '张吉涛24', '44', '28', '26', '29', '51', '50', '49', '43', '78', '62', '46');
INSERT INTO `1l1ldayl5月1日` VALUES ('20160680151', '张吉涛25', '83', '98', '83', '61', '87', '90', '87', '21', '79', '93', '78.2');

-- ----------------------------
-- Table structure for 1l1ldayl5月7日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl5月7日`;
CREATE TABLE `1l1ldayl5月7日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl5月7日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl5月7日
-- ----------------------------
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680126', '张吉涛0', '49', '36', '49', '40', '91', '99', '75', '33', '39', '50', '56.1');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680127', '张吉涛1', '47', '55', '52', '85', '87', '85', '20', '94', '95', '60', '68');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680128', '张吉涛2', '99', '56', '24', '26', '40', '75', '81', '37', '36', '58', '53.2');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680129', '张吉涛3', '96', '25', '50', '42', '78', '60', '39', '52', '49', '78', '56.9');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680130', '张吉涛4', '79', '42', '59', '32', '86', '27', '42', '31', '59', '87', '54.4');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680131', '张吉涛5', '98', '28', '69', '93', '84', '42', '35', '76', '86', '59', '67');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680132', '张吉涛6', '49', '68', '58', '61', '77', '97', '75', '40', '21', '85', '63.1');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680133', '张吉涛7', '49', '33', '87', '29', '35', '37', '66', '56', '56', '50', '49.8');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680134', '张吉涛8', '43', '40', '97', '70', '23', '76', '42', '90', '75', '40', '59.6');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680135', '张吉涛9', '41', '52', '74', '54', '30', '36', '40', '65', '24', '74', '49');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680136', '张吉涛10', '66', '62', '58', '87', '57', '20', '36', '73', '83', '75', '61.7');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680137', '张吉涛11', '96', '37', '78', '75', '25', '51', '39', '66', '89', '53', '60.9');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680138', '张吉涛12', '42', '27', '23', '98', '54', '88', '84', '42', '76', '24', '55.8');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680139', '张吉涛13', '57', '39', '47', '82', '96', '61', '96', '46', '26', '81', '63.1');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680140', '张吉涛14', '77', '58', '77', '97', '84', '37', '55', '26', '45', '99', '65.5');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680141', '张吉涛15', '95', '41', '77', '62', '51', '56', '36', '92', '71', '77', '65.8');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680142', '张吉涛16', '25', '67', '90', '91', '61', '43', '91', '92', '31', '27', '61.8');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680143', '张吉涛17', '71', '61', '55', '85', '74', '86', '52', '97', '40', '64', '68.5');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680144', '张吉涛18', '30', '88', '24', '74', '61', '38', '20', '91', '100', '24', '55');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680145', '张吉涛19', '25', '76', '35', '80', '33', '69', '98', '75', '86', '77', '65.4');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680146', '张吉涛20', '67', '86', '45', '93', '59', '97', '77', '83', '34', '42', '68.3');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680147', '张吉涛21', '54', '89', '80', '84', '86', '81', '88', '26', '24', '70', '68.2');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680148', '张吉涛22', '81', '84', '80', '87', '41', '35', '36', '35', '24', '43', '54.6');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680149', '张吉涛23', '73', '45', '70', '81', '98', '69', '29', '94', '30', '53', '64.2');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680150', '张吉涛24', '51', '80', '28', '71', '73', '26', '92', '31', '69', '87', '60.8');
INSERT INTO `1l1ldayl5月7日` VALUES ('20160680151', '张吉涛25', '75', '69', '33', '94', '75', '96', '89', '82', '29', '25', '66.7');

-- ----------------------------
-- Table structure for 1l1ldayl6月10日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl6月10日`;
CREATE TABLE `1l1ldayl6月10日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl6月10日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl6月10日
-- ----------------------------
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680126', '张吉涛0', '23', '23', '36', '69', '80', '86', '43', '71', '70', '62', '56.3');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680127', '张吉涛1', '32', '32', '81', '23', '36', '40', '58', '20', '25', '50', '39.7');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680128', '张吉涛2', '58', '54', '23', '70', '26', '41', '88', '83', '35', '83', '56.1');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680129', '张吉涛3', '48', '36', '43', '33', '97', '25', '32', '82', '72', '71', '53.9');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680130', '张吉涛4', '65', '70', '96', '54', '39', '83', '48', '30', '58', '85', '62.8');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680131', '张吉涛5', '24', '43', '48', '74', '63', '48', '26', '54', '25', '85', '49');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680132', '张吉涛6', '49', '58', '38', '25', '43', '78', '43', '58', '21', '94', '50.7');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680133', '张吉涛7', '78', '48', '78', '49', '43', '26', '54', '46', '70', '27', '51.9');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680134', '张吉涛8', '64', '95', '93', '34', '70', '55', '73', '54', '77', '64', '67.9');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680135', '张吉涛9', '55', '63', '83', '21', '95', '72', '37', '70', '85', '71', '65.2');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680136', '张吉涛10', '62', '52', '66', '75', '32', '74', '58', '57', '29', '21', '52.6');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680137', '张吉涛11', '53', '32', '64', '49', '52', '96', '40', '29', '66', '92', '57.3');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680138', '张吉涛12', '97', '22', '55', '33', '46', '98', '63', '77', '57', '89', '63.7');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680139', '张吉涛13', '24', '95', '97', '93', '26', '86', '60', '62', '68', '69', '68');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680140', '张吉涛14', '51', '60', '33', '72', '92', '70', '75', '57', '29', '78', '61.7');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680141', '张吉涛15', '98', '32', '20', '37', '42', '76', '56', '57', '88', '64', '57');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680142', '张吉涛16', '48', '39', '64', '50', '84', '41', '47', '70', '59', '38', '54');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680143', '张吉涛17', '65', '91', '28', '26', '49', '27', '34', '96', '78', '29', '52.3');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680144', '张吉涛18', '78', '85', '100', '83', '92', '83', '83', '64', '88', '44', '80');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680145', '张吉涛19', '44', '85', '34', '80', '26', '41', '91', '41', '70', '71', '58.3');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680146', '张吉涛20', '99', '69', '80', '27', '50', '71', '78', '37', '39', '23', '57.3');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680147', '张吉涛21', '30', '22', '80', '92', '65', '95', '40', '39', '92', '24', '57.9');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680148', '张吉涛22', '91', '48', '32', '77', '63', '98', '71', '76', '50', '100', '70.6');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680149', '张吉涛23', '27', '40', '81', '29', '29', '60', '42', '88', '67', '74', '53.7');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680150', '张吉涛24', '41', '46', '94', '44', '56', '97', '93', '61', '22', '63', '61.7');
INSERT INTO `1l1ldayl6月10日` VALUES ('20160680151', '张吉涛25', '82', '67', '72', '76', '22', '81', '58', '33', '30', '65', '58.6');

-- ----------------------------
-- Table structure for 1l1ldayl6月9日
-- ----------------------------
DROP TABLE IF EXISTS `1l1ldayl6月9日`;
CREATE TABLE `1l1ldayl6月9日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1ldayl6月9日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1ldayl6月9日
-- ----------------------------
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680126', '张吉涛0', '49', '75', '67', '89', '55', '-1', '-1', '45', '43', '26', '56.125');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680127', '张吉涛1', '91', '39', '21', '91', '96', '-1', '-1', '55', '70', '42', '63.125');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680128', '张吉涛2', '63', '75', '93', '37', '69', '68', '-1', '86', '27', '54', '63.55555555555556');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680129', '张吉涛3', '23', '74', '41', '88', '100', '96', '-1', '98', '34', '69', '69.22222222222223');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680130', '张吉涛4', '82', '87', '78', '67', '84', '99', '-1', '83', '37', '55', '74.66666666666667');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680131', '张吉涛5', '48', '46', '88', '58', '44', '37', '-1', '35', '88', '23', '51.888888888888886');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680132', '张吉涛6', '83', '32', '25', '22', '72', '32', '-1', '38', '40', '50', '43.77777777777778');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680133', '张吉涛7', '67', '95', '43', '51', '36', '89', '-1', '50', '90', '100', '69');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680134', '张吉涛8', '34', '93', '61', '56', '73', '100', '-1', '34', '36', '55', '60.22222222222222');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680135', '张吉涛9', '90', '72', '20', '53', '28', '60', '-1', '69', '87', '94', '63.666666666666664');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680136', '张吉涛10', '99', '86', '76', '87', '33', '54', '-1', '69', '44', '88', '70.66666666666667');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680137', '张吉涛11', '60', '89', '74', '33', '52', '87', '-1', '88', '48', '99', '70');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680138', '张吉涛12', '64', '36', '77', '69', '99', '21', '-1', '22', '63', '25', '52.888888888888886');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680139', '张吉涛13', '66', '64', '85', '37', '39', '20', '-1', '35', '67', '53', '51.77777777777778');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680140', '张吉涛14', '40', '23', '75', '68', '40', '49', '-1', '30', '48', '97', '52.22222222222222');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680141', '张吉涛15', '48', '88', '29', '28', '75', '48', '-1', '35', '73', '51', '52.77777777777778');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680142', '张吉涛16', '32', '85', '35', '82', '88', '79', '-1', '93', '86', '34', '68.22222222222223');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680143', '张吉涛17', '40', '20', '80', '98', '31', '-1', '-1', '74', '42', '63', '56');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680144', '张吉涛18', '49', '93', '92', '90', '90', '90', '-1', '27', '38', '51', '68.88888888888889');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680145', '张吉涛19', '86', '41', '93', '52', '96', '97', '-1', '95', '36', '47', '71.44444444444444');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680146', '张吉涛20', '43', '35', '74', '48', '44', '98', '-1', '25', '40', '71', '53.111111111111114');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680147', '张吉涛21', '91', '84', '29', '85', '70', '24', '-1', '37', '37', '47', '56');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680148', '张吉涛22', '95', '35', '27', '47', '61', '92', '-1', '77', '70', '49', '61.44444444444444');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680149', '张吉涛23', '39', '21', '56', '89', '55', '91', '-1', '97', '96', '61', '67.22222222222223');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680150', '张吉涛24', '52', '59', '66', '63', '58', '63', '-1', '84', '69', '88', '66.88888888888889');
INSERT INTO `1l1ldayl6月9日` VALUES ('20160680151', '张吉涛25', '37', '52', '80', '82', '94', '32', '-1', '77', '99', '66', '68.77777777777777');

-- ----------------------------
-- Table structure for 1l1lmonthl4月27日
-- ----------------------------
DROP TABLE IF EXISTS `1l1lmonthl4月27日`;
CREATE TABLE `1l1lmonthl4月27日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1lmonthl4月27日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1lmonthl4月27日
-- ----------------------------
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680126', '张吉涛0', '47', '37', '91', '29', '90', '74', '78', '45', '86', '26', '60.3');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680127', '张吉涛1', '95', '69', '58', '63', '24', '100', '94', '72', '49', '95', '71.9');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680128', '张吉涛2', '66', '97', '30', '92', '90', '34', '77', '58', '56', '84', '68.4');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680129', '张吉涛3', '46', '44', '73', '80', '68', '82', '100', '82', '25', '74', '67.4');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680130', '张吉涛4', '53', '62', '42', '60', '38', '46', '37', '96', '97', '80', '61.1');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680131', '张吉涛5', '85', '28', '42', '27', '53', '97', '78', '41', '62', '62', '57.5');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680132', '张吉涛6', '79', '79', '49', '59', '81', '41', '83', '53', '86', '24', '63.4');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680133', '张吉涛7', '60', '81', '84', '39', '59', '95', '95', '25', '69', '76', '68.3');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680134', '张吉涛8', '91', '32', '88', '75', '83', '65', '50', '75', '72', '90', '72.1');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680135', '张吉涛9', '97', '41', '61', '99', '96', '36', '73', '96', '95', '23', '71.7');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680136', '张吉涛10', '59', '91', '22', '84', '69', '37', '84', '49', '57', '54', '60.6');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680137', '张吉涛11', '74', '39', '29', '79', '55', '91', '40', '35', '44', '66', '55.2');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680138', '张吉涛12', '50', '30', '80', '79', '48', '84', '23', '28', '63', '30', '51.5');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680139', '张吉涛13', '29', '76', '20', '63', '93', '55', '69', '58', '90', '39', '59.2');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680140', '张吉涛14', '82', '41', '66', '93', '33', '60', '47', '56', '53', '84', '61.5');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680141', '张吉涛15', '72', '96', '56', '90', '55', '21', '89', '21', '45', '43', '58.8');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680142', '张吉涛16', '20', '91', '82', '67', '34', '50', '29', '52', '45', '95', '56.5');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680143', '张吉涛17', '52', '46', '87', '93', '96', '61', '83', '87', '91', '30', '72.6');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680144', '张吉涛18', '89', '50', '62', '95', '45', '24', '77', '47', '37', '46', '57.2');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680145', '张吉涛19', '20', '87', '44', '34', '95', '71', '80', '77', '72', '99', '67.9');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680146', '张吉涛20', '66', '33', '98', '34', '24', '97', '75', '82', '90', '48', '64.7');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680147', '张吉涛21', '44', '37', '28', '95', '49', '27', '40', '46', '34', '81', '48.1');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680148', '张吉涛22', '76', '71', '39', '73', '53', '41', '32', '43', '58', '87', '57.3');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680149', '张吉涛23', '39', '27', '88', '68', '26', '58', '41', '60', '36', '30', '47.3');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680150', '张吉涛24', '44', '28', '26', '29', '51', '50', '49', '43', '78', '62', '46');
INSERT INTO `1l1lmonthl4月27日` VALUES ('20160680151', '张吉涛25', '83', '98', '83', '61', '87', '98', '87', '21', '79', '93', '79');

-- ----------------------------
-- Table structure for 1l1lparent
-- ----------------------------
DROP TABLE IF EXISTS `1l1lparent`;
CREATE TABLE `1l1lparent` (
  `name` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `stuno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `workunit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`phoneno`),
  KEY `stuno` (`stuno`),
  CONSTRAINT `1l1lparent_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1lparent
-- ----------------------------
INSERT INTO `1l1lparent` VALUES ('张吉0', '15297503973', '20160680126', '123123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉1', '15297503974', '20160680127', '123', '爷孙', '河北省邯郸市峰峰', '工人');
INSERT INTO `1l1lparent` VALUES ('张吉2', '15297503975', '20160680128', '123', '姐弟', '河北省邯郸市峰峰', '国营企业');
INSERT INTO `1l1lparent` VALUES ('张吉3', '15297503976', '20160680129', '123', '姨姨', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l1lparent` VALUES ('张吉4', '15297503977', '20160680130', '123', '小弟', '河南邯郸市峰峰', '教育事业');
INSERT INTO `1l1lparent` VALUES ('张吉5', '15297503978', '20160680131', '123', '大哥', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l1lparent` VALUES ('张吉6', '15297503979', '20160680132', '123', '奶奶', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l1lparent` VALUES ('张吉7', '15297503980', '20160680133', '123', '姥姥', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉8', '15297503981', '20160680134', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉9', '15297503982', '20160680135', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉10', '15297503983', '20160680136', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉11', '15297503984', '20160680137', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l1lparent` VALUES ('张吉12', '15297503985', '20160680138', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l1lparent` VALUES ('张吉13', '15297503986', '20160680139', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l1lparent` VALUES ('张吉14', '15297503987', '20160680140', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l1lparent` VALUES ('张吉15', '15297503988', '20160680141', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l1lparent` VALUES ('张吉16', '15297503989', '20160680142', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l1lparent` VALUES ('张吉17', '15297503990', '20160680143', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l1lparent` VALUES ('张吉18', '15297503991', '20160680144', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l1lparent` VALUES ('张吉19', '15297503992', '20160680145', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l1lparent` VALUES ('张吉20', '15297503993', '20160680146', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l1lparent` VALUES ('张吉21', '15297503994', '20160680147', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉22', '15297503995', '20160680148', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉23', '15297503996', '20160680149', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉24', '15297503997', '20160680150', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l1lparent` VALUES ('张吉25', '15297503998', '20160680151', '123', '父母', '河北省邯郸市峰峰', '务农');

-- ----------------------------
-- Table structure for 1l1lstudent
-- ----------------------------
DROP TABLE IF EXISTS `1l1lstudent`;
CREATE TABLE `1l1lstudent` (
  `stuno` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `sex` int(11) NOT NULL,
  `borndate` date NOT NULL,
  PRIMARY KEY (`stuno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1lstudent
-- ----------------------------
INSERT INTO `1l1lstudent` VALUES ('20160680126', '张吉涛0', '1', '1998-04-01');
INSERT INTO `1l1lstudent` VALUES ('20160680127', '张吉涛1', '1', '1998-05-01');
INSERT INTO `1l1lstudent` VALUES ('20160680128', '张吉涛2', '0', '1998-06-01');
INSERT INTO `1l1lstudent` VALUES ('20160680129', '张吉涛3', '0', '1998-07-23');
INSERT INTO `1l1lstudent` VALUES ('20160680130', '张吉涛4', '1', '1998-08-01');
INSERT INTO `1l1lstudent` VALUES ('20160680131', '张吉涛5', '1', '1998-09-01');
INSERT INTO `1l1lstudent` VALUES ('20160680132', '张吉涛6', '0', '1998-10-01');
INSERT INTO `1l1lstudent` VALUES ('20160680133', '张吉涛7', '1', '1998-11-01');
INSERT INTO `1l1lstudent` VALUES ('20160680134', '张吉涛8', '0', '1998-12-01');
INSERT INTO `1l1lstudent` VALUES ('20160680135', '张吉涛9', '1', '1999-01-01');
INSERT INTO `1l1lstudent` VALUES ('20160680136', '张吉涛10', '1', '1999-01-02');
INSERT INTO `1l1lstudent` VALUES ('20160680137', '张吉涛11', '1', '1999-01-03');
INSERT INTO `1l1lstudent` VALUES ('20160680138', '张吉涛12', '1', '1999-01-04');
INSERT INTO `1l1lstudent` VALUES ('20160680139', '张吉涛13', '1', '1999-01-05');
INSERT INTO `1l1lstudent` VALUES ('20160680140', '张吉涛14', '1', '1999-01-06');
INSERT INTO `1l1lstudent` VALUES ('20160680141', '张吉涛15', '0', '1999-01-07');
INSERT INTO `1l1lstudent` VALUES ('20160680142', '张吉涛16', '0', '1999-01-08');
INSERT INTO `1l1lstudent` VALUES ('20160680143', '张吉涛17', '0', '1999-01-09');
INSERT INTO `1l1lstudent` VALUES ('20160680144', '张吉涛18', '0', '1999-01-10');
INSERT INTO `1l1lstudent` VALUES ('20160680145', '张吉涛19', '0', '1999-01-11');
INSERT INTO `1l1lstudent` VALUES ('20160680146', '张吉涛20', '0', '1999-01-12');
INSERT INTO `1l1lstudent` VALUES ('20160680147', '张吉涛21', '1', '1999-01-13');
INSERT INTO `1l1lstudent` VALUES ('20160680148', '张吉涛22', '1', '1999-01-14');
INSERT INTO `1l1lstudent` VALUES ('20160680149', '张吉涛23', '1', '1999-01-15');
INSERT INTO `1l1lstudent` VALUES ('20160680150', '张吉涛24', '1', '1999-01-16');
INSERT INTO `1l1lstudent` VALUES ('20160680151', '张吉涛25', '1', '1999-01-17');

-- ----------------------------
-- Table structure for 1l1lweekl4月27日
-- ----------------------------
DROP TABLE IF EXISTS `1l1lweekl4月27日`;
CREATE TABLE `1l1lweekl4月27日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1lweekl4月27日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1lweekl4月27日
-- ----------------------------
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680126', '张吉涛0', '49', '36', '49', '40', '91', '99', '75', '33', '39', '50', '56.1');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680127', '张吉涛1', '47', '55', '52', '85', '87', '85', '20', '94', '95', '60', '68');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680128', '张吉涛2', '99', '56', '24', '26', '40', '75', '81', '37', '36', '58', '53.2');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680129', '张吉涛3', '96', '25', '50', '42', '78', '60', '39', '52', '49', '78', '56.9');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680130', '张吉涛4', '79', '42', '59', '32', '86', '27', '42', '31', '59', '87', '54.4');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680131', '张吉涛5', '98', '28', '69', '93', '84', '42', '35', '76', '86', '59', '67');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680132', '张吉涛6', '49', '68', '58', '61', '77', '97', '75', '40', '21', '85', '63.1');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680133', '张吉涛7', '49', '33', '87', '29', '35', '37', '66', '56', '56', '50', '49.8');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680134', '张吉涛8', '43', '40', '97', '70', '23', '76', '42', '90', '75', '40', '59.6');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680135', '张吉涛9', '41', '52', '74', '54', '30', '36', '40', '65', '24', '74', '49');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680136', '张吉涛10', '66', '62', '58', '87', '57', '20', '36', '73', '83', '75', '61.7');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680137', '张吉涛11', '96', '37', '78', '75', '25', '51', '39', '66', '89', '53', '60.9');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680138', '张吉涛12', '42', '27', '23', '98', '54', '88', '84', '42', '76', '24', '55.8');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680139', '张吉涛13', '57', '39', '47', '82', '96', '61', '96', '46', '26', '81', '63.1');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680140', '张吉涛14', '77', '58', '77', '97', '84', '37', '55', '26', '45', '99', '65.5');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680141', '张吉涛15', '95', '41', '77', '62', '51', '56', '36', '92', '71', '77', '65.8');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680142', '张吉涛16', '25', '67', '90', '91', '61', '43', '91', '92', '31', '27', '61.8');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680143', '张吉涛17', '71', '61', '55', '85', '74', '86', '52', '97', '40', '64', '68.5');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680144', '张吉涛18', '30', '88', '24', '74', '61', '38', '20', '91', '100', '24', '55');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680145', '张吉涛19', '25', '76', '35', '80', '33', '69', '98', '75', '86', '77', '65.4');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680146', '张吉涛20', '67', '86', '45', '93', '59', '97', '77', '83', '34', '42', '68.3');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680147', '张吉涛21', '54', '89', '80', '84', '86', '81', '88', '26', '24', '70', '68.2');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680148', '张吉涛22', '81', '84', '80', '87', '41', '35', '36', '35', '24', '43', '54.6');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680149', '张吉涛23', '73', '45', '70', '81', '98', '69', '29', '94', '30', '53', '64.2');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680150', '张吉涛24', '51', '80', '28', '71', '73', '26', '92', '31', '69', '87', '60.8');
INSERT INTO `1l1lweekl4月27日` VALUES ('20160680151', '张吉涛25', '75', '69', '33', '94', '75', '96', '89', '82', '29', '25', '66.7');

-- ----------------------------
-- Table structure for 1l1lweekl5月19日
-- ----------------------------
DROP TABLE IF EXISTS `1l1lweekl5月19日`;
CREATE TABLE `1l1lweekl5月19日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1lweekl5月19日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1lweekl5月19日
-- ----------------------------
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680126', '张吉涛0', '74', '23', '75', '56', '61', '43', '64', '33', '87', '23', '53.9');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680127', '张吉涛1', '89', '94', '79', '90', '22', '41', '63', '60', '87', '30', '65.5');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680128', '张吉涛2', '70', '88', '80', '37', '46', '34', '74', '94', '71', '74', '66.8');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680129', '张吉涛3', '26', '21', '28', '86', '81', '57', '84', '92', '58', '83', '61.6');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680130', '张吉涛4', '89', '73', '39', '22', '83', '75', '81', '39', '20', '57', '57.8');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680131', '张吉涛5', '97', '39', '27', '54', '52', '82', '35', '27', '91', '54', '55.8');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680132', '张吉涛6', '68', '52', '40', '45', '97', '33', '34', '47', '87', '38', '54.1');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680133', '张吉涛7', '41', '30', '70', '51', '94', '96', '53', '92', '27', '37', '59.1');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680134', '张吉涛8', '95', '41', '24', '37', '99', '78', '47', '78', '57', '86', '64.2');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680135', '张吉涛9', '56', '47', '90', '30', '89', '56', '65', '92', '68', '40', '63.3');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680136', '张吉涛10', '96', '88', '33', '61', '23', '66', '41', '53', '26', '34', '52.1');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680137', '张吉涛11', '64', '53', '53', '99', '39', '29', '30', '69', '85', '65', '58.6');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680138', '张吉涛12', '20', '100', '81', '67', '97', '72', '73', '92', '66', '44', '71.2');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680139', '张吉涛13', '58', '60', '94', '93', '97', '35', '43', '99', '77', '25', '68.1');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680140', '张吉涛14', '89', '76', '54', '64', '20', '83', '82', '94', '69', '36', '66.7');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680141', '张吉涛15', '20', '40', '100', '65', '47', '49', '51', '94', '28', '42', '53.6');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680142', '张吉涛16', '22', '75', '75', '52', '91', '86', '51', '41', '62', '47', '60.2');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680143', '张吉涛17', '34', '65', '54', '79', '92', '47', '76', '50', '58', '32', '58.7');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680144', '张吉涛18', '40', '40', '90', '75', '78', '90', '42', '81', '81', '37', '65.4');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680145', '张吉涛19', '45', '81', '52', '40', '36', '73', '27', '34', '67', '33', '48.8');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680146', '张吉涛20', '58', '99', '59', '82', '61', '45', '99', '91', '63', '25', '68.2');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680147', '张吉涛21', '76', '38', '53', '70', '99', '85', '60', '72', '48', '81', '68.2');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680148', '张吉涛22', '80', '36', '80', '71', '36', '78', '38', '50', '94', '37', '60');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680149', '张吉涛23', '77', '70', '79', '36', '93', '78', '60', '28', '47', '67', '63.5');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680150', '张吉涛24', '76', '59', '48', '50', '73', '20', '65', '56', '63', '93', '60.3');
INSERT INTO `1l1lweekl5月19日` VALUES ('20160680151', '张吉涛25', '86', '97', '64', '81', '42', '62', '100', '48', '38', '22', '64');

-- ----------------------------
-- Table structure for 1l1lweekl5月9日
-- ----------------------------
DROP TABLE IF EXISTS `1l1lweekl5月9日`;
CREATE TABLE `1l1lweekl5月9日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l1lweekl5月9日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l1lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l1lweekl5月9日
-- ----------------------------
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680126', '张吉涛0', '47', '37', '91', '29', '90', '74', '78', '45', '86', '26', '60.3');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680127', '张吉涛1', '95', '69', '58', '63', '24', '100', '94', '72', '49', '95', '71.9');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680128', '张吉涛2', '66', '97', '30', '92', '90', '34', '77', '58', '56', '84', '68.4');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680129', '张吉涛3', '46', '44', '73', '80', '68', '82', '100', '82', '25', '74', '67.4');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680130', '张吉涛4', '53', '62', '42', '60', '38', '46', '37', '96', '97', '80', '61.1');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680131', '张吉涛5', '85', '28', '42', '27', '53', '97', '78', '41', '62', '62', '57.5');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680132', '张吉涛6', '79', '79', '49', '59', '81', '41', '83', '53', '86', '24', '63.4');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680133', '张吉涛7', '60', '81', '84', '39', '59', '95', '95', '25', '69', '76', '68.3');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680134', '张吉涛8', '91', '32', '88', '75', '83', '65', '50', '75', '72', '90', '72.1');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680135', '张吉涛9', '97', '41', '61', '99', '96', '36', '73', '96', '95', '23', '71.7');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680136', '张吉涛10', '59', '91', '22', '84', '69', '37', '84', '49', '57', '54', '60.6');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680137', '张吉涛11', '74', '39', '29', '79', '55', '91', '40', '35', '44', '66', '55.2');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680138', '张吉涛12', '50', '30', '80', '79', '48', '84', '23', '28', '63', '30', '51.5');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680139', '张吉涛13', '29', '76', '20', '63', '93', '55', '69', '58', '90', '39', '59.2');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680140', '张吉涛14', '82', '41', '66', '93', '33', '60', '47', '56', '53', '84', '61.5');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680141', '张吉涛15', '72', '96', '56', '90', '55', '21', '89', '21', '45', '43', '58.8');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680142', '张吉涛16', '20', '91', '82', '67', '34', '50', '29', '52', '45', '95', '56.5');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680143', '张吉涛17', '52', '46', '87', '93', '96', '61', '83', '87', '91', '30', '72.6');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680144', '张吉涛18', '89', '50', '62', '95', '45', '24', '77', '47', '37', '46', '57.2');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680145', '张吉涛19', '20', '87', '44', '34', '95', '71', '80', '77', '72', '99', '67.9');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680146', '张吉涛20', '66', '33', '98', '34', '24', '97', '75', '82', '90', '48', '64.7');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680147', '张吉涛21', '44', '37', '28', '95', '49', '27', '40', '46', '34', '81', '48.1');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680148', '张吉涛22', '76', '71', '39', '73', '53', '41', '32', '43', '58', '87', '57.3');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680149', '张吉涛23', '39', '27', '88', '68', '26', '58', '41', '60', '36', '30', '47.3');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680150', '张吉涛24', '44', '28', '26', '29', '51', '50', '49', '43', '78', '62', '46');
INSERT INTO `1l1lweekl5月9日` VALUES ('20160680151', '张吉涛25', '83', '98', '83', '61', '87', '98', '87', '21', '79', '93', '79');

-- ----------------------------
-- Table structure for 1l2ldayl4月19日
-- ----------------------------
DROP TABLE IF EXISTS `1l2ldayl4月19日`;
CREATE TABLE `1l2ldayl4月19日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2ldayl4月19日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2ldayl4月19日
-- ----------------------------
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680152', '张良0', '37', '96', '22', '52', '100', '94', '100', '81', '82', '66', '73');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680153', '张良1', '25', '39', '46', '21', '41', '45', '57', '70', '49', '35', '42.8');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680154', '张良2', '31', '74', '51', '60', '99', '34', '89', '55', '56', '50', '59.9');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680155', '张良3', '61', '92', '22', '21', '26', '35', '30', '53', '36', '67', '44.3');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680156', '张良4', '45', '78', '33', '49', '42', '47', '34', '36', '31', '62', '45.7');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680157', '张良5', '81', '84', '93', '44', '98', '35', '93', '72', '21', '31', '65.2');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680158', '张良6', '35', '57', '72', '60', '90', '36', '47', '37', '66', '56', '55.6');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680159', '张良7', '60', '45', '84', '87', '74', '37', '21', '64', '67', '100', '63.9');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680160', '张良8', '38', '23', '54', '50', '79', '50', '71', '98', '55', '47', '56.5');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680161', '张良9', '43', '100', '58', '76', '96', '20', '93', '63', '41', '25', '61.5');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680162', '张良10', '31', '71', '65', '79', '86', '66', '98', '66', '41', '89', '69.2');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680163', '张良11', '97', '38', '40', '38', '46', '20', '91', '57', '54', '57', '53.8');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680164', '张良12', '68', '80', '48', '98', '68', '71', '43', '69', '66', '94', '70.5');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680165', '张良13', '56', '93', '36', '40', '45', '84', '32', '65', '100', '74', '62.5');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680166', '张良14', '78', '77', '83', '35', '82', '23', '89', '35', '93', '59', '65.4');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680167', '张良15', '24', '75', '90', '39', '60', '30', '29', '95', '51', '74', '56.7');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680168', '张良16', '33', '79', '89', '73', '47', '95', '73', '62', '82', '21', '65.4');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680169', '张良17', '82', '78', '96', '50', '62', '47', '42', '28', '94', '92', '67.1');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680170', '张良18', '62', '48', '31', '51', '27', '88', '39', '63', '65', '56', '53');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680171', '张良19', '65', '83', '72', '60', '71', '42', '35', '94', '29', '58', '60.9');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680172', '张良20', '66', '52', '84', '100', '41', '84', '72', '100', '44', '39', '68.2');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680173', '张良21', '20', '82', '24', '23', '34', '97', '68', '64', '52', '27', '49.1');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680174', '张良22', '45', '52', '45', '42', '36', '22', '90', '88', '62', '37', '51.9');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680175', '张良23', '20', '58', '30', '30', '70', '82', '40', '27', '67', '100', '52.4');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680176', '张良24', '46', '97', '82', '54', '96', '24', '40', '84', '51', '31', '60.5');
INSERT INTO `1l2ldayl4月19日` VALUES ('20160680177', '张良25', '97', '59', '90', '37', '27', '98', '61', '28', '29', '59', '58.5');

-- ----------------------------
-- Table structure for 1l2ldayl4月20日
-- ----------------------------
DROP TABLE IF EXISTS `1l2ldayl4月20日`;
CREATE TABLE `1l2ldayl4月20日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2ldayl4月20日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2ldayl4月20日
-- ----------------------------
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680152', '张良0', '64', '68', '64', '52', '43', '74', '55', '90', '24', '23', '55.7');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680153', '张良1', '31', '71', '29', '85', '50', '85', '37', '78', '49', '32', '54.7');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680154', '张良2', '76', '48', '29', '57', '70', '55', '65', '51', '21', '71', '54.3');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680155', '张良3', '43', '28', '89', '32', '62', '46', '23', '63', '68', '53', '50.7');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680156', '张良4', '44', '65', '91', '49', '65', '59', '98', '61', '70', '63', '66.5');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680157', '张良5', '94', '37', '33', '83', '48', '85', '95', '71', '62', '45', '65.3');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680158', '张良6', '77', '98', '41', '69', '29', '99', '90', '44', '20', '46', '61.3');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680159', '张良7', '24', '45', '55', '31', '34', '88', '22', '21', '61', '79', '46');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680160', '张良8', '64', '99', '35', '79', '57', '27', '100', '76', '95', '61', '69.3');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680161', '张良9', '97', '98', '94', '51', '72', '86', '88', '28', '92', '80', '78.6');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680162', '张良10', '56', '71', '32', '82', '58', '98', '69', '78', '86', '54', '68.4');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680163', '张良11', '31', '30', '87', '74', '77', '92', '36', '94', '31', '74', '62.6');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680164', '张良12', '39', '99', '39', '38', '84', '30', '51', '68', '91', '94', '63.3');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680165', '张良13', '48', '70', '52', '36', '53', '68', '85', '98', '33', '93', '63.6');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680166', '张良14', '54', '77', '29', '73', '94', '21', '32', '72', '93', '41', '58.6');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680167', '张良15', '75', '58', '50', '54', '79', '25', '98', '70', '84', '72', '66.5');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680168', '张良16', '86', '67', '54', '21', '82', '93', '52', '79', '78', '40', '65.2');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680169', '张良17', '57', '92', '55', '39', '28', '27', '41', '29', '70', '36', '47.4');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680170', '张良18', '59', '96', '99', '25', '85', '89', '98', '50', '37', '41', '67.9');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680171', '张良19', '73', '89', '22', '100', '22', '28', '23', '37', '46', '45', '48.5');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680172', '张良20', '99', '58', '85', '62', '22', '33', '51', '25', '97', '21', '55.3');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680173', '张良21', '38', '56', '94', '45', '98', '41', '43', '61', '73', '69', '61.8');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680174', '张良22', '99', '41', '33', '64', '29', '62', '27', '35', '87', '38', '51.5');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680175', '张良23', '37', '48', '48', '20', '23', '23', '69', '79', '44', '37', '42.8');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680176', '张良24', '52', '27', '48', '70', '72', '73', '32', '77', '39', '37', '52.7');
INSERT INTO `1l2ldayl4月20日` VALUES ('20160680177', '张良25', '38', '65', '45', '68', '62', '36', '48', '60', '23', '42', '48.7');

-- ----------------------------
-- Table structure for 1l2ldayl4月21日
-- ----------------------------
DROP TABLE IF EXISTS `1l2ldayl4月21日`;
CREATE TABLE `1l2ldayl4月21日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2ldayl4月21日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2ldayl4月21日
-- ----------------------------
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680152', '张良0', '88', '72', '71', '83', '91', '49', '100', '24', '34', '22', '63.4');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680153', '张良1', '76', '75', '43', '49', '36', '58', '48', '99', '25', '99', '60.8');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680154', '张良2', '26', '75', '99', '25', '45', '60', '78', '57', '48', '36', '54.9');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680155', '张良3', '86', '99', '23', '74', '47', '49', '41', '44', '27', '39', '52.9');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680156', '张良4', '70', '77', '20', '53', '73', '50', '42', '25', '97', '88', '59.5');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680157', '张良5', '41', '83', '39', '75', '55', '44', '27', '60', '40', '91', '55.5');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680158', '张良6', '61', '47', '54', '31', '80', '65', '45', '50', '72', '28', '53.3');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680159', '张良7', '46', '26', '67', '36', '91', '76', '77', '22', '32', '93', '56.6');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680160', '张良8', '66', '62', '73', '31', '24', '80', '23', '42', '90', '91', '58.2');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680161', '张良9', '51', '82', '87', '36', '70', '55', '43', '53', '39', '30', '54.6');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680162', '张良10', '58', '29', '68', '93', '55', '50', '88', '77', '89', '85', '69.2');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680163', '张良11', '73', '89', '31', '48', '24', '93', '97', '53', '86', '81', '67.5');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680164', '张良12', '41', '25', '39', '39', '34', '57', '82', '23', '99', '44', '48.3');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680165', '张良13', '89', '28', '50', '40', '38', '58', '69', '66', '67', '91', '59.6');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680166', '张良14', '35', '51', '32', '27', '46', '32', '79', '84', '22', '44', '45.2');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680167', '张良15', '88', '21', '76', '21', '85', '30', '20', '72', '53', '76', '54.2');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680168', '张良16', '48', '88', '27', '50', '90', '71', '25', '44', '22', '64', '52.9');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680169', '张良17', '26', '37', '84', '66', '93', '49', '46', '46', '85', '24', '55.6');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680170', '张良18', '35', '88', '36', '29', '22', '65', '32', '46', '68', '44', '46.5');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680171', '张良19', '82', '98', '73', '33', '43', '87', '34', '37', '57', '61', '60.5');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680172', '张良20', '94', '27', '77', '38', '92', '58', '34', '51', '81', '52', '60.4');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680173', '张良21', '93', '51', '25', '27', '48', '51', '69', '67', '50', '46', '52.7');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680174', '张良22', '99', '63', '45', '38', '57', '22', '32', '79', '82', '37', '55.4');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680175', '张良23', '23', '58', '78', '67', '26', '88', '44', '56', '33', '36', '50.9');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680176', '张良24', '75', '25', '59', '99', '29', '54', '87', '26', '87', '73', '61.4');
INSERT INTO `1l2ldayl4月21日` VALUES ('20160680177', '张良25', '91', '88', '72', '73', '52', '97', '69', '72', '27', '72', '71.3');

-- ----------------------------
-- Table structure for 1l2ldayl4月27日
-- ----------------------------
DROP TABLE IF EXISTS `1l2ldayl4月27日`;
CREATE TABLE `1l2ldayl4月27日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2ldayl4月27日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2ldayl4月27日
-- ----------------------------
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680152', '张良0', '67', '46', '48', '25', '51', '25', '48', '53', '68', '33', '46.4');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680153', '张良1', '26', '52', '25', '78', '37', '95', '89', '58', '45', '70', '57.5');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680154', '张良2', '62', '28', '41', '50', '83', '52', '70', '72', '63', '31', '55.2');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680155', '张良3', '38', '36', '60', '75', '70', '24', '94', '60', '92', '51', '60');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680156', '张良4', '77', '44', '53', '61', '67', '49', '38', '91', '46', '62', '58.8');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680157', '张良5', '33', '57', '89', '50', '54', '96', '87', '61', '81', '41', '64.9');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680158', '张良6', '30', '43', '56', '43', '58', '86', '72', '83', '62', '95', '62.8');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680159', '张良7', '35', '71', '28', '22', '36', '35', '30', '67', '64', '67', '45.5');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680160', '张良8', '76', '42', '43', '69', '60', '95', '73', '98', '85', '31', '67.2');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680161', '张良9', '74', '86', '100', '97', '21', '76', '60', '80', '23', '70', '68.7');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680162', '张良10', '85', '54', '66', '100', '58', '21', '58', '64', '73', '92', '67.1');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680163', '张良11', '75', '83', '40', '28', '37', '60', '78', '98', '77', '72', '64.8');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680164', '张良12', '68', '66', '79', '36', '55', '87', '73', '67', '74', '43', '64.8');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680165', '张良13', '69', '57', '45', '65', '47', '98', '88', '50', '71', '80', '67');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680166', '张良14', '72', '63', '33', '43', '30', '95', '94', '71', '55', '100', '65.6');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680167', '张良15', '49', '79', '44', '48', '29', '74', '41', '82', '33', '72', '55.1');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680168', '张良16', '78', '23', '47', '44', '60', '83', '97', '92', '85', '93', '70.2');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680169', '张良17', '93', '86', '78', '95', '30', '51', '92', '23', '23', '75', '64.6');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680170', '张良18', '59', '68', '27', '27', '70', '32', '89', '81', '47', '32', '53.2');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680171', '张良19', '83', '85', '40', '65', '69', '58', '66', '71', '88', '35', '66');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680172', '张良20', '67', '89', '40', '22', '78', '91', '22', '96', '22', '48', '57.5');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680173', '张良21', '69', '31', '54', '42', '68', '29', '23', '78', '43', '88', '52.5');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680174', '张良22', '96', '70', '59', '74', '39', '81', '20', '61', '31', '24', '55.5');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680175', '张良23', '40', '77', '46', '21', '86', '25', '39', '75', '99', '83', '59.1');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680176', '张良24', '94', '26', '90', '59', '94', '51', '20', '76', '40', '55', '60.5');
INSERT INTO `1l2ldayl4月27日` VALUES ('20160680177', '张良25', '65', '47', '86', '71', '32', '35', '81', '77', '55', '89', '63.8');

-- ----------------------------
-- Table structure for 1l2ldayl5月7日
-- ----------------------------
DROP TABLE IF EXISTS `1l2ldayl5月7日`;
CREATE TABLE `1l2ldayl5月7日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2ldayl5月7日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2ldayl5月7日
-- ----------------------------
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680152', '张良0', '94', '82', '21', '90', '97', '21', '33', '62', '32', '80', '61.2');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680153', '张良1', '35', '31', '60', '21', '69', '34', '85', '57', '34', '70', '49.6');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680154', '张良2', '53', '36', '57', '31', '26', '60', '95', '36', '70', '44', '50.8');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680155', '张良3', '46', '76', '41', '36', '70', '26', '33', '71', '100', '97', '59.6');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680156', '张良4', '72', '68', '93', '40', '24', '95', '99', '83', '30', '64', '66.8');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680157', '张良5', '66', '56', '87', '92', '68', '38', '39', '80', '94', '49', '66.9');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680158', '张良6', '29', '30', '85', '57', '50', '68', '94', '81', '45', '31', '57');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680159', '张良7', '58', '54', '49', '27', '77', '58', '49', '21', '22', '78', '49.3');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680160', '张良8', '29', '99', '90', '96', '78', '57', '53', '72', '26', '77', '67.7');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680161', '张良9', '68', '46', '76', '95', '37', '26', '94', '44', '37', '63', '58.6');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680162', '张良10', '80', '99', '49', '93', '55', '59', '73', '88', '75', '31', '70.2');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680163', '张良11', '43', '52', '99', '51', '32', '75', '35', '84', '22', '82', '57.5');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680164', '张良12', '100', '79', '54', '23', '62', '71', '78', '65', '22', '80', '63.4');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680165', '张良13', '22', '81', '99', '93', '29', '44', '24', '60', '47', '92', '59.1');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680166', '张良14', '40', '59', '54', '45', '40', '86', '52', '65', '77', '96', '61.4');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680167', '张良15', '100', '50', '91', '35', '79', '65', '71', '42', '52', '86', '67.1');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680168', '张良16', '24', '39', '83', '78', '71', '80', '34', '27', '79', '93', '60.8');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680169', '张良17', '23', '85', '91', '96', '70', '57', '92', '43', '80', '48', '68.5');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680170', '张良18', '60', '80', '33', '70', '54', '36', '80', '21', '30', '47', '51.1');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680171', '张良19', '76', '63', '56', '57', '81', '55', '71', '49', '31', '31', '57');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680172', '张良20', '36', '50', '86', '83', '85', '42', '87', '62', '95', '78', '70.4');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680173', '张良21', '90', '95', '95', '75', '23', '54', '26', '97', '29', '38', '62.2');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680174', '张良22', '38', '73', '88', '28', '49', '71', '28', '98', '26', '43', '54.2');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680175', '张良23', '22', '25', '95', '91', '71', '36', '44', '37', '58', '69', '54.8');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680176', '张良24', '76', '46', '52', '88', '83', '94', '75', '77', '38', '43', '67.2');
INSERT INTO `1l2ldayl5月7日` VALUES ('20160680177', '张良25', '78', '93', '72', '92', '96', '98', '52', '93', '28', '65', '76.7');

-- ----------------------------
-- Table structure for 1l2lmonthl4月27日
-- ----------------------------
DROP TABLE IF EXISTS `1l2lmonthl4月27日`;
CREATE TABLE `1l2lmonthl4月27日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2lmonthl4月27日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2lmonthl4月27日
-- ----------------------------
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680152', '张良0', '65', '58', '60', '47', '84', '56', '23', '25', '87', '25', '53');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680153', '张良1', '25', '58', '36', '77', '40', '87', '40', '42', '26', '67', '49.8');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680154', '张良2', '37', '33', '25', '33', '86', '27', '23', '51', '40', '21', '37.6');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680155', '张良3', '76', '42', '52', '68', '35', '64', '81', '67', '96', '32', '61.3');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680156', '张良4', '24', '47', '43', '95', '62', '50', '37', '63', '98', '37', '55.6');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680157', '张良5', '28', '100', '66', '46', '92', '46', '58', '99', '45', '44', '62.4');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680158', '张良6', '57', '73', '50', '25', '66', '53', '46', '31', '30', '98', '52.9');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680159', '张良7', '71', '45', '54', '28', '35', '76', '90', '83', '84', '93', '65.9');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680160', '张良8', '39', '96', '73', '88', '57', '72', '57', '84', '83', '33', '68.2');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680161', '张良9', '28', '92', '52', '38', '76', '82', '58', '93', '81', '92', '69.2');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680162', '张良10', '98', '67', '93', '81', '42', '22', '21', '61', '73', '99', '65.7');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680163', '张良11', '31', '43', '34', '62', '85', '23', '33', '91', '25', '94', '52.1');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680164', '张良12', '90', '94', '24', '32', '36', '61', '96', '56', '49', '57', '59.5');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680165', '张良13', '62', '85', '28', '71', '70', '74', '94', '47', '100', '99', '73');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680166', '张良14', '70', '30', '91', '43', '23', '21', '74', '85', '84', '51', '57.2');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680167', '张良15', '24', '38', '78', '94', '87', '68', '38', '35', '96', '93', '65.1');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680168', '张良16', '52', '100', '42', '23', '54', '82', '60', '37', '46', '49', '54.5');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680169', '张良17', '50', '35', '93', '41', '99', '31', '23', '50', '93', '41', '55.6');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680170', '张良18', '93', '25', '98', '38', '84', '73', '78', '26', '53', '69', '63.7');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680171', '张良19', '38', '86', '22', '59', '21', '43', '45', '98', '80', '76', '56.8');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680172', '张良20', '86', '92', '75', '72', '22', '80', '56', '78', '68', '37', '66.6');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680173', '张良21', '75', '78', '23', '24', '30', '46', '24', '38', '58', '22', '41.8');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680174', '张良22', '24', '36', '22', '49', '48', '71', '62', '33', '96', '22', '46.3');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680175', '张良23', '89', '52', '79', '29', '44', '29', '81', '64', '46', '71', '58.4');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680176', '张良24', '90', '36', '21', '31', '85', '69', '43', '24', '24', '21', '44.4');
INSERT INTO `1l2lmonthl4月27日` VALUES ('20160680177', '张良25', '70', '28', '73', '26', '68', '53', '86', '98', '93', '81', '67.6');

-- ----------------------------
-- Table structure for 1l2lparent
-- ----------------------------
DROP TABLE IF EXISTS `1l2lparent`;
CREATE TABLE `1l2lparent` (
  `name` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `stuno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `workunit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`phoneno`),
  KEY `stuno` (`stuno`),
  CONSTRAINT `1l2lparent_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2lparent
-- ----------------------------
INSERT INTO `1l2lparent` VALUES ('张良爸0', '15297508873', '20160680152', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸1', '15297508874', '20160680153', '123', '爷孙', '河北省邯郸市峰峰', '工人');
INSERT INTO `1l2lparent` VALUES ('张良爸2', '15297508875', '20160680154', '123', '姐弟', '河北省邯郸市峰峰', '国营企业');
INSERT INTO `1l2lparent` VALUES ('张良爸3', '15297508876', '20160680155', '123', '姨姨', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l2lparent` VALUES ('张良爸4', '15297508877', '20160680156', '123', '小弟', '河南邯郸市峰峰', '教育事业');
INSERT INTO `1l2lparent` VALUES ('张良爸5', '15297508878', '20160680157', '123', '大哥', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l2lparent` VALUES ('张良爸6', '15297508879', '20160680158', '123', '奶奶', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l2lparent` VALUES ('张良爸7', '15297508880', '20160680159', '123', '姥姥', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸8', '15297508881', '20160680160', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸9', '15297508882', '20160680161', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸10', '15297508883', '20160680162', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸11', '15297508884', '20160680163', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l2lparent` VALUES ('张良爸12', '15297508885', '20160680164', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l2lparent` VALUES ('张良爸13', '15297508886', '20160680165', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l2lparent` VALUES ('张良爸14', '15297508887', '20160680166', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l2lparent` VALUES ('张良爸15', '15297508888', '20160680167', '123', '父母', '河北省邯郸市峰峰', '民营企业');
INSERT INTO `1l2lparent` VALUES ('张良爸16', '15297508889', '20160680168', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l2lparent` VALUES ('张良爸17', '15297508890', '20160680169', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l2lparent` VALUES ('张良爸18', '15297508891', '20160680170', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l2lparent` VALUES ('张良爸19', '15297508892', '20160680171', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l2lparent` VALUES ('张良爸20', '15297508893', '20160680172', '123', '父母', '河北省邯郸市峰峰', '事业单位');
INSERT INTO `1l2lparent` VALUES ('张良爸21', '15297508894', '20160680173', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸22', '15297508895', '20160680174', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸23', '15297508896', '20160680175', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸24', '15297508897', '20160680176', '123', '父母', '河北省邯郸市峰峰', '务农');
INSERT INTO `1l2lparent` VALUES ('张良爸25', '15297508898', '20160680177', '123', '父母', '河北省邯郸市峰峰', '务农');

-- ----------------------------
-- Table structure for 1l2lstudent
-- ----------------------------
DROP TABLE IF EXISTS `1l2lstudent`;
CREATE TABLE `1l2lstudent` (
  `stuno` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `sex` int(11) NOT NULL,
  `borndate` date NOT NULL,
  PRIMARY KEY (`stuno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2lstudent
-- ----------------------------
INSERT INTO `1l2lstudent` VALUES ('20160680152', '张良0', '1', '1998-04-01');
INSERT INTO `1l2lstudent` VALUES ('20160680153', '张良1', '1', '1998-05-01');
INSERT INTO `1l2lstudent` VALUES ('20160680154', '张良2', '0', '1998-06-01');
INSERT INTO `1l2lstudent` VALUES ('20160680155', '张良3', '0', '1998-07-01');
INSERT INTO `1l2lstudent` VALUES ('20160680156', '张良4', '1', '1998-08-01');
INSERT INTO `1l2lstudent` VALUES ('20160680157', '张良5', '1', '1998-09-01');
INSERT INTO `1l2lstudent` VALUES ('20160680158', '张良6', '0', '1998-10-01');
INSERT INTO `1l2lstudent` VALUES ('20160680159', '张良7', '1', '1998-11-01');
INSERT INTO `1l2lstudent` VALUES ('20160680160', '张良8', '0', '1998-12-01');
INSERT INTO `1l2lstudent` VALUES ('20160680161', '张良9', '1', '1999-01-01');
INSERT INTO `1l2lstudent` VALUES ('20160680162', '张良10', '1', '1999-01-02');
INSERT INTO `1l2lstudent` VALUES ('20160680163', '张良11', '1', '1999-01-03');
INSERT INTO `1l2lstudent` VALUES ('20160680164', '张良12', '1', '1999-01-04');
INSERT INTO `1l2lstudent` VALUES ('20160680165', '张良13', '1', '1999-01-05');
INSERT INTO `1l2lstudent` VALUES ('20160680166', '张良14', '1', '1999-01-06');
INSERT INTO `1l2lstudent` VALUES ('20160680167', '张良15', '0', '1999-01-07');
INSERT INTO `1l2lstudent` VALUES ('20160680168', '张良16', '0', '1999-01-08');
INSERT INTO `1l2lstudent` VALUES ('20160680169', '张良17', '0', '1999-01-09');
INSERT INTO `1l2lstudent` VALUES ('20160680170', '张良18', '0', '1999-01-10');
INSERT INTO `1l2lstudent` VALUES ('20160680171', '张良19', '0', '1999-01-11');
INSERT INTO `1l2lstudent` VALUES ('20160680172', '张良20', '0', '1999-01-12');
INSERT INTO `1l2lstudent` VALUES ('20160680173', '张良21', '1', '1999-01-13');
INSERT INTO `1l2lstudent` VALUES ('20160680174', '张良22', '1', '1999-01-14');
INSERT INTO `1l2lstudent` VALUES ('20160680175', '张良23', '1', '1999-01-15');
INSERT INTO `1l2lstudent` VALUES ('20160680176', '张良24', '1', '1999-01-16');
INSERT INTO `1l2lstudent` VALUES ('20160680177', '张良25', '1', '1999-01-17');

-- ----------------------------
-- Table structure for 1l2lweekl4月27日
-- ----------------------------
DROP TABLE IF EXISTS `1l2lweekl4月27日`;
CREATE TABLE `1l2lweekl4月27日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2lweekl4月27日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2lweekl4月27日
-- ----------------------------
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680152', '张良0', '85', '37', '50', '90', '77', '72', '25', '46', '49', '33', '56.4');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680153', '张良1', '53', '22', '84', '42', '86', '46', '53', '22', '46', '33', '48.7');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680154', '张良2', '99', '84', '31', '68', '58', '71', '38', '67', '100', '76', '69.2');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680155', '张良3', '95', '21', '63', '81', '51', '24', '23', '31', '31', '24', '44.4');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680156', '张良4', '30', '91', '72', '46', '88', '52', '64', '45', '36', '82', '60.6');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680157', '张良5', '22', '40', '79', '55', '41', '64', '46', '53', '59', '32', '49.1');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680158', '张良6', '48', '21', '68', '87', '63', '70', '69', '91', '100', '43', '66');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680159', '张良7', '93', '86', '89', '100', '62', '61', '66', '24', '90', '86', '75.7');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680160', '张良8', '90', '75', '94', '30', '100', '95', '54', '89', '26', '72', '72.5');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680161', '张良9', '78', '77', '24', '58', '71', '38', '27', '26', '88', '64', '55.1');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680162', '张良10', '32', '50', '24', '43', '87', '33', '45', '26', '84', '66', '49');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680163', '张良11', '89', '22', '37', '51', '46', '63', '86', '69', '97', '33', '59.3');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680164', '张良12', '93', '28', '56', '44', '88', '25', '57', '33', '28', '70', '52.2');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680165', '张良13', '91', '49', '20', '25', '37', '97', '75', '82', '23', '98', '59.7');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680166', '张良14', '38', '46', '59', '65', '71', '38', '33', '23', '41', '22', '43.6');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680167', '张良15', '56', '79', '58', '100', '83', '44', '95', '72', '65', '77', '72.9');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680168', '张良16', '22', '36', '89', '24', '60', '98', '52', '45', '53', '47', '52.6');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680169', '张良17', '43', '53', '68', '41', '60', '82', '82', '55', '59', '53', '59.6');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680170', '张良18', '90', '45', '89', '24', '38', '49', '27', '66', '55', '41', '52.4');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680171', '张良19', '46', '87', '71', '38', '87', '86', '71', '33', '91', '35', '64.5');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680172', '张良20', '72', '55', '37', '98', '87', '100', '47', '89', '79', '36', '70');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680173', '张良21', '95', '56', '53', '33', '82', '25', '89', '42', '64', '35', '57.4');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680174', '张良22', '63', '20', '72', '37', '93', '31', '100', '58', '80', '28', '58.2');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680175', '张良23', '60', '90', '93', '76', '89', '87', '24', '96', '29', '75', '71.9');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680176', '张良24', '95', '42', '96', '62', '96', '28', '78', '83', '60', '84', '72.4');
INSERT INTO `1l2lweekl4月27日` VALUES ('20160680177', '张良25', '87', '88', '71', '33', '93', '79', '31', '87', '84', '86', '73.9');

-- ----------------------------
-- Table structure for 1l2lweekl5月7日
-- ----------------------------
DROP TABLE IF EXISTS `1l2lweekl5月7日`;
CREATE TABLE `1l2lweekl5月7日` (
  `stuno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chinese` double DEFAULT NULL,
  `math` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `chemical` double DEFAULT NULL,
  `biological` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `geographic` double DEFAULT NULL,
  `political` double DEFAULT NULL,
  `sport` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`stuno`),
  CONSTRAINT `1l2lweekl5月7日_ibfk_1` FOREIGN KEY (`stuno`) REFERENCES `1l2lstudent` (`stuno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 1l2lweekl5月7日
-- ----------------------------
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680152', '张良0', '85', '37', '50', '90', '77', '72', '25', '46', '49', '33', '56.4');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680153', '张良1', '53', '22', '84', '42', '86', '46', '53', '22', '46', '33', '48.7');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680154', '张良2', '99', '84', '31', '68', '58', '71', '38', '67', '100', '76', '69.2');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680155', '张良3', '95', '21', '63', '81', '51', '24', '23', '31', '31', '24', '44.4');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680156', '张良4', '30', '91', '72', '46', '88', '52', '64', '45', '36', '82', '60.6');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680157', '张良5', '22', '40', '79', '55', '41', '64', '46', '53', '59', '32', '49.1');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680158', '张良6', '48', '21', '68', '87', '63', '70', '69', '91', '100', '43', '66');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680159', '张良7', '93', '86', '89', '100', '62', '61', '66', '24', '90', '86', '75.7');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680160', '张良8', '90', '75', '94', '30', '100', '95', '54', '89', '26', '72', '72.5');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680161', '张良9', '78', '77', '24', '58', '71', '38', '27', '26', '88', '64', '55.1');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680162', '张良10', '32', '50', '24', '43', '87', '33', '45', '26', '84', '66', '49');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680163', '张良11', '89', '22', '37', '51', '46', '63', '86', '69', '97', '33', '59.3');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680164', '张良12', '93', '28', '56', '44', '88', '25', '57', '33', '28', '70', '52.2');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680165', '张良13', '91', '49', '20', '25', '37', '97', '75', '82', '23', '98', '59.7');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680166', '张良14', '38', '46', '59', '65', '71', '38', '33', '23', '41', '22', '43.6');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680167', '张良15', '56', '79', '58', '100', '83', '44', '95', '72', '65', '77', '72.9');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680168', '张良16', '22', '36', '89', '24', '60', '98', '52', '45', '53', '47', '52.6');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680169', '张良17', '43', '53', '68', '41', '60', '82', '82', '55', '59', '53', '59.6');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680170', '张良18', '90', '45', '89', '24', '38', '49', '27', '66', '55', '41', '52.4');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680171', '张良19', '46', '87', '71', '38', '87', '86', '71', '33', '91', '35', '64.5');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680172', '张良20', '72', '55', '37', '98', '87', '100', '47', '89', '79', '36', '70');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680173', '张良21', '95', '56', '53', '33', '82', '25', '89', '42', '64', '35', '57.4');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680174', '张良22', '63', '20', '72', '37', '93', '31', '100', '58', '80', '28', '58.2');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680175', '张良23', '60', '90', '93', '76', '89', '87', '24', '96', '29', '75', '71.9');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680176', '张良24', '95', '42', '96', '62', '96', '28', '78', '83', '60', '84', '72.4');
INSERT INTO `1l2lweekl5月7日` VALUES ('20160680177', '张良25', '87', '88', '71', '33', '93', '79', '31', '87', '84', '86', '73.9');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `office` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`phoneno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('海涛', '15297503973', '123123', null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messagedate` datetime NOT NULL,
  `teano` varchar(255) NOT NULL,
  `stuno` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`messagedate`),
  KEY `messagetotea` (`teano`),
  CONSTRAINT `messagetotea` FOREIGN KEY (`teano`) REFERENCES `teacher` (`teano`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('2020-05-07 20:30:38', '20170598132', '20160680126', '警告', '萨芬撒旦');
INSERT INTO `message` VALUES ('2020-06-09 19:26:26', '20170598132', '0', '作业', '语文了就可怜见立刻就\r\n数学jlskjdfl');
INSERT INTO `message` VALUES ('2020-06-10 17:26:54', '20170598132', '20160680126', '作业', 'ererew');

-- ----------------------------
-- Table structure for message2
-- ----------------------------
DROP TABLE IF EXISTS `message2`;
CREATE TABLE `message2` (
  `messagedate` datetime NOT NULL,
  `personinfo` varchar(255) NOT NULL,
  `teano` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `isopen` int(4) NOT NULL,
  PRIMARY KEY (`messagedate`),
  KEY `message2totea` (`teano`),
  CONSTRAINT `message2totea` FOREIGN KEY (`teano`) REFERENCES `teacher` (`teano`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message2
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teano` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` int(11) NOT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `grade1` int(11) NOT NULL,
  `class1` int(11) NOT NULL,
  `grade2` int(11) DEFAULT NULL,
  `class2` int(11) DEFAULT NULL,
  `ischarge` int(11) NOT NULL,
  PRIMARY KEY (`teano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('20170598132', '米亚', '1', '15297503973', '123123', '数学', '1', '1', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598133', '哈哈', '0', '15296503338', '123456', '语文', '1', '2', '-1', '-1', '1');
INSERT INTO `teacher` VALUES ('20170598134', '刘会', '1', '15296504989', '123456', '英语', '6', '3', '-1', '-1', '1');
INSERT INTO `teacher` VALUES ('20170598135', '王火', '1', '15296504990', '123456', '物理', '1', '4', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598136', '九妹', '0', '15296504991', '123456', '化学', '1', '5', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598137', '露娜', '0', '15296504992', '123456', '生物', '1', '6', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598138', '孙悟空', '1', '15296504993', '123456', '体育', '2', '1', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598139', '李里', '0', '15296504994', '123456', '数学', '2', '2', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598140', '周度', '1', '15296504995', '123456', '语文', '2', '3', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598141', '吴王', '0', '15296504996', '123456', '化学', '2', '4', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598142', '郑用', '1', '15296504997', '123456', '物理', '2', '5', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598143', '何呵', '0', '15296504998', '123456', '地理', '2', '6', null, null, '1');
INSERT INTO `teacher` VALUES ('20170598144', '王名', '0', '15296504999', '123456', '语文', '1', '2', null, null, '0');
INSERT INTO `teacher` VALUES ('20170598145', '李九', '1', '15296505000', '123456', '语文', '2', '1', null, null, '0');

-- ----------------------------
-- Table structure for transcriptrecord
-- ----------------------------
DROP TABLE IF EXISTS `transcriptrecord`;
CREATE TABLE `transcriptrecord` (
  `teano` varchar(255) NOT NULL,
  `transcriptname` varchar(255) NOT NULL,
  `uploaddate` datetime NOT NULL,
  PRIMARY KEY (`uploaddate`),
  KEY `teano` (`teano`),
  CONSTRAINT `teano` FOREIGN KEY (`teano`) REFERENCES `teacher` (`teano`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transcriptrecord
-- ----------------------------
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月19日', '2020-04-19 20:59:23');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2ldayl4月19日', '2020-04-19 21:41:53');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月20日', '2020-04-20 21:00:55');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2ldayl4月20日', '2020-04-20 21:42:58');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月21日', '2020-04-21 21:01:44');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2ldayl4月21日', '2020-04-21 21:48:12');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月22日', '2020-04-22 21:02:35');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月23日', '2020-04-23 21:26:12');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月24日', '2020-04-24 21:27:11');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月25日', '2020-04-25 21:28:12');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月26日', '2020-04-26 21:29:08');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2lweekl4月27日', '2020-04-27 21:49:27');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2lmonthl4月27日', '2020-04-27 21:49:39');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2ldayl4月27日', '2020-04-27 21:50:04');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl4月27日', '2020-04-27 22:10:52');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1lweekl4月27日', '2020-04-27 22:13:52');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1lmonthl4月27日', '2020-04-27 22:14:45');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl5月1日', '2020-05-01 11:02:12');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl5月7日', '2020-05-07 19:44:17');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2lweekl5月7日', '2020-05-07 19:47:21');
INSERT INTO `transcriptrecord` VALUES ('20170598133', '1l2ldayl5月7日', '2020-05-07 19:47:34');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1lweekl5月9日', '2020-05-09 19:30:20');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1lweekl5月19日', '2020-05-19 19:32:50');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl6月9日', '2020-06-09 20:04:22');
INSERT INTO `transcriptrecord` VALUES ('20170598132', '1l1ldayl6月10日', '2020-06-10 17:26:02');

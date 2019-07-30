/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-07-26 14:37:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `sortId` int(11) NOT NULL AUTO_INCREMENT,
  `sortName` varchar(20) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`sortId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES ('1', '理工类', '2019-07-22 19:45:33');
INSERT INTO `sort` VALUES ('2', '文史类', '2019-07-22 19:46:23');
INSERT INTO `sort` VALUES ('3', '艺术类', '2019-07-22 19:49:22');
INSERT INTO `sort` VALUES ('4', '体育类', '2019-07-22 19:53:51');
INSERT INTO `sort` VALUES ('5', '民族类', '2019-07-22 19:55:18');
INSERT INTO `sort` VALUES ('6', '国际类', '2019-07-24 22:45:50');

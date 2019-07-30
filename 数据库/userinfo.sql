/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-07-26 14:37:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Mpassword` varchar(100) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'user33', 'abcdef', 'man', 'e80b5017098950fc58aad83c8c14978e', '12');
INSERT INTO `userinfo` VALUES ('2', 'user4', '123abc', 'man', 'a906449d5769fa7361d7ecc6aa3f6d28', '21');
INSERT INTO `userinfo` VALUES ('3', 'user25', '111111', 'woman', '96e79218965eb72c92a549dd5a330112', '26');
INSERT INTO `userinfo` VALUES ('27', '123123', '111111', 'man', '96e79218965eb72c92a549dd5a330112', '11');

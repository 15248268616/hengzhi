/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-07-26 14:37:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `noticeId` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `author` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `writeTime` datetime DEFAULT NULL,
  `alterTime` datetime DEFAULT NULL,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '第二届健身街舞大赛本部', '校运会', '本部北苑', '2019-06-06 20:08:51', '2019-07-25 20:07:25');
INSERT INTO `notice` VALUES ('2', '校运动会', '校学生会', '东师本部田径场', '2019-05-25 20:10:07', '2019-05-25 20:10:07');
INSERT INTO `notice` VALUES ('3', '教职工运动会', '院学生会', '东师净月田径场', '2019-05-19 20:10:42', '2019-05-19 20:10:42');
INSERT INTO `notice` VALUES ('4', '五人制足球赛', '院学生会', '东师本部足球场', '2019-05-18 20:11:21', '2019-05-18 20:11:21');
INSERT INTO `notice` VALUES ('5', '五四接力', '院学生会', '东师本部图书馆门前', '2019-05-08 20:13:15', '2019-05-08 20:13:15');
INSERT INTO `notice` VALUES ('6', '校运会训练', '院学生组织', '东师净月田径场', '2019-05-07 20:14:09', '2019-05-07 20:14:09');
INSERT INTO `notice` VALUES ('7', '全能歌手大赛', '学生会文艺部', '信科一阶', '2019-04-27 20:14:53', '2019-04-27 20:14:53');
INSERT INTO `notice` VALUES ('8', '趣味运动会', '学生会体育部', '东师净月田径场', '2019-04-21 20:15:37', '2019-04-21 20:15:37');
INSERT INTO `notice` VALUES ('9', '模拟课堂', '学生会学研部', '信科320', '2019-04-20 20:16:10', '2019-04-20 20:16:10');
INSERT INTO `notice` VALUES ('10', '怦然行动', '学生会宣传部', '田径场，信科一阶', '2019-04-14 20:16:53', '2019-04-14 20:16:53');
INSERT INTO `notice` VALUES ('11', '英语十佳', '学生会学研部', '信科一阶', '2019-03-31 20:17:46', '2019-03-31 20:17:46');
INSERT INTO `notice` VALUES ('12', '元旦晚会', '院学生会', '信科一阶', '2018-12-27 20:19:15', '2018-12-27 20:19:15');
INSERT INTO `notice` VALUES ('18', '3333', '12', '121321', '2019-07-25 20:56:07', '2019-07-25 20:56:07');

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50146
Source Host           : localhost:3306
Source Database       : sshe

Target Server Type    : MYSQL
Target Server Version : 50146
File Encoding         : 65001

Date: 2016-01-11 19:51:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `MODIFYDATETIME` datetime DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `PWD` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('d3a97387f99c411e8ec8179d053ddd89', '2016-01-11 18:44:43', null, '孤傲苍狼', '123');
INSERT INTO `t_user` VALUES ('e815ea2157c1490cb363de0a1fc2677f', '2016-01-11 18:48:59', null, 'xdp孤傲苍狼', '123456');

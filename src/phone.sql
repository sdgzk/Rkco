/*
Navicat MySQL Data Transfer

Source Server         : gaozk
Source Server Version : 50022
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2018-05-30 21:59:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `phone`
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `telephone` char(11) default NULL,
  `bk` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `sex` char(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('4', 'gaz', '1590215225', '120', null, null);

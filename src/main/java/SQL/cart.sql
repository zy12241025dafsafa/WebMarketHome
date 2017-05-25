/*
Navicat MySQL Data Transfer

Source Server         : zhangy
Source Server Version : 10000
Source Host           : localhost:3306
Source Database       : web_market

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-07-17 13:23:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `id` bigint(11) NOT NULL auto_increment,
  `user_id` bigint(20) default NULL COMMENT '用户ID',
  `product_ids` varchar(20) default NULL COMMENT '商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_cart` VALUES ('1', '1', '1,2');
INSERT INTO `t_cart` VALUES ('2', '2', '1,2,3');
INSERT INTO `t_cart` VALUES ('3', '1', '2,3');

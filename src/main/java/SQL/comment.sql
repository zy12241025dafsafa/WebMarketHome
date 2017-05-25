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
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint(11) NOT NULL auto_increment,
  `comment_person` varchar(30) default NULL COMMENT '评价人',
  `content` VARCHAR(255) default NULL COMMENT '评价内容',
  `service_star` TINYINT(1) default NULL COMMENT '服务星级',
  `track_star` TINYINT(1) default NULL COMMENT '物流星级',
  `create_time` datetime default NULL COMMENT '创建时间',
  `Product_ids` VARCHAR(50) default NULL COMMENT '商品ID,可能是商品ID集，以逗号分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='评价表';

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '张三', '你们这个东西不好啊',5,5,'2016-07-15 23:38:56','1,2,3');
INSERT INTO `t_comment` VALUES ('2', '李四砌', '你们这个东西不好啊',4,5,'2016-07-15 23:38:56','1,2,3,4');
INSERT INTO `t_comment` VALUES ('3', '王胸东', '你们这个东西不好啊',3,4,'2016-07-15 23:38:56','3,4');

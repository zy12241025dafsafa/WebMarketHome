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
-- Table structure for `t_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` bigint(11) NOT NULL auto_increment,
  `product_name` varchar(255) default NULL COMMENT '商品名',
  `price` DOUBLE(5.2) default 0 COMMENT '商品单价',
  `quanlity` INTEGER(8) default 0 COMMENT '库存量',
  `category_id` INTEGER(6) default 0 COMMENT '所属分类ID',
  `summary` VARCHAR(255) default NULL COMMENT '商品描述,可以是<html模板>)',
  `origin_place` VARCHAR(50) default NULL COMMENT '生产单位',
  `product_date` datetime default NULL COMMENT '生产时期',
  `belong_saler` bigint(11) default NULL COMMENT '所属商户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '2017新款潮流女款运动卫衣热销包邮', 32.5, 158, , 1, '我是一个好东西', '福建厦门林燕有限公司', '2017-12-11 12:12:12',1);
INSERT INTO `t_product` VALUES ('2', '2017新款潮流女款运动皮带卫衣热销包邮', 11.5, 158, , 1, '我是一个好东西', '福建厦门林燕有限公司', '2017-12-11 12:12:12',2);
INSERT INTO `t_product` VALUES ('3', '2017新款潮流卫衣热销包邮', 77.5, 444, , 1, '我是一个好东西', '福建厦门林燕有限公司', '2017-12-11 12:12:12',3);
INSERT INTO `t_product` VALUES ('4', '2017新款潮流男装宋北杉销包邮', 43.5, 122, , 1, '我是一个好东西', '福建厦门林燕有限公司', '2017-12-11 12:12:12',4);
INSERT INTO `t_product` VALUES ('5', '2017新款潮流女款运动卫衣热销包邮', 32.5, 512, , 1, '我是一个好东西', '福建厦门林燕有限公司', '2017-12-11 12:12:12',5);

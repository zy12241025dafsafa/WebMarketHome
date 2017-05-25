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
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` bigint(8) NOT NULL auto_increment,
  `category_name` varchar(30) default NULL COMMENT '分类主类名称',
  `category_subname` varchar(30) default NULL COMMENT '分类子类名称',
  `create_time` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '皮带', '商务皮带,休闲皮带,新型设计皮带', '2016-07-15 23:38:56');
INSERT INTO `t_category` VALUES ('2', '棉衣', '冬季加绒棉衣,男款简约棉衣', '2016-07-15 23:39:01');
INSERT INTO `t_category` VALUES ('3', '眼镜', '经典怀旧,品牌设计,太阳眼镜,夜视眼镜', '2016-07-15 23:39:05');

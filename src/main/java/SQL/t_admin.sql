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
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` bigint(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL COMMENT '用户名',
  `user_phone` varchar(20) default NULL COMMENT '手机号',
  `user_email` varchar(255) default NULL COMMENT '邮箱地址',
  `user_pwd` varchar(32) default NULL COMMENT '加密后用户密码',
  `create_time` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', '张莹', '13285250574', '1045221654@qq.com', '05126a423a9379d529e4ee61a212fa55','2016-07-15 23:39:09');
INSERT INTO `t_admin` VALUES ('2', '张三丰', '15985250574', '1198224554@qq.com', '98bd3a1bebde01ad363d3c5a0d1e56da','2016-07-15 23:39:13');

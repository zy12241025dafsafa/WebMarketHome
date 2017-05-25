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
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL COMMENT '用户名',
  `phone` varchar(20) default NULL COMMENT '手机号',
  `email` varchar(30) default NULL COMMENT '邮箱地址',
  `role` TINYINT(2) default 0 COMMENT '用户角色(0-会员,1-商户, 2-超级管理员 3-访客)',
  `pwd` varchar(32) default NULL COMMENT '密码MD5',
  `create_time` datetime default NULL COMMENT '创建时间',
  `idcard` VARCHAR(20) default NULL COMMENT '身份证号(商户角色时必须)',
  `user_level` TINYINT(2) DEFAULT 0 COMMENT '会员等级:0-普通会员,1-金卡会员,2-铂金会员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '张莹', '18205933192', '260945455@qq.com', 2,'5D93CEB70E2BF5DAA84EC3D0CD2C731A','2016-07-15 23:38:56', '',2);
INSERT INTO `t_user` VALUES ('2', '施筱清', '15985250574', '1198224554@qq.com',1,'5D93CEB70E2BF5DAA84EC3D0CD2C731A', '2016-07-15 23:39:01', '352228198802114544', 2);
INSERT INTO `t_user` VALUES ('3', '王尼玛', '13685250574', '1256221654@qq.com',0, '5D93CEB70E2BF5DAA84EC3D0CD2C731A', '2016-07-15 23:39:05', '', 0);

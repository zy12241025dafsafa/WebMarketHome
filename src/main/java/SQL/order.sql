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
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint(11) NOT NULL auto_increment,
  `receiver` varchar(30) default NULL COMMENT '收件人',
  `sender` varchar(30) default NULL COMMENT '发件人',
  `sender_phone` varchar(30) default NULL COMMENT '发件人号码',
  `receiver_phone` varchar(30) default NULL COMMENT '收件人号码',
  `product_ids` varchar(30) default NULL COMMENT '商品信息ids',
  `receiver_address` varchar(30) default NULL COMMENT '收件人地址',
  `order_state` tinyint(2) default NULL COMMENT '订单状态:0-未开始 1-待付款 2-待发货 3-待确认收货 4-待评价 5-已取消 6-待审核',
  `order_price` DOUBLE (10,2) default NULL COMMENT '订单总额',
  `pay_method` tinyint(2) default NULL COMMENT '支付方式：0-支付宝1-货到付款2-微信3-paypal4-西联付款',
  `delivery_method` VARCHAR(2) default NULL COMMENT '派送方式：
第一位字符代表国内或国外，第二位字符代表派送方式：
00- 系统自动分配
01- 圆通速递
02- 百世汇通
03- EMS
04- 顺风
10- ePacket
11-EMS
12- DHL ',
  `order_time` datetime default NULL COMMENT '下单时间',
  `order_remark` varchar(255) default NULL COMMENT '订单备注',
  `order_score` integer(6) default NULL COMMENT '所得积分,在买家成功购买后平台给予',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '张男莪', '依伢宝贝店铺', '100512545','18205931544','2,3,4','北京市朝阳区莲花三村',1,35.3,0,'00','2015-12:12 12:12:12','不错噢',10);
INSERT INTO `t_order` VALUES ('2', '李四', '依伢宝贝店铺', '100512545','18205931544','2,3,4','北京市朝阳区莲花三村',1,35.3,0,'00','2015-12:12 12:12:12','fdsafdsafas',20);
INSERT INTO `t_order` VALUES ('3', '王五口', '依伢宝贝店铺', '100512545','18205931544','2,3,4','北京市朝阳区莲花三村',1,35.3,0,'00','2015-12:12 12:12:12','fsa2222',100);
INSERT INTO `t_order` VALUES ('4', '张男莪', '依伢宝贝店铺', '100512545','18205931544','2,3,4','北京市朝阳区莲花三村',1,35.3,0,'00','2015-12:12 12:12:12','fsdafsdafdsa',150);

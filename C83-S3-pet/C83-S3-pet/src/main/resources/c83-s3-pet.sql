/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : c83-s3-pet

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2020-09-24 15:31:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pet_address
-- ----------------------------
DROP TABLE IF EXISTS `pet_address`;
CREATE TABLE `pet_address` (
  `aid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '用户编号',
  `addr` varchar(21841) default NULL COMMENT '地址',
  PRIMARY KEY  (`aid`),
  KEY `FK_address_user` (`uid`),
  CONSTRAINT `FK_address_user` FOREIGN KEY (`uid`) REFERENCES `pet_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_address
-- ----------------------------
INSERT INTO `pet_address` VALUES ('1', '1', '湖南长沙天心区');

-- ----------------------------
-- Table structure for pet_adminuser
-- ----------------------------
DROP TABLE IF EXISTS `pet_adminuser`;
CREATE TABLE `pet_adminuser` (
  `uid` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_adminuser
-- ----------------------------
INSERT INTO `pet_adminuser` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for pet_blog
-- ----------------------------
DROP TABLE IF EXISTS `pet_blog`;
CREATE TABLE `pet_blog` (
  `bid` int(11) NOT NULL auto_increment,
  `bname` varchar(20) default NULL COMMENT '作者网名',
  `title` varchar(254) default NULL COMMENT '标题',
  `bdesc` varchar(255) default NULL COMMENT '内容',
  `createtime` timestamp NULL default CURRENT_TIMESTAMP COMMENT '发表时间',
  `uid` varchar(11) default NULL COMMENT '绑定用户id',
  PRIMARY KEY  (`bid`),
  KEY `FK_blog_user` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_blog
-- ----------------------------
INSERT INTO `pet_blog` VALUES ('1', '悟空', '你们喜欢雪纳瑞的什么？', '我喜欢它的肉，很好吃', '2014-11-02 20:18:00', '1');

-- ----------------------------
-- Table structure for pet_cart
-- ----------------------------
DROP TABLE IF EXISTS `pet_cart`;
CREATE TABLE `pet_cart` (
  `cartid` int(11) NOT NULL auto_increment COMMENT '购物车ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `count` int(11) NOT NULL COMMENT '商品数量',
  PRIMARY KEY  (`cartid`),
  KEY `FK_cart_pets` (`pid`),
  KEY `FK_cart_user` (`uid`),
  CONSTRAINT `FK_cart_pets` FOREIGN KEY (`pid`) REFERENCES `pet_pets` (`pid`) ON DELETE NO ACTION,
  CONSTRAINT `FK_cart_user` FOREIGN KEY (`uid`) REFERENCES `pet_user` (`uid`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_cart
-- ----------------------------
INSERT INTO `pet_cart` VALUES ('1', '1', '1', '10');
INSERT INTO `pet_cart` VALUES ('2', '2', '2', '5');

-- ----------------------------
-- Table structure for pet_category
-- ----------------------------
DROP TABLE IF EXISTS `pet_category`;
CREATE TABLE `pet_category` (
  `cid` int(11) NOT NULL auto_increment,
  `cname` varchar(255) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_category
-- ----------------------------
INSERT INTO `pet_category` VALUES ('1', '猫');
INSERT INTO `pet_category` VALUES ('2', '狗');
INSERT INTO `pet_category` VALUES ('3', '鸟');
INSERT INTO `pet_category` VALUES ('4', '其他');
INSERT INTO `pet_category` VALUES ('5', '猫粮');
INSERT INTO `pet_category` VALUES ('6', '狗粮');
INSERT INTO `pet_category` VALUES ('7', '猫狗玩具');

-- ----------------------------
-- Table structure for pet_comment
-- ----------------------------
DROP TABLE IF EXISTS `pet_comment`;
CREATE TABLE `pet_comment` (
  `bcid` int(11) NOT NULL auto_increment,
  `bcname` varchar(20) default NULL COMMENT '评论者网名',
  `bcdesc` varchar(255) default NULL COMMENT '评论内容',
  `createtime` timestamp NULL default CURRENT_TIMESTAMP COMMENT '评论时间',
  `bid` varchar(11) default NULL COMMENT '评论的博客id',
  PRIMARY KEY  (`bcid`),
  KEY `FK_comment_blog` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_comment
-- ----------------------------
INSERT INTO `pet_comment` VALUES ('1', '八戒', '大师兄说得对', '2014-11-02 20:19:00', '1');

-- ----------------------------
-- Table structure for pet_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `pet_orderitem`;
CREATE TABLE `pet_orderitem` (
  `itemid` int(11) NOT NULL auto_increment,
  `count` int(11) default NULL COMMENT '数量',
  `subtotal` double default NULL COMMENT '总价',
  `pid` int(11) default NULL,
  `oid` int(11) default NULL,
  PRIMARY KEY  (`itemid`),
  KEY `FK_orderitem_pets` (`pid`),
  KEY `Fk_orderitem_orders` (`oid`),
  CONSTRAINT `Fk_orderitem_orders` FOREIGN KEY (`oid`) REFERENCES `pet_orders` (`oid`),
  CONSTRAINT `FK_orderitem_pets` FOREIGN KEY (`pid`) REFERENCES `pet_pets` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_orderitem
-- ----------------------------
INSERT INTO `pet_orderitem` VALUES ('1', '3', '228', '1', '64');

-- ----------------------------
-- Table structure for pet_orders
-- ----------------------------
DROP TABLE IF EXISTS `pet_orders`;
CREATE TABLE `pet_orders` (
  `oid` int(11) NOT NULL auto_increment,
  `total` double default NULL COMMENT '总价',
  `ordertime` datetime default NULL COMMENT '订单生成时间',
  `state` int(11) default NULL COMMENT '订单状态：0未支付,1已支付,2已发货,3已收货,4已评价,5已退货',
  `addr` varchar(50) default NULL COMMENT '收货地址',
  `phone` varchar(20) default NULL COMMENT '联系电话',
  `uid` int(11) default NULL COMMENT '用户编号',
  `name` varchar(20) default NULL COMMENT '联系人',
  PRIMARY KEY  (`oid`),
  KEY `FK_orders_user` (`uid`),
  CONSTRAINT `FK_orders_user` FOREIGN KEY (`uid`) REFERENCES `pet_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_orders
-- ----------------------------
INSERT INTO `pet_orders` VALUES ('64', '228', '2017-11-21 19:46:44', '1', '清华园', '13283718600', '1', 'Song');

-- ----------------------------
-- Table structure for pet_pets
-- ----------------------------
DROP TABLE IF EXISTS `pet_pets`;
CREATE TABLE `pet_pets` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(255) default NULL COMMENT '商品或宠物名称',
  `shop_price` double default NULL COMMENT '售价',
  `image` varchar(255) default NULL COMMENT '图片',
  `pdesc` varchar(255) default NULL COMMENT '描述',
  `state` int(11) NOT NULL COMMENT '1为宠物，2为商品',
  `cid` int(11) default NULL COMMENT '分类id 关联 pet_category.id',
  PRIMARY KEY  (`pid`),
  KEY `FK_pets_category` (`cid`),
  CONSTRAINT `FK_pets_category` FOREIGN KEY (`cid`) REFERENCES `pet_category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_pets
-- ----------------------------
INSERT INTO `pet_pets` VALUES ('1', '小橘', '558', null, '绝对高大上。', '1', '1');

-- ----------------------------
-- Table structure for pet_user
-- ----------------------------
DROP TABLE IF EXISTS `pet_user`;
CREATE TABLE `pet_user` (
  `uid` int(11) NOT NULL auto_increment,
  `username` varchar(20) default NULL COMMENT '用户名',
  `password` varchar(20) default NULL COMMENT '密码',
  `phone` varchar(20) default NULL COMMENT '电话',
  `sex` varchar(10) default NULL COMMENT '性别',
  `state` int(11) default NULL COMMENT '状态',
  `createtime` timestamp NULL default CURRENT_TIMESTAMP COMMENT '注册时间',
  `addr` varchar(255) default NULL COMMENT '地址',
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_user
-- ----------------------------
INSERT INTO `pet_user` VALUES ('1', '悟空', 'a', '13283718600', '男', '1', '2014-11-02 20:18:00', '清华园');
INSERT INTO `pet_user` VALUES ('2', '八戒', 'a', '13283710000', '男', '1', null, '大明湖畔');
INSERT INTO `pet_user` VALUES ('3', '哪吒', 'a', '13283710000', '男', '1', null, '南山山顶');

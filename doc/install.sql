/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : node_cms

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-01-11 16:11:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '光伏架');
INSERT INTO `category` VALUES ('2', '新型桥梁');
INSERT INTO `category` VALUES ('3', '大空间结构');
INSERT INTO `category` VALUES ('4', '旧桥改造');
INSERT INTO `category` VALUES ('5', '建筑加固');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `description` text,
  `address` varchar(100) DEFAULT NULL,
  `company_type` varchar(100) DEFAULT NULL,
  `company_size` varchar(100) DEFAULT NULL,
  `regist_capital` varchar(100) DEFAULT NULL,
  `regist_date` datetime DEFAULT NULL,
  `business_model` varchar(100) DEFAULT NULL,
  `business_scope` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '广西鸿鹄结构工程技术信息咨询有限公司', '<p>\r\n	<img src=\"/img/uploads/XIE1.jpg\" alt=\"\" width=\"300\" height=\"311\" title=\"\" align=\"right\" /> \r\n</p>\r\n<span style=\"color:#34495E;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;广西鸿鹄结构工程技术信息咨询有限公司创建于2019年，广西壮族自治区南宁市西乡塘区火炬路 ，地处地铁与大学交汇处附近，交通十分便利。</span><br />\r\n<br />\r\n<span style=\"color:#34495E;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公司具备雄厚的技术力量和多年的项目经验，以及完备的质量体系和产学研一体化基地，。</span><br />\r\n<br />\r\n<span style=\"color:#34495E;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color:#34495E;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">广西鸿鹄</span>全体员工以饱满的工作热情，以“用户满意”为服务宗旨，本着“信誉至上”的原则，真诚的期待与国内外客商携手共进，共同迈向成功！</span><br />\r\n<br />\r\n<span style=\"color:#34495E;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 竭诚的欢迎各界友人光临指导，真诚合作，共创美好明天！</span> \r\n<div>\r\n	<br />\r\n</div>', '广西壮族自治区南宁市西乡塘区', '咨询/技术研发/工程', '1-50人', '500万人民币', '2019-06-14 00:00:00', '有限责任公司(自然人独资)', '土木工程咨询，施工图，设计，方案落地，检测(依法须经批准的项目，经相关部门批准后方可开展经营活动).');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_mobile` varchar(100) DEFAULT NULL,
  `contact_fax` varchar(100) DEFAULT NULL,
  `contact_qq` varchar(100) DEFAULT NULL,
  `location_lng` varchar(100) DEFAULT NULL,
  `location_lat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', '农心京', '0771-2107690', '470076320@qq.com', '13978783032', '0771-2107690', '0', '108.2889021', '22.8348199');

-- ----------------------------
-- Table structure for honor
-- ----------------------------
DROP TABLE IF EXISTS `honor`;
CREATE TABLE `honor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `honor_name` varchar(100) DEFAULT NULL,
  `honor_main_id` int(11) DEFAULT NULL,
  `certification` varchar(100) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of honor
-- ----------------------------
INSERT INTO `honor` VALUES ('2', '资质证书 - 信用证书', '11', '南宁市行政审批局', '2019-06-14 00:00:00', '2099-12-31 00:00:00', '2019-06-14 00:00:00', '3');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `createtime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `settop` int(1) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '鸿鹄结构工程：停车场光伏棚', '<p style=\"font-family:Verdana, Arial;font-size:13px;background-color:#FFFFFF;\">\r\n	。 \r\n</p>', '2016-12-16 00:00:00', '1', '1', '0');
INSERT INTO `news` VALUES ('2', '甫筑科技：XIE篮球场光伏电站', '<p style=\"font-family:Verdana, Arial;font-size:13px;background-color:#FFFFFF;\">\r\n	。\r\n</p>', '2017-01-05 00:00:00', '1', '1', '9');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `createtime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `settop` int(1) DEFAULT '1',
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '公司公告', '      本公司本着以人为本，以质取胜，竞争求生存，合作求发展的宗旨，为广大用户提供优质咨询和技术指导，欢迎国内外企业/公司/机构与本单位建立长期的合作关系。热诚欢迎各界朋友前来参观、考察、洽谈业务。谢远忠代表广西鸿鹄结构工程技术信息咨询有限公司欢迎新老客户来电洽谈。', '2017-01-06 00:00:00', '1', '1', '0');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_name` varchar(100) DEFAULT NULL,
  `photo_main_id` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('2', '企业风范', '13', '2024-01-05 00:00:00', '5');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_type` int(1) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pic_name` varchar(100) DEFAULT NULL,
  `pic_url_cdn` varchar(100) DEFAULT NULL,
  `pic_url_loc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', '0', null, '首页2.jpg', null, '/img/uploads/首页2.jpg');
INSERT INTO `picture` VALUES ('2', '0', null, '首页3.jpg', null, '/img/uploads/首页3.jpg');
INSERT INTO `picture` VALUES ('3', '1', '1', 'xiangce1.jpg', null, '/img/uploads/xiangce1.jpg');
INSERT INTO `picture` VALUES ('4', '1', '1', 'xiangce2.jpg', null, '/img/uploads/xiangce2.jpg');
INSERT INTO `picture` VALUES ('5', '1', '2', 'xiangce3.jpg', null, '/img/uploads/xiangce3.jpg');
INSERT INTO `picture` VALUES ('6', '1', '2', 'xiangce6.jpg', null, '/img/uploads/xiangce6.jpg');
INSERT INTO `picture` VALUES ('7', '1', '2', 'xiangce7.jpg', null, '/img/uploads/xiangce7.jpg');
INSERT INTO `picture` VALUES ('8', '2', null, 'license.jpg', null, '/img/uploads/license.jpg');
INSERT INTO `picture` VALUES ('9', '3', '2', 'xiangce4.jpg', null, '/img/uploads/xiangce4.jpg');
INSERT INTO `picture` VALUES ('10', '3', '2', 'xiangce5.jpg', null, '/img/uploads/xiangce5.jpg');
INSERT INTO `picture` VALUES ('11', '3', '2', 'xiangce0.jpg', null, '/img/uploads/xiangce0.jpg');
INSERT INTO `picture` VALUES ('12', '0', null, 'XIE1.jpg', null, '/img/uploads/XIE1.jpg');
INSERT INTO `picture` VALUES ('13', '3', '2', 'model1.jpg', null, '/img/uploads/model1.jpg');




-- ----------------------------
-- Table structure for product // INSERT INTO `picture` VALUES ('11', '2', null, '1484105535739.jpg', null, '/img/uploads/1484105535739.jpg');
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `specification` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `detail_info` text,
  `publish_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '鸿鹄结构工程 - 大空间结构', '1', '#1', '齐全', '鸿鹄结构工程', '致电咨询', '<p>\r\n	&nbsp; &nbsp; 项目详情：\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 1.质量保证\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 2.信誉保证\r\n</p>', '2017-01-06 00:00:00', null, '9');
INSERT INTO `product` VALUES ('2', '鸿鹄结构工程 - 新型桥梁', '1', '#2', '齐全', '鸿鹄结构工程', '致电咨询', '<p>\r\n	&nbsp; &nbsp; 项目详情：\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 1.质量保证\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 2.信誉保证\r\n</p>', '2017-01-06 00:00:00', null, '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `displayname` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `createtime` datetime DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '', '', '系统管理员', '1', '2016-12-12 00:00:00', '2016-12-15 00:00:00', 'img/avatar/avatar-iteming.png');

-- ----------------------------
-- Table structure for website
-- ----------------------------
DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteurl` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `carousel` varchar(500) DEFAULT NULL,
  `icp_num` varchar(100) DEFAULT NULL,
  `support_name` varchar(100) DEFAULT NULL,
  `support_url` varchar(100) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of website
-- ----------------------------
INSERT INTO `website` VALUES (
'1', 
'http://www.xiexuan.com.cn/', 
'广西鸿鹄结构工程技术信息咨询有限公司', 
'公司主营：	桥梁结构工程设计及方案技术信息咨询、工程管理服务、建筑工程设计及技术咨询（以上项目资质证经营）;企业管理咨询。为客户提供最好的服务和最实惠的价格。热诚欢迎各界朋友前来参观、洽谈业务。\r\n', 
'广西鸿鹄结构工程技术信息咨询有限公司,桥梁设计,空间结构设计,桥梁检测,建筑材料,施工,新型桥梁研发与咨询', 
'/img/uploads/首页0.jpg',
'/img/uploads/首页2.jpg|/img/uploads/首页3.jpg', 
'粤ICP备2023138612号-1', 
'Guangxi Honghu Structure Engg Tech Info Consulting Ltd', 
'http://www.xiexuan.com.cn/', 
'9');

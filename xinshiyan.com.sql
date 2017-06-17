/*
Navicat MySQL Data Transfer

Source Server         : xsy.com
Source Server Version : 50534
Source Host           : 101.200.72.164:3306
Source Database       : xsy.com

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2015-09-18 13:15:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jrkj_ad`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_ad`;
CREATE TABLE `jrkj_ad` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_ad
-- ----------------------------
INSERT INTO `jrkj_ad` VALUES ('4', '8', 'image', 'a1', '', '1507/23/55b0c2e0e8b25.png', '', '', '', '1435680000', '1563552000', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('5', '8', 'image', 'a2', '', '1507/23/55b0c2ef16e36.png', '', '', '', '1435680000', '1563465600', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('8', '8', 'image', 'a3', '', '1507/28/55b7550a7017b.png', '', '', '', '-28800', '1596124800', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('9', '8', 'image', 'a4', '', '1507/28/55b755028c877.png', '', '', '', '-28800', '1532620800', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('10', '8', 'image', 'a5', '', '1507/23/55b0c33489544.png', '', '', '', '0', '1564070400', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('11', '8', 'image', 'a6', '', '1507/23/55b0c3446ea05.png', '', '', '', '0', '1594915200', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('12', '8', 'image', 'a7', '', '1507/31/55bb22ec5ca62.png', '', '', '', '-28800', '1626364800', '0', '0', '255', '1');

-- ----------------------------
-- Table structure for `jrkj_adboard`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_adboard`;
CREATE TABLE `jrkj_adboard` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `allow_type` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_adboard
-- ----------------------------
INSERT INTO `jrkj_adboard` VALUES ('8', '首页轮动图1', '352', '257', '', '1', '');
INSERT INTO `jrkj_adboard` VALUES ('9', '首页轮动图2', '216', '330', '', '1', '');

-- ----------------------------
-- Table structure for `jrkj_admin`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_admin`;
CREATE TABLE `jrkj_admin` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` smallint(5) NOT NULL,
  `last_ip` varchar(15) NOT NULL,
  `last_time` int(10) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_admin
-- ----------------------------
INSERT INTO `jrkj_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '117.45.59.31', '1439950580', 'admin@admin.qq.com', '1');
INSERT INTO `jrkj_admin` VALUES ('2', 'stone', 'e10adc3949ba59abbe56e057f20f883e', '2', '127.0.0.1', '1427168808', '', '1');

-- ----------------------------
-- Table structure for `jrkj_admin_auth`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_admin_auth`;
CREATE TABLE `jrkj_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_admin_auth
-- ----------------------------
INSERT INTO `jrkj_admin_auth` VALUES ('2', '36');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '37');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '38');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '50');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '51');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '52');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '54');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '56');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '57');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '58');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '59');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '70');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '117');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '118');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '119');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '149');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '150');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '164');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '181');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '186');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '187');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '190');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '192');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '199');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '200');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '201');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '202');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '203');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '249');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '250');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '253');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '255');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '267');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '268');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '277');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '279');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '281');

-- ----------------------------
-- Table structure for `jrkj_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_admin_role`;
CREATE TABLE `jrkj_admin_role` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `ordid` tinyint(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_admin_role
-- ----------------------------
INSERT INTO `jrkj_admin_role` VALUES ('1', '超级管理员', '超级管理员', '0', '1');
INSERT INTO `jrkj_admin_role` VALUES ('2', '运营', 'stone', '0', '1');
INSERT INTO `jrkj_admin_role` VALUES ('3', '编辑', '网站编辑', '0', '1');

-- ----------------------------
-- Table structure for `jrkj_apply`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_apply`;
CREATE TABLE `jrkj_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `age` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) DEFAULT NULL,
  `add_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_apply
-- ----------------------------
INSERT INTO `jrkj_apply` VALUES ('1', '905974667@qq.com', '0', '905974667@qq.com', '13767114126', '0', '1428574795', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('2', '905974667@qq.com', '0', '905974667@qq.com', '13767114126', '0', '1428574834', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('3', '905974667@qq.com', '0', '905974667@qq.com', '13767114126', '0', '1428574951', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('4', 'admin', '', '905974667@qq.com', '13767114126', '清华大学', '1428745640', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('5', '刘石头', '', '905974667@qq.com', '13767114126', '清华大学', '1428745801', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('6', '韩晓燕', '二年级', '905974667@qq.com', '13767114126', '清华大学', '1428747439', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('7', '韩晓燕', '二年级', '905974667@qq.com', '13767114126', '清华大学', '1428747458', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('8', '韩晓燕', '二年级', '905974667@qq.com', '13767114126', '清华大学', '1428747507', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('9', '韩晓燕', '二年级', '905974667@qq.com', '13767114126', '清华大学', '1428747601', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('10', '韩晓燕', '二年级', '905974667@qq.com', '13767114126', '清华大学', '1428747567', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('11', '韩晓燕', '二年级', '905974667@qq.com', '13767114126', '清华大学', '1428747612', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('12', '韩晓燕', '12', '905974667@qq.com', '13767114126', '', '1431583672', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('13', '韩晓燕', '12', '905974667@qq.com', '13767114126', '', '1431583717', '127.0.0.1', '0');
INSERT INTO `jrkj_apply` VALUES ('14', '姓名', '年龄', 'liustone@qq.com', '13767114126', '', '1431584202', '127.0.0.1', '0');

-- ----------------------------
-- Table structure for `jrkj_article`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article`;
CREATE TABLE `jrkj_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `colors` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `short_title` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `img` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `intro` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `info` text CHARACTER SET utf8 NOT NULL,
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(4) unsigned NOT NULL DEFAULT '100' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `seo_keys` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `templet` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `origin` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `describe` text CHARACTER SET utf8 NOT NULL COMMENT '产品描述',
  `parameter` text CHARACTER SET utf8 NOT NULL COMMENT '产品参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_article
-- ----------------------------
INSERT INTO `jrkj_article` VALUES ('1', '1', '企业文化', '', '', '', '', '企业文化', '&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';color:#E53333;line-height:2;&quot;&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;我们的宗旨：&lt;/span&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;&quot;&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;为客户提供360度服务，创造品牌价值！&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; Provide 360 degree service to customers, create brand value!&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span style=&quot;font-size:24px;font-family:\'Microsoft YaHei\';color:#E53333;line-height:2;&quot;&gt;我们的理念:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:14px;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;☆ 诚信（Integrity）&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;☆ 务实（Earnest）&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;☆ 精准（Accuracy） 　 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;☆ 高效（Efficiency）&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;&quot;&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;☆ 专业（Profession&lt;/span&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;）&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span style=&quot;font-size:24px;font-family:\'Microsoft YaHei\';color:#E53333;line-height:2;&quot;&gt;我们的愿景：&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:14px;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-size:14px;&quot;&gt; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-size:24px;&quot;&gt;塑造卓越品牌公司， 与行业共同成长。&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;line-height:2;font-size:24px;&quot;&gt;&amp;nbsp; &amp;nbsp; Shape the outstanding Brand Company, and grow with the industry &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt; &lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2ee7b2adce.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/p&gt;', '0', '0', '109', '1437632040', '1438323494', '1', '企业文化', '', '编辑中...', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('2', '1', '公司荣誉', '', '', '', '', '编辑中。。。', '编辑中。。。', '0', '0', '106', '1437632070', '1437632070', '1', '公司荣誉', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('3', '1', '公司分布', '', '', '', '', '编辑中。。。', '&lt;span style=&quot;font-size:24px;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;strong&gt;长沙公司 &amp;nbsp; &amp;nbsp;贵阳公司&lt;/strong&gt;&lt;/span&gt;', '0', '0', '107', '1437632084', '1438327726', '1', '公司分布', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('4', '1', '组织架构', '', '', '', '', '组织架构', '&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2ea4849f39.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/p&gt;', '0', '0', '108', '1437632098', '1437788894', '1', '组织架构', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('5', '6', '联系方式', '', '', '', '', '联系方式', '&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;color:#000000;line-height:2;&quot;&gt;地址：南昌市南京东路666号庐山花园庐郡楼804室&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;color:#000000;line-height:2;&quot;&gt;联系人：李先生&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;color:#000000;line-height:2;&quot;&gt;联系电话：13576270043/0791-87891185&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;color:#000000;line-height:2;&quot;&gt;微信号：13576270043&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;color:#000000;line-height:2;&quot;&gt;邮箱：2968671766@qq.com&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;color:#000000;line-height:2;&quot;&gt;网址：www.xinshiyeit.com&lt;/span&gt;&lt;br /&gt;', '0', '0', '100', '1437632405', '1437803557', '1', '联系方式', '', '编辑中', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('6', '6', '诚招英才', '', '招聘', '', '', ' 设计师、业务员 ', '&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#E53333;font-size:32px;text-align:left;line-height:1.5;&quot;&gt;设计师&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:left;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:9pt;line-height:1.5;&quot;&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:18px;&quot;&gt; &amp;nbsp; &lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、思想活跃、不拘陈规、有较强的创新精神、对广告创意、平面设计、视觉传达有成熟思想与独特见解；具备良好的广告策略性思维；&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、精通&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;Photoshop&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;coredraw&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;Illustrator&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;等平面设计软件；有品牌类广告与平面设计经验；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;3&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、做事严谨踏实，具有良好的创意概念表现能力，作品具创造性，对所做作品质量负责；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;4&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、工作认真踏实，能够承受一定的工作压力，有良好的创意能力和较好沟通能力。&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:32px;font-family:黑体;color:#E53333;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;业务经理&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:32px;font-family:宋体;color:#E53333;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;line-height:1.5;&quot;&gt; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;line-height:1.5;&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-size:9pt;line-height:1.5;font-family:\'sans serif\';&quot;&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;熟悉广告业务，性格开朗、平易近人、较强的事业心与责任心，有开拓、创新精神，能吃苦耐劳，积极进取者；&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、工作认真踏实，能够承受一定的工作压力，有良好的沟通能力和应变能力；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;3&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、热爱广告事业，并且能长期从事这行业的；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;4&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、南昌交通路线和各大写字楼熟悉者优先。&lt;/span&gt;&lt;span style=&quot;font-size:9pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-family:&amp;quot;color:#E53333;&quot;&gt;&lt;span style=&quot;color:#E53333;font-size:32px;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;福&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#E53333;font-size:32px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;color:#E53333;font-size:32px;font-family:\'Microsoft YaHei\';&quot;&gt;利&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、入职的正式员工&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;餐补、车补、话补、全勤奖、达到年限会买五险一金&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;；&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;2&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;.&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;月休&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;8&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;天，国家规定的节假日正常放假，年假至少&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;10&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;天以上；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;3&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;.&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;公司&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;不定期举行&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;集体活动，每年有&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;次以上的旅游活动（&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;次出省，&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;次出市）；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;4&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、重要节日（端午节、中秋节、春节）都有礼品赠送；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;5&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、公司年底有丰厚的年终奖品及年终奖金。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'sans serif\';&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:start;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;text-align:center;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size:32px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-align:center;font-size:32px;font-family:\'Microsoft YaHei\';color:#E53333;&quot;&gt;其&lt;/span&gt;&lt;span style=&quot;text-align:center;font-size:28pt;color:#E53333;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;text-align:center;font-size:32px;font-family:\'Microsoft YaHei\';color:#E53333;&quot;&gt;他&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;margin-left:0cm;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:28.0pt;color:#FF6600;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;工作时间：上午&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;8&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;：&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;30--12&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;：&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;00&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;；下午：&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;13&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;：&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;30--&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;18&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;：&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;00&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;（&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;天&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;8&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;小时制度）&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、学历要求：专科以上（广告相关专业优先），特殊条件的可适度放宽条件&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;3&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、待遇：面议&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;；&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:宋体;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;4&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;、招聘人数：数名（男女不限）&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;。&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:宋体;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:9pt;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;备注：来着面试请一定要简历和作品，公司每周二&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;strong&gt;15&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;strong&gt;：&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;strong&gt;:00&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;strong&gt;统一面试&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;strong&gt;.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:10.5pt;font-family:\'Microsoft YaHei\';&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0cm;&quot;&gt;\r\n	&lt;span style=&quot;font-size:10.5pt;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:9pt;font-family:\'sans serif\';&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Times New Roman\';font-size:16px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'sans serif\';font-size:9pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Times New Roman\';font-size:10.5000pt;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', '0', '0', '100', '1437632445', '1438327172', '1', '诚招英才', '招聘', ' 设计师、业务员 ', '', '', '', '招聘', '', '', '');
INSERT INTO `jrkj_article` VALUES ('43', '7', '品牌认知影响购买行为', '', '', '', '', ' 品牌认知与记忆中品牌节点的强度有关,反映消费者在不同情况下辨别品牌的能力.主要通过色彩/形状/广告语/代言人等完成.消费者在进行品牌认知的过程中建立了独特的认知习惯和途径...... ', '&lt;span style=&quot;color:#616161;font-family:微软雅黑, 宋体;font-size:13px;line-height:26px;white-space:normal;background-color:#FFFFFF;&quot;&gt;品牌认知与记忆中品牌节点的强度有关,反映消费者在不同情况下辨别品牌的能力.主要通过色彩/形状/广告语/代言人等完成.消费者在进行品牌认知的过程中建立了独特的认知习惯和途径......&lt;/span&gt;', '0', '44', '100', '1437959263', '1437959263', '1', '品牌认知影响购买行为', '', ' 品牌认知与记忆中品牌节点的强度有关,反映消费者在不同情况下辨别品牌的能力.主要通过色彩/形状/广告语/代言人等完成.消费者在进行品牌认知的过程中建立了独特的认知习惯和途径...... ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('9', '10', 'LED屏', '', '', '', '1507/25/55b2f758e3d8b.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f75718cbe.jpg&quot; alt=&quot;&quot; /&gt;', '0', '416', '100', '1437639250', '1437792088', '1', '德州扑克21点', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('10', '10', '铝架', '', '', '', '1507/25/55b2f730034d9.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f72e9fd39.jpg&quot; alt=&quot;&quot; /&gt;', '0', '28', '100', '1437639335', '1437792048', '1', '德州扑克22点', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('11', '10', '铁马', '', '', '', '1507/25/55b2f70868fac.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f7068dc33.jpg&quot; alt=&quot;&quot; /&gt;', '0', '18', '100', '1437639364', '1437792008', '1', '德州扑克23点', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('12', '10', '彩虹门', '', '', '', '1507/25/55b2f6cacd714.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f6c3716c3.jpg&quot; alt=&quot;&quot; /&gt;', '0', '25', '100', '1437639388', '1437791946', '1', '德州扑克24点', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('51', '12', '大极凑拳', '', '', '', '1507/27/55b5949de06dd.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b59a8edbd2a.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '43', '100', '1437963369', '1437964947', '1', '大极拳', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('52', '12', '樟树市蓝波弯房产认筹活动', '', '', '', '1507/28/55b6d5addbca7.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/28/55b6d59c5f842.jpg&quot; alt=&quot;&quot; /&gt;', '0', '36', '100', '1438044756', '1438045613', '1', '富银黄金交易公司12-15', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('19', '3', '服务范围', '', '', '', '', ' 开业庆典、楼盘奠基、开盘仪式、活动认筹、 签售仪式、企业年会、公司答谢会、产品发布 会、 周年庆典、促销路演、媒介推广、明星经 纪、公关活动策划、承办大中小型商业演出 等。 ', '&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;line-height:36px;&quot;&gt;&lt;b&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;line-height:1;&quot;&gt;开业庆典、楼盘奠基、开盘仪式、活动认筹、签售仪式、企业年会、公司答谢会、产品发布会、周年庆典、促销路演、媒介推广、明星经纪、公关活动策划、承办大中小型商业演出等。&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;line-height:1.5;&quot;&gt;&lt;span style=&quot;line-height:1;font-size:18px;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2fac00cf1f.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/p&gt;', '0', '0', '100', '1437644318', '1438333456', '1', '服务范围', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('30', '10', '舞台', '', '', '', '1507/55b2f78216215.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f780abb03.jpg&quot; alt=&quot;&quot; /&gt;', '0', '22', '100', '1437792130', '1437792130', '1', '舞台', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('21', '1', '关于我们', '', '', '', '', ' 江西新视野营销策划有限公司 （原共同广告设计部）成立于2008年，是一家集于：文艺演出、明星经纪、开业庆典、促销路演、会务会展、现场布置、公关活动策划、媒介推广、企业VI设计等业务于一身的综合性传媒公司', '&lt;span style=&quot;padding:0px;margin:0px;color:#333333;font-family:\'Microsoft YaHei\';font-size:16px;line-height:2;&quot;&gt;江西新视野营销策划有限公司&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;color:#333333;line-height:2;&quot;&gt;（原共同广告设计部）成立于2008年，是一家集于：文艺演出、明星经纪、开业庆典、促销路演、会务会展、现场布置、公关活动策划、媒介推广、企业VI设计等业务于一身的综合性传媒公司。公司由一批年轻而富有朝气的业界精英优秀的团队组成 \r\n，把营销之灵魂融入到每一次公关活动的策划与执行中，为客户量身打造从营销策划到活动执行的一站式服务模式。成就企业与客户之间的共赢，将企业文化与经营理念、品牌建设紧密结合，引导企业持续发展，尽最大的努力为客户创造最大的价值，使企业从中获得长远发展。 &amp;nbsp;&lt;/span&gt;', '0', '0', '110', '1437787027', '1437805119', '1', '关于我们', '', ' 江西新视野营销策划有限公司 （原共同广告设计部）成立于2008年，是一家集于：文艺演出、明星经纪、开业庆典、促销路演、会务会展、现场布置、公关活动策划、媒介推广、企业VI设计等业务于一身的综合性传媒', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('22', '9', '德州扑克21点', '', '', '', '1507/25/55b2f424f3c44.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f4141c9f7.jpg&quot; alt=&quot;&quot; /&gt;', '0', '20', '100', '1437790511', '1437980891', '1', '德州扑克21点', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('23', '9', '名人蜡像', '', '', '', '1507/27/55b5ac54cf119.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d8b17b5eb.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '23', '100', '1437790592', '1437980853', '1', '名人蜡像', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('24', '9', '名人蜡像', '', '', '', '1507/27/55b5ad2ac7621.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d41ddf63a.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/div&gt;', '0', '19', '100', '1437791342', '1437980806', '1', '名人蜡像', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('25', '9', '游戏体感机', '', '', '', '1507/55b2f4989066d.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d3a851cfc.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '21', '100', '1437791384', '1437979564', '1', '游戏体感机', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('26', '9', '动感赛车', '', '', '', '1507/55b2f4bd64b34.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d37543af6.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '18', '100', '1437791421', '1437979513', '1', '动感赛车', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('27', '9', '卡通造型', '', '', '', '1507/27/55b5abd88e7ee.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d3105cfd2.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '21', '100', '1437791465', '1437979412', '1', '卡通造型', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('28', '9', '卡通造型', '', '', '', '1507/55b2f51020f31.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d2948501d.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '19', '100', '1437791504', '1437979289', '1', '卡通造型', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('29', '9', '卡通造型', '', '', '', '1507/55b2f53bcfaa3.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d14095484.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/div&gt;', '0', '17', '100', '1437791547', '1437978983', '1', '卡通造型', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('31', '10', '启动球', '', '', '', '1507/55b2f7b9e439f.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f7b762e63.jpg&quot; alt=&quot;&quot; /&gt;', '0', '18', '100', '1437792185', '1437792185', '1', '启动球', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('32', '10', '礼炮', '', '', '', '1507/55b2f7d89a662.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f7d70246a.jpg&quot; alt=&quot;&quot; /&gt;', '0', '25', '100', '1437792216', '1437792216', '1', '礼炮', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('33', '10', '气狮', '', '', '', '1507/55b2f802d65c4.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/25/55b2f7ff4a415.jpg&quot; alt=&quot;&quot; /&gt;', '0', '21', '100', '1437792258', '1437792258', '1', '气狮', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('34', '11', '魔术表演', '', '', '', '1507/27/55b5bcd644942.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d06199a9c.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '33', '100', '1437792431', '1437978732', '1', '魔术表演', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('35', '11', '俄罗斯歌手', '', '', '', '1507/27/55b5bb6ac692f.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5d02b153ea.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '33', '100', '1437792534', '1437978674', '1', '俄罗斯歌手', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('36', '11', '模仿秀', '', '', '', '1507/27/55b5bbfc9f7d5.jpg', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/27/55b5ce4f1e29d.jpg&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '51', '100', '1437792563', '1437978195', '1', '模仿秀', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('53', '12', '富银黄金交易公司12-15', '', '', '', '1507/28/55b73830b59ae.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/28/55b6d6d002886.jpg&quot; alt=&quot;&quot; /&gt;', '0', '235', '100', '1438045906', '1438070888', '1', '富银黄金交易公司12-15', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('54', '12', '江西富廷苑假日酒店07-06开业', '', '', '', '1507/55b6d71ab456d.png', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/28/55b6d71745d4c.jpg&quot; alt=&quot;&quot; /&gt;', '0', '25', '100', '1438045978', '1438045978', '1', '江西富廷苑假日酒店07-06开业', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('55', '12', '晶世玉缘活动方案', '', '', '', '1507/55b6d7509674d.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/28/55b6d74c9329b.jpg&quot; alt=&quot;&quot; /&gt;', '0', '25', '100', '1438046032', '1438046032', '1', '晶世玉缘活动方案', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('56', '12', '人人乐超市（南昌店）2.18开业', '', '', '', '1507/28/55b7389b1059e.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/28/55b6d787ee10a.jpg&quot; alt=&quot;&quot; /&gt;', '0', '51', '100', '1438046090', '1438070939', '1', '人人乐超市（南昌店）2.18开业', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('57', '12', '三星专卖店活动', '', '', '', '1507/28/55b736e1af3b2.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/28/55b6d7ba4b8d5.jpg&quot; alt=&quot;&quot; /&gt;', '0', '1943', '100', '1438046141', '1438070497', '1', '三星专卖店活动', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('58', '12', '新濠陶瓷06-28开业', '', '', '', '1507/55b6d7ea6a9c6.png', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/28/55b6d7e3a0a19.jpg&quot; alt=&quot;&quot; /&gt;', '0', '35', '100', '1438046186', '1438046186', '1', '新濠陶瓷06-28开业', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('59', '7', '属于营销的小时代', '', '', '', '', ' 最近由郭敬明导演的《小时代 4 ：灵魂尽头》在 7 月 9 日火热上映了，一举夺下了国内首日过亿的 2D 电影的第三名。然而小时代可不是只会出现在小说和电影院的大屏幕里。在我们的互联网营销的世界里，', '&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;最近由郭敬明导演的《小时代&lt;/span&gt;&lt;span&gt;4&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;：灵魂尽头》在&lt;/span&gt;&lt;span&gt;7&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;月&lt;/span&gt;&lt;span&gt;9&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;日火热上映了，一举夺下了国内首日过亿的&lt;/span&gt;&lt;span&gt;2D&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;电影的第三名。然而小时代可不是只会出现在小说和电影院的大屏幕里。在我们的互联网营销的世界里，也有属于我们的“小时代”。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;现代营销之父菲利普·科特勒教授就把我们的营销的演进划分为了三个时代。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;营销小时代&lt;/span&gt;&lt;span&gt;1.0&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;：以产品为中心的时代&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;这个时代营销被认为是一种纯粹的销售，一种关于说服的艺术。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;营销小时代&lt;/span&gt;&lt;span&gt;2.0&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;：以消费者为中心的时代&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;企业追求与顾客建立紧密联系，不但需要继续提供产品使用，更要为消费者提供情感价值，企业需要让消费者意识到产品的内涵，理解消费者的预期，然后吸引他们购买产品。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;营销小时代&lt;/span&gt;&lt;span&gt;3.0&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;：以价值观为中心的时代&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;在这个新的时代中，营销不再把顾客仅仅视为消费个体，而是把他们看作具有独立思想，心灵和精神的完整的人类个体。“交换”与“交易”被提升为“互动”与“共鸣”，营销的价值主张从“功能与情感的差异化”被深化至“精神与价值观相应”。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;随着营销小时代的不断发展，再加上互联网的推波助澜，所以营销现在变得如此火爆也是早已预料到的事，然而我相信营销不会就此止步，还会向更高更火爆的未来走去。所以，让我们一起共同期待营销小时代&lt;/span&gt;&lt;span&gt;4.0&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;的到来。&lt;/span&gt;\r\n&lt;/p&gt;', '0', '38', '100', '1438050284', '1438050284', '1', '属于营销的小时代', '小时代', ' 最近由郭敬明导演的《小时代 4 ：灵魂尽头》在 7 月 9 日火热上映了，一举夺下了国内首日过亿的 2D 电影的第三名。然而小时代可不是只会出现在小说和电影院的大屏幕里。在我们的互联网营销的世界里，', '', '', '江西新视野营销策划有限公司', '小时代', '', '', '');
INSERT INTO `jrkj_article` VALUES ('60', '7', '关于互联网营销，你所不知道的小秘密', '', '', '', '', ' 互联网营销，其实很像一位神秘的女人，很多人都以为自己很了解她，其实她就像世人对所有女人的评价那样——女人的心，海底针 …… 实在难以捉摸啊。 然而，越是难以捉摸的东西，我们就越爱去探索，今天就让我们', '&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;互联网营销，其实很像一位神秘的女人，很多人都以为自己很了解她，其实她就像世人对所有女人的评价那样——女人的心，海底针&lt;/span&gt;&lt;span&gt;……&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;实在难以捉摸啊。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;然而，越是难以捉摸的东西，我们就越爱去探索，今天就让我们一起来扒一扒这个神秘女人背后的小秘密。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;小秘密&lt;/span&gt;&lt;span&gt;1&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;——你不了解她，只会事倍功半。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;许多企业在刚开始进行网络营销宣传推广活动时，对网络营销没有清晰的概念和深刻的理解。大多数企业管理者通过报纸、电视和其他媒体宣传就冲动地实行了网络营销计划，希望借助网络营销在互联网上扩大他们的业务和销售，但往往因为没有做好详细的网络营销计划而匆忙实行网络营销，结果令企业损失不必要的投资资金。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;小秘密&lt;/span&gt;&lt;span&gt;2&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;——只有细心才能虏获她的芳心。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;网络营销好比是一个系统工程，涉及到很多方面，需要结合企业自身的实际情况，对市场进行需求分析，细致分析做好网络营销计划，最终才能够实现网络营销对企业宣传推广的作用。计划包括企业网站的建设、发布企业信息，营销预算，选择网络营销方式和推广产品，安排网络营销专业销售人员、客户服务等等，计划要把所有的工作安排到位，周密的计划能够使企业在网络营销过程平稳地进行，从而达到理想的网络营销效果。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;小秘密&lt;/span&gt;&lt;span&gt;3&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;——她的心腹叫做企业网站。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;构建企业网站是在网络营销过程中非常重要的一环。但事实上，大多数企业网站并没有发挥出宣传推广的作用，起不到网络营销最初设定的效果。这是因为企业在建设网站时忽略了企业网站的实用性，而是一味地着重于网络的外观设计。企业认为网站是企业在互联网的形象，因此希望网站做得更好更漂亮的创意设计，&lt;/span&gt;&lt;span&gt;Flash&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;动画，成为企业关注的重点，至于网站是否符合网络营销的需要，是否有利于未来宣传推广都不考虑。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:10.5pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;首先企业要明白建设网站主要是为了配合网络营销的进行，网站设计主要以方便用户，满足用户需求为原则，虽然华丽的网站可以吸引用户，但是对于没有实用性、满足不了他们需求的网站，用户只会在“欣赏”完网站之后便匆匆离去。在网站设计时除了要清晰地显示企业图像外，还应完善网站营销服务功能，注重产品和客户服务功能、用户交流、信息检索、客户体验等功能的显示，使网站更实用，能够满足用户的需求。&lt;/span&gt;\r\n&lt;/p&gt;', '0', '45', '100', '1438053215', '1438053215', '1', '关于互联网营销，你所不知道的小秘密', '小秘密', ' 互联网营销，其实很像一位神秘的女人，很多人都以为自己很了解她，其实她就像世人对所有女人的评价那样——女人的心，海底针 …… 实在难以捉摸啊。 然而，越是难以捉摸的东西，我们就越爱去探索，今天就让我们', '', '', '江西新视野营销策划有限公司', '小秘密', '', '', '');
INSERT INTO `jrkj_article` VALUES ('42', '13', '合作伙伴', '', '', '', '', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/31/55bb2663762fa.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/div&gt;', '0', '1588', '100', '1437796405', '1438328422', '1', '合作伙伴', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('44', '7', '营销策划公司教你“借力打力”做品牌推广', '', '', '', '', ' 相信很多人都关注到，在2014年8月份矿泉水品牌Evian在纽约广场进行营销活动，如果想喝矿泉水只需要在社交平台上发布相关的推文即可。而活动团队会查看对应的推送内容，同时在5分钟左右将矿泉水送到参与', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#666666;font-family:\'Microsoft Yahei\', Arial, sans-serif;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;相信很多人都关注到，在2014年8月份矿泉水品牌Evian在纽约广场进行营销活动，如果想喝矿泉水只需要在社交平台上发布相关的推文即可。而活动团队会查看对应的推送内容，同时在5分钟左右将矿泉水送到参与者手中。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#666666;font-family:\'Microsoft Yahei\', Arial, sans-serif;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;div class=&quot;content&quot; style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			而社交媒体&lt;a href=&quot;http://www.thinkwolf.com.cn/&quot; style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;text-decoration:none;&quot;&gt;&lt;strong style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;营销策划&lt;/strong&gt;&lt;/a&gt;是Evian北美营销副总裁认为最应该持续的长期营销活动。\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			&amp;nbsp;\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			　　那么实时&lt;u style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;品牌推广&lt;/u&gt;又是什么呢？其实只要可以满足用户的需求，并快速反应的方式都可以称为实时品牌营销策划。\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			&amp;nbsp;\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			　　一、实时营销策划应当尽量的提升转化（有内容才能和实时结合）\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			&amp;nbsp;\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			　　二、观察网络的反馈（有能力分析数据，才能洞察实时营销的切入点）\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			&amp;nbsp;\r\n		&lt;/div&gt;\r\n		&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n			　　三、品牌负面危机的制止（发生危机要及时止血，不然互联网传播将会让你一发不可收拾）\r\n		&lt;/div&gt;\r\n		&lt;div&gt;\r\n			&lt;br /&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', '0', '45', '100', '1437959496', '1437959496', '1', '营销策划公司教你“借力打力”做品牌推广', '', ' 相信很多人都关注到，在2014年8月份矿泉水品牌Evian在纽约广场进行营销活动，如果想喝矿泉水只需要在社交平台上发布相关的推文即可。而活动团队会查看对应的推送内容，同时在5分钟左右将矿泉水送到参与', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('45', '7', '互联网+时代的营销策略', '', '', '', '', ' 近年来随着“互联网+”上升为国家级的战略规划，很多传统企业纷纷开始转型，通过线上线下双渠道转变传统企业发展方式。而互联网+时代 营销策划 的策略转变和美国社会化媒体专家的品牌社区有很大的关系。它指的', '&lt;span style=&quot;color:#666666;font-family:\'Microsoft Yahei\', Arial, sans-serif;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;近年来随着“互联网+”上升为国家级的战略规划，很多传统企业纷纷开始转型，通过线上线下双渠道转变传统企业发展方式。而互联网+时代&lt;/span&gt;&lt;strong style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;营销策划&lt;/strong&gt;&lt;span style=&quot;color:#666666;font-family:\'Microsoft Yahei\', Arial, sans-serif;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;的策略转变和美国社会化媒体专家的品牌社区有很大的关系。它指的是某些品牌和社会消费者的关系。简单的说就是通过建立和品牌之间的关系来增加用户对品牌的价值感。&lt;/span&gt;', '0', '38', '100', '1437959665', '1437959665', '1', '互联网+时代的营销策略', '', ' 近年来随着“互联网+”上升为国家级的战略规划，很多传统企业纷纷开始转型，通过线上线下双渠道转变传统企业发展方式。而互联网+时代 营销策划 的策略转变和美国社会化媒体专家的品牌社区有很大的关系。它指的', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('46', '8', '从消费者品牌认知到品牌情感', '', '', '', '', ' 在 品牌推广 中，品牌管理是指真多企业的一些产品和服务的品牌，也就是综合的去利用企业的一些资源，通过我们的计划、组织、实施、控制来实现企业品牌战略目标的经营管理的一个过程。而品牌的核心内容主要有品牌', '&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;在&lt;/span&gt;&lt;strong style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;品牌推广&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;中，品牌管理是指真多企业的一些产品和服务的品牌，也就是综合的去利用企业的一些资源，通过我们的计划、组织、实施、控制来实现企业品牌战略目标的经营管理的一个过程。而品牌的核心内容主要有品牌定位、品牌个性、品牌形象、LOGO、广告表现风格以及我们的终端形象等等。&lt;/span&gt;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 我们知道，品牌推广必须要对这个品牌有足够的了解，而怎样更好的进行品牌管理可能是很多人比较在乎的。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-family:\'Microsoft YaHei\';&quot;&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;1、必须建立正确的品牌认知要基于消费者品牌识别的显著性&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 品牌显著性与品牌在各种场合下能够被消费者提及的频率和难易程度,该品牌在多大程度上能够被消费者轻易认出,哪些关联因素是必要的,该品牌的知晓度有多少说服力等等。区分品牌显著性的关键维度是品牌深度和品牌宽度,品牌深度指的是品牌被消费者认出的容易程度；品牌宽度则指当消费者想起该品牌时的购买范围和消费状况一个高度显著的品牌能够使消费者充分购买并在可选择范围内总是想起该品牌。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 2.在创造品牌价值方面，关键是创建较高品牌绩效和良好品牌形象&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 品牌管理理论认为，品牌价值的辨识，从功能性的角度讲主要指与绩效相关的品牌消费业绩。品牌绩效是产品或服务用以满足消费者功能性需求的外在表现。包括品牌内在的产品或者服务特征-全球品牌网-，以及与产品和服务相关的各项要素,具体而言,品牌绩效的维度包插产品的基础特征和附加特征产品可靠性、耐用性和可维修性；服务的效率、效果和服务人员的态度：产品风格与造型。从抽象的角度主要指与品牌形象相关的消费者联想。这些联想可以直接通过消费者自己的体验而形成，并通过广告信息或者口碑传播获得的信息相联系。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 3.在消费者与品牌关系方面，关键是创建消费者的品牌共鸣&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 品牌共鸣又可分解为四个维度。行为忠诚度指的是重复购买的频率与数量。态度属性指消费者认为该品牌非常特殊、具有唯一性,热衷于喜爱该品牌而不会转换成其他同类品牌的产品。归属感指消费者之间通过该品牌而产生联系、形成一定的亚文化群体。主动介入指的是消费者除了购买该品牌以外,还积极主动地关心与该品牌相关的信息,访问品牌网站并积极参与相关活动。只有考虑到这四方面，才能有效地实现消费者品牌共鸣。&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 只有很好的管理品牌，才能做好我们的&lt;/span&gt;&lt;strong style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;品牌推广&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;。&lt;/span&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n	&lt;/div&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '0', '31', '100', '1437959827', '1437959827', '1', '从消费者品牌认知到品牌情感', '', ' 在 品牌推广 中，品牌管理是指真多企业的一些产品和服务的品牌，也就是综合的去利用企业的一些资源，通过我们的计划、组织、实施、控制来实现企业品牌战略目标的经营管理的一个过程。而品牌的核心内容主要有品牌', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('47', '8', '6步教你打造新媒体营销全攻略', '', '', '', '', ' 我们都知道在我们已经创建了对应的社交媒体账号之后，应该首先想到的就是优化你的主页，从而可以获得更多的访客和内容的拓展。 随后经过一段时间持续的活跃，试试去了解一下竞争对手的相关动向。上海营销策划推荐', '&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;我们都知道在我们已经创建了对应的社交媒体账号之后，应该首先想到的就是优化你的主页，从而可以获得更多的访客和内容的拓展。&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;　　随后经过一段时间持续的活跃，试试去了解一下竞争对手的相关动向。上海营销策划推荐针对性的把竞争对手流逝的客户群吸引过来，这是一个不错的办法。&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;　　看看我们的目标客户是怎么创作内容的， 尽量的去模仿客户的习惯，这样你会很好的融入他们。一般情况下我们行业当中的一些领导着是不错的参考对象，多多做研究是没有错的。&lt;/span&gt;\r\n&lt;/div&gt;', '0', '31', '100', '1437959891', '1437959891', '1', '6步教你打造新媒体营销全攻略', '', ' 我们都知道在我们已经创建了对应的社交媒体账号之后，应该首先想到的就是优化你的主页，从而可以获得更多的访客和内容的拓展。 随后经过一段时间持续的活跃，试试去了解一下竞争对手的相关动向。上海营销策划推荐', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('48', '8', '营销策划公司的神营销让“大圣”顺利归来', '', '', '', '', ' 随着国内电影市场竞争不断激烈的情况下，4分靠电影、6分靠宣传的情况已经成为了行业标配。很多的优质电影随着宣传推广 营销策划公司 的不给力而但除了人们的视线。《西游记之大圣归来》对比《小时代4》和《栀', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#000000;font-family:\'Microsoft YaHei\';line-height:21px;white-space:normal;&quot;&gt;随着国内电影市场竞争不断激烈的情况下，4分靠电影、6分靠宣传的情况已经成为了行业标配。很多的优质电影随着宣传推广&lt;/span&gt;&lt;strong style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;营销策划公司&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;color:#000000;font-family:\'Microsoft YaHei\';line-height:21px;white-space:normal;&quot;&gt;的不给力而但除了人们的视线。《西游记之大圣归来》对比《小时代4》和《栀子花开》来说，显然在这方面是非常不到位的。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#666666;font-family:\'Microsoft Yahei\', Arial, sans-serif;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;但是随着最近一段时间“朋友圈”刷屏的火热，营销策划公司的神营销让“大圣”顺利归来。对国产动画片不看好的各种消费者又开始重新以好奇心审视这部电影，那么它是如何通过社交媒体达到和其他大手笔对手竞争的呢？&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;　　我们首先来看一下好莱坞的一些超级大片，像《钢铁侠3》这样的大片其中宣传费用只是占到整体成本的一半左右。而《大圣归来》据出品方的透露整体成本也只是在6000万左右，因此在宣传上面并没有很多的预算。因此导致在黄金时段的排档期竞争激烈，自身无法上位，最终在人们的视线当中下映。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;　　而对于这种情况，《大圣归来》开始进行点状放映，通过一部分的人的传播来推进电影在社交媒体上的传播，这就像一种化学作用一样，因为让普通观众去主动推荐一部影片其实是非常困难的。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;　　面对“大V”在微传播过程中的百万千万粉丝，仅仅一次转发就不亚于各种的传统媒体的威力。而在社交媒体中的每一位参与者其实都是信息的再次传递者。相比传统的推广渠道，不仅仅成本降低而且效果并不差。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;　　最终“抓住受众心理”才是《大圣归来》的&lt;/span&gt;&lt;a href=&quot;http://www.thinkwolf.com.cn/&quot; style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;text-decoration:none;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;营销策划公司&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;在宣传过程中的首要法宝。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n&lt;span style=&quot;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '0', '36', '100', '1437959961', '1437959961', '1', '营销策划公司的神营销让“大圣”顺利归来', '', ' 随着国内电影市场竞争不断激烈的情况下，4分靠电影、6分靠宣传的情况已经成为了行业标配。很多的优质电影随着宣传推广 营销策划公司 的不给力而但除了人们的视线。《西游记之大圣归来》对比《小时代4》和《栀', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('49', '8', '营销策划机构教你：如何在7天内让客户找上门', '', '', '', '', ' 7天内让客户找上门， 营销策划机构 是怎么做到的？答案是，为该餐饮设计企业的客户制定“三步走”策略： 第一步，让企业信息被客户看到。如果客户都不知道你的存在，如何找上门？ 第二步，让客户对企业有所了', '&lt;div class=&quot;content&quot; style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;7天内让客户找上门，&lt;/span&gt;&lt;a href=&quot;http://www.thinkwolf.com.cn/&quot; style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;text-decoration:none;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;营销策划机构&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;是怎么做到的？答案是，为该餐饮设计企业的客户制定“三步走”策略：&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;　　第一步，让企业信息被客户看到。如果客户都不知道你的存在，如何找上门？&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;　　第二步，让客户对企业有所了解。提供的信息需要具有功效。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;　　第三步，让客户产生信任。没有信任，怎么会自己上门来找你？&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;　　经过短短10余年的发展，电子商务早已与“兴奋剂”划上了等号。但作为新兴事物，不知该从何下手，也成了许多企业的痛点。面对未知的事物，营销策划机构的诀窍是，剖开现象看本质--电子商务，一场将“出门找客户”，转变为“客户找上门”的商业变革。抓住这一点，电子商务的方向才会明晰。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;\r\n		&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;　　很多企业的疑问是：年销售额低于2亿的中小企业能否获得发展良机？&lt;/span&gt;&lt;u style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;营销策划机构&lt;/span&gt;&lt;/u&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;的答案是：电子商务，一个全新的竞技场地，既然是新战场，当然需要新技能，有新技能的中小企业当然能打败没有新技能的传统大企业，后来居上是每一场变革的必然结果。&lt;/span&gt;\r\n	&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;br /&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', '0', '40', '100', '1437960105', '1437960105', '1', '营销策划机构教你：如何在7天内让客户找上门', '', ' 7天内让客户找上门， 营销策划机构 是怎么做到的？答案是，为该餐饮设计企业的客户制定“三步走”策略： 第一步，让企业信息被客户看到。如果客户都不知道你的存在，如何找上门？ 第二步，让客户对企业有所了', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('50', '8', '移动互联网品牌推广怎么玩才劲爆', '', '', '', '', ' 很多朋友在一起都会讨论这样一个问题，怎样才能够更好的婉转移动互联网 品牌推 广 ，其实品牌推广在企业营销环节中还是很被看重的，不过很多企业却不知道怎样去真正的应用这样的品牌推广。 一个传统企业做的已', '&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:16px;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;很多朋友在一起都会讨论这样一个问题，怎样才能够更好的婉转移动互联网&lt;/span&gt;&lt;strong style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;a href=&quot;http://www.thinkwolf.com.cn/anli/102.html?1436433316&quot; style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;text-decoration:none;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;品牌推&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;广&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;，其实品牌推广在企业营销环节中还是很被看重的，不过很多企业却不知道怎样去真正的应用这样的品牌推广。&lt;/span&gt;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:14px;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 一个传统企业做的已经很好，但是如果当他们的CEO希望紧跟时代的不乏，要在网上进行品牌推广的时候，整个企业的营销格局将会被打乱，带给企业的不是收益，而是伤痕。&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:14px;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 所以我认为企业要想玩转移动互联网品牌推广，首先必须要认清本质，再从内容和技术等方面逐步入手，千万不能盲目的跟从。这个时候理性是最重要的。&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:14px;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 在解读“互联网女皇”的KPCB合伙人玛丽·米克(MaryMeeker)的报告时，也可以洞察到移动互联网品牌推广已经走在了最前端，但是它的广告投放和收益却不成正比，那么在这移动互联网时代，企业又将如何玩转移动互联网品牌推广呢？&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:16px;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 移动互联网&lt;/span&gt;&lt;strong style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;品牌推广&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;与PC时代的互联网营销是有所差别的，人们获取信息和参与信息互动变得越加简单、便捷，在这样基础下，我认为做好移动互联网品牌推广有两点一定需要注意，第一，移动互联网品牌推广不是一个孤立的页面，所做的移动互联网品牌推广一定要和整体的营销进行配合和协同作战；第二，移动互联网品牌推广一定是创意和技术及消费者行为同场景的融合。&lt;/span&gt;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:14px;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 移动互联网时代，用户在各自的移动端中，都会认为看到的是一个个性化界面，这个个性化界面让用户把手机看做一个私域，所谓私域就是个人专属领域。在这个个人领域，品牌推广要想发挥影响一定要注重所处环境，所以我认为移动品牌推广首先要考虑的是关系、互动、情绪，然后才是技术。&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:14px;font-family:\'Microsoft YaHei\';color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 总体来讲，移动互联为我们带来了一个新的界面，我们需要了解和认识这个界面，其次，我们需要重新思考我们在这个界面上的商业模式，同时，也需要理性的看待互联网+的浪潮，要把握它的一些核心的商业逻辑。&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;font-family:\'Microsoft Yahei\', Arial, sans-serif;border:0px none;margin:0px;padding:0px;vertical-align:baseline;color:#666666;font-size:14px;line-height:21px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;font-size:16px;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; 最后，在移动互联网品牌推广的市场中，我们不能孤立地看待移动互联网&lt;/span&gt;&lt;strong style=&quot;border:0px none;margin:0px;padding:0px;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;品牌推广&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;color:#000000;&quot;&gt;，品牌推广其实和PC上面有一个很大的区别，我们要考虑如何使创意和技术有更好的一个融合。&lt;/span&gt;&lt;/span&gt;\r\n&lt;/div&gt;', '0', '1970', '100', '1437960188', '1437960188', '1', '移动互联网品牌推广怎么玩才劲爆', '', ' 很多朋友在一起都会讨论这样一个问题，怎样才能够更好的婉转移动互联网 品牌推 广 ，其实品牌推广在企业营销环节中还是很被看重的，不过很多企业却不知道怎样去真正的应用这样的品牌推广。 一个传统企业做的已', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('61', '1', '团队风采', '', '', '', '', '编辑中。。。', '编辑中。。。', '0', '0', '105', '1438310385', '1438310385', '1', '团队风采', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('72', '12', '格仕陶磁砖•香江旗舰店4.18开业', '', '', '', '1507/55bb2c6a4db7c.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/31/55bb2c6548cf1.jpg&quot; alt=&quot;&quot; /&gt;', '0', '25', '100', '1438329962', '1438329962', '1', '格仕陶磁砖•香江旗舰店4.18开业', '', ' ', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `jrkj_article_attr`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_attr`;
CREATE TABLE `jrkj_article_attr` (
  `article_id` int(10) unsigned NOT NULL,
  `attr_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_attr
-- ----------------------------
INSERT INTO `jrkj_article_attr` VALUES ('1', '2');
INSERT INTO `jrkj_article_attr` VALUES ('9', '1');
INSERT INTO `jrkj_article_attr` VALUES ('12', '1');
INSERT INTO `jrkj_article_attr` VALUES ('1', '1');
INSERT INTO `jrkj_article_attr` VALUES ('14', '1');
INSERT INTO `jrkj_article_attr` VALUES ('25', '2');
INSERT INTO `jrkj_article_attr` VALUES ('29', '2');
INSERT INTO `jrkj_article_attr` VALUES ('77', '2');
INSERT INTO `jrkj_article_attr` VALUES ('10', '2');

-- ----------------------------
-- Table structure for `jrkj_article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_cate`;
CREATE TABLE `jrkj_article_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `index_templet` varchar(60) NOT NULL DEFAULT '',
  `category_templet` varchar(60) NOT NULL DEFAULT '',
  `detail_templet` varchar(60) NOT NULL DEFAULT '',
  `is_home` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_cate
-- ----------------------------
INSERT INTO `jrkj_article_cate` VALUES ('1', '1', '公司简介', 'About', '55b9925293ea9.jpg', '0', '0', '255', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=about&amp;id=1');
INSERT INTO `jrkj_article_cate` VALUES ('2', '0', '设备租赁', 'Lease', '55b333bdf26b9.jpg', '0', '0', '255', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=product&amp;id=2');
INSERT INTO `jrkj_article_cate` VALUES ('3', '0', '服务范围', 'Service', '55b333ce16a09.jpg', '0', '0', '255', '1', '', '', '', '', '', '', '1', '');
INSERT INTO `jrkj_article_cate` VALUES ('4', '0', '新闻中心', 'News', '55b333d57e40a.jpg', '0', '0', '255', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=news&amp;id=4');
INSERT INTO `jrkj_article_cate` VALUES ('5', '0', '成功案例', 'Case', '55b333dd530a1.jpg', '0', '0', '255', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=product&amp;id=5&amp;cate_id=12');
INSERT INTO `jrkj_article_cate` VALUES ('6', '1', '联系我们', 'Contact', '55b333e6ab140.jpg', '0', '0', '255', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=about&amp;id=6');
INSERT INTO `jrkj_article_cate` VALUES ('7', '0', '公司新闻', '', '', '4', '4|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('8', '0', '行业动态', '', '', '4', '4|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('9', '0', '游戏玩偶', '', '', '2', '2|', '255', '0', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('10', '0', '庆典设备', '', '', '2', '2|', '255', '0', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('11', '0', '节目表演', '', '', '2', '2|', '255', '0', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('12', '0', '成功案例', '', '', '5', '5|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('13', '0', '合作伙伴', '', '', '5', '5|', '255', '1', '', '', '', '', '', '', '0', '?m=Home&amp;c=news&amp;a=procon&amp;id=5&amp;art_id=42');

-- ----------------------------
-- Table structure for `jrkj_article_ext`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_ext`;
CREATE TABLE `jrkj_article_ext` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `article_id` int(10) NOT NULL,
  `ext_name` varchar(50) NOT NULL,
  `ext_value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_ext
-- ----------------------------
INSERT INTO `jrkj_article_ext` VALUES ('5', '1', '毕业学校', '华东交大');
INSERT INTO `jrkj_article_ext` VALUES ('6', '1', 's', 't');

-- ----------------------------
-- Table structure for `jrkj_article_img`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_img`;
CREATE TABLE `jrkj_article_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_img
-- ----------------------------
INSERT INTO `jrkj_article_img` VALUES ('9', '1', '1504/5539eff290f56.jpg', '0', '255', '1');
INSERT INTO `jrkj_article_img` VALUES ('10', '1', '1504/5539eff2a7d8c.jpg', '0', '255', '1');
INSERT INTO `jrkj_article_img` VALUES ('11', '2', '1504/5539f5657270e.jpg', '0', '255', '1');
INSERT INTO `jrkj_article_img` VALUES ('12', '2', '1504/5539f5657de29.jpg', '0', '255', '1');

-- ----------------------------
-- Table structure for `jrkj_article_page`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_page`;
CREATE TABLE `jrkj_article_page` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `page_cate` tinyint(4) NOT NULL DEFAULT '1',
  `title` varchar(120) NOT NULL DEFAULT '',
  `alias` varchar(120) DEFAULT '',
  `info` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `seo_title` varchar(150) NOT NULL DEFAULT '',
  `seo_keys` varchar(255) NOT NULL DEFAULT '',
  `seo_desc` text NOT NULL,
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_page
-- ----------------------------
INSERT INTO `jrkj_article_page` VALUES ('1', '1', '关于我们', 'about', '&lt;h4 style=&quot;margin:30px 0px 0px;padding:0px;font-size:25px;font-weight:normal;color:#333333;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	尊敬的家长及同学：\r\n&lt;/h4&gt;\r\n&lt;div class=&quot;par_set&quot; style=&quot;margin:0px;padding:22px 0px;color:#333333;font-family:微软雅黑;line-height:13.6800003051758px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;font-size:16px;line-height:24px;&quot;&gt;\r\n		您们好！感谢你们对普林斯顿国际教育机构（简称PEDUS）的垂询。在此，我谨代表全体同仁向你们选择或即将选择我们作为孩子的得力助手致以最衷心的谢意。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;par_set&quot; style=&quot;margin:0px;padding:22px 0px;color:#333333;font-family:微软雅黑;line-height:13.6800003051758px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;font-size:16px;line-height:24px;&quot;&gt;\r\n		普林斯顿始创于美国的“花园之州”——新泽西洲。此处花园紧蹙、人文荟萃，拥有世界排名第一的著名学府普林斯顿大学，氤氲于国际都市纽约和美国古都费城之间。新泽西州交通发达、名校林立、历史悠久，乃是美国精神之发祥所在。居住于悠悠名城，徜徉于莘莘学海，歆享着人文关爱，茁壮为天之骄子，不仅是父母对海外儿女的期待，也同样是我们为之奋斗的目标。&amp;nbsp;留学美国是众多家庭的梦想，愈来愈多的家长将孩子送往美国接受世界级的教育，赴美求学的孩子年龄也在呈现逐年下降的趋势。诚然，在美国接受世界超一流水准的高等教育是一方面，但我们认为，学生的安全、生活环境和人格的培养却更是重中之重。&amp;nbsp;\r\n	&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;par_set&quot; style=&quot;margin:0px;padding:22px 0px;color:#333333;font-family:微软雅黑;line-height:13.6800003051758px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;font-size:16px;line-height:24px;&quot;&gt;\r\n		普林斯顿国际教育，始终坚持以“真诚、关爱、负责”为服务理念，用心感悟每一位家长，将赴美留学及国内外游学的孩子人身安全放在首位，注重平衡学生的生活与学习，培养塑造孩子的性格，使学生真正成为独立自主、德智具优的天之骄子。在安全方面，我们为学生选择最安全的出行、优雅的学习和生活环境，精挑细选住宿和学校，协助办理最优保险方案，安排专人执行学生照看和家庭监督任务，确保学生的身心安全与健康。在学习方面，我们根据学生基础量身定做学习方案，因材施教，课内教学和课外辅导并举，发挥学生优势，补益学生弱点。&amp;nbsp;在生活方面，我们精心安排和策划各种丰富多彩的社会活动、体育锻炼，让学生在掌握课本知识之外，了解和体验社会，历练身心，真正掌握生活的多项技能，培养和塑造学生的性格。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;par_set&quot; style=&quot;margin:0px;padding:22px 0px;color:#333333;font-family:微软雅黑;line-height:13.6800003051758px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;font-size:16px;line-height:24px;&quot;&gt;\r\n		&amp;nbsp;&amp;nbsp;南昌普林斯顿国际教育引进国际师资，教师全部为母语白人外教，在一线城市有多年的从教经验；采用香港朗文国际教材，因材施教。在这里，一起与外教嗨英语，让孩子的英语水平快速提高。\r\n	&lt;/p&gt;\r\n&lt;br /&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;font-size:16px;line-height:24px;&quot;&gt;\r\n		我们团队的所有成员，将以最真诚的心，像家长一样时刻关爱呵护着每一个孩子的成长，承担起培养未来人才的重任，让每位天之骄子都能茁壮成长就是我们最大且最真挚的愿望！\r\n	&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;br /&gt;', '0', '', '', '关于我们', '1431592547');
INSERT INTO `jrkj_article_page` VALUES ('2', '1', '公司资质', 'qualifications', '&lt;ul class=&quot;gallery&quot; style=&quot;border:0px;padding:20px 2px 2px;margin:0px;list-style:none;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;line-height:normal;white-space:normal;background:#FFFFFF;&quot;&gt;\r\n	资料正在添加中……\r\n&lt;/ul&gt;', '0', '', '', '', '1429666083');
INSERT INTO `jrkj_article_page` VALUES ('3', '1', '服务协议', 'serviceAgree', '&lt;span style=&quot;color:#666666;&quot;&gt;资料正在添加中……&lt;/span&gt;', '0', '', '', '', '1429666247');
INSERT INTO `jrkj_article_page` VALUES ('4', '1', '联系我们', 'contact', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:1.5;&quot;&gt;资料添加中……&lt;/span&gt;\r\n&lt;/p&gt;', '0', '', '', '', '1429666548');
INSERT INTO `jrkj_article_page` VALUES ('5', '1', '我要报名', 'assetline', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:1.5;&quot;&gt; &lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;step_title&quot; style=&quot;border:0px;padding:0px;margin-top:20px;margin-bottom:10px;font-size:16px;width:700px;line-height:22px;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	博玄财富网是一个中立的交易平台，您的资金被存放在第三方支付平台宝付，资金安全无虞。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;step_title&quot; style=&quot;border:0px;padding:0px;margin-top:20px;margin-bottom:10px;font-size:16px;width:700px;line-height:22px;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	1、登录账号，点击导航栏上的&quot;我的账户&quot;，点击&quot;充值&quot;按钮，或者直接在左侧 &quot;资金管理&quot; 导航栏选择&quot;充值&quot;；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;step_title&quot; style=&quot;border:0px;padding:0px;margin-top:20px;margin-bottom:10px;font-size:16px;width:700px;line-height:22px;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;step_title&quot; style=&quot;border:0px;padding:0px;margin-top:20px;margin-bottom:10px;font-size:16px;width:700px;line-height:22px;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;font-size:16px;line-height:22px;white-space:normal;background-color:#FFFFFF;&quot;&gt;2、输入充值金额，选择您的充值银行；&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;step_title&quot; style=&quot;border:0px;padding:0px;margin-top:20px;margin-bottom:10px;font-size:16px;width:700px;line-height:22px;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;step_title&quot; style=&quot;border:0px;padding:0px;margin-top:20px;margin-bottom:10px;font-size:16px;width:700px;line-height:22px;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;font-family:微软雅黑, tahoma, verdana, Arial;font-size:16px;line-height:22px;white-space:normal;background-color:#FFFFFF;&quot;&gt;3、点击&quot;确认充值&quot;，到相应的网上银行付款；&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', '0', '', '', '我要报名', '1429874762');

-- ----------------------------
-- Table structure for `jrkj_article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_tag`;
CREATE TABLE `jrkj_article_tag` (
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_article_tag
-- ----------------------------
INSERT INTO `jrkj_article_tag` VALUES ('78', '5');
INSERT INTO `jrkj_article_tag` VALUES ('78', '24');
INSERT INTO `jrkj_article_tag` VALUES ('78', '25');
INSERT INTO `jrkj_article_tag` VALUES ('78', '26');
INSERT INTO `jrkj_article_tag` VALUES ('77', '24');
INSERT INTO `jrkj_article_tag` VALUES ('77', '30');
INSERT INTO `jrkj_article_tag` VALUES ('77', '5');
INSERT INTO `jrkj_article_tag` VALUES ('77', '31');
INSERT INTO `jrkj_article_tag` VALUES ('59', '33');
INSERT INTO `jrkj_article_tag` VALUES ('60', '34');
INSERT INTO `jrkj_article_tag` VALUES ('6', '35');

-- ----------------------------
-- Table structure for `jrkj_attr`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_attr`;
CREATE TABLE `jrkj_attr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_attr
-- ----------------------------
INSERT INTO `jrkj_attr` VALUES ('1', '头条');
INSERT INTO `jrkj_attr` VALUES ('2', '推荐');
INSERT INTO `jrkj_attr` VALUES ('3', '热门');

-- ----------------------------
-- Table structure for `jrkj_badword`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_badword`;
CREATE TABLE `jrkj_badword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_badword
-- ----------------------------
INSERT INTO `jrkj_badword` VALUES ('1', '1', '法轮功', '', '1426914502');

-- ----------------------------
-- Table structure for `jrkj_flink`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_flink`;
CREATE TABLE `jrkj_flink` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `img` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `cate_id` smallint(5) NOT NULL,
  `ordid` tinyint(4) unsigned NOT NULL DEFAULT '100',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_flink
-- ----------------------------
INSERT INTO `jrkj_flink` VALUES ('1', '嘉瑞科技', '550ccd585b8d8.jpg', 'http://www.0791jr.com/', '1', '0', '1');
INSERT INTO `jrkj_flink` VALUES ('2', '百度', '', 'http://www.baidu.com', '1', '100', '1');
INSERT INTO `jrkj_flink` VALUES ('3', '江西蜜蜂网', '', 'http://www.mifengcn.com', '1', '99', '1');

-- ----------------------------
-- Table structure for `jrkj_flink_cate`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_flink_cate`;
CREATE TABLE `jrkj_flink_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_flink_cate
-- ----------------------------
INSERT INTO `jrkj_flink_cate` VALUES ('1', '友情链接', '255', '1');
INSERT INTO `jrkj_flink_cate` VALUES ('2', '合作伙伴2', '255', '1');

-- ----------------------------
-- Table structure for `jrkj_focus`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_focus`;
CREATE TABLE `jrkj_focus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` char(100) NOT NULL,
  `colors` varchar(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_focus
-- ----------------------------

-- ----------------------------
-- Table structure for `jrkj_item`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item`;
CREATE TABLE `jrkj_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `img` varchar(255) DEFAULT '',
  `price` decimal(10,2) DEFAULT NULL,
  `url` text,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:商品,2:图片',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `add_time` int(10) NOT NULL,
  `seo_title` varchar(255) DEFAULT '',
  `seo_keys` varchar(255) DEFAULT '',
  `seo_desc` text,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cid` (`cate_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item
-- ----------------------------
INSERT INTO `jrkj_item` VALUES ('1', '2', null, '【远步正品】 加厚松高鞋休闲棉帆布鞋 韩版厚底帆松糕鞋', '【远步正品】 加厚松高鞋休闲棉帆布鞋 韩版厚底帆松糕鞋', '1504/24/5539a6186acfc.jpg', '89.00', 'http://www.taobao.com', '1', '0', '0', '1429841432', '', '', '', '255', '1');

-- ----------------------------
-- Table structure for `jrkj_item_attr`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_attr`;
CREATE TABLE `jrkj_item_attr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `attr_name` varchar(50) NOT NULL,
  `attr_value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `jrkj_item_cate`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_cate`;
CREATE TABLE `jrkj_item_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fcolor` varchar(10) NOT NULL,
  `remark` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `status` tinyint(1) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_cate
-- ----------------------------
INSERT INTO `jrkj_item_cate` VALUES ('1', '行业气象', '', '0', '0', '550f6cab7de29_thumb.png', '', '', '0', '1427074695', '255', '1', '主推产品', '主打,特色,产品', '');
INSERT INTO `jrkj_item_cate` VALUES ('2', '气象监测', '', '0', '0', '', '', '', '1427075056', '1434941983', '100', '1', '', '', '');
INSERT INTO `jrkj_item_cate` VALUES ('3', '预报类产品', '', '0', '0', '', '', '', '1434942140', '1434942140', '100', '1', '', '', '');

-- ----------------------------
-- Table structure for `jrkj_item_comment`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_comment`;
CREATE TABLE `jrkj_item_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_comment
-- ----------------------------
INSERT INTO `jrkj_item_comment` VALUES ('1', '1', '1', 'stone', '赞,扛扛的~~~~', '1353896347', '0');

-- ----------------------------
-- Table structure for `jrkj_item_img`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_img`;
CREATE TABLE `jrkj_item_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_img
-- ----------------------------
INSERT INTO `jrkj_item_img` VALUES ('1', '1', '1504/24/5539a6186acfc.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('2', '1', '1504/24/5539a61889544.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('3', '1', '1504/24/5539a618a4083.jpg', '0', '255', '1');

-- ----------------------------
-- Table structure for `jrkj_item_tag`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_tag`;
CREATE TABLE `jrkj_item_tag` (
  `item_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `item_id` (`item_id`,`tag_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `jrkj_member`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_member`;
CREATE TABLE `jrkj_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `nickname` char(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `login` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `reg_ip` char(15) NOT NULL DEFAULT '' COMMENT '注册IP',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` char(15) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '会员状态',
  `member_type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of jrkj_member
-- ----------------------------
INSERT INTO `jrkj_member` VALUES ('1', '905974667@qq.com', 'c6f4b02c1aa65a08af09cb8423c53c07', 'stone', '1', '127.0.0.1', '1426302954', '127.0.0.1', '1426302954', '1', '2');
INSERT INTO `jrkj_member` VALUES ('2', 'liustone@qq.com', 'c6f4b02c1aa65a08af09cb8423c53c07', 'liustone', '0', '127.0.0.1', '1426318257', '127.0.0.1', '1426318257', '1', '0');

-- ----------------------------
-- Table structure for `jrkj_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_menu`;
CREATE TABLE `jrkj_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `controller_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `dialog` varchar(9) NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_menu
-- ----------------------------
INSERT INTO `jrkj_menu` VALUES ('1', '全局', '0', 'setting', 'index', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('2', '核心设置', '1', 'setting', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('3', '全局参数', '148', 'setting', 'index', '&type=site', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('4', '邮件设置', '148', 'setting', 'index', '&type=mail', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('172', '专题管理', '10', 'topic', 'index', '', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('6', '菜单管理', '2', 'menu', 'index', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('7', '新增', '6', 'menu', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('8', '编辑', '6', 'menu', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('9', '删除', '6', 'menu', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('10', '文章', '0', 'operate', 'index', '', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('11', '广告管理', '10', 'advert', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('12', '广告管理', '11', 'ad', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('13', '广告位管理', '11', 'adboard', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('14', '友情链接', '10', 'flink', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('15', '友情链接', '14', 'flink', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('16', '链接分类', '14', 'flink_cate', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('17', '新增', '15', 'flink', 'add', '', '', '0', '0', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('18', '编辑', '15', 'flink', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('19', '删除', '15', 'flink', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('20', '新增', '16', 'flink_cate', 'add', '', '', '0', '0', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('21', '编辑', '16', 'flink_cate', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('22', '删除', '16', 'flink_cate', 'del', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('23', '新增', '12', 'ad', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('24', '编辑', '12', 'ad', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('25', '删除', '12', 'ad', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('26', '新增', '13', 'adboard', 'add', '', '', '0', '0', '500|400', '1');
INSERT INTO `jrkj_menu` VALUES ('27', '编辑', '13', 'adboard', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('28', '删除', '13', 'adboard', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('29', '数据', '0', 'data', 'index', '', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('31', '数据库管理', '29', 'backup', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('32', '数据备份', '31', 'backup', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('33', '数据恢复', '31', 'backup', 'restore', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('34', '缓存管理', '254', 'cache', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('195', '登陆接口', '245', 'oauth', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('36', '黑名单管理', '117', 'ipban', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('37', '新增', '36', 'ipban', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('38', '编辑', '36', 'ipban', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('50', '商品', '0', 'content', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('51', '商品管理', '50', 'article', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('52', '商品管理', '51', 'item', 'index', '', '', '1', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('54', '编辑', '52', 'article', 'edit', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('190', '删除', '52', 'item', 'delete', '', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('56', '商品分类', '51', 'item_cate', 'index', '', '', '1', '6', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('57', '新增', '56', 'item_cate', 'add', '', '', '0', '0', '520|360', '1');
INSERT INTO `jrkj_menu` VALUES ('58', '编辑', '56', 'article_cate', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('59', '删除', '56', 'article_cate', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('60', '管理员管理', '1', 'admin', 'index', '', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('61', '管理员管理', '60', 'admin', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('62', '新增', '61', 'admin', 'add', '', '', '0', '0', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('63', '编辑', '61', 'admin', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('64', '删除', '61', 'admin', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('65', '角色管理', '60', 'admin_role', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('66', '新增', '65', 'admin_role', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('70', '用户', '0', 'user', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('119', '新增', '149', 'user', 'add', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('118', '编辑', '149', 'user', 'edit', '', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('117', '会员管理', '70', 'user', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('156', '栏目管理', '154', 'article_cate', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('151', '导航设置', '216', 'nav', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('149', '会员管理', '117', 'user', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('150', '删除', '149', 'user', 'delete', '', '', '0', '5', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('152', '主导航', '151', 'nav', 'index', '&type=main', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('153', '底部导航', '151', 'nav', 'index', '&type=bottom', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('154', '文章管理', '10', 'article', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('155', '文章管理', '154', 'article', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('148', '站点设置', '2', 'setting', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('157', '添加文章', '155', 'article', 'add', '', '', '0', '2', '', '1');
INSERT INTO `jrkj_menu` VALUES ('158', '编辑', '155', 'article', 'edit', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('159', '删除', '155', 'article', 'delete', '', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('160', '新增', '156', 'article_cate', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('161', '编辑', '156', 'article_cate', '编辑', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('162', '删除', '156', 'article_cate', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('174', '专题列表', '172', 'topic', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('175', '新增', '174', 'topic', 'add', '', '', '0', '0', '', '1');
INSERT INTO `jrkj_menu` VALUES ('176', '编辑', '174', 'topic', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('177', '删除', '174', 'topic', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('178', '敏感词管理', '254', 'badword', 'index', '', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('179', '新增', '178', 'badword', 'add', '', '', '0', '0', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('180', '编辑', '178', 'badword', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('181', '删除', '36', 'ipban', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('182', '删除', '178', 'badword', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('184', '标签管理', '254', 'tag', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('185', '商品接口', '245', 'item_site', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('186', '商品评论', '51', 'item_comment', 'index', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('187', '删除', '186', 'item_comment', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('250', '一键删除', '51', 'item', 'delete_search', '', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('198', '新增', '196', 'message', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('249', '添加商品', '51', 'item', 'add', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('269', '积分设置', '2', 'score', 'setting', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('212', '日志管理', '29', 'log', 'index', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('213', '管理员日志', '212', 'log', 'index', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('214', '用户日志', '212', 'log', 'user', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('215', '积分日志', '212', 'log', 'score', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('216', '界面设置', '1', 'setting', 'index', '&type=show', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('254', '系统数据', '29', 'tag', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('232', '站内信管理', '70', 'message', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('233', '系统通知', '232', 'message', 'index', '&type=1', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('235', '通知模版', '2', 'message_tpl', 'index', '&type=msg', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('236', '添加模版', '235', 'message_tpl', 'add', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('237', '编辑', '235', 'message_tpl', 'edit', '', '', '0', '255', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('238', '删除', '235', 'message_tpl', 'delete', '', '', '0', '255', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('240', '单页管理', '154', 'article_page', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('242', '积分记录', '269', 'score', 'logs', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('244', '应用', '0', 'plugin', 'index', '', '', '0', '6', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('245', '系统接口', '244', 'apis', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('246', '应用管理', '244', 'plugin', 'index', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('247', '应用中心', '246', 'plugin', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('248', '已安装应用', '246', 'plugin', 'list', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('252', '用户整合', '245', 'integrate', 'index', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('253', '图片模式', '52', 'item', 'index', '&amp;sm=image', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('267', '批量注册', '149', 'user', 'add_users', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('270', '邮件模板', '235', 'message_tpl', 'index', '&type=mail', '', '0', '6', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('271', '短消息模板', '235', 'message_tpl', 'index', '&type=msg', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('272', '附件设置', '148', 'setting', 'index', '&type=attachment', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('273', '显示设置', '216', 'setting', 'index', '&type=style', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('274', '模板管理', '216', 'template', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('275', '站点设置', '148', 'setting', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('276', '积分设置', '269', 'score', 'setting', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('277', '商品管理', '52', 'item', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('278', '文章管理', '155', 'article', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('279', '会员管理', '149', 'user', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('282', 'SEO设置', '2', 'seo', 'url', '', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('283', 'UR静态化', '282', 'seo', 'url', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('284', '页面SEO', '282', 'seo', 'page', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('285', '模块', '0', 'module', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('286', '注册登陆', '2', 'setting', 'user', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('288', '添加单页', '240', 'article_page', 'add', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('289', '文章属性', '154', 'attr', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('290', '编辑单页', '240', 'article_page', 'edit', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('291', '删除单页', '240', 'article_page', 'delete', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('292', '单页管理', '240', 'article_page', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('293', '文章属性', '289', 'attr', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('294', '添加', '289', 'attr', 'add', '', '', '0', '100', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('295', '编辑', '289', 'attr', 'edit', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('296', '删除', '289', 'attr', 'delete', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('297', '互动', '285', 'hudong', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('298', '报名管理', '297', 'apply', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('299', '留言管理', '297', 'message', 'index', '', '', '0', '100', '', '1');

-- ----------------------------
-- Table structure for `jrkj_message`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_message`;
CREATE TABLE `jrkj_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL,
  `add_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_message
-- ----------------------------
INSERT INTO `jrkj_message` VALUES ('1', '刘石头', '13767114126', '905974667', '1428044100', '127.0.0.1', '1', '我就试试留言板有没有用！');

-- ----------------------------
-- Table structure for `jrkj_setting`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_setting`;
CREATE TABLE `jrkj_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_setting
-- ----------------------------
INSERT INTO `jrkj_setting` VALUES ('site_name', '江西新视野营销策划有限公司', '');
INSERT INTO `jrkj_setting` VALUES ('site_title', '江西新视野营销策划有限公司', '');
INSERT INTO `jrkj_setting` VALUES ('site_keyword', '江西新视野营销策划有限公司', '');
INSERT INTO `jrkj_setting` VALUES ('site_description', '江西新视野营销策划有限公司', '');
INSERT INTO `jrkj_setting` VALUES ('site_status', '1', '');
INSERT INTO `jrkj_setting` VALUES ('closed_reason', '', '');
INSERT INTO `jrkj_setting` VALUES ('site_icp', '赣ICP备12345678 ', '');
INSERT INTO `jrkj_setting` VALUES ('statistics_code', '', '');
INSERT INTO `jrkj_setting` VALUES ('statics_url', 'theme/default/', '');
INSERT INTO `jrkj_setting` VALUES ('mail_server', '', '');
INSERT INTO `jrkj_setting` VALUES ('item_check', '0', '');
INSERT INTO `jrkj_setting` VALUES ('score_rule', 'a:16:{s:8:\"register\";s:2:\"20\";s:13:\"register_nums\";s:1:\"1\";s:5:\"login\";s:2:\"10\";s:10:\"login_nums\";s:1:\"5\";s:7:\"pubitem\";s:2:\"20\";s:12:\"pubitem_nums\";s:2:\"10\";s:8:\"likeitem\";s:1:\"1\";s:13:\"likeitem_nums\";s:2:\"20\";s:9:\"joinalbum\";s:1:\"2\";s:14:\"joinalbum_nums\";s:2:\"10\";s:6:\"fwitem\";s:1:\"2\";s:11:\"fwitem_nums\";s:2:\"10\";s:6:\"pubcmt\";s:1:\"1\";s:11:\"pubcmt_nums\";s:1:\"5\";s:7:\"delitem\";s:3:\"-20\";s:12:\"delitem_nums\";s:3:\"100\";}', '');
INSERT INTO `jrkj_setting` VALUES ('album_cover_items', '5', '专辑封面显示图片数量');
INSERT INTO `jrkj_setting` VALUES ('integrate_code', 'default', '');
INSERT INTO `jrkj_setting` VALUES ('integrate_config', '', '');
INSERT INTO `jrkj_setting` VALUES ('hot_tags', '家居,花园,美食,旅行,创意,建筑,户外,飘窗,卧室,城堡,DIY,萌宠,门厅,衣帽间,婚礼,书房,厨房,客厅,浴室,阳台,工作台,收纳,餐厅,阁楼,儿童房,小空间,性感', '');
INSERT INTO `jrkj_setting` VALUES ('wall_spage_max', '3', '');
INSERT INTO `jrkj_setting` VALUES ('wall_spage_size', '10', '');
INSERT INTO `jrkj_setting` VALUES ('book_page_max', '100', '');
INSERT INTO `jrkj_setting` VALUES ('default_keyword', '懒得逛了，我搜~', '');
INSERT INTO `jrkj_setting` VALUES ('album_default_title', '默认专辑', '');
INSERT INTO `jrkj_setting` VALUES ('avatar_size', '24,32,48,64,100,200', '');
INSERT INTO `jrkj_setting` VALUES ('attr_allow_exts', 'jpg,gif,png,jpeg,swf,doc,docx', '');
INSERT INTO `jrkj_setting` VALUES ('attr_allow_size', '2048', '');
INSERT INTO `jrkj_setting` VALUES ('itemcate_img', 'a:2:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"170\";}', '');
INSERT INTO `jrkj_setting` VALUES ('reg_protocol', '一、总则\r\n1．1　用户应当同意本协议的条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击&quot;立即注册&quot;按钮即表示用户与蜜蜂网公司达成协议，完全接受本协议项下的全部条款。\r\n1．2　用户注册成功后，蜜蜂网将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。\r\n1．3　用户可以使用蜜蜂网各个频道单项服务，当用户使用蜜蜂网各单项服务时，用户的使用行为视为其对该单项服务的服务条款以及蜜蜂网在该单项服务中发出的各类公告的同意。\r\n1．4　蜜蜂网会员服务协议以及各个频道单项服务条款和公告可由蜜蜂网公司随时更新，且无需另行通知。您在使用相关服务时,应关注并遵守其所适用的相关条款。\r\n您在使用蜜蜂网提供的各项服务之前，应仔细阅读本服务协议。如您不同意本服务协议及/或随时对其的修改，您可以主动取消蜜蜂网提供的服务；您一旦使用蜜蜂网产品，即视为您已了解并完全同意本服务协议各项内容，包括蜜蜂网对服务协议随时所做的任何修改，并成为蜜蜂网用户。\r\n二、注册信息和隐私保护\r\n2．1　 蜜蜂网帐号（即蜜蜂网用户ID）的所有权归蜜蜂网，用户完成注册申请手续后，获得蜜蜂网帐号的使用权。用户应提供及时、详尽及准确的个人资料，并不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。如果因注册信息不真实而引起的问题，并对问题发生所带来的后果，蜜蜂网概不负任何责任。\r\n2．2　用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知蜜蜂网。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，蜜蜂网不承担任何责任。\r\n2．3　蜜蜂网不对外公开或向第三方提供单个用户的注册资料，除非：\r\n（1）事先获得用户的明确授权；\r\n（2）只有透露你的个人资料，才能提供你所要求的产品和服务；\r\n（3）根据有关的法律法规要求；\r\n（4）按照相关政府主管部门的要求；\r\n（5）为维护蜜蜂网的合法权益。\r\n2．4　在你注册蜜蜂网帐户，使用其他蜜蜂网产品或服务，访问蜜蜂网网页, 或参加促销和有奖游戏时，蜜蜂网会收集你的个人身份识别资料，并会将这些资料用于：改进为你提供的服务及网页内容。\r\n三、使用规则\r\n3．1　用户在使用蜜蜂网服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶\r\n（1）上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：\r\n1） 反对宪法所确定的基本原则的； 2） 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的； 3） 损害国家荣誉和利益的； 4） 煽动民族仇恨、民族歧视、破坏民族团结的； 5） 破坏国家宗教政策，宣扬邪教和封建迷信的； 6） 散布谣言，扰乱社会秩序，破坏社会稳定的； 7） 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的； 8） 侮辱或者诽谤他人，侵害他人合法权利的； 9） 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容； 10） 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；\r\n（2）不得为任何非法目的而使用网络服务系统；\r\n（3）不利用蜜蜂网服务从事以下活动：\r\n1) 未经允许，进入计算机信息网络或者使用计算机信息网络资源的；\r\n2) 未经允许，对计算机信息网络功能进行删除、修改或者增加的；\r\n3) 未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；\r\n4) 故意制作、传播计算机病毒等破坏性程序的；\r\n5) 其他危害计算机信息网络安全的行为。\r\n3．2　 用户违反本协议或相关的服务条款的规定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，您同意赔偿蜜蜂网与合作公司、关联公司，并使之免受损害。对此，蜜蜂网有权视用户的行为性质，采取包括但不限于删除用户发布信息内容、暂停使用许可、终止服务、限制使用、回收蜜蜂网帐号、追 究法律责任等措施。对恶意注册蜜蜂网帐号或利用蜜蜂网帐号进行违法活动、捣乱、骚扰、欺骗、其他用户以及其他违反本协议的行为，蜜蜂网有权回收其帐号。同 时，蜜蜂网公司会视司法部门的要求，协助调查。\r\n3．3　用户不得对本服务任何部分或本服务之使用或获得，进行复制、拷贝、出售、转售或用于任何其它商业目的。\r\n3．4　用户须对自己在使用蜜蜂网服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：对受到侵害者进行赔偿，以及在蜜蜂网公司首先承担了因用户行为导致的行政处罚或侵权损害赔偿责任后，用户应给予蜜蜂网公司等额的赔偿。\r\n四、服务内容\r\n4．1　蜜蜂网网络服务的具体内容由蜜蜂网根据实际情况提供。\r\n4．2　除非本服务协议另有其它明示规定，蜜蜂网所推出的新产品、新功能、新服务，均受到本服务协议之规范。\r\n4．3　为使用本服务，您必须能够自行经有法律资格对您提供互联网接入服务的第三方，进入国际互联网，并应自行支付相关服务费用。此外，您必须自行配备及负责与国际联网连线所需之一切必要装备，包括计算机、数据机或其它存取装置。\r\n4．4　鉴于网络服务的特殊性，用户同意蜜蜂网有权不经事先通知，随时变更、中断或终止部分或全部的网络服务（包括收费网络服务）。蜜蜂网不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。\r\n4．5　蜜蜂网需要定期或不定期地对提供网络服务的平台或相关的设备进行检修或者维护，如因此类情况而造成网络服务（包括收费网络服务）在合理时间内的中断，蜜蜂网无需为此承担任何责任。蜜蜂网保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。\r\n4．6　 本服务或第三人可提供与其它国际互联网上之网站或资源之链接。由于蜜蜂网无法控制这些网站及资源，您了解并同意，此类网站或资源是否可供利用，蜜蜂网不予负责，存在或源于此类网站或资源之任何内容、广告、产品或其它资料，蜜蜂网亦不予保证或负责。因使用或依赖任何此类网站或资源发布的或经由此类网站或资 源获得的任何内容、商品或服务所产生的任何损害或损失，蜜蜂网不承担任何责任。\r\n4．7　用户明确同意其使用蜜蜂网网络服务所存在的风险将完全由其 自己承担。用户	理解并接受下载或通过蜜蜂网服务取得的任何信息资料取决于用户自己，并由其承担系统受损、资料丢失以及其它任何风险。蜜蜂网对在服务网上得 到的任何商品购物服	务、交易进程、招聘信息，都不作担保。\r\n4．8　3个月未登录的帐号，蜜蜂网保留关闭的权利。\r\n4．9　蜜蜂网有权于任何时间暂时或永久修改或终止本服务（或其任何部分），而无论其通知与否，蜜蜂网对用户和任何第三人均无需承担任何责任。\r\n4．10　终止服务\r\n您同意蜜蜂网得基于其自行之考虑，因任何理由，包含但不限于长时间未使用，或蜜蜂网认为您已经违反本服务协议的文字及精神，终止您的密码、帐号或本服务之使 用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本服务协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并 同意，蜜蜂网可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您 的帐号及相关信息和文件被关闭或删除，蜜蜂网对您或任何第三人均不承担任何责任。\r\n五、知识产权和其他合法权益（包括但不限于名誉权、商誉权）\r\n5．1　用户专属权利\r\n蜜蜂网尊重他人知识产权和合法权益，呼吁用户也要同样尊重知识产权和他人合法权益。若您认为您的知识产权或其他合法权益被侵犯，请按照以下说明向蜜蜂网提供资料∶\r\n请注意：如果权利通知的陈述失实，权利通知提交者将承担对由此造成的全部法律责任（包括但不限于赔偿各种费用及律师费）。如果上述个人或单位不确定网络上可获取的资料是否侵犯了其知识产权和其他合法权益，蜜蜂网建议该个人或单位首先咨询专业人士。\r\n为了蜜蜂网有效处理上述个人或单位的权利通知，请使用以下格式（包括各条款的序号）：\r\n1. 权利人对涉嫌侵权内容拥有知识产权或其他合法权益和/或依法可以行使知识产权或其他合法权益的权属证明；\r\n2. 请充分、明确地描述被侵犯了知识产权或其他合法权益的情况并请提供涉嫌侵权的第三方网址（如果有）。\r\n3. 请指明涉嫌侵权网页的哪些内容侵犯了第2项中列明的权利。\r\n4. 请提供权利人具体的联络信息，包括姓名、身份证或护照复印件（对自然人）、单位登记证明复印件（对单位）、通信地址、电话号码、传真和电子邮件。\r\n5. 请提供涉嫌侵权内容在信息网络上的位置（如指明您举报的含有侵权内容的出处，即：指网页地址或网页内的位置）以便我们与您举报的含有侵权内容的网页的所有权人/管理人联系。\r\n5．1　 对于用户通过蜜蜂网服务上传到蜜蜂网网站上可公开获取区域的任何内容，用户同意蜜蜂网在全世界范围内具有免费的、永久性的、不可撤销的、非独家的和完全再许可的权利和许可，以使用、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示此等内容（整体或部分），和/或将此等内容编入当前已知 的或以后开发的其他任何形式的作品、媒体或技术中。\r\n5．2　蜜蜂网拥有本网站内所有资料的版权。任何被授权的浏览、复制、打印和传播属于本网站内的资料必须符合以下条件：所有的资料和图象均以获得信息为目的；\r\n所有的资料和图象均不得用于商业目的；\r\n所有的资料、图象及其任何部分都必须包括此版权声明；\r\n本网站（www.mifengcn.com）所有的产品、技术与所有程序均属于蜜蜂网知识产权，在此并未授权。\r\n“www.mifengcn.com”, “蜜蜂网”及相关图形等为蜜蜂网的注册商标。\r\n未经蜜蜂网许可，任何人不得擅自（包括但不限于：以非法的方式复制、传播、展示、镜像、上载、下载）使用。否则，蜜蜂网将依法追究法律责任。\r\n六、青少年用户特别提示\r\n青少年用户必须遵守全国青少年网络文明公约：\r\n要善于网上学习，不浏览不良信息；要诚实友好交流，不侮辱欺诈他人；要增强自护意识，不随意约会网友；要维护网络安全，不破坏网络秩序；要有益身心健康，不沉溺虚拟时空。\r\n七、其他\r\n7．1　本协议的订立、执行和解释及争议的解决均应适用中华人民共和国法律。\r\n7．2　如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向蜜蜂网所在地的人民法院提起诉讼。\r\n7．3　蜜蜂网未行使或执行本服务协议任何权利或规定，不构成对前述权利或权利之放弃。\r\n7．4　如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。\r\n蜜蜂网对本使用协议享有最终解释权。', '');
INSERT INTO `jrkj_setting` VALUES ('item_cover_comments', '2', '');
INSERT INTO `jrkj_setting` VALUES ('user_intro_default', '这个家伙太懒，什么都木留下~', '');
INSERT INTO `jrkj_setting` VALUES ('ipban_switch', '1', '');
INSERT INTO `jrkj_setting` VALUES ('score_item_img', 'a:4:{s:6:\"swidth\";s:3:\"210\";s:7:\"sheight\";s:3:\"210\";s:6:\"bwidth\";s:3:\"350\";s:7:\"bheight\";s:3:\"350\";}', '');
INSERT INTO `jrkj_setting` VALUES ('seo_config', 'a:6:{s:4:\"book\";a:3:{s:5:\"title\";s:23:\"{tag_name}-{site_title}\";s:8:\"keywords\";s:23:\"逛宝贝，{site_name}\";s:11:\"description\";s:18:\"{site_description}\";}s:4:\"cate\";a:3:{s:5:\"title\";s:23:\"{cate_name}-{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:5:\"album\";a:3:{s:5:\"title\";s:6:\"专辑\";s:8:\"keywords\";s:47:\"{site_name},购物分享,淘宝网购物,专辑\";s:11:\"description\";s:18:\"{site_description}\";}s:10:\"album_cate\";a:3:{s:5:\"title\";s:11:\"{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:12:\"album_detail\";a:3:{s:5:\"title\";s:13:\"{album_title}\";s:8:\"keywords\";s:13:\"{album_intro}\";s:11:\"description\";s:23:\"杂志详细Description\";}s:4:\"item\";a:3:{s:5:\"title\";s:12:\"{item_title}\";s:8:\"keywords\";s:10:\"{item_tag}\";s:11:\"description\";s:12:\"{item_intro}\";}}', '');
INSERT INTO `jrkj_setting` VALUES ('item_img', 'a:2:{s:5:\"width\";s:3:\"210\";s:6:\"height\";s:4:\"1000\";}', '');
INSERT INTO `jrkj_setting` VALUES ('item_simg', 'a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}', '');
INSERT INTO `jrkj_setting` VALUES ('item_bimg', 'a:2:{s:5:\"width\";s:3:\"468\";s:6:\"height\";s:4:\"1000\";}', '');
INSERT INTO `jrkj_setting` VALUES ('attach_path', 'data/attachment/', '');
INSERT INTO `jrkj_setting` VALUES ('wall_distance', '500', '');
INSERT INTO `jrkj_setting` VALUES ('reg_status', '1', '');
INSERT INTO `jrkj_setting` VALUES ('reg_closed_reason', '&lt;h1&gt;暂时关闭注册&lt;/h1&gt;', '');
INSERT INTO `jrkj_setting` VALUES ('index_wall', '1', '');
INSERT INTO `jrkj_setting` VALUES ('article_cate_img', 'a:2:{s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";}', '');
INSERT INTO `jrkj_setting` VALUES ('article_img', 'a:2:{s:5:\"width\";s:3:\"480\";s:6:\"height\";s:3:\"215\";}', '');
INSERT INTO `jrkj_setting` VALUES ('email', '2968671766 @qq.com', '');
INSERT INTO `jrkj_setting` VALUES ('address', '南昌市南京东路666号庐山花园庐郡楼804室', '');
INSERT INTO `jrkj_setting` VALUES ('tel', '0791-87891185', '');
INSERT INTO `jrkj_setting` VALUES ('qq', '', '');
INSERT INTO `jrkj_setting` VALUES ('site_url', '', '');
INSERT INTO `jrkj_setting` VALUES ('mobile', '13576270043', '');
INSERT INTO `jrkj_setting` VALUES ('tel1', '', '');
INSERT INTO `jrkj_setting` VALUES ('fax', '', '');

-- ----------------------------
-- Table structure for `jrkj_tag`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_tag`;
CREATE TABLE `jrkj_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_tag
-- ----------------------------
INSERT INTO `jrkj_tag` VALUES ('1', '美国');
INSERT INTO `jrkj_tag` VALUES ('2', '留学');
INSERT INTO `jrkj_tag` VALUES ('3', '绿卡');
INSERT INTO `jrkj_tag` VALUES ('4', '南昌留学');
INSERT INTO `jrkj_tag` VALUES ('5', '美国留学');
INSERT INTO `jrkj_tag` VALUES ('6', '留学交流');
INSERT INTO `jrkj_tag` VALUES ('19', '湖南');
INSERT INTO `jrkj_tag` VALUES ('20', '长沙');
INSERT INTO `jrkj_tag` VALUES ('8', '教育部 教材 高校');
INSERT INTO `jrkj_tag` VALUES ('9', '帆布鞋');
INSERT INTO `jrkj_tag` VALUES ('10', '松糕鞋');
INSERT INTO `jrkj_tag` VALUES ('11', '加厚');
INSERT INTO `jrkj_tag` VALUES ('12', '正品');
INSERT INTO `jrkj_tag` VALUES ('13', '休闲');
INSERT INTO `jrkj_tag` VALUES ('14', '高鞋');
INSERT INTO `jrkj_tag` VALUES ('15', '韩版厚');
INSERT INTO `jrkj_tag` VALUES ('16', '教育部');
INSERT INTO `jrkj_tag` VALUES ('17', '教材');
INSERT INTO `jrkj_tag` VALUES ('18', '高校');
INSERT INTO `jrkj_tag` VALUES ('21', '高楼');
INSERT INTO `jrkj_tag` VALUES ('22', '建筑');
INSERT INTO `jrkj_tag` VALUES ('23', '速度');
INSERT INTO `jrkj_tag` VALUES ('24', '美国高中留学');
INSERT INTO `jrkj_tag` VALUES ('25', '美国留学的优势');
INSERT INTO `jrkj_tag` VALUES ('26', '美国留学的好处');
INSERT INTO `jrkj_tag` VALUES ('27', '美国高中课程');
INSERT INTO `jrkj_tag` VALUES ('28', '出国留学');
INSERT INTO `jrkj_tag` VALUES ('29', '留学生工作');
INSERT INTO `jrkj_tag` VALUES ('30', '美国留学申请误区');
INSERT INTO `jrkj_tag` VALUES ('31', '美国留学误区');
INSERT INTO `jrkj_tag` VALUES ('32', '美国留学条件');
INSERT INTO `jrkj_tag` VALUES ('33', '小时代');
INSERT INTO `jrkj_tag` VALUES ('34', '小秘密');
INSERT INTO `jrkj_tag` VALUES ('35', '招聘');

-- ----------------------------
-- Table structure for `jrkj_test`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_test`;
CREATE TABLE `jrkj_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `a` varchar(11) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `add_time` varchar(100) DEFAULT NULL,
  `b` varchar(11) DEFAULT NULL,
  `content` text,
  `c` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_test
-- ----------------------------
INSERT INTO `jrkj_test` VALUES ('5', '南昌市邮政路小学行风评议工作', '', null, null, null, null, null, null);
INSERT INTO `jrkj_test` VALUES ('11', '图书馆管理员职责说明', '', null, null, null, null, null, null);
INSERT INTO `jrkj_test` VALUES ('12', '春天的公园', '/Upfile/20091222/2009122256718017.jpg', null, null, null, null, null, null);
INSERT INTO `jrkj_test` VALUES ('13', '美丽的小山村', '/Upfile/20091222/2009122257010453.jpg', null, null, null, null, null, null);
INSERT INTO `jrkj_test` VALUES ('14', '田野', '/Upfile/20091222/2009122257341533.jpg', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `jrkj_topic`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_topic`;
CREATE TABLE `jrkj_topic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `is_default` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `templet` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_topic
-- ----------------------------
INSERT INTO `jrkj_topic` VALUES ('1', '夏令营', '帆布鞋 松糕鞋 加厚 正品 休闲 高鞋 韩版厚', '1503//5510d03ecd77f_thumb.jpg', '回顾今年，“造节促销”成为了电商企业招揽用户最直接、最有效的手段。在破纪录的“双十一”交易额之后，所有人的目光已经放到了“双十二”上。', '&lt;p style=&quot;padding:10px 0px;margin-top:0px;margin-bottom:0px;border:none;list-style-type:none;color:#333333;font-family:\'Microsoft Yahei\';font-size:18px;line-height:27px;width:558px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	回顾今年，“造节促销”成为了电商企业招揽用户最直接、最有效的手段。在破纪录的“双十一”交易额之后，所有人的目光已经放到了“双十二”上。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;padding:10px 0px;margin-top:0px;margin-bottom:0px;border:none;list-style-type:none;color:#333333;font-family:\'Microsoft Yahei\';font-size:18px;line-height:27px;width:558px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	今年的“双十二”，显然已经成为众电商平台创新的试验场。但是，“双十一”的超卖现象、物流不够快、短时间无法付款等问题依然让消费者记忆深刻，这些情况在“双十二”还会发生吗？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;padding:10px 0px;margin-top:0px;margin-bottom:0px;border:none;list-style-type:none;color:#333333;font-family:\'Microsoft Yahei\';font-size:18px;line-height:27px;width:558px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	□时报记者 汪佳婧 实习记者 张俊青\r\n&lt;/p&gt;\r\n&lt;p style=&quot;padding:10px 0px;margin-top:0px;margin-bottom:0px;border:none;list-style-type:none;color:#333333;font-family:\'Microsoft Yahei\';font-size:18px;line-height:27px;width:558px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	电商平台：\r\n&lt;/p&gt;\r\n&lt;p style=&quot;padding:10px 0px;margin-top:0px;margin-bottom:0px;border:none;list-style-type:none;color:#333333;font-family:\'Microsoft Yahei\';font-size:18px;line-height:27px;width:558px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	避免“超卖门”“退货门”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;padding:10px 0px;margin-top:0px;margin-bottom:0px;border:none;list-style-type:none;color:#333333;font-family:\'Microsoft Yahei\';font-size:18px;line-height:27px;width:558px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	在此次“双十二”活动中，淘宝主打“小而美”的新玩法。消费者不再被动地等待商家上架货品、打折销售，而是能够通过淘宝网的技术平台，直接向卖家发出求购信号。“这样一来，卖家就能够自主决定，是否响应消费群体的要求。”淘宝相关负责人坦言，这种方式增加了消费者与卖家的沟通，也会让退货率大大降低。\r\n&lt;/p&gt;', '0', '255', '1427165588', '1428051135', '1', '双十二疯抢会', '双十二疯抢会', '双十二疯抢会', '1', '2015_summber_camp');

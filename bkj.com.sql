/*
Navicat MySQL Data Transfer

Source Server         : bkj.com
Source Server Version : 50534
Source Host           : 101.200.72.164:3306
Source Database       : bkj.com

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2015-07-22 10:32:24
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_ad
-- ----------------------------
INSERT INTO `jrkj_ad` VALUES ('4', '8', 'image', 'a1', '', '1507/16/55a717814c4b4.jpg', '', '', '', '1435680000', '1563552000', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('5', '8', 'image', 'a2', '', '1507/16/55a717dd501bd.jpg', '', '', '', '1435680000', '1563465600', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('8', '8', 'image', 'a3', '', '1507/16/55a717f67de29.jpg', '', '', '', '0', '1596124800', '0', '0', '255', '1');

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
INSERT INTO `jrkj_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '117.45.59.104', '1437531515', 'admin@admin.qq.com', '1');
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
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_article
-- ----------------------------
INSERT INTO `jrkj_article` VALUES ('1', '1', '勃客简介', '', '', '', '1507/20/55ac890cc5dac.png', ' 如今，人们对于自身健康程度的重视已经远非昔日可比，拥有健康的身体是所有人的一个共同愿望。随着养生意义的升华，以前的一些观念也在随之变化，比如饮酒。 过去可能有些人会认为饮酒对身体存在一定危害，不过随', '&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;赣中福地，安福境内，耸立着江西最高峰——武功山，江西省勃客实业发展有限公司即坐落于山脚之下。此地风景秀丽、人杰地灵，被誉为“人间天堂，风水宝地”。独特的原生态自然环境和神秘的道教养生文化，孕育出以“道教养生”为核心理念的“勃客酒”系列养生保健酒。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;“勃客酒”。作为勃客酒业的系列旗舰品牌之一，以土栖白蚁为主料，由中国中药药理专业委员会、南方医科大学、江西中医学院等专业科研机构学科带头人历时数年潜心研究，集传统道教养生精髓和现代&amp;nbsp;成果之大成的养生保健珍品。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;近年来，随着国人收入水品日益提高，养生保健需求飞速增长，保健酒也随之成为国人养生保健的首选之一，勃客酒业瞄准中高端养生保健领域的空白点，着力打造中国养生保健酒中、高端知名品牌，先后投入巨资、已建成符合&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;GMP&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;标准、&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;IS09001&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;体系的生产、灌装车间，公司占地&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30000&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;多平方米，目前年生产量可达&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;60000&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;多吨。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;勃客酒业在创业、守业的道路中，将始终坚持“人为本、德为基、造好酒”的核心价值观，秉承“弘扬中华传统养生文化、全力酿造更好的世界”的经营理念，发扬“生机勃发，厚德致远”的企业文化精神。稳步开拓，奋力向前，领衔于中国保健酒中高端市场。&lt;/span&gt;&lt;span style=&quot;font-family:\'Times New Roman\';font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ade9cb8add2.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', '0', '0', '100', '1436930215', '1437460951', '1', '勃客简介', '', ' 如今，人们对于自身健康程度的重视已经远非昔日可比，拥有健康的身体是所有人的一个共同愿望。随着养生意义的升华，以前的一些观念也在随之变化，比如饮酒。 过去可能有些人会认为饮酒对身体存在一定危害，不过随', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('6', '7', '助力中国体育 勃客酒再创辉煌', '', '', '', '', ' 宇财生物 9 月 12 日成功举办了勃客酒全国经销商大会后，次日带领新老客户一起参加了由宇财生物冠名的 2012 年“勃客”杯第 18 届亚洲青年赛艇锦标赛的开幕式并参看了相关赛事。本次亚青赛也是我', '&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 宇财生物&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;9&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:宋体;&quot;&gt;月&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;12&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:宋体;&quot;&gt;日成功举办了勃客酒全国经销商大会后，次日带领新老客户一起参加了由宇财生物冠名的&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;2012&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:宋体;&quot;&gt;年“勃客”杯第&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;18&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:宋体;&quot;&gt;届亚洲青年赛艇锦标赛的开幕式并参看了相关赛事。本次亚青赛也是我省首次承办国际性的体育大赛。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&amp;nbsp;&lt;img src=&quot;http://www.bkjy.net/upload/xh/201210081239282376.jpg&quot; alt=&quot;&quot; /&gt;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;img src=&quot;http://www.bkjy.net/upload/xh/201210081239282212.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 此次锦标赛由亚洲赛艇联合会主办，国家体育总局水上运动管理中心和江西省体育局承办。宇财生物之所以冠名这场国际性的大赛，正是缘于勃客酒与体育的结缘。运动的本身是强身健体，是坚持和拼搏，而勃客酒不仅拥有这些特性，同时还带给大家勃客酒健康品质的追求和对生活态度的享受。同时勃客酒也是此次赛式的唯一指定用酒。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&amp;nbsp;&lt;img src=&quot;http://www.bkjy.net/upload/xh/201210081239575064.jpg&quot; alt=&quot;&quot; /&gt;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;img src=&quot;http://www.bkjy.net/upload/xh/201210081239587586.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 本次赛事有来自澳门、韩国、日本、台湾、香港、伊拉克、伊朗等20&lt;span style=&quot;padding:0px;margin:0px;font-family:宋体;&quot;&gt;多个国家和地区近&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;150&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:宋体;&quot;&gt;名运动员参加。有&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;CCTV-5&lt;/span&gt;&lt;span style=&quot;padding:0px;margin:0px;font-family:宋体;&quot;&gt;、江西卫视等多家媒体进行全方面的报导。本次赛事也得到江西省体育局的高度重视。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;div style=&quot;padding:0px;margin:0px;font-family:Simsun;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 宇财生物冠名本次亚青赛，不仅为江西体育事业的发展尽了绵薄之力，同时也给勃客酒的发展带来了良好的市场效应，为勃客酒奠定了更好的市场营销基础。让广大消费者进一步认识了勃客酒，同时也让广大经销商对勃客酒更加充满信心。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;img src=&quot;http://www.bkjy.net/upload/xh/201210081240241392.jpg&quot; alt=&quot;&quot; /&gt;&amp;nbsp;\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;img src=&quot;http://www.bkjy.net/upload/xh/201210081240254700.jpg&quot; alt=&quot;&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 在此宇财生物对长期以来支持和关心我们的新老客户表示深深的感谢；同时也愿我们勃客酒未来发展更加辉煌灿烂。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', '0', '17', '100', '1436940094', '1437026429', '1', '吉安市委副书记刘义硚视察勃客酒业', '', ' 宇财生物 9 月 12 日成功举办了勃客酒全国经销商大会后，次日带领新老客户一起参加了由宇财生物冠名的 2012 年“勃客”杯第 18 届亚洲青年赛艇锦标赛的开幕式并参看了相关赛事。本次亚青赛也是我', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('29', '12', '【栀  子】', '', '', '', '1507/18/55aa1a4062b00.png', ' 【栀 子】泻火除烦，清热利湿，凉血解毒；外用消肿止痛。用于热病心烦，湿热黄疸，淋症涩痛，目赤肿痛，火毒疮疡。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【栀 &amp;nbsp;子】泻火除烦，清热利湿，凉血解毒；外用消肿止痛。用于热病心烦，湿热黄疸，淋症涩痛，目赤肿痛，火毒疮疡。&lt;/span&gt;', '0', '0', '100', '1437210584', '1437211200', '1', '【栀  子】', '', ' 【栀 子】泻火除烦，清热利湿，凉血解毒；外用消肿止痛。用于热病心烦，湿热黄疸，淋症涩痛，目赤肿痛，火毒疮疡。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('2', '1', '勃客文化', '', '', '', '', ' 企业精神：诚信、责任、协同、共赢 企业理念：弘扬中华传统养生文化、全力酿造更好的世界 企业文化：生机勃发、厚德致远 核心价值观：人为本、德为基、酿好酒 共同愿景：争创中国保健酒一流品牌 ', '&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;line-height:2;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;line-height:2;&quot;&gt;&amp;nbsp;&amp;nbsp;企业精神：诚信、责任、协同、共赢&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;line-height:2;&quot;&gt;&amp;nbsp;&amp;nbsp;企业理念：弘扬中华传统养生文化、全力酿造更好的世界&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;line-height:2;&quot;&gt;&amp;nbsp;&amp;nbsp;企业文化：生机勃发、厚德致远&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;line-height:2;&quot;&gt;&amp;nbsp;&amp;nbsp;核心价值观：人为本、德为基、酿好酒&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;line-height:2;&quot;&gt;&amp;nbsp;&amp;nbsp;共同愿景：争创中国保健酒一流品牌&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55adec100e66e.jpg&quot; alt=&quot;&quot; style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;text-indent:21pt;line-height:1.5;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;text-indent:21pt;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', '0', '0', '100', '1436930261', '1437461955', '1', '勃客文化', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('3', '1', '勃客历史', '', '', '', '', ' 2011 年 3 月，江西省勃客实业发展有限公司正式成立。公司占地面积 30000 多平方米，勃客实业先后投入上亿元，严格按照国家保健食品标准进行各项作业环节的规划和建设。目前公司产能已达 6000', '&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;2011&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;月，江西省勃客实业发展有限公司正式成立。公司占地面积&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;30000&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;多平方米，勃客实业先后投入上亿元，严格按照国家保健食品标准进行各项作业环节的规划和建设。目前公司产能已达&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;6000&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;多吨&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;/&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;年。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt; &lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;&quot;&gt; &lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;2011&lt;/span&gt;&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;9&lt;/span&gt;&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;月，“勃客”牌商标通过了国家工商总局的注册，已获得商标注册证。同年&lt;/span&gt;&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;11&lt;/span&gt;&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;月份勃客龙形&lt;/span&gt;&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;LOGO&lt;/span&gt;&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;font-size:16px;&quot;&gt;也获得商标注册证。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;&quot;&gt; &lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;text-indent:21pt;font-family:\'Microsoft YaHei\';line-height:1.5;&quot;&gt; &lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;2011&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;10&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;月，江西省食品工业协会认定勃客酒为“江西省优质酒”。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt; &lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt; &lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;2011&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;12&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;月，勃客实业聘请了两届奥运皮划艇冠军杨文军为“勃客酒”形象代言人。同年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;,&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;勃客酒成为&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;2012&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;年“勃客杯”亚洲青年赛艇锦标赛唯一指定保健酒。&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt; &lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt; &lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;2012&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;月，勃客系列酒之一“葛祖酒”获得了由国家食品药品监督管理局批准的国家保健食品批准证书。&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;\r\n	&lt;hr /&gt;\r\n	&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '0', '0', '100', '1436930288', '1437462389', '1', '勃客历史', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('4', '1', '勃客荣誉', '', '', '', '', ' 2014 年 12 月 12 日，江西省工商管理局、江西省著名商标认定委员会颁发葛祖烧酒被认定为江西省著名商标 2013 年 3 月，江西省农村信用社联合社颁发 2012 年度诚信单位 2012 年', '&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2014&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;12&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;月&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;12&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;&lt;span&gt;日，江西省工商管理局、江西省著名商标认定委员会颁发葛祖烧酒被认定为&amp;nbsp;江西省著名商标&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2013&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;月，江西省农村信用社联合社颁发&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2012&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;&lt;span&gt;年度诚信单位&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2012&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;12&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;月&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;31&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;日，江西省工商管理局、江西省著名商标认定委员会联合颁发&amp;nbsp;“白酒”上的“勃客”注册商标为江西省著名商标&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2012&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;月，安福县工商业联合会颁发评定为副主席单位&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2011&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;10&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;月，江西省食品工业协会颁发勃客牌&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;38%vol&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;勃客酒获得江西省优质酒水平&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2011&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;6&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;月，世界杰出华商协会世界杰出华商协会理事单位&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;2011&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年，江西省农村信用社联合社颁发获得企业信用等级&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;3A&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;单位&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;line-height:2;&quot;&gt;安福县卫生局颁发安福县“三进三解三保”活动重点单位&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '0', '0', '100', '1436930300', '1437462831', '1', '勃客荣誉', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('5', '1', '勃客传说', '', '', '', '', '编辑中。。。', '&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;武功山水美如画，山脉连绵起伏，浩浩荡荡&amp;nbsp;绵延八百里。奇峰嵯峨，瑰丽壮观，虎啸猿啼&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;,&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;集天地之气，聚万物之灵。相传东汉葛玄、东晋葛洪两位葛仙翁先后在武功山上炼丹修道，他们皆将饮酒养生之道应验于自身并造福于当地民众。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;line-height:2;&quot;&gt;（典故之葛酒开金丹）葛洪继先祖葛玄之遗志，遍访名山大川，寻觅炼丹之所。据传，葛洪居于武功山时所炼丹之丹色泽金黄，他常以丹入酒，酒中有丹、丹中有酒。呈至皇帝（南朝陈武帝），龙颜大悦，他所酿之酒便钦定为御用之酒。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:21.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;（今日之勃客酒传奇）汇武功之灵气，集泸水之甘冽，成勃客之佳酿。东晋年间，道家始祖葛玄、葛洪曾于隐武功山，潜心医药酒酿，铸就养身传奇。&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;1800&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';line-height:2;&quot;&gt;年后，有酒勃客，源引武功，发扬光大。融现代生物科技与传统工艺之精粹。色如琥珀，味若幽兰，醇厚缠绵，回味悠长。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '0', '0', '100', '1436930332', '1437463072', '1', '勃客传说', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('7', '8', '2014年“勃客酒业杯”全国青年男子俱乐部联赛-江西安福', '', '', '', '', ' 2014年“勃客酒业杯”全国青年男子俱乐部联赛-2014年6月2日开赛，为期一周。 ', '&lt;span style=&quot;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;2014年“勃客酒业杯”全国青年男子俱乐部联赛-2014年6月2日开赛，为期一周。&lt;/span&gt;', '0', '34', '100', '1436940214', '1437026384', '1', '2014年“勃客酒业杯”全国青年男子俱乐部联赛-江西安福', '', ' 2014年“勃客酒业杯”全国青年男子俱乐部联赛-2014年6月2日开赛，为期一周。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('8', '7', '勃客酒：白蚁产品的传奇', '', '', '', '', ' 国家食物与营养咨询委员会主任卢良恕院士认为：拓展白蚁食品是一件有重大意义的健康事业。中国农业大学食品科学院蔡同一教授认为：用白蚁作为资源生产抗疲劳营养食品是个新的研究方向。 江西省安福县境内由于地理', '&lt;p style=&quot;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;国家食物与营养咨询委员会主任卢良恕院士认为：拓展白蚁食品是一件有重大意义的健康事业。中国农业大学食品科学院蔡同一教授认为：用白蚁作为资源生产抗疲劳营养食品是个新的研究方向。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;江西省安福县境内由于地理、气候条件，适合武功山白蚁生长繁育。因此武功山白蚁资源甚为丰富。经测定，武功山白蚁干粉含蛋白质&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;48&lt;/span&gt;％，八种氨基酸&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;35&lt;/span&gt;％，脂肪&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;30&lt;/span&gt;％，此外还含有多种维生素、微量元素、谷氨酸等。这些丰富营养物质对抗氧化、抗衰老有着一定的作用，因此，武功山白蚁保健品的开发研究越来越成为热门话题。该县以研发武功山白蚁药用价值为目标的江西省宇财生物制品有限公司也应运而生。宇财生物制品有限公司投资&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;5000&lt;/span&gt;多万元，建成了一座符合&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;GMP&lt;/span&gt;标准的现代化生产厂房，运用了一套整套全自动化的生产线；经与江西省中医学院、南方医科大学和中国中药药理专业委员会合作，于&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;2011&lt;/span&gt;年&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;3&lt;/span&gt;月成功研制出高端养生保健酒—勃客酒系列产品。勃客酒采取武功山泉，配上武功山白蚁，用清香型的基酒酿成。勃客酒研发成功的重要意义主要有三点：一是转化成果，使专家们经年累月潜心织造的科研梦想修成正果、造福人民；二是保健养生，为广大消费者传递了生物科技与道教养生精髓相结合的全新保健养生理念；三是化害为宝，为白蚁的开发利用走出一条前景诱人的新路。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;2011&lt;/span&gt;年&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;9&lt;/span&gt;月，勃客酒被邀请参加第八届中小企业博览会，&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;9&lt;/span&gt;月&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;22&lt;/span&gt;日，勃客酒以其独特的卖点、醇厚的口感、可靠地品质赢得了参会代表团的一致好评，受到了顾客们的青睐。&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;12&lt;/span&gt;月&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;14&lt;/span&gt;日我们请到了奥运会双人皮划艇冠军杨文军先生出任勃客酒品牌形象代言人，我们期待着能在全国保健酒市场中取得更大进展。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:14px;line-height:28px;white-space:normal;&quot;&gt;\r\n	&lt;span style=&quot;padding:0px;margin:0px;font-family:\'Times New Roman\';&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;勃客酒，作为保健酒产品中的新品牌，定将企业的核心价值观“人为本、德为基、酿好酒”牢记于心，为大众奉上最醇最美的保健酒。\r\n&lt;/p&gt;', '0', '52', '100', '1436940265', '1437026315', '1', '勃客酒：白蚁产品的传奇', '', ' 国家食物与营养咨询委员会主任卢良恕院士认为：拓展白蚁食品是一件有重大意义的健康事业。中国农业大学食品科学院蔡同一教授认为：用白蚁作为资源生产抗疲劳营养食品是个新的研究方向。 江西省安福县境内由于地理', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('9', '11', '保健酒、养生酒与普通白酒的区别', '', '', '', '', ' 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 ', '&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&amp;nbsp;保健酒、养生酒与普通白酒的区别&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&amp;nbsp;保健酒、养生酒与普通白酒的区别&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&amp;nbsp;保健酒、养生酒与普通白酒的区别&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&amp;nbsp;保健酒、养生酒与普通白酒的区别&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&amp;nbsp;保健酒、养生酒与普通白酒的区别&lt;/span&gt;\r\n&lt;/p&gt;', '0', '2', '100', '1436941660', '1436941660', '1', '保健酒、养生酒与普通白酒的区别', '', ' 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 保健酒、养生酒与普通白酒的区别 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('10', '11', '中药数字化提取生产的运用', '', '', '', '', ' 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 ', '&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;中药数字化提取生产的运用&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&lt;span style=&quot;white-space:nowrap;&quot;&gt;中药数字化提取生产的运用&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&lt;span style=&quot;white-space:nowrap;&quot;&gt;中药数字化提取生产的运用&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&lt;span style=&quot;white-space:nowrap;&quot;&gt;中药数字化提取生产的运用&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&lt;span style=&quot;white-space:nowrap;&quot;&gt;中药数字化提取生产的运用&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;white-space:nowrap;&quot;&gt;&lt;span style=&quot;white-space:nowrap;&quot;&gt;中药数字化提取生产的运用&lt;/span&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', '0', '8', '100', '1436941681', '1436941681', '1', '中药数字化提取生产的运用', '', ' 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 中药数字化提取生产的运用 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('11', '11', '保健酒、养生酒与普通白酒的区别1', '', '', '', '', ' 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 ', '&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	保健酒、养生酒与普通白酒的区别1\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	保健酒、养生酒与普通白酒的区别1\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	保健酒、养生酒与普通白酒的区别1\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	保健酒、养生酒与普通白酒的区别1\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	保健酒、养生酒与普通白酒的区别1\r\n&lt;/p&gt;', '0', '6', '100', '1436941720', '1436941740', '1', '保健酒、养生酒与普通白酒的区别1', '', ' 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 保健酒、养生酒与普通白酒的区别1 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('267', '23', '古朴佳品', '', '', '', '1507/55ae0a80c2fb7.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae0a42c6868.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437469312', '1437469312', '1', '古朴佳品', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;古朴佳品&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;50ml&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;38&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('25', '5', '联系我们', '', '', '', '', '编辑中。。。', '&lt;p&gt;\r\n	&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae1f0f517c2.jpg&quot; alt=&quot;&quot; style=&quot;float:right;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:24px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:24px;line-height:1.5;&quot;&gt;江西省勃克实业发展有限公司&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:24px;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;line-height:1.5;&quot;&gt;联系电话：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;text-align:justify;line-height:1.5;&quot;&gt;0796-7383259&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;text-align:justify;line-height:1.5;&quot;&gt;地址：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:18px;line-height:1.5;text-align:justify;&quot;&gt;江西省安福县工业园&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-weight:bold;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;span style=&quot;color:#FF0000;font-size:18px;font-family:微软雅黑, tahoma, arial;line-height:25px;background-color:#FFFFFF;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#FF0000;font-size:18px;font-family:微软雅黑, tahoma, arial;line-height:25px;background-color:#FFFFFF;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;', '0', '0', '100', '1436949765', '1437474764', '1', '联系我们', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('24', '5', '人在勃客', '', '', '', '', '编辑中。。。', '编辑中。。。', '0', '0', '100', '1436949793', '1436949793', '1', '人在勃客', '', '', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('23', '5', '招聘动态', '', '', '', '', '编辑中。。。', '编辑中。。。', '0', '0', '100', '1436949814', '1436949814', '1', '招聘动态', '', '', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('22', '5', '应聘指引', '', '', '', '', '编辑中。。。', '编辑中。。。', '0', '0', '100', '1436949830', '1436949830', '1', '应聘指引', '', '', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('26', '27', '测试1', '', '', '', '', ' 测试1 测试1 测试1 测试1 测试1 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;测试1&amp;nbsp;&lt;span style=&quot;white-space:nowrap;&quot;&gt;测试1&amp;nbsp;&lt;span style=&quot;white-space:nowrap;&quot;&gt;测试1&amp;nbsp;&lt;span style=&quot;white-space:nowrap;&quot;&gt;测试1&amp;nbsp;&lt;span style=&quot;white-space:nowrap;&quot;&gt;测试1&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;', '0', '2', '100', '1436950052', '1436950052', '1', '测试1', '', ' 测试1 测试1 测试1 测试1 测试1 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('28', '29', '经销商招募条件', '', '', '', '', ' 经销商加盟条件 1 ）具有独立法人资格和酒类经营资质。 2 ）具有良好的商业信誉。 3 ）认同勃客品牌及企业文化。 4 ）有共同发展目标和长远规划，进取精神强。 5 ）认同企业和产品核心价值观，接受', '&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;&lt;strong&gt;经销商加盟条件&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）具有独立法人资格和酒类经营资质。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）具有良好的商业信誉。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）认同勃客品牌及企业文化。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;4&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）有共同发展目标和长远规划，进取精神强。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）认同企业和产品核心价值观，接受公司的营销指导和建议。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;6&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）具备一定的资金实力。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;7&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）拥有专业的销售队伍及稳定的销售渠道和终端客户。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;8&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;）具备完善的仓储物流管理及配送能力。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;&quot;&gt;&lt;strong&gt;加盟流程&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;1）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;接洽沟通。——沟通意向，明确意向。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;2）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;考察核实。——邀请考察，核实条件。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;3）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;签订协议。——商讨协议，签署协议。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;4）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;运作支持。——交纳保证金，首次订货，提供市场支持。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:16px;line-height:1.5;&quot;&gt;&lt;strong&gt;提供支持&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;1）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;市场营销支持；公司全程跟踪指导市场销售服务，全程保姆式营销指导服务。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;2）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;终端促销品支持；统一的宣传资料、促销品（&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;POP&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;宣传单、产品形象画册、便签本、圆珠笔等支持）。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;3）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;市场人员费用支持；每进货&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;10&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;万元支持一名业务人员&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;6&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;个月基本工资（&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;1500&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;元&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;/&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;月）。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;4）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;营销方案支持。提供市场规划，制定营销方案，协助经销商进行业务员销售知识培训和指导。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;5）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;品鉴酒支持。首单订货提供&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;5%&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;品鉴酒。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;6）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;调换货支持。&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;100%&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;调换货（不影响二次销售，物流费用由经销商承担）。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;7）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;物流支持。单次进货额&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;万以上，公司承担运费；单次进货额&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;2-5&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;万，公司与经销商双方各承担一半；单次进货额&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;万以下，经销商承担运费。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;8）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;年度返利支持。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;9）&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;渠道推广支持。&lt;/span&gt;&lt;span style=&quot;font-family:\'Times New Roman\';font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:18.0000pt;text-indent:-18.0000pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', '0', '0', '100', '1437015576', '1437474031', '1', '招商合作', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('30', '12', '【桑  椹】', '', '', '', '1507/18/55aa1a577c404.png', ' 【桑 椹】滋阴补血，生津润燥。用于肝肾阴虚，眩晕耳鸣，心悸失眠，须发早白，津伤口渴，内热消渴，肠燥便秘。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【桑 &amp;nbsp;椹】滋阴补血，生津润燥。用于肝肾阴虚，眩晕耳鸣，心悸失眠，须发早白，津伤口渴，内热消渴，肠燥便秘。&lt;/span&gt;', '0', '0', '100', '1437210898', '1437211223', '1', '【桑  椹】', '', ' 【桑 椹】滋阴补血，生津润燥。用于肝肾阴虚，眩晕耳鸣，心悸失眠，须发早白，津伤口渴，内热消渴，肠燥便秘。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('31', '12', '【杨  梅】', '', '', '', '1507/18/55aa1a65cf188.png', ' 【杨 梅】杨梅是中国南方特有的水果，《本草纲目》记载，“杨梅可止渴，和五脏，能涤肠胃、除烦愤恶气”。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【杨 &amp;nbsp;梅】杨梅是中国南方特有的水果，《本草纲目》记载，“杨梅可止渴，和五脏，能涤肠胃、除烦愤恶气”。&lt;/span&gt;', '0', '0', '100', '1437210947', '1437211237', '1', '【杨  梅】', '', ' 【杨 梅】杨梅是中国南方特有的水果，《本草纲目》记载，“杨梅可止渴，和五脏，能涤肠胃、除烦愤恶气”。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('32', '12', '【葛  根】', '', '', '', '1507/18/55aa1a7b11ad3.png', ' 【葛 根】最具代表性解酒药物之一，富含蛋白质、氨基酸、葛根素和人体所需的铁、钙、硒等微量元素。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【葛 &amp;nbsp;根】最具代表性解酒药物之一，富含蛋白质、氨基酸、葛根素和人体所需的铁、钙、硒等微量元素。&lt;/span&gt;', '0', '0', '100', '1437210962', '1437211259', '1', '【葛  根】', '', ' 【葛 根】最具代表性解酒药物之一，富含蛋白质、氨基酸、葛根素和人体所需的铁、钙、硒等微量元素。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('33', '12', '【蜂  蜜】', '', '', '', '1507/55aa19a770e49.png', ' 【蜂 蜜】补中，润燥，止痛，解毒；外用生肌敛疮。用于脘腹虚痛，肺燥干咳，肠燥便秘，解乌头类药毒；外治疮疡不敛，水火烫伤。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【蜂 &amp;nbsp;蜜】补中，润燥，止痛，解毒；外用生肌敛疮。用于脘腹虚痛，肺燥干咳，肠燥便秘，解乌头类药毒；外治疮疡不敛，水火烫伤。&lt;/span&gt;', '0', '0', '100', '1437211047', '1437211047', '1', '【蜂  蜜】', '', ' 【蜂 蜜】补中，润燥，止痛，解毒；外用生肌敛疮。用于脘腹虚痛，肺燥干咳，肠燥便秘，解乌头类药毒；外治疮疡不敛，水火烫伤。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('34', '12', '【薏苡仁】', '', '', '', '1507/55aa19c081a84.png', ' 【薏苡仁】利水渗湿，健脾止泻，除痹，排脓，解毒散结。用于水肿，脚气，小便不利，脾虚泄泻，湿痹拘挛，肺痈，肠痈，癌肿。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【薏苡仁】利水渗湿，健脾止泻，除痹，排脓，解毒散结。用于水肿，脚气，小便不利，脾虚泄泻，湿痹拘挛，肺痈，肠痈，癌肿。&lt;/span&gt;', '0', '0', '100', '1437211072', '1437211072', '1', '【薏苡仁】', '', ' 【薏苡仁】利水渗湿，健脾止泻，除痹，排脓，解毒散结。用于水肿，脚气，小便不利，脾虚泄泻，湿痹拘挛，肺痈，肠痈，癌肿。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('35', '12', '【覆盆子】', '', '', '', '1507/55aa19d07d867.png', ' 【覆盆子】益肾固精缩尿，养肝明目。用于遗精滑精，遗尿尿频，阳痿早泄，目暗昏花。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【覆盆子】益肾固精缩尿，养肝明目。用于遗精滑精，遗尿尿频，阳痿早泄，目暗昏花。&lt;/span&gt;', '0', '0', '100', '1437211088', '1437211088', '1', '【覆盆子】', '', ' 【覆盆子】益肾固精缩尿，养肝明目。用于遗精滑精，遗尿尿频，阳痿早泄，目暗昏花。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('36', '12', '【龙眼肉】', '', '', '', '1507/55aa19e9cebba.png', ' 【龙眼肉】补益心脾，养血安神。用于气血不足，心悸怔忡，健忘失眠，血虚萎黄。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【龙眼肉】补益心脾，养血安神。用于气血不足，心悸怔忡，健忘失眠，血虚萎黄。&lt;/span&gt;', '0', '0', '100', '1437211113', '1437211113', '1', '【龙眼肉】', '', ' 【龙眼肉】补益心脾，养血安神。用于气血不足，心悸怔忡，健忘失眠，血虚萎黄。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('37', '12', '【莲  子】', '', '', '', '1507/55aa19f9d68ad.png', ' 【莲 子】补脾止泻，止带，益肾涩精，养心安神。用于脾虚泄泻，带下，遗精，心悸失眠。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【莲 &amp;nbsp;子】补脾止泻，止带，益肾涩精，养心安神。用于脾虚泄泻，带下，遗精，心悸失眠。&lt;/span&gt;', '0', '1', '100', '1437211129', '1437211129', '1', '【莲  子】', '', ' 【莲 子】补脾止泻，止带，益肾涩精，养心安神。用于脾虚泄泻，带下，遗精，心悸失眠。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('38', '12', '【山  药】', '', '', '', '1507/55aa1a04eeb2d.png', ' 【山 药】补脾养胃，生津益肺，补肾涩精。用于脾虚食少，久泻不止，肺虚喘咳，肾虚遗精，带下，尿频，虚热消渴。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【山 &amp;nbsp;药】补脾养胃，生津益肺，补肾涩精。用于脾虚食少，久泻不止，肺虚喘咳，肾虚遗精，带下，尿频，虚热消渴。&lt;/span&gt;', '0', '0', '100', '1437211140', '1437211140', '1', '【山  药】', '', ' 【山 药】补脾养胃，生津益肺，补肾涩精。用于脾虚食少，久泻不止，肺虚喘咳，肾虚遗精，带下，尿频，虚热消渴。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('39', '12', '【酸枣仁】', '', '', '', '1507/55aa1a13181ec.png', ' 【酸枣仁】养心补肝，宁心安神，敛汗，生津。用于虚烦不眠，惊悸多梦，体虚多汗，津伤口渴。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【酸枣仁】养心补肝，宁心安神，敛汗，生津。用于虚烦不眠，惊悸多梦，体虚多汗，津伤口渴。&lt;/span&gt;', '0', '1', '100', '1437211155', '1437211155', '1', '【酸枣仁】', '', ' 【酸枣仁】养心补肝，宁心安神，敛汗，生津。用于虚烦不眠，惊悸多梦，体虚多汗，津伤口渴。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('40', '12', '【大  枣】', '', '', '', '1507/55aa1a21d99d0.png', ' 【大 枣】补中益气，养血安神。用于脾虚食少，乏力便溏，妇人脏躁。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【大 &amp;nbsp;枣】补中益气，养血安神。用于脾虚食少，乏力便溏，妇人脏躁。&lt;/span&gt;&lt;br /&gt;\r\n&lt;div style=&quot;white-space:nowrap;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/div&gt;', '0', '25', '100', '1437211169', '1437211169', '1', '【大  枣】', '', ' 【大 枣】补中益气，养血安神。用于脾虚食少，乏力便溏，妇人脏躁。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('41', '12', '【淫羊藿】', '', '', '', '1507/55aa1a324904f.png', ' 【淫羊藿】补肾阳，强筋骨，祛风湿。用于肾阳虚衰，阳痿遗精，筋骨痿软，风湿痹痛，麻木拘挛。 ', '&lt;span style=&quot;white-space:nowrap;&quot;&gt;【淫羊藿】补肾阳，强筋骨，祛风湿。用于肾阳虚衰，阳痿遗精，筋骨痿软，风湿痹痛，麻木拘挛。&lt;/span&gt;', '0', '20', '100', '1437211186', '1437211186', '1', '【淫羊藿】', '', ' 【淫羊藿】补肾阳，强筋骨，祛风湿。用于肾阳虚衰，阳痿遗精，筋骨痿软，风湿痹痛，麻木拘挛。 ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('44', '10', '科技动态', '', '', '', '', '编辑中...', '编辑中...', '0', '0', '100', '1437461037', '1437461037', '1', '科技动态', '', '编辑中...', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('251', '29', '最新招商活动', '', '', '', '', '编辑中。。。', '编辑中。。。', '0', '0', '100', '1437465326', '1437465326', '1', '最新招商活动', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('252', '29', '市场掠影', '', '', '', '', '编辑中。。。', '编辑中。。。', '0', '0', '100', '1437465364', '1437465364', '1', '市场掠影', '', '编辑中。。。', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('253', '25', '养生白酒', '', '', '', '1507/21/55adff5746511.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55adff4eedf52.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/div&gt;', '0', '6', '100', '1437466267', '1437467388', '1', '养生白酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;蓝色力量&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：xxx&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;line-height:21px;text-align:justify;&quot;&gt;xxx%vol&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('254', '30', '活动1', '', '', '', '1507/21/55ae0283253ba.jpg', '1', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae0280371b3.jpg&quot; alt=&quot;&quot; /&gt;1', '0', '1', '100', '1437466864', '1437467267', '1', '活动1', '', '1', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('255', '30', '活动2', '', '', '', '1507/21/55ae0299a0513.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae029737518.jpg&quot; alt=&quot;&quot; /&gt;', '0', '20', '100', '1437466880', '1437467289', '1', '活动2', '', '2', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('256', '30', '活动3', '', '', '', '1507/21/55ae02b1e39fd.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae02af70775.jpg&quot; alt=&quot;&quot; /&gt;', '0', '4', '100', '1437466895', '1437467313', '1', '活动3', '', '3', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('257', '30', '活动4', '', '', '', '1507/55ae01f62c7f1.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae01f319c96.jpg&quot; alt=&quot;&quot; /&gt;', '0', '2', '100', '1437467126', '1437467126', '1', '活动4', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('258', '30', '活动5', '', '', '', '1507/55ae020e42165.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae020b18989.jpg&quot; alt=&quot;&quot; /&gt;', '0', '4', '100', '1437467150', '1437467150', '1', '活动5', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('259', '25', '养生白酒', '', '', '', '1507/55ae022372576.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae021b9b417.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/div&gt;', '0', '4', '100', '1437467171', '1437467552', '1', '养生白酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;养生白酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：xxx&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：xxx%vol&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('260', '30', '活动6', '', '', '', '1507/55ae022e2c727.jpg', '', '', '0', '0', '100', '1437467182', '1437467182', '1', '活动6', '', '', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('261', '30', '活动7', '', '', '', '1507/55ae024404d3c.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae02423bdbc.jpg&quot; alt=&quot;&quot; /&gt;', '0', '0', '100', '1437467204', '1437467204', '1', '活动7', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('262', '30', '活动8', '', '', '', '1507/55ae0256c5999.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae02545f927.jpg&quot; alt=&quot;&quot; /&gt;', '0', '0', '100', '1437467222', '1437467222', '1', '活动8', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('263', '30', '活动9', '', '', '', '1507/55ae026caa571.jpg', ' ', '&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae026ac53a0.jpg&quot; alt=&quot;&quot; /&gt;', '0', '0', '100', '1437467244', '1437467244', '1', '活动9', '', ' ', '', '', '', '', '', '', '');
INSERT INTO `jrkj_article` VALUES ('264', '23', '勃克酒', '', '', '', '1507/55ae04eb8d5b9.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae04ae51d2f.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/div&gt;', '0', '7', '100', '1437467883', '1437469942', '1', '勃克酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;&lt;/span&gt;&lt;br /&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称： 勃克酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;500mlx2&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;瓶&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('265', '23', '赤锦礼盒', '', '', '', '1507/55ae072016298.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae068971a03.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/div&gt;', '0', '2', '100', '1437468448', '1437469844', '1', '赤锦礼盒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;赤锦礼盒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;500mlx2&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;瓶&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('266', '23', '井冈特产', '', '', '', '1507/55ae08b1af1d3.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae089d0e9d1.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt; \r\n&lt;/div&gt;', '0', '2', '100', '1437468849', '1437469763', '1', '井冈特产', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;井冈特产&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;300mlx2&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;瓶&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('268', '25', '勃克酒', '', '', '', '1507/55ae0f24933d0.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae0ee4d0bc2.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437470500', '1437470500', '1', '勃克酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;养生白酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;300ml&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('269', '25', '养生白酒', '', '', '', '1507/55ae10df2008d.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae105476a1b.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437470943', '1437470943', '1', '养生白酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;勃克酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;300ml&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('270', '23', '精品纷呈', '', '', '', '1507/55ae134c18d7b.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae1301c4ead.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437471564', '1437471564', '1', '精品纷呈', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称： 精品纷呈&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;125mlx6&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;瓶&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('271', '23', '十二股力量', '', '', '', '1507/55ae14fcb58f8.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae14c55d304.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437471996', '1437471996', '1', '十二股力量', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;&lt;span style=&quot;white-space:nowrap;&quot;&gt;十二股力量&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：1&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;00ml&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('272', '23', '勃克精品', '', '', '', '1507/55ae15f4a2a9d.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae15be52eb1.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437472244', '1437472244', '1', '勃克精品', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;&lt;span style=&quot;white-space:nowrap;&quot;&gt;勃克精品&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：125&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;ml&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('273', '23', '蓝色力量', '', '', '', '1507/55ae17a7c2af7.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae177f879e0.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437472679', '1437472679', '1', '蓝色力量', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;蓝色力量&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;500mlx2&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;瓶&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;30&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;度&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('274', '24', '杨梅露酒', '', '', '', '1507/55ae18ef247f3.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae186962337.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437473007', '1437473007', '1', '杨梅露酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;杨梅露酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：2.5L&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:14px;line-height:21px;text-align:justify;white-space:normal;&quot;&gt;21%vol&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('275', '24', '杨梅露酒', '', '', '', '1507/55ae1a050542f.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae1970863bf.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437473285', '1437473285', '1', '杨梅露酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称： 杨梅露酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;净含量：185ml含杨梅*12瓶装彩箱&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;酒精度：21%vol&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('276', '24', '杨梅露酒', '', '', '', '1507/55ae1af4cb08c.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae1a5d904e0.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437473524', '1437473524', '1', '杨梅露酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp;&amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;杨梅露酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：260ml含杨梅*8瓶装彩箱&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：21%vol&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');
INSERT INTO `jrkj_article` VALUES ('277', '24', '杨梅露酒', '', '', '', '1507/55ae1be57c660.png', ' ', '&lt;div style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt;&lt;img src=&quot;/data/attachment/editer/image/2015/07/21/55ae1b73b6120.png&quot; alt=&quot;&quot; style=&quot;line-height:1.5;&quot; /&gt;\r\n&lt;/div&gt;', '0', '1', '100', '1437473765', '1437473765', '1', '杨梅露酒', '', ' ', '', '', '', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;&amp;nbsp; &amp;nbsp;勃客酒是以道地名贵药材为原料开发的一款中高档保健酒。勃客酒，精选西洋参、枸杞等名贵药材，运用数字化提取原料有效成分而酿制的保健酒。勃客酒具有抗疲劳、免疫调节功效，既享受饮酒之乐，又与健康随行。&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;产品名称：&amp;nbsp;杨梅露酒&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;净含量：&lt;/span&gt;&lt;span style=&quot;font-family:\'Microsoft YaHei\';&quot;&gt;100ml含杨梅*16瓶装彩箱&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;span style=&quot;font-family:Microsoft YaHei;&quot;&gt;酒精度：20%vol&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产企业：勃客实业发展有限公司&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:justify;&quot;&gt;\r\n	&lt;span style=&quot;font-family:\'Microsoft YaHei\';font-size:10.5pt;&quot;&gt;生产地址：江西省安福县工业园&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:10.5000pt;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;');

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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_cate
-- ----------------------------
INSERT INTO `jrkj_article_cate` VALUES ('1', '0', '关于勃客', 'About', '', '0', '0', '120', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=about&amp;id=1');
INSERT INTO `jrkj_article_cate` VALUES ('2', '0', '新闻中心', 'News', '', '0', '0', '119', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=news&amp;id=2');
INSERT INTO `jrkj_article_cate` VALUES ('3', '0', '勃客科技', 'tEchnology', '', '0', '0', '118', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=news&amp;id=3&amp;cate_id=10');
INSERT INTO `jrkj_article_cate` VALUES ('4', '0', '勃客商城', 'Shop', '', '0', '0', '117', '1', '', '', '', '', '', '', '1', '?m=Home&amp;c=news&amp;a=product&amp;id=4');
INSERT INTO `jrkj_article_cate` VALUES ('5', '0', '加入勃客', '', '', '0', '0', '114', '1', '', '', '', '', '', '', '1', '');
INSERT INTO `jrkj_article_cate` VALUES ('6', '0', '勃客党建', '', '', '0', '0', '115', '1', '', '', '', '', '', '', '1', '');
INSERT INTO `jrkj_article_cate` VALUES ('27', '0', '组织建设', '', '', '6', '6|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('29', '0', '招商合作', '', '', '0', '0', '116', '1', '', '', '', '', '', '', '1', '');
INSERT INTO `jrkj_article_cate` VALUES ('7', '0', '勃客要闻', '', '', '2', '2|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('8', '0', '勃客简讯', '', '', '2', '2|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('9', '0', '视频中心', '', '', '2', '2|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('10', '0', '科技动态', '', '', '3', '3|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('11', '0', '中药现代化研究', '', '', '3', '3|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('12', '0', '探索勃客酒奥秘', '', '', '3', '3|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('30', '0', '市场掠影', '', '', '29', '29|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('28', '0', '党建动态', '', '', '6', '6|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('25', '0', '养生白酒系列', '', '55ac6d21e77b6.png', '4', '4|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('24', '0', '杨梅酒系列', '', '55ac6d133f549.png', '4', '4|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('23', '0', '保健酒系列', '', '55ac6d090bfb7.png', '4', '4|', '255', '1', '', '', '', '', '', '', '0', '');

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
INSERT INTO `jrkj_article_tag` VALUES ('10', '32');
INSERT INTO `jrkj_article_tag` VALUES ('10', '5');

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
INSERT INTO `jrkj_flink` VALUES ('4', 'dffd', '', 'dfdfd', '1', '0', '1');
INSERT INTO `jrkj_flink` VALUES ('5', 'dfdfd', '', 'http://www.taobao.com', '1', '0', '1');

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
INSERT INTO `jrkj_setting` VALUES ('site_name', '江西勃客实业发展有限公司', '');
INSERT INTO `jrkj_setting` VALUES ('site_title', '江西勃客实业发展有限公司', '');
INSERT INTO `jrkj_setting` VALUES ('site_keyword', '江西勃客实业发展有限公司', '');
INSERT INTO `jrkj_setting` VALUES ('site_description', '江西勃客实业发展有限公司', '');
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
INSERT INTO `jrkj_setting` VALUES ('email', '594250372@qq.com', '');
INSERT INTO `jrkj_setting` VALUES ('address', '江西省吉安市安福县工业区（加油站对面）', '');
INSERT INTO `jrkj_setting` VALUES ('tel', '0796-7383259 ', '');
INSERT INTO `jrkj_setting` VALUES ('qq', '', '');
INSERT INTO `jrkj_setting` VALUES ('site_url', '', '');
INSERT INTO `jrkj_setting` VALUES ('mobile', '', '');
INSERT INTO `jrkj_setting` VALUES ('tel1', '400-0796-808', '');
INSERT INTO `jrkj_setting` VALUES ('fax', '0796-7383180', '');

-- ----------------------------
-- Table structure for `jrkj_tag`
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_tag`;
CREATE TABLE `jrkj_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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

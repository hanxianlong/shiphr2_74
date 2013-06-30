/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50130
Source Host           : localhost:3306
Source Database       : ship74cms32

Target Server Type    : MYSQL
Target Server Version : 50130
File Encoding         : 65001

Date: 2013-06-30 23:18:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qs32_ad
-- ----------------------------
DROP TABLE IF EXISTS `qs32_ad`;
CREATE TABLE `qs32_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(80) NOT NULL,
  `is_display` tinyint(4) NOT NULL DEFAULT '1',
  `category_id` smallint(5) NOT NULL,
  `type_id` smallint(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `note` varchar(230) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '50',
  `addtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `deadline` int(11) NOT NULL DEFAULT '0',
  `text_content` varchar(250) NOT NULL,
  `text_url` varchar(250) NOT NULL,
  `text_color` varchar(60) NOT NULL,
  `img_path` varchar(250) NOT NULL,
  `img_url` varchar(250) NOT NULL,
  `img_explain` varchar(250) NOT NULL,
  `img_uid` int(10) NOT NULL DEFAULT '0',
  `code_content` text NOT NULL,
  `flash_path` varchar(250) NOT NULL,
  `flash_width` int(10) unsigned NOT NULL,
  `flash_height` int(10) unsigned NOT NULL,
  `floating_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `floating_width` int(10) unsigned NOT NULL,
  `floating_height` int(10) unsigned NOT NULL,
  `floating_url` varchar(250) NOT NULL,
  `floating_path` varchar(250) NOT NULL,
  `floating_left` varchar(10) NOT NULL,
  `floating_right` varchar(10) NOT NULL,
  `floating_top` int(11) NOT NULL,
  `video_path` varchar(250) NOT NULL,
  `video_width` int(10) unsigned NOT NULL,
  `video_height` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias_starttime_deadline` (`alias`,`starttime`,`deadline`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_ad
-- ----------------------------
INSERT INTO `qs32_ad` VALUES ('1', 'QS_indexfocus', '1', '1', '2', '软件商业授权', '', '50', '0', '0', '0', '', '', '', 'http://www.74cms.com/74ad_280x135.jpg', 'http://www.74cms.com/', '骑士CMS商业授权', '0', '', '', '0', '0', '1', '0', '0', '', '', '0', '0', '0', '', '0', '0');
INSERT INTO `qs32_ad` VALUES ('2', 'QS_indexfocus', '1', '1', '2', '新广告', '新广告', '50', '1370616502', '1370534400', '0', '', '', '', 'http://shiphr.com/show/tmarine.jpg', 'http://www.baidu.com', '', '0', '', '', '0', '0', '1', '0', '0', '', '', '', '', '0', '', '0', '0');
INSERT INTO `qs32_ad` VALUES ('3', 'QS_indexcentreimg', '1', '3', '2', '北京太仓招收新职工！', '设置广告广告结束的时间，格式 yyyy-mm-dd，留空为不限制结束时间', '50', '1370866828', '1370793600', '1374768000', '', '', '', 'http://shiphr.com/uploads/1368435366WBJz0L.jpg', 'http://www.74cms.com', '众人', '0', '', '', '0', '0', '1', '0', '0', '', '', '', '', '0', '', '0', '0');
INSERT INTO `qs32_ad` VALUES ('4', 'QS_newsbanner', '1', '4', '2', '广告标题只为识别辨认不同广告条目之用，并不在广告中显示', '设置广告广告结束的时间，格式 yyyy-mm-dd，留空为不限制结束时间', '50', '1370866948', '1370793600', '1374940800', '', '', '', 'http://img03.51jobcdn.com/im/images/2013/sh/renming0314bb_8797wh.gif', 'http://www.baiddu.com', '百度推广', '0', '', '', '0', '0', '1', '0', '0', '', '', '', '', '0', '', '0', '0');
INSERT INTO `qs32_ad` VALUES ('5', 'QS_indexfootimg', '1', '6', '2', '北京人民大会堂', '', '50', '1370867032', '1370793600', '0', '', '', '', 'http://shiphr.com/uploads/1370413563U39BW5.jpg', 'http://shiphr.com/uploads/1370413563U39BW5.jpg', '图片说明文字', '0', '', '', '0', '0', '1', '0', '0', '', '', '', '', '0', '', '0', '0');
INSERT INTO `qs32_ad` VALUES ('6', 'QS_indexfloat', '1', '7', '5', '首页对联广告', '', '50', '1370867267', '1370793600', '0', '', '', '', '', '', '', '0', '', '', '0', '0', '1', '120', '240', 'http://img01.51jobcdn.com/im/images/2013/careerpost/banner/guzhufyb/120250.jpg', 'http://img01.51jobcdn.com/im/images/2013/careerpost/banner/guzhufyb/120250.jpg', '', '0', '45', '', '0', '0');

-- ----------------------------
-- Table structure for qs32_admin
-- ----------------------------
DROP TABLE IF EXISTS `qs32_admin`;
CREATE TABLE `qs32_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `purview` text NOT NULL,
  `rank` varchar(32) NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_admin
-- ----------------------------
INSERT INTO `qs32_admin` VALUES ('1', 'web-admin', 'wnfkwnfk@163.com', '304faf3b8d92bff5a6cbb1f9e85c6c20', '=63@TP', 'all', '超级管理员', '1370101446', '1372143367', '116.231.113.81');

-- ----------------------------
-- Table structure for qs32_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `qs32_admin_log`;
CREATE TABLE `qs32_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `add_time` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_admin_log
-- ----------------------------
INSERT INTO `qs32_admin_log` VALUES ('1', 'hanxianlong', '1370101475', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('2', 'guanliyuan', '1370144749', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('3', 'hanxianlong', '1370144770', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('4', 'guanliyuan', '1370144785', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('5', 'hanxianlong', '1370175767', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('6', 'hanxianlong', '1370176784', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('7', 'hanxianlong', '1370354018', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('8', 'hanxianlong', '1370610273', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('9', 'hanxianlong', '1371045571', '成功登录', '211.152.16.213', '1');
INSERT INTO `qs32_admin_log` VALUES ('10', 'web-admin', '1371099116', '成功登录', '127.0.0.1', '1');
INSERT INTO `qs32_admin_log` VALUES ('11', 'web-admin', '1372142830', '成功登录', '116.231.113.81', '1');
INSERT INTO `qs32_admin_log` VALUES ('12', 'web-admin', '1372143163', '成功登录', '116.231.113.81', '1');
INSERT INTO `qs32_admin_log` VALUES ('13', 'web-admin', '1372143367', '成功登录', '116.231.113.81', '1');

-- ----------------------------
-- Table structure for qs32_ad_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_ad_category`;
CREATE TABLE `qs32_ad_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `categoryname` varchar(100) NOT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_ad_category
-- ----------------------------
INSERT INTO `qs32_ad_category` VALUES ('1', 'QS_indexfocus', '2', '首页图片轮番广告', '1');
INSERT INTO `qs32_ad_category` VALUES ('2', 'QS_indextoptext', '1', '首页上方文字广告位', '1');
INSERT INTO `qs32_ad_category` VALUES ('3', 'QS_indexcentreimg', '2', '首页中部格子广告', '1');
INSERT INTO `qs32_ad_category` VALUES ('4', 'QS_newsbanner', '2', '资讯首页中间横幅', '1');
INSERT INTO `qs32_ad_category` VALUES ('6', 'QS_indexfootimg', '2', '首页下方格子广告位', '1');
INSERT INTO `qs32_ad_category` VALUES ('7', 'QS_indexfloat', '5', '首页对联广告', '1');
INSERT INTO `qs32_ad_category` VALUES ('8', 'QS_alltopimg', '2', '全站顶部图片广告位468X60', '1');
INSERT INTO `qs32_ad_category` VALUES ('9', 'QS_indexfootbanner', '2', '首页底部Banner 985X80', '1');

-- ----------------------------
-- Table structure for qs32_article
-- ----------------------------
DROP TABLE IF EXISTS `qs32_article`;
CREATE TABLE `qs32_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Small_img` varchar(80) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `focos` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `article_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `click` (`click`),
  KEY `focos_article_order` (`focos`,`article_order`,`id`),
  KEY `parentid` (`parentid`,`article_order`,`id`),
  KEY `type_id` (`type_id`,`article_order`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_article
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_article_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_article_category`;
CREATE TABLE `qs32_article_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_article_category
-- ----------------------------
INSERT INTO `qs32_article_category` VALUES ('1', '0', '资讯中心', '0', '资讯中心', '', '', '1');
INSERT INTO `qs32_article_category` VALUES ('2', '1', '职业指导', '0', '', '', '', '1');
INSERT INTO `qs32_article_category` VALUES ('3', '1', '简历指南', '0', '', '', '', '1');
INSERT INTO `qs32_article_category` VALUES ('4', '1', '面试宝典', '0', '', '', '', '1');
INSERT INTO `qs32_article_category` VALUES ('5', '1', '职场八卦', '0', '', '', '', '1');
INSERT INTO `qs32_article_category` VALUES ('6', '1', '劳动法苑', '0', '', '', '', '1');
INSERT INTO `qs32_article_category` VALUES ('7', '1', '职场观察', '0', '', '', '', '1');

-- ----------------------------
-- Table structure for qs32_article_property
-- ----------------------------
DROP TABLE IF EXISTS `qs32_article_property`;
CREATE TABLE `qs32_article_property` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(30) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_article_property
-- ----------------------------
INSERT INTO `qs32_article_property` VALUES ('1', '普通资讯', '0', '1');
INSERT INTO `qs32_article_property` VALUES ('2', '头条资讯', '0', '1');
INSERT INTO `qs32_article_property` VALUES ('3', '焦点新闻', '0', '1');
INSERT INTO `qs32_article_property` VALUES ('4', '推荐资讯', '0', '1');

-- ----------------------------
-- Table structure for qs32_captcha
-- ----------------------------
DROP TABLE IF EXISTS `qs32_captcha`;
CREATE TABLE `qs32_captcha` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_captcha
-- ----------------------------
INSERT INTO `qs32_captcha` VALUES ('1', 'verify_userreg', '0');
INSERT INTO `qs32_captcha` VALUES ('2', 'verify_userlogin', '0');
INSERT INTO `qs32_captcha` VALUES ('3', 'verify_getpwd', '0');
INSERT INTO `qs32_captcha` VALUES ('4', 'verify_addjob', '0');
INSERT INTO `qs32_captcha` VALUES ('5', 'verify_resume', '0');
INSERT INTO `qs32_captcha` VALUES ('6', 'verify_link', '1');
INSERT INTO `qs32_captcha` VALUES ('7', 'verify_gifts', '1');
INSERT INTO `qs32_captcha` VALUES ('8', 'verify_simple', '0');
INSERT INTO `qs32_captcha` VALUES ('9', 'verify_adminlogin', '0');
INSERT INTO `qs32_captcha` VALUES ('10', 'captcha_width', '150');
INSERT INTO `qs32_captcha` VALUES ('11', 'captcha_height', '40');
INSERT INTO `qs32_captcha` VALUES ('12', 'captcha_textcolor', '');
INSERT INTO `qs32_captcha` VALUES ('13', 'captcha_textfontsize', '25');
INSERT INTO `qs32_captcha` VALUES ('14', 'captcha_textlength', '4');
INSERT INTO `qs32_captcha` VALUES ('15', 'captcha_lang', 'en');
INSERT INTO `qs32_captcha` VALUES ('16', 'captcha_bgcolor', '');
INSERT INTO `qs32_captcha` VALUES ('17', 'captcha_noisepoint', '0');
INSERT INTO `qs32_captcha` VALUES ('18', 'captcha_noiseline', '5');
INSERT INTO `qs32_captcha` VALUES ('19', 'captcha_distortion', '0');

-- ----------------------------
-- Table structure for qs32_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_category`;
CREATE TABLE `qs32_category` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_parentid` int(10) unsigned NOT NULL,
  `c_alias` char(30) NOT NULL,
  `c_name` char(30) NOT NULL,
  `c_order` int(10) NOT NULL,
  `c_index` char(1) NOT NULL,
  `c_note` char(60) NOT NULL,
  `stat_jobs` char(15) NOT NULL,
  `stat_resume` char(15) NOT NULL,
  `c_name_en` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `c_alias` (`c_alias`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_category
-- ----------------------------
INSERT INTO `qs32_category` VALUES ('1', '0', 'QS_trade', '船舶', '0', 'c', '', '', '', 'shipbuilding');
INSERT INTO `qs32_category` VALUES ('2', '0', 'QS_trade', '海洋工程', '0', 'h', '', '', '', 'offshore');
INSERT INTO `qs32_category` VALUES ('3', '0', 'QS_trade', '船舶与海洋工程', '0', 'c', '', '', '', 'shipbuilding&offshore');
INSERT INTO `qs32_category` VALUES ('4', '0', 'QS_trade', '大型设备/机电设备/重工业', '0', 'd', '', '', '', 'euipments');
INSERT INTO `qs32_category` VALUES ('5', '0', 'QS_trade', '航运', '0', 'h', '', '', '', 'shipping');
INSERT INTO `qs32_category` VALUES ('6', '0', 'QS_trade', '游艇', '0', 'y', '', '', '', 'yacht');
INSERT INTO `qs32_category` VALUES ('7', '0', 'QS_trade', '港口航道与海岸工程', '0', 'g', '', '', '', 'port, waterway and coastal Engineering');
INSERT INTO `qs32_category` VALUES ('8', '0', 'QS_trade', '航海仪器', '0', 'h', '', '', '', 'marine instruments');
INSERT INTO `qs32_category` VALUES ('9', '0', 'QS_trade', '工程设计', '0', 'g', '', '', '', 'engineering design');
INSERT INTO `qs32_category` VALUES ('10', '0', 'QS_trade', '能源', '0', 'n', '', '', '', 'energy');
INSERT INTO `qs32_category` VALUES ('11', '0', 'QS_trade', '其他', '0', 'q', '', '', '', 'others');
INSERT INTO `qs32_category` VALUES ('46', '0', 'QS_company_type', '国有企业', '0', 'g', '', '', '', 'State-owned Enterprise');
INSERT INTO `qs32_category` VALUES ('47', '0', 'QS_company_type', '集体企业', '0', 'j', '', '', '', 'Collective Enterprise');
INSERT INTO `qs32_category` VALUES ('48', '0', 'QS_company_type', '外商独资', '0', 'w', '', '', '', 'Wholly Foreign-owned Enterprise');
INSERT INTO `qs32_category` VALUES ('49', '0', 'QS_company_type', '中外合资', '0', 'z', '', '', '', 'Chinese-foreign Joint Venture');
INSERT INTO `qs32_category` VALUES ('50', '0', 'QS_company_type', '民营企业', '0', 'm', '', '', '', 'Non-government Enterprise');
INSERT INTO `qs32_category` VALUES ('51', '0', 'QS_company_type', '股份制企业', '0', 'g', '', '', '', 'Joint-equity Enterprise');
INSERT INTO `qs32_category` VALUES ('52', '0', 'QS_company_type', '行政机关', '0', 'x', '', '', '', 'Administrative Organ');
INSERT INTO `qs32_category` VALUES ('53', '0', 'QS_company_type', '事业单位', '0', 's', '', '', '', 'Institution');
INSERT INTO `qs32_category` VALUES ('54', '0', 'QS_company_type', '其它', '0', 'q', '', '', '', 'Other');
INSERT INTO `qs32_category` VALUES ('55', '0', 'QS_wage', '面议', '0', 'm', '', '', '', 'TBD');
INSERT INTO `qs32_category` VALUES ('177', '0', 'QS_wage', '10000~15000元/月', '0', '', '', '', '', '10,000~15,000元/Month');
INSERT INTO `qs32_category` VALUES ('58', '0', 'QS_wage', '2000~3000元/月', '0', '', '', '', '', '2,000~3,000元/Month');
INSERT INTO `qs32_category` VALUES ('59', '0', 'QS_wage', '3000~4000元/月', '0', '', '', '', '', '3,000~4,000元/Month');
INSERT INTO `qs32_category` VALUES ('60', '0', 'QS_wage', '4000~6000元/月', '0', '', '', '', '', '4,000~6,000元/Month');
INSERT INTO `qs32_category` VALUES ('61', '0', 'QS_wage', '6000~8000元/月', '0', '', '', '', '', '6,000~8,000元/Month');
INSERT INTO `qs32_category` VALUES ('62', '0', 'QS_jobs_nature', '全职', '0', 'q', '', '', '', 'FullDay');
INSERT INTO `qs32_category` VALUES ('63', '0', 'QS_jobs_nature', '兼职', '0', 'j', '', '', '', 'part-time');
INSERT INTO `qs32_category` VALUES ('64', '0', 'QS_jobs_nature', '临时', '0', 'l', '', '', '', 'temporary');
INSERT INTO `qs32_category` VALUES ('65', '0', 'QS_education', '初中', '0', 'c', '', '', '', 'Junior High School');
INSERT INTO `qs32_category` VALUES ('66', '0', 'QS_education', '高中', '0', 'g', '', '', '', 'Senior High School');
INSERT INTO `qs32_category` VALUES ('67', '0', 'QS_education', '职高/技校', '0', 'z', '', '', '', 'Vocational high school/Technical School');
INSERT INTO `qs32_category` VALUES ('68', '0', 'QS_education', '中专', '0', 'z', '', '', '', 'Technical Secondary School');
INSERT INTO `qs32_category` VALUES ('69', '0', 'QS_education', '大专', '0', 'd', '', '', '', 'Junior College');
INSERT INTO `qs32_category` VALUES ('70', '0', 'QS_education', '大学本科', '0', 'd', '', '', '', 'Bachelor');
INSERT INTO `qs32_category` VALUES ('71', '0', 'QS_education', '硕士', '0', 's', '', '', '', 'Master');
INSERT INTO `qs32_category` VALUES ('72', '0', 'QS_education', '博士', '0', 'b', '', '', '', 'Doctorate');
INSERT INTO `qs32_category` VALUES ('74', '0', 'QS_experience', '不限', '0', 'b', '', '', '', '不限');
INSERT INTO `qs32_category` VALUES ('75', '0', 'QS_experience', '一年以上', '0', 'y', '', '', '', 'One Year');
INSERT INTO `qs32_category` VALUES ('76', '0', 'QS_experience', '两年以上', '0', 'l', '', '', '', 'Two Years');
INSERT INTO `qs32_category` VALUES ('77', '0', 'QS_experience', '三年以上', '0', 's', '', '', '', 'Three Years');
INSERT INTO `qs32_category` VALUES ('78', '0', 'QS_experience', '五年以上', '0', 'w', '', '', '', 'Five Years');
INSERT INTO `qs32_category` VALUES ('79', '0', 'QS_experience', '八年以上', '0', 'b', '', '', '', 'Eight Years');
INSERT INTO `qs32_category` VALUES ('80', '0', 'QS_scale', '1-49人', '0', '', '', '', '', 'Less Than 49');
INSERT INTO `qs32_category` VALUES ('81', '0', 'QS_scale', '50-99人', '0', '', '', '', '', '50-99人');
INSERT INTO `qs32_category` VALUES ('82', '0', 'QS_scale', '100-499人', '0', '', '', '', '', '100-499人');
INSERT INTO `qs32_category` VALUES ('83', '0', 'QS_scale', '500-999人', '0', '', '', '', '', '500-999人');
INSERT INTO `qs32_category` VALUES ('84', '0', 'QS_scale', '1000-9999人人以上', '0', '', '', '', '', '1000-9999人');
INSERT INTO `qs32_category` VALUES ('85', '0', 'QS_scale', '10000人以上', '0', '', '', '', '', '10000人以上');
INSERT INTO `qs32_category` VALUES ('181', '0', 'QS_jobs_nature', '实习', '0', 's', '', '', '', 'internship');
INSERT INTO `qs32_category` VALUES ('180', '0', 'QS_wage', '30000以上/月', '0', '', '', '', '', 'More than 30000 / month');
INSERT INTO `qs32_category` VALUES ('178', '0', 'QS_wage', '15000~20000元/月', '0', '', '', '', '', '15,000~20,000元/Month');
INSERT INTO `qs32_category` VALUES ('179', '0', 'QS_wage', '20000~30000元/月', '0', '', '', '', '', '20,000~30,000元/Month');
INSERT INTO `qs32_category` VALUES ('182', '0', 'QS_education', '不限', '0', 'b', '', '', '', '不限');
INSERT INTO `qs32_category` VALUES ('183', '0', 'QS_experience', '十年以上', '0', 's', '', '', '', 'Ten Years');
INSERT INTO `qs32_category` VALUES ('176', '0', 'QS_wage', '8000~10000元/月', '0', '', '', '', '', '8,000~10,000元/Month');
INSERT INTO `qs32_category` VALUES ('134', '0', 'QS_jobtag', '环境好', '0', 'h', '0', '', '', 'Good workd Env.');
INSERT INTO `qs32_category` VALUES ('135', '0', 'QS_jobtag', '年终奖', '0', 'n', '0', '', '', '年终奖');
INSERT INTO `qs32_category` VALUES ('136', '0', 'QS_jobtag', '双休', '0', 's', '0', '', '', '双休');
INSERT INTO `qs32_category` VALUES ('137', '0', 'QS_jobtag', '五险一金', '0', 'w', '0', '', '', '五险一金');
INSERT INTO `qs32_category` VALUES ('138', '0', 'QS_jobtag', '加班费', '0', 'j', '0', '', '', '加班费');
INSERT INTO `qs32_category` VALUES ('139', '0', 'QS_jobtag', '朝九晚五', '0', 'c', '0', '', '', '朝九晚五');
INSERT INTO `qs32_category` VALUES ('140', '0', 'QS_jobtag', '美女多', '0', 'm', '0', '', '', '美女多');
INSERT INTO `qs32_category` VALUES ('141', '0', 'QS_jobtag', '帅哥多', '0', 's', '0', '', '', '帅哥多');
INSERT INTO `qs32_category` VALUES ('142', '0', 'QS_jobtag', '包食宿', '0', 'b', '0', '', '', '包食宿');
INSERT INTO `qs32_category` VALUES ('143', '0', 'QS_jobtag', '管理规范', '0', 'g', '0', '', '', '管理规范');
INSERT INTO `qs32_category` VALUES ('144', '0', 'QS_jobtag', '有提成', '0', 'y', '0', '', '', '有提成');
INSERT INTO `qs32_category` VALUES ('145', '0', 'QS_jobtag', '全勤奖', '0', 'q', '0', '', '', '全勤奖');
INSERT INTO `qs32_category` VALUES ('146', '0', 'QS_jobtag', '有年假', '0', 'y', '0', '', '', '有年假');
INSERT INTO `qs32_category` VALUES ('147', '0', 'QS_jobtag', '专车接送', '0', 'z', '0', '', '', '专车接送');
INSERT INTO `qs32_category` VALUES ('148', '0', 'QS_jobtag', '有补助', '0', 'y', '0', '', '', '有补助');
INSERT INTO `qs32_category` VALUES ('149', '0', 'QS_jobtag', '晋升快', '0', 'j', '0', '', '', '晋升快');
INSERT INTO `qs32_category` VALUES ('150', '0', 'QS_jobtag', '车贴', '0', 'c', '0', '', '', '车贴');
INSERT INTO `qs32_category` VALUES ('151', '0', 'QS_jobtag', '房贴', '0', 'f', '0', '', '', '房贴');
INSERT INTO `qs32_category` VALUES ('152', '0', 'QS_jobtag', '压力小', '0', 'y', '0', '', '', '压力小');
INSERT INTO `qs32_category` VALUES ('153', '0', 'QS_jobtag', '技术培训', '0', 'j', '0', '', '', '技术培训');
INSERT INTO `qs32_category` VALUES ('154', '0', 'QS_jobtag', '旅游', '0', 'l', '0', '', '', '旅游');
INSERT INTO `qs32_category` VALUES ('155', '0', 'QS_resumetag', '形象好', '0', 'x', '0', '', '', 'Good Impression');
INSERT INTO `qs32_category` VALUES ('156', '0', 'QS_resumetag', '气质佳', '0', 'q', '0', '', '', '气质佳');
INSERT INTO `qs32_category` VALUES ('157', '0', 'QS_resumetag', '能出差', '0', 'n', '0', '', '', '能出差');
INSERT INTO `qs32_category` VALUES ('158', '0', 'QS_resumetag', '很幽默', '0', 'h', '0', '', '', '很幽默');
INSERT INTO `qs32_category` VALUES ('159', '0', 'QS_resumetag', '技术精悍', '0', 'j', '0', '', '', '技术精悍');
INSERT INTO `qs32_category` VALUES ('160', '0', 'QS_resumetag', '有亲和力', '0', 'y', '0', '', '', '有亲和力');
INSERT INTO `qs32_category` VALUES ('161', '0', 'QS_resumetag', '身材好', '0', 's', '0', '', '', '身材好');
INSERT INTO `qs32_category` VALUES ('162', '0', 'QS_resumetag', '经验丰富', '0', 'j', '0', '', '', '经验丰富');
INSERT INTO `qs32_category` VALUES ('163', '0', 'QS_resumetag', '能加班', '0', 'n', '0', '', '', '能加班');
INSERT INTO `qs32_category` VALUES ('164', '0', 'QS_resumetag', '海归', '0', 'h', '0', '', '', '海归');
INSERT INTO `qs32_category` VALUES ('165', '0', 'QS_resumetag', '会开车', '0', 'h', '0', '', '', '会开车');
INSERT INTO `qs32_category` VALUES ('166', '0', 'QS_resumetag', '口才好', '0', 'k', '0', '', '', '口才好');
INSERT INTO `qs32_category` VALUES ('167', '0', 'QS_resumetag', '声音甜美', '0', 's', '0', '', '', '声音甜美');
INSERT INTO `qs32_category` VALUES ('168', '0', 'QS_resumetag', '会应酬', '0', 'h', '0', '', '', '会应酬');
INSERT INTO `qs32_category` VALUES ('169', '0', 'QS_resumetag', '诚实守信', '0', 'c', '0', '', '', '诚实守信');
INSERT INTO `qs32_category` VALUES ('170', '0', 'QS_resumetag', '外语好', '0', 'w', '0', '', '', '外语好');
INSERT INTO `qs32_category` VALUES ('171', '0', 'QS_resumetag', '性格开朗', '0', 'x', '0', '', '', '性格开朗');
INSERT INTO `qs32_category` VALUES ('172', '0', 'QS_resumetag', '有上进心', '0', 'y', '0', '', '', '有上进心');
INSERT INTO `qs32_category` VALUES ('173', '0', 'QS_resumetag', '人脉广', '0', 'r', '0', '', '', '人脉广');
INSERT INTO `qs32_category` VALUES ('174', '0', 'QS_resumetag', '知识丰富', '0', 'z', '0', '', '', '知识丰富');
INSERT INTO `qs32_category` VALUES ('175', '0', 'QS_resumetag', '才艺多', '0', 'c', '0', '', '', '才艺多');

-- ----------------------------
-- Table structure for qs32_category_district
-- ----------------------------
DROP TABLE IF EXISTS `qs32_category_district`;
CREATE TABLE `qs32_category_district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryname` varchar(30) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stat_jobs` varchar(15) NOT NULL,
  `stat_resume` varchar(15) NOT NULL,
  `categoryname_en` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1538 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_category_district
-- ----------------------------
INSERT INTO `qs32_category_district` VALUES ('1000', '0', '北京', '0', '', '', 'Beijing');
INSERT INTO `qs32_category_district` VALUES ('1001', '0', '上海', '1', '', '', 'Shanghai');
INSERT INTO `qs32_category_district` VALUES ('1002', '0', '天津', '2', '', '', 'Tianjin');
INSERT INTO `qs32_category_district` VALUES ('1003', '0', '重庆', '3', '', '', 'Chongqing');
INSERT INTO `qs32_category_district` VALUES ('1004', '0', '浙江省', '4', '', '', 'Zhejiang');
INSERT INTO `qs32_category_district` VALUES ('1005', '0', '广东省', '5', '', '', 'Guangdong');
INSERT INTO `qs32_category_district` VALUES ('1006', '0', '江苏省', '6', '', '', 'Jiangsu');
INSERT INTO `qs32_category_district` VALUES ('1007', '0', '河北省', '7', '', '', 'Hebei');
INSERT INTO `qs32_category_district` VALUES ('1008', '0', '山西省', '8', '', '', 'Shanxi');
INSERT INTO `qs32_category_district` VALUES ('1009', '0', '四川省', '9', '', '', 'Sichuan');
INSERT INTO `qs32_category_district` VALUES ('1010', '0', '河南省', '10', '', '', 'Henan');
INSERT INTO `qs32_category_district` VALUES ('1011', '0', '辽宁省', '11', '', '', 'Liaoning');
INSERT INTO `qs32_category_district` VALUES ('1012', '0', '吉林省', '12', '', '', 'Jilin');
INSERT INTO `qs32_category_district` VALUES ('1013', '0', '黑龙江省', '13', '', '', 'Heilongjiang');
INSERT INTO `qs32_category_district` VALUES ('1014', '0', '山东省', '14', '', '', 'Shandong');
INSERT INTO `qs32_category_district` VALUES ('1015', '0', '安徽省', '15', '', '', 'Anhui');
INSERT INTO `qs32_category_district` VALUES ('1016', '0', '福建省', '16', '', '', 'Fujian');
INSERT INTO `qs32_category_district` VALUES ('1017', '0', '湖北省', '17', '', '', 'Hubei');
INSERT INTO `qs32_category_district` VALUES ('1018', '0', '湖南省', '18', '', '', 'Hunan');
INSERT INTO `qs32_category_district` VALUES ('1019', '0', '海南省', '19', '', '', 'Hainan');
INSERT INTO `qs32_category_district` VALUES ('1020', '0', '江西省', '20', '', '', 'Jiangxi');
INSERT INTO `qs32_category_district` VALUES ('1021', '0', '贵州省', '21', '', '', 'Guizhou');
INSERT INTO `qs32_category_district` VALUES ('1022', '0', '云南省', '22', '', '', 'Yunnan');
INSERT INTO `qs32_category_district` VALUES ('1023', '0', '陕西省', '23', '', '', 'Shanxi');
INSERT INTO `qs32_category_district` VALUES ('1024', '0', '甘肃省', '24', '', '', 'Gansu');
INSERT INTO `qs32_category_district` VALUES ('1025', '0', '广西区', '25', '', '', 'Guangxi');
INSERT INTO `qs32_category_district` VALUES ('1026', '0', '宁夏区', '26', '', '', 'Ningxia');
INSERT INTO `qs32_category_district` VALUES ('1027', '0', '青海省', '27', '', '', 'Qinghai');
INSERT INTO `qs32_category_district` VALUES ('1028', '0', '新疆区', '28', '', '', 'Xinjiang');
INSERT INTO `qs32_category_district` VALUES ('1029', '0', '西藏区', '29', '', '', 'Tibet');
INSERT INTO `qs32_category_district` VALUES ('1030', '0', '内蒙古区', '30', '', '', 'Inner Mongolia');
INSERT INTO `qs32_category_district` VALUES ('1031', '0', '香港', '31', '', '', 'Hongkong');
INSERT INTO `qs32_category_district` VALUES ('1032', '0', '澳门', '32', '', '', 'Macao');
INSERT INTO `qs32_category_district` VALUES ('1033', '0', '台湾', '33', '', '', 'Taiwan');
INSERT INTO `qs32_category_district` VALUES ('1034', '1015', '马鞍山市', '34', '', '', 'Maanshan');
INSERT INTO `qs32_category_district` VALUES ('1035', '1015', '六安市', '35', '', '', 'Liuan');
INSERT INTO `qs32_category_district` VALUES ('1036', '1015', '宣城市', '36', '', '', 'Xuancheng');
INSERT INTO `qs32_category_district` VALUES ('1037', '1015', '宿州市', '37', '', '', 'Suzhou');
INSERT INTO `qs32_category_district` VALUES ('1038', '1015', '铜陵市', '38', '', '', 'Tongling');
INSERT INTO `qs32_category_district` VALUES ('1039', '1015', '芜湖市', '39', '', '', 'Wuhu');
INSERT INTO `qs32_category_district` VALUES ('1040', '1015', '亳州市', '40', '', '', 'Bozhou');
INSERT INTO `qs32_category_district` VALUES ('1041', '1015', '蚌埠市', '41', '', '', 'Bengbu');
INSERT INTO `qs32_category_district` VALUES ('1042', '1015', '安庆市', '42', '', '', 'Anqing');
INSERT INTO `qs32_category_district` VALUES ('1043', '1015', '滁州市', '43', '', '', 'Chuzhou');
INSERT INTO `qs32_category_district` VALUES ('1044', '1015', '巢湖市', '44', '', '', 'Caohu');
INSERT INTO `qs32_category_district` VALUES ('1045', '1015', '阜阳市', '45', '', '', 'Fuyang');
INSERT INTO `qs32_category_district` VALUES ('1046', '1015', '池州市', '46', '', '', 'Chizhou');
INSERT INTO `qs32_category_district` VALUES ('1047', '1015', '合肥市', '47', '', '', 'Hefei');
INSERT INTO `qs32_category_district` VALUES ('1048', '1015', '黄山市', '48', '', '', 'Huangshan');
INSERT INTO `qs32_category_district` VALUES ('1049', '1015', '淮南市', '49', '', '', 'Huainan');
INSERT INTO `qs32_category_district` VALUES ('1050', '1015', '淮北市', '50', '', '', 'Huaibei');
INSERT INTO `qs32_category_district` VALUES ('1051', '1016', '龙岩市', '51', '', '', 'Longyan');
INSERT INTO `qs32_category_district` VALUES ('1052', '1016', '三明市', '52', '', '', 'Sanming');
INSERT INTO `qs32_category_district` VALUES ('1053', '1016', '泉州市', '53', '', '', 'Quanzhou');
INSERT INTO `qs32_category_district` VALUES ('1054', '1016', '厦门市', '54', '', '', 'Xiamen');
INSERT INTO `qs32_category_district` VALUES ('1055', '1016', '漳州市', '55', '', '', 'Zhangzhou');
INSERT INTO `qs32_category_district` VALUES ('1056', '1016', '莆田市', '56', '', '', 'Putian');
INSERT INTO `qs32_category_district` VALUES ('1057', '1016', '南平市', '57', '', '', 'Manping');
INSERT INTO `qs32_category_district` VALUES ('1058', '1016', '宁德市', '58', '', '', 'Ningde');
INSERT INTO `qs32_category_district` VALUES ('1059', '1016', '福州市', '59', '', '', 'Fuzhou');
INSERT INTO `qs32_category_district` VALUES ('1060', '1024', '临夏回族自治州', '60', '', '', 'Linxia');
INSERT INTO `qs32_category_district` VALUES ('1061', '1024', '陇南地区', '61', '', '', 'Longnan');
INSERT INTO `qs32_category_district` VALUES ('1062', '1024', '兰州市', '62', '', '', 'Lanzhou');
INSERT INTO `qs32_category_district` VALUES ('1063', '1024', '天水市', '63', '', '', 'Tianshui');
INSERT INTO `qs32_category_district` VALUES ('1064', '1024', '武威市', '64', '', '', 'Wuwei');
INSERT INTO `qs32_category_district` VALUES ('1065', '1024', '庆阳市', '65', '', '', 'Qingyang');
INSERT INTO `qs32_category_district` VALUES ('1066', '1024', '张掖市', '66', '', '', 'Zhangye');
INSERT INTO `qs32_category_district` VALUES ('1067', '1024', '平凉市', '67', '', '', 'Pingliang');
INSERT INTO `qs32_category_district` VALUES ('1068', '1024', '白银市', '68', '', '', 'Baiyin');
INSERT INTO `qs32_category_district` VALUES ('1069', '1024', '定西市', '69', '', '', 'Dingxi');
INSERT INTO `qs32_category_district` VALUES ('1070', '1024', '甘南藏族自治州', '70', '', '', 'Gannan');
INSERT INTO `qs32_category_district` VALUES ('1071', '1024', '嘉峪关市', '71', '', '', 'Jiayuguan');
INSERT INTO `qs32_category_district` VALUES ('1072', '1024', '金昌市', '72', '', '', 'Jinchang');
INSERT INTO `qs32_category_district` VALUES ('1073', '1024', '酒泉市', '73', '', '', 'Jiuquan');
INSERT INTO `qs32_category_district` VALUES ('1074', '1005', '茂名市', '74', '', '', 'Maoming');
INSERT INTO `qs32_category_district` VALUES ('1075', '1005', '梅州市', '75', '', '', 'Meizhou');
INSERT INTO `qs32_category_district` VALUES ('1076', '1005', '清远市', '76', '', '', 'Qingyuan');
INSERT INTO `qs32_category_district` VALUES ('1077', '1005', '汕尾市', '77', '', '', 'Shanwei');
INSERT INTO `qs32_category_district` VALUES ('1078', '1005', '汕头市', '78', '', '', 'Shantou');
INSERT INTO `qs32_category_district` VALUES ('1079', '1005', '深圳市', '79', '', '', 'Shenzhen');
INSERT INTO `qs32_category_district` VALUES ('1080', '1005', '韶关市', '80', '', '', 'Shaoguan');
INSERT INTO `qs32_category_district` VALUES ('1081', '1005', '阳江市', '81', '', '', 'Yangjiang');
INSERT INTO `qs32_category_district` VALUES ('1082', '1005', '云浮市', '82', '', '', 'Yunfu');
INSERT INTO `qs32_category_district` VALUES ('1083', '1005', '湛江市', '83', '', '', 'Zhanjiang');
INSERT INTO `qs32_category_district` VALUES ('1084', '1005', '肇庆市', '84', '', '', 'Zhaoqing');
INSERT INTO `qs32_category_district` VALUES ('1085', '1005', '中山市', '85', '', '', 'Zhongshan');
INSERT INTO `qs32_category_district` VALUES ('1086', '1005', '珠海市', '86', '', '', 'Zhuhai');
INSERT INTO `qs32_category_district` VALUES ('1087', '1005', '潮州市', '87', '', '', 'Chaozhou');
INSERT INTO `qs32_category_district` VALUES ('1088', '1005', '东莞市', '88', '', '', 'Dongguan');
INSERT INTO `qs32_category_district` VALUES ('1089', '1005', '佛山市', '89', '', '', 'Foshan');
INSERT INTO `qs32_category_district` VALUES ('1090', '1005', '广州市', '90', '', '', 'Guangzhou');
INSERT INTO `qs32_category_district` VALUES ('1091', '1005', '河源市', '91', '', '', 'Heyuan');
INSERT INTO `qs32_category_district` VALUES ('1092', '1005', '惠州市', '92', '', '', 'Huizhou');
INSERT INTO `qs32_category_district` VALUES ('1093', '1005', '揭阳市', '93', '', '', 'Jieyang');
INSERT INTO `qs32_category_district` VALUES ('1094', '1005', '江门市', '94', '', '', 'Jiangmen');
INSERT INTO `qs32_category_district` VALUES ('1095', '1025', '柳州市', '95', '', '', 'Liuzhou');
INSERT INTO `qs32_category_district` VALUES ('1096', '1025', '崇左市', '96', '', '', 'Congzuo');
INSERT INTO `qs32_category_district` VALUES ('1097', '1025', '钦州市', '97', '', '', 'Qinzhou');
INSERT INTO `qs32_category_district` VALUES ('1098', '1025', '梧州市', '98', '', '', 'Wuzhou');
INSERT INTO `qs32_category_district` VALUES ('1099', '1025', '玉林市', '99', '', '', 'Yulin');
INSERT INTO `qs32_category_district` VALUES ('1100', '1025', '南宁市', '100', '', '', 'Nanning');
INSERT INTO `qs32_category_district` VALUES ('1101', '1025', '来宾市', '101', '', '', 'Laibin');
INSERT INTO `qs32_category_district` VALUES ('1102', '1025', '百色市', '102', '', '', 'Baise');
INSERT INTO `qs32_category_district` VALUES ('1103', '1025', '北海市', '103', '', '', 'Beihai');
INSERT INTO `qs32_category_district` VALUES ('1104', '1025', '防城港市', '104', '', '', 'Fangchengguang');
INSERT INTO `qs32_category_district` VALUES ('1105', '1025', '桂林市', '105', '', '', 'Guilin');
INSERT INTO `qs32_category_district` VALUES ('1106', '1025', '贵港市', '106', '', '', 'Guigang');
INSERT INTO `qs32_category_district` VALUES ('1107', '1025', '河池地区', '107', '', '', 'Hechi');
INSERT INTO `qs32_category_district` VALUES ('1108', '1025', '贺州地区', '108', '', '', 'Hezhou');
INSERT INTO `qs32_category_district` VALUES ('1109', '1021', '六盘水市', '109', '', '', 'Liupanshui');
INSERT INTO `qs32_category_district` VALUES ('1110', '1021', '黔西南布依族苗族自治州', '110', '', '', 'Qian Southwest');
INSERT INTO `qs32_category_district` VALUES ('1111', '1021', '黔南布依族苗族自治州', '111', '', '', 'Qian South');
INSERT INTO `qs32_category_district` VALUES ('1112', '1021', '黔东南苗族侗族自治州', '112', '', '', 'Qian Southeast');
INSERT INTO `qs32_category_district` VALUES ('1113', '1021', '铜仁地区', '113', '', '', 'Tongren');
INSERT INTO `qs32_category_district` VALUES ('1114', '1021', '安顺市', '114', '', '', 'Anshun');
INSERT INTO `qs32_category_district` VALUES ('1115', '1021', '毕节地区', '115', '', '', 'Bijie');
INSERT INTO `qs32_category_district` VALUES ('1116', '1021', '贵阳市', '116', '', '', 'Guiyang');
INSERT INTO `qs32_category_district` VALUES ('1117', '1021', '遵义市', '117', '', '', 'Zunyi');
INSERT INTO `qs32_category_district` VALUES ('1118', '1019', '三亚市', '118', '', '', 'Sanya');
INSERT INTO `qs32_category_district` VALUES ('1119', '1019', '海口市', '119', '', '', 'Haikou');
INSERT INTO `qs32_category_district` VALUES ('1120', '1007', '廊坊市', '120', '', '', 'Langfang');
INSERT INTO `qs32_category_district` VALUES ('1121', '1007', '秦皇岛市', '121', '', '', 'Qinhuangdao');
INSERT INTO `qs32_category_district` VALUES ('1122', '1007', '邢台市', '122', '', '', 'Xingtai');
INSERT INTO `qs32_category_district` VALUES ('1123', '1007', '石家庄市', '123', '', '', 'Shijiazhuang');
INSERT INTO `qs32_category_district` VALUES ('1124', '1007', '唐山市', '124', '', '', 'Tangshan');
INSERT INTO `qs32_category_district` VALUES ('1125', '1007', '张家口市', '125', '', '', 'Zhangjiakou');
INSERT INTO `qs32_category_district` VALUES ('1126', '1007', '保定市', '126', '', '', 'Baoding');
INSERT INTO `qs32_category_district` VALUES ('1127', '1007', '沧州市', '127', '', '', 'Cangzhou');
INSERT INTO `qs32_category_district` VALUES ('1128', '1007', '承德市', '128', '', '', 'Chengde');
INSERT INTO `qs32_category_district` VALUES ('1129', '1007', '衡水市', '129', '', '', 'Hengshui');
INSERT INTO `qs32_category_district` VALUES ('1130', '1007', '邯郸市', '130', '', '', 'Handan');
INSERT INTO `qs32_category_district` VALUES ('1131', '1010', '洛阳市', '131', '', '', 'Luoyang');
INSERT INTO `qs32_category_district` VALUES ('1132', '1010', '新乡市', '132', '', '', 'Xinxiang');
INSERT INTO `qs32_category_district` VALUES ('1133', '1010', '许昌市', '133', '', '', 'Xuchang');
INSERT INTO `qs32_category_district` VALUES ('1134', '1010', '信阳市', '134', '', '', 'Xinyang');
INSERT INTO `qs32_category_district` VALUES ('1135', '1010', '商丘市', '135', '', '', 'Shangqiu');
INSERT INTO `qs32_category_district` VALUES ('1136', '1010', '三门峡市', '136', '', '', 'Sanmenxia');
INSERT INTO `qs32_category_district` VALUES ('1137', '1010', '濮阳市', '137', '', '', 'Puyang');
INSERT INTO `qs32_category_district` VALUES ('1138', '1010', '漯河市', '138', '', '', 'Luohe');
INSERT INTO `qs32_category_district` VALUES ('1139', '1010', '南阳市', '139', '', '', 'Nanyang');
INSERT INTO `qs32_category_district` VALUES ('1140', '1010', '平顶山市', '140', '', '', 'Pingdingshan');
INSERT INTO `qs32_category_district` VALUES ('1141', '1010', '周口市', '141', '', '', 'Zhoukou');
INSERT INTO `qs32_category_district` VALUES ('1142', '1010', '郑州市', '142', '', '', 'Zhengzhou');
INSERT INTO `qs32_category_district` VALUES ('1143', '1010', '安阳市', '143', '', '', 'Anyang');
INSERT INTO `qs32_category_district` VALUES ('1144', '1010', '鹤壁市', '144', '', '', 'Hebi');
INSERT INTO `qs32_category_district` VALUES ('1145', '1010', '焦作市', '145', '', '', 'Jiaozuo');
INSERT INTO `qs32_category_district` VALUES ('1146', '1010', '开封市', '146', '', '', 'Kaifeng');
INSERT INTO `qs32_category_district` VALUES ('1147', '1010', '驻马店市', '147', '', '', 'Zhumadian');
INSERT INTO `qs32_category_district` VALUES ('1148', '1013', '绥化市', '148', '', '', 'Suihua');
INSERT INTO `qs32_category_district` VALUES ('1149', '1013', '双鸭山市', '149', '', '', 'Shuangyashan');
INSERT INTO `qs32_category_district` VALUES ('1150', '1013', '伊春市', '150', '', '', 'Yichun');
INSERT INTO `qs32_category_district` VALUES ('1151', '1013', '齐齐哈尔市', '151', '', '', 'Qiqihar');
INSERT INTO `qs32_category_district` VALUES ('1152', '1013', '牡丹江市', '152', '', '', 'Mudanjiang');
INSERT INTO `qs32_category_district` VALUES ('1153', '1013', '七台河市', '153', '', '', 'Qitaihe');
INSERT INTO `qs32_category_district` VALUES ('1154', '1013', '大庆市', '154', '', '', 'Daqing');
INSERT INTO `qs32_category_district` VALUES ('1155', '1013', '大兴安岭地区', '155', '', '', 'Daxinganling');
INSERT INTO `qs32_category_district` VALUES ('1156', '1013', '哈尔滨市', '156', '', '', 'Harbing');
INSERT INTO `qs32_category_district` VALUES ('1157', '1013', '黑河市', '157', '', '', 'Heihe');
INSERT INTO `qs32_category_district` VALUES ('1158', '1013', '鹤岗市', '158', '', '', 'Hegang');
INSERT INTO `qs32_category_district` VALUES ('1159', '1013', '佳木斯市', '159', '', '', 'Jiamusi');
INSERT INTO `qs32_category_district` VALUES ('1160', '1013', '鸡西市', '160', '', '', 'Jixi');
INSERT INTO `qs32_category_district` VALUES ('1161', '1017', '孝感市', '161', '', '', 'Xiaogan');
INSERT INTO `qs32_category_district` VALUES ('1162', '1017', '随州市', '162', '', '', 'Suizhou');
INSERT INTO `qs32_category_district` VALUES ('1163', '1017', '十堰市', '163', '', '', 'Shiyan');
INSERT INTO `qs32_category_district` VALUES ('1164', '1017', '咸宁市', '164', '', '', 'Xianning');
INSERT INTO `qs32_category_district` VALUES ('1165', '1017', '襄樊市', '165', '', '', 'Xiangfan');
INSERT INTO `qs32_category_district` VALUES ('1166', '1017', '武汉市', '166', '', '', 'Wuhan');
INSERT INTO `qs32_category_district` VALUES ('1167', '1017', '宜昌市', '167', '', '', 'Yichang');
INSERT INTO `qs32_category_district` VALUES ('1168', '1017', '鄂州市', '168', '', '', 'Ezhou');
INSERT INTO `qs32_category_district` VALUES ('1169', '1017', '恩施市', '169', '', '', 'Enshi');
INSERT INTO `qs32_category_district` VALUES ('1170', '1017', '黄石市', '170', '', '', 'Huangshi');
INSERT INTO `qs32_category_district` VALUES ('1171', '1017', '黄冈市', '171', '', '', 'Huanggang');
INSERT INTO `qs32_category_district` VALUES ('1172', '1017', '荆门市', '172', '', '', 'Jingmen');
INSERT INTO `qs32_category_district` VALUES ('1173', '1017', '荆州市', '173', '', '', 'Jingzhou');
INSERT INTO `qs32_category_district` VALUES ('1174', '1018', '娄底市', '174', '', '', 'Loudi');
INSERT INTO `qs32_category_district` VALUES ('1175', '1018', '邵阳市', '175', '', '', 'Shaoyang');
INSERT INTO `qs32_category_district` VALUES ('1176', '1018', '湘潭市', '176', '', '', 'Xiangtan');
INSERT INTO `qs32_category_district` VALUES ('1177', '1018', '湘西土家族苗族自治州', '177', '', '', 'Xiangxi');
INSERT INTO `qs32_category_district` VALUES ('1178', '1018', '岳阳市', '178', '', '', 'Yueyang');
INSERT INTO `qs32_category_district` VALUES ('1179', '1018', '永州市', '179', '', '', 'Yongzhou');
INSERT INTO `qs32_category_district` VALUES ('1180', '1018', '张家界市', '180', '', '', 'Zhangjiajie');
INSERT INTO `qs32_category_district` VALUES ('1181', '1018', '益阳市', '181', '', '', 'Yiyang');
INSERT INTO `qs32_category_district` VALUES ('1182', '1018', '株洲市', '182', '', '', 'Zhuzhou');
INSERT INTO `qs32_category_district` VALUES ('1183', '1018', '常德市', '183', '', '', 'Changde');
INSERT INTO `qs32_category_district` VALUES ('1184', '1018', '长沙市', '184', '', '', 'Changsha');
INSERT INTO `qs32_category_district` VALUES ('1185', '1018', '郴州市', '185', '', '', 'Chenzhou');
INSERT INTO `qs32_category_district` VALUES ('1186', '1018', '衡阳市', '186', '', '', 'Hengyang');
INSERT INTO `qs32_category_district` VALUES ('1187', '1018', '怀化市', '187', '', '', 'Huaihua');
INSERT INTO `qs32_category_district` VALUES ('1188', '1012', '辽源市', '188', '', '', 'Liaoyuan');
INSERT INTO `qs32_category_district` VALUES ('1189', '1012', '松原市', '189', '', '', 'Songyuan');
INSERT INTO `qs32_category_district` VALUES ('1190', '1012', '四平市', '190', '', '', 'Siping');
INSERT INTO `qs32_category_district` VALUES ('1191', '1012', '通化市', '191', '', '', 'Tonghua');
INSERT INTO `qs32_category_district` VALUES ('1192', '1012', '延边朝鲜族自治州', '192', '', '', 'Yanbian');
INSERT INTO `qs32_category_district` VALUES ('1193', '1012', '白山市', '193', '', '', 'Baishan');
INSERT INTO `qs32_category_district` VALUES ('1194', '1012', '白城市', '194', '', '', 'Baicheng');
INSERT INTO `qs32_category_district` VALUES ('1195', '1012', '长春市', '195', '', '', 'Changchun');
INSERT INTO `qs32_category_district` VALUES ('1196', '1012', '吉林市', '196', '', '', 'Jilin');
INSERT INTO `qs32_category_district` VALUES ('1197', '1006', '连云港市', '197', '', '', 'Lianyungang');
INSERT INTO `qs32_category_district` VALUES ('1198', '1006', '徐州市', '198', '', '', 'Xuzhou');
INSERT INTO `qs32_category_district` VALUES ('1199', '1006', '苏州市', '199', '', '', 'Suzhou');
INSERT INTO `qs32_category_district` VALUES ('1200', '1006', '宿迁市', '200', '', '', 'Suqian');
INSERT INTO `qs32_category_district` VALUES ('1201', '1006', '泰州市', '201', '', '', 'Taizhou');
INSERT INTO `qs32_category_district` VALUES ('1202', '1006', '无锡市', '202', '', '', 'Wuxi');
INSERT INTO `qs32_category_district` VALUES ('1203', '1006', '扬州市', '203', '', '', 'Yangzhou');
INSERT INTO `qs32_category_district` VALUES ('1204', '1006', '盐城市', '204', '', '', 'Yancheng');
INSERT INTO `qs32_category_district` VALUES ('1205', '1006', '镇江市', '205', '', '', 'Zhenjiang');
INSERT INTO `qs32_category_district` VALUES ('1206', '1006', '南通市', '206', '', '', 'Nantong');
INSERT INTO `qs32_category_district` VALUES ('1207', '1006', '南京市', '207', '', '', 'Nanjing');
INSERT INTO `qs32_category_district` VALUES ('1208', '1006', '常州市', '208', '', '', 'Changzhou');
INSERT INTO `qs32_category_district` VALUES ('1209', '1006', '淮安市', '209', '', '', 'Huaian');
INSERT INTO `qs32_category_district` VALUES ('1210', '1020', '新余市', '210', '', '', 'Xinyu');
INSERT INTO `qs32_category_district` VALUES ('1211', '1020', '上饶市', '211', '', '', 'Shangrao');
INSERT INTO `qs32_category_district` VALUES ('1212', '1020', '宜春市', '212', '', '', 'Yichun');
INSERT INTO `qs32_category_district` VALUES ('1213', '1020', '鹰潭市', '213', '', '', 'Yingtan');
INSERT INTO `qs32_category_district` VALUES ('1214', '1020', '南昌市', '214', '', '', 'Nanchang');
INSERT INTO `qs32_category_district` VALUES ('1215', '1020', '萍乡市', '215', '', '', 'Pingxiang');
INSERT INTO `qs32_category_district` VALUES ('1216', '1020', '赣州市', '216', '', '', 'Ganzhou');
INSERT INTO `qs32_category_district` VALUES ('1217', '1020', '抚州市', '217', '', '', 'Fuzhou');
INSERT INTO `qs32_category_district` VALUES ('1218', '1020', '吉安市', '218', '', '', 'Jian');
INSERT INTO `qs32_category_district` VALUES ('1219', '1020', '九江市', '219', '', '', 'Jiujiang');
INSERT INTO `qs32_category_district` VALUES ('1220', '1020', '景德镇市', '220', '', '', 'Jingdezhen');
INSERT INTO `qs32_category_district` VALUES ('1221', '1011', '辽阳市', '221', '', '', 'Liaoyang');
INSERT INTO `qs32_category_district` VALUES ('1222', '1011', '沈阳市', '222', '', '', 'Shenyang');
INSERT INTO `qs32_category_district` VALUES ('1223', '1011', '铁岭市', '223', '', '', 'Tieling');
INSERT INTO `qs32_category_district` VALUES ('1224', '1011', '营口市', '224', '', '', 'Yingkou');
INSERT INTO `qs32_category_district` VALUES ('1225', '1011', '盘锦市', '225', '', '', 'Panjin');
INSERT INTO `qs32_category_district` VALUES ('1226', '1011', '鞍山市', '226', '', '', 'Anshan');
INSERT INTO `qs32_category_district` VALUES ('1227', '1011', '本溪市', '227', '', '', 'Benxi');
INSERT INTO `qs32_category_district` VALUES ('1228', '1011', '朝阳市', '228', '', '', 'Chaoyang');
INSERT INTO `qs32_category_district` VALUES ('1229', '1011', '大连市', '229', '', '', 'Dalian');
INSERT INTO `qs32_category_district` VALUES ('1230', '1011', '丹东市', '230', '', '', 'Dandong');
INSERT INTO `qs32_category_district` VALUES ('1231', '1011', '抚顺市', '231', '', '', 'Fushun');
INSERT INTO `qs32_category_district` VALUES ('1232', '1011', '阜新市', '232', '', '', 'Fuxin');
INSERT INTO `qs32_category_district` VALUES ('1233', '1011', '葫芦岛市', '233', '', '', 'Huludao');
INSERT INTO `qs32_category_district` VALUES ('1234', '1011', '锦州市', '234', '', '', 'Jinzhou');
INSERT INTO `qs32_category_district` VALUES ('1235', '1030', '兴安盟', '235', '', '', 'Xingan');
INSERT INTO `qs32_category_district` VALUES ('1236', '1030', '乌兰察布市', '236', '', '', 'Wulanchabu');
INSERT INTO `qs32_category_district` VALUES ('1237', '1030', '乌海市', '237', '', '', 'Wuhai');
INSERT INTO `qs32_category_district` VALUES ('1238', '1030', '锡林郭勒盟', '238', '', '', 'Xilinguole');
INSERT INTO `qs32_category_district` VALUES ('1239', '1030', '通辽市', '239', '', '', 'Tongliao');
INSERT INTO `qs32_category_district` VALUES ('1240', '1030', '巴彦淖尔市', '240', '', '', 'Bayanzhuoer');
INSERT INTO `qs32_category_district` VALUES ('1241', '1030', '包头市', '241', '', '', 'Baotou');
INSERT INTO `qs32_category_district` VALUES ('1242', '1030', '阿拉善盟', '242', '', '', 'Alashan');
INSERT INTO `qs32_category_district` VALUES ('1243', '1030', '赤峰市', '243', '', '', 'Chifeng');
INSERT INTO `qs32_category_district` VALUES ('1244', '1030', '鄂尔多斯市', '244', '', '', 'Erduosi');
INSERT INTO `qs32_category_district` VALUES ('1245', '1030', '呼伦贝尔市', '245', '', '', 'Hulunbeir');
INSERT INTO `qs32_category_district` VALUES ('1246', '1030', '呼和浩特市', '246', '', '', 'Huhehaote');
INSERT INTO `qs32_category_district` VALUES ('1247', '1026', '石嘴山市', '247', '', '', 'Shizuishan');
INSERT INTO `qs32_category_district` VALUES ('1248', '1026', '吴忠市', '248', '', '', 'Wuzhong');
INSERT INTO `qs32_category_district` VALUES ('1249', '1026', '银川市', '249', '', '', 'Yinchuan');
INSERT INTO `qs32_category_district` VALUES ('1250', '1026', '固原市', '250', '', '', 'Guyuan');
INSERT INTO `qs32_category_district` VALUES ('1251', '1027', '西宁市', '251', '', '', 'Xining');
INSERT INTO `qs32_category_district` VALUES ('1252', '1027', '玉树藏族自治州', '252', '', '', 'Yushu');
INSERT INTO `qs32_category_district` VALUES ('1253', '1027', '果洛藏族自治州', '253', '', '', 'Guoluo');
INSERT INTO `qs32_category_district` VALUES ('1254', '1027', '海西蒙古族藏族自治州', '254', '', '', 'Haixi');
INSERT INTO `qs32_category_district` VALUES ('1255', '1027', '海南藏族自治州', '255', '', '', 'Hainan');
INSERT INTO `qs32_category_district` VALUES ('1256', '1027', '海北藏族自治州', '256', '', '', 'Haibei');
INSERT INTO `qs32_category_district` VALUES ('1257', '1027', '海东地区', '257', '', '', 'Haidong');
INSERT INTO `qs32_category_district` VALUES ('1258', '1027', '黄南藏族自治州', '258', '', '', 'Huangnan');
INSERT INTO `qs32_category_district` VALUES ('1259', '1014', '临沂市', '259', '', '', 'Linyi');
INSERT INTO `qs32_category_district` VALUES ('1260', '1014', '聊城市', '260', '', '', 'Liaocheng');
INSERT INTO `qs32_category_district` VALUES ('1261', '1014', '莱芜市', '261', '', '', 'Laiwu');
INSERT INTO `qs32_category_district` VALUES ('1262', '1014', '青岛市', '262', '', '', 'Qingdao');
INSERT INTO `qs32_category_district` VALUES ('1263', '1014', '日照市', '263', '', '', 'Rizhao');
INSERT INTO `qs32_category_district` VALUES ('1264', '1014', '泰安市', '264', '', '', 'Taian');
INSERT INTO `qs32_category_district` VALUES ('1265', '1014', '潍坊市', '265', '', '', 'Weifang');
INSERT INTO `qs32_category_district` VALUES ('1266', '1014', '威海市', '266', '', '', 'Weihai');
INSERT INTO `qs32_category_district` VALUES ('1267', '1014', '烟台市', '267', '', '', 'Yantai');
INSERT INTO `qs32_category_district` VALUES ('1268', '1014', '枣庄市', '268', '', '', 'Zaozhuang');
INSERT INTO `qs32_category_district` VALUES ('1269', '1014', '滨州市', '269', '', '', 'Binzhou');
INSERT INTO `qs32_category_district` VALUES ('1270', '1014', '德州市', '270', '', '', 'Dezhou');
INSERT INTO `qs32_category_district` VALUES ('1271', '1014', '东营市', '271', '', '', 'Dongying');
INSERT INTO `qs32_category_district` VALUES ('1272', '1014', '菏泽市', '272', '', '', 'Heze');
INSERT INTO `qs32_category_district` VALUES ('1273', '1014', '济南市', '273', '', '', 'Jinan');
INSERT INTO `qs32_category_district` VALUES ('1274', '1014', '济宁市', '274', '', '', 'Jining');
INSERT INTO `qs32_category_district` VALUES ('1275', '1014', '淄博市', '275', '', '', 'Zibo');
INSERT INTO `qs32_category_district` VALUES ('1276', '1008', '吕梁市', '276', '', '', 'Lvliang');
INSERT INTO `qs32_category_district` VALUES ('1277', '1008', '临汾市', '277', '', '', 'Linfen');
INSERT INTO `qs32_category_district` VALUES ('1278', '1008', '忻州市', '278', '', '', 'Xinzhou');
INSERT INTO `qs32_category_district` VALUES ('1279', '1008', '朔州市', '279', '', '', 'Shuozhou');
INSERT INTO `qs32_category_district` VALUES ('1280', '1008', '太原市', '280', '', '', 'Taiyuan');
INSERT INTO `qs32_category_district` VALUES ('1281', '1008', '阳泉市', '281', '', '', 'Yangquan');
INSERT INTO `qs32_category_district` VALUES ('1282', '1008', '运城市', '282', '', '', 'Yuncheng');
INSERT INTO `qs32_category_district` VALUES ('1283', '1008', '长治市', '283', '', '', 'Changzhi');
INSERT INTO `qs32_category_district` VALUES ('1284', '1008', '大同市', '284', '', '', 'Datong');
INSERT INTO `qs32_category_district` VALUES ('1285', '1008', '晋中市', '285', '', '', 'Jinzhong');
INSERT INTO `qs32_category_district` VALUES ('1286', '1008', '晋城市', '286', '', '', 'Jincheng');
INSERT INTO `qs32_category_district` VALUES ('1287', '1023', '商洛市', '287', '', '', 'Shangluo');
INSERT INTO `qs32_category_district` VALUES ('1288', '1023', '咸阳市', '288', '', '', 'Xianyang');
INSERT INTO `qs32_category_district` VALUES ('1289', '1023', '铜川市', '289', '', '', 'Tongchuan');
INSERT INTO `qs32_category_district` VALUES ('1290', '1023', '渭南市', '290', '', '', 'Weinan');
INSERT INTO `qs32_category_district` VALUES ('1291', '1023', '西安市', '291', '', '', 'Xian');
INSERT INTO `qs32_category_district` VALUES ('1292', '1023', '延安市', '292', '', '', 'Yanan');
INSERT INTO `qs32_category_district` VALUES ('1293', '1023', '榆林市', '293', '', '', 'Yulin');
INSERT INTO `qs32_category_district` VALUES ('1294', '1023', '安康市', '294', '', '', 'Ankang');
INSERT INTO `qs32_category_district` VALUES ('1295', '1023', '宝鸡市', '295', '', '', 'Baoji');
INSERT INTO `qs32_category_district` VALUES ('1296', '1023', '汉中市', '296', '', '', 'Hanzhong');
INSERT INTO `qs32_category_district` VALUES ('1297', '1009', '绵阳市', '297', '', '', 'Mianyang');
INSERT INTO `qs32_category_district` VALUES ('1298', '1009', '泸州市', '298', '', '', 'Luzhou');
INSERT INTO `qs32_category_district` VALUES ('1299', '1009', '乐山市', '299', '', '', 'Leshan');
INSERT INTO `qs32_category_district` VALUES ('1300', '1009', '凉山彝族自治州', '300', '', '', 'Liangshan');
INSERT INTO `qs32_category_district` VALUES ('1301', '1009', '眉山市', '301', '', '', 'Meishan');
INSERT INTO `qs32_category_district` VALUES ('1302', '1009', '遂宁市', '302', '', '', 'Suining');
INSERT INTO `qs32_category_district` VALUES ('1303', '1009', '雅安市', '303', '', '', 'Yaan');
INSERT INTO `qs32_category_district` VALUES ('1304', '1009', '宜宾市', '304', '', '', 'Yibin');
INSERT INTO `qs32_category_district` VALUES ('1305', '1009', '攀枝花市', '305', '', '', 'Panzhihua');
INSERT INTO `qs32_category_district` VALUES ('1306', '1009', '南充市', '306', '', '', 'Nanchong');
INSERT INTO `qs32_category_district` VALUES ('1307', '1009', '内江市', '307', '', '', 'Neijiang');
INSERT INTO `qs32_category_district` VALUES ('1308', '1009', '巴中市', '308', '', '', 'Bazhong');
INSERT INTO `qs32_category_district` VALUES ('1309', '1009', '阿坝藏族羌族自治州', '309', '', '', 'Aba');
INSERT INTO `qs32_category_district` VALUES ('1310', '1009', '成都市', '310', '', '', 'Chengdu');
INSERT INTO `qs32_category_district` VALUES ('1311', '1009', '达州市', '311', '', '', 'Dazhou');
INSERT INTO `qs32_category_district` VALUES ('1312', '1009', '德阳市', '312', '', '', 'Deyang');
INSERT INTO `qs32_category_district` VALUES ('1313', '1009', '甘孜藏族自治州', '313', '', '', 'Ganzi');
INSERT INTO `qs32_category_district` VALUES ('1314', '1009', '广元市', '314', '', '', 'Guangyuan');
INSERT INTO `qs32_category_district` VALUES ('1315', '1009', '广安市', '315', '', '', 'Guangan');
INSERT INTO `qs32_category_district` VALUES ('1316', '1009', '资阳市', '316', '', '', 'Ziyang');
INSERT INTO `qs32_category_district` VALUES ('1317', '1009', '自贡市', '317', '', '', 'Zigong');
INSERT INTO `qs32_category_district` VALUES ('1318', '1029', '林芝地区', '318', '', '', 'Linzhi');
INSERT INTO `qs32_category_district` VALUES ('1319', '1029', '拉萨市', '319', '', '', 'Lasa');
INSERT INTO `qs32_category_district` VALUES ('1320', '1029', '日喀则地区', '320', '', '', 'Rikaze');
INSERT INTO `qs32_category_district` VALUES ('1321', '1029', '山南地区', '321', '', '', 'Shannan');
INSERT INTO `qs32_category_district` VALUES ('1322', '1029', '那曲地区', '322', '', '', 'Naqu');
INSERT INTO `qs32_category_district` VALUES ('1323', '1029', '阿里地区', '323', '', '', 'Ali');
INSERT INTO `qs32_category_district` VALUES ('1324', '1029', '昌都地区', '324', '', '', 'Changdu');
INSERT INTO `qs32_category_district` VALUES ('1325', '1028', '吐鲁番市', '325', '', '', 'Tulufan');
INSERT INTO `qs32_category_district` VALUES ('1326', '1028', '乌鲁木齐市', '326', '', '', 'Wulumuqi');
INSERT INTO `qs32_category_district` VALUES ('1327', '1028', '伊宁市', '327', '', '', 'Yining');
INSERT INTO `qs32_category_district` VALUES ('1328', '1028', '阿图什市', '328', '', '', 'Atushi');
INSERT INTO `qs32_category_district` VALUES ('1329', '1028', '阿克苏市', '329', '', '', 'Akesu');
INSERT INTO `qs32_category_district` VALUES ('1330', '1028', '昌吉市', '330', '', '', 'Changji');
INSERT INTO `qs32_category_district` VALUES ('1331', '1028', '博乐市', '331', '', '', 'Bole');
INSERT INTO `qs32_category_district` VALUES ('1332', '1028', '哈密市', '332', '', '', 'Hami');
INSERT INTO `qs32_category_district` VALUES ('1333', '1028', '和田市', '333', '', '', 'Hetian');
INSERT INTO `qs32_category_district` VALUES ('1334', '1028', '库尔勒市', '334', '', '', 'Kuerle');
INSERT INTO `qs32_category_district` VALUES ('1335', '1028', '克拉玛依市', '335', '', '', 'Kelamayi');
INSERT INTO `qs32_category_district` VALUES ('1336', '1028', '喀什市', '336', '', '', 'Kashi');
INSERT INTO `qs32_category_district` VALUES ('1337', '1022', '临沧市', '337', '', '', 'Lincang');
INSERT INTO `qs32_category_district` VALUES ('1338', '1022', '丽江市', '338', '', '', 'Lijiang');
INSERT INTO `qs32_category_district` VALUES ('1339', '1022', '昆明市', '339', '', '', 'Kunming');
INSERT INTO `qs32_category_district` VALUES ('1340', '1022', '潞西市', '340', '', '', 'Luxi');
INSERT INTO `qs32_category_district` VALUES ('1341', '1022', '曲靖市', '341', '', '', 'Qujing');
INSERT INTO `qs32_category_district` VALUES ('1342', '1022', '思茅市', '342', '', '', 'Simao');
INSERT INTO `qs32_category_district` VALUES ('1343', '1022', '文山壮族苗族自治州', '343', '', '', 'Wenshan');
INSERT INTO `qs32_category_district` VALUES ('1344', '1022', '昭通市', '344', '', '', 'Zhaotong');
INSERT INTO `qs32_category_district` VALUES ('1345', '1022', '玉溪市', '345', '', '', 'Yuxi');
INSERT INTO `qs32_category_district` VALUES ('1346', '1022', '怒江傈僳族自治州', '346', '', '', 'Nujiang');
INSERT INTO `qs32_category_district` VALUES ('1347', '1022', '保山市', '347', '', '', 'Baoshan');
INSERT INTO `qs32_category_district` VALUES ('1348', '1022', '楚雄市', '348', '', '', 'Chuxiong');
INSERT INTO `qs32_category_district` VALUES ('1349', '1022', '大理市', '349', '', '', 'Dali');
INSERT INTO `qs32_category_district` VALUES ('1350', '1022', '迪庆藏族自治州', '350', '', '', 'Diqing');
INSERT INTO `qs32_category_district` VALUES ('1351', '1022', '个旧市', '351', '', '', 'Gejiu');
INSERT INTO `qs32_category_district` VALUES ('1352', '1022', '景洪市', '352', '', '', 'Jinghong');
INSERT INTO `qs32_category_district` VALUES ('1353', '1004', '衢州市', '353', '', '', 'Quzhou');
INSERT INTO `qs32_category_district` VALUES ('1354', '1004', '丽水市', '354', '', '', 'Lishui');
INSERT INTO `qs32_category_district` VALUES ('1355', '1004', '绍兴市', '355', '', '', 'Shaoxing');
INSERT INTO `qs32_category_district` VALUES ('1356', '1004', '温州市', '356', '', '', 'Wenzhou');
INSERT INTO `qs32_category_district` VALUES ('1357', '1004', '台州市', '357', '', '', 'Taizhou');
INSERT INTO `qs32_category_district` VALUES ('1358', '1004', '宁波市', '358', '', '', 'Ningbo');
INSERT INTO `qs32_category_district` VALUES ('1359', '1004', '舟山市', '359', '', '', 'Zhoushan');
INSERT INTO `qs32_category_district` VALUES ('1360', '1004', '杭州市', '360', '', '', 'Hangzhou');
INSERT INTO `qs32_category_district` VALUES ('1361', '1004', '湖州市', '361', '', '', 'Huzhou');
INSERT INTO `qs32_category_district` VALUES ('1362', '1004', '嘉兴市', '362', '', '', 'Jiaxing');
INSERT INTO `qs32_category_district` VALUES ('1363', '1004', '金华市', '363', '', '', 'Jinhua');
INSERT INTO `qs32_category_district` VALUES ('1364', '1028', '石河子市', '364', '', '', 'Shihezi');
INSERT INTO `qs32_category_district` VALUES ('1365', '1028', '阿拉尔市', '365', '', '', 'Alaer');
INSERT INTO `qs32_category_district` VALUES ('1366', '1028', '图木舒克市', '366', '', '', 'Tumushuke');
INSERT INTO `qs32_category_district` VALUES ('1367', '1028', '五加渠市', '367', '', '', 'Wujiaqu');
INSERT INTO `qs32_category_district` VALUES ('1368', '1000', '北京市', '368', '', '', 'Beijing');
INSERT INTO `qs32_category_district` VALUES ('1369', '1001', '上海市', '369', '', '', 'Shanghai');
INSERT INTO `qs32_category_district` VALUES ('1370', '1002', '天津市', '370', '', '', 'Tianjin');
INSERT INTO `qs32_category_district` VALUES ('1371', '1003', '重庆市', '371', '', '', 'Chongqing');
INSERT INTO `qs32_category_district` VALUES ('1372', '1372', '香港', '372', '', '', 'Hongkong');
INSERT INTO `qs32_category_district` VALUES ('1373', '1373', '澳门', '373', '', '', 'Macao');
INSERT INTO `qs32_category_district` VALUES ('1374', '1374', '台湾', '374', '', '', 'Taiwan');
INSERT INTO `qs32_category_district` VALUES ('1375', '1019', '白沙黎族自治县', '375', '', '', 'Baisha');
INSERT INTO `qs32_category_district` VALUES ('1376', '1019', '保亭黎族苗族自治县', '376', '', '', 'Baoting');
INSERT INTO `qs32_category_district` VALUES ('1377', '1019', '昌江黎族自治县', '377', '', '', 'Changjiang');
INSERT INTO `qs32_category_district` VALUES ('1378', '1019', '澄迈县', '378', '', '', 'Chengmai');
INSERT INTO `qs32_category_district` VALUES ('1379', '1019', '定安县', '379', '', '', 'Dingan');
INSERT INTO `qs32_category_district` VALUES ('1380', '1019', '东方市', '380', '', '', 'Dongfang');
INSERT INTO `qs32_category_district` VALUES ('1381', '1019', '乐东黎族自治县', '381', '', '', 'Ledong');
INSERT INTO `qs32_category_district` VALUES ('1382', '1019', '临高县', '382', '', '', 'Lingao');
INSERT INTO `qs32_category_district` VALUES ('1383', '1019', '陵水黎族自治县', '383', '', '', 'Lingshui');
INSERT INTO `qs32_category_district` VALUES ('1384', '1019', '琼海市', '384', '', '', 'Qionghai');
INSERT INTO `qs32_category_district` VALUES ('1385', '1019', '琼中黎族苗族自治县', '385', '', '', 'Qiongzhong');
INSERT INTO `qs32_category_district` VALUES ('1386', '1019', '屯昌县', '386', '', '', 'Tunchang');
INSERT INTO `qs32_category_district` VALUES ('1387', '1019', '万宁市', '387', '', '', 'Wanning');
INSERT INTO `qs32_category_district` VALUES ('1388', '1019', '文昌市', '388', '', '', 'Wenchang');
INSERT INTO `qs32_category_district` VALUES ('1389', '1019', '五指山市', '389', '', '', 'Wuzhishan');
INSERT INTO `qs32_category_district` VALUES ('1390', '1019', '儋州市', '390', '', '', 'Danzhou');
INSERT INTO `qs32_category_district` VALUES ('1391', '1010', '济源市', '391', '', '', 'Jiyuan');
INSERT INTO `qs32_category_district` VALUES ('1392', '1017', '潜江市', '392', '', '', 'Qianjiang');
INSERT INTO `qs32_category_district` VALUES ('1393', '1017', '神农架林区', '393', '', '', 'Shennongjia');
INSERT INTO `qs32_category_district` VALUES ('1394', '1017', '天门市', '394', '', '', 'Tianmen');
INSERT INTO `qs32_category_district` VALUES ('1395', '1017', '仙桃市', '395', '', '', 'Xiantao');
INSERT INTO `qs32_category_district` VALUES ('1396', '1025', '凭祥市', '396', '', '', 'Pinxiang');
INSERT INTO `qs32_category_district` VALUES ('1397', '1368', '东城区', '397', '', '', 'Dongcheng');
INSERT INTO `qs32_category_district` VALUES ('1398', '1368', '西城区', '398', '', '', 'Xicheng');
INSERT INTO `qs32_category_district` VALUES ('1399', '1368', '崇文区', '399', '', '', 'Chongwen');
INSERT INTO `qs32_category_district` VALUES ('1400', '1368', '宣武区', '400', '', '', 'Xuanwu');
INSERT INTO `qs32_category_district` VALUES ('1401', '1368', '朝阳区', '401', '', '', 'Chaoyang');
INSERT INTO `qs32_category_district` VALUES ('1402', '1368', '海淀区', '402', '', '', 'Haidian');
INSERT INTO `qs32_category_district` VALUES ('1403', '1368', '丰台区', '403', '', '', 'Fengtai');
INSERT INTO `qs32_category_district` VALUES ('1404', '1368', '石景山区', '404', '', '', 'Shijingshan');
INSERT INTO `qs32_category_district` VALUES ('1405', '1368', '房山区', '405', '', '', 'Fangshan');
INSERT INTO `qs32_category_district` VALUES ('1406', '1368', '通州区', '406', '', '', 'Tongzhou');
INSERT INTO `qs32_category_district` VALUES ('1407', '1368', '顺义区', '407', '', '', 'Shunyi');
INSERT INTO `qs32_category_district` VALUES ('1408', '1368', '门头沟区', '408', '', '', 'Mentougou');
INSERT INTO `qs32_category_district` VALUES ('1409', '1368', '昌平区', '409', '', '', 'Changping');
INSERT INTO `qs32_category_district` VALUES ('1410', '1368', '大兴区', '410', '', '', 'Daxing');
INSERT INTO `qs32_category_district` VALUES ('1411', '1368', '怀柔区', '411', '', '', 'Huairou');
INSERT INTO `qs32_category_district` VALUES ('1412', '1368', '平谷区', '412', '', '', 'Pinggu');
INSERT INTO `qs32_category_district` VALUES ('1413', '1368', '密云县', '413', '', '', 'Miyun');
INSERT INTO `qs32_category_district` VALUES ('1414', '1368', '延庆县', '414', '', '', 'Yanqing');
INSERT INTO `qs32_category_district` VALUES ('1415', '1370', '和平区', '415', '', '', 'Heping');
INSERT INTO `qs32_category_district` VALUES ('1416', '1370', '河东区', '416', '', '', 'Hedong');
INSERT INTO `qs32_category_district` VALUES ('1417', '1370', '河西区', '417', '', '', 'Hexi');
INSERT INTO `qs32_category_district` VALUES ('1418', '1370', '南开区', '418', '', '', 'Nankai');
INSERT INTO `qs32_category_district` VALUES ('1419', '1370', '河北区', '419', '', '', 'Hebei');
INSERT INTO `qs32_category_district` VALUES ('1420', '1370', '红桥区', '420', '', '', 'Hongqiao');
INSERT INTO `qs32_category_district` VALUES ('1421', '1370', '塘沽区', '421', '', '', 'Tanggu');
INSERT INTO `qs32_category_district` VALUES ('1422', '1370', '汉沽区', '422', '', '', 'Hangu');
INSERT INTO `qs32_category_district` VALUES ('1423', '1370', '大港区', '423', '', '', 'Dagang');
INSERT INTO `qs32_category_district` VALUES ('1424', '1370', '东丽区', '424', '', '', 'Dongli');
INSERT INTO `qs32_category_district` VALUES ('1425', '1370', '西青区', '425', '', '', 'Xiqing');
INSERT INTO `qs32_category_district` VALUES ('1426', '1370', '北辰区', '426', '', '', 'Beichen');
INSERT INTO `qs32_category_district` VALUES ('1427', '1370', '津南区', '427', '', '', 'Jinnan');
INSERT INTO `qs32_category_district` VALUES ('1428', '1370', '武清区', '428', '', '', 'Wuqing');
INSERT INTO `qs32_category_district` VALUES ('1429', '1370', '宝坻区', '429', '', '', 'Baodi');
INSERT INTO `qs32_category_district` VALUES ('1430', '1370', '静海县', '430', '', '', 'Jinghai');
INSERT INTO `qs32_category_district` VALUES ('1431', '1370', '宁河县', '431', '', '', 'Ninghe');
INSERT INTO `qs32_category_district` VALUES ('1432', '1370', '蓟县', '432', '', '', 'Jixian');
INSERT INTO `qs32_category_district` VALUES ('1433', '1369', '黄浦区', '433', '', '', 'Huangpu');
INSERT INTO `qs32_category_district` VALUES ('1434', '1369', '卢湾区', '434', '', '', 'Luwan');
INSERT INTO `qs32_category_district` VALUES ('1435', '1369', '徐汇区', '435', '', '', 'Xuhui');
INSERT INTO `qs32_category_district` VALUES ('1436', '1369', '长宁区', '436', '', '', 'Changning');
INSERT INTO `qs32_category_district` VALUES ('1437', '1369', '静安区', '437', '', '', 'Jingan');
INSERT INTO `qs32_category_district` VALUES ('1438', '1369', '普陀区', '438', '', '', 'Putuo');
INSERT INTO `qs32_category_district` VALUES ('1439', '1369', '闸北区', '439', '', '', 'Zhabei');
INSERT INTO `qs32_category_district` VALUES ('1440', '1369', '虹口区', '440', '', '', 'Hongkou');
INSERT INTO `qs32_category_district` VALUES ('1441', '1369', '杨浦区', '441', '', '', 'Yangpu');
INSERT INTO `qs32_category_district` VALUES ('1442', '1369', '宝山区', '442', '', '', 'Baoshan');
INSERT INTO `qs32_category_district` VALUES ('1443', '1369', '闵行区', '443', '', '', 'Minxing');
INSERT INTO `qs32_category_district` VALUES ('1444', '1369', '嘉定区', '444', '', '', 'Jiading');
INSERT INTO `qs32_category_district` VALUES ('1445', '1369', '松江区', '445', '', '', 'Songjiang');
INSERT INTO `qs32_category_district` VALUES ('1446', '1369', '金山区', '446', '', '', 'Jinshan');
INSERT INTO `qs32_category_district` VALUES ('1447', '1369', '青浦区', '447', '', '', 'Qingpu');
INSERT INTO `qs32_category_district` VALUES ('1448', '1369', '浦东新区', '448', '', '', 'Pudong');
INSERT INTO `qs32_category_district` VALUES ('1449', '1369', '南汇区', '449', '', '', 'Nanhui');
INSERT INTO `qs32_category_district` VALUES ('1450', '1369', '奉贤区', '450', '', '', 'Fengxian');
INSERT INTO `qs32_category_district` VALUES ('1451', '1369', '崇明县', '451', '', '', 'Chongming');
INSERT INTO `qs32_category_district` VALUES ('1452', '1371', '渝中区', '452', '', '', 'Yuzhong');
INSERT INTO `qs32_category_district` VALUES ('1453', '1371', '大渡口区', '453', '', '', 'Dadukou');
INSERT INTO `qs32_category_district` VALUES ('1454', '1371', '江北区', '454', '', '', 'Jiangbei');
INSERT INTO `qs32_category_district` VALUES ('1455', '1371', '沙坪坝区', '455', '', '', 'Shapingba');
INSERT INTO `qs32_category_district` VALUES ('1456', '1371', '九龙坡区', '456', '', '', 'Jiulongpo');
INSERT INTO `qs32_category_district` VALUES ('1457', '1371', '南岸区', '457', '', '', 'Nanan');
INSERT INTO `qs32_category_district` VALUES ('1458', '1371', '北碚区', '458', '', '', 'Beibei');
INSERT INTO `qs32_category_district` VALUES ('1459', '1371', '万盛区', '459', '', '', 'Wansheng');
INSERT INTO `qs32_category_district` VALUES ('1460', '1371', '双桥区', '460', '', '', 'Shuangqiao');
INSERT INTO `qs32_category_district` VALUES ('1461', '1371', '渝北区', '461', '', '', 'Yubei');
INSERT INTO `qs32_category_district` VALUES ('1462', '1371', '巴南区', '462', '', '', 'Banan');
INSERT INTO `qs32_category_district` VALUES ('1463', '1371', '万州区', '463', '', '', 'Wanzhou');
INSERT INTO `qs32_category_district` VALUES ('1464', '1371', '涪陵区', '464', '', '', 'Fuling');
INSERT INTO `qs32_category_district` VALUES ('1465', '1371', '黔江区', '465', '', '', 'Qianjiang');
INSERT INTO `qs32_category_district` VALUES ('1466', '1371', '长寿区', '466', '', '', 'Changshou');
INSERT INTO `qs32_category_district` VALUES ('1467', '1371', '永川市', '467', '', '', 'Yongzhou');
INSERT INTO `qs32_category_district` VALUES ('1468', '1371', '合川市', '468', '', '', 'Hezhou');
INSERT INTO `qs32_category_district` VALUES ('1469', '1371', '江津市', '469', '', '', 'Jiangjin');
INSERT INTO `qs32_category_district` VALUES ('1470', '1371', '南川市', '470', '', '', 'Nanchuan');
INSERT INTO `qs32_category_district` VALUES ('1471', '1371', '綦江县', '471', '', '', 'Qijiang');
INSERT INTO `qs32_category_district` VALUES ('1472', '1371', '潼南县', '472', '', '', 'Tongnan');
INSERT INTO `qs32_category_district` VALUES ('1473', '1371', '荣昌县', '473', '', '', 'Rongchang');
INSERT INTO `qs32_category_district` VALUES ('1474', '1371', '璧山县', '474', '', '', 'Bishan');
INSERT INTO `qs32_category_district` VALUES ('1475', '1371', '大足县', '475', '', '', 'Dazu');
INSERT INTO `qs32_category_district` VALUES ('1476', '1371', '铜梁县', '476', '', '', 'Tongliang');
INSERT INTO `qs32_category_district` VALUES ('1477', '1371', '梁平县', '477', '', '', 'Liangping');
INSERT INTO `qs32_category_district` VALUES ('1478', '1371', '城口县', '478', '', '', 'Chengkou');
INSERT INTO `qs32_category_district` VALUES ('1479', '1371', '垫江县', '479', '', '', 'Dianjiang');
INSERT INTO `qs32_category_district` VALUES ('1480', '1371', '武隆县', '480', '', '', 'Wulong');
INSERT INTO `qs32_category_district` VALUES ('1481', '1371', '丰都县', '481', '', '', 'Fengdu');
INSERT INTO `qs32_category_district` VALUES ('1482', '1371', '奉节县', '482', '', '', 'Fengjie');
INSERT INTO `qs32_category_district` VALUES ('1483', '1371', '开县', '483', '', '', 'Kaixian');
INSERT INTO `qs32_category_district` VALUES ('1484', '1371', '云阳县', '484', '', '', 'Yunyang');
INSERT INTO `qs32_category_district` VALUES ('1485', '1371', '忠县', '485', '', '', 'Zhongxian');
INSERT INTO `qs32_category_district` VALUES ('1486', '1371', '巫溪县', '486', '', '', 'Wuxi');
INSERT INTO `qs32_category_district` VALUES ('1487', '1371', '巫山县', '487', '', '', 'Wushan');
INSERT INTO `qs32_category_district` VALUES ('1488', '1371', '石柱土家族自治县', '488', '', '', 'Shizhu');
INSERT INTO `qs32_category_district` VALUES ('1489', '1371', '秀山土家族苗族自治县', '489', '', '', 'Xiushan');
INSERT INTO `qs32_category_district` VALUES ('1490', '1371', '酉阳土家族苗族自治县', '490', '', '', 'Youyang');
INSERT INTO `qs32_category_district` VALUES ('1491', '1371', '彭水苗族土家族自治县', '491', '', '', 'Pengshui');
INSERT INTO `qs32_category_district` VALUES ('1492', '1123', '长安区', '492', '', '', 'Changan');
INSERT INTO `qs32_category_district` VALUES ('1493', '1123', '桥东区', '493', '', '', 'Qiaodong');
INSERT INTO `qs32_category_district` VALUES ('1494', '1123', '桥西区', '494', '', '', 'Qiaoxi');
INSERT INTO `qs32_category_district` VALUES ('1495', '1123', '新华区', '495', '', '', 'Xinhua');
INSERT INTO `qs32_category_district` VALUES ('1496', '1123', '裕华区', '496', '', '', 'Yuhua');
INSERT INTO `qs32_category_district` VALUES ('1497', '1123', '井陉矿区', '497', '', '', 'Jingxing Mining Area');
INSERT INTO `qs32_category_district` VALUES ('1498', '1123', '辛集市', '498', '', '', 'Xinji');
INSERT INTO `qs32_category_district` VALUES ('1499', '1123', '藁城市', '499', '', '', 'Gaocheng');
INSERT INTO `qs32_category_district` VALUES ('1500', '1123', '晋州市', '500', '', '', 'Jinzhou');
INSERT INTO `qs32_category_district` VALUES ('1501', '1123', '新乐市', '501', '', '', 'Xinle');
INSERT INTO `qs32_category_district` VALUES ('1502', '1123', '鹿泉市', '502', '', '', 'Luquan');
INSERT INTO `qs32_category_district` VALUES ('1503', '1123', '平山县', '503', '', '', 'Pingshan');
INSERT INTO `qs32_category_district` VALUES ('1504', '1123', '井陉县', '504', '', '', 'Jingxing');
INSERT INTO `qs32_category_district` VALUES ('1505', '1123', '栾城县', '505', '', '', 'Luancheng');
INSERT INTO `qs32_category_district` VALUES ('1506', '1123', '正定县', '506', '', '', 'Zhengding');
INSERT INTO `qs32_category_district` VALUES ('1507', '1123', '行唐县', '507', '', '', 'Xingtang');
INSERT INTO `qs32_category_district` VALUES ('1508', '1123', '灵寿县', '508', '', '', 'Lingshou');
INSERT INTO `qs32_category_district` VALUES ('1509', '1123', '高邑县', '509', '', '', 'Gaoyi');
INSERT INTO `qs32_category_district` VALUES ('1510', '1123', '赵县', '510', '', '', 'Zhaoxian');
INSERT INTO `qs32_category_district` VALUES ('1511', '1123', '赞皇县', '511', '', '', 'Zanhuang');
INSERT INTO `qs32_category_district` VALUES ('1512', '1123', '深泽县', '512', '', '', 'Shenze');
INSERT INTO `qs32_category_district` VALUES ('1513', '1123', '无极县', '513', '', '', 'Wuji');
INSERT INTO `qs32_category_district` VALUES ('1514', '1123', '元氏县', '514', '', '', 'Yuanshi');
INSERT INTO `qs32_category_district` VALUES ('1515', '1124', '路北区', '515', '', '', 'Lubei');
INSERT INTO `qs32_category_district` VALUES ('1516', '1124', '路南区', '516', '', '', 'Lunan');
INSERT INTO `qs32_category_district` VALUES ('1517', '1124', '古冶区', '517', '', '', 'Guzhi');
INSERT INTO `qs32_category_district` VALUES ('1518', '1124', '开平区', '518', '', '', 'Kaiping');
INSERT INTO `qs32_category_district` VALUES ('1519', '1124', '丰南区', '519', '', '', 'Fengnan');
INSERT INTO `qs32_category_district` VALUES ('1520', '1124', '丰润区', '520', '', '', 'Fengrun');
INSERT INTO `qs32_category_district` VALUES ('1521', '1124', '遵化市', '521', '', '', 'Zunhua');
INSERT INTO `qs32_category_district` VALUES ('1522', '1124', '迁安市', '522', '', '', 'Qianan');
INSERT INTO `qs32_category_district` VALUES ('1523', '1124', '迁西县', '523', '', '', 'Qianxi');
INSERT INTO `qs32_category_district` VALUES ('1524', '1124', '滦南县', '524', '', '', 'Luannan');
INSERT INTO `qs32_category_district` VALUES ('1525', '1124', '玉田县', '525', '', '', 'Yutian');
INSERT INTO `qs32_category_district` VALUES ('1526', '1124', '唐海县', '526', '', '', 'Tanghai');
INSERT INTO `qs32_category_district` VALUES ('1527', '1124', '乐亭县', '527', '', '', 'Leting');
INSERT INTO `qs32_category_district` VALUES ('1528', '1124', '滦县', '528', '', '', 'Luanxian');
INSERT INTO `qs32_category_district` VALUES ('1529', '1121', '海港区', '529', '', '', 'Hanggang');
INSERT INTO `qs32_category_district` VALUES ('1530', '1121', '山海关区', '530', '', '', 'Shanhaiguan');
INSERT INTO `qs32_category_district` VALUES ('1531', '1121', '北戴河区', '531', '', '', 'Beidaihe');
INSERT INTO `qs32_category_district` VALUES ('1532', '1121', '昌黎县', '532', '', '', 'Changli');
INSERT INTO `qs32_category_district` VALUES ('1533', '1121', '卢龙县', '533', '', '', 'Lulong');
INSERT INTO `qs32_category_district` VALUES ('1534', '1121', '抚宁县', '534', '', '', 'Funing');
INSERT INTO `qs32_category_district` VALUES ('1535', '1121', '青龙满族自治县', '535', '', '', 'Qinglong');
INSERT INTO `qs32_category_district` VALUES ('1536', '1130', '丛台区', '536', '', '', 'Congtai');
INSERT INTO `qs32_category_district` VALUES ('1537', '1130', '复兴区', '537', '', '', 'Fuxing');

-- ----------------------------
-- Table structure for qs32_category_group
-- ----------------------------
DROP TABLE IF EXISTS `qs32_category_group`;
CREATE TABLE `qs32_category_group` (
  `g_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_alias` varchar(60) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `g_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_category_group
-- ----------------------------
INSERT INTO `qs32_category_group` VALUES ('1', 'QS_trade', '行业分类', '1');
INSERT INTO `qs32_category_group` VALUES ('2', 'QS_company_type', '企业性质分类', '1');
INSERT INTO `qs32_category_group` VALUES ('3', 'QS_wage', '月薪分类', '1');
INSERT INTO `qs32_category_group` VALUES ('4', 'QS_jobs_nature', '职位性质分类', '1');
INSERT INTO `qs32_category_group` VALUES ('5', 'QS_education', '学历分类', '1');
INSERT INTO `qs32_category_group` VALUES ('6', 'QS_experience', '工作经验分类', '1');
INSERT INTO `qs32_category_group` VALUES ('7', 'QS_scale', '企业规模', '1');
INSERT INTO `qs32_category_group` VALUES ('8', 'QS_officebuilding', '写字楼', '1');
INSERT INTO `qs32_category_group` VALUES ('9', 'QS_street', '道路', '1');
INSERT INTO `qs32_category_group` VALUES ('10', 'QS_jobtag', '职位标签', '1');
INSERT INTO `qs32_category_group` VALUES ('11', 'QS_resumetag', '简历标签', '1');

-- ----------------------------
-- Table structure for qs32_category_jobs
-- ----------------------------
DROP TABLE IF EXISTS `qs32_category_jobs`;
CREATE TABLE `qs32_category_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stat_jobs` varchar(15) NOT NULL,
  `stat_resume` varchar(15) NOT NULL,
  `categoryname_en` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=543 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_category_jobs
-- ----------------------------
INSERT INTO `qs32_category_jobs` VALUES ('1', '0', '修造船及海洋平台', '0', '', '', 'repairing,building and offshore');
INSERT INTO `qs32_category_jobs` VALUES ('2', '1', '总监/厂长', '0', '', '', 'director');
INSERT INTO `qs32_category_jobs` VALUES ('3', '1', '项目经理/部门经理', '0', '', '', 'section manager');
INSERT INTO `qs32_category_jobs` VALUES ('4', '1', '生产管理/调度/定额', '0', '', '', 'production manager');
INSERT INTO `qs32_category_jobs` VALUES ('5', '1', '船体结构主管/建造/工程', '0', '', '', 'Hull structure');
INSERT INTO `qs32_category_jobs` VALUES ('6', '1', '轮机主管/建造/工程', '0', '', '', 'engineer');
INSERT INTO `qs32_category_jobs` VALUES ('7', '1', '管系主管/建造/工程', '0', '', '', 'piping supervisor');
INSERT INTO `qs32_category_jobs` VALUES ('8', '1', '电气主管/建造/工程', '0', '', '', 'electricion supervisor');
INSERT INTO `qs32_category_jobs` VALUES ('9', '1', '焊接工程师', '0', '', '', 'welding engineer');
INSERT INTO `qs32_category_jobs` VALUES ('10', '1', '涂装主管/建造/工程', '0', '', '', 'painting supervisor');
INSERT INTO `qs32_category_jobs` VALUES ('11', '1', '机械工程师', '0', '', '', 'engineer');
INSERT INTO `qs32_category_jobs` VALUES ('12', '1', '船东代表/机务', '0', '', '', 'superintend');
INSERT INTO `qs32_category_jobs` VALUES ('13', '1', '油漆代表', '0', '', '', 'painting service');
INSERT INTO `qs32_category_jobs` VALUES ('14', '1', '班组长/工段长', '0', '', '', 'super');
INSERT INTO `qs32_category_jobs` VALUES ('15', '1', '船坞码头基建', '0', '', '', 'foreman');
INSERT INTO `qs32_category_jobs` VALUES ('16', '1', '监造工程师', '0', '', '', 'supervisor');
INSERT INTO `qs32_category_jobs` VALUES ('17', '1', '机电设备调试', '0', '', '', 'commisionning engineer');
INSERT INTO `qs32_category_jobs` VALUES ('18', '1', '油气开采/钻井/地质等', '0', '', '', 'energy/drilling');
INSERT INTO `qs32_category_jobs` VALUES ('19', '0', '船舶与海洋工程设计类', '0', '', '', 'naval architect');
INSERT INTO `qs32_category_jobs` VALUES ('20', '19', '设计管理', '0', '', '', 'design manager');
INSERT INTO `qs32_category_jobs` VALUES ('21', '19', '总体设计', '0', '', '', 'designer(NA)');
INSERT INTO `qs32_category_jobs` VALUES ('22', '19', '审图工程师', '0', '', '', 'approval engineer');
INSERT INTO `qs32_category_jobs` VALUES ('23', '19', '船体/结构详细设计', '0', '', '', 'detail designer(structure)');
INSERT INTO `qs32_category_jobs` VALUES ('24', '19', '轮机设计', '0', '', '', 'designer(machinery)');
INSERT INTO `qs32_category_jobs` VALUES ('25', '19', '船舶电气详细设计', '0', '', '', 'detail designer(electric)');
INSERT INTO `qs32_category_jobs` VALUES ('26', '19', '管系/空调/管路详细设计', '0', '', '', 'detail designer(piping)');
INSERT INTO `qs32_category_jobs` VALUES ('27', '19', '外舾装详细设计', '0', '', '', 'detail designer(outfitting)');
INSERT INTO `qs32_category_jobs` VALUES ('28', '19', '船体/结构生产设计', '0', '', '', 'production designer(structure)');
INSERT INTO `qs32_category_jobs` VALUES ('29', '19', '船舶电气生产设计', '0', '', '', 'production designer(electric)');
INSERT INTO `qs32_category_jobs` VALUES ('30', '19', '管系/空调/管路生产设计', '0', '', '', 'production designer(piping)');
INSERT INTO `qs32_category_jobs` VALUES ('31', '19', '内装设计', '0', '', '', 'outfitting(inside)');
INSERT INTO `qs32_category_jobs` VALUES ('32', '19', '外舾装生产设计', '0', '', '', 'production designer(outfitting)');
INSERT INTO `qs32_category_jobs` VALUES ('33', '19', '放样工程师/技术员', '0', '', '', 'mould lofter');
INSERT INTO `qs32_category_jobs` VALUES ('34', '19', '机械设计/绘图', '0', '', '', 'mechanical layout');
INSERT INTO `qs32_category_jobs` VALUES ('35', '19', '其他', '0', '', '', 'others');
INSERT INTO `qs32_category_jobs` VALUES ('49', '0', '技工类', '0', '', '', 'artisan');
INSERT INTO `qs32_category_jobs` VALUES ('50', '49', '钳工/装配工/机修工', '0', '', '', 'locksmith');
INSERT INTO `qs32_category_jobs` VALUES ('51', '49', '焊工', '0', '', '', 'welder');
INSERT INTO `qs32_category_jobs` VALUES ('52', '49', '车工/切割工', '0', '', '', 'latheman');
INSERT INTO `qs32_category_jobs` VALUES ('53', '49', '油漆/喷涂工', '0', '', '', 'painter');
INSERT INTO `qs32_category_jobs` VALUES ('54', '49', '电工', '0', '', '', 'electrician');
INSERT INTO `qs32_category_jobs` VALUES ('55', '49', '行车/吊车/叉车司机', '0', '', '', 'crane driver');
INSERT INTO `qs32_category_jobs` VALUES ('56', '49', '起重机', '0', '', '', 'derrick driver');
INSERT INTO `qs32_category_jobs` VALUES ('57', '49', '架子工', '0', '', '', 'scaffold');
INSERT INTO `qs32_category_jobs` VALUES ('58', '49', '管子/铜工', '0', '', '', 'pipefitter');
INSERT INTO `qs32_category_jobs` VALUES ('59', '49', '冷加工/火工/水工', '0', '', '', 'hot worker');
INSERT INTO `qs32_category_jobs` VALUES ('60', '49', '其他', '0', '', '', 'other');
INSERT INTO `qs32_category_jobs` VALUES ('74', '0', '船舶机械设备/配件', '0', '', '', 'machinery');
INSERT INTO `qs32_category_jobs` VALUES ('75', '74', '设计开发（船舶机械）', '0', '', '', 'designer & development (machinery)');
INSERT INTO `qs32_category_jobs` VALUES ('76', '74', '生产技术（船舶机械）', '0', '', '', 'production engineer (machinery)');
INSERT INTO `qs32_category_jobs` VALUES ('77', '74', '市场销售（船舶机械）', '0', '', '', 'marketing (machinery)');
INSERT INTO `qs32_category_jobs` VALUES ('78', '74', '技术服务（船舶机械）', '0', '', '', 'service (machinery)');
INSERT INTO `qs32_category_jobs` VALUES ('79', '74', '其他', '0', '', '', 'others');
INSERT INTO `qs32_category_jobs` VALUES ('96', '0', '船舶电气设备类', '0', '', '', 'electricion');
INSERT INTO `qs32_category_jobs` VALUES ('97', '96', '设计开发（船舶电气）', '0', '', '', 'designer & development (electric)');
INSERT INTO `qs32_category_jobs` VALUES ('98', '96', '市场销售（船舶电气）', '0', '', '', 'marketing (electric)');
INSERT INTO `qs32_category_jobs` VALUES ('99', '96', '技术服务（电气设备）', '0', '', '', 'service (electric)');
INSERT INTO `qs32_category_jobs` VALUES ('100', '96', '生产技术（电气设备）', '0', '', '', 'production engineer (electric)');
INSERT INTO `qs32_category_jobs` VALUES ('101', '96', '其他', '0', '', '', 'others');
INSERT INTO `qs32_category_jobs` VALUES ('116', '0', '工业工厂类', '0', '', '', 'indestry');
INSERT INTO `qs32_category_jobs` VALUES ('117', '116', '设备管理', '0', '', '', 'equipment control');
INSERT INTO `qs32_category_jobs` VALUES ('118', '116', '采购管理', '0', '', '', 'purchasing management');
INSERT INTO `qs32_category_jobs` VALUES ('119', '116', '安全管理', '0', '', '', 'safety management');
INSERT INTO `qs32_category_jobs` VALUES ('120', '116', '物流/物料管理', '0', '', '', 'logistics');
INSERT INTO `qs32_category_jobs` VALUES ('121', '116', '品质/检验/检测', '0', '', '', 'quality');
INSERT INTO `qs32_category_jobs` VALUES ('122', '116', '其他', '0', '', '', 'other');
INSERT INTO `qs32_category_jobs` VALUES ('136', '0', '经营管理类', '0', '', '', 'management');
INSERT INTO `qs32_category_jobs` VALUES ('137', '136', '高管类', '0', '', '', 'senior manager');
INSERT INTO `qs32_category_jobs` VALUES ('138', '136', '行政/人事/文职类', '0', '', '', 'administration');
INSERT INTO `qs32_category_jobs` VALUES ('139', '136', '财务/会计/审计类', '0', '', '', 'finance');
INSERT INTO `qs32_category_jobs` VALUES ('140', '136', '市场/销售/贸易类', '0', '', '', 'marketing');
INSERT INTO `qs32_category_jobs` VALUES ('141', '136', '客户服务类', '0', '', '', 'customer service');
INSERT INTO `qs32_category_jobs` VALUES ('142', '136', '翻译类', '0', '', '', 'translator');
INSERT INTO `qs32_category_jobs` VALUES ('143', '136', '信息网络管理类', '0', '', '', 'administration of networks');
INSERT INTO `qs32_category_jobs` VALUES ('144', '136', '其他', '0', '', '', 'other');
INSERT INTO `qs32_category_jobs` VALUES ('169', '0', '钢结构（专项）', '0', '', '', 'sreel structure');
INSERT INTO `qs32_category_jobs` VALUES ('170', '169', '钢结构预算', '0', '', '', 'budgeteer');
INSERT INTO `qs32_category_jobs` VALUES ('171', '169', '钢结构安装', '0', '', '', 'assemble');
INSERT INTO `qs32_category_jobs` VALUES ('172', '169', '钢结构设计', '0', '', '', 'structure designer');
INSERT INTO `qs32_category_jobs` VALUES ('173', '169', '钢结构检验监理师', '0', '', '', 'surveyor');
INSERT INTO `qs32_category_jobs` VALUES ('174', '169', '其他', '0', '', '', 'other');
INSERT INTO `qs32_category_jobs` VALUES ('203', '0', '应届毕业生', '0', '', '', 'graduates');
INSERT INTO `qs32_category_jobs` VALUES ('225', '0', '航运类', '0', '', '', 'shipping');
INSERT INTO `qs32_category_jobs` VALUES ('226', '225', '船长', '0', '', '', 'captain');
INSERT INTO `qs32_category_jobs` VALUES ('227', '225', '大副/二副/三副', '0', '', '', 'officer');
INSERT INTO `qs32_category_jobs` VALUES ('228', '225', '船舶管理', '0', '', '', 'management');
INSERT INTO `qs32_category_jobs` VALUES ('229', '225', '轮机长', '0', '', '', 'chief engineer');
INSERT INTO `qs32_category_jobs` VALUES ('230', '225', '大管轮/二管轮', '0', '', '', 'second engineer');
INSERT INTO `qs32_category_jobs` VALUES ('231', '225', '电机员', '0', '', '', 'electrician');
INSERT INTO `qs32_category_jobs` VALUES ('232', '225', 'GMDSS', '0', '', '', 'GMDSS');
INSERT INTO `qs32_category_jobs` VALUES ('233', '225', '机工', '0', '', '', 'crewman');
INSERT INTO `qs32_category_jobs` VALUES ('234', '225', '海运操作', '0', '', '', 'operation');
INSERT INTO `qs32_category_jobs` VALUES ('235', '225', '货代', '0', '', '', 'agent');
INSERT INTO `qs32_category_jobs` VALUES ('236', '225', '外勤', '0', '', '', 'itinerancy');
INSERT INTO `qs32_category_jobs` VALUES ('237', '225', '其他', '0', '', '', 'other');
INSERT INTO `qs32_category_jobs` VALUES ('241', '0', '其他', '0', '', '', 'other');
INSERT INTO `qs32_category_jobs` VALUES ('541', '1', '其他', '0', '', '', 'others');
INSERT INTO `qs32_category_jobs` VALUES ('542', '203', '应届毕业生', '0', '', '', 'graduates');

-- ----------------------------
-- Table structure for qs32_company_down_resume
-- ----------------------------
DROP TABLE IF EXISTS `qs32_company_down_resume`;
CREATE TABLE `qs32_company_down_resume` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `down_addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `company_uid_addtime` (`company_uid`,`down_addtime`),
  KEY `down_addtime` (`down_addtime`),
  KEY `resume_uid_rid` (`resume_uid`,`resume_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_company_down_resume
-- ----------------------------
INSERT INTO `qs32_company_down_resume` VALUES ('1', '12', 'de', '3', '4', '', '1370154549');
INSERT INTO `qs32_company_down_resume` VALUES ('2', '12', 'de', '3', '22', '', '1370700133');

-- ----------------------------
-- Table structure for qs32_company_favorites
-- ----------------------------
DROP TABLE IF EXISTS `qs32_company_favorites`;
CREATE TABLE `qs32_company_favorites` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `favoritesa_ddtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `company_uid` (`company_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_company_favorites
-- ----------------------------
INSERT INTO `qs32_company_favorites` VALUES ('1', '12', '4', '1370154561');

-- ----------------------------
-- Table structure for qs32_company_interview
-- ----------------------------
DROP TABLE IF EXISTS `qs32_company_interview`;
CREATE TABLE `qs32_company_interview` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(30) NOT NULL,
  `resume_addtime` int(10) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `jobs_addtime` int(10) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_addtime` int(10) NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `interview_addtime` int(10) unsigned NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT '',
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`did`),
  KEY `company_uid_jobid` (`company_uid`,`jobs_id`),
  KEY `resume_uid_resumeid` (`resume_uid`,`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_company_interview
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_company_profile
-- ----------------------------
DROP TABLE IF EXISTS `qs32_company_profile`;
CREATE TABLE `qs32_company_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `tpl` varchar(60) NOT NULL,
  `companyname` varchar(60) NOT NULL,
  `nature` smallint(5) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(30) NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `street_cn` varchar(50) NOT NULL,
  `officebuilding` smallint(5) unsigned NOT NULL,
  `officebuilding_cn` varchar(50) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `registered` varchar(150) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `telephone` varchar(130) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `license` varchar(120) NOT NULL,
  `certificate_img` varchar(80) NOT NULL,
  `logo` varchar(400) DEFAULT NULL,
  `contents` text NOT NULL,
  `audit` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `map_x` varchar(50) NOT NULL,
  `map_y` varchar(50) NOT NULL,
  `map_zoom` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `audit` (`audit`),
  KEY `companyname` (`companyname`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_company_profile
-- ----------------------------
INSERT INTO `qs32_company_profile` VALUES ('6', '214668', '', 'IBM?й???????', '51', '股份制企业', '7', '港口航道与海岸工程', '1004', '1357', '浙江省/台州市', '0', '', '0', '', '80', '1-49人', '-1', '人民币', '', '', '????绰', '??????', '', '', '', '', '??????飬??м??顣', '0', '0', '', '', '0', '1372591782', '1372591782', '1', '1', '0');
INSERT INTO `qs32_company_profile` VALUES ('4', '214667', '', 'IBMA', '48', '外商独资', '2', '海洋工程', '1000', '1368', '北京/北京市', '0', '', '0', '', '82', '100-499人', '-1', '人民币', 'address', 'contact man', '13399933', 'mail@mail.com', 'http://happylife', '', '', '', 'corp description.ibm', '0', '0', '', '', '0', '1372591782', '1372591782', '1', '1', '0');
INSERT INTO `qs32_company_profile` VALUES ('5', '214665', '', 'Microsoft', '47', '集体企业', '1', '船舶', '1007', '1125', '河北省/张家口市', '0', '', '0', '', '84', '1000-9999人', '-1', '人民币', 'address', 'contact man', '010', 'mail', 'http://corptitle.com', '', '', './attachment/./companylogo/201306/29/214665_13725250384L6K.jpg', '<div>microsoft description.</div>', '0', '0', '', '', '0', '1372591782', '1372591782', '1', '1', '0');

-- ----------------------------
-- Table structure for qs32_config
-- ----------------------------
DROP TABLE IF EXISTS `qs32_config`;
CREATE TABLE `qs32_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_config
-- ----------------------------
INSERT INTO `qs32_config` VALUES ('1', 'site_name', '龙船招聘网');
INSERT INTO `qs32_config` VALUES ('2', 'site_domain', 'http://shiphr.imarine.cn');
INSERT INTO `qs32_config` VALUES ('3', 'site_dir', '/');
INSERT INTO `qs32_config` VALUES ('4', 'template_dir', 'shiphr/');
INSERT INTO `qs32_config` VALUES ('5', 'outdated_jobs', '1');
INSERT INTO `qs32_config` VALUES ('6', 'top_tel', '000-00000000');
INSERT INTO `qs32_config` VALUES ('7', 'bootom_tel', '000-00000000');
INSERT INTO `qs32_config` VALUES ('8', 'address', '00省00市00路00号0大厦00楼');
INSERT INTO `qs32_config` VALUES ('9', 'bottom_other', 'Copyright @ 2010 74cms.com All Right Reserved ');
INSERT INTO `qs32_config` VALUES ('10', 'icp', 'icp000000000');
INSERT INTO `qs32_config` VALUES ('11', 'web_logo', 'logo.gif');
INSERT INTO `qs32_config` VALUES ('12', 'isclose', '0');
INSERT INTO `qs32_config` VALUES ('13', 'close_reason', '');
INSERT INTO `qs32_config` VALUES ('14', 'statistics', '');
INSERT INTO `qs32_config` VALUES ('15', 'closereg', '0');
INSERT INTO `qs32_config` VALUES ('16', 'showjobcontact', '1');
INSERT INTO `qs32_config` VALUES ('17', 'showresumecontact', '2');
INSERT INTO `qs32_config` VALUES ('18', 'points_byname', '积分');
INSERT INTO `qs32_config` VALUES ('19', 'points_quantifier', '点');
INSERT INTO `qs32_config` VALUES ('20', 'points_min_remind', '10');
INSERT INTO `qs32_config` VALUES ('21', 'audit_verifycom_addjob', '1');
INSERT INTO `qs32_config` VALUES ('22', 'audit_verifycom_editjob', '-1');
INSERT INTO `qs32_config` VALUES ('23', 'audit_unexaminedcom_addjob', '1');
INSERT INTO `qs32_config` VALUES ('24', 'audit_unexaminedcom_editjob', '-1');
INSERT INTO `qs32_config` VALUES ('25', 'company_add_days', '15');
INSERT INTO `qs32_config` VALUES ('26', 'company_add_days_min', '10');
INSERT INTO `qs32_config` VALUES ('27', 'company_repeat', '1');
INSERT INTO `qs32_config` VALUES ('28', 'jobs_list_max', '1000');
INSERT INTO `qs32_config` VALUES ('29', 'certificate_max_size', '1024');
INSERT INTO `qs32_config` VALUES ('30', 'updir_images', 'images');
INSERT INTO `qs32_config` VALUES ('31', 'updir_thumb', 'images/thumb');
INSERT INTO `qs32_config` VALUES ('32', 'updir_certificate', 'certificate');
INSERT INTO `qs32_config` VALUES ('33', 'payment_min', '1');
INSERT INTO `qs32_config` VALUES ('34', 'payment_rate', '1');
INSERT INTO `qs32_config` VALUES ('35', 'resume_max', '3');
INSERT INTO `qs32_config` VALUES ('36', 'resume_privacy', '1');
INSERT INTO `qs32_config` VALUES ('37', 'resume_list_max', '1000');
INSERT INTO `qs32_config` VALUES ('38', 'resume_photo_dir', 'photo');
INSERT INTO `qs32_config` VALUES ('39', 'resume_photo_dir_thumb', 'photo/thumb');
INSERT INTO `qs32_config` VALUES ('40', 'resume_photo_max', '500');
INSERT INTO `qs32_config` VALUES ('41', 'elite_resume_complete_percent', '60');
INSERT INTO `qs32_config` VALUES ('42', 'down_resume_limit', '2');
INSERT INTO `qs32_config` VALUES ('43', 'logo_max_size', '500');
INSERT INTO `qs32_config` VALUES ('44', 'apply_jobs_max', '30');
INSERT INTO `qs32_config` VALUES ('45', 'audit_resume', '1');
INSERT INTO `qs32_config` VALUES ('46', 'audit_edit_resume', '-1');
INSERT INTO `qs32_config` VALUES ('47', 'audit_resume_photo', '1');
INSERT INTO `qs32_config` VALUES ('48', 'audit_edit_photo', '-1');
INSERT INTO `qs32_config` VALUES ('49', 'audit_add_com', '0');
INSERT INTO `qs32_config` VALUES ('50', 'audit_edit_com', '-1');
INSERT INTO `qs32_config` VALUES ('51', 'map_zoom', '14');
INSERT INTO `qs32_config` VALUES ('52', 'map_center_x', '112.559468');
INSERT INTO `qs32_config` VALUES ('53', 'map_center_y', '37.845738');
INSERT INTO `qs32_config` VALUES ('54', 'app_link', '1');
INSERT INTO `qs32_config` VALUES ('55', 'filter', '');
INSERT INTO `qs32_config` VALUES ('56', 'filter_tips', '请勿在信息中包敏感词语。');
INSERT INTO `qs32_config` VALUES ('57', 'filter_ip', '');
INSERT INTO `qs32_config` VALUES ('58', 'filter_ip_tips', '您的IP已经被锁定禁止访问，请联系网站管理员。');
INSERT INTO `qs32_config` VALUES ('59', 'setmeal_to_points', '1');
INSERT INTO `qs32_config` VALUES ('60', 'meal_min_remind', '0');
INSERT INTO `qs32_config` VALUES ('61', 'reg_service', '1');
INSERT INTO `qs32_config` VALUES ('62', 'operation_mode', '2');
INSERT INTO `qs32_config` VALUES ('63', 'tpl_company', 'default');
INSERT INTO `qs32_config` VALUES ('64', 'tpl_personal', 'default');
INSERT INTO `qs32_config` VALUES ('65', 'qq_apiopen', '0');
INSERT INTO `qs32_config` VALUES ('66', 'qq_appid', '');
INSERT INTO `qs32_config` VALUES ('67', 'qq_appkey', '');
INSERT INTO `qs32_config` VALUES ('68', 'open_csrf', '0');
INSERT INTO `qs32_config` VALUES ('69', 'simple_open', '0');
INSERT INTO `qs32_config` VALUES ('70', 'simple_add_audit', '1');
INSERT INTO `qs32_config` VALUES ('71', 'simple_edit_audit', '-1');
INSERT INTO `qs32_config` VALUES ('72', 'simple_tel_repeat', '0');
INSERT INTO `qs32_config` VALUES ('73', 'simple_tel_edit', '0');
INSERT INTO `qs32_config` VALUES ('74', 'login_com_audit_email', '0');
INSERT INTO `qs32_config` VALUES ('75', 'login_com_audit_mobile', '0');
INSERT INTO `qs32_config` VALUES ('76', 'login_per_audit_email', '0');
INSERT INTO `qs32_config` VALUES ('77', 'login_per_audit_mobile', '0');
INSERT INTO `qs32_config` VALUES ('78', 'updir_resumes', 'resumes');
INSERT INTO `qs32_config` VALUES ('79', 'updir_resumes_max', '2048');

-- ----------------------------
-- Table structure for qs32_crons
-- ----------------------------
DROP TABLE IF EXISTS `qs32_crons`;
CREATE TABLE `qs32_crons` (
  `cronid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) unsigned NOT NULL,
  `admin_set` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `filename` varchar(60) NOT NULL,
  `lastrun` int(10) unsigned NOT NULL,
  `nextrun` int(10) unsigned NOT NULL,
  `weekday` tinyint(1) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` varchar(60) NOT NULL,
  PRIMARY KEY (`cronid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_crons
-- ----------------------------
INSERT INTO `qs32_crons` VALUES ('1', '1', '1', '每周清除缓存文件', 'clear_all_cache.php', '1372506368', '1373043600', '5', '-1', '1', '0');
INSERT INTO `qs32_crons` VALUES ('2', '1', '1', '限时推广清理', 'clear_promotion.php', '1372522552', '1372608000', '-1', '-1', '0', '0');
INSERT INTO `qs32_crons` VALUES ('3', '1', '1', '每日数据统计', 'stat_category.php', '1372522603', '1372608000', '-1', '-1', '0', '0');
INSERT INTO `qs32_crons` VALUES ('4', '1', '1', '每月清除会员沉余日志', 'clear_members_log.php', '1370101796', '1372694400', '-1', '1', '0', '0');
INSERT INTO `qs32_crons` VALUES ('5', '1', '1', '每小时清除过期职位', 'clear_expired_jobs.php', '1372604874', '1372608060', '-1', '-1', '-1', '1');
INSERT INTO `qs32_crons` VALUES ('6', '1', '1', '每天清除过期微招聘', 'clear_expired_simple.php', '1372565715', '1372618800', '-1', '-1', '3', '0');

-- ----------------------------
-- Table structure for qs32_explain
-- ----------------------------
DROP TABLE IF EXISTS `qs32_explain`;
CREATE TABLE `qs32_explain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) NOT NULL DEFAULT '0',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL,
  `show_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_explain
-- ----------------------------
INSERT INTO `qs32_explain` VALUES ('1', '1', '意见反馈', '', '', '0', '1', 'http://www.imarine.cn/forum-3-1.html', '', '', '1', '1264332774', '0');
INSERT INTO `qs32_explain` VALUES ('2', '1', '关于我们', '关于我们的内容', '', '0', '1', 'http://', '', '', '1', '1266987290', '0');
INSERT INTO `qs32_explain` VALUES ('3', '1', '企业开通VIP', '企业开通VIP企业开通VIP企业开通VIP企业开通VIP企业开通VIP企业开通VIP企业开通VIP', '', '0', '1', '', '', '', '1', '1370860635', '0');

-- ----------------------------
-- Table structure for qs32_explain_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_explain_category`;
CREATE TABLE `qs32_explain_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_explain_category
-- ----------------------------
INSERT INTO `qs32_explain_category` VALUES ('1', '关于我们', '0', '1');

-- ----------------------------
-- Table structure for qs32_feedback
-- ----------------------------
DROP TABLE IF EXISTS `qs32_feedback`;
CREATE TABLE `qs32_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `replyinfo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `usertype` tinyint(3) unsigned NOT NULL,
  `username` varchar(80) NOT NULL,
  `infotype` tinyint(3) unsigned NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `reply` varchar(250) NOT NULL,
  `addtime` int(10) NOT NULL,
  `feedbacktime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_help
-- ----------------------------
DROP TABLE IF EXISTS `qs32_help`;
CREATE TABLE `qs32_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `focos_article_order` (`order`,`id`),
  KEY `type_id` (`type_id`,`order`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_help
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_help_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_help_category`;
CREATE TABLE `qs32_help_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_help_category
-- ----------------------------
INSERT INTO `qs32_help_category` VALUES ('1', '0', '账户管理', '3');
INSERT INTO `qs32_help_category` VALUES ('2', '0', '我是企业', '2');
INSERT INTO `qs32_help_category` VALUES ('3', '0', '我是个人', '1');
INSERT INTO `qs32_help_category` VALUES ('4', '1', '注册与登录', '0');
INSERT INTO `qs32_help_category` VALUES ('5', '1', '密码找回与重置', '0');
INSERT INTO `qs32_help_category` VALUES ('6', '1', '账户状态', '0');
INSERT INTO `qs32_help_category` VALUES ('7', '1', '资料与头像', '0');
INSERT INTO `qs32_help_category` VALUES ('8', '1', '手机与邮箱认证', '0');
INSERT INTO `qs32_help_category` VALUES ('9', '2', '职位发布与管理', '0');
INSERT INTO `qs32_help_category` VALUES ('10', '2', '职位推广', '0');
INSERT INTO `qs32_help_category` VALUES ('11', '2', '招聘管理', '0');
INSERT INTO `qs32_help_category` VALUES ('12', '2', '招聘会', '0');
INSERT INTO `qs32_help_category` VALUES ('13', '2', '充值与消费', '0');
INSERT INTO `qs32_help_category` VALUES ('14', '2', '使用礼品卡', '0');
INSERT INTO `qs32_help_category` VALUES ('15', '2', '资料与地图', '0');
INSERT INTO `qs32_help_category` VALUES ('16', '3', '简历创建与管理', '0');
INSERT INTO `qs32_help_category` VALUES ('17', '3', '求职管理', '0');

-- ----------------------------
-- Table structure for qs32_hotword
-- ----------------------------
DROP TABLE IF EXISTS `qs32_hotword`;
CREATE TABLE `qs32_hotword` (
  `w_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_word` varchar(120) NOT NULL,
  `w_hot` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`w_id`),
  KEY `w_hot` (`w_hot`),
  KEY `w_word` (`w_word`)
) ENGINE=MyISAM AUTO_INCREMENT=127776 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_hotword
-- ----------------------------
INSERT INTO `qs32_hotword` VALUES ('44', '运营助理', '70');
INSERT INTO `qs32_hotword` VALUES ('45', '水电工', '207');
INSERT INTO `qs32_hotword` VALUES ('46', '会计', '5475');
INSERT INTO `qs32_hotword` VALUES ('47', '客服', '656');
INSERT INTO `qs32_hotword` VALUES ('48', '技术支持', '436');
INSERT INTO `qs32_hotword` VALUES ('49', '平面设计师', '1749');
INSERT INTO `qs32_hotword` VALUES ('50', '电话销售', '2930');
INSERT INTO `qs32_hotword` VALUES ('51', '前台接待', '1045');
INSERT INTO `qs32_hotword` VALUES ('52', '销售', '1457');
INSERT INTO `qs32_hotword` VALUES ('53', '销售助理', '3365');
INSERT INTO `qs32_hotword` VALUES ('54', '平面设计', '2383');
INSERT INTO `qs32_hotword` VALUES ('55', '总经理助理', '1372');
INSERT INTO `qs32_hotword` VALUES ('58', '行政人事主管', '212');
INSERT INTO `qs32_hotword` VALUES ('59', '高级猎头顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('60', '猎头顾问助理', '14');
INSERT INTO `qs32_hotword` VALUES ('61', '猎头顾问', '36');
INSERT INTO `qs32_hotword` VALUES ('62', '网页设计', '232');
INSERT INTO `qs32_hotword` VALUES ('67', '电话销售专员', '201');
INSERT INTO `qs32_hotword` VALUES ('68', '公关经理', '216');
INSERT INTO `qs32_hotword` VALUES ('70', '市场主管', '349');
INSERT INTO `qs32_hotword` VALUES ('75', '网页制作', '62');
INSERT INTO `qs32_hotword` VALUES ('77', '软件销售顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('78', '网站美工', '506');
INSERT INTO `qs32_hotword` VALUES ('81', '助理', '267');
INSERT INTO `qs32_hotword` VALUES ('82', '仓储管理员', '17');
INSERT INTO `qs32_hotword` VALUES ('83', '总账会计', '217');
INSERT INTO `qs32_hotword` VALUES ('84', '行政人事经理', '227');
INSERT INTO `qs32_hotword` VALUES ('86', '互动设计师', '16');
INSERT INTO `qs32_hotword` VALUES ('88', '项目经理', '2687');
INSERT INTO `qs32_hotword` VALUES ('89', '硬件工程师', '518');
INSERT INTO `qs32_hotword` VALUES ('90', '项目策划', '30');
INSERT INTO `qs32_hotword` VALUES ('92', '创意组长', '10');
INSERT INTO `qs32_hotword` VALUES ('93', '策划总监', '267');
INSERT INTO `qs32_hotword` VALUES ('94', '资深平面设计', '77');
INSERT INTO `qs32_hotword` VALUES ('95', '人事经理', '446');
INSERT INTO `qs32_hotword` VALUES ('96', '客户总监', '116');
INSERT INTO `qs32_hotword` VALUES ('97', '物流专员', '177');
INSERT INTO `qs32_hotword` VALUES ('99', '海外销售', '19');
INSERT INTO `qs32_hotword` VALUES ('101', '海运操作', '139');
INSERT INTO `qs32_hotword` VALUES ('102', '前台', '896');
INSERT INTO `qs32_hotword` VALUES ('103', '海运销售', '103');
INSERT INTO `qs32_hotword` VALUES ('104', '法务专员', '312');
INSERT INTO `qs32_hotword` VALUES ('105', '驾驶员', '500');
INSERT INTO `qs32_hotword` VALUES ('107', '销售经理', '7290');
INSERT INTO `qs32_hotword` VALUES ('108', '工程造价员', '26');
INSERT INTO `qs32_hotword` VALUES ('109', '业务发展主管', '22');
INSERT INTO `qs32_hotword` VALUES ('110', '前台文员', '1062');
INSERT INTO `qs32_hotword` VALUES ('111', '财务经理', '1697');
INSERT INTO `qs32_hotword` VALUES ('112', '出纳', '1824');
INSERT INTO `qs32_hotword` VALUES ('113', 'PHP程序员', '498');
INSERT INTO `qs32_hotword` VALUES ('115', '门店店员', '19');
INSERT INTO `qs32_hotword` VALUES ('117', '司机', '2445');
INSERT INTO `qs32_hotword` VALUES ('119', '企划经理', '201');
INSERT INTO `qs32_hotword` VALUES ('120', '外贸业务经理', '38');
INSERT INTO `qs32_hotword` VALUES ('122', '外贸业务跟单', '28');
INSERT INTO `qs32_hotword` VALUES ('123', '服装设计师', '183');
INSERT INTO `qs32_hotword` VALUES ('124', '电子商务客服', '44');
INSERT INTO `qs32_hotword` VALUES ('125', '黄金经纪人', '31');
INSERT INTO `qs32_hotword` VALUES ('127', '设计助理', '264');
INSERT INTO `qs32_hotword` VALUES ('130', '仓库管理员', '1698');
INSERT INTO `qs32_hotword` VALUES ('131', '终端销售', '16');
INSERT INTO `qs32_hotword` VALUES ('132', '投资顾问', '405');
INSERT INTO `qs32_hotword` VALUES ('133', '网络营销专员', '191');
INSERT INTO `qs32_hotword` VALUES ('134', '人事助理', '633');
INSERT INTO `qs32_hotword` VALUES ('140', '客服人员', '307');
INSERT INTO `qs32_hotword` VALUES ('142', '财务助理', '225');
INSERT INTO `qs32_hotword` VALUES ('143', '讲师', '196');
INSERT INTO `qs32_hotword` VALUES ('144', '人事行政主管', '233');
INSERT INTO `qs32_hotword` VALUES ('145', '三维设计师', '63');
INSERT INTO `qs32_hotword` VALUES ('146', '商务代表', '632');
INSERT INTO `qs32_hotword` VALUES ('147', '飞行学员', '16');
INSERT INTO `qs32_hotword` VALUES ('148', '市场助理', '544');
INSERT INTO `qs32_hotword` VALUES ('149', '总经理秘书', '570');
INSERT INTO `qs32_hotword` VALUES ('155', '行业研究员', '18');
INSERT INTO `qs32_hotword` VALUES ('158', '咨询总监', '21');
INSERT INTO `qs32_hotword` VALUES ('159', '空间设计师', '113');
INSERT INTO `qs32_hotword` VALUES ('160', '网络管理员', '508');
INSERT INTO `qs32_hotword` VALUES ('161', '工程销售', '23');
INSERT INTO `qs32_hotword` VALUES ('162', '市场总监', '445');
INSERT INTO `qs32_hotword` VALUES ('164', '包装设计师', '56');
INSERT INTO `qs32_hotword` VALUES ('165', '销售总监', '1362');
INSERT INTO `qs32_hotword` VALUES ('166', '市场拓展员', '49');
INSERT INTO `qs32_hotword` VALUES ('169', '培训助理', '124');
INSERT INTO `qs32_hotword` VALUES ('171', '平面设计经理', '11');
INSERT INTO `qs32_hotword` VALUES ('174', '助理设计师', '62');
INSERT INTO `qs32_hotword` VALUES ('176', '市场经理', '588');
INSERT INTO `qs32_hotword` VALUES ('179', '中心校长', '23');
INSERT INTO `qs32_hotword` VALUES ('180', '软件工程师', '1416');
INSERT INTO `qs32_hotword` VALUES ('181', '软件开发', '55');
INSERT INTO `qs32_hotword` VALUES ('183', '商务助理', '970');
INSERT INTO `qs32_hotword` VALUES ('188', '网页设计师', '596');
INSERT INTO `qs32_hotword` VALUES ('190', '财务', '277');
INSERT INTO `qs32_hotword` VALUES ('194', '行政专员', '707');
INSERT INTO `qs32_hotword` VALUES ('195', '总裁助理', '158');
INSERT INTO `qs32_hotword` VALUES ('198', '设计师助理', '86');
INSERT INTO `qs32_hotword` VALUES ('199', '销售代表', '9256');
INSERT INTO `qs32_hotword` VALUES ('202', '验收员', '16');
INSERT INTO `qs32_hotword` VALUES ('206', '外贸专员', '160');
INSERT INTO `qs32_hotword` VALUES ('208', '室内设计师', '319');
INSERT INTO `qs32_hotword` VALUES ('209', '成本经理', '35');
INSERT INTO `qs32_hotword` VALUES ('210', '项目工程师', '272');
INSERT INTO `qs32_hotword` VALUES ('212', '电话业务员', '56');
INSERT INTO `qs32_hotword` VALUES ('214', '实习生', '689');
INSERT INTO `qs32_hotword` VALUES ('215', '总裁秘书', '136');
INSERT INTO `qs32_hotword` VALUES ('216', '程序员', '321');
INSERT INTO `qs32_hotword` VALUES ('219', '前台行政', '87');
INSERT INTO `qs32_hotword` VALUES ('220', '项目实施经理', '20');
INSERT INTO `qs32_hotword` VALUES ('221', '学管主任', '12');
INSERT INTO `qs32_hotword` VALUES ('223', '市场推广经理', '92');
INSERT INTO `qs32_hotword` VALUES ('226', '资深设计师', '252');
INSERT INTO `qs32_hotword` VALUES ('228', '销售员', '556');
INSERT INTO `qs32_hotword` VALUES ('229', '网站运营管理', '11');
INSERT INTO `qs32_hotword` VALUES ('233', '销售工程师', '4075');
INSERT INTO `qs32_hotword` VALUES ('234', '咨询主任', '19');
INSERT INTO `qs32_hotword` VALUES ('235', '技术工程师', '590');
INSERT INTO `qs32_hotword` VALUES ('240', '高级物业顾问', '30');
INSERT INTO `qs32_hotword` VALUES ('243', '营业主任', '18');
INSERT INTO `qs32_hotword` VALUES ('244', '出纳员', '1487');
INSERT INTO `qs32_hotword` VALUES ('246', '预算员', '451');
INSERT INTO `qs32_hotword` VALUES ('249', '市场拓展专员', '277');
INSERT INTO `qs32_hotword` VALUES ('250', '物业顾问', '51');
INSERT INTO `qs32_hotword` VALUES ('252', '门卫', '32');
INSERT INTO `qs32_hotword` VALUES ('259', '测试工程师', '587');
INSERT INTO `qs32_hotword` VALUES ('260', '副总裁', '16');
INSERT INTO `qs32_hotword` VALUES ('261', '金融分析师', '24');
INSERT INTO `qs32_hotword` VALUES ('262', '采购专员', '325');
INSERT INTO `qs32_hotword` VALUES ('265', '外贸业务员', '861');
INSERT INTO `qs32_hotword` VALUES ('267', '装饰设计师', '69');
INSERT INTO `qs32_hotword` VALUES ('274', '红酒销售', '11');
INSERT INTO `qs32_hotword` VALUES ('277', '营业代表', '22');
INSERT INTO `qs32_hotword` VALUES ('278', '客户经理', '2952');
INSERT INTO `qs32_hotword` VALUES ('279', '制冷工程师', '29');
INSERT INTO `qs32_hotword` VALUES ('280', '工程师助理', '17');
INSERT INTO `qs32_hotword` VALUES ('282', '销售主管', '3032');
INSERT INTO `qs32_hotword` VALUES ('284', '设计专员', '47');
INSERT INTO `qs32_hotword` VALUES ('285', '省区销售经理', '141');
INSERT INTO `qs32_hotword` VALUES ('292', '文案策划', '855');
INSERT INTO `qs32_hotword` VALUES ('296', '铸造工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('297', '会计主管', '558');
INSERT INTO `qs32_hotword` VALUES ('298', '模具工程师', '71');
INSERT INTO `qs32_hotword` VALUES ('299', '3D设计师', '124');
INSERT INTO `qs32_hotword` VALUES ('301', '服装导购员', '14');
INSERT INTO `qs32_hotword` VALUES ('302', '秘书', '137');
INSERT INTO `qs32_hotword` VALUES ('306', '算法工程师', '42');
INSERT INTO `qs32_hotword` VALUES ('307', '设备管理', '46');
INSERT INTO `qs32_hotword` VALUES ('308', '店长', '1631');
INSERT INTO `qs32_hotword` VALUES ('309', '总经理', '355');
INSERT INTO `qs32_hotword` VALUES ('310', '行业客户经理', '49');
INSERT INTO `qs32_hotword` VALUES ('312', '采购文员', '55');
INSERT INTO `qs32_hotword` VALUES ('313', '技术部工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('315', '销售部主管', '21');
INSERT INTO `qs32_hotword` VALUES ('316', '女装设计师', '41');
INSERT INTO `qs32_hotword` VALUES ('318', '电工', '997');
INSERT INTO `qs32_hotword` VALUES ('319', '机修技师', '26');
INSERT INTO `qs32_hotword` VALUES ('321', '模具工', '35');
INSERT INTO `qs32_hotword` VALUES ('323', '高级客户经理', '279');
INSERT INTO `qs32_hotword` VALUES ('324', '副总经理', '500');
INSERT INTO `qs32_hotword` VALUES ('325', '服务工程师', '233');
INSERT INTO `qs32_hotword` VALUES ('329', '网络推广经理', '40');
INSERT INTO `qs32_hotword` VALUES ('330', '培训经理', '298');
INSERT INTO `qs32_hotword` VALUES ('335', '运营策划', '31');
INSERT INTO `qs32_hotword` VALUES ('337', '销售经理助理', '62');
INSERT INTO `qs32_hotword` VALUES ('340', '行政管理', '59');
INSERT INTO `qs32_hotword` VALUES ('341', '消防主管', '31');
INSERT INTO `qs32_hotword` VALUES ('343', '客服专员', '1819');
INSERT INTO `qs32_hotword` VALUES ('344', '质检员', '625');
INSERT INTO `qs32_hotword` VALUES ('345', '软件销售', '123');
INSERT INTO `qs32_hotword` VALUES ('347', '系统架构师', '108');
INSERT INTO `qs32_hotword` VALUES ('350', '营运经理', '157');
INSERT INTO `qs32_hotword` VALUES ('357', '土建工程师', '840');
INSERT INTO `qs32_hotword` VALUES ('358', '招商经理', '940');
INSERT INTO `qs32_hotword` VALUES ('359', '水电工程师', '346');
INSERT INTO `qs32_hotword` VALUES ('364', '广告业务经理', '20');
INSERT INTO `qs32_hotword` VALUES ('365', '文员', '1694');
INSERT INTO `qs32_hotword` VALUES ('366', '幼师', '22');
INSERT INTO `qs32_hotword` VALUES ('368', '理货员', '254');
INSERT INTO `qs32_hotword` VALUES ('371', '淘宝商城客服', '32');
INSERT INTO `qs32_hotword` VALUES ('372', '客户服务', '160');
INSERT INTO `qs32_hotword` VALUES ('373', 'QA', '75');
INSERT INTO `qs32_hotword` VALUES ('374', '采购经理', '398');
INSERT INTO `qs32_hotword` VALUES ('378', '建筑设计师', '409');
INSERT INTO `qs32_hotword` VALUES ('380', '调查员', '11');
INSERT INTO `qs32_hotword` VALUES ('382', '暖通工程师', '269');
INSERT INTO `qs32_hotword` VALUES ('383', '采购助理', '452');
INSERT INTO `qs32_hotword` VALUES ('385', '结构工程师', '412');
INSERT INTO `qs32_hotword` VALUES ('387', '销售专员', '902');
INSERT INTO `qs32_hotword` VALUES ('388', '人力资源经理', '641');
INSERT INTO `qs32_hotword` VALUES ('389', '行政助理', '1645');
INSERT INTO `qs32_hotword` VALUES ('393', '业务专员', '168');
INSERT INTO `qs32_hotword` VALUES ('394', '设计总监助理', '16');
INSERT INTO `qs32_hotword` VALUES ('396', '进出口专员', '22');
INSERT INTO `qs32_hotword` VALUES ('398', '采购工程师', '267');
INSERT INTO `qs32_hotword` VALUES ('399', '采购员', '1003');
INSERT INTO `qs32_hotword` VALUES ('403', '助理工程师', '80');
INSERT INTO `qs32_hotword` VALUES ('406', '单证员', '172');
INSERT INTO `qs32_hotword` VALUES ('409', '行政前台', '654');
INSERT INTO `qs32_hotword` VALUES ('410', '人事行政专员', '309');
INSERT INTO `qs32_hotword` VALUES ('416', 'ASP程序员', '49');
INSERT INTO `qs32_hotword` VALUES ('417', '资深文案', '159');
INSERT INTO `qs32_hotword` VALUES ('419', '媒介专员', '168');
INSERT INTO `qs32_hotword` VALUES ('427', '口译英语教师', '25');
INSERT INTO `qs32_hotword` VALUES ('429', '韩语教师', '28');
INSERT INTO `qs32_hotword` VALUES ('430', '法语教师', '37');
INSERT INTO `qs32_hotword` VALUES ('431', '意大利语教师', '28');
INSERT INTO `qs32_hotword` VALUES ('433', '粤语教师', '25');
INSERT INTO `qs32_hotword` VALUES ('434', '德语老师', '26');
INSERT INTO `qs32_hotword` VALUES ('438', '媒介策划经理', '18');
INSERT INTO `qs32_hotword` VALUES ('443', '商务英语教师', '27');
INSERT INTO `qs32_hotword` VALUES ('444', '网页美工', '260');
INSERT INTO `qs32_hotword` VALUES ('446', '网站编辑', '919');
INSERT INTO `qs32_hotword` VALUES ('448', '仓管人员', '12');
INSERT INTO `qs32_hotword` VALUES ('450', '商务专员', '560');
INSERT INTO `qs32_hotword` VALUES ('453', '医药销售代表', '531');
INSERT INTO `qs32_hotword` VALUES ('456', '人力资源顾问', '12');
INSERT INTO `qs32_hotword` VALUES ('458', '文案', '727');
INSERT INTO `qs32_hotword` VALUES ('459', '商务', '102');
INSERT INTO `qs32_hotword` VALUES ('461', '网管', '196');
INSERT INTO `qs32_hotword` VALUES ('463', '网络推广员', '128');
INSERT INTO `qs32_hotword` VALUES ('466', '部长助理', '13');
INSERT INTO `qs32_hotword` VALUES ('469', '外贸跟单员', '70');
INSERT INTO `qs32_hotword` VALUES ('470', '财务总监', '640');
INSERT INTO `qs32_hotword` VALUES ('475', '咨询医生', '66');
INSERT INTO `qs32_hotword` VALUES ('476', '质量工程师', '321');
INSERT INTO `qs32_hotword` VALUES ('481', '网络工程师', '608');
INSERT INTO `qs32_hotword` VALUES ('484', '文秘', '256');
INSERT INTO `qs32_hotword` VALUES ('486', '美工', '714');
INSERT INTO `qs32_hotword` VALUES ('487', '销售业务', '194');
INSERT INTO `qs32_hotword` VALUES ('489', '人力资源', '50');
INSERT INTO `qs32_hotword` VALUES ('493', '仪表工程师', '49');
INSERT INTO `qs32_hotword` VALUES ('494', '强电工', '17');
INSERT INTO `qs32_hotword` VALUES ('495', '人事专员', '1685');
INSERT INTO `qs32_hotword` VALUES ('496', '客服代表', '266');
INSERT INTO `qs32_hotword` VALUES ('498', '弱电工', '28');
INSERT INTO `qs32_hotword` VALUES ('501', '渠道销售经理', '166');
INSERT INTO `qs32_hotword` VALUES ('503', '区域销售经理', '2937');
INSERT INTO `qs32_hotword` VALUES ('506', '外贸业务主管', '19');
INSERT INTO `qs32_hotword` VALUES ('507', '万能工', '94');
INSERT INTO `qs32_hotword` VALUES ('508', '制图员', '51');
INSERT INTO `qs32_hotword` VALUES ('509', '广告设计', '45');
INSERT INTO `qs32_hotword` VALUES ('511', '设计主管', '119');
INSERT INTO `qs32_hotword` VALUES ('512', '高级投资经理', '23');
INSERT INTO `qs32_hotword` VALUES ('513', '办公文员', '120');
INSERT INTO `qs32_hotword` VALUES ('517', '外联专员', '49');
INSERT INTO `qs32_hotword` VALUES ('519', '广告策划', '54');
INSERT INTO `qs32_hotword` VALUES ('520', '工程技术员', '85');
INSERT INTO `qs32_hotword` VALUES ('521', '业务员', '3059');
INSERT INTO `qs32_hotword` VALUES ('522', '保安', '941');
INSERT INTO `qs32_hotword` VALUES ('523', '外贸单证员', '52');
INSERT INTO `qs32_hotword` VALUES ('525', '数据库管理员', '35');
INSERT INTO `qs32_hotword` VALUES ('530', '促销主管', '146');
INSERT INTO `qs32_hotword` VALUES ('531', '业务主管', '633');
INSERT INTO `qs32_hotword` VALUES ('534', '市场部助理', '76');
INSERT INTO `qs32_hotword` VALUES ('535', '营业员', '486');
INSERT INTO `qs32_hotword` VALUES ('539', '统计', '41');
INSERT INTO `qs32_hotword` VALUES ('542', '淘宝运营专员', '32');
INSERT INTO `qs32_hotword` VALUES ('543', '客户主任', '139');
INSERT INTO `qs32_hotword` VALUES ('544', '产品经理助理', '23');
INSERT INTO `qs32_hotword` VALUES ('545', '策划主任', '32');
INSERT INTO `qs32_hotword` VALUES ('547', '执行校长', '14');
INSERT INTO `qs32_hotword` VALUES ('549', '设计师', '722');
INSERT INTO `qs32_hotword` VALUES ('553', '售后技术支持', '45');
INSERT INTO `qs32_hotword` VALUES ('555', '渠道开发专员', '13');
INSERT INTO `qs32_hotword` VALUES ('557', '分析师', '65');
INSERT INTO `qs32_hotword` VALUES ('558', '投资经理', '135');
INSERT INTO `qs32_hotword` VALUES ('563', '企划主管', '154');
INSERT INTO `qs32_hotword` VALUES ('566', '储备干部', '1215');
INSERT INTO `qs32_hotword` VALUES ('567', '钳工', '164');
INSERT INTO `qs32_hotword` VALUES ('568', '行业分析师', '11');
INSERT INTO `qs32_hotword` VALUES ('569', '大客户经理', '745');
INSERT INTO `qs32_hotword` VALUES ('570', '单证', '22');
INSERT INTO `qs32_hotword` VALUES ('571', '主办会计', '537');
INSERT INTO `qs32_hotword` VALUES ('574', '项目助理', '265');
INSERT INTO `qs32_hotword` VALUES ('575', '区域销售主管', '108');
INSERT INTO `qs32_hotword` VALUES ('579', '理财经理', '141');
INSERT INTO `qs32_hotword` VALUES ('580', 'UI工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('582', 'QC工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('583', '媒体销售经理', '12');
INSERT INTO `qs32_hotword` VALUES ('584', 'Buyer', '21');
INSERT INTO `qs32_hotword` VALUES ('589', '区域招商经理', '32');
INSERT INTO `qs32_hotword` VALUES ('591', '市场专员', '1826');
INSERT INTO `qs32_hotword` VALUES ('593', '文案指导', '54');
INSERT INTO `qs32_hotword` VALUES ('594', '策划经理', '513');
INSERT INTO `qs32_hotword` VALUES ('596', '融资经理', '123');
INSERT INTO `qs32_hotword` VALUES ('605', '工程主管', '192');
INSERT INTO `qs32_hotword` VALUES ('606', '学徒工', '63');
INSERT INTO `qs32_hotword` VALUES ('609', '维修电工', '137');
INSERT INTO `qs32_hotword` VALUES ('613', '美术指导', '268');
INSERT INTO `qs32_hotword` VALUES ('619', '绩效主管', '44');
INSERT INTO `qs32_hotword` VALUES ('620', '设计人员', '81');
INSERT INTO `qs32_hotword` VALUES ('621', '会计助理', '110');
INSERT INTO `qs32_hotword` VALUES ('624', '物流主管', '130');
INSERT INTO `qs32_hotword` VALUES ('625', '主管会计', '349');
INSERT INTO `qs32_hotword` VALUES ('626', '施工员', '332');
INSERT INTO `qs32_hotword` VALUES ('629', '市场企划经理', '86');
INSERT INTO `qs32_hotword` VALUES ('635', '客户服务主管', '50');
INSERT INTO `qs32_hotword` VALUES ('636', '外贸人员', '55');
INSERT INTO `qs32_hotword` VALUES ('637', '总经理司机', '30');
INSERT INTO `qs32_hotword` VALUES ('641', '维修主管', '59');
INSERT INTO `qs32_hotword` VALUES ('642', '市场销售人员', '32');
INSERT INTO `qs32_hotword` VALUES ('643', '钢结构设计师', '20');
INSERT INTO `qs32_hotword` VALUES ('646', '业务跟单员', '46');
INSERT INTO `qs32_hotword` VALUES ('649', '营销总监', '666');
INSERT INTO `qs32_hotword` VALUES ('652', '医疗设备销售', '16');
INSERT INTO `qs32_hotword` VALUES ('654', '实验操作员', '10');
INSERT INTO `qs32_hotword` VALUES ('655', '企划部主管', '18');
INSERT INTO `qs32_hotword` VALUES ('656', '外贸业务助理', '70');
INSERT INTO `qs32_hotword` VALUES ('660', '培训专员', '696');
INSERT INTO `qs32_hotword` VALUES ('664', '投融资总监', '12');
INSERT INTO `qs32_hotword` VALUES ('665', '项目总经理', '76');
INSERT INTO `qs32_hotword` VALUES ('668', '土建预算员', '143');
INSERT INTO `qs32_hotword` VALUES ('676', '信贷客户经理', '14');
INSERT INTO `qs32_hotword` VALUES ('678', '业务代表', '1613');
INSERT INTO `qs32_hotword` VALUES ('679', '广告客户经理', '114');
INSERT INTO `qs32_hotword` VALUES ('682', '技术员', '428');
INSERT INTO `qs32_hotword` VALUES ('684', '操作工', '262');
INSERT INTO `qs32_hotword` VALUES ('686', 'Sales', '10');
INSERT INTO `qs32_hotword` VALUES ('692', '现场工程师', '76');
INSERT INTO `qs32_hotword` VALUES ('694', '业务拓展经理', '45');
INSERT INTO `qs32_hotword` VALUES ('696', '医学编辑', '20');
INSERT INTO `qs32_hotword` VALUES ('702', '物流经理', '148');
INSERT INTO `qs32_hotword` VALUES ('703', '机械设计', '101');
INSERT INTO `qs32_hotword` VALUES ('704', '工程师', '162');
INSERT INTO `qs32_hotword` VALUES ('708', '客户代表', '667');
INSERT INTO `qs32_hotword` VALUES ('711', '财务主管', '996');
INSERT INTO `qs32_hotword` VALUES ('712', '资深销售', '26');
INSERT INTO `qs32_hotword` VALUES ('713', '操盘手', '150');
INSERT INTO `qs32_hotword` VALUES ('714', '客户助理', '52');
INSERT INTO `qs32_hotword` VALUES ('716', '渠道经理', '599');
INSERT INTO `qs32_hotword` VALUES ('719', '绘图员', '121');
INSERT INTO `qs32_hotword` VALUES ('720', '电话销售主管', '89');
INSERT INTO `qs32_hotword` VALUES ('722', '房产销售', '43');
INSERT INTO `qs32_hotword` VALUES ('723', '房产经纪人', '398');
INSERT INTO `qs32_hotword` VALUES ('727', '高中语文教师', '30');
INSERT INTO `qs32_hotword` VALUES ('728', 'CAD绘图员', '79');
INSERT INTO `qs32_hotword` VALUES ('731', '平面设计助理', '36');
INSERT INTO `qs32_hotword` VALUES ('741', '采购', '146');
INSERT INTO `qs32_hotword` VALUES ('745', '客户服务专员', '192');
INSERT INTO `qs32_hotword` VALUES ('747', '经理助理', '599');
INSERT INTO `qs32_hotword` VALUES ('751', '客户服务代表', '37');
INSERT INTO `qs32_hotword` VALUES ('754', '渠道销售专员', '53');
INSERT INTO `qs32_hotword` VALUES ('756', '仓管', '261');
INSERT INTO `qs32_hotword` VALUES ('761', '网络推广专员', '375');
INSERT INTO `qs32_hotword` VALUES ('762', '业务发展专员', '297');
INSERT INTO `qs32_hotword` VALUES ('763', '检验员', '306');
INSERT INTO `qs32_hotword` VALUES ('764', '机械工程师', '798');
INSERT INTO `qs32_hotword` VALUES ('765', '电气工程师', '1293');
INSERT INTO `qs32_hotword` VALUES ('768', '网页设计美工', '23');
INSERT INTO `qs32_hotword` VALUES ('775', '报关员', '166');
INSERT INTO `qs32_hotword` VALUES ('780', 'CAD制图', '16');
INSERT INTO `qs32_hotword` VALUES ('781', '财务实习生', '34');
INSERT INTO `qs32_hotword` VALUES ('782', '造价师', '30');
INSERT INTO `qs32_hotword` VALUES ('786', '工程监理', '335');
INSERT INTO `qs32_hotword` VALUES ('788', '资料员', '395');
INSERT INTO `qs32_hotword` VALUES ('793', '生产计划员', '100');
INSERT INTO `qs32_hotword` VALUES ('804', '维修工程师', '303');
INSERT INTO `qs32_hotword` VALUES ('806', '商标代理人', '38');
INSERT INTO `qs32_hotword` VALUES ('809', '研发技术员', '44');
INSERT INTO `qs32_hotword` VALUES ('810', '生产经理', '257');
INSERT INTO `qs32_hotword` VALUES ('811', '企划', '62');
INSERT INTO `qs32_hotword` VALUES ('813', '高中数学教师', '58');
INSERT INTO `qs32_hotword` VALUES ('816', '高中英语教师', '44');
INSERT INTO `qs32_hotword` VALUES ('817', '淘宝店长', '102');
INSERT INTO `qs32_hotword` VALUES ('820', '业务拓展专员', '45');
INSERT INTO `qs32_hotword` VALUES ('821', '网站营运经理', '52');
INSERT INTO `qs32_hotword` VALUES ('824', '初中数学教师', '36');
INSERT INTO `qs32_hotword` VALUES ('826', '淘宝客服', '412');
INSERT INTO `qs32_hotword` VALUES ('827', '网络推广', '478');
INSERT INTO `qs32_hotword` VALUES ('831', '数据专员', '29');
INSERT INTO `qs32_hotword` VALUES ('833', '初中英语教师', '32');
INSERT INTO `qs32_hotword` VALUES ('836', '市场人员', '85');
INSERT INTO `qs32_hotword` VALUES ('838', '客户专员', '205');
INSERT INTO `qs32_hotword` VALUES ('839', '财务人员', '222');
INSERT INTO `qs32_hotword` VALUES ('842', '业务经理', '1563');
INSERT INTO `qs32_hotword` VALUES ('846', '资深销售经理', '16');
INSERT INTO `qs32_hotword` VALUES ('851', '高级文案', '35');
INSERT INTO `qs32_hotword` VALUES ('854', '企划部经理', '108');
INSERT INTO `qs32_hotword` VALUES ('855', '课程顾问', '586');
INSERT INTO `qs32_hotword` VALUES ('856', '营销经理', '342');
INSERT INTO `qs32_hotword` VALUES ('857', '市场策划经理', '46');
INSERT INTO `qs32_hotword` VALUES ('862', '起重工', '11');
INSERT INTO `qs32_hotword` VALUES ('865', '实施工程师', '273');
INSERT INTO `qs32_hotword` VALUES ('866', '行政经理', '480');
INSERT INTO `qs32_hotword` VALUES ('867', '产品主管', '24');
INSERT INTO `qs32_hotword` VALUES ('868', 'B超医生', '49');
INSERT INTO `qs32_hotword` VALUES ('869', '渠道专员', '277');
INSERT INTO `qs32_hotword` VALUES ('875', '分公司总经理', '190');
INSERT INTO `qs32_hotword` VALUES ('878', '导医', '129');
INSERT INTO `qs32_hotword` VALUES ('883', '营销副总', '115');
INSERT INTO `qs32_hotword` VALUES ('884', '产品经理', '906');
INSERT INTO `qs32_hotword` VALUES ('885', '护士', '373');
INSERT INTO `qs32_hotword` VALUES ('886', '坐席代表', '30');
INSERT INTO `qs32_hotword` VALUES ('889', '网络营销推广', '11');
INSERT INTO `qs32_hotword` VALUES ('894', '人事部经理', '42');
INSERT INTO `qs32_hotword` VALUES ('896', '售后维修工', '11');
INSERT INTO `qs32_hotword` VALUES ('898', '网络营销', '189');
INSERT INTO `qs32_hotword` VALUES ('900', '外贸会计', '61');
INSERT INTO `qs32_hotword` VALUES ('902', '技术总工', '27');
INSERT INTO `qs32_hotword` VALUES ('904', '市场企划主管', '75');
INSERT INTO `qs32_hotword` VALUES ('905', '项目拓展经理', '17');
INSERT INTO `qs32_hotword` VALUES ('908', '工程部经理', '533');
INSERT INTO `qs32_hotword` VALUES ('909', '人事行政经理', '202');
INSERT INTO `qs32_hotword` VALUES ('910', '设计部经理', '146');
INSERT INTO `qs32_hotword` VALUES ('915', 'SEO专员', '85');
INSERT INTO `qs32_hotword` VALUES ('917', '装配钳工', '107');
INSERT INTO `qs32_hotword` VALUES ('918', '行政文员', '850');
INSERT INTO `qs32_hotword` VALUES ('921', '渠道助理', '16');
INSERT INTO `qs32_hotword` VALUES ('925', '产品助理', '62');
INSERT INTO `qs32_hotword` VALUES ('926', '客户执行', '33');
INSERT INTO `qs32_hotword` VALUES ('929', '策划主管', '221');
INSERT INTO `qs32_hotword` VALUES ('933', '游戏UI设计', '22');
INSERT INTO `qs32_hotword` VALUES ('935', '会计实习生', '18');
INSERT INTO `qs32_hotword` VALUES ('937', '市场营销专员', '100');
INSERT INTO `qs32_hotword` VALUES ('938', '业务工程师', '31');
INSERT INTO `qs32_hotword` VALUES ('942', '主设计师', '40');
INSERT INTO `qs32_hotword` VALUES ('951', '电子商务专员', '273');
INSERT INTO `qs32_hotword` VALUES ('953', '内贸业务员', '42');
INSERT INTO `qs32_hotword` VALUES ('955', '文字编辑', '102');
INSERT INTO `qs32_hotword` VALUES ('956', '试衣模特', '33');
INSERT INTO `qs32_hotword` VALUES ('957', '空运操作', '27');
INSERT INTO `qs32_hotword` VALUES ('960', '外贸助理', '93');
INSERT INTO `qs32_hotword` VALUES ('962', '商务主管', '162');
INSERT INTO `qs32_hotword` VALUES ('971', '行政', '60');
INSERT INTO `qs32_hotword` VALUES ('972', '应收应付会计', '12');
INSERT INTO `qs32_hotword` VALUES ('978', '研发工程师', '280');
INSERT INTO `qs32_hotword` VALUES ('980', '影视后期制作', '46');
INSERT INTO `qs32_hotword` VALUES ('982', '律师助理', '58');
INSERT INTO `qs32_hotword` VALUES ('987', '业务跟单', '199');
INSERT INTO `qs32_hotword` VALUES ('988', '行政人事助理', '209');
INSERT INTO `qs32_hotword` VALUES ('996', '市场推广', '180');
INSERT INTO `qs32_hotword` VALUES ('1000', '销售管理', '60');
INSERT INTO `qs32_hotword` VALUES ('1004', '外贸部经理', '26');
INSERT INTO `qs32_hotword` VALUES ('1005', '售后服务', '142');
INSERT INTO `qs32_hotword` VALUES ('1006', '单证操作', '12');
INSERT INTO `qs32_hotword` VALUES ('1007', '财务会计', '384');
INSERT INTO `qs32_hotword` VALUES ('1010', 'CAE工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('1012', '医疗器械销售', '172');
INSERT INTO `qs32_hotword` VALUES ('1013', '开发主管', '29');
INSERT INTO `qs32_hotword` VALUES ('1015', '网络客服', '128');
INSERT INTO `qs32_hotword` VALUES ('1016', '教务', '46');
INSERT INTO `qs32_hotword` VALUES ('1017', '客服经理', '372');
INSERT INTO `qs32_hotword` VALUES ('1018', '应用工程师', '138');
INSERT INTO `qs32_hotword` VALUES ('1022', '业务助理', '565');
INSERT INTO `qs32_hotword` VALUES ('1026', '市场部主管', '133');
INSERT INTO `qs32_hotword` VALUES ('1032', '平面设计员', '50');
INSERT INTO `qs32_hotword` VALUES ('1035', '土建施工员', '41');
INSERT INTO `qs32_hotword` VALUES ('1036', '市场销售', '71');
INSERT INTO `qs32_hotword` VALUES ('1037', '应付会计', '10');
INSERT INTO `qs32_hotword` VALUES ('1038', '研发主管', '31');
INSERT INTO `qs32_hotword` VALUES ('1040', '市场营销经理', '48');
INSERT INTO `qs32_hotword` VALUES ('1045', '质量经理', '81');
INSERT INTO `qs32_hotword` VALUES ('1046', '机修工', '242');
INSERT INTO `qs32_hotword` VALUES ('1047', '项目执行', '16');
INSERT INTO `qs32_hotword` VALUES ('1048', '安全经理', '16');
INSERT INTO `qs32_hotword` VALUES ('1049', '总工程师', '235');
INSERT INTO `qs32_hotword` VALUES ('1052', '工程经理', '168');
INSERT INTO `qs32_hotword` VALUES ('1054', '安装工程师', '192');
INSERT INTO `qs32_hotword` VALUES ('1056', '营销策划主管', '71');
INSERT INTO `qs32_hotword` VALUES ('1057', '营销策划专员', '64');
INSERT INTO `qs32_hotword` VALUES ('1058', '文案编辑', '122');
INSERT INTO `qs32_hotword` VALUES ('1061', '现场项目经理', '11');
INSERT INTO `qs32_hotword` VALUES ('1062', '英语客服', '25');
INSERT INTO `qs32_hotword` VALUES ('1065', '室内设计', '21');
INSERT INTO `qs32_hotword` VALUES ('1067', '兼职导游', '10');
INSERT INTO `qs32_hotword` VALUES ('1070', '活动策划', '178');
INSERT INTO `qs32_hotword` VALUES ('1071', '楼层管理员', '19');
INSERT INTO `qs32_hotword` VALUES ('1073', '内勤', '270');
INSERT INTO `qs32_hotword` VALUES ('1074', '会计出纳', '20');
INSERT INTO `qs32_hotword` VALUES ('1078', '活动执行专员', '19');
INSERT INTO `qs32_hotword` VALUES ('1081', '装饰预算员', '24');
INSERT INTO `qs32_hotword` VALUES ('1082', '助教', '38');
INSERT INTO `qs32_hotword` VALUES ('1083', '行政主管', '799');
INSERT INTO `qs32_hotword` VALUES ('1084', '教学主管', '79');
INSERT INTO `qs32_hotword` VALUES ('1087', '教务主管', '50');
INSERT INTO `qs32_hotword` VALUES ('1089', '销售业务员', '258');
INSERT INTO `qs32_hotword` VALUES ('1090', '装饰施工员', '13');
INSERT INTO `qs32_hotword` VALUES ('1091', '外贸销售专员', '21');
INSERT INTO `qs32_hotword` VALUES ('1092', '外贸销售代表', '14');
INSERT INTO `qs32_hotword` VALUES ('1095', '话务员', '228');
INSERT INTO `qs32_hotword` VALUES ('1097', '安全员', '255');
INSERT INTO `qs32_hotword` VALUES ('1101', '行政兼出纳', '37');
INSERT INTO `qs32_hotword` VALUES ('1104', '媒介执行', '28');
INSERT INTO `qs32_hotword` VALUES ('1105', '电话客服专员', '49');
INSERT INTO `qs32_hotword` VALUES ('1106', '网站程序员', '146');
INSERT INTO `qs32_hotword` VALUES ('1111', '活动策划专员', '60');
INSERT INTO `qs32_hotword` VALUES ('1112', '广告销售经理', '55');
INSERT INTO `qs32_hotword` VALUES ('1113', '跟单QC', '38');
INSERT INTO `qs32_hotword` VALUES ('1114', '区域总监', '38');
INSERT INTO `qs32_hotword` VALUES ('1123', '业务', '134');
INSERT INTO `qs32_hotword` VALUES ('1125', '储备主管', '103');
INSERT INTO `qs32_hotword` VALUES ('1127', '俄语翻译', '34');
INSERT INTO `qs32_hotword` VALUES ('1130', '市场拓展主管', '38');
INSERT INTO `qs32_hotword` VALUES ('1131', '面辅料采购', '24');
INSERT INTO `qs32_hotword` VALUES ('1133', '编辑记者', '20');
INSERT INTO `qs32_hotword` VALUES ('1135', '项目经理助理', '47');
INSERT INTO `qs32_hotword` VALUES ('1136', '平面设计主管', '69');
INSERT INTO `qs32_hotword` VALUES ('1139', '项目销售经理', '50');
INSERT INTO `qs32_hotword` VALUES ('1144', '陈列师', '131');
INSERT INTO `qs32_hotword` VALUES ('1148', '商务车司机', '12');
INSERT INTO `qs32_hotword` VALUES ('1149', '机电工', '34');
INSERT INTO `qs32_hotword` VALUES ('1151', '喷漆工', '89');
INSERT INTO `qs32_hotword` VALUES ('1153', '钣金工', '98');
INSERT INTO `qs32_hotword` VALUES ('1157', '基金经理', '13');
INSERT INTO `qs32_hotword` VALUES ('1158', '营销督导', '12');
INSERT INTO `qs32_hotword` VALUES ('1165', '区域销售代表', '172');
INSERT INTO `qs32_hotword` VALUES ('1166', '售后客服专员', '22');
INSERT INTO `qs32_hotword` VALUES ('1170', '储备主任', '10');
INSERT INTO `qs32_hotword` VALUES ('1172', '区域经理', '2426');
INSERT INTO `qs32_hotword` VALUES ('1175', '金融理财顾问', '17');
INSERT INTO `qs32_hotword` VALUES ('1179', '培训师', '309');
INSERT INTO `qs32_hotword` VALUES ('1180', '跟单', '27');
INSERT INTO `qs32_hotword` VALUES ('1184', '外贸销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('1185', '编辑', '225');
INSERT INTO `qs32_hotword` VALUES ('1187', '新闻采编', '13');
INSERT INTO `qs32_hotword` VALUES ('1191', '收银员', '1309');
INSERT INTO `qs32_hotword` VALUES ('1192', '投资顾问助理', '19');
INSERT INTO `qs32_hotword` VALUES ('1197', '前台行政助理', '20');
INSERT INTO `qs32_hotword` VALUES ('1201', '开发经理', '63');
INSERT INTO `qs32_hotword` VALUES ('1202', '品牌运营经理', '15');
INSERT INTO `qs32_hotword` VALUES ('1206', '销售督导', '87');
INSERT INTO `qs32_hotword` VALUES ('1208', '营销主管', '138');
INSERT INTO `qs32_hotword` VALUES ('1211', '毛衫设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('1216', '水处理技术员', '16');
INSERT INTO `qs32_hotword` VALUES ('1217', '采编', '50');
INSERT INTO `qs32_hotword` VALUES ('1218', 'QC', '150');
INSERT INTO `qs32_hotword` VALUES ('1220', 'ERP专员', '27');
INSERT INTO `qs32_hotword` VALUES ('1226', '项目销售', '12');
INSERT INTO `qs32_hotword` VALUES ('1232', 'IT', '24');
INSERT INTO `qs32_hotword` VALUES ('1233', '影视制作', '14');
INSERT INTO `qs32_hotword` VALUES ('1242', '室内设计总监', '20');
INSERT INTO `qs32_hotword` VALUES ('1243', 'PHP工程师', '152');
INSERT INTO `qs32_hotword` VALUES ('1246', '人力资源专员', '674');
INSERT INTO `qs32_hotword` VALUES ('1247', '办公室秘书', '15');
INSERT INTO `qs32_hotword` VALUES ('1248', '设计工程师', '92');
INSERT INTO `qs32_hotword` VALUES ('1250', '证券事务代表', '33');
INSERT INTO `qs32_hotword` VALUES ('1252', '电子商务主管', '77');
INSERT INTO `qs32_hotword` VALUES ('1265', '见习经理', '52');
INSERT INTO `qs32_hotword` VALUES ('1269', 'JAVA开发', '42');
INSERT INTO `qs32_hotword` VALUES ('1271', '办公室文员', '631');
INSERT INTO `qs32_hotword` VALUES ('1281', '活动执行', '80');
INSERT INTO `qs32_hotword` VALUES ('1282', '渠道销售', '201');
INSERT INTO `qs32_hotword` VALUES ('1283', '网站营运专员', '65');
INSERT INTO `qs32_hotword` VALUES ('1286', '保洁主管', '82');
INSERT INTO `qs32_hotword` VALUES ('1287', '行政秘书', '112');
INSERT INTO `qs32_hotword` VALUES ('1292', '招生主管', '78');
INSERT INTO `qs32_hotword` VALUES ('1296', '美编', '57');
INSERT INTO `qs32_hotword` VALUES ('1297', '财务出纳', '79');
INSERT INTO `qs32_hotword` VALUES ('1298', '大客户销售', '48');
INSERT INTO `qs32_hotword` VALUES ('1299', '淘宝商城推广', '10');
INSERT INTO `qs32_hotword` VALUES ('1307', '呼叫中心坐席', '28');
INSERT INTO `qs32_hotword` VALUES ('1311', '广告销售', '71');
INSERT INTO `qs32_hotword` VALUES ('1316', '财务副经理', '52');
INSERT INTO `qs32_hotword` VALUES ('1321', '商品编辑', '10');
INSERT INTO `qs32_hotword` VALUES ('1324', '营销专员', '155');
INSERT INTO `qs32_hotword` VALUES ('1326', '高级销售代表', '176');
INSERT INTO `qs32_hotword` VALUES ('1328', '美容师', '358');
INSERT INTO `qs32_hotword` VALUES ('1335', '实验室助理', '11');
INSERT INTO `qs32_hotword` VALUES ('1336', '项目组长', '12');
INSERT INTO `qs32_hotword` VALUES ('1342', '生产厂长', '119');
INSERT INTO `qs32_hotword` VALUES ('1345', '人事行政助理', '189');
INSERT INTO `qs32_hotword` VALUES ('1347', '美工设计', '96');
INSERT INTO `qs32_hotword` VALUES ('1349', '仓储管理', '11');
INSERT INTO `qs32_hotword` VALUES ('1350', '技术人员', '134');
INSERT INTO `qs32_hotword` VALUES ('1351', '销售客服', '122');
INSERT INTO `qs32_hotword` VALUES ('1356', '质量管理员', '56');
INSERT INTO `qs32_hotword` VALUES ('1357', '生产部经理', '108');
INSERT INTO `qs32_hotword` VALUES ('1358', '品质部经理', '24');
INSERT INTO `qs32_hotword` VALUES ('1364', '外贸员', '22');
INSERT INTO `qs32_hotword` VALUES ('1366', '人事总监', '32');
INSERT INTO `qs32_hotword` VALUES ('1367', '系统工程师', '286');
INSERT INTO `qs32_hotword` VALUES ('1369', '工程业务代表', '28');
INSERT INTO `qs32_hotword` VALUES ('1370', '业务主办', '16');
INSERT INTO `qs32_hotword` VALUES ('1372', '行政人事', '39');
INSERT INTO `qs32_hotword` VALUES ('1379', '大区经理', '511');
INSERT INTO `qs32_hotword` VALUES ('1381', '文案企划', '12');
INSERT INTO `qs32_hotword` VALUES ('1383', '资深文案策划', '25');
INSERT INTO `qs32_hotword` VALUES ('1385', '调试工程师', '53');
INSERT INTO `qs32_hotword` VALUES ('1386', '销售部经理', '277');
INSERT INTO `qs32_hotword` VALUES ('1388', '高级培训讲师', '27');
INSERT INTO `qs32_hotword` VALUES ('1389', '策划', '169');
INSERT INTO `qs32_hotword` VALUES ('1391', '销售项目经理', '26');
INSERT INTO `qs32_hotword` VALUES ('1392', '电子商务助理', '31');
INSERT INTO `qs32_hotword` VALUES ('1393', '美术编辑', '82');
INSERT INTO `qs32_hotword` VALUES ('1394', '品牌经理', '253');
INSERT INTO `qs32_hotword` VALUES ('1397', '行政兼前台', '16');
INSERT INTO `qs32_hotword` VALUES ('1399', '应届实习生', '23');
INSERT INTO `qs32_hotword` VALUES ('1401', '医药代表', '1362');
INSERT INTO `qs32_hotword` VALUES ('1405', '运维工程师', '265');
INSERT INTO `qs32_hotword` VALUES ('1408', '营销顾问', '95');
INSERT INTO `qs32_hotword` VALUES ('1415', '税务经理', '17');
INSERT INTO `qs32_hotword` VALUES ('1416', '设备经理', '20');
INSERT INTO `qs32_hotword` VALUES ('1417', '设备工程师', '221');
INSERT INTO `qs32_hotword` VALUES ('1419', '设备主管', '58');
INSERT INTO `qs32_hotword` VALUES ('1420', '售后服务人员', '97');
INSERT INTO `qs32_hotword` VALUES ('1421', '储备销售经理', '20');
INSERT INTO `qs32_hotword` VALUES ('1426', '翻译', '57');
INSERT INTO `qs32_hotword` VALUES ('1439', '研究员', '45');
INSERT INTO `qs32_hotword` VALUES ('1440', '销售副总监', '17');
INSERT INTO `qs32_hotword` VALUES ('1441', '财务经理助理', '11');
INSERT INTO `qs32_hotword` VALUES ('1444', '企划设计', '10');
INSERT INTO `qs32_hotword` VALUES ('1450', '保险代理人', '117');
INSERT INTO `qs32_hotword` VALUES ('1451', '董事长助理', '216');
INSERT INTO `qs32_hotword` VALUES ('1452', '见习交易员', '34');
INSERT INTO `qs32_hotword` VALUES ('1453', '董事长秘书', '254');
INSERT INTO `qs32_hotword` VALUES ('1457', '交易员', '64');
INSERT INTO `qs32_hotword` VALUES ('1458', '公关助理', '26');
INSERT INTO `qs32_hotword` VALUES ('1459', '团队经理', '124');
INSERT INTO `qs32_hotword` VALUES ('1460', '理财顾问', '291');
INSERT INTO `qs32_hotword` VALUES ('1464', '媒体销售', '14');
INSERT INTO `qs32_hotword` VALUES ('1467', '法务助理', '51');
INSERT INTO `qs32_hotword` VALUES ('1468', '见习主管', '40');
INSERT INTO `qs32_hotword` VALUES ('1469', '国际贸易', '63');
INSERT INTO `qs32_hotword` VALUES ('1470', '平面设计专员', '62');
INSERT INTO `qs32_hotword` VALUES ('1478', '前台兼行政', '30');
INSERT INTO `qs32_hotword` VALUES ('1479', '渠道业务员', '29');
INSERT INTO `qs32_hotword` VALUES ('1480', '仓库主管', '402');
INSERT INTO `qs32_hotword` VALUES ('1481', '加盟部经理', '20');
INSERT INTO `qs32_hotword` VALUES ('1482', '客户经理助理', '12');
INSERT INTO `qs32_hotword` VALUES ('1490', '仓管员', '529');
INSERT INTO `qs32_hotword` VALUES ('1492', '机械设计师', '57');
INSERT INTO `qs32_hotword` VALUES ('1494', '销售顾问', '995');
INSERT INTO `qs32_hotword` VALUES ('1495', '营销管理', '13');
INSERT INTO `qs32_hotword` VALUES ('1497', '装配工', '84');
INSERT INTO `qs32_hotword` VALUES ('1499', '网络编辑', '301');
INSERT INTO `qs32_hotword` VALUES ('1505', '投资总监', '45');
INSERT INTO `qs32_hotword` VALUES ('1506', '品质主管', '80');
INSERT INTO `qs32_hotword` VALUES ('1508', '生产管理', '108');
INSERT INTO `qs32_hotword` VALUES ('1510', '珠宝销售', '11');
INSERT INTO `qs32_hotword` VALUES ('1511', '网站推广', '70');
INSERT INTO `qs32_hotword` VALUES ('1514', '光学工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('1520', '生产计划主管', '35');
INSERT INTO `qs32_hotword` VALUES ('1521', '电话营销', '532');
INSERT INTO `qs32_hotword` VALUES ('1522', '视觉设计师', '53');
INSERT INTO `qs32_hotword` VALUES ('1525', '工程项目经理', '242');
INSERT INTO `qs32_hotword` VALUES ('1530', '技术顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('1537', '媒介经理', '105');
INSERT INTO `qs32_hotword` VALUES ('1539', 'ERP工程师', '21');
INSERT INTO `qs32_hotword` VALUES ('1543', '面料跟单', '12');
INSERT INTO `qs32_hotword` VALUES ('1547', '高级理财经理', '23');
INSERT INTO `qs32_hotword` VALUES ('1548', '市场营销助理', '12');
INSERT INTO `qs32_hotword` VALUES ('1554', 'CNC操作员', '16');
INSERT INTO `qs32_hotword` VALUES ('1556', '省级经理', '281');
INSERT INTO `qs32_hotword` VALUES ('1559', '市场管理', '10');
INSERT INTO `qs32_hotword` VALUES ('1563', '设计总监', '310');
INSERT INTO `qs32_hotword` VALUES ('1564', '企管专员', '22');
INSERT INTO `qs32_hotword` VALUES ('1566', '效果图制作', '28');
INSERT INTO `qs32_hotword` VALUES ('1568', '招商主管', '236');
INSERT INTO `qs32_hotword` VALUES ('1569', '招商专员', '593');
INSERT INTO `qs32_hotword` VALUES ('1570', '行政总监', '121');
INSERT INTO `qs32_hotword` VALUES ('1574', '生产技术员', '77');
INSERT INTO `qs32_hotword` VALUES ('1577', '外贸业务专员', '11');
INSERT INTO `qs32_hotword` VALUES ('1582', 'IE工程师', '176');
INSERT INTO `qs32_hotword` VALUES ('1583', '效果图设计师', '103');
INSERT INTO `qs32_hotword` VALUES ('1586', '高中物理教师', '39');
INSERT INTO `qs32_hotword` VALUES ('1587', '驻外库管', '16');
INSERT INTO `qs32_hotword` VALUES ('1588', '体系工程师', '51');
INSERT INTO `qs32_hotword` VALUES ('1591', '营业担当', '47');
INSERT INTO `qs32_hotword` VALUES ('1595', '网站运营总监', '34');
INSERT INTO `qs32_hotword` VALUES ('1598', '行政人事专员', '255');
INSERT INTO `qs32_hotword` VALUES ('1601', '售后工程师', '210');
INSERT INTO `qs32_hotword` VALUES ('1603', '珠宝营业员', '14');
INSERT INTO `qs32_hotword` VALUES ('1604', '促销员', '154');
INSERT INTO `qs32_hotword` VALUES ('1607', '客服销售', '13');
INSERT INTO `qs32_hotword` VALUES ('1613', '储备经理人', '84');
INSERT INTO `qs32_hotword` VALUES ('1615', '渠道拓展经理', '22');
INSERT INTO `qs32_hotword` VALUES ('1621', 'C++程序员', '59');
INSERT INTO `qs32_hotword` VALUES ('1624', 'BD专员', '22');
INSERT INTO `qs32_hotword` VALUES ('1626', '英语教师', '204');
INSERT INTO `qs32_hotword` VALUES ('1629', '亲子教师', '35');
INSERT INTO `qs32_hotword` VALUES ('1631', '策略总监', '37');
INSERT INTO `qs32_hotword` VALUES ('1633', 'IT项目经理', '12');
INSERT INTO `qs32_hotword` VALUES ('1635', '首席设计师', '78');
INSERT INTO `qs32_hotword` VALUES ('1637', '政府事务专员', '22');
INSERT INTO `qs32_hotword` VALUES ('1639', '运营主管', '102');
INSERT INTO `qs32_hotword` VALUES ('1641', '软件架构师', '31');
INSERT INTO `qs32_hotword` VALUES ('1643', 'EHS专员', '11');
INSERT INTO `qs32_hotword` VALUES ('1646', '架构师', '24');
INSERT INTO `qs32_hotword` VALUES ('1647', '企业文化经理', '11');
INSERT INTO `qs32_hotword` VALUES ('1658', '监控工程师', '21');
INSERT INTO `qs32_hotword` VALUES ('1661', 'DBA', '25');
INSERT INTO `qs32_hotword` VALUES ('1663', '网站运营专员', '52');
INSERT INTO `qs32_hotword` VALUES ('1667', '人力资源主管', '599');
INSERT INTO `qs32_hotword` VALUES ('1671', '视频编辑', '41');
INSERT INTO `qs32_hotword` VALUES ('1672', '国际销售', '14');
INSERT INTO `qs32_hotword` VALUES ('1673', '研发专员', '12');
INSERT INTO `qs32_hotword` VALUES ('1676', '培训顾问', '65');
INSERT INTO `qs32_hotword` VALUES ('1677', '区域主管', '219');
INSERT INTO `qs32_hotword` VALUES ('1681', '人事行政文员', '30');
INSERT INTO `qs32_hotword` VALUES ('1683', '电话营销经理', '25');
INSERT INTO `qs32_hotword` VALUES ('1685', '电话销售顾问', '25');
INSERT INTO `qs32_hotword` VALUES ('1688', '文案助理', '18');
INSERT INTO `qs32_hotword` VALUES ('1695', '招生老师', '50');
INSERT INTO `qs32_hotword` VALUES ('1696', '网站运营经理', '46');
INSERT INTO `qs32_hotword` VALUES ('1698', '行政人员', '75');
INSERT INTO `qs32_hotword` VALUES ('1700', '电话助理', '28');
INSERT INTO `qs32_hotword` VALUES ('1704', '系统策划', '44');
INSERT INTO `qs32_hotword` VALUES ('1705', '策划师', '214');
INSERT INTO `qs32_hotword` VALUES ('1706', '市场拓展经理', '104');
INSERT INTO `qs32_hotword` VALUES ('1707', '生产操作工', '48');
INSERT INTO `qs32_hotword` VALUES ('1710', '市场总监助理', '22');
INSERT INTO `qs32_hotword` VALUES ('1713', '教育咨询师', '242');
INSERT INTO `qs32_hotword` VALUES ('1715', '售前工程师', '351');
INSERT INTO `qs32_hotword` VALUES ('1716', '少儿英语教师', '162');
INSERT INTO `qs32_hotword` VALUES ('1718', '咨询顾问', '430');
INSERT INTO `qs32_hotword` VALUES ('1720', '招生顾问', '35');
INSERT INTO `qs32_hotword` VALUES ('1730', '教育咨询顾问', '14');
INSERT INTO `qs32_hotword` VALUES ('1732', '客户主管', '118');
INSERT INTO `qs32_hotword` VALUES ('1734', '客户服务人员', '12');
INSERT INTO `qs32_hotword` VALUES ('1735', '市场部经理', '972');
INSERT INTO `qs32_hotword` VALUES ('1736', 'OTC经理', '24');
INSERT INTO `qs32_hotword` VALUES ('1737', '餐厅主管', '50');
INSERT INTO `qs32_hotword` VALUES ('1739', '合同管理员', '44');
INSERT INTO `qs32_hotword` VALUES ('1740', 'OTC主管', '10');
INSERT INTO `qs32_hotword` VALUES ('1742', '产品运营专员', '13');
INSERT INTO `qs32_hotword` VALUES ('1743', '动画编剧', '13');
INSERT INTO `qs32_hotword` VALUES ('1747', '高级讲师', '32');
INSERT INTO `qs32_hotword` VALUES ('1752', '研发部经理', '71');
INSERT INTO `qs32_hotword` VALUES ('1759', '行政文秘', '88');
INSERT INTO `qs32_hotword` VALUES ('1761', '市场推广人员', '31');
INSERT INTO `qs32_hotword` VALUES ('1762', '企划专员', '269');
INSERT INTO `qs32_hotword` VALUES ('1763', '核算会计', '75');
INSERT INTO `qs32_hotword` VALUES ('1764', 'UI设计师', '268');
INSERT INTO `qs32_hotword` VALUES ('1768', '成本会计', '610');
INSERT INTO `qs32_hotword` VALUES ('1770', '淘宝推广', '49');
INSERT INTO `qs32_hotword` VALUES ('1771', '网络咨询师', '36');
INSERT INTO `qs32_hotword` VALUES ('1775', '导购员', '777');
INSERT INTO `qs32_hotword` VALUES ('1783', '培训岗', '17');
INSERT INTO `qs32_hotword` VALUES ('1788', '保洁员', '378');
INSERT INTO `qs32_hotword` VALUES ('1790', '传菜员', '161');
INSERT INTO `qs32_hotword` VALUES ('1792', '招生专员', '97');
INSERT INTO `qs32_hotword` VALUES ('1796', '前台秘书', '56');
INSERT INTO `qs32_hotword` VALUES ('1798', '招生咨询顾问', '12');
INSERT INTO `qs32_hotword` VALUES ('1801', '发行员', '21');
INSERT INTO `qs32_hotword` VALUES ('1805', '策划编辑', '21');
INSERT INTO `qs32_hotword` VALUES ('1810', '旅游销售', '14');
INSERT INTO `qs32_hotword` VALUES ('1812', '导购', '289');
INSERT INTO `qs32_hotword` VALUES ('1829', '房地产经纪人', '189');
INSERT INTO `qs32_hotword` VALUES ('1832', '课程咨询顾问', '45');
INSERT INTO `qs32_hotword` VALUES ('1834', '数据文员', '17');
INSERT INTO `qs32_hotword` VALUES ('1837', '商务文员', '130');
INSERT INTO `qs32_hotword` VALUES ('1842', '数据分析师', '58');
INSERT INTO `qs32_hotword` VALUES ('1845', '时尚编辑', '19');
INSERT INTO `qs32_hotword` VALUES ('1846', '网站客服', '53');
INSERT INTO `qs32_hotword` VALUES ('1849', '高级销售', '26');
INSERT INTO `qs32_hotword` VALUES ('1855', '生产工人', '99');
INSERT INTO `qs32_hotword` VALUES ('1859', '仓库组长', '14');
INSERT INTO `qs32_hotword` VALUES ('1864', '商务经理', '548');
INSERT INTO `qs32_hotword` VALUES ('1869', '院长', '21');
INSERT INTO `qs32_hotword` VALUES ('1873', '百度竞价专员', '32');
INSERT INTO `qs32_hotword` VALUES ('1876', '文案专员', '61');
INSERT INTO `qs32_hotword` VALUES ('1878', '资深设计', '55');
INSERT INTO `qs32_hotword` VALUES ('1879', '网络主管', '41');
INSERT INTO `qs32_hotword` VALUES ('1881', '办公室文秘', '47');
INSERT INTO `qs32_hotword` VALUES ('1882', '网络咨询医生', '45');
INSERT INTO `qs32_hotword` VALUES ('1883', '凉菜厨师', '15');
INSERT INTO `qs32_hotword` VALUES ('1885', '洗碗工', '96');
INSERT INTO `qs32_hotword` VALUES ('1887', '餐饮部经理', '52');
INSERT INTO `qs32_hotword` VALUES ('1889', '摄影师', '209');
INSERT INTO `qs32_hotword` VALUES ('1890', '库房理货员', '10');
INSERT INTO `qs32_hotword` VALUES ('1894', '网络销售员', '41');
INSERT INTO `qs32_hotword` VALUES ('1898', '业务督导', '30');
INSERT INTO `qs32_hotword` VALUES ('1899', '策划专员', '325');
INSERT INTO `qs32_hotword` VALUES ('1902', '信息专员', '66');
INSERT INTO `qs32_hotword` VALUES ('1907', '网络咨询', '67');
INSERT INTO `qs32_hotword` VALUES ('1909', '发行经理', '12');
INSERT INTO `qs32_hotword` VALUES ('1910', '质检工程师', '42');
INSERT INTO `qs32_hotword` VALUES ('1911', '项目会计', '19');
INSERT INTO `qs32_hotword` VALUES ('1913', '水暖工', '40');
INSERT INTO `qs32_hotword` VALUES ('1914', '空调工', '100');
INSERT INTO `qs32_hotword` VALUES ('1916', '品质管理员', '27');
INSERT INTO `qs32_hotword` VALUES ('1917', '品牌督导', '18');
INSERT INTO `qs32_hotword` VALUES ('1923', '消防中控员', '19');
INSERT INTO `qs32_hotword` VALUES ('1926', '规划设计师', '35');
INSERT INTO `qs32_hotword` VALUES ('1927', '高压电工', '40');
INSERT INTO `qs32_hotword` VALUES ('1928', '组训岗', '12');
INSERT INTO `qs32_hotword` VALUES ('1929', '数据分析主管', '10');
INSERT INTO `qs32_hotword` VALUES ('1931', '初级操盘手', '26');
INSERT INTO `qs32_hotword` VALUES ('1933', '英文翻译', '37');
INSERT INTO `qs32_hotword` VALUES ('1935', '销售人员', '1090');
INSERT INTO `qs32_hotword` VALUES ('1936', '教育咨询专员', '10');
INSERT INTO `qs32_hotword` VALUES ('1937', '家装业务员', '51');
INSERT INTO `qs32_hotword` VALUES ('1941', '营销代表', '158');
INSERT INTO `qs32_hotword` VALUES ('1942', '售后服务专员', '172');
INSERT INTO `qs32_hotword` VALUES ('1943', '英文编辑', '27');
INSERT INTO `qs32_hotword` VALUES ('1945', '工程业务员', '43');
INSERT INTO `qs32_hotword` VALUES ('1947', '高级编辑', '12');
INSERT INTO `qs32_hotword` VALUES ('1951', '图书编辑', '25');
INSERT INTO `qs32_hotword` VALUES ('1958', '会员专员', '12');
INSERT INTO `qs32_hotword` VALUES ('1959', '销售行政助理', '47');
INSERT INTO `qs32_hotword` VALUES ('1960', '人员管理岗', '17');
INSERT INTO `qs32_hotword` VALUES ('1961', '网站运营', '34');
INSERT INTO `qs32_hotword` VALUES ('1963', '区域运营经理', '24');
INSERT INTO `qs32_hotword` VALUES ('1965', '仓库管理', '41');
INSERT INTO `qs32_hotword` VALUES ('1975', '酒店副总经理', '10');
INSERT INTO `qs32_hotword` VALUES ('1978', '学习顾问', '76');
INSERT INTO `qs32_hotword` VALUES ('1980', '餐饮总监', '42');
INSERT INTO `qs32_hotword` VALUES ('1983', '酒店财务经理', '10');
INSERT INTO `qs32_hotword` VALUES ('1987', '营销部经理', '97');
INSERT INTO `qs32_hotword` VALUES ('1990', '药店营业员', '49');
INSERT INTO `qs32_hotword` VALUES ('1991', '专职律师', '10');
INSERT INTO `qs32_hotword` VALUES ('1993', '执业药师', '33');
INSERT INTO `qs32_hotword` VALUES ('1996', '交互设计师', '36');
INSERT INTO `qs32_hotword` VALUES ('1999', '机电工程师', '249');
INSERT INTO `qs32_hotword` VALUES ('2005', '销售内勤', '988');
INSERT INTO `qs32_hotword` VALUES ('2009', '淘宝客服专员', '32');
INSERT INTO `qs32_hotword` VALUES ('2010', '产品编辑', '16');
INSERT INTO `qs32_hotword` VALUES ('2013', '项目主管', '199');
INSERT INTO `qs32_hotword` VALUES ('2014', '助理咨询顾问', '11');
INSERT INTO `qs32_hotword` VALUES ('2022', '应收会计', '26');
INSERT INTO `qs32_hotword` VALUES ('2026', '工装设计师', '60');
INSERT INTO `qs32_hotword` VALUES ('2037', '库房管理员', '161');
INSERT INTO `qs32_hotword` VALUES ('2041', '行业销售经理', '57');
INSERT INTO `qs32_hotword` VALUES ('2052', '董事会秘书', '36');
INSERT INTO `qs32_hotword` VALUES ('2054', '运维经理', '14');
INSERT INTO `qs32_hotword` VALUES ('2058', '运营专员', '151');
INSERT INTO `qs32_hotword` VALUES ('2059', '广告文案策划', '24');
INSERT INTO `qs32_hotword` VALUES ('2076', '产品专员', '260');
INSERT INTO `qs32_hotword` VALUES ('2079', '高级策划师', '89');
INSERT INTO `qs32_hotword` VALUES ('2089', '零售经理', '56');
INSERT INTO `qs32_hotword` VALUES ('2090', '综合管理岗', '10');
INSERT INTO `qs32_hotword` VALUES ('2091', '咨询助理', '61');
INSERT INTO `qs32_hotword` VALUES ('2095', '团购专员', '36');
INSERT INTO `qs32_hotword` VALUES ('2096', '分校校长', '61');
INSERT INTO `qs32_hotword` VALUES ('2098', '生产工程师', '41');
INSERT INTO `qs32_hotword` VALUES ('2105', 'JSP程序员', '12');
INSERT INTO `qs32_hotword` VALUES ('2106', '开发助理', '20');
INSERT INTO `qs32_hotword` VALUES ('2109', '区域助理', '13');
INSERT INTO `qs32_hotword` VALUES ('2110', '电话销售代表', '124');
INSERT INTO `qs32_hotword` VALUES ('2115', '专职英语翻译', '20');
INSERT INTO `qs32_hotword` VALUES ('2116', '网优工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('2123', '数值策划', '80');
INSERT INTO `qs32_hotword` VALUES ('2135', 'IT管理员', '28');
INSERT INTO `qs32_hotword` VALUES ('2141', '买手', '25');
INSERT INTO `qs32_hotword` VALUES ('2148', '外贸经理', '73');
INSERT INTO `qs32_hotword` VALUES ('2152', '配送主管', '13');
INSERT INTO `qs32_hotword` VALUES ('2161', '项目管理', '37');
INSERT INTO `qs32_hotword` VALUES ('2167', '中医医师', '12');
INSERT INTO `qs32_hotword` VALUES ('2169', '保健医生', '16');
INSERT INTO `qs32_hotword` VALUES ('2170', '会计人员', '10');
INSERT INTO `qs32_hotword` VALUES ('2172', '库管', '557');
INSERT INTO `qs32_hotword` VALUES ('2175', '投资助理', '29');
INSERT INTO `qs32_hotword` VALUES ('2176', '推广专员', '184');
INSERT INTO `qs32_hotword` VALUES ('2177', '品牌总监', '52');
INSERT INTO `qs32_hotword` VALUES ('2181', '法务人员', '17');
INSERT INTO `qs32_hotword` VALUES ('2182', '销售副总', '76');
INSERT INTO `qs32_hotword` VALUES ('2187', '大客户总监', '17');
INSERT INTO `qs32_hotword` VALUES ('2198', '信息录入员', '25');
INSERT INTO `qs32_hotword` VALUES ('2202', '行政部经理', '51');
INSERT INTO `qs32_hotword` VALUES ('2203', '建筑师', '124');
INSERT INTO `qs32_hotword` VALUES ('2205', '主任助理', '38');
INSERT INTO `qs32_hotword` VALUES ('2208', '服务专员', '55');
INSERT INTO `qs32_hotword` VALUES ('2212', '服装跟单员', '25');
INSERT INTO `qs32_hotword` VALUES ('2223', '结构设计', '24');
INSERT INTO `qs32_hotword` VALUES ('2224', '客服助理', '183');
INSERT INTO `qs32_hotword` VALUES ('2225', '水电设计师', '44');
INSERT INTO `qs32_hotword` VALUES ('2229', '项目总监', '143');
INSERT INTO `qs32_hotword` VALUES ('2236', '主任建筑师', '14');
INSERT INTO `qs32_hotword` VALUES ('2240', '出单员', '13');
INSERT INTO `qs32_hotword` VALUES ('2241', '系统分析师', '37');
INSERT INTO `qs32_hotword` VALUES ('2250', '主持人', '103');
INSERT INTO `qs32_hotword` VALUES ('2260', '淘宝运营', '18');
INSERT INTO `qs32_hotword` VALUES ('2264', '编导', '47');
INSERT INTO `qs32_hotword` VALUES ('2276', '高级销售经理', '274');
INSERT INTO `qs32_hotword` VALUES ('2283', '企业文化主管', '24');
INSERT INTO `qs32_hotword` VALUES ('2287', '运营经理', '262');
INSERT INTO `qs32_hotword` VALUES ('2294', '品牌推广专员', '52');
INSERT INTO `qs32_hotword` VALUES ('2296', '语文教师', '41');
INSERT INTO `qs32_hotword` VALUES ('2297', '业务文员', '37');
INSERT INTO `qs32_hotword` VALUES ('2301', 'AE', '65');
INSERT INTO `qs32_hotword` VALUES ('2306', '教务管理', '40');
INSERT INTO `qs32_hotword` VALUES ('2309', '门店经理', '65');
INSERT INTO `qs32_hotword` VALUES ('2319', '公共关系经理', '14');
INSERT INTO `qs32_hotword` VALUES ('2322', '店面销售人员', '26');
INSERT INTO `qs32_hotword` VALUES ('2323', '需求分析师', '59');
INSERT INTO `qs32_hotword` VALUES ('2327', '投标专员', '22');
INSERT INTO `qs32_hotword` VALUES ('2331', '竞价专员', '35');
INSERT INTO `qs32_hotword` VALUES ('2333', '大客户专员', '77');
INSERT INTO `qs32_hotword` VALUES ('2335', '信息部经理', '23');
INSERT INTO `qs32_hotword` VALUES ('2337', '安防工程师', '33');
INSERT INTO `qs32_hotword` VALUES ('2339', '资金主管', '15');
INSERT INTO `qs32_hotword` VALUES ('2341', '研发总监', '41');
INSERT INTO `qs32_hotword` VALUES ('2350', '前期专员', '22');
INSERT INTO `qs32_hotword` VALUES ('2352', '叉车司机', '125');
INSERT INTO `qs32_hotword` VALUES ('2359', '前台文秘', '66');
INSERT INTO `qs32_hotword` VALUES ('2371', '财务部经理', '140');
INSERT INTO `qs32_hotword` VALUES ('2372', '中药调剂员', '18');
INSERT INTO `qs32_hotword` VALUES ('2373', '副总经理助理', '31');
INSERT INTO `qs32_hotword` VALUES ('2375', '网站设计师', '85');
INSERT INTO `qs32_hotword` VALUES ('2378', 'C#程序员', '28');
INSERT INTO `qs32_hotword` VALUES ('2379', '行业销售代表', '13');
INSERT INTO `qs32_hotword` VALUES ('2381', '出纳兼行政', '65');
INSERT INTO `qs32_hotword` VALUES ('2382', '技师', '14');
INSERT INTO `qs32_hotword` VALUES ('2383', '宣传主管', '10');
INSERT INTO `qs32_hotword` VALUES ('2385', '工业设计师', '45');
INSERT INTO `qs32_hotword` VALUES ('2388', '美国咨询顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('2389', '销售行政', '23');
INSERT INTO `qs32_hotword` VALUES ('2390', '员工食堂厨师', '13');
INSERT INTO `qs32_hotword` VALUES ('2398', '销售部门经理', '17');
INSERT INTO `qs32_hotword` VALUES ('2407', '审计师', '38');
INSERT INTO `qs32_hotword` VALUES ('2417', '研发项目经理', '42');
INSERT INTO `qs32_hotword` VALUES ('2418', '市场业务代表', '17');
INSERT INTO `qs32_hotword` VALUES ('2426', '网站优化', '20');
INSERT INTO `qs32_hotword` VALUES ('2429', '工程技术人员', '73');
INSERT INTO `qs32_hotword` VALUES ('2440', '创意文案', '57');
INSERT INTO `qs32_hotword` VALUES ('2449', '工程项目总监', '18');
INSERT INTO `qs32_hotword` VALUES ('2450', '设计', '84');
INSERT INTO `qs32_hotword` VALUES ('2453', '生产副总', '65');
INSERT INTO `qs32_hotword` VALUES ('2459', '生产主管', '331');
INSERT INTO `qs32_hotword` VALUES ('2465', '销售精英', '551');
INSERT INTO `qs32_hotword` VALUES ('2469', '在线客服', '26');
INSERT INTO `qs32_hotword` VALUES ('2477', '预算主管', '42');
INSERT INTO `qs32_hotword` VALUES ('2479', '检验师', '38');
INSERT INTO `qs32_hotword` VALUES ('2484', '信用卡专员', '69');
INSERT INTO `qs32_hotword` VALUES ('2487', '店面销售', '114');
INSERT INTO `qs32_hotword` VALUES ('2488', '信贷专员', '52');
INSERT INTO `qs32_hotword` VALUES ('2495', '贸易专员', '11');
INSERT INTO `qs32_hotword` VALUES ('2502', '客房部经理', '31');
INSERT INTO `qs32_hotword` VALUES ('2508', '展览业务员', '19');
INSERT INTO `qs32_hotword` VALUES ('2523', 'IT经理', '28');
INSERT INTO `qs32_hotword` VALUES ('2524', '经理', '210');
INSERT INTO `qs32_hotword` VALUES ('2525', '网络推广主管', '67');
INSERT INTO `qs32_hotword` VALUES ('2527', '客服文员', '159');
INSERT INTO `qs32_hotword` VALUES ('2528', '人事主管', '745');
INSERT INTO `qs32_hotword` VALUES ('2532', '招投标专员', '38');
INSERT INTO `qs32_hotword` VALUES ('2533', '资深策划', '71');
INSERT INTO `qs32_hotword` VALUES ('2535', '审计主管', '103');
INSERT INTO `qs32_hotword` VALUES ('2543', '导演', '13');
INSERT INTO `qs32_hotword` VALUES ('2544', '资深客户经理', '20');
INSERT INTO `qs32_hotword` VALUES ('2546', '责任编辑', '65');
INSERT INTO `qs32_hotword` VALUES ('2549', '活动策划经理', '15');
INSERT INTO `qs32_hotword` VALUES ('2551', '应届毕业生', '166');
INSERT INTO `qs32_hotword` VALUES ('2552', '软件开发经理', '15');
INSERT INTO `qs32_hotword` VALUES ('2558', '职业顾问', '19');
INSERT INTO `qs32_hotword` VALUES ('2559', '法务主管', '86');
INSERT INTO `qs32_hotword` VALUES ('2562', '产品工程师', '160');
INSERT INTO `qs32_hotword` VALUES ('2573', '部门主管', '16');
INSERT INTO `qs32_hotword` VALUES ('2578', '预算', '10');
INSERT INTO `qs32_hotword` VALUES ('2579', '策划部经理', '65');
INSERT INTO `qs32_hotword` VALUES ('2587', '采购主管', '343');
INSERT INTO `qs32_hotword` VALUES ('2588', '人力资源助理', '187');
INSERT INTO `qs32_hotword` VALUES ('2589', '活动专员', '57');
INSERT INTO `qs32_hotword` VALUES ('2593', '前期部经理', '15');
INSERT INTO `qs32_hotword` VALUES ('2594', '市场开发', '60');
INSERT INTO `qs32_hotword` VALUES ('2597', '儿科医生', '12');
INSERT INTO `qs32_hotword` VALUES ('2602', 'SEO', '22');
INSERT INTO `qs32_hotword` VALUES ('2605', '办公室助理', '65');
INSERT INTO `qs32_hotword` VALUES ('2606', '男科医生', '10');
INSERT INTO `qs32_hotword` VALUES ('2608', '市场推广专员', '329');
INSERT INTO `qs32_hotword` VALUES ('2615', '制剂研究员', '14');
INSERT INTO `qs32_hotword` VALUES ('2616', '综合维修工', '66');
INSERT INTO `qs32_hotword` VALUES ('2621', '业务拓展', '44');
INSERT INTO `qs32_hotword` VALUES ('2622', '英语翻译', '279');
INSERT INTO `qs32_hotword` VALUES ('2627', '小时工', '18');
INSERT INTO `qs32_hotword` VALUES ('2628', '平面模特', '13');
INSERT INTO `qs32_hotword` VALUES ('2633', '行业销售', '11');
INSERT INTO `qs32_hotword` VALUES ('2635', '项目文员', '11');
INSERT INTO `qs32_hotword` VALUES ('2638', '客户维护专员', '17');
INSERT INTO `qs32_hotword` VALUES ('2651', '主案设计师', '77');
INSERT INTO `qs32_hotword` VALUES ('2656', '保安员', '358');
INSERT INTO `qs32_hotword` VALUES ('2665', '中控员', '21');
INSERT INTO `qs32_hotword` VALUES ('2667', '售后服务经理', '68');
INSERT INTO `qs32_hotword` VALUES ('2670', 'QA工程师', '42');
INSERT INTO `qs32_hotword` VALUES ('2672', '高级销售主管', '10');
INSERT INTO `qs32_hotword` VALUES ('2682', '外贸跟单', '85');
INSERT INTO `qs32_hotword` VALUES ('2685', '培训讲师', '496');
INSERT INTO `qs32_hotword` VALUES ('2686', '汽车销售顾问', '76');
INSERT INTO `qs32_hotword` VALUES ('2687', '策划文案', '207');
INSERT INTO `qs32_hotword` VALUES ('2708', '园林设计师', '17');
INSERT INTO `qs32_hotword` VALUES ('2713', '投资专员', '62');
INSERT INTO `qs32_hotword` VALUES ('2717', '项目策划经理', '17');
INSERT INTO `qs32_hotword` VALUES ('2718', '游戏运营经理', '11');
INSERT INTO `qs32_hotword` VALUES ('2722', '财务部会计', '26');
INSERT INTO `qs32_hotword` VALUES ('2725', '执行助理', '11');
INSERT INTO `qs32_hotword` VALUES ('2726', '咨询师', '193');
INSERT INTO `qs32_hotword` VALUES ('2732', '技术总监', '262');
INSERT INTO `qs32_hotword` VALUES ('2738', '技术助理', '46');
INSERT INTO `qs32_hotword` VALUES ('2740', '财务分析员', '23');
INSERT INTO `qs32_hotword` VALUES ('2750', '培训主管', '478');
INSERT INTO `qs32_hotword` VALUES ('2752', '平面设计人员', '36');
INSERT INTO `qs32_hotword` VALUES ('2755', '产品销售专员', '16');
INSERT INTO `qs32_hotword` VALUES ('2757', '弱电技工', '21');
INSERT INTO `qs32_hotword` VALUES ('2760', '网络管理', '55');
INSERT INTO `qs32_hotword` VALUES ('2774', '高级营销经理', '19');
INSERT INTO `qs32_hotword` VALUES ('2775', '小学数学教师', '24');
INSERT INTO `qs32_hotword` VALUES ('2776', '招生主任', '12');
INSERT INTO `qs32_hotword` VALUES ('2777', '商品部主管', '18');
INSERT INTO `qs32_hotword` VALUES ('2783', '精装修工程师', '57');
INSERT INTO `qs32_hotword` VALUES ('2787', '技术支持经理', '37');
INSERT INTO `qs32_hotword` VALUES ('2794', '艺术总监', '11');
INSERT INTO `qs32_hotword` VALUES ('2797', '动画师', '29');
INSERT INTO `qs32_hotword` VALUES ('2798', '后期制作', '70');
INSERT INTO `qs32_hotword` VALUES ('2803', '区域服务专员', '57');
INSERT INTO `qs32_hotword` VALUES ('2812', 'SEM专员', '14');
INSERT INTO `qs32_hotword` VALUES ('2816', '给排水工程师', '163');
INSERT INTO `qs32_hotword` VALUES ('2817', '前台接待员', '67');
INSERT INTO `qs32_hotword` VALUES ('2822', '品控专员', '27');
INSERT INTO `qs32_hotword` VALUES ('2823', '区域服务经理', '11');
INSERT INTO `qs32_hotword` VALUES ('2825', '企划文案', '99');
INSERT INTO `qs32_hotword` VALUES ('2827', '记者', '53');
INSERT INTO `qs32_hotword` VALUES ('2829', '营销策划经理', '83');
INSERT INTO `qs32_hotword` VALUES ('2830', '洗车工', '74');
INSERT INTO `qs32_hotword` VALUES ('2832', '客服主管', '404');
INSERT INTO `qs32_hotword` VALUES ('2835', '施工图设计师', '77');
INSERT INTO `qs32_hotword` VALUES ('2839', '强电技工', '13');
INSERT INTO `qs32_hotword` VALUES ('2840', '公关主管', '31');
INSERT INTO `qs32_hotword` VALUES ('2842', '质量管理主管', '40');
INSERT INTO `qs32_hotword` VALUES ('2863', '讲师助理', '39');
INSERT INTO `qs32_hotword` VALUES ('2866', '高级设计师', '63');
INSERT INTO `qs32_hotword` VALUES ('2871', '教学总监', '40');
INSERT INTO `qs32_hotword` VALUES ('2874', '市场开发专员', '53');
INSERT INTO `qs32_hotword` VALUES ('2875', '库房管理', '40');
INSERT INTO `qs32_hotword` VALUES ('2879', 'ARM工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('2885', '网站运营主管', '31');
INSERT INTO `qs32_hotword` VALUES ('2891', '销售业务人员', '11');
INSERT INTO `qs32_hotword` VALUES ('2892', '市场推广员', '86');
INSERT INTO `qs32_hotword` VALUES ('2896', '电话销售人员', '74');
INSERT INTO `qs32_hotword` VALUES ('2898', '促销督导', '203');
INSERT INTO `qs32_hotword` VALUES ('2902', '品牌主管', '43');
INSERT INTO `qs32_hotword` VALUES ('2903', '跟单员', '140');
INSERT INTO `qs32_hotword` VALUES ('2906', '工艺工程师', '364');
INSERT INTO `qs32_hotword` VALUES ('2908', '网络美工', '61');
INSERT INTO `qs32_hotword` VALUES ('2911', '货车驾驶员', '11');
INSERT INTO `qs32_hotword` VALUES ('2914', '信息管理员', '63');
INSERT INTO `qs32_hotword` VALUES ('2915', '技术经理', '161');
INSERT INTO `qs32_hotword` VALUES ('2916', '电子工程师', '285');
INSERT INTO `qs32_hotword` VALUES ('2919', '餐厅见习经理', '90');
INSERT INTO `qs32_hotword` VALUES ('2925', 'SEO推广', '11');
INSERT INTO `qs32_hotword` VALUES ('2926', '税务会计', '73');
INSERT INTO `qs32_hotword` VALUES ('2928', '行政人事总监', '44');
INSERT INTO `qs32_hotword` VALUES ('2929', '组训', '16');
INSERT INTO `qs32_hotword` VALUES ('2930', '工程助理', '85');
INSERT INTO `qs32_hotword` VALUES ('2932', '市场策划专员', '95');
INSERT INTO `qs32_hotword` VALUES ('2934', '学习管理师', '82');
INSERT INTO `qs32_hotword` VALUES ('2938', '工程管理员', '18');
INSERT INTO `qs32_hotword` VALUES ('2942', '店面销售员', '17');
INSERT INTO `qs32_hotword` VALUES ('2943', '销售总监助理', '59');
INSERT INTO `qs32_hotword` VALUES ('2947', '项目督导', '22');
INSERT INTO `qs32_hotword` VALUES ('2948', '跟单文员', '85');
INSERT INTO `qs32_hotword` VALUES ('2962', '销售文员', '358');
INSERT INTO `qs32_hotword` VALUES ('2971', '副总助理', '24');
INSERT INTO `qs32_hotword` VALUES ('2975', '视频剪辑', '10');
INSERT INTO `qs32_hotword` VALUES ('2980', '市场研究经理', '15');
INSERT INTO `qs32_hotword` VALUES ('2981', '营销总监助理', '36');
INSERT INTO `qs32_hotword` VALUES ('2983', '茶艺师', '79');
INSERT INTO `qs32_hotword` VALUES ('2984', '店长助理', '130');
INSERT INTO `qs32_hotword` VALUES ('2993', '实验室工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('2994', '营销员', '70');
INSERT INTO `qs32_hotword` VALUES ('2996', '初中化学老师', '11');
INSERT INTO `qs32_hotword` VALUES ('2999', '业务总监', '48');
INSERT INTO `qs32_hotword` VALUES ('3013', '薪酬福利专员', '33');
INSERT INTO `qs32_hotword` VALUES ('3017', '排版设计', '26');
INSERT INTO `qs32_hotword` VALUES ('3018', '营销精英', '63');
INSERT INTO `qs32_hotword` VALUES ('3019', '生产员工', '16');
INSERT INTO `qs32_hotword` VALUES ('3030', '呼叫中心经理', '26');
INSERT INTO `qs32_hotword` VALUES ('3031', '游戏主策划', '15');
INSERT INTO `qs32_hotword` VALUES ('3032', '旅游顾问', '30');
INSERT INTO `qs32_hotword` VALUES ('3033', 'KA经理', '45');
INSERT INTO `qs32_hotword` VALUES ('3034', '旅游销售代表', '15');
INSERT INTO `qs32_hotword` VALUES ('3042', '物流', '11');
INSERT INTO `qs32_hotword` VALUES ('3043', '项目专员', '88');
INSERT INTO `qs32_hotword` VALUES ('3045', '淘宝美工', '200');
INSERT INTO `qs32_hotword` VALUES ('3046', '男装设计师', '47');
INSERT INTO `qs32_hotword` VALUES ('3050', '手机游戏美工', '12');
INSERT INTO `qs32_hotword` VALUES ('3054', '普工', '355');
INSERT INTO `qs32_hotword` VALUES ('3056', '安装工人', '24');
INSERT INTO `qs32_hotword` VALUES ('3058', '焊工', '190');
INSERT INTO `qs32_hotword` VALUES ('3061', '会计文员', '86');
INSERT INTO `qs32_hotword` VALUES ('3064', '售后文员', '26');
INSERT INTO `qs32_hotword` VALUES ('3069', '出纳文员', '20');
INSERT INTO `qs32_hotword` VALUES ('3071', '木工', '57');
INSERT INTO `qs32_hotword` VALUES ('3073', '辅料采购', '13');
INSERT INTO `qs32_hotword` VALUES ('3074', 'KA代表', '124');
INSERT INTO `qs32_hotword` VALUES ('3079', '系统管理员', '96');
INSERT INTO `qs32_hotword` VALUES ('3080', '面料采购', '18');
INSERT INTO `qs32_hotword` VALUES ('3084', '电话营销员', '178');
INSERT INTO `qs32_hotword` VALUES ('3089', '市场督导', '436');
INSERT INTO `qs32_hotword` VALUES ('3094', '景观设计师', '113');
INSERT INTO `qs32_hotword` VALUES ('3095', '电子商务', '307');
INSERT INTO `qs32_hotword` VALUES ('3099', '技术支持人员', '15');
INSERT INTO `qs32_hotword` VALUES ('3100', '高级秘书', '24');
INSERT INTO `qs32_hotword` VALUES ('3101', '国内业务员', '27');
INSERT INTO `qs32_hotword` VALUES ('3102', '数据分析员', '93');
INSERT INTO `qs32_hotword` VALUES ('3103', '仓库操作员', '15');
INSERT INTO `qs32_hotword` VALUES ('3104', '校园代理', '55');
INSERT INTO `qs32_hotword` VALUES ('3105', '市场文案', '22');
INSERT INTO `qs32_hotword` VALUES ('3116', '高级产品经理', '31');
INSERT INTO `qs32_hotword` VALUES ('3118', '产品运营经理', '21');
INSERT INTO `qs32_hotword` VALUES ('3125', '高级项目经理', '104');
INSERT INTO `qs32_hotword` VALUES ('3126', '产品策划', '72');
INSERT INTO `qs32_hotword` VALUES ('3127', '市场拓展人员', '22');
INSERT INTO `qs32_hotword` VALUES ('3135', '电话客服', '338');
INSERT INTO `qs32_hotword` VALUES ('3139', '电话销售精英', '82');
INSERT INTO `qs32_hotword` VALUES ('3140', '产品设计', '32');
INSERT INTO `qs32_hotword` VALUES ('3143', '生产主任', '11');
INSERT INTO `qs32_hotword` VALUES ('3144', '市场拓展', '157');
INSERT INTO `qs32_hotword` VALUES ('3146', '仓库主任', '11');
INSERT INTO `qs32_hotword` VALUES ('3147', '营养师', '93');
INSERT INTO `qs32_hotword` VALUES ('3148', '财务专员', '132');
INSERT INTO `qs32_hotword` VALUES ('3158', '营销助理', '104');
INSERT INTO `qs32_hotword` VALUES ('3159', '网络营销员', '51');
INSERT INTO `qs32_hotword` VALUES ('3161', '电脑技术员', '32');
INSERT INTO `qs32_hotword` VALUES ('3164', '淘宝推广专员', '67');
INSERT INTO `qs32_hotword` VALUES ('3167', '渠道销售代表', '75');
INSERT INTO `qs32_hotword` VALUES ('3174', '插画师', '11');
INSERT INTO `qs32_hotword` VALUES ('3183', '微博编辑', '12');
INSERT INTO `qs32_hotword` VALUES ('3186', '市场部部长', '25');
INSERT INTO `qs32_hotword` VALUES ('3190', '财务文员', '100');
INSERT INTO `qs32_hotword` VALUES ('3191', '客服工程师', '212');
INSERT INTO `qs32_hotword` VALUES ('3194', '生产部部长', '26');
INSERT INTO `qs32_hotword` VALUES ('3195', '财务部部长', '14');
INSERT INTO `qs32_hotword` VALUES ('3196', '办公室主任', '704');
INSERT INTO `qs32_hotword` VALUES ('3199', '审计专员', '133');
INSERT INTO `qs32_hotword` VALUES ('3201', '货品助理', '18');
INSERT INTO `qs32_hotword` VALUES ('3206', '零售主管', '70');
INSERT INTO `qs32_hotword` VALUES ('3207', '外贸业务', '53');
INSERT INTO `qs32_hotword` VALUES ('3208', '市场调研专员', '38');
INSERT INTO `qs32_hotword` VALUES ('3219', '电子商务经理', '61');
INSERT INTO `qs32_hotword` VALUES ('3221', '设计经理', '66');
INSERT INTO `qs32_hotword` VALUES ('3224', '会计专员', '22');
INSERT INTO `qs32_hotword` VALUES ('3227', '货品专员', '47');
INSERT INTO `qs32_hotword` VALUES ('3228', '薪酬专员', '42');
INSERT INTO `qs32_hotword` VALUES ('3229', '后勤主管', '36');
INSERT INTO `qs32_hotword` VALUES ('3230', '系统维护员', '31');
INSERT INTO `qs32_hotword` VALUES ('3234', '市场分析专员', '20');
INSERT INTO `qs32_hotword` VALUES ('3239', '财务总监助理', '22');
INSERT INTO `qs32_hotword` VALUES ('3242', '资金专员', '24');
INSERT INTO `qs32_hotword` VALUES ('3245', '资金经理', '21');
INSERT INTO `qs32_hotword` VALUES ('3249', '陈列设计师', '21');
INSERT INTO `qs32_hotword` VALUES ('3254', '合同管理', '14');
INSERT INTO `qs32_hotword` VALUES ('3255', '部门助理', '77');
INSERT INTO `qs32_hotword` VALUES ('3258', '化验员', '231');
INSERT INTO `qs32_hotword` VALUES ('3259', '高级工程师', '46');
INSERT INTO `qs32_hotword` VALUES ('3263', 'C#工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('3265', '前端工程师', '56');
INSERT INTO `qs32_hotword` VALUES ('3267', '网站架构师', '12');
INSERT INTO `qs32_hotword` VALUES ('3274', '行政司机', '187');
INSERT INTO `qs32_hotword` VALUES ('3275', '会计员', '27');
INSERT INTO `qs32_hotword` VALUES ('3276', '业务销售代表', '12');
INSERT INTO `qs32_hotword` VALUES ('3280', '单片机工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('3282', '采购部经理', '87');
INSERT INTO `qs32_hotword` VALUES ('3298', '网络客服专员', '23');
INSERT INTO `qs32_hotword` VALUES ('3299', '信息部主管', '14');
INSERT INTO `qs32_hotword` VALUES ('3304', '生产技工', '19');
INSERT INTO `qs32_hotword` VALUES ('3308', '外贸销售', '59');
INSERT INTO `qs32_hotword` VALUES ('3310', '服装QC', '24');
INSERT INTO `qs32_hotword` VALUES ('3314', '市场部专员', '69');
INSERT INTO `qs32_hotword` VALUES ('3317', '研发经理', '46');
INSERT INTO `qs32_hotword` VALUES ('3320', '品检员', '15');
INSERT INTO `qs32_hotword` VALUES ('3321', '咨询项目经理', '15');
INSERT INTO `qs32_hotword` VALUES ('3322', '人事文员', '83');
INSERT INTO `qs32_hotword` VALUES ('3331', '宴会服务员', '10');
INSERT INTO `qs32_hotword` VALUES ('3332', '英文客服', '16');
INSERT INTO `qs32_hotword` VALUES ('3333', '建造师', '29');
INSERT INTO `qs32_hotword` VALUES ('3334', '网站产品经理', '18');
INSERT INTO `qs32_hotword` VALUES ('3354', '数据统计员', '24');
INSERT INTO `qs32_hotword` VALUES ('3358', '计划员', '62');
INSERT INTO `qs32_hotword` VALUES ('3364', '电话文员', '60');
INSERT INTO `qs32_hotword` VALUES ('3365', '预算经理', '23');
INSERT INTO `qs32_hotword` VALUES ('3367', '管理咨询顾问', '21');
INSERT INTO `qs32_hotword` VALUES ('3370', '应届生', '17');
INSERT INTO `qs32_hotword` VALUES ('3373', '装配工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('3374', '办事处主任', '124');
INSERT INTO `qs32_hotword` VALUES ('3375', '销售区域经理', '55');
INSERT INTO `qs32_hotword` VALUES ('3378', '博士后', '13');
INSERT INTO `qs32_hotword` VALUES ('3389', '实验室技术员', '52');
INSERT INTO `qs32_hotword` VALUES ('3391', '化妆师', '94');
INSERT INTO `qs32_hotword` VALUES ('3397', '档案管理员', '87');
INSERT INTO `qs32_hotword` VALUES ('3401', '化妆助理', '27');
INSERT INTO `qs32_hotword` VALUES ('3404', '送货司机', '92');
INSERT INTO `qs32_hotword` VALUES ('3406', '后勤', '51');
INSERT INTO `qs32_hotword` VALUES ('3407', '库工', '50');
INSERT INTO `qs32_hotword` VALUES ('3415', '行销专员', '25');
INSERT INTO `qs32_hotword` VALUES ('3420', '理财规划师', '207');
INSERT INTO `qs32_hotword` VALUES ('3426', '网络销售', '350');
INSERT INTO `qs32_hotword` VALUES ('3429', '网络销售专员', '65');
INSERT INTO `qs32_hotword` VALUES ('3430', '客服咨询', '12');
INSERT INTO `qs32_hotword` VALUES ('3431', '海运出口操作', '15');
INSERT INTO `qs32_hotword` VALUES ('3434', '档案管理', '15');
INSERT INTO `qs32_hotword` VALUES ('3438', '水电施工员', '15');
INSERT INTO `qs32_hotword` VALUES ('3439', '督导', '265');
INSERT INTO `qs32_hotword` VALUES ('3444', '试验员', '28');
INSERT INTO `qs32_hotword` VALUES ('3450', '物流司机', '39');
INSERT INTO `qs32_hotword` VALUES ('3451', '水暖工程师', '230');
INSERT INTO `qs32_hotword` VALUES ('3452', '预结算员', '37');
INSERT INTO `qs32_hotword` VALUES ('3454', '维修钳工', '40');
INSERT INTO `qs32_hotword` VALUES ('3456', '市场销售专员', '21');
INSERT INTO `qs32_hotword` VALUES ('3459', '总务', '25');
INSERT INTO `qs32_hotword` VALUES ('3463', '总经办秘书', '49');
INSERT INTO `qs32_hotword` VALUES ('3464', '强弱电工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('3468', '市政工程师', '33');
INSERT INTO `qs32_hotword` VALUES ('3472', '景观工程师', '121');
INSERT INTO `qs32_hotword` VALUES ('3473', '设备操作工', '14');
INSERT INTO `qs32_hotword` VALUES ('3476', '精装工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('3479', '前期主管', '19');
INSERT INTO `qs32_hotword` VALUES ('3481', '财务管理', '55');
INSERT INTO `qs32_hotword` VALUES ('3483', '小车司机', '125');
INSERT INTO `qs32_hotword` VALUES ('3484', '工艺员', '120');
INSERT INTO `qs32_hotword` VALUES ('3485', '仓库保管员', '144');
INSERT INTO `qs32_hotword` VALUES ('3486', 'B超医师', '17');
INSERT INTO `qs32_hotword` VALUES ('3488', '厨师', '395');
INSERT INTO `qs32_hotword` VALUES ('3494', '幕墙工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('3497', '摄影助理', '87');
INSERT INTO `qs32_hotword` VALUES ('3505', '海运进口操作', '12');
INSERT INTO `qs32_hotword` VALUES ('3512', '技工', '78');
INSERT INTO `qs32_hotword` VALUES ('3516', '平面制作', '12');
INSERT INTO `qs32_hotword` VALUES ('3517', '环境主管', '14');
INSERT INTO `qs32_hotword` VALUES ('3518', '货运司机', '42');
INSERT INTO `qs32_hotword` VALUES ('3520', '销售主任', '121');
INSERT INTO `qs32_hotword` VALUES ('3527', '预算工程师', '52');
INSERT INTO `qs32_hotword` VALUES ('3528', '外勤', '33');
INSERT INTO `qs32_hotword` VALUES ('3532', '技术服务', '27');
INSERT INTO `qs32_hotword` VALUES ('3535', '电子商务人员', '22');
INSERT INTO `qs32_hotword` VALUES ('3536', '自动化工程师', '115');
INSERT INTO `qs32_hotword` VALUES ('3539', '环保工程师', '98');
INSERT INTO `qs32_hotword` VALUES ('3541', '土建主管', '31');
INSERT INTO `qs32_hotword` VALUES ('3548', '市场推广主管', '61');
INSERT INTO `qs32_hotword` VALUES ('3549', '市场企划专员', '243');
INSERT INTO `qs32_hotword` VALUES ('3550', '大堂经理', '54');
INSERT INTO `qs32_hotword` VALUES ('3551', '编剧', '25');
INSERT INTO `qs32_hotword` VALUES ('3556', '品牌专员', '45');
INSERT INTO `qs32_hotword` VALUES ('3557', 'CAD制图员', '51');
INSERT INTO `qs32_hotword` VALUES ('3558', '高中化学教师', '36');
INSERT INTO `qs32_hotword` VALUES ('3561', '置业顾问', '1543');
INSERT INTO `qs32_hotword` VALUES ('3574', '理财专员', '32');
INSERT INTO `qs32_hotword` VALUES ('3575', '网络销售主管', '16');
INSERT INTO `qs32_hotword` VALUES ('3580', '招标工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('3581', '销售支持', '87');
INSERT INTO `qs32_hotword` VALUES ('3584', '带车司机', '10');
INSERT INTO `qs32_hotword` VALUES ('3591', '电话销售文员', '10');
INSERT INTO `qs32_hotword` VALUES ('3592', '数据分析专员', '85');
INSERT INTO `qs32_hotword` VALUES ('3595', '见习操盘手', '51');
INSERT INTO `qs32_hotword` VALUES ('3596', '广告策划主管', '12');
INSERT INTO `qs32_hotword` VALUES ('3598', '网络营销主管', '72');
INSERT INTO `qs32_hotword` VALUES ('3607', '货代销售', '36');
INSERT INTO `qs32_hotword` VALUES ('3610', '货代业务员', '13');
INSERT INTO `qs32_hotword` VALUES ('3612', '连锁店店长', '27');
INSERT INTO `qs32_hotword` VALUES ('3616', '内勤人员', '29');
INSERT INTO `qs32_hotword` VALUES ('3617', '送货员', '144');
INSERT INTO `qs32_hotword` VALUES ('3619', '施工队长', '10');
INSERT INTO `qs32_hotword` VALUES ('3621', '做饭阿姨', '14');
INSERT INTO `qs32_hotword` VALUES ('3630', '仓库助理', '34');
INSERT INTO `qs32_hotword` VALUES ('3634', '电话邀约', '17');
INSERT INTO `qs32_hotword` VALUES ('3648', '高级业务经理', '29');
INSERT INTO `qs32_hotword` VALUES ('3659', '土建工长', '12');
INSERT INTO `qs32_hotword` VALUES ('3660', '出纳兼文员', '21');
INSERT INTO `qs32_hotword` VALUES ('3664', '生产经理助理', '16');
INSERT INTO `qs32_hotword` VALUES ('3665', '核算员', '48');
INSERT INTO `qs32_hotword` VALUES ('3668', '报批报建专员', '21');
INSERT INTO `qs32_hotword` VALUES ('3683', '设备维修', '35');
INSERT INTO `qs32_hotword` VALUES ('3686', '培训导师', '17');
INSERT INTO `qs32_hotword` VALUES ('3687', '质量部部长', '11');
INSERT INTO `qs32_hotword` VALUES ('3689', '运营总监', '318');
INSERT INTO `qs32_hotword` VALUES ('3696', '客户关系管理', '24');
INSERT INTO `qs32_hotword` VALUES ('3703', '高级程序员', '61');
INSERT INTO `qs32_hotword` VALUES ('3710', '餐厅服务员', '133');
INSERT INTO `qs32_hotword` VALUES ('3712', '技术总工程师', '21');
INSERT INTO `qs32_hotword` VALUES ('3716', '储备店长', '244');
INSERT INTO `qs32_hotword` VALUES ('3719', '日语翻译', '171');
INSERT INTO `qs32_hotword` VALUES ('3722', '行政内勤', '98');
INSERT INTO `qs32_hotword` VALUES ('3723', '3D设计', '38');
INSERT INTO `qs32_hotword` VALUES ('3724', '兼职', '90');
INSERT INTO `qs32_hotword` VALUES ('3727', '市场部内勤', '14');
INSERT INTO `qs32_hotword` VALUES ('3731', '汽车销售人员', '11');
INSERT INTO `qs32_hotword` VALUES ('3732', '品质检验员', '22');
INSERT INTO `qs32_hotword` VALUES ('3736', '生产调度', '37');
INSERT INTO `qs32_hotword` VALUES ('3741', '库管员', '215');
INSERT INTO `qs32_hotword` VALUES ('3748', '珠宝导购', '19');
INSERT INTO `qs32_hotword` VALUES ('3750', '幼儿教师', '88');
INSERT INTO `qs32_hotword` VALUES ('3751', '行政总厨', '23');
INSERT INTO `qs32_hotword` VALUES ('3753', '少儿英语老师', '40');
INSERT INTO `qs32_hotword` VALUES ('3754', '市场销售代表', '15');
INSERT INTO `qs32_hotword` VALUES ('3756', '前厅经理', '59');
INSERT INTO `qs32_hotword` VALUES ('3757', '品管工程师', '38');
INSERT INTO `qs32_hotword` VALUES ('3758', '客房服务员', '150');
INSERT INTO `qs32_hotword` VALUES ('3760', 'PA领班', '10');
INSERT INTO `qs32_hotword` VALUES ('3763', '发单员', '39');
INSERT INTO `qs32_hotword` VALUES ('3768', '保安领班', '14');
INSERT INTO `qs32_hotword` VALUES ('3769', '财务分析主管', '14');
INSERT INTO `qs32_hotword` VALUES ('3775', '国际贸易专员', '62');
INSERT INTO `qs32_hotword` VALUES ('3776', '营销人员', '83');
INSERT INTO `qs32_hotword` VALUES ('3778', '货代操作', '18');
INSERT INTO `qs32_hotword` VALUES ('3784', '影视后期', '25');
INSERT INTO `qs32_hotword` VALUES ('3786', '大堂副理', '67');
INSERT INTO `qs32_hotword` VALUES ('3789', '杂工', '19');
INSERT INTO `qs32_hotword` VALUES ('3791', '人事管理', '13');
INSERT INTO `qs32_hotword` VALUES ('3797', '模具钳工', '37');
INSERT INTO `qs32_hotword` VALUES ('3802', '人资专员', '39');
INSERT INTO `qs32_hotword` VALUES ('3805', '高级客户代表', '22');
INSERT INTO `qs32_hotword` VALUES ('3807', '销售外勤', '29');
INSERT INTO `qs32_hotword` VALUES ('3812', '机械制图员', '21');
INSERT INTO `qs32_hotword` VALUES ('3813', '协调员', '20');
INSERT INTO `qs32_hotword` VALUES ('3815', '锅炉工', '60');
INSERT INTO `qs32_hotword` VALUES ('3820', '仓库记账员', '14');
INSERT INTO `qs32_hotword` VALUES ('3822', '统计员', '304');
INSERT INTO `qs32_hotword` VALUES ('3824', 'IQC', '20');
INSERT INTO `qs32_hotword` VALUES ('3830', '助理文员', '15');
INSERT INTO `qs32_hotword` VALUES ('3832', '施工图绘图员', '23');
INSERT INTO `qs32_hotword` VALUES ('3836', '工业设计', '21');
INSERT INTO `qs32_hotword` VALUES ('3839', '旗舰店店长', '13');
INSERT INTO `qs32_hotword` VALUES ('3840', '暖通设计师', '74');
INSERT INTO `qs32_hotword` VALUES ('3842', '维修工', '132');
INSERT INTO `qs32_hotword` VALUES ('3846', '售后内勤', '10');
INSERT INTO `qs32_hotword` VALUES ('3847', 'IT专员', '122');
INSERT INTO `qs32_hotword` VALUES ('3849', '生产部文员', '20');
INSERT INTO `qs32_hotword` VALUES ('3852', '面包师', '15');
INSERT INTO `qs32_hotword` VALUES ('3856', '市场策划', '185');
INSERT INTO `qs32_hotword` VALUES ('3869', '媒介助理', '19');
INSERT INTO `qs32_hotword` VALUES ('3871', '库房工人', '16');
INSERT INTO `qs32_hotword` VALUES ('3872', '信用经理', '12');
INSERT INTO `qs32_hotword` VALUES ('3873', '研发人员', '73');
INSERT INTO `qs32_hotword` VALUES ('3876', '货车司机', '123');
INSERT INTO `qs32_hotword` VALUES ('3878', '暖通设计人员', '27');
INSERT INTO `qs32_hotword` VALUES ('3895', '预算师', '15');
INSERT INTO `qs32_hotword` VALUES ('3897', '兼职网页美工', '15');
INSERT INTO `qs32_hotword` VALUES ('3901', '电话专员', '33');
INSERT INTO `qs32_hotword` VALUES ('3903', '幼儿园园长', '33');
INSERT INTO `qs32_hotword` VALUES ('3906', '公共关系专员', '35');
INSERT INTO `qs32_hotword` VALUES ('3907', '电气装配工', '12');
INSERT INTO `qs32_hotword` VALUES ('3914', '市场营销', '160');
INSERT INTO `qs32_hotword` VALUES ('3922', '实习编辑', '11');
INSERT INTO `qs32_hotword` VALUES ('3925', '就业专员', '32');
INSERT INTO `qs32_hotword` VALUES ('3926', '图片编辑', '16');
INSERT INTO `qs32_hotword` VALUES ('3928', '媒介总监', '16');
INSERT INTO `qs32_hotword` VALUES ('3932', '生产计划调度', '14');
INSERT INTO `qs32_hotword` VALUES ('3933', '液压工程师', '51');
INSERT INTO `qs32_hotword` VALUES ('3939', '管理会计', '27');
INSERT INTO `qs32_hotword` VALUES ('3940', '保洁阿姨', '15');
INSERT INTO `qs32_hotword` VALUES ('3943', '业务人员', '196');
INSERT INTO `qs32_hotword` VALUES ('3944', '钢结构工程师', '40');
INSERT INTO `qs32_hotword` VALUES ('3947', '实施顾问', '130');
INSERT INTO `qs32_hotword` VALUES ('3967', '电焊工', '103');
INSERT INTO `qs32_hotword` VALUES ('3968', '库房主管', '36');
INSERT INTO `qs32_hotword` VALUES ('3971', '安全主管', '49');
INSERT INTO `qs32_hotword` VALUES ('3985', '呼叫中心客服', '20');
INSERT INTO `qs32_hotword` VALUES ('3986', '售后服务顾问', '27');
INSERT INTO `qs32_hotword` VALUES ('3988', '临时促销员', '11');
INSERT INTO `qs32_hotword` VALUES ('3991', '车间主任', '248');
INSERT INTO `qs32_hotword` VALUES ('3992', '配件经理', '50');
INSERT INTO `qs32_hotword` VALUES ('3995', '配件管理员', '30');
INSERT INTO `qs32_hotword` VALUES ('3998', '电子商务员', '12');
INSERT INTO `qs32_hotword` VALUES ('4005', '维修技师', '71');
INSERT INTO `qs32_hotword` VALUES ('4006', '机械装配工', '16');
INSERT INTO `qs32_hotword` VALUES ('4015', '物业项目经理', '48');
INSERT INTO `qs32_hotword` VALUES ('4026', '工程部主管', '59');
INSERT INTO `qs32_hotword` VALUES ('4028', '前厅接待', '68');
INSERT INTO `qs32_hotword` VALUES ('4032', '高级置业顾问', '116');
INSERT INTO `qs32_hotword` VALUES ('4049', '质量总监', '24');
INSERT INTO `qs32_hotword` VALUES ('4050', '储备销售主管', '13');
INSERT INTO `qs32_hotword` VALUES ('4058', '法语翻译', '35');
INSERT INTO `qs32_hotword` VALUES ('4063', '消防员', '11');
INSERT INTO `qs32_hotword` VALUES ('4064', '班车司机', '33');
INSERT INTO `qs32_hotword` VALUES ('4066', '知识产权顾问', '40');
INSERT INTO `qs32_hotword` VALUES ('4073', '储备经理', '192');
INSERT INTO `qs32_hotword` VALUES ('4076', '市场部主任', '25');
INSERT INTO `qs32_hotword` VALUES ('4080', '市场部文员', '36');
INSERT INTO `qs32_hotword` VALUES ('4084', '副店长', '45');
INSERT INTO `qs32_hotword` VALUES ('4086', '店员', '242');
INSERT INTO `qs32_hotword` VALUES ('4089', 'HR主管', '15');
INSERT INTO `qs32_hotword` VALUES ('4096', '广告业务', '15');
INSERT INTO `qs32_hotword` VALUES ('4098', '工程资料员', '80');
INSERT INTO `qs32_hotword` VALUES ('4099', '注册会计师', '68');
INSERT INTO `qs32_hotword` VALUES ('4101', '清洁工', '46');
INSERT INTO `qs32_hotword` VALUES ('4102', '注册专员', '35');
INSERT INTO `qs32_hotword` VALUES ('4105', '车工', '144');
INSERT INTO `qs32_hotword` VALUES ('4106', '临床监察员', '25');
INSERT INTO `qs32_hotword` VALUES ('4111', '技术主管', '126');
INSERT INTO `qs32_hotword` VALUES ('4114', '实验员', '65');
INSERT INTO `qs32_hotword` VALUES ('4116', '专职司机', '45');
INSERT INTO `qs32_hotword` VALUES ('4119', '物流助理', '46');
INSERT INTO `qs32_hotword` VALUES ('4122', '学术经理', '16');
INSERT INTO `qs32_hotword` VALUES ('4126', '通信工程师', '65');
INSERT INTO `qs32_hotword` VALUES ('4134', '心理咨询师', '48');
INSERT INTO `qs32_hotword` VALUES ('4141', '外贸销售助理', '25');
INSERT INTO `qs32_hotword` VALUES ('4146', '呼叫中心专员', '30');
INSERT INTO `qs32_hotword` VALUES ('4147', '家装业务主管', '10');
INSERT INTO `qs32_hotword` VALUES ('4149', '接待员', '36');
INSERT INTO `qs32_hotword` VALUES ('4150', '生产文员', '140');
INSERT INTO `qs32_hotword` VALUES ('4152', '生产班长', '21');
INSERT INTO `qs32_hotword` VALUES ('4153', '大客司机', '21');
INSERT INTO `qs32_hotword` VALUES ('4160', '渠道主管', '69');
INSERT INTO `qs32_hotword` VALUES ('4163', '网管员', '10');
INSERT INTO `qs32_hotword` VALUES ('4165', '生产组长', '27');
INSERT INTO `qs32_hotword` VALUES ('4166', '语文老师', '27');
INSERT INTO `qs32_hotword` VALUES ('4167', '维护工程师', '117');
INSERT INTO `qs32_hotword` VALUES ('4169', '弱电项目经理', '26');
INSERT INTO `qs32_hotword` VALUES ('4181', '生产统计', '30');
INSERT INTO `qs32_hotword` VALUES ('4184', '网络维护', '49');
INSERT INTO `qs32_hotword` VALUES ('4186', '常务副总经理', '29');
INSERT INTO `qs32_hotword` VALUES ('4188', '索赔员', '34');
INSERT INTO `qs32_hotword` VALUES ('4191', '业务内勤', '37');
INSERT INTO `qs32_hotword` VALUES ('4192', '弱电工程师', '187');
INSERT INTO `qs32_hotword` VALUES ('4196', '项目开发经理', '32');
INSERT INTO `qs32_hotword` VALUES ('4208', '客户工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('4209', '高中语文老师', '17');
INSERT INTO `qs32_hotword` VALUES ('4214', '兼职教师', '14');
INSERT INTO `qs32_hotword` VALUES ('4221', '计划专员', '30');
INSERT INTO `qs32_hotword` VALUES ('4228', '办公内勤', '14');
INSERT INTO `qs32_hotword` VALUES ('4241', '渠道业务', '11');
INSERT INTO `qs32_hotword` VALUES ('4245', '店面导购', '43');
INSERT INTO `qs32_hotword` VALUES ('4249', '服务员', '571');
INSERT INTO `qs32_hotword` VALUES ('4253', '销售担当', '14');
INSERT INTO `qs32_hotword` VALUES ('4266', '汽车销售员', '15');
INSERT INTO `qs32_hotword` VALUES ('4272', '商务顾问', '43');
INSERT INTO `qs32_hotword` VALUES ('4277', '创意总监', '93');
INSERT INTO `qs32_hotword` VALUES ('4278', '实习设计师', '111');
INSERT INTO `qs32_hotword` VALUES ('4279', '品质部主管', '10');
INSERT INTO `qs32_hotword` VALUES ('4298', '开发项目经理', '41');
INSERT INTO `qs32_hotword` VALUES ('4299', '质量检验员', '105');
INSERT INTO `qs32_hotword` VALUES ('4302', '面包车司机', '11');
INSERT INTO `qs32_hotword` VALUES ('4314', '美术设计', '23');
INSERT INTO `qs32_hotword` VALUES ('4318', '融资助理', '10');
INSERT INTO `qs32_hotword` VALUES ('4321', '销售内业', '38');
INSERT INTO `qs32_hotword` VALUES ('4322', '总务担当', '10');
INSERT INTO `qs32_hotword` VALUES ('4323', '拓展专员', '257');
INSERT INTO `qs32_hotword` VALUES ('4324', '结构设计师', '196');
INSERT INTO `qs32_hotword` VALUES ('4338', '工程督导', '31');
INSERT INTO `qs32_hotword` VALUES ('4340', '工程设计', '14');
INSERT INTO `qs32_hotword` VALUES ('4341', '专卖店营业员', '64');
INSERT INTO `qs32_hotword` VALUES ('4348', '团队主管', '14');
INSERT INTO `qs32_hotword` VALUES ('4356', '餐饮部服务员', '19');
INSERT INTO `qs32_hotword` VALUES ('4359', '管道工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('4360', '物流人员', '25');
INSERT INTO `qs32_hotword` VALUES ('4362', '游戏推广员', '10');
INSERT INTO `qs32_hotword` VALUES ('4363', '生产管理人员', '20');
INSERT INTO `qs32_hotword` VALUES ('4366', '主管', '367');
INSERT INTO `qs32_hotword` VALUES ('4374', '幼儿指导老师', '12');
INSERT INTO `qs32_hotword` VALUES ('4378', '网页编辑', '14');
INSERT INTO `qs32_hotword` VALUES ('4382', '信贷经理', '15');
INSERT INTO `qs32_hotword` VALUES ('4383', '融资专员', '112');
INSERT INTO `qs32_hotword` VALUES ('4387', '品质专员', '18');
INSERT INTO `qs32_hotword` VALUES ('4390', '办公室副主任', '61');
INSERT INTO `qs32_hotword` VALUES ('4393', '韩语翻译', '58');
INSERT INTO `qs32_hotword` VALUES ('4401', '开发总监', '13');
INSERT INTO `qs32_hotword` VALUES ('4405', '广告文案', '50');
INSERT INTO `qs32_hotword` VALUES ('4424', '医助', '47');
INSERT INTO `qs32_hotword` VALUES ('4426', '小区推广专员', '22');
INSERT INTO `qs32_hotword` VALUES ('4427', '收费员', '56');
INSERT INTO `qs32_hotword` VALUES ('4434', '生产管理员', '14');
INSERT INTO `qs32_hotword` VALUES ('4438', '销售副经理', '20');
INSERT INTO `qs32_hotword` VALUES ('4442', '统计文员', '22');
INSERT INTO `qs32_hotword` VALUES ('4444', '美容顾问', '283');
INSERT INTO `qs32_hotword` VALUES ('4446', '客服AE', '14');
INSERT INTO `qs32_hotword` VALUES ('4449', '网站制作', '40');
INSERT INTO `qs32_hotword` VALUES ('4450', '部门经理', '117');
INSERT INTO `qs32_hotword` VALUES ('4453', '高级文案策划', '16');
INSERT INTO `qs32_hotword` VALUES ('4455', '商务拓展经理', '35');
INSERT INTO `qs32_hotword` VALUES ('4457', '省区经理', '557');
INSERT INTO `qs32_hotword` VALUES ('4459', '工业会计', '68');
INSERT INTO `qs32_hotword` VALUES ('4461', '资深会计', '15');
INSERT INTO `qs32_hotword` VALUES ('4462', '缝纫工', '54');
INSERT INTO `qs32_hotword` VALUES ('4465', '样衣工', '112');
INSERT INTO `qs32_hotword` VALUES ('4473', '网络管理人员', '10');
INSERT INTO `qs32_hotword` VALUES ('4474', '分析工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('4475', '高级电工', '11');
INSERT INTO `qs32_hotword` VALUES ('4480', '验光师', '48');
INSERT INTO `qs32_hotword` VALUES ('4481', '教务专员', '60');
INSERT INTO `qs32_hotword` VALUES ('4483', '咨询主管', '102');
INSERT INTO `qs32_hotword` VALUES ('4486', '电话客服人员', '13');
INSERT INTO `qs32_hotword` VALUES ('4489', '呼叫中心主管', '26');
INSERT INTO `qs32_hotword` VALUES ('4498', '药师', '30');
INSERT INTO `qs32_hotword` VALUES ('4501', '市场推广助理', '12');
INSERT INTO `qs32_hotword` VALUES ('4504', '开发专员', '63');
INSERT INTO `qs32_hotword` VALUES ('4522', '论坛编辑', '149');
INSERT INTO `qs32_hotword` VALUES ('4524', '出纳岗', '15');
INSERT INTO `qs32_hotword` VALUES ('4525', '广告业务员', '68');
INSERT INTO `qs32_hotword` VALUES ('4526', '班主任', '127');
INSERT INTO `qs32_hotword` VALUES ('4532', '幼儿园会计', '11');
INSERT INTO `qs32_hotword` VALUES ('4536', '商业运营经理', '15');
INSERT INTO `qs32_hotword` VALUES ('4556', '出差人员', '41');
INSERT INTO `qs32_hotword` VALUES ('4562', '氩弧焊工', '58');
INSERT INTO `qs32_hotword` VALUES ('4566', '销售客户经理', '36');
INSERT INTO `qs32_hotword` VALUES ('4569', '早教顾问', '16');
INSERT INTO `qs32_hotword` VALUES ('4573', '早教老师', '41');
INSERT INTO `qs32_hotword` VALUES ('4585', '商超业务员', '24');
INSERT INTO `qs32_hotword` VALUES ('4586', '健康顾问', '36');
INSERT INTO `qs32_hotword` VALUES ('4595', '售后专员', '39');
INSERT INTO `qs32_hotword` VALUES ('4599', '金融实习生', '30');
INSERT INTO `qs32_hotword` VALUES ('4602', '金融讲师', '10');
INSERT INTO `qs32_hotword` VALUES ('4603', '理赔专员', '19');
INSERT INTO `qs32_hotword` VALUES ('4604', '电气设计师', '96');
INSERT INTO `qs32_hotword` VALUES ('4605', '生产人员', '31');
INSERT INTO `qs32_hotword` VALUES ('4609', '报批报建经理', '10');
INSERT INTO `qs32_hotword` VALUES ('4611', '业务拓展人员', '13');
INSERT INTO `qs32_hotword` VALUES ('4613', '建筑设计经理', '33');
INSERT INTO `qs32_hotword` VALUES ('4616', '销售副总经理', '25');
INSERT INTO `qs32_hotword` VALUES ('4617', '电话营销人员', '48');
INSERT INTO `qs32_hotword` VALUES ('4618', '业务销售', '30');
INSERT INTO `qs32_hotword` VALUES ('4623', '业务精英', '201');
INSERT INTO `qs32_hotword` VALUES ('4625', '园长', '14');
INSERT INTO `qs32_hotword` VALUES ('4635', '高级营业员', '15');
INSERT INTO `qs32_hotword` VALUES ('4641', 'HR专员', '11');
INSERT INTO `qs32_hotword` VALUES ('4642', 'IPQC', '21');
INSERT INTO `qs32_hotword` VALUES ('4652', '市场营销人员', '51');
INSERT INTO `qs32_hotword` VALUES ('4653', '财经编辑', '15');
INSERT INTO `qs32_hotword` VALUES ('4656', '投资主管', '20');
INSERT INTO `qs32_hotword` VALUES ('4659', '经纪人', '81');
INSERT INTO `qs32_hotword` VALUES ('4678', '医药招商经理', '36');
INSERT INTO `qs32_hotword` VALUES ('4679', '销售商务', '16');
INSERT INTO `qs32_hotword` VALUES ('4681', '珠宝销售顾问', '139');
INSERT INTO `qs32_hotword` VALUES ('4684', '薪酬绩效主管', '39');
INSERT INTO `qs32_hotword` VALUES ('4695', '执行总经理', '29');
INSERT INTO `qs32_hotword` VALUES ('4706', '网络设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('4711', '设计文员', '17');
INSERT INTO `qs32_hotword` VALUES ('4712', '销售实习生', '100');
INSERT INTO `qs32_hotword` VALUES ('4714', '领班', '43');
INSERT INTO `qs32_hotword` VALUES ('4719', '风控专员', '27');
INSERT INTO `qs32_hotword` VALUES ('4725', '软件技术支持', '16');
INSERT INTO `qs32_hotword` VALUES ('4726', '市场区域经理', '19');
INSERT INTO `qs32_hotword` VALUES ('4736', '资深策划师', '30');
INSERT INTO `qs32_hotword` VALUES ('4739', '网站设计', '50');
INSERT INTO `qs32_hotword` VALUES ('4741', '高级分析师', '12');
INSERT INTO `qs32_hotword` VALUES ('4744', '商业策划经理', '13');
INSERT INTO `qs32_hotword` VALUES ('4749', '医药招商', '10');
INSERT INTO `qs32_hotword` VALUES ('4753', '分销专员', '22');
INSERT INTO `qs32_hotword` VALUES ('4764', '前台收银', '41');
INSERT INTO `qs32_hotword` VALUES ('4773', '业务实习生', '20');
INSERT INTO `qs32_hotword` VALUES ('4778', '招商代表', '56');
INSERT INTO `qs32_hotword` VALUES ('4779', '企业文化专员', '88');
INSERT INTO `qs32_hotword` VALUES ('4781', '网络营销经理', '47');
INSERT INTO `qs32_hotword` VALUES ('4783', '高级美工', '18');
INSERT INTO `qs32_hotword` VALUES ('4786', '预决算员', '41');
INSERT INTO `qs32_hotword` VALUES ('4787', '汽车美容技师', '25');
INSERT INTO `qs32_hotword` VALUES ('4788', '客户回访专员', '20');
INSERT INTO `qs32_hotword` VALUES ('4791', '审计经理', '118');
INSERT INTO `qs32_hotword` VALUES ('4796', '区域推广主管', '20');
INSERT INTO `qs32_hotword` VALUES ('4797', '机械设计主管', '10');
INSERT INTO `qs32_hotword` VALUES ('4801', '推广主管', '36');
INSERT INTO `qs32_hotword` VALUES ('4811', '商务学徒', '19');
INSERT INTO `qs32_hotword` VALUES ('4814', '电梯维修工', '30');
INSERT INTO `qs32_hotword` VALUES ('4815', '店务秘书', '37');
INSERT INTO `qs32_hotword` VALUES ('4816', '会计师', '37');
INSERT INTO `qs32_hotword` VALUES ('4817', '营业部总经理', '24');
INSERT INTO `qs32_hotword` VALUES ('4818', '商务司机', '25');
INSERT INTO `qs32_hotword` VALUES ('4830', '实习业务员', '24');
INSERT INTO `qs32_hotword` VALUES ('4831', '电话营销专员', '258');
INSERT INTO `qs32_hotword` VALUES ('4834', '质检专员', '25');
INSERT INTO `qs32_hotword` VALUES ('4837', '综合内勤', '42');
INSERT INTO `qs32_hotword` VALUES ('4838', '广告专员', '14');
INSERT INTO `qs32_hotword` VALUES ('4841', '造价工程师', '198');
INSERT INTO `qs32_hotword` VALUES ('4848', '编辑部主任', '18');
INSERT INTO `qs32_hotword` VALUES ('4864', '集团财务总监', '19');
INSERT INTO `qs32_hotword` VALUES ('4876', '市场信息员', '11');
INSERT INTO `qs32_hotword` VALUES ('4877', '吧员', '105');
INSERT INTO `qs32_hotword` VALUES ('4878', '二级建造师', '44');
INSERT INTO `qs32_hotword` VALUES ('4882', '一级建造师', '65');
INSERT INTO `qs32_hotword` VALUES ('4891', '项目顾问', '29');
INSERT INTO `qs32_hotword` VALUES ('4897', '座席代表', '15');
INSERT INTO `qs32_hotword` VALUES ('4902', 'HR助理', '16');
INSERT INTO `qs32_hotword` VALUES ('4903', '医院代表', '43');
INSERT INTO `qs32_hotword` VALUES ('4907', '电器工程师', '39');
INSERT INTO `qs32_hotword` VALUES ('4909', '审计员', '75');
INSERT INTO `qs32_hotword` VALUES ('4925', '汽车电工', '32');
INSERT INTO `qs32_hotword` VALUES ('4930', '助理研究员', '30');
INSERT INTO `qs32_hotword` VALUES ('4931', '区域营运经理', '10');
INSERT INTO `qs32_hotword` VALUES ('4939', '销售后勤', '14');
INSERT INTO `qs32_hotword` VALUES ('4947', '档案员', '24');
INSERT INTO `qs32_hotword` VALUES ('4951', '现场技术员', '10');
INSERT INTO `qs32_hotword` VALUES ('4953', '软件测试', '33');
INSERT INTO `qs32_hotword` VALUES ('4955', '系统分析员', '18');
INSERT INTO `qs32_hotword` VALUES ('4957', '家装顾问', '68');
INSERT INTO `qs32_hotword` VALUES ('4958', '出纳兼内勤', '14');
INSERT INTO `qs32_hotword` VALUES ('4970', '国际贸易人员', '18');
INSERT INTO `qs32_hotword` VALUES ('4972', '技术工人', '51');
INSERT INTO `qs32_hotword` VALUES ('4977', '电信营业员', '10');
INSERT INTO `qs32_hotword` VALUES ('4978', '绩效考核专员', '78');
INSERT INTO `qs32_hotword` VALUES ('4979', '工程技术', '19');
INSERT INTO `qs32_hotword` VALUES ('4980', '数据分析', '48');
INSERT INTO `qs32_hotword` VALUES ('4987', '美容导师', '354');
INSERT INTO `qs32_hotword` VALUES ('4989', '临床医药代表', '88');
INSERT INTO `qs32_hotword` VALUES ('4992', '售后助理', '18');
INSERT INTO `qs32_hotword` VALUES ('4993', '美容讲师', '67');
INSERT INTO `qs32_hotword` VALUES ('4996', '美容学员', '44');
INSERT INTO `qs32_hotword` VALUES ('4998', '电子商务师', '34');
INSERT INTO `qs32_hotword` VALUES ('5001', '物流操作员', '58');
INSERT INTO `qs32_hotword` VALUES ('5004', '前台客服', '73');
INSERT INTO `qs32_hotword` VALUES ('5005', '驻外出纳', '13');
INSERT INTO `qs32_hotword` VALUES ('5006', '录入员', '24');
INSERT INTO `qs32_hotword` VALUES ('5011', '审计总监', '16');
INSERT INTO `qs32_hotword` VALUES ('5015', '土建预算', '10');
INSERT INTO `qs32_hotword` VALUES ('5016', '专卖店收银员', '12');
INSERT INTO `qs32_hotword` VALUES ('5024', '咨询医师', '10');
INSERT INTO `qs32_hotword` VALUES ('5026', '市场开发人员', '42');
INSERT INTO `qs32_hotword` VALUES ('5029', '媒介主管', '23');
INSERT INTO `qs32_hotword` VALUES ('5050', '土建项目经理', '21');
INSERT INTO `qs32_hotword` VALUES ('5055', '专职英语教师', '17');
INSERT INTO `qs32_hotword` VALUES ('5060', '物业经理', '123');
INSERT INTO `qs32_hotword` VALUES ('5062', '融资总监', '10');
INSERT INTO `qs32_hotword` VALUES ('5065', '会员客服', '28');
INSERT INTO `qs32_hotword` VALUES ('5073', '电话咨询师', '17');
INSERT INTO `qs32_hotword` VALUES ('5076', '学徒', '18');
INSERT INTO `qs32_hotword` VALUES ('5080', '行业经理', '35');
INSERT INTO `qs32_hotword` VALUES ('5082', '物流配送员', '10');
INSERT INTO `qs32_hotword` VALUES ('5086', '策划助理', '141');
INSERT INTO `qs32_hotword` VALUES ('5087', '餐饮销售经理', '12');
INSERT INTO `qs32_hotword` VALUES ('5093', '兼职发单员', '13');
INSERT INTO `qs32_hotword` VALUES ('5105', '建筑工程师', '81');
INSERT INTO `qs32_hotword` VALUES ('5108', '拓展经理', '145');
INSERT INTO `qs32_hotword` VALUES ('5121', '商务内勤', '26');
INSERT INTO `qs32_hotword` VALUES ('5124', '电销专员', '32');
INSERT INTO `qs32_hotword` VALUES ('5133', 'QA主管', '27');
INSERT INTO `qs32_hotword` VALUES ('5142', '配货员', '69');
INSERT INTO `qs32_hotword` VALUES ('5145', '宿舍管理员', '28');
INSERT INTO `qs32_hotword` VALUES ('5146', '校长助理', '63');
INSERT INTO `qs32_hotword` VALUES ('5147', '专职班主任', '26');
INSERT INTO `qs32_hotword` VALUES ('5149', '招生人员', '14');
INSERT INTO `qs32_hotword` VALUES ('5151', '油漆工', '85');
INSERT INTO `qs32_hotword` VALUES ('5155', '业务部经理', '68');
INSERT INTO `qs32_hotword` VALUES ('5157', '实习操盘手', '16');
INSERT INTO `qs32_hotword` VALUES ('5159', '项目申报专员', '57');
INSERT INTO `qs32_hotword` VALUES ('5170', '团购销售经理', '19');
INSERT INTO `qs32_hotword` VALUES ('5171', '业务拓展主管', '16');
INSERT INTO `qs32_hotword` VALUES ('5178', '推广经理', '80');
INSERT INTO `qs32_hotword` VALUES ('5191', '教务人员', '16');
INSERT INTO `qs32_hotword` VALUES ('5195', '结算员', '39');
INSERT INTO `qs32_hotword` VALUES ('5198', '装修工程师', '84');
INSERT INTO `qs32_hotword` VALUES ('5200', 'C开发工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('5202', '工人', '31');
INSERT INTO `qs32_hotword` VALUES ('5212', '社区服务专员', '16');
INSERT INTO `qs32_hotword` VALUES ('5213', '品控主管', '35');
INSERT INTO `qs32_hotword` VALUES ('5214', '公关专员', '116');
INSERT INTO `qs32_hotword` VALUES ('5217', '店面收银员', '11');
INSERT INTO `qs32_hotword` VALUES ('5218', '工程预算', '16');
INSERT INTO `qs32_hotword` VALUES ('5224', '分公司经理', '209');
INSERT INTO `qs32_hotword` VALUES ('5226', '高中化学老师', '16');
INSERT INTO `qs32_hotword` VALUES ('5227', '小学语文老师', '18');
INSERT INTO `qs32_hotword` VALUES ('5235', '铣工', '81');
INSERT INTO `qs32_hotword` VALUES ('5250', 'SEO优化', '28');
INSERT INTO `qs32_hotword` VALUES ('5258', '见习管理', '15');
INSERT INTO `qs32_hotword` VALUES ('5264', '管理培训生', '140');
INSERT INTO `qs32_hotword` VALUES ('5267', '订单员', '18');
INSERT INTO `qs32_hotword` VALUES ('5273', '区域销售', '113');
INSERT INTO `qs32_hotword` VALUES ('5274', '项目管理人员', '11');
INSERT INTO `qs32_hotword` VALUES ('5287', '私人教练', '31');
INSERT INTO `qs32_hotword` VALUES ('5298', '专业工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('5302', '网站技术', '22');
INSERT INTO `qs32_hotword` VALUES ('5304', '客服部经理', '71');
INSERT INTO `qs32_hotword` VALUES ('5308', '销售业务经理', '25');
INSERT INTO `qs32_hotword` VALUES ('5313', '物业管理员', '65');
INSERT INTO `qs32_hotword` VALUES ('5321', '行政出纳', '19');
INSERT INTO `qs32_hotword` VALUES ('5323', '注册造价师', '26');
INSERT INTO `qs32_hotword` VALUES ('5324', '广告销售代表', '14');
INSERT INTO `qs32_hotword` VALUES ('5325', '数控车工', '54');
INSERT INTO `qs32_hotword` VALUES ('5328', '销售前台', '25');
INSERT INTO `qs32_hotword` VALUES ('5358', '机械检验员', '14');
INSERT INTO `qs32_hotword` VALUES ('5363', '工业工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('5366', '前台咨询', '19');
INSERT INTO `qs32_hotword` VALUES ('5368', '服装导购', '27');
INSERT INTO `qs32_hotword` VALUES ('5374', '仓库理货员', '78');
INSERT INTO `qs32_hotword` VALUES ('5376', '店面销售顾问', '15');
INSERT INTO `qs32_hotword` VALUES ('5377', '人力行政主管', '15');
INSERT INTO `qs32_hotword` VALUES ('5378', '陈列督导', '25');
INSERT INTO `qs32_hotword` VALUES ('5383', '网店客服', '48');
INSERT INTO `qs32_hotword` VALUES ('5395', '安装预算员', '87');
INSERT INTO `qs32_hotword` VALUES ('5398', '营销策划', '161');
INSERT INTO `qs32_hotword` VALUES ('5401', '产品销售', '22');
INSERT INTO `qs32_hotword` VALUES ('5419', '调试员', '26');
INSERT INTO `qs32_hotword` VALUES ('5420', '人力行政总监', '19');
INSERT INTO `qs32_hotword` VALUES ('5421', '质检人员', '20');
INSERT INTO `qs32_hotword` VALUES ('5426', '商场总经理', '18');
INSERT INTO `qs32_hotword` VALUES ('5434', '管理处主任', '12');
INSERT INTO `qs32_hotword` VALUES ('5437', '保安主管', '55');
INSERT INTO `qs32_hotword` VALUES ('5459', '客户服务经理', '33');
INSERT INTO `qs32_hotword` VALUES ('5461', '课程销售', '29');
INSERT INTO `qs32_hotword` VALUES ('5469', '技术文员', '17');
INSERT INTO `qs32_hotword` VALUES ('5470', '生产助理', '77');
INSERT INTO `qs32_hotword` VALUES ('5476', '工程项目主管', '16');
INSERT INTO `qs32_hotword` VALUES ('5479', '水处理工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('5483', '工程部资料员', '46');
INSERT INTO `qs32_hotword` VALUES ('5485', 'C++工程师', '39');
INSERT INTO `qs32_hotword` VALUES ('5486', '品控员', '34');
INSERT INTO `qs32_hotword` VALUES ('5489', '配送人员', '15');
INSERT INTO `qs32_hotword` VALUES ('5490', '证券经纪人', '59');
INSERT INTO `qs32_hotword` VALUES ('5500', '薪酬主管', '20');
INSERT INTO `qs32_hotword` VALUES ('5501', '省区招商经理', '65');
INSERT INTO `qs32_hotword` VALUES ('5505', 'JAVA讲师', '20');
INSERT INTO `qs32_hotword` VALUES ('5506', '焊接工', '26');
INSERT INTO `qs32_hotword` VALUES ('5525', '留学咨询顾问', '85');
INSERT INTO `qs32_hotword` VALUES ('5528', '美容督导', '65');
INSERT INTO `qs32_hotword` VALUES ('5539', '文员兼出纳', '10');
INSERT INTO `qs32_hotword` VALUES ('5540', '管理人员', '11');
INSERT INTO `qs32_hotword` VALUES ('5541', '空调维修工', '20');
INSERT INTO `qs32_hotword` VALUES ('5556', '外科医师', '13');
INSERT INTO `qs32_hotword` VALUES ('5557', '专卖店导购', '73');
INSERT INTO `qs32_hotword` VALUES ('5558', '外协专员', '10');
INSERT INTO `qs32_hotword` VALUES ('5560', '招商运营经理', '11');
INSERT INTO `qs32_hotword` VALUES ('5562', '试乘试驾专员', '10');
INSERT INTO `qs32_hotword` VALUES ('5563', '招商总监', '85');
INSERT INTO `qs32_hotword` VALUES ('5564', '物业总经理', '17');
INSERT INTO `qs32_hotword` VALUES ('5566', '材料主管', '11');
INSERT INTO `qs32_hotword` VALUES ('5572', '家装设计师', '87');
INSERT INTO `qs32_hotword` VALUES ('5578', '工程造价师', '30');
INSERT INTO `qs32_hotword` VALUES ('5579', '安装造价师', '100');
INSERT INTO `qs32_hotword` VALUES ('5580', '土建造价师', '111');
INSERT INTO `qs32_hotword` VALUES ('5583', '招标专员', '39');
INSERT INTO `qs32_hotword` VALUES ('5587', '土建预算主管', '14');
INSERT INTO `qs32_hotword` VALUES ('5592', '总监助理', '90');
INSERT INTO `qs32_hotword` VALUES ('5598', '团购业务员', '71');
INSERT INTO `qs32_hotword` VALUES ('5600', '行李员', '47');
INSERT INTO `qs32_hotword` VALUES ('5615', '招商部经理', '76');
INSERT INTO `qs32_hotword` VALUES ('5618', '展厅经理', '42');
INSERT INTO `qs32_hotword` VALUES ('5626', '教育顾问', '65');
INSERT INTO `qs32_hotword` VALUES ('5634', '驻外代表', '16');
INSERT INTO `qs32_hotword` VALUES ('5636', '网络销售客服', '27');
INSERT INTO `qs32_hotword` VALUES ('5640', '审计助理', '71');
INSERT INTO `qs32_hotword` VALUES ('5643', '招商文员', '19');
INSERT INTO `qs32_hotword` VALUES ('5644', '维保工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('5645', '办事处经理', '222');
INSERT INTO `qs32_hotword` VALUES ('5650', '大区销售经理', '448');
INSERT INTO `qs32_hotword` VALUES ('5662', '渠道部经理', '34');
INSERT INTO `qs32_hotword` VALUES ('5667', '行政人事文员', '36');
INSERT INTO `qs32_hotword` VALUES ('5669', '营销', '10');
INSERT INTO `qs32_hotword` VALUES ('5670', 'IT主管', '41');
INSERT INTO `qs32_hotword` VALUES ('5672', '企划总监', '90');
INSERT INTO `qs32_hotword` VALUES ('5676', '工程施工人员', '16');
INSERT INTO `qs32_hotword` VALUES ('5682', '服装搭配师', '16');
INSERT INTO `qs32_hotword` VALUES ('5683', '人事管理岗', '11');
INSERT INTO `qs32_hotword` VALUES ('5684', '数码设计师', '17');
INSERT INTO `qs32_hotword` VALUES ('5689', '物业公司经理', '15');
INSERT INTO `qs32_hotword` VALUES ('5693', '测试员', '55');
INSERT INTO `qs32_hotword` VALUES ('5694', '专卖店导购员', '24');
INSERT INTO `qs32_hotword` VALUES ('5696', '会计核算岗', '10');
INSERT INTO `qs32_hotword` VALUES ('5702', '商业会计', '27');
INSERT INTO `qs32_hotword` VALUES ('5704', '地区经理', '245');
INSERT INTO `qs32_hotword` VALUES ('5712', '杂志美编', '13');
INSERT INTO `qs32_hotword` VALUES ('5718', '大客户主管', '27');
INSERT INTO `qs32_hotword` VALUES ('5719', '验货员', '17');
INSERT INTO `qs32_hotword` VALUES ('5726', '绩效专员', '79');
INSERT INTO `qs32_hotword` VALUES ('5728', '美术设计师', '16');
INSERT INTO `qs32_hotword` VALUES ('5738', '焊接工程师', '89');
INSERT INTO `qs32_hotword` VALUES ('5743', '保洁', '180');
INSERT INTO `qs32_hotword` VALUES ('5746', '日语教师', '23');
INSERT INTO `qs32_hotword` VALUES ('5758', '方案设计师', '50');
INSERT INTO `qs32_hotword` VALUES ('5760', '预算部经理', '48');
INSERT INTO `qs32_hotword` VALUES ('5763', '仓库保管', '25');
INSERT INTO `qs32_hotword` VALUES ('5767', '商品专员', '114');
INSERT INTO `qs32_hotword` VALUES ('5776', '专案经理', '33');
INSERT INTO `qs32_hotword` VALUES ('5777', '高中生物教师', '25');
INSERT INTO `qs32_hotword` VALUES ('5778', '高中地理教师', '20');
INSERT INTO `qs32_hotword` VALUES ('5779', '自控工程师', '49');
INSERT INTO `qs32_hotword` VALUES ('5780', '工程部长', '22');
INSERT INTO `qs32_hotword` VALUES ('5785', '销售技术支持', '15');
INSERT INTO `qs32_hotword` VALUES ('5786', '操盘手学员', '23');
INSERT INTO `qs32_hotword` VALUES ('5799', '市场部总监', '42');
INSERT INTO `qs32_hotword` VALUES ('5806', '销售储备干部', '79');
INSERT INTO `qs32_hotword` VALUES ('5808', '实习店长', '14');
INSERT INTO `qs32_hotword` VALUES ('5811', '保管员', '69');
INSERT INTO `qs32_hotword` VALUES ('5822', '运营管理', '25');
INSERT INTO `qs32_hotword` VALUES ('5824', '导游', '82');
INSERT INTO `qs32_hotword` VALUES ('5831', '办公室主管', '17');
INSERT INTO `qs32_hotword` VALUES ('5832', '兼职英语老师', '10');
INSERT INTO `qs32_hotword` VALUES ('5834', '专卖店店员', '81');
INSERT INTO `qs32_hotword` VALUES ('5835', '摄像师', '51');
INSERT INTO `qs32_hotword` VALUES ('5853', '品牌推广', '16');
INSERT INTO `qs32_hotword` VALUES ('5854', '终端经理', '21');
INSERT INTO `qs32_hotword` VALUES ('5860', '回访专员', '22');
INSERT INTO `qs32_hotword` VALUES ('5868', '办公室人员', '25');
INSERT INTO `qs32_hotword` VALUES ('5869', '专卖店店长', '144');
INSERT INTO `qs32_hotword` VALUES ('5870', '店面导购员', '10');
INSERT INTO `qs32_hotword` VALUES ('5882', '教务助理', '57');
INSERT INTO `qs32_hotword` VALUES ('5884', '电气维修工', '11');
INSERT INTO `qs32_hotword` VALUES ('5889', '水台', '10');
INSERT INTO `qs32_hotword` VALUES ('5893', '弱电技术员', '10');
INSERT INTO `qs32_hotword` VALUES ('5900', '教育咨询主管', '10');
INSERT INTO `qs32_hotword` VALUES ('5904', '操作工人', '12');
INSERT INTO `qs32_hotword` VALUES ('5906', '店面经理', '140');
INSERT INTO `qs32_hotword` VALUES ('5915', '线切割', '20');
INSERT INTO `qs32_hotword` VALUES ('5916', '软件销售代表', '53');
INSERT INTO `qs32_hotword` VALUES ('5919', '保洁人员', '26');
INSERT INTO `qs32_hotword` VALUES ('5924', '高级商务代表', '42');
INSERT INTO `qs32_hotword` VALUES ('5945', '分校长', '18');
INSERT INTO `qs32_hotword` VALUES ('5948', '美术教师', '24');
INSERT INTO `qs32_hotword` VALUES ('5949', '市场业务员', '27');
INSERT INTO `qs32_hotword` VALUES ('5954', '镗工', '18');
INSERT INTO `qs32_hotword` VALUES ('5958', '平面设计美工', '17');
INSERT INTO `qs32_hotword` VALUES ('5973', '普通工人', '18');
INSERT INTO `qs32_hotword` VALUES ('5974', '汽车维修技师', '14');
INSERT INTO `qs32_hotword` VALUES ('5978', '叉车工', '103');
INSERT INTO `qs32_hotword` VALUES ('5980', '副经理', '11');
INSERT INTO `qs32_hotword` VALUES ('5981', '初中英语老师', '16');
INSERT INTO `qs32_hotword` VALUES ('5994', '门店店长', '59');
INSERT INTO `qs32_hotword` VALUES ('6004', '人力资源部长', '22');
INSERT INTO `qs32_hotword` VALUES ('6008', '装配电工', '31');
INSERT INTO `qs32_hotword` VALUES ('6011', '工程副经理', '26');
INSERT INTO `qs32_hotword` VALUES ('6015', '工程副总经理', '29');
INSERT INTO `qs32_hotword` VALUES ('6018', '水暖预算员', '20');
INSERT INTO `qs32_hotword` VALUES ('6019', '工程内业', '34');
INSERT INTO `qs32_hotword` VALUES ('6021', '汽车修理工', '61');
INSERT INTO `qs32_hotword` VALUES ('6027', '酒水员', '14');
INSERT INTO `qs32_hotword` VALUES ('6028', '副总', '20');
INSERT INTO `qs32_hotword` VALUES ('6036', '医生助理', '48');
INSERT INTO `qs32_hotword` VALUES ('6038', '施工技术员', '14');
INSERT INTO `qs32_hotword` VALUES ('6040', '数学教师', '51');
INSERT INTO `qs32_hotword` VALUES ('6041', '物理教师', '24');
INSERT INTO `qs32_hotword` VALUES ('6042', '高级文秘', '42');
INSERT INTO `qs32_hotword` VALUES ('6043', '化学教师', '22');
INSERT INTO `qs32_hotword` VALUES ('6047', '会务主管', '12');
INSERT INTO `qs32_hotword` VALUES ('6048', '分公司出纳', '11');
INSERT INTO `qs32_hotword` VALUES ('6058', '礼服师', '22');
INSERT INTO `qs32_hotword` VALUES ('6062', '前台收银员', '29');
INSERT INTO `qs32_hotword` VALUES ('6064', '商超经理', '11');
INSERT INTO `qs32_hotword` VALUES ('6066', '企业管理', '15');
INSERT INTO `qs32_hotword` VALUES ('6090', '记账会计', '29');
INSERT INTO `qs32_hotword` VALUES ('6094', '案场经理', '64');
INSERT INTO `qs32_hotword` VALUES ('6102', '监理员', '32');
INSERT INTO `qs32_hotword` VALUES ('6106', '分公司负责人', '16');
INSERT INTO `qs32_hotword` VALUES ('6110', '吧台', '12');
INSERT INTO `qs32_hotword` VALUES ('6111', '淘宝销售客服', '17');
INSERT INTO `qs32_hotword` VALUES ('6114', '淘宝售后客服', '26');
INSERT INTO `qs32_hotword` VALUES ('6118', '初级评估员', '13');
INSERT INTO `qs32_hotword` VALUES ('6120', '高级评估员', '13');
INSERT INTO `qs32_hotword` VALUES ('6125', '总帐会计', '73');
INSERT INTO `qs32_hotword` VALUES ('6127', '设备管理员', '72');
INSERT INTO `qs32_hotword` VALUES ('6130', '楼层主管', '33');
INSERT INTO `qs32_hotword` VALUES ('6135', '办公室内勤', '51');
INSERT INTO `qs32_hotword` VALUES ('6147', '服务顾问', '159');
INSERT INTO `qs32_hotword` VALUES ('6153', '人力资源主任', '14');
INSERT INTO `qs32_hotword` VALUES ('6163', '分店经理', '23');
INSERT INTO `qs32_hotword` VALUES ('6164', '工长', '19');
INSERT INTO `qs32_hotword` VALUES ('6165', '铆工', '33');
INSERT INTO `qs32_hotword` VALUES ('6178', '集团财务经理', '11');
INSERT INTO `qs32_hotword` VALUES ('6182', '防损员', '71');
INSERT INTO `qs32_hotword` VALUES ('6185', '平面设计总监', '41');
INSERT INTO `qs32_hotword` VALUES ('6189', 'KA业代', '17');
INSERT INTO `qs32_hotword` VALUES ('6197', '西餐厅服务员', '39');
INSERT INTO `qs32_hotword` VALUES ('6198', '采购内勤', '24');
INSERT INTO `qs32_hotword` VALUES ('6202', '磨工', '15');
INSERT INTO `qs32_hotword` VALUES ('6204', '英语编辑', '28');
INSERT INTO `qs32_hotword` VALUES ('6211', '钻工', '10');
INSERT INTO `qs32_hotword` VALUES ('6216', '生产部长', '33');
INSERT INTO `qs32_hotword` VALUES ('6219', '财务统计', '29');
INSERT INTO `qs32_hotword` VALUES ('6223', '专职安全员', '11');
INSERT INTO `qs32_hotword` VALUES ('6230', '网络营销总监', '17');
INSERT INTO `qs32_hotword` VALUES ('6232', '门店销售', '29');
INSERT INTO `qs32_hotword` VALUES ('6240', '销售业务主管', '11');
INSERT INTO `qs32_hotword` VALUES ('6243', '设备技术员', '30');
INSERT INTO `qs32_hotword` VALUES ('6246', '软件实习生', '15');
INSERT INTO `qs32_hotword` VALUES ('6260', '配送专员', '16');
INSERT INTO `qs32_hotword` VALUES ('6266', '剧情策划', '12');
INSERT INTO `qs32_hotword` VALUES ('6277', '文案设计', '13');
INSERT INTO `qs32_hotword` VALUES ('6279', '成本合约经理', '10');
INSERT INTO `qs32_hotword` VALUES ('6293', '公关', '13');
INSERT INTO `qs32_hotword` VALUES ('6314', '餐饮经理', '28');
INSERT INTO `qs32_hotword` VALUES ('6315', '幼教', '14');
INSERT INTO `qs32_hotword` VALUES ('6316', '网络咨询顾问', '18');
INSERT INTO `qs32_hotword` VALUES ('6319', '主管助理', '24');
INSERT INTO `qs32_hotword` VALUES ('6324', '店面营业员', '20');
INSERT INTO `qs32_hotword` VALUES ('6325', '客户顾问', '85');
INSERT INTO `qs32_hotword` VALUES ('6329', '电话咨询员', '36');
INSERT INTO `qs32_hotword` VALUES ('6340', '托福教师', '11');
INSERT INTO `qs32_hotword` VALUES ('6350', '配送司机', '43');
INSERT INTO `qs32_hotword` VALUES ('6360', '车间工人', '29');
INSERT INTO `qs32_hotword` VALUES ('6362', '区域业务员', '14');
INSERT INTO `qs32_hotword` VALUES ('6365', '安全管理员', '49');
INSERT INTO `qs32_hotword` VALUES ('6374', '装修预算员', '11');
INSERT INTO `qs32_hotword` VALUES ('6378', '成本主管', '37');
INSERT INTO `qs32_hotword` VALUES ('6381', '银保客户经理', '41');
INSERT INTO `qs32_hotword` VALUES ('6386', '物业主任', '17');
INSERT INTO `qs32_hotword` VALUES ('6394', '医学顾问', '36');
INSERT INTO `qs32_hotword` VALUES ('6399', '销售业务代表', '37');
INSERT INTO `qs32_hotword` VALUES ('6400', '作业员', '21');
INSERT INTO `qs32_hotword` VALUES ('6401', '技术专员', '33');
INSERT INTO `qs32_hotword` VALUES ('6416', '营业经理', '37');
INSERT INTO `qs32_hotword` VALUES ('6423', '水吧服务员', '12');
INSERT INTO `qs32_hotword` VALUES ('6430', '市场活动专员', '55');
INSERT INTO `qs32_hotword` VALUES ('6432', '财务部-会计', '11');
INSERT INTO `qs32_hotword` VALUES ('6443', '融资部经理', '13');
INSERT INTO `qs32_hotword` VALUES ('6445', '更夫', '33');
INSERT INTO `qs32_hotword` VALUES ('6447', '助理建筑师', '21');
INSERT INTO `qs32_hotword` VALUES ('6457', '签约专员', '14');
INSERT INTO `qs32_hotword` VALUES ('6458', '餐厅领班', '28');
INSERT INTO `qs32_hotword` VALUES ('6464', '给排水设计师', '45');
INSERT INTO `qs32_hotword` VALUES ('6466', '成本主任', '23');
INSERT INTO `qs32_hotword` VALUES ('6469', '人事', '39');
INSERT INTO `qs32_hotword` VALUES ('6472', '园林工程师', '77');
INSERT INTO `qs32_hotword` VALUES ('6497', '迎宾', '52');
INSERT INTO `qs32_hotword` VALUES ('6501', '资深留学顾问', '23');
INSERT INTO `qs32_hotword` VALUES ('6506', '会议策划', '10');
INSERT INTO `qs32_hotword` VALUES ('6508', '教师', '56');
INSERT INTO `qs32_hotword` VALUES ('6511', '地区客服', '19');
INSERT INTO `qs32_hotword` VALUES ('6514', '蒙氏教师', '13');
INSERT INTO `qs32_hotword` VALUES ('6517', '保育员', '30');
INSERT INTO `qs32_hotword` VALUES ('6519', '音乐教师', '11');
INSERT INTO `qs32_hotword` VALUES ('6521', '美容院院长', '36');
INSERT INTO `qs32_hotword` VALUES ('6525', '暖通主管', '13');
INSERT INTO `qs32_hotword` VALUES ('6529', '护理师', '10');
INSERT INTO `qs32_hotword` VALUES ('6532', '测量工程师', '49');
INSERT INTO `qs32_hotword` VALUES ('6544', '保洁经理', '22');
INSERT INTO `qs32_hotword` VALUES ('6545', '电话招商专员', '25');
INSERT INTO `qs32_hotword` VALUES ('6548', '商场经理', '18');
INSERT INTO `qs32_hotword` VALUES ('6554', '市场部业务员', '24');
INSERT INTO `qs32_hotword` VALUES ('6557', '兼职业务员', '51');
INSERT INTO `qs32_hotword` VALUES ('6565', '渠道拓展专员', '28');
INSERT INTO `qs32_hotword` VALUES ('6571', '销售秘书', '69');
INSERT INTO `qs32_hotword` VALUES ('6575', '总监理工程师', '31');
INSERT INTO `qs32_hotword` VALUES ('6581', '信息员', '87');
INSERT INTO `qs32_hotword` VALUES ('6582', '投资理财顾问', '64');
INSERT INTO `qs32_hotword` VALUES ('6594', '钣金中工', '14');
INSERT INTO `qs32_hotword` VALUES ('6595', '健康专员', '10');
INSERT INTO `qs32_hotword` VALUES ('6596', '治疗室护士', '18');
INSERT INTO `qs32_hotword` VALUES ('6602', '医学检验员', '10');
INSERT INTO `qs32_hotword` VALUES ('6607', '调度', '20');
INSERT INTO `qs32_hotword` VALUES ('6615', '项目负责人', '35');
INSERT INTO `qs32_hotword` VALUES ('6622', '陈列专员', '78');
INSERT INTO `qs32_hotword` VALUES ('6631', '项目副经理', '17');
INSERT INTO `qs32_hotword` VALUES ('6632', '测量员', '40');
INSERT INTO `qs32_hotword` VALUES ('6641', '网络优化', '15');
INSERT INTO `qs32_hotword` VALUES ('6647', '会务经理', '24');
INSERT INTO `qs32_hotword` VALUES ('6648', '品管员', '59');
INSERT INTO `qs32_hotword` VALUES ('6663', '咨询经理', '29');
INSERT INTO `qs32_hotword` VALUES ('6688', '展厅接待', '25');
INSERT INTO `qs32_hotword` VALUES ('6705', '质量部经理', '35');
INSERT INTO `qs32_hotword` VALUES ('6707', '信息主管', '19');
INSERT INTO `qs32_hotword` VALUES ('6708', '水电预算员', '26');
INSERT INTO `qs32_hotword` VALUES ('6710', '专利代理人', '47');
INSERT INTO `qs32_hotword` VALUES ('6711', '总裁办秘书', '30');
INSERT INTO `qs32_hotword` VALUES ('6725', '工程会计', '13');
INSERT INTO `qs32_hotword` VALUES ('6729', '财务部长', '35');
INSERT INTO `qs32_hotword` VALUES ('6730', '现场施工员', '11');
INSERT INTO `qs32_hotword` VALUES ('6731', '区域专员', '15');
INSERT INTO `qs32_hotword` VALUES ('6736', '经营副总', '13');
INSERT INTO `qs32_hotword` VALUES ('6739', '绿化主管', '10');
INSERT INTO `qs32_hotword` VALUES ('6740', '销售部长', '24');
INSERT INTO `qs32_hotword` VALUES ('6745', '精装修设计师', '16');
INSERT INTO `qs32_hotword` VALUES ('6748', '造价员', '96');
INSERT INTO `qs32_hotword` VALUES ('6756', '售后前台主管', '10');
INSERT INTO `qs32_hotword` VALUES ('6757', '维修员', '38');
INSERT INTO `qs32_hotword` VALUES ('6761', '保险专员', '28');
INSERT INTO `qs32_hotword` VALUES ('6762', '家居顾问', '52');
INSERT INTO `qs32_hotword` VALUES ('6774', '安装工', '56');
INSERT INTO `qs32_hotword` VALUES ('6775', '软件销售人员', '13');
INSERT INTO `qs32_hotword` VALUES ('6779', '技术负责人', '43');
INSERT INTO `qs32_hotword` VALUES ('6784', '设计员', '49');
INSERT INTO `qs32_hotword` VALUES ('6786', '保安队长', '97');
INSERT INTO `qs32_hotword` VALUES ('6792', '美术老师', '19');
INSERT INTO `qs32_hotword` VALUES ('6797', '区域产品经理', '17');
INSERT INTO `qs32_hotword` VALUES ('6799', '保安队员', '10');
INSERT INTO `qs32_hotword` VALUES ('6802', '维修人员', '32');
INSERT INTO `qs32_hotword` VALUES ('6806', '采购总监', '50');
INSERT INTO `qs32_hotword` VALUES ('6813', '人力资源总监', '282');
INSERT INTO `qs32_hotword` VALUES ('6816', '绿化工', '19');
INSERT INTO `qs32_hotword` VALUES ('6817', '技术总监助理', '10');
INSERT INTO `qs32_hotword` VALUES ('6825', '前台助理', '19');
INSERT INTO `qs32_hotword` VALUES ('6826', '优秀设计师', '32');
INSERT INTO `qs32_hotword` VALUES ('6830', '测试人员', '17');
INSERT INTO `qs32_hotword` VALUES ('6831', '人力行政经理', '16');
INSERT INTO `qs32_hotword` VALUES ('6835', '部门经理助理', '18');
INSERT INTO `qs32_hotword` VALUES ('6843', '舞蹈老师', '15');
INSERT INTO `qs32_hotword` VALUES ('6863', '汽车钣金工', '16');
INSERT INTO `qs32_hotword` VALUES ('6865', '法律顾问', '27');
INSERT INTO `qs32_hotword` VALUES ('6874', '操作员', '50');
INSERT INTO `qs32_hotword` VALUES ('6876', '客服员', '28');
INSERT INTO `qs32_hotword` VALUES ('6889', '机电设计师', '29');
INSERT INTO `qs32_hotword` VALUES ('6891', '工程总监', '112');
INSERT INTO `qs32_hotword` VALUES ('6892', '监理工程师', '45');
INSERT INTO `qs32_hotword` VALUES ('6897', '小学英语教师', '32');
INSERT INTO `qs32_hotword` VALUES ('6898', '小学语文教师', '17');
INSERT INTO `qs32_hotword` VALUES ('6902', '会务专员', '33');
INSERT INTO `qs32_hotword` VALUES ('6904', '高中政治教师', '17');
INSERT INTO `qs32_hotword` VALUES ('6905', '护士长', '72');
INSERT INTO `qs32_hotword` VALUES ('6914', '医学专家', '14');
INSERT INTO `qs32_hotword` VALUES ('6917', '会议主持', '10');
INSERT INTO `qs32_hotword` VALUES ('6918', '网店美工', '44');
INSERT INTO `qs32_hotword` VALUES ('6922', 'OTC代表', '194');
INSERT INTO `qs32_hotword` VALUES ('6925', '搬运工', '68');
INSERT INTO `qs32_hotword` VALUES ('6930', '校长', '45');
INSERT INTO `qs32_hotword` VALUES ('6939', '模特', '40');
INSERT INTO `qs32_hotword` VALUES ('6940', '员工关系专员', '31');
INSERT INTO `qs32_hotword` VALUES ('6953', '总工', '41');
INSERT INTO `qs32_hotword` VALUES ('6954', '电气预算员', '26');
INSERT INTO `qs32_hotword` VALUES ('6963', '材料采购员', '36');
INSERT INTO `qs32_hotword` VALUES ('6964', '工程副总', '57');
INSERT INTO `qs32_hotword` VALUES ('6968', '砧板', '19');
INSERT INTO `qs32_hotword` VALUES ('6969', '迎宾员', '70');
INSERT INTO `qs32_hotword` VALUES ('6971', '吧台员', '24');
INSERT INTO `qs32_hotword` VALUES ('6979', '收款员', '30');
INSERT INTO `qs32_hotword` VALUES ('6986', '电话销售员', '73');
INSERT INTO `qs32_hotword` VALUES ('6987', '家具设计师', '31');
INSERT INTO `qs32_hotword` VALUES ('6988', '展览设计师', '63');
INSERT INTO `qs32_hotword` VALUES ('6994', '市场研究员', '30');
INSERT INTO `qs32_hotword` VALUES ('7000', '生产操作员', '19');
INSERT INTO `qs32_hotword` VALUES ('7005', '计时工', '10');
INSERT INTO `qs32_hotword` VALUES ('7014', '客服部主管', '25');
INSERT INTO `qs32_hotword` VALUES ('7020', '人资助理', '12');
INSERT INTO `qs32_hotword` VALUES ('7023', '电话招商', '12');
INSERT INTO `qs32_hotword` VALUES ('7024', '电话营销代表', '39');
INSERT INTO `qs32_hotword` VALUES ('7035', '歌手', '25');
INSERT INTO `qs32_hotword` VALUES ('7036', '园艺师', '15');
INSERT INTO `qs32_hotword` VALUES ('7044', '面点师', '67');
INSERT INTO `qs32_hotword` VALUES ('7049', '学员', '14');
INSERT INTO `qs32_hotword` VALUES ('7052', '测试技术员', '39');
INSERT INTO `qs32_hotword` VALUES ('7058', '电脑操作员', '15');
INSERT INTO `qs32_hotword` VALUES ('7059', '前厅主管', '40');
INSERT INTO `qs32_hotword` VALUES ('7062', '前厅领班', '18');
INSERT INTO `qs32_hotword` VALUES ('7069', '打字员', '12');
INSERT INTO `qs32_hotword` VALUES ('7078', '市场调研员', '42');
INSERT INTO `qs32_hotword` VALUES ('7087', '司炉工', '48');
INSERT INTO `qs32_hotword` VALUES ('7096', 'IT工程师', '132');
INSERT INTO `qs32_hotword` VALUES ('7105', '省级销售经理', '60');
INSERT INTO `qs32_hotword` VALUES ('7109', '运营部经理', '44');
INSERT INTO `qs32_hotword` VALUES ('7116', '客服主任', '39');
INSERT INTO `qs32_hotword` VALUES ('7117', '生产副经理', '10');
INSERT INTO `qs32_hotword` VALUES ('7118', '制单员', '20');
INSERT INTO `qs32_hotword` VALUES ('7120', '公关部经理', '26');
INSERT INTO `qs32_hotword` VALUES ('7122', '营运主管', '109');
INSERT INTO `qs32_hotword` VALUES ('7124', '质量主管', '58');
INSERT INTO `qs32_hotword` VALUES ('7125', '计划主管', '19');
INSERT INTO `qs32_hotword` VALUES ('7128', '工艺技术员', '51');
INSERT INTO `qs32_hotword` VALUES ('7136', '直营店店长', '36');
INSERT INTO `qs32_hotword` VALUES ('7138', '工程维修', '18');
INSERT INTO `qs32_hotword` VALUES ('7142', '监控员', '38');
INSERT INTO `qs32_hotword` VALUES ('7148', '省区内勤', '17');
INSERT INTO `qs32_hotword` VALUES ('7150', '商场营业员', '21');
INSERT INTO `qs32_hotword` VALUES ('7155', '内勤文员', '27');
INSERT INTO `qs32_hotword` VALUES ('7156', '安管队长', '14');
INSERT INTO `qs32_hotword` VALUES ('7158', 'KA主管', '48');
INSERT INTO `qs32_hotword` VALUES ('7161', '安管员', '21');
INSERT INTO `qs32_hotword` VALUES ('7164', '仓库文员', '72');
INSERT INTO `qs32_hotword` VALUES ('7172', '商场导购', '31');
INSERT INTO `qs32_hotword` VALUES ('7178', '水电维修工', '59');
INSERT INTO `qs32_hotword` VALUES ('7190', '行政客服', '23');
INSERT INTO `qs32_hotword` VALUES ('7192', '汽车销售', '29');
INSERT INTO `qs32_hotword` VALUES ('7207', '审计', '37');
INSERT INTO `qs32_hotword` VALUES ('7211', '兼职顾问', '20');
INSERT INTO `qs32_hotword` VALUES ('7212', '区域代理商', '38');
INSERT INTO `qs32_hotword` VALUES ('7215', '校区总监', '34');
INSERT INTO `qs32_hotword` VALUES ('7220', '软件项目经理', '85');
INSERT INTO `qs32_hotword` VALUES ('7224', '电话营销顾问', '18');
INSERT INTO `qs32_hotword` VALUES ('7229', '渠道销售人员', '20');
INSERT INTO `qs32_hotword` VALUES ('7230', '西餐厨师', '34');
INSERT INTO `qs32_hotword` VALUES ('7243', '商超业务主管', '26');
INSERT INTO `qs32_hotword` VALUES ('7245', '技术', '20');
INSERT INTO `qs32_hotword` VALUES ('7252', '配置管理员', '27');
INSERT INTO `qs32_hotword` VALUES ('7257', '办事处助理', '21');
INSERT INTO `qs32_hotword` VALUES ('7261', '报建专员', '51');
INSERT INTO `qs32_hotword` VALUES ('7262', '强电工程师', '33');
INSERT INTO `qs32_hotword` VALUES ('7267', '招标主管', '45');
INSERT INTO `qs32_hotword` VALUES ('7280', '轿车司机', '10');
INSERT INTO `qs32_hotword` VALUES ('7299', '软装设计师', '89');
INSERT INTO `qs32_hotword` VALUES ('7302', '橱柜设计师', '30');
INSERT INTO `qs32_hotword` VALUES ('7304', '项目部经理', '18');
INSERT INTO `qs32_hotword` VALUES ('7310', '在线咨询师', '11');
INSERT INTO `qs32_hotword` VALUES ('7312', '食堂厨师', '31');
INSERT INTO `qs32_hotword` VALUES ('7317', '切配', '10');
INSERT INTO `qs32_hotword` VALUES ('7321', '秩序维护员', '79');
INSERT INTO `qs32_hotword` VALUES ('7326', '国内销售', '21');
INSERT INTO `qs32_hotword` VALUES ('7328', '市场营销代表', '23');
INSERT INTO `qs32_hotword` VALUES ('7329', '客户AE', '19');
INSERT INTO `qs32_hotword` VALUES ('7340', '业务经理助理', '20');
INSERT INTO `qs32_hotword` VALUES ('7344', '高级经理', '28');
INSERT INTO `qs32_hotword` VALUES ('7349', '招生代表', '23');
INSERT INTO `qs32_hotword` VALUES ('7351', '汽车维修工', '17');
INSERT INTO `qs32_hotword` VALUES ('7361', '展示设计师', '49');
INSERT INTO `qs32_hotword` VALUES ('7372', '热处理工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('7376', '工厂厂长', '14');
INSERT INTO `qs32_hotword` VALUES ('7382', '幼儿英语教师', '49');
INSERT INTO `qs32_hotword` VALUES ('7386', '英语助教', '32');
INSERT INTO `qs32_hotword` VALUES ('7398', '安全工程师', '94');
INSERT INTO `qs32_hotword` VALUES ('7411', '市场拓展总监', '17');
INSERT INTO `qs32_hotword` VALUES ('7425', '兼职英语教师', '13');
INSERT INTO `qs32_hotword` VALUES ('7443', '品质检验', '11');
INSERT INTO `qs32_hotword` VALUES ('7445', '机械设计员', '27');
INSERT INTO `qs32_hotword` VALUES ('7447', '软件测试人员', '10');
INSERT INTO `qs32_hotword` VALUES ('7455', '教务班主任', '18');
INSERT INTO `qs32_hotword` VALUES ('7458', '广告创意总监', '39');
INSERT INTO `qs32_hotword` VALUES ('7469', '售前技术支持', '64');
INSERT INTO `qs32_hotword` VALUES ('7478', '网页设计制作', '10');
INSERT INTO `qs32_hotword` VALUES ('7481', '期货经纪人', '11');
INSERT INTO `qs32_hotword` VALUES ('7490', '外联部经理', '11');
INSERT INTO `qs32_hotword` VALUES ('7491', '技术研发人员', '14');
INSERT INTO `qs32_hotword` VALUES ('7494', '终端督导', '42');
INSERT INTO `qs32_hotword` VALUES ('7500', '销售内勤主管', '17');
INSERT INTO `qs32_hotword` VALUES ('7521', '电话回访员', '47');
INSERT INTO `qs32_hotword` VALUES ('7522', '储备管理干部', '41');
INSERT INTO `qs32_hotword` VALUES ('7523', '融资主管', '42');
INSERT INTO `qs32_hotword` VALUES ('7536', '商务接待', '12');
INSERT INTO `qs32_hotword` VALUES ('7538', '人事行政', '23');
INSERT INTO `qs32_hotword` VALUES ('7539', '治疗护士', '11');
INSERT INTO `qs32_hotword` VALUES ('7540', '区域督导', '65');
INSERT INTO `qs32_hotword` VALUES ('7542', '培训老师', '31');
INSERT INTO `qs32_hotword` VALUES ('7546', '黄金分析师', '80');
INSERT INTO `qs32_hotword` VALUES ('7547', '总经办助理', '17');
INSERT INTO `qs32_hotword` VALUES ('7548', '教学助理', '41');
INSERT INTO `qs32_hotword` VALUES ('7559', '专柜导购', '13');
INSERT INTO `qs32_hotword` VALUES ('7569', '资料管理员', '32');
INSERT INTO `qs32_hotword` VALUES ('7579', '产品讲师', '30');
INSERT INTO `qs32_hotword` VALUES ('7594', 'SQA', '10');
INSERT INTO `qs32_hotword` VALUES ('7600', '嵌入式工程师', '30');
INSERT INTO `qs32_hotword` VALUES ('7617', '临床销售代表', '20');
INSERT INTO `qs32_hotword` VALUES ('7620', '计调', '35');
INSERT INTO `qs32_hotword` VALUES ('7621', '助理策划师', '18');
INSERT INTO `qs32_hotword` VALUES ('7622', '厨师长', '67');
INSERT INTO `qs32_hotword` VALUES ('7623', '送货工', '10');
INSERT INTO `qs32_hotword` VALUES ('7625', '省区营销总监', '16');
INSERT INTO `qs32_hotword` VALUES ('7636', '项目策划专员', '10');
INSERT INTO `qs32_hotword` VALUES ('7639', '物业主管', '61');
INSERT INTO `qs32_hotword` VALUES ('7643', '标本接收员', '13');
INSERT INTO `qs32_hotword` VALUES ('7649', '高级咨询顾问', '40');
INSERT INTO `qs32_hotword` VALUES ('7655', '审计项目经理', '40');
INSERT INTO `qs32_hotword` VALUES ('7661', '网站优化专员', '11');
INSERT INTO `qs32_hotword` VALUES ('7667', '医务科主任', '13');
INSERT INTO `qs32_hotword` VALUES ('7670', '内科医师', '17');
INSERT INTO `qs32_hotword` VALUES ('7677', '媒介', '10');
INSERT INTO `qs32_hotword` VALUES ('7685', '优秀店长', '13');
INSERT INTO `qs32_hotword` VALUES ('7689', '质检', '58');
INSERT INTO `qs32_hotword` VALUES ('7691', '包装工', '46');
INSERT INTO `qs32_hotword` VALUES ('7692', '电气设计', '12');
INSERT INTO `qs32_hotword` VALUES ('7693', '幕墙设计师', '29');
INSERT INTO `qs32_hotword` VALUES ('7695', '仓库会计', '11');
INSERT INTO `qs32_hotword` VALUES ('7699', '商品主管', '72');
INSERT INTO `qs32_hotword` VALUES ('7705', '工程预算员', '51');
INSERT INTO `qs32_hotword` VALUES ('7706', '零售代表', '51');
INSERT INTO `qs32_hotword` VALUES ('7708', '前台行政文员', '26');
INSERT INTO `qs32_hotword` VALUES ('7720', '手术室护士', '38');
INSERT INTO `qs32_hotword` VALUES ('7724', '客服总监', '86');
INSERT INTO `qs32_hotword` VALUES ('7734', '研发中心总监', '10');
INSERT INTO `qs32_hotword` VALUES ('7736', '酒店经理', '28');
INSERT INTO `qs32_hotword` VALUES ('7744', '餐厅经理', '61');
INSERT INTO `qs32_hotword` VALUES ('7751', '电视编导', '12');
INSERT INTO `qs32_hotword` VALUES ('7752', '电话行销', '10');
INSERT INTO `qs32_hotword` VALUES ('7754', '渠道销售主管', '41');
INSERT INTO `qs32_hotword` VALUES ('7755', '装修设计师', '39');
INSERT INTO `qs32_hotword` VALUES ('7767', '网络维护人员', '15');
INSERT INTO `qs32_hotword` VALUES ('7774', '网站建设', '17');
INSERT INTO `qs32_hotword` VALUES ('7777', '文案策划专员', '36');
INSERT INTO `qs32_hotword` VALUES ('7791', '医药销售经理', '30');
INSERT INTO `qs32_hotword` VALUES ('7801', '工程管理', '36');
INSERT INTO `qs32_hotword` VALUES ('7802', '期货居间人', '12');
INSERT INTO `qs32_hotword` VALUES ('7804', '店经理', '122');
INSERT INTO `qs32_hotword` VALUES ('7805', '美体师', '28');
INSERT INTO `qs32_hotword` VALUES ('7817', '中级操盘手', '13');
INSERT INTO `qs32_hotword` VALUES ('7818', '省级招商经理', '10');
INSERT INTO `qs32_hotword` VALUES ('7819', '水暖设计师', '15');
INSERT INTO `qs32_hotword` VALUES ('7821', '客户维护', '11');
INSERT INTO `qs32_hotword` VALUES ('7824', '高级操盘手', '19');
INSERT INTO `qs32_hotword` VALUES ('7827', '团购经理', '88');
INSERT INTO `qs32_hotword` VALUES ('7829', '按揭专员', '29');
INSERT INTO `qs32_hotword` VALUES ('7832', '产品策划经理', '12');
INSERT INTO `qs32_hotword` VALUES ('7837', '营运总监', '98');
INSERT INTO `qs32_hotword` VALUES ('7850', '财务内勤', '28');
INSERT INTO `qs32_hotword` VALUES ('7852', '辅导老师', '12');
INSERT INTO `qs32_hotword` VALUES ('7853', '二手房经纪人', '14');
INSERT INTO `qs32_hotword` VALUES ('7864', '企业策划', '19');
INSERT INTO `qs32_hotword` VALUES ('7872', '钣金技师', '62');
INSERT INTO `qs32_hotword` VALUES ('7879', '喷漆技师', '22');
INSERT INTO `qs32_hotword` VALUES ('7883', '运营副总', '15');
INSERT INTO `qs32_hotword` VALUES ('7886', '技术副总', '19');
INSERT INTO `qs32_hotword` VALUES ('7891', '网络推广人员', '28');
INSERT INTO `qs32_hotword` VALUES ('7894', '网站维护', '32');
INSERT INTO `qs32_hotword` VALUES ('7898', '录单员', '11');
INSERT INTO `qs32_hotword` VALUES ('7901', '财会', '16');
INSERT INTO `qs32_hotword` VALUES ('7903', '金融顾问', '13');
INSERT INTO `qs32_hotword` VALUES ('7911', '培训工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('7916', '区域销售总监', '224');
INSERT INTO `qs32_hotword` VALUES ('7919', '法务经理', '113');
INSERT INTO `qs32_hotword` VALUES ('7937', '市场活动策划', '10');
INSERT INTO `qs32_hotword` VALUES ('7938', '营业主管', '20');
INSERT INTO `qs32_hotword` VALUES ('7954', '销售培训师', '24');
INSERT INTO `qs32_hotword` VALUES ('7964', '外销业务员', '23');
INSERT INTO `qs32_hotword` VALUES ('7974', '播音员', '18');
INSERT INTO `qs32_hotword` VALUES ('7986', '电梯维保员', '14');
INSERT INTO `qs32_hotword` VALUES ('7989', '商务秘书', '19');
INSERT INTO `qs32_hotword` VALUES ('8003', '服装跟单', '36');
INSERT INTO `qs32_hotword` VALUES ('8007', '海外销售经理', '22');
INSERT INTO `qs32_hotword` VALUES ('8014', '装饰工程师', '78');
INSERT INTO `qs32_hotword` VALUES ('8020', '外贸销售人员', '10');
INSERT INTO `qs32_hotword` VALUES ('8023', '机修电工', '22');
INSERT INTO `qs32_hotword` VALUES ('8025', '专利工程师', '40');
INSERT INTO `qs32_hotword` VALUES ('8026', '健康管理师', '17');
INSERT INTO `qs32_hotword` VALUES ('8033', '中文教师', '10');
INSERT INTO `qs32_hotword` VALUES ('8059', '顾问', '37');
INSERT INTO `qs32_hotword` VALUES ('8061', 'FAE工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('8067', '售后支持', '20');
INSERT INTO `qs32_hotword` VALUES ('8069', '技术部主管', '15');
INSERT INTO `qs32_hotword` VALUES ('8073', '电气技术员', '49');
INSERT INTO `qs32_hotword` VALUES ('8074', '礼品销售经理', '13');
INSERT INTO `qs32_hotword` VALUES ('8075', '机械技术员', '40');
INSERT INTO `qs32_hotword` VALUES ('8078', '小区业务员', '17');
INSERT INTO `qs32_hotword` VALUES ('8084', '内保', '19');
INSERT INTO `qs32_hotword` VALUES ('8085', '渠道客户经理', '25');
INSERT INTO `qs32_hotword` VALUES ('8089', '品质工程师', '128');
INSERT INTO `qs32_hotword` VALUES ('8091', '机械制图', '10');
INSERT INTO `qs32_hotword` VALUES ('8092', '生产计划', '36');
INSERT INTO `qs32_hotword` VALUES ('8104', '房产顾问', '15');
INSERT INTO `qs32_hotword` VALUES ('8105', '断路器工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('8112', '测试主管', '46');
INSERT INTO `qs32_hotword` VALUES ('8119', '成本核算', '15');
INSERT INTO `qs32_hotword` VALUES ('8121', '金融专员', '21');
INSERT INTO `qs32_hotword` VALUES ('8141', '法务', '61');
INSERT INTO `qs32_hotword` VALUES ('8143', '品管', '24');
INSERT INTO `qs32_hotword` VALUES ('8146', '地区销售经理', '88');
INSERT INTO `qs32_hotword` VALUES ('8151', '销售会计', '103');
INSERT INTO `qs32_hotword` VALUES ('8160', '网站策划', '137');
INSERT INTO `qs32_hotword` VALUES ('8175', '销售部文员', '11');
INSERT INTO `qs32_hotword` VALUES ('8190', '模具设计师', '15');
INSERT INTO `qs32_hotword` VALUES ('8191', '房产销售顾问', '24');
INSERT INTO `qs32_hotword` VALUES ('8196', '产品设计师', '54');
INSERT INTO `qs32_hotword` VALUES ('8209', '制造工程师', '32');
INSERT INTO `qs32_hotword` VALUES ('8225', 'QE', '17');
INSERT INTO `qs32_hotword` VALUES ('8229', '电话营销主管', '35');
INSERT INTO `qs32_hotword` VALUES ('8236', '电话邀约专员', '10');
INSERT INTO `qs32_hotword` VALUES ('8241', '剪辑师', '10');
INSERT INTO `qs32_hotword` VALUES ('8245', '英语老师', '90');
INSERT INTO `qs32_hotword` VALUES ('8247', '美术总监', '13');
INSERT INTO `qs32_hotword` VALUES ('8255', '收银', '51');
INSERT INTO `qs32_hotword` VALUES ('8264', '内销业务员', '21');
INSERT INTO `qs32_hotword` VALUES ('8265', '信贷顾问', '20');
INSERT INTO `qs32_hotword` VALUES ('8278', '生管', '29');
INSERT INTO `qs32_hotword` VALUES ('8282', '投资部经理', '18');
INSERT INTO `qs32_hotword` VALUES ('8283', '综合管理员', '14');
INSERT INTO `qs32_hotword` VALUES ('8311', '广告设计师', '19');
INSERT INTO `qs32_hotword` VALUES ('8322', '网站采编', '10');
INSERT INTO `qs32_hotword` VALUES ('8324', '技术客服', '10');
INSERT INTO `qs32_hotword` VALUES ('8326', '人事行政总监', '47');
INSERT INTO `qs32_hotword` VALUES ('8327', '绩效考核主管', '53');
INSERT INTO `qs32_hotword` VALUES ('8329', '售前顾问', '61');
INSERT INTO `qs32_hotword` VALUES ('8336', '企划助理', '30');
INSERT INTO `qs32_hotword` VALUES ('8337', '服装制版师', '13');
INSERT INTO `qs32_hotword` VALUES ('8346', '市场运营总监', '21');
INSERT INTO `qs32_hotword` VALUES ('8354', '数控操作工', '44');
INSERT INTO `qs32_hotword` VALUES ('8358', '市场销售经理', '29');
INSERT INTO `qs32_hotword` VALUES ('8362', '模具主管', '11');
INSERT INTO `qs32_hotword` VALUES ('8370', '口腔科医生', '12');
INSERT INTO `qs32_hotword` VALUES ('8373', '现场管理员', '10');
INSERT INTO `qs32_hotword` VALUES ('8375', '车辆管理员', '29');
INSERT INTO `qs32_hotword` VALUES ('8389', '展厅销售', '15');
INSERT INTO `qs32_hotword` VALUES ('8392', '高级建筑师', '25');
INSERT INTO `qs32_hotword` VALUES ('8398', '模具设计', '23');
INSERT INTO `qs32_hotword` VALUES ('8410', '物流总监', '20');
INSERT INTO `qs32_hotword` VALUES ('8411', '视频制作', '10');
INSERT INTO `qs32_hotword` VALUES ('8416', 'UI设计', '21');
INSERT INTO `qs32_hotword` VALUES ('8417', '维修技术员', '63');
INSERT INTO `qs32_hotword` VALUES ('8430', '网站设计美工', '13');
INSERT INTO `qs32_hotword` VALUES ('8431', '报价工程师', '39');
INSERT INTO `qs32_hotword` VALUES ('8445', '市场渠道专员', '18');
INSERT INTO `qs32_hotword` VALUES ('8451', '薪资专员', '12');
INSERT INTO `qs32_hotword` VALUES ('8463', '设备维修工', '56');
INSERT INTO `qs32_hotword` VALUES ('8465', '市场公关', '14');
INSERT INTO `qs32_hotword` VALUES ('8468', 'EHS工程师', '36');
INSERT INTO `qs32_hotword` VALUES ('8474', '注册税务师', '30');
INSERT INTO `qs32_hotword` VALUES ('8480', '仓库统计员', '10');
INSERT INTO `qs32_hotword` VALUES ('8483', '家具销售', '11');
INSERT INTO `qs32_hotword` VALUES ('8490', '公司副总', '10');
INSERT INTO `qs32_hotword` VALUES ('8507', '模具维修工', '16');
INSERT INTO `qs32_hotword` VALUES ('8512', '计划工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('8515', '实验室主管', '32');
INSERT INTO `qs32_hotword` VALUES ('8520', '车间主管', '84');
INSERT INTO `qs32_hotword` VALUES ('8521', '生产领班', '13');
INSERT INTO `qs32_hotword` VALUES ('8524', '预算会计', '15');
INSERT INTO `qs32_hotword` VALUES ('8527', '推广代表', '35');
INSERT INTO `qs32_hotword` VALUES ('8532', '重点客户经理', '11');
INSERT INTO `qs32_hotword` VALUES ('8538', 'VIP客服', '36');
INSERT INTO `qs32_hotword` VALUES ('8545', '人力资源管理', '36');
INSERT INTO `qs32_hotword` VALUES ('8559', '客户内勤', '44');
INSERT INTO `qs32_hotword` VALUES ('8560', '渠道管理岗', '12');
INSERT INTO `qs32_hotword` VALUES ('8575', '软件开发人员', '31');
INSERT INTO `qs32_hotword` VALUES ('8584', '工程部助理', '28');
INSERT INTO `qs32_hotword` VALUES ('8596', '备件管理员', '18');
INSERT INTO `qs32_hotword` VALUES ('8600', '小学教师', '14');
INSERT INTO `qs32_hotword` VALUES ('8614', '助理店长', '14');
INSERT INTO `qs32_hotword` VALUES ('8637', '拓展员', '12');
INSERT INTO `qs32_hotword` VALUES ('8639', '电脑维护员', '15');
INSERT INTO `qs32_hotword` VALUES ('8644', '营销业务员', '12');
INSERT INTO `qs32_hotword` VALUES ('8648', '分公司会计', '20');
INSERT INTO `qs32_hotword` VALUES ('8650', '设计院专员', '21');
INSERT INTO `qs32_hotword` VALUES ('8656', '财务结算', '10');
INSERT INTO `qs32_hotword` VALUES ('8673', '医药销售主管', '58');
INSERT INTO `qs32_hotword` VALUES ('8680', '出纳会计', '15');
INSERT INTO `qs32_hotword` VALUES ('8681', '产品开发专员', '17');
INSERT INTO `qs32_hotword` VALUES ('8690', '运营工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('8695', '美导', '68');
INSERT INTO `qs32_hotword` VALUES ('8697', 'UI界面设计', '18');
INSERT INTO `qs32_hotword` VALUES ('8698', '物流工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('8699', '电话回访专员', '16');
INSERT INTO `qs32_hotword` VALUES ('8706', '培训部经理', '41');
INSERT INTO `qs32_hotword` VALUES ('8710', '操作主管', '16');
INSERT INTO `qs32_hotword` VALUES ('8712', '包装工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('8715', '产品推广经理', '34');
INSERT INTO `qs32_hotword` VALUES ('8721', '订单专员', '13');
INSERT INTO `qs32_hotword` VALUES ('8723', '高级业务代表', '33');
INSERT INTO `qs32_hotword` VALUES ('8725', '项目总工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('8728', '市场调查员', '28');
INSERT INTO `qs32_hotword` VALUES ('8730', '花艺师', '15');
INSERT INTO `qs32_hotword` VALUES ('8731', '婚礼策划师', '22');
INSERT INTO `qs32_hotword` VALUES ('8734', '行政管理员', '10');
INSERT INTO `qs32_hotword` VALUES ('8737', '审计部长', '10');
INSERT INTO `qs32_hotword` VALUES ('8745', '会议主持人', '14');
INSERT INTO `qs32_hotword` VALUES ('8752', '内容编辑', '20');
INSERT INTO `qs32_hotword` VALUES ('8762', '音响师', '33');
INSERT INTO `qs32_hotword` VALUES ('8769', '计划运营主管', '10');
INSERT INTO `qs32_hotword` VALUES ('8772', '区域业务经理', '48');
INSERT INTO `qs32_hotword` VALUES ('8777', '学术专员', '72');
INSERT INTO `qs32_hotword` VALUES ('8779', '厨工', '74');
INSERT INTO `qs32_hotword` VALUES ('8789', '催收专员', '19');
INSERT INTO `qs32_hotword` VALUES ('8793', '后勤专员', '15');
INSERT INTO `qs32_hotword` VALUES ('8803', '会计主任', '17');
INSERT INTO `qs32_hotword` VALUES ('8804', '实习置业顾问', '11');
INSERT INTO `qs32_hotword` VALUES ('8820', '投资项目经理', '14');
INSERT INTO `qs32_hotword` VALUES ('8827', '事业部经理', '11');
INSERT INTO `qs32_hotword` VALUES ('8829', '业务司机', '13');
INSERT INTO `qs32_hotword` VALUES ('8834', '医务部主任', '17');
INSERT INTO `qs32_hotword` VALUES ('8837', '汽车美容工', '14');
INSERT INTO `qs32_hotword` VALUES ('8840', '品管主管', '12');
INSERT INTO `qs32_hotword` VALUES ('8858', '店助', '21');
INSERT INTO `qs32_hotword` VALUES ('8859', '网络程序员', '48');
INSERT INTO `qs32_hotword` VALUES ('8863', '团购主管', '32');
INSERT INTO `qs32_hotword` VALUES ('8883', '内刊编辑', '16');
INSERT INTO `qs32_hotword` VALUES ('8893', '备件计划员', '10');
INSERT INTO `qs32_hotword` VALUES ('8906', '助理销售', '11');
INSERT INTO `qs32_hotword` VALUES ('8911', '营销储备干部', '11');
INSERT INTO `qs32_hotword` VALUES ('8915', '公共关系主管', '10');
INSERT INTO `qs32_hotword` VALUES ('8919', '病理技术员', '19');
INSERT INTO `qs32_hotword` VALUES ('8920', '导诊', '30');
INSERT INTO `qs32_hotword` VALUES ('8925', '检验技术员', '16');
INSERT INTO `qs32_hotword` VALUES ('8930', '高级医药代表', '83');
INSERT INTO `qs32_hotword` VALUES ('8933', '商务部经理', '23');
INSERT INTO `qs32_hotword` VALUES ('8948', '主任', '12');
INSERT INTO `qs32_hotword` VALUES ('8951', '会所经理', '13');
INSERT INTO `qs32_hotword` VALUES ('8952', '部长', '24');
INSERT INTO `qs32_hotword` VALUES ('8953', '公司文员', '22');
INSERT INTO `qs32_hotword` VALUES ('8954', '财务兼行政', '11');
INSERT INTO `qs32_hotword` VALUES ('8955', '网站销售专员', '13');
INSERT INTO `qs32_hotword` VALUES ('8972', '员工餐厅厨师', '23');
INSERT INTO `qs32_hotword` VALUES ('8973', '流动陈列员', '14');
INSERT INTO `qs32_hotword` VALUES ('8977', '租赁专员', '26');
INSERT INTO `qs32_hotword` VALUES ('8988', '报检员', '23');
INSERT INTO `qs32_hotword` VALUES ('8997', '营运督导', '63');
INSERT INTO `qs32_hotword` VALUES ('9009', 'FAE', '10');
INSERT INTO `qs32_hotword` VALUES ('9010', '产品培训师', '13');
INSERT INTO `qs32_hotword` VALUES ('9013', '普药销售经理', '15');
INSERT INTO `qs32_hotword` VALUES ('9023', '商超促销员', '25');
INSERT INTO `qs32_hotword` VALUES ('9029', '临床业务员', '26');
INSERT INTO `qs32_hotword` VALUES ('9040', '区域销售人员', '28');
INSERT INTO `qs32_hotword` VALUES ('9045', '总经办主任', '61');
INSERT INTO `qs32_hotword` VALUES ('9050', '区域代表', '13');
INSERT INTO `qs32_hotword` VALUES ('9058', '销售跟单', '32');
INSERT INTO `qs32_hotword` VALUES ('9069', '电子维修工', '11');
INSERT INTO `qs32_hotword` VALUES ('9072', '电源工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('9086', '施工监理', '24');
INSERT INTO `qs32_hotword` VALUES ('9096', '海运单证', '15');
INSERT INTO `qs32_hotword` VALUES ('9099', '办事处总经理', '10');
INSERT INTO `qs32_hotword` VALUES ('9108', '移民顾问', '26');
INSERT INTO `qs32_hotword` VALUES ('9109', '营运专员', '28');
INSERT INTO `qs32_hotword` VALUES ('9138', '金融理财师', '30');
INSERT INTO `qs32_hotword` VALUES ('9153', '商品经理', '41');
INSERT INTO `qs32_hotword` VALUES ('9164', '执行专员', '15');
INSERT INTO `qs32_hotword` VALUES ('9168', '执行督导', '10');
INSERT INTO `qs32_hotword` VALUES ('9169', '土木工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('9178', '知识产权专员', '21');
INSERT INTO `qs32_hotword` VALUES ('9184', '片区经理', '62');
INSERT INTO `qs32_hotword` VALUES ('9188', '人资经理', '25');
INSERT INTO `qs32_hotword` VALUES ('9189', '驻店设计师', '15');
INSERT INTO `qs32_hotword` VALUES ('9195', '市场顾问', '11');
INSERT INTO `qs32_hotword` VALUES ('9217', '企管经理', '15');
INSERT INTO `qs32_hotword` VALUES ('9231', '市场开发经理', '33');
INSERT INTO `qs32_hotword` VALUES ('9235', '物流部经理', '26');
INSERT INTO `qs32_hotword` VALUES ('9245', '业务部门经理', '10');
INSERT INTO `qs32_hotword` VALUES ('9251', '脚本策划', '10');
INSERT INTO `qs32_hotword` VALUES ('9255', '开票员', '40');
INSERT INTO `qs32_hotword` VALUES ('9263', '统计专员', '10');
INSERT INTO `qs32_hotword` VALUES ('9270', '工程人员', '31');
INSERT INTO `qs32_hotword` VALUES ('9274', '管理部经理', '11');
INSERT INTO `qs32_hotword` VALUES ('9282', '营养讲师', '10');
INSERT INTO `qs32_hotword` VALUES ('9305', '品牌设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('9308', '门店客服员', '21');
INSERT INTO `qs32_hotword` VALUES ('9311', '业务管理岗', '11');
INSERT INTO `qs32_hotword` VALUES ('9315', '营运部经理', '25');
INSERT INTO `qs32_hotword` VALUES ('9324', '品牌推广经理', '25');
INSERT INTO `qs32_hotword` VALUES ('9327', '外事主任', '26');
INSERT INTO `qs32_hotword` VALUES ('9328', '游戏策划', '76');
INSERT INTO `qs32_hotword` VALUES ('9329', '营销策划总监', '68');
INSERT INTO `qs32_hotword` VALUES ('9336', '编辑主管', '11');
INSERT INTO `qs32_hotword` VALUES ('9338', '品牌策划专员', '12');
INSERT INTO `qs32_hotword` VALUES ('9339', '片区主管', '45');
INSERT INTO `qs32_hotword` VALUES ('9344', '计量员', '29');
INSERT INTO `qs32_hotword` VALUES ('9348', '产品销售经理', '34');
INSERT INTO `qs32_hotword` VALUES ('9349', '生产统计员', '49');
INSERT INTO `qs32_hotword` VALUES ('9350', '医院销售代表', '96');
INSERT INTO `qs32_hotword` VALUES ('9352', '兼职销售', '49');
INSERT INTO `qs32_hotword` VALUES ('9362', '机电维修工', '41');
INSERT INTO `qs32_hotword` VALUES ('9376', '机修', '37');
INSERT INTO `qs32_hotword` VALUES ('9378', '业务院长', '17');
INSERT INTO `qs32_hotword` VALUES ('9380', '行政主任', '30');
INSERT INTO `qs32_hotword` VALUES ('9390', '媒介策划', '21');
INSERT INTO `qs32_hotword` VALUES ('9391', '省级区域经理', '53');
INSERT INTO `qs32_hotword` VALUES ('9396', '商务编辑', '40');
INSERT INTO `qs32_hotword` VALUES ('9400', '新闻编辑', '180');
INSERT INTO `qs32_hotword` VALUES ('9410', '项目管理专员', '20');
INSERT INTO `qs32_hotword` VALUES ('9415', '拓展部经理', '43');
INSERT INTO `qs32_hotword` VALUES ('9422', '督导专员', '28');
INSERT INTO `qs32_hotword` VALUES ('9424', '结算专员', '16');
INSERT INTO `qs32_hotword` VALUES ('9432', '网店销售客服', '26');
INSERT INTO `qs32_hotword` VALUES ('9435', '门店副经理', '23');
INSERT INTO `qs32_hotword` VALUES ('9437', '业务主任', '110');
INSERT INTO `qs32_hotword` VALUES ('9439', '省区招商代表', '14');
INSERT INTO `qs32_hotword` VALUES ('9446', '品牌策划', '36');
INSERT INTO `qs32_hotword` VALUES ('9450', '化学分析员', '28');
INSERT INTO `qs32_hotword` VALUES ('9458', '前台导医', '13');
INSERT INTO `qs32_hotword` VALUES ('9461', '推广员', '14');
INSERT INTO `qs32_hotword` VALUES ('9469', '外访员', '13');
INSERT INTO `qs32_hotword` VALUES ('9485', '实习会计', '12');
INSERT INTO `qs32_hotword` VALUES ('9494', '摄像', '25');
INSERT INTO `qs32_hotword` VALUES ('9502', '信息技术专员', '39');
INSERT INTO `qs32_hotword` VALUES ('9508', '服务总监', '34');
INSERT INTO `qs32_hotword` VALUES ('9510', '售后信息员', '13');
INSERT INTO `qs32_hotword` VALUES ('9511', '服务经理', '62');
INSERT INTO `qs32_hotword` VALUES ('9512', '备件经理', '11');
INSERT INTO `qs32_hotword` VALUES ('9514', '备件库管员', '16');
INSERT INTO `qs32_hotword` VALUES ('9519', '客户接待员', '10');
INSERT INTO `qs32_hotword` VALUES ('9531', '专职会计', '14');
INSERT INTO `qs32_hotword` VALUES ('9546', '小学奥数教师', '14');
INSERT INTO `qs32_hotword` VALUES ('9555', '渠道开发经理', '55');
INSERT INTO `qs32_hotword` VALUES ('9559', '综合部经理', '46');
INSERT INTO `qs32_hotword` VALUES ('9573', '眼科医生', '23');
INSERT INTO `qs32_hotword` VALUES ('9574', '网络咨询员', '13');
INSERT INTO `qs32_hotword` VALUES ('9582', 'ka销售代表', '31');
INSERT INTO `qs32_hotword` VALUES ('9583', '外科医生', '34');
INSERT INTO `qs32_hotword` VALUES ('9585', '前台经理', '11');
INSERT INTO `qs32_hotword` VALUES ('9586', '网络维护专员', '23');
INSERT INTO `qs32_hotword` VALUES ('9587', '人力专员', '20');
INSERT INTO `qs32_hotword` VALUES ('9590', '商管员', '14');
INSERT INTO `qs32_hotword` VALUES ('9597', '化工工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('9606', '集团总经理', '10');
INSERT INTO `qs32_hotword` VALUES ('9609', '生产内勤', '15');
INSERT INTO `qs32_hotword` VALUES ('9614', '车间调度', '10');
INSERT INTO `qs32_hotword` VALUES ('9618', '直营督导', '18');
INSERT INTO `qs32_hotword` VALUES ('9637', '服务技师', '26');
INSERT INTO `qs32_hotword` VALUES ('9644', '商务采购', '28');
INSERT INTO `qs32_hotword` VALUES ('9646', '设计部主管', '15');
INSERT INTO `qs32_hotword` VALUES ('9670', '美容美体师', '62');
INSERT INTO `qs32_hotword` VALUES ('9671', '仪器操作师', '10');
INSERT INTO `qs32_hotword` VALUES ('9673', '美容院前台', '19');
INSERT INTO `qs32_hotword` VALUES ('9676', '网络专员', '44');
INSERT INTO `qs32_hotword` VALUES ('9677', '网络维护员', '26');
INSERT INTO `qs32_hotword` VALUES ('9678', '监察专员', '20');
INSERT INTO `qs32_hotword` VALUES ('9688', '律师', '42');
INSERT INTO `qs32_hotword` VALUES ('9693', '财务部出纳', '14');
INSERT INTO `qs32_hotword` VALUES ('9696', '信贷业务员', '12');
INSERT INTO `qs32_hotword` VALUES ('9699', '网站管理员', '29');
INSERT INTO `qs32_hotword` VALUES ('9702', '炊事员', '11');
INSERT INTO `qs32_hotword` VALUES ('9717', '电话销售经理', '57');
INSERT INTO `qs32_hotword` VALUES ('9719', '物料员', '12');
INSERT INTO `qs32_hotword` VALUES ('9741', '招商助理', '64');
INSERT INTO `qs32_hotword` VALUES ('9746', '初中物理老师', '10');
INSERT INTO `qs32_hotword` VALUES ('9748', '跟车送货员', '13');
INSERT INTO `qs32_hotword` VALUES ('9750', '高中物理老师', '19');
INSERT INTO `qs32_hotword` VALUES ('9752', '高中数学老师', '30');
INSERT INTO `qs32_hotword` VALUES ('9760', '组长', '51');
INSERT INTO `qs32_hotword` VALUES ('9761', '产品总监', '34');
INSERT INTO `qs32_hotword` VALUES ('9762', '内业', '11');
INSERT INTO `qs32_hotword` VALUES ('9764', '配送员', '79');
INSERT INTO `qs32_hotword` VALUES ('9788', '综合维修', '14');
INSERT INTO `qs32_hotword` VALUES ('9807', '量体师', '11');
INSERT INTO `qs32_hotword` VALUES ('9816', 'SEO工程师', '48');
INSERT INTO `qs32_hotword` VALUES ('9817', '事业部总经理', '18');
INSERT INTO `qs32_hotword` VALUES ('9856', '接待', '18');
INSERT INTO `qs32_hotword` VALUES ('9857', '行政外勤', '12');
INSERT INTO `qs32_hotword` VALUES ('9860', '文员助理', '15');
INSERT INTO `qs32_hotword` VALUES ('9862', '美容店长', '33');
INSERT INTO `qs32_hotword` VALUES ('9863', '驻店金融顾问', '30');
INSERT INTO `qs32_hotword` VALUES ('9877', '装卸工', '30');
INSERT INTO `qs32_hotword` VALUES ('9880', '发行主管', '10');
INSERT INTO `qs32_hotword` VALUES ('9884', '保险经纪人', '54');
INSERT INTO `qs32_hotword` VALUES ('9896', '质检主管', '32');
INSERT INTO `qs32_hotword` VALUES ('9904', '商务总监', '37');
INSERT INTO `qs32_hotword` VALUES ('9913', '商场导购员', '33');
INSERT INTO `qs32_hotword` VALUES ('9914', '售后维修人员', '18');
INSERT INTO `qs32_hotword` VALUES ('9918', '收银领班', '15');
INSERT INTO `qs32_hotword` VALUES ('9920', '工程部部长', '46');
INSERT INTO `qs32_hotword` VALUES ('9930', '机械设计人员', '14');
INSERT INTO `qs32_hotword` VALUES ('9932', '终端业务员', '16');
INSERT INTO `qs32_hotword` VALUES ('9949', '装配工人', '11');
INSERT INTO `qs32_hotword` VALUES ('9961', '市场开拓', '18');
INSERT INTO `qs32_hotword` VALUES ('9976', '直营经理', '29');
INSERT INTO `qs32_hotword` VALUES ('9983', '助产士', '19');
INSERT INTO `qs32_hotword` VALUES ('9985', '妇产科医生', '18');
INSERT INTO `qs32_hotword` VALUES ('10010', 'VIP经理', '11');
INSERT INTO `qs32_hotword` VALUES ('10031', '高级销售员', '12');
INSERT INTO `qs32_hotword` VALUES ('10034', '高中生物老师', '10');
INSERT INTO `qs32_hotword` VALUES ('10040', 'SMT技术员', '13');
INSERT INTO `qs32_hotword` VALUES ('10043', '教务主任', '30');
INSERT INTO `qs32_hotword` VALUES ('10055', '撰文指导', '25');
INSERT INTO `qs32_hotword` VALUES ('10067', '团购销售', '21');
INSERT INTO `qs32_hotword` VALUES ('10069', '前台主管', '45');
INSERT INTO `qs32_hotword` VALUES ('10070', '值班经理', '55');
INSERT INTO `qs32_hotword` VALUES ('10094', '机票预订员', '12');
INSERT INTO `qs32_hotword` VALUES ('10106', '快递员', '33');
INSERT INTO `qs32_hotword` VALUES ('10108', '生产工艺员', '15');
INSERT INTO `qs32_hotword` VALUES ('10112', '高级销售总监', '26');
INSERT INTO `qs32_hotword` VALUES ('10114', '直营部经理', '25');
INSERT INTO `qs32_hotword` VALUES ('10125', '客服前台', '18');
INSERT INTO `qs32_hotword` VALUES ('10131', '外派店长', '12');
INSERT INTO `qs32_hotword` VALUES ('10137', '市场营销主管', '36');
INSERT INTO `qs32_hotword` VALUES ('10161', '现场经理', '15');
INSERT INTO `qs32_hotword` VALUES ('10162', '品牌策划师', '10');
INSERT INTO `qs32_hotword` VALUES ('10165', '运维专员', '18');
INSERT INTO `qs32_hotword` VALUES ('10166', '化妆品导购', '15');
INSERT INTO `qs32_hotword` VALUES ('10171', '团队长', '17');
INSERT INTO `qs32_hotword` VALUES ('10174', '电子装配工', '12');
INSERT INTO `qs32_hotword` VALUES ('10200', '网络营销策划', '24');
INSERT INTO `qs32_hotword` VALUES ('10206', '虚拟化工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('10208', '高级营销顾问', '15');
INSERT INTO `qs32_hotword` VALUES ('10226', '团购销售代表', '26');
INSERT INTO `qs32_hotword` VALUES ('10255', '结算会计', '31');
INSERT INTO `qs32_hotword` VALUES ('10272', '全国大区经理', '13');
INSERT INTO `qs32_hotword` VALUES ('10278', '营销区域经理', '22');
INSERT INTO `qs32_hotword` VALUES ('10280', '钻床工', '11');
INSERT INTO `qs32_hotword` VALUES ('10281', '冲压工', '23');
INSERT INTO `qs32_hotword` VALUES ('10294', '职场管理岗', '12');
INSERT INTO `qs32_hotword` VALUES ('10318', '标书制作员', '19');
INSERT INTO `qs32_hotword` VALUES ('10322', '店长、导购', '16');
INSERT INTO `qs32_hotword` VALUES ('10349', '初级程序员', '23');
INSERT INTO `qs32_hotword` VALUES ('10354', '售后', '19');
INSERT INTO `qs32_hotword` VALUES ('10363', '驻外会计', '53');
INSERT INTO `qs32_hotword` VALUES ('10367', '网站开发', '23');
INSERT INTO `qs32_hotword` VALUES ('10378', '物控专员', '14');
INSERT INTO `qs32_hotword` VALUES ('10379', '品牌推广员', '12');
INSERT INTO `qs32_hotword` VALUES ('10419', '材料会计', '37');
INSERT INTO `qs32_hotword` VALUES ('10431', '勤杂工', '22');
INSERT INTO `qs32_hotword` VALUES ('10441', '团队出差员', '64');
INSERT INTO `qs32_hotword` VALUES ('10459', '业务主任岗', '17');
INSERT INTO `qs32_hotword` VALUES ('10465', '项目管理员', '24');
INSERT INTO `qs32_hotword` VALUES ('10470', '体系管理员', '11');
INSERT INTO `qs32_hotword` VALUES ('10477', '推广讲师', '17');
INSERT INTO `qs32_hotword` VALUES ('10479', '省经理', '13');
INSERT INTO `qs32_hotword` VALUES ('10485', '驻外销售经理', '24');
INSERT INTO `qs32_hotword` VALUES ('10491', '运营管理岗', '13');
INSERT INTO `qs32_hotword` VALUES ('10492', '市场营销策划', '13');
INSERT INTO `qs32_hotword` VALUES ('10494', '省级KA经理', '11');
INSERT INTO `qs32_hotword` VALUES ('10508', '现场管理', '18');
INSERT INTO `qs32_hotword` VALUES ('10511', '餐饮主管', '19');
INSERT INTO `qs32_hotword` VALUES ('10515', '大客户部经理', '26');
INSERT INTO `qs32_hotword` VALUES ('10517', '资深AE', '18');
INSERT INTO `qs32_hotword` VALUES ('10537', '厂长', '54');
INSERT INTO `qs32_hotword` VALUES ('10550', '客户部经理', '15');
INSERT INTO `qs32_hotword` VALUES ('10554', '店面账务', '10');
INSERT INTO `qs32_hotword` VALUES ('10557', '裱花师', '14');
INSERT INTO `qs32_hotword` VALUES ('10564', '数据库工程师', '90');
INSERT INTO `qs32_hotword` VALUES ('10565', 'UE设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('10583', '门店前台', '22');
INSERT INTO `qs32_hotword` VALUES ('10585', '黄金操盘手', '11');
INSERT INTO `qs32_hotword` VALUES ('10589', '临床代表', '10');
INSERT INTO `qs32_hotword` VALUES ('10602', '分公司副总', '12');
INSERT INTO `qs32_hotword` VALUES ('10605', '家装业务经理', '11');
INSERT INTO `qs32_hotword` VALUES ('10606', '高级培训师', '19');
INSERT INTO `qs32_hotword` VALUES ('10616', '网销专员', '10');
INSERT INTO `qs32_hotword` VALUES ('10619', '厨柜导购', '18');
INSERT INTO `qs32_hotword` VALUES ('10628', '喷漆技工', '10');
INSERT INTO `qs32_hotword` VALUES ('10629', '钣金技工', '11');
INSERT INTO `qs32_hotword` VALUES ('10641', '往来会计', '34');
INSERT INTO `qs32_hotword` VALUES ('10643', '检验业务代表', '23');
INSERT INTO `qs32_hotword` VALUES ('10651', '商业运营总监', '13');
INSERT INTO `qs32_hotword` VALUES ('10664', '案场主管', '13');
INSERT INTO `qs32_hotword` VALUES ('10669', '保险营销员', '10');
INSERT INTO `qs32_hotword` VALUES ('10675', '采购主任', '12');
INSERT INTO `qs32_hotword` VALUES ('10678', 'PE工程师', '42');
INSERT INTO `qs32_hotword` VALUES ('10679', '市场经理助理', '14');
INSERT INTO `qs32_hotword` VALUES ('10685', '旅游计调', '21');
INSERT INTO `qs32_hotword` VALUES ('10696', '礼仪', '11');
INSERT INTO `qs32_hotword` VALUES ('10698', '业务顾问', '21');
INSERT INTO `qs32_hotword` VALUES ('10703', '高级策划', '18');
INSERT INTO `qs32_hotword` VALUES ('10711', '招商业务员', '10');
INSERT INTO `qs32_hotword` VALUES ('10726', '保安经理', '42');
INSERT INTO `qs32_hotword` VALUES ('10751', '市场调查专员', '13');
INSERT INTO `qs32_hotword` VALUES ('10767', '代驾司机', '17');
INSERT INTO `qs32_hotword` VALUES ('10773', '商务人员', '48');
INSERT INTO `qs32_hotword` VALUES ('10774', 'web工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('10775', '预算专员', '13');
INSERT INTO `qs32_hotword` VALUES ('10777', '行政前台文员', '10');
INSERT INTO `qs32_hotword` VALUES ('10784', '游戏文案策划', '11');
INSERT INTO `qs32_hotword` VALUES ('10787', '保险理财顾问', '14');
INSERT INTO `qs32_hotword` VALUES ('10789', '客户接待', '13');
INSERT INTO `qs32_hotword` VALUES ('10796', '三维特效师', '11');
INSERT INTO `qs32_hotword` VALUES ('10797', '三维动画师', '18');
INSERT INTO `qs32_hotword` VALUES ('10802', '酒店销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('10804', '营销部副经理', '25');
INSERT INTO `qs32_hotword` VALUES ('10805', '人事服务专员', '10');
INSERT INTO `qs32_hotword` VALUES ('10809', '营销主任', '31');
INSERT INTO `qs32_hotword` VALUES ('10812', '招商副经理', '10');
INSERT INTO `qs32_hotword` VALUES ('10817', '茶艺员', '15');
INSERT INTO `qs32_hotword` VALUES ('10847', '行政后勤专员', '11');
INSERT INTO `qs32_hotword` VALUES ('10854', 'Web程序员', '20');
INSERT INTO `qs32_hotword` VALUES ('10856', '销售行政专员', '15');
INSERT INTO `qs32_hotword` VALUES ('10860', '员工餐厨师', '37');
INSERT INTO `qs32_hotword` VALUES ('10873', '品牌管理专员', '21');
INSERT INTO `qs32_hotword` VALUES ('10874', '餐饮服务员', '75');
INSERT INTO `qs32_hotword` VALUES ('10911', '行政后勤', '21');
INSERT INTO `qs32_hotword` VALUES ('10952', '售后客服', '76');
INSERT INTO `qs32_hotword` VALUES ('10968', '区域代理', '15');
INSERT INTO `qs32_hotword` VALUES ('10972', '驻店经理', '17');
INSERT INTO `qs32_hotword` VALUES ('10980', '建筑设计', '18');
INSERT INTO `qs32_hotword` VALUES ('10982', '楼层服务员', '24');
INSERT INTO `qs32_hotword` VALUES ('10999', 'VIP专员', '16');
INSERT INTO `qs32_hotword` VALUES ('11001', '大堂吧服务员', '11');
INSERT INTO `qs32_hotword` VALUES ('11023', '资产管理专员', '11');
INSERT INTO `qs32_hotword` VALUES ('11047', '仓储主管', '39');
INSERT INTO `qs32_hotword` VALUES ('11064', '策略文案', '13');
INSERT INTO `qs32_hotword` VALUES ('11077', '管理咨询师', '12');
INSERT INTO `qs32_hotword` VALUES ('11079', '市场分析师', '31');
INSERT INTO `qs32_hotword` VALUES ('11095', '物流监管员', '15');
INSERT INTO `qs32_hotword` VALUES ('11100', '初中语文教师', '22');
INSERT INTO `qs32_hotword` VALUES ('11104', '折页工', '11');
INSERT INTO `qs32_hotword` VALUES ('11119', '房产销售经理', '14');
INSERT INTO `qs32_hotword` VALUES ('11140', '零售督导', '41');
INSERT INTO `qs32_hotword` VALUES ('11153', '材料员', '95');
INSERT INTO `qs32_hotword` VALUES ('11160', '杂志采编', '13');
INSERT INTO `qs32_hotword` VALUES ('11172', '员工关系主管', '24');
INSERT INTO `qs32_hotword` VALUES ('11180', '质量管理', '24');
INSERT INTO `qs32_hotword` VALUES ('11182', '操作', '26');
INSERT INTO `qs32_hotword` VALUES ('11188', '检测员', '12');
INSERT INTO `qs32_hotword` VALUES ('11194', '培训督导', '92');
INSERT INTO `qs32_hotword` VALUES ('11210', '工程销售代表', '17');
INSERT INTO `qs32_hotword` VALUES ('11211', '营业助理', '13');
INSERT INTO `qs32_hotword` VALUES ('11226', '涂料工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('11236', '网络销售人员', '29');
INSERT INTO `qs32_hotword` VALUES ('11241', '绿化工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('11246', '团购部经理', '19');
INSERT INTO `qs32_hotword` VALUES ('11251', '维修接待', '11');
INSERT INTO `qs32_hotword` VALUES ('11252', '打单员', '30');
INSERT INTO `qs32_hotword` VALUES ('11273', '贷款顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('11304', '总建筑师', '23');
INSERT INTO `qs32_hotword` VALUES ('11305', '产品开发经理', '14');
INSERT INTO `qs32_hotword` VALUES ('11312', '服务人员', '14');
INSERT INTO `qs32_hotword` VALUES ('11313', '存储工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('11314', '主机工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('11328', '彩妆师', '28');
INSERT INTO `qs32_hotword` VALUES ('11329', '保安部经理', '19');
INSERT INTO `qs32_hotword` VALUES ('11332', '美甲师', '40');
INSERT INTO `qs32_hotword` VALUES ('11337', '咖啡师', '13');
INSERT INTO `qs32_hotword` VALUES ('11350', '小车驾驶员', '15');
INSERT INTO `qs32_hotword` VALUES ('11355', '药剂师', '43');
INSERT INTO `qs32_hotword` VALUES ('11360', '品管经理', '31');
INSERT INTO `qs32_hotword` VALUES ('11366', '驱动工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('11367', '小学英语老师', '17');
INSERT INTO `qs32_hotword` VALUES ('11374', '营养代表', '38');
INSERT INTO `qs32_hotword` VALUES ('11386', 'IT支持岗', '19');
INSERT INTO `qs32_hotword` VALUES ('11391', '部门文员', '16');
INSERT INTO `qs32_hotword` VALUES ('11403', '商品管理专员', '12');
INSERT INTO `qs32_hotword` VALUES ('11414', '期货交易员', '10');
INSERT INTO `qs32_hotword` VALUES ('11434', '渠道总监', '41');
INSERT INTO `qs32_hotword` VALUES ('11440', '综合柜员', '16');
INSERT INTO `qs32_hotword` VALUES ('11441', '房地产销售', '217');
INSERT INTO `qs32_hotword` VALUES ('11444', '媒体销售主管', '51');
INSERT INTO `qs32_hotword` VALUES ('11449', '房产销售人员', '39');
INSERT INTO `qs32_hotword` VALUES ('11453', '仓务员', '33');
INSERT INTO `qs32_hotword` VALUES ('11457', 'IT技术员', '14');
INSERT INTO `qs32_hotword` VALUES ('11463', '资质专员', '15');
INSERT INTO `qs32_hotword` VALUES ('11475', '消防工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('11540', '机修钳工', '16');
INSERT INTO `qs32_hotword` VALUES ('11545', '淘宝专员', '20');
INSERT INTO `qs32_hotword` VALUES ('11588', '房地产策划', '35');
INSERT INTO `qs32_hotword` VALUES ('11609', '科研人员', '10');
INSERT INTO `qs32_hotword` VALUES ('11610', '服务器程序员', '22');
INSERT INTO `qs32_hotword` VALUES ('11615', '采购人员', '12');
INSERT INTO `qs32_hotword` VALUES ('11616', '集团客户经理', '17');
INSERT INTO `qs32_hotword` VALUES ('11644', '留学文案', '16');
INSERT INTO `qs32_hotword` VALUES ('11652', '房地产估价师', '11');
INSERT INTO `qs32_hotword` VALUES ('11659', '会籍顾问', '44');
INSERT INTO `qs32_hotword` VALUES ('11669', '中餐厨师', '10');
INSERT INTO `qs32_hotword` VALUES ('11677', '外销员', '27');
INSERT INTO `qs32_hotword` VALUES ('11680', '珠宝顾问', '11');
INSERT INTO `qs32_hotword` VALUES ('11684', '仓库配货员', '51');
INSERT INTO `qs32_hotword` VALUES ('11689', '副总工程师', '30');
INSERT INTO `qs32_hotword` VALUES ('11710', '标识设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('11719', '风控部经理', '14');
INSERT INTO `qs32_hotword` VALUES ('11720', '高级投资顾问', '29');
INSERT INTO `qs32_hotword` VALUES ('11733', '服务部经理', '17');
INSERT INTO `qs32_hotword` VALUES ('11738', '暖通项目经理', '12');
INSERT INTO `qs32_hotword` VALUES ('11743', '医疗核损岗', '13');
INSERT INTO `qs32_hotword` VALUES ('11766', '桥梁工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('11803', '项目建筑师', '12');
INSERT INTO `qs32_hotword` VALUES ('11824', '销售大区经理', '26');
INSERT INTO `qs32_hotword` VALUES ('11838', '案场销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('11843', '车间操作工', '25');
INSERT INTO `qs32_hotword` VALUES ('11849', '客户服务助理', '17');
INSERT INTO `qs32_hotword` VALUES ('11851', '运营管理专员', '12');
INSERT INTO `qs32_hotword` VALUES ('11882', '顾问助理', '22');
INSERT INTO `qs32_hotword` VALUES ('11887', '保险内勤', '49');
INSERT INTO `qs32_hotword` VALUES ('11894', '内训师', '10');
INSERT INTO `qs32_hotword` VALUES ('11895', '产品摄影师', '18');
INSERT INTO `qs32_hotword` VALUES ('11908', '护理人员', '10');
INSERT INTO `qs32_hotword` VALUES ('11935', '售后人员', '32');
INSERT INTO `qs32_hotword` VALUES ('11938', '外派出差', '15');
INSERT INTO `qs32_hotword` VALUES ('11946', '区域业务代表', '31');
INSERT INTO `qs32_hotword` VALUES ('11947', '技术部经理', '89');
INSERT INTO `qs32_hotword` VALUES ('11968', '项目营销经理', '10');
INSERT INTO `qs32_hotword` VALUES ('11969', '综合部主管', '10');
INSERT INTO `qs32_hotword` VALUES ('11975', '兼职写手', '12');
INSERT INTO `qs32_hotword` VALUES ('11990', '绩效经理', '26');
INSERT INTO `qs32_hotword` VALUES ('11998', '薪酬绩效专员', '39');
INSERT INTO `qs32_hotword` VALUES ('12000', '咨询专员', '33');
INSERT INTO `qs32_hotword` VALUES ('12008', '储备管理人员', '24');
INSERT INTO `qs32_hotword` VALUES ('12016', '工程设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('12022', '雕刻工', '15');
INSERT INTO `qs32_hotword` VALUES ('12039', '加盟商', '11');
INSERT INTO `qs32_hotword` VALUES ('12062', '生产跟单', '50');
INSERT INTO `qs32_hotword` VALUES ('12064', '维修技工', '25');
INSERT INTO `qs32_hotword` VALUES ('12073', '品质管理', '44');
INSERT INTO `qs32_hotword` VALUES ('12074', '造价主管', '10');
INSERT INTO `qs32_hotword` VALUES ('12077', '见习销售代表', '14');
INSERT INTO `qs32_hotword` VALUES ('12080', '出差专员', '11');
INSERT INTO `qs32_hotword` VALUES ('12099', '课程咨询师', '20');
INSERT INTO `qs32_hotword` VALUES ('12104', '注塑工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('12122', '移民咨询顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('12125', '环境工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('12143', '内控经理', '11');
INSERT INTO `qs32_hotword` VALUES ('12149', '现金出纳', '12');
INSERT INTO `qs32_hotword` VALUES ('12154', '物流员', '18');
INSERT INTO `qs32_hotword` VALUES ('12156', '服装设计', '27');
INSERT INTO `qs32_hotword` VALUES ('12159', '质检部经理', '22');
INSERT INTO `qs32_hotword` VALUES ('12172', '期货分析师', '15');
INSERT INTO `qs32_hotword` VALUES ('12204', '品质经理', '68');
INSERT INTO `qs32_hotword` VALUES ('12246', '行政副经理', '14');
INSERT INTO `qs32_hotword` VALUES ('12249', '外贸文员', '34');
INSERT INTO `qs32_hotword` VALUES ('12269', '建筑工程管理', '29');
INSERT INTO `qs32_hotword` VALUES ('12274', '数据管理员', '14');
INSERT INTO `qs32_hotword` VALUES ('12277', '商务拓展', '12');
INSERT INTO `qs32_hotword` VALUES ('12294', '质量员', '13');
INSERT INTO `qs32_hotword` VALUES ('12324', '陈列主管', '45');
INSERT INTO `qs32_hotword` VALUES ('12327', 'QC经理', '10');
INSERT INTO `qs32_hotword` VALUES ('12342', '财务副总', '13');
INSERT INTO `qs32_hotword` VALUES ('12359', '技术部长', '15');
INSERT INTO `qs32_hotword` VALUES ('12364', '工程业务', '11');
INSERT INTO `qs32_hotword` VALUES ('12372', '品牌运营总监', '17');
INSERT INTO `qs32_hotword` VALUES ('12383', '商品总监', '13');
INSERT INTO `qs32_hotword` VALUES ('12387', 'PHP开发', '10');
INSERT INTO `qs32_hotword` VALUES ('12391', '税务主管', '19');
INSERT INTO `qs32_hotword` VALUES ('12401', '雅思老师', '10');
INSERT INTO `qs32_hotword` VALUES ('12405', '海运客服', '23');
INSERT INTO `qs32_hotword` VALUES ('12415', '产品培训专员', '13');
INSERT INTO `qs32_hotword` VALUES ('12421', '版师', '28');
INSERT INTO `qs32_hotword` VALUES ('12424', '技术副总监', '13');
INSERT INTO `qs32_hotword` VALUES ('12427', '售前咨询顾问', '18');
INSERT INTO `qs32_hotword` VALUES ('12436', 'SEO主管', '22');
INSERT INTO `qs32_hotword` VALUES ('12439', '网络销售精英', '13');
INSERT INTO `qs32_hotword` VALUES ('12448', '厂长助理', '38');
INSERT INTO `qs32_hotword` VALUES ('12453', '制程工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('12471', '高级销售顾问', '35');
INSERT INTO `qs32_hotword` VALUES ('12489', '人力行政专员', '15');
INSERT INTO `qs32_hotword` VALUES ('12504', '成本控制经理', '14');
INSERT INTO `qs32_hotword` VALUES ('12523', 'IQC工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('12525', 'IT技术支持', '11');
INSERT INTO `qs32_hotword` VALUES ('12532', '材料工程师', '64');
INSERT INTO `qs32_hotword` VALUES ('12536', '售前技术经理', '11');
INSERT INTO `qs32_hotword` VALUES ('12537', '服装设计总监', '17');
INSERT INTO `qs32_hotword` VALUES ('12572', '空间设计', '48');
INSERT INTO `qs32_hotword` VALUES ('12589', '模型师', '14');
INSERT INTO `qs32_hotword` VALUES ('12590', '形体顾问', '15');
INSERT INTO `qs32_hotword` VALUES ('12593', '3D动画师', '13');
INSERT INTO `qs32_hotword` VALUES ('12601', '制冷工', '28');
INSERT INTO `qs32_hotword` VALUES ('12602', '活动策划主管', '18');
INSERT INTO `qs32_hotword` VALUES ('12626', '高级课程顾问', '15');
INSERT INTO `qs32_hotword` VALUES ('12633', '中学物理教师', '13');
INSERT INTO `qs32_hotword` VALUES ('12637', '中学语文教师', '13');
INSERT INTO `qs32_hotword` VALUES ('12638', '中学数学教师', '24');
INSERT INTO `qs32_hotword` VALUES ('12639', '中学英语教师', '27');
INSERT INTO `qs32_hotword` VALUES ('12641', '中学化学教师', '12');
INSERT INTO `qs32_hotword` VALUES ('12653', '市场调研', '19');
INSERT INTO `qs32_hotword` VALUES ('12657', 'pcb工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('12658', '开发部经理', '59');
INSERT INTO `qs32_hotword` VALUES ('12663', 'IOS程序员', '12');
INSERT INTO `qs32_hotword` VALUES ('12669', '总办秘书', '12');
INSERT INTO `qs32_hotword` VALUES ('12674', '房务中心文员', '11');
INSERT INTO `qs32_hotword` VALUES ('12685', '财务部副经理', '44');
INSERT INTO `qs32_hotword` VALUES ('12694', '智能化工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('12697', '童装设计师', '33');
INSERT INTO `qs32_hotword` VALUES ('12699', '技术服务人员', '15');
INSERT INTO `qs32_hotword` VALUES ('12712', '市场代表', '47');
INSERT INTO `qs32_hotword` VALUES ('12713', '网络部经理', '11');
INSERT INTO `qs32_hotword` VALUES ('12722', '吧台服务员', '19');
INSERT INTO `qs32_hotword` VALUES ('12738', '销售管理岗', '10');
INSERT INTO `qs32_hotword` VALUES ('12749', '动画设计师', '15');
INSERT INTO `qs32_hotword` VALUES ('12765', '产品顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('12766', '大客户代表', '22');
INSERT INTO `qs32_hotword` VALUES ('12777', '注塑技术员', '16');
INSERT INTO `qs32_hotword` VALUES ('12780', '游戏测试员', '26');
INSERT INTO `qs32_hotword` VALUES ('12796', '市场开发员', '10');
INSERT INTO `qs32_hotword` VALUES ('12801', '房产销售精英', '23');
INSERT INTO `qs32_hotword` VALUES ('12820', '实习工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('12829', '建筑设计主管', '37');
INSERT INTO `qs32_hotword` VALUES ('12844', '广告平面设计', '12');
INSERT INTO `qs32_hotword` VALUES ('12849', '工程销售经理', '18');
INSERT INTO `qs32_hotword` VALUES ('12855', '销售策划', '14');
INSERT INTO `qs32_hotword` VALUES ('12859', '兼职督导', '11');
INSERT INTO `qs32_hotword` VALUES ('12877', '资深策划专员', '11');
INSERT INTO `qs32_hotword` VALUES ('12879', '安保人员', '13');
INSERT INTO `qs32_hotword` VALUES ('12884', '售后经理', '42');
INSERT INTO `qs32_hotword` VALUES ('12887', '办事处文员', '23');
INSERT INTO `qs32_hotword` VALUES ('12893', '稽核专员', '26');
INSERT INTO `qs32_hotword` VALUES ('12894', '房地产评估师', '10');
INSERT INTO `qs32_hotword` VALUES ('12908', '行政总务', '11');
INSERT INTO `qs32_hotword` VALUES ('12910', '网站主编', '37');
INSERT INTO `qs32_hotword` VALUES ('12913', '会计、出纳', '21');
INSERT INTO `qs32_hotword` VALUES ('12925', '商务合作专员', '13');
INSERT INTO `qs32_hotword` VALUES ('12930', '总裁办主任', '18');
INSERT INTO `qs32_hotword` VALUES ('12936', '财务管理岗', '12');
INSERT INTO `qs32_hotword` VALUES ('12937', '机械师', '13');
INSERT INTO `qs32_hotword` VALUES ('12953', '软件测试员', '16');
INSERT INTO `qs32_hotword` VALUES ('12955', '企划人员', '38');
INSERT INTO `qs32_hotword` VALUES ('12956', '国际采购', '11');
INSERT INTO `qs32_hotword` VALUES ('12958', '外派财务经理', '10');
INSERT INTO `qs32_hotword` VALUES ('12959', '游戏测试', '24');
INSERT INTO `qs32_hotword` VALUES ('12969', '风控经理', '22');
INSERT INTO `qs32_hotword` VALUES ('12972', '工程业务经理', '15');
INSERT INTO `qs32_hotword` VALUES ('12992', '旅行社计调', '24');
INSERT INTO `qs32_hotword` VALUES ('12995', '手机游戏策划', '24');
INSERT INTO `qs32_hotword` VALUES ('12996', '医务代表', '66');
INSERT INTO `qs32_hotword` VALUES ('12997', '培训主任', '22');
INSERT INTO `qs32_hotword` VALUES ('13011', '人事副经理', '11');
INSERT INTO `qs32_hotword` VALUES ('13015', '物业副经理', '10');
INSERT INTO `qs32_hotword` VALUES ('13029', '房产置业顾问', '41');
INSERT INTO `qs32_hotword` VALUES ('13039', '咨询员', '42');
INSERT INTO `qs32_hotword` VALUES ('13054', '物流采购专员', '17');
INSERT INTO `qs32_hotword` VALUES ('13055', '德国互惠生', '11');
INSERT INTO `qs32_hotword` VALUES ('13056', '比利时互惠生', '11');
INSERT INTO `qs32_hotword` VALUES ('13058', '法国互惠生', '11');
INSERT INTO `qs32_hotword` VALUES ('13068', '茶叶讲解员', '13');
INSERT INTO `qs32_hotword` VALUES ('13071', '风险控制经理', '14');
INSERT INTO `qs32_hotword` VALUES ('13074', '中心主任', '38');
INSERT INTO `qs32_hotword` VALUES ('13076', '行政部长', '12');
INSERT INTO `qs32_hotword` VALUES ('13078', '检验工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('13094', '平面美工', '13');
INSERT INTO `qs32_hotword` VALUES ('13097', '外派员', '10');
INSERT INTO `qs32_hotword` VALUES ('13098', '常务副总', '26');
INSERT INTO `qs32_hotword` VALUES ('13130', 'GIS工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('13137', '品管部经理', '15');
INSERT INTO `qs32_hotword` VALUES ('13159', '驻店陈列', '10');
INSERT INTO `qs32_hotword` VALUES ('13167', 'KA业务经理', '11');
INSERT INTO `qs32_hotword` VALUES ('13176', '销售学员', '45');
INSERT INTO `qs32_hotword` VALUES ('13197', '商务拓展专员', '16');
INSERT INTO `qs32_hotword` VALUES ('13205', '网站前台美工', '11');
INSERT INTO `qs32_hotword` VALUES ('13207', '网站美工设计', '17');
INSERT INTO `qs32_hotword` VALUES ('13218', '前台接待文员', '24');
INSERT INTO `qs32_hotword` VALUES ('13225', '售后服务主管', '31');
INSERT INTO `qs32_hotword` VALUES ('13234', '项目总工', '14');
INSERT INTO `qs32_hotword` VALUES ('13246', '产品研发经理', '15');
INSERT INTO `qs32_hotword` VALUES ('13249', '学生兼职', '29');
INSERT INTO `qs32_hotword` VALUES ('13250', '拓展主管', '55');
INSERT INTO `qs32_hotword` VALUES ('13266', '银行专员', '17');
INSERT INTO `qs32_hotword` VALUES ('13273', '审核员', '18');
INSERT INTO `qs32_hotword` VALUES ('13290', '策划人员', '33');
INSERT INTO `qs32_hotword` VALUES ('13293', '前期经理', '23');
INSERT INTO `qs32_hotword` VALUES ('13299', '客房主管', '38');
INSERT INTO `qs32_hotword` VALUES ('13312', '店面督导', '19');
INSERT INTO `qs32_hotword` VALUES ('13318', '服装买手', '18');
INSERT INTO `qs32_hotword` VALUES ('13319', '房地产会计', '15');
INSERT INTO `qs32_hotword` VALUES ('13340', '外贸主管', '39');
INSERT INTO `qs32_hotword` VALUES ('13347', '渠道区域经理', '19');
INSERT INTO `qs32_hotword` VALUES ('13349', '学术推广经理', '11');
INSERT INTO `qs32_hotword` VALUES ('13351', '客户管理', '18');
INSERT INTO `qs32_hotword` VALUES ('13353', '营销策划师', '25');
INSERT INTO `qs32_hotword` VALUES ('13356', '售楼员', '44');
INSERT INTO `qs32_hotword` VALUES ('13361', '商超主管', '22');
INSERT INTO `qs32_hotword` VALUES ('13374', '贷款销售经理', '27');
INSERT INTO `qs32_hotword` VALUES ('13383', '售后主管', '27');
INSERT INTO `qs32_hotword` VALUES ('13395', '研发员', '25');
INSERT INTO `qs32_hotword` VALUES ('13410', '小学数学老师', '22');
INSERT INTO `qs32_hotword` VALUES ('13429', '会展策划', '26');
INSERT INTO `qs32_hotword` VALUES ('13430', '大区域经理', '45');
INSERT INTO `qs32_hotword` VALUES ('13439', '制版师', '26');
INSERT INTO `qs32_hotword` VALUES ('13440', '营业部副经理', '10');
INSERT INTO `qs32_hotword` VALUES ('13441', '信息采集员', '13');
INSERT INTO `qs32_hotword` VALUES ('13457', '内勤助理', '12');
INSERT INTO `qs32_hotword` VALUES ('13470', '实习律师', '12');
INSERT INTO `qs32_hotword` VALUES ('13482', '早教课程顾问', '12');
INSERT INTO `qs32_hotword` VALUES ('13498', '兼职促销员', '12');
INSERT INTO `qs32_hotword` VALUES ('13505', '中药师', '24');
INSERT INTO `qs32_hotword` VALUES ('13509', '舞蹈教师', '12');
INSERT INTO `qs32_hotword` VALUES ('13525', '技术销售代表', '12');
INSERT INTO `qs32_hotword` VALUES ('13528', '小货车司机', '15');
INSERT INTO `qs32_hotword` VALUES ('13536', '汽车美容学徒', '14');
INSERT INTO `qs32_hotword` VALUES ('13547', '地区推广经理', '13');
INSERT INTO `qs32_hotword` VALUES ('13566', '幼儿园教师', '16');
INSERT INTO `qs32_hotword` VALUES ('13570', '直营店长', '29');
INSERT INTO `qs32_hotword` VALUES ('13599', '经营部经理', '48');
INSERT INTO `qs32_hotword` VALUES ('13601', '驻地业代', '20');
INSERT INTO `qs32_hotword` VALUES ('13604', '设备部经理', '15');
INSERT INTO `qs32_hotword` VALUES ('13608', '商超业务', '17');
INSERT INTO `qs32_hotword` VALUES ('13615', '营业所长', '235');
INSERT INTO `qs32_hotword` VALUES ('13619', '区域营销总监', '15');
INSERT INTO `qs32_hotword` VALUES ('13627', '工程绘图员', '10');
INSERT INTO `qs32_hotword` VALUES ('13652', '销售总经理', '34');
INSERT INTO `qs32_hotword` VALUES ('13657', '维保技师', '10');
INSERT INTO `qs32_hotword` VALUES ('13672', '行政后勤主管', '16');
INSERT INTO `qs32_hotword` VALUES ('13676', '生产线操作工', '12');
INSERT INTO `qs32_hotword` VALUES ('13691', '淘宝网店客服', '19');
INSERT INTO `qs32_hotword` VALUES ('13697', '网络部主管', '11');
INSERT INTO `qs32_hotword` VALUES ('13700', '战略规划经理', '10');
INSERT INTO `qs32_hotword` VALUES ('13710', '验证工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('13718', '理财师', '15');
INSERT INTO `qs32_hotword` VALUES ('13736', '预决算工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('13738', '测试部经理', '17');
INSERT INTO `qs32_hotword` VALUES ('13749', '分销经理', '24');
INSERT INTO `qs32_hotword` VALUES ('13761', '采矿工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('13767', '裁剪工', '11');
INSERT INTO `qs32_hotword` VALUES ('13777', '报建员', '38');
INSERT INTO `qs32_hotword` VALUES ('13786', '个贷专员', '10');
INSERT INTO `qs32_hotword` VALUES ('13797', '批发业务代表', '10');
INSERT INTO `qs32_hotword` VALUES ('13801', '区域业务主管', '17');
INSERT INTO `qs32_hotword` VALUES ('13807', '区域拓展主管', '10');
INSERT INTO `qs32_hotword` VALUES ('13815', '灯光师', '13');
INSERT INTO `qs32_hotword` VALUES ('13825', '市场开拓专员', '31');
INSERT INTO `qs32_hotword` VALUES ('13847', '区域主任', '19');
INSERT INTO `qs32_hotword` VALUES ('13851', '招生办主任', '17');
INSERT INTO `qs32_hotword` VALUES ('13855', '幼儿园厨师', '21');
INSERT INTO `qs32_hotword` VALUES ('13892', '外勤会计', '14');
INSERT INTO `qs32_hotword` VALUES ('13897', 'it助理', '12');
INSERT INTO `qs32_hotword` VALUES ('13900', '电话业务精英', '13');
INSERT INTO `qs32_hotword` VALUES ('13938', '接线员', '22');
INSERT INTO `qs32_hotword` VALUES ('13960', '发货员', '34');
INSERT INTO `qs32_hotword` VALUES ('14009', '挑战高薪', '17');
INSERT INTO `qs32_hotword` VALUES ('14014', '现货操盘手', '14');
INSERT INTO `qs32_hotword` VALUES ('14015', '电话邀约员', '23');
INSERT INTO `qs32_hotword` VALUES ('14033', '电话销售客服', '13');
INSERT INTO `qs32_hotword` VALUES ('14041', '电话业务', '47');
INSERT INTO `qs32_hotword` VALUES ('14132', '办事员', '11');
INSERT INTO `qs32_hotword` VALUES ('14157', '急招服务员', '11');
INSERT INTO `qs32_hotword` VALUES ('14177', '美发助理', '17');
INSERT INTO `qs32_hotword` VALUES ('14196', '会议服务员', '25');
INSERT INTO `qs32_hotword` VALUES ('14216', '审核专员', '14');
INSERT INTO `qs32_hotword` VALUES ('14243', '业务文秘', '15');
INSERT INTO `qs32_hotword` VALUES ('14273', '足疗师', '23');
INSERT INTO `qs32_hotword` VALUES ('14274', '高级美容师', '16');
INSERT INTO `qs32_hotword` VALUES ('14285', '营养咨询师', '24');
INSERT INTO `qs32_hotword` VALUES ('14298', '电话理财专员', '23');
INSERT INTO `qs32_hotword` VALUES ('14334', '急招销售代表', '11');
INSERT INTO `qs32_hotword` VALUES ('14365', '会议接待', '13');
INSERT INTO `qs32_hotword` VALUES ('14372', '电话咨询', '35');
INSERT INTO `qs32_hotword` VALUES ('14395', '消防中控', '11');
INSERT INTO `qs32_hotword` VALUES ('14401', '洗衣工', '10');
INSERT INTO `qs32_hotword` VALUES ('14424', '客户服务顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('14441', '美容学徒', '21');
INSERT INTO `qs32_hotword` VALUES ('14447', '全职英语教师', '13');
INSERT INTO `qs32_hotword` VALUES ('14519', '销售培训生', '20');
INSERT INTO `qs32_hotword` VALUES ('14540', '吧台主管', '10');
INSERT INTO `qs32_hotword` VALUES ('14548', '咨客', '27');
INSERT INTO `qs32_hotword` VALUES ('14551', '店面助理', '34');
INSERT INTO `qs32_hotword` VALUES ('14571', '酒店服务员', '29');
INSERT INTO `qs32_hotword` VALUES ('14668', '咖啡厅服务员', '13');
INSERT INTO `qs32_hotword` VALUES ('14679', '医师助理', '10');
INSERT INTO `qs32_hotword` VALUES ('14710', '二手房销售', '14');
INSERT INTO `qs32_hotword` VALUES ('14748', '热线客服', '11');
INSERT INTO `qs32_hotword` VALUES ('14749', '保险业务员', '39');
INSERT INTO `qs32_hotword` VALUES ('14752', 'SEO经理', '11');
INSERT INTO `qs32_hotword` VALUES ('14796', '淘宝运营经理', '18');
INSERT INTO `qs32_hotword` VALUES ('14857', '生产跟单员', '20');
INSERT INTO `qs32_hotword` VALUES ('14863', '泊车员', '12');
INSERT INTO `qs32_hotword` VALUES ('14880', '放射科医生', '19');
INSERT INTO `qs32_hotword` VALUES ('14981', '证券分析师', '33');
INSERT INTO `qs32_hotword` VALUES ('14995', '保险业务主管', '10');
INSERT INTO `qs32_hotword` VALUES ('15032', '电话营销精英', '18');
INSERT INTO `qs32_hotword` VALUES ('15037', '柜员', '11');
INSERT INTO `qs32_hotword` VALUES ('15057', '区域服务', '10');
INSERT INTO `qs32_hotword` VALUES ('15063', '网站工程师', '21');
INSERT INTO `qs32_hotword` VALUES ('15073', '服务主管', '26');
INSERT INTO `qs32_hotword` VALUES ('15074', '安保员', '32');
INSERT INTO `qs32_hotword` VALUES ('15079', '打荷', '30');
INSERT INTO `qs32_hotword` VALUES ('15090', '住院医生', '12');
INSERT INTO `qs32_hotword` VALUES ('15099', '放射科医师', '13');
INSERT INTO `qs32_hotword` VALUES ('15151', '收派员', '11');
INSERT INTO `qs32_hotword` VALUES ('15174', '前台领班', '22');
INSERT INTO `qs32_hotword` VALUES ('15240', '健身教练', '12');
INSERT INTO `qs32_hotword` VALUES ('15309', '信用卡推广员', '17');
INSERT INTO `qs32_hotword` VALUES ('15349', '培训总监', '46');
INSERT INTO `qs32_hotword` VALUES ('15424', '救生员', '25');
INSERT INTO `qs32_hotword` VALUES ('15425', '运营督导', '11');
INSERT INTO `qs32_hotword` VALUES ('15428', '选择大于努力', '14');
INSERT INTO `qs32_hotword` VALUES ('15439', '储备店经理', '16');
INSERT INTO `qs32_hotword` VALUES ('15443', '高级业务员', '13');
INSERT INTO `qs32_hotword` VALUES ('15507', '市场销售助理', '10');
INSERT INTO `qs32_hotword` VALUES ('15512', '帮厨', '24');
INSERT INTO `qs32_hotword` VALUES ('15526', '足疗技师', '18');
INSERT INTO `qs32_hotword` VALUES ('15553', '职业经理人', '56');
INSERT INTO `qs32_hotword` VALUES ('15589', '总监', '13');
INSERT INTO `qs32_hotword` VALUES ('15613', '直通车专员', '12');
INSERT INTO `qs32_hotword` VALUES ('15638', '淘宝文案策划', '12');
INSERT INTO `qs32_hotword` VALUES ('15646', '车险专员', '25');
INSERT INTO `qs32_hotword` VALUES ('15728', '专员', '716');
INSERT INTO `qs32_hotword` VALUES ('15790', '保险顾问', '36');
INSERT INTO `qs32_hotword` VALUES ('15873', '西餐服务员', '14');
INSERT INTO `qs32_hotword` VALUES ('15894', '网络策划', '15');
INSERT INTO `qs32_hotword` VALUES ('15957', '产品推广专员', '27');
INSERT INTO `qs32_hotword` VALUES ('16034', '工程维修员', '19');
INSERT INTO `qs32_hotword` VALUES ('16062', '足疗保健', '15');
INSERT INTO `qs32_hotword` VALUES ('16119', '淘宝销售', '12');
INSERT INTO `qs32_hotword` VALUES ('16133', '发型师', '23');
INSERT INTO `qs32_hotword` VALUES ('16146', '维修专员', '12');
INSERT INTO `qs32_hotword` VALUES ('16172', '法制催款', '10');
INSERT INTO `qs32_hotword` VALUES ('16206', '理疗师', '31');
INSERT INTO `qs32_hotword` VALUES ('16209', '领位', '11');
INSERT INTO `qs32_hotword` VALUES ('16229', '电话回访', '14');
INSERT INTO `qs32_hotword` VALUES ('16241', '领位员', '12');
INSERT INTO `qs32_hotword` VALUES ('16317', '实习主管', '11');
INSERT INTO `qs32_hotword` VALUES ('16338', '陈列员', '16');
INSERT INTO `qs32_hotword` VALUES ('16341', '房产销售员', '11');
INSERT INTO `qs32_hotword` VALUES ('16386', '妇科医生', '45');
INSERT INTO `qs32_hotword` VALUES ('16403', '内科医生', '53');
INSERT INTO `qs32_hotword` VALUES ('16441', '高级助理', '14');
INSERT INTO `qs32_hotword` VALUES ('16555', '网站美编', '12');
INSERT INTO `qs32_hotword` VALUES ('16579', '网页美工设计', '15');
INSERT INTO `qs32_hotword` VALUES ('16658', '售后部经理', '12');
INSERT INTO `qs32_hotword` VALUES ('16677', '兼职讲师', '12');
INSERT INTO `qs32_hotword` VALUES ('16686', '前台客服专员', '12');
INSERT INTO `qs32_hotword` VALUES ('16689', '餐厅收银员', '15');
INSERT INTO `qs32_hotword` VALUES ('16756', '卖场经理', '14');
INSERT INTO `qs32_hotword` VALUES ('16757', '电子商务销售', '10');
INSERT INTO `qs32_hotword` VALUES ('16767', '网络咨询主管', '10');
INSERT INTO `qs32_hotword` VALUES ('16789', '房地产业务员', '18');
INSERT INTO `qs32_hotword` VALUES ('16812', '商品助理', '26');
INSERT INTO `qs32_hotword` VALUES ('16936', '经理秘书', '16');
INSERT INTO `qs32_hotword` VALUES ('16953', '信控专员', '11');
INSERT INTO `qs32_hotword` VALUES ('16963', '接待专员', '19');
INSERT INTO `qs32_hotword` VALUES ('16967', '网站推广专员', '60');
INSERT INTO `qs32_hotword` VALUES ('16974', '公司副总经理', '16');
INSERT INTO `qs32_hotword` VALUES ('17186', '保险理赔', '20');
INSERT INTO `qs32_hotword` VALUES ('17190', '工艺设计', '11');
INSERT INTO `qs32_hotword` VALUES ('17199', '房产业务员', '18');
INSERT INTO `qs32_hotword` VALUES ('17213', '电话理财顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('17218', '理财分析师', '13');
INSERT INTO `qs32_hotword` VALUES ('17292', '后勤人员', '12');
INSERT INTO `qs32_hotword` VALUES ('17346', '营业部经理', '46');
INSERT INTO `qs32_hotword` VALUES ('17391', '电话销售助理', '17');
INSERT INTO `qs32_hotword` VALUES ('17403', '幼教老师', '14');
INSERT INTO `qs32_hotword` VALUES ('17408', '理财助理', '11');
INSERT INTO `qs32_hotword` VALUES ('17455', '电话咨询医生', '14');
INSERT INTO `qs32_hotword` VALUES ('17659', '辅助工', '13');
INSERT INTO `qs32_hotword` VALUES ('17675', '网络文案', '30');
INSERT INTO `qs32_hotword` VALUES ('17681', '网络咨询专员', '11');
INSERT INTO `qs32_hotword` VALUES ('17688', '售前客服', '14');
INSERT INTO `qs32_hotword` VALUES ('17757', '内审专员', '16');
INSERT INTO `qs32_hotword` VALUES ('17769', '工具管理员', '14');
INSERT INTO `qs32_hotword` VALUES ('17839', '摄影师助理', '10');
INSERT INTO `qs32_hotword` VALUES ('17858', '保险销售', '10');
INSERT INTO `qs32_hotword` VALUES ('17915', '品控经理', '24');
INSERT INTO `qs32_hotword` VALUES ('17954', '实习经理', '10');
INSERT INTO `qs32_hotword` VALUES ('17998', '护理部主任', '22');
INSERT INTO `qs32_hotword` VALUES ('18001', '保洁领班', '13');
INSERT INTO `qs32_hotword` VALUES ('18120', '工程专员', '18');
INSERT INTO `qs32_hotword` VALUES ('18175', '资深销售代表', '12');
INSERT INTO `qs32_hotword` VALUES ('18197', '数据员', '11');
INSERT INTO `qs32_hotword` VALUES ('18229', '皮肤科医生', '21');
INSERT INTO `qs32_hotword` VALUES ('18236', '合伙人', '10');
INSERT INTO `qs32_hotword` VALUES ('18244', '高级美容导师', '19');
INSERT INTO `qs32_hotword` VALUES ('18261', '市场调研经理', '10');
INSERT INTO `qs32_hotword` VALUES ('18347', '助理文秘', '19');
INSERT INTO `qs32_hotword` VALUES ('18389', '信息文员', '11');
INSERT INTO `qs32_hotword` VALUES ('18399', '优秀导购', '27');
INSERT INTO `qs32_hotword` VALUES ('18726', '收银主管', '42');
INSERT INTO `qs32_hotword` VALUES ('18761', '高级客服专员', '11');
INSERT INTO `qs32_hotword` VALUES ('18795', '测试经理', '41');
INSERT INTO `qs32_hotword` VALUES ('18800', '美容销售顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('18882', '普车工', '13');
INSERT INTO `qs32_hotword` VALUES ('18888', '美工设计师', '28');
INSERT INTO `qs32_hotword` VALUES ('18896', '高级理财顾问', '19');
INSERT INTO `qs32_hotword` VALUES ('18970', '口腔护士', '11');
INSERT INTO `qs32_hotword` VALUES ('18976', '车间普工', '12');
INSERT INTO `qs32_hotword` VALUES ('19043', '客户关系专员', '30');
INSERT INTO `qs32_hotword` VALUES ('19062', '机械维修工', '27');
INSERT INTO `qs32_hotword` VALUES ('19155', '话务专员', '10');
INSERT INTO `qs32_hotword` VALUES ('19194', '业务销售专员', '10');
INSERT INTO `qs32_hotword` VALUES ('19208', '麻醉医生', '20');
INSERT INTO `qs32_hotword` VALUES ('19271', '美容助理', '12');
INSERT INTO `qs32_hotword` VALUES ('19299', '后勤助理', '12');
INSERT INTO `qs32_hotword` VALUES ('19339', 'KA业务主管', '26');
INSERT INTO `qs32_hotword` VALUES ('19345', '餐饮传菜员', '31');
INSERT INTO `qs32_hotword` VALUES ('19348', '稽核会计', '12');
INSERT INTO `qs32_hotword` VALUES ('19379', '见习店长', '20');
INSERT INTO `qs32_hotword` VALUES ('19461', '钢琴教师', '20');
INSERT INTO `qs32_hotword` VALUES ('19473', '工程技工', '25');
INSERT INTO `qs32_hotword` VALUES ('19495', '麻醉医师', '26');
INSERT INTO `qs32_hotword` VALUES ('19534', '副总裁助理', '17');
INSERT INTO `qs32_hotword` VALUES ('19535', '工程部文员', '13');
INSERT INTO `qs32_hotword` VALUES ('19582', '退伍军人', '20');
INSERT INTO `qs32_hotword` VALUES ('19586', '税务专员', '23');
INSERT INTO `qs32_hotword` VALUES ('19626', '楼面经理', '45');
INSERT INTO `qs32_hotword` VALUES ('19674', '礼宾员', '49');
INSERT INTO `qs32_hotword` VALUES ('19884', '资深店长', '22');
INSERT INTO `qs32_hotword` VALUES ('19920', '巡检员', '15');
INSERT INTO `qs32_hotword` VALUES ('19960', '水工', '10');
INSERT INTO `qs32_hotword` VALUES ('20006', '网络运营总监', '14');
INSERT INTO `qs32_hotword` VALUES ('20039', '餐厅传菜员', '12');
INSERT INTO `qs32_hotword` VALUES ('20073', '产品培训讲师', '14');
INSERT INTO `qs32_hotword` VALUES ('20198', '车险顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('20200', '促销经理', '17');
INSERT INTO `qs32_hotword` VALUES ('20239', '网站客服专员', '17');
INSERT INTO `qs32_hotword` VALUES ('20354', '高级美容顾问', '57');
INSERT INTO `qs32_hotword` VALUES ('20373', '客房部主管', '13');
INSERT INTO `qs32_hotword` VALUES ('20535', '网络运营经理', '14');
INSERT INTO `qs32_hotword` VALUES ('20579', '教学督导', '10');
INSERT INTO `qs32_hotword` VALUES ('20641', '机修主管', '13');
INSERT INTO `qs32_hotword` VALUES ('20658', '内勤外勤', '10');
INSERT INTO `qs32_hotword` VALUES ('20746', '施工助理', '24');
INSERT INTO `qs32_hotword` VALUES ('20750', '电梯工', '24');
INSERT INTO `qs32_hotword` VALUES ('20761', '线切割工', '11');
INSERT INTO `qs32_hotword` VALUES ('20806', '电话行销专员', '15');
INSERT INTO `qs32_hotword` VALUES ('20857', '中餐服务员', '13');
INSERT INTO `qs32_hotword` VALUES ('20876', '经营主管', '10');
INSERT INTO `qs32_hotword` VALUES ('20939', '客户服务员', '18');
INSERT INTO `qs32_hotword` VALUES ('20961', '综合文员', '43');
INSERT INTO `qs32_hotword` VALUES ('20984', '外联人员', '13');
INSERT INTO `qs32_hotword` VALUES ('20996', '市场营销总监', '48');
INSERT INTO `qs32_hotword` VALUES ('21079', '招生咨询师', '19');
INSERT INTO `qs32_hotword` VALUES ('21147', '中医师', '42');
INSERT INTO `qs32_hotword` VALUES ('21160', '网络销售经理', '22');
INSERT INTO `qs32_hotword` VALUES ('21163', '资深导购', '11');
INSERT INTO `qs32_hotword` VALUES ('21226', '儿童摄影师', '16');
INSERT INTO `qs32_hotword` VALUES ('21239', '淘宝商城美工', '25');
INSERT INTO `qs32_hotword` VALUES ('21360', '销售接待', '11');
INSERT INTO `qs32_hotword` VALUES ('21530', '招生助理', '14');
INSERT INTO `qs32_hotword` VALUES ('21560', '厨房学徒', '11');
INSERT INTO `qs32_hotword` VALUES ('21609', '外链专员', '11');
INSERT INTO `qs32_hotword` VALUES ('21638', '高级管理人员', '17');
INSERT INTO `qs32_hotword` VALUES ('21744', '部门秘书', '14');
INSERT INTO `qs32_hotword` VALUES ('21761', '区域拓展专员', '27');
INSERT INTO `qs32_hotword` VALUES ('21792', '中医医生', '12');
INSERT INTO `qs32_hotword` VALUES ('21814', '麻醉师', '24');
INSERT INTO `qs32_hotword` VALUES ('21821', 'PA技工', '11');
INSERT INTO `qs32_hotword` VALUES ('21830', '宴会销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('21923', '医务科长', '16');
INSERT INTO `qs32_hotword` VALUES ('21957', '楼面部长', '17');
INSERT INTO `qs32_hotword` VALUES ('21971', '工艺设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('22075', '市场营销员', '43');
INSERT INTO `qs32_hotword` VALUES ('22078', '前厅服务员', '12');
INSERT INTO `qs32_hotword` VALUES ('22168', '门童', '10');
INSERT INTO `qs32_hotword` VALUES ('22213', '妇科医师', '14');
INSERT INTO `qs32_hotword` VALUES ('22256', '医生', '44');
INSERT INTO `qs32_hotword` VALUES ('22258', '住院医师', '17');
INSERT INTO `qs32_hotword` VALUES ('22307', '美容院店长', '21');
INSERT INTO `qs32_hotword` VALUES ('22442', '销售业务精英', '17');
INSERT INTO `qs32_hotword` VALUES ('22476', '工程项目管理', '13');
INSERT INTO `qs32_hotword` VALUES ('22567', '客服接待', '23');
INSERT INTO `qs32_hotword` VALUES ('22702', '保险业务经理', '11');
INSERT INTO `qs32_hotword` VALUES ('22720', '整形医生', '11');
INSERT INTO `qs32_hotword` VALUES ('22884', '美疗师', '13');
INSERT INTO `qs32_hotword` VALUES ('22893', '医疗文案', '13');
INSERT INTO `qs32_hotword` VALUES ('22960', '地产经纪人', '13');
INSERT INTO `qs32_hotword` VALUES ('23050', '市场管理员', '21');
INSERT INTO `qs32_hotword` VALUES ('23205', '加盟专员', '12');
INSERT INTO `qs32_hotword` VALUES ('23227', '信贷管理员', '13');
INSERT INTO `qs32_hotword` VALUES ('23306', '管理员', '12');
INSERT INTO `qs32_hotword` VALUES ('23362', '网站内容编辑', '16');
INSERT INTO `qs32_hotword` VALUES ('23569', '媒介销售', '11');
INSERT INTO `qs32_hotword` VALUES ('23589', '服务生', '18');
INSERT INTO `qs32_hotword` VALUES ('23751', '警卫', '10');
INSERT INTO `qs32_hotword` VALUES ('23766', '投资经纪人', '19');
INSERT INTO `qs32_hotword` VALUES ('23832', '电话接线员', '12');
INSERT INTO `qs32_hotword` VALUES ('23849', '招商员', '10');
INSERT INTO `qs32_hotword` VALUES ('23856', '维修顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('23887', '营销副总经理', '25');
INSERT INTO `qs32_hotword` VALUES ('23986', '商场促销员', '24');
INSERT INTO `qs32_hotword` VALUES ('24029', '网络营销顾问', '27');
INSERT INTO `qs32_hotword` VALUES ('24066', '理财经纪人', '11');
INSERT INTO `qs32_hotword` VALUES ('24126', '见习助理', '51');
INSERT INTO `qs32_hotword` VALUES ('24173', '作文老师', '19');
INSERT INTO `qs32_hotword` VALUES ('24229', '网络技术员', '11');
INSERT INTO `qs32_hotword` VALUES ('24250', '空调主管', '17');
INSERT INTO `qs32_hotword` VALUES ('24279', '社保专员', '10');
INSERT INTO `qs32_hotword` VALUES ('24293', '水吧吧员', '11');
INSERT INTO `qs32_hotword` VALUES ('24311', '寿险顾问', '16');
INSERT INTO `qs32_hotword` VALUES ('24362', '区域总经理', '19');
INSERT INTO `qs32_hotword` VALUES ('24368', '仓库员', '11');
INSERT INTO `qs32_hotword` VALUES ('24596', '资深投资顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('24638', '金融投资顾问', '12');
INSERT INTO `qs32_hotword` VALUES ('24672', '楼面主管', '33');
INSERT INTO `qs32_hotword` VALUES ('24727', '兼职业务经理', '16');
INSERT INTO `qs32_hotword` VALUES ('24734', '渠道代表', '18');
INSERT INTO `qs32_hotword` VALUES ('25010', '电子商务总监', '15');
INSERT INTO `qs32_hotword` VALUES ('25168', '招生代理', '23');
INSERT INTO `qs32_hotword` VALUES ('25187', '高级美导', '13');
INSERT INTO `qs32_hotword` VALUES ('25249', '系统维护', '13');
INSERT INTO `qs32_hotword` VALUES ('25253', '前台咨询师', '10');
INSERT INTO `qs32_hotword` VALUES ('25316', '市场促销员', '20');
INSERT INTO `qs32_hotword` VALUES ('25396', '折弯工', '13');
INSERT INTO `qs32_hotword` VALUES ('25505', '维修经理', '15');
INSERT INTO `qs32_hotword` VALUES ('25597', '餐厅见习助理', '10');
INSERT INTO `qs32_hotword` VALUES ('25628', '会计经理', '43');
INSERT INTO `qs32_hotword` VALUES ('25735', '安保', '12');
INSERT INTO `qs32_hotword` VALUES ('25785', 'BD经理', '13');
INSERT INTO `qs32_hotword` VALUES ('25815', '销售导购', '10');
INSERT INTO `qs32_hotword` VALUES ('25848', '切纸机长', '10');
INSERT INTO `qs32_hotword` VALUES ('25856', '检验技师', '11');
INSERT INTO `qs32_hotword` VALUES ('25970', '物流会计', '26');
INSERT INTO `qs32_hotword` VALUES ('26174', '按摩技师', '10');
INSERT INTO `qs32_hotword` VALUES ('26206', '网页设计人员', '13');
INSERT INTO `qs32_hotword` VALUES ('26304', '对外汉语教师', '10');
INSERT INTO `qs32_hotword` VALUES ('26307', '法律专员', '11');
INSERT INTO `qs32_hotword` VALUES ('26330', '签证专员', '13');
INSERT INTO `qs32_hotword` VALUES ('26464', 'ktv服务员', '10');
INSERT INTO `qs32_hotword` VALUES ('26482', '效果图绘图员', '26');
INSERT INTO `qs32_hotword` VALUES ('26495', '客房经理', '13');
INSERT INTO `qs32_hotword` VALUES ('26506', '高级策划经理', '17');
INSERT INTO `qs32_hotword` VALUES ('26529', '车辆调度', '23');
INSERT INTO `qs32_hotword` VALUES ('26540', '配饰设计师', '13');
INSERT INTO `qs32_hotword` VALUES ('26556', '留学顾问', '40');
INSERT INTO `qs32_hotword` VALUES ('26564', '研究助理', '11');
INSERT INTO `qs32_hotword` VALUES ('26591', '网络销售代表', '28');
INSERT INTO `qs32_hotword` VALUES ('26598', '商务精英', '31');
INSERT INTO `qs32_hotword` VALUES ('26612', '派单员', '16');
INSERT INTO `qs32_hotword` VALUES ('26615', '直营主管', '13');
INSERT INTO `qs32_hotword` VALUES ('26674', '文员内勤', '14');
INSERT INTO `qs32_hotword` VALUES ('26731', '酒店前台接待', '30');
INSERT INTO `qs32_hotword` VALUES ('26759', '出境计调', '10');
INSERT INTO `qs32_hotword` VALUES ('26787', '档案资料管理员', '77');
INSERT INTO `qs32_hotword` VALUES ('26789', '物业管理主管', '18');
INSERT INTO `qs32_hotword` VALUES ('26790', 'ERP项目经理', '14');
INSERT INTO `qs32_hotword` VALUES ('26792', '技术研发工程师', '122');
INSERT INTO `qs32_hotword` VALUES ('26795', 'JAVA开发工程师', '596');
INSERT INTO `qs32_hotword` VALUES ('26800', 'C++软件工程师', '122');
INSERT INTO `qs32_hotword` VALUES ('26805', '物业管理经理', '52');
INSERT INTO `qs32_hotword` VALUES ('26816', '企业策划人员', '76');
INSERT INTO `qs32_hotword` VALUES ('26822', '系统集成工程师', '240');
INSERT INTO `qs32_hotword` VALUES ('26823', '高级售前工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('26827', '大客户销售经理', '99');
INSERT INTO `qs32_hotword` VALUES ('26831', '现场咨询', '13');
INSERT INTO `qs32_hotword` VALUES ('26845', '技术支持工程师', '1194');
INSERT INTO `qs32_hotword` VALUES ('26854', '展台设计', '18');
INSERT INTO `qs32_hotword` VALUES ('26861', 'Java工程师', '343');
INSERT INTO `qs32_hotword` VALUES ('26862', '平面设计实习生', '30');
INSERT INTO `qs32_hotword` VALUES ('26874', '概预算工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('26883', '游戏客服', '40');
INSERT INTO `qs32_hotword` VALUES ('26884', '游戏美工', '23');
INSERT INTO `qs32_hotword` VALUES ('26886', '高级软件工程师', '398');
INSERT INTO `qs32_hotword` VALUES ('26895', '售后服务部经理', '24');
INSERT INTO `qs32_hotword` VALUES ('26898', '室内外装潢设计师', '213');
INSERT INTO `qs32_hotword` VALUES ('26899', '高级室内设计师', '25');
INSERT INTO `qs32_hotword` VALUES ('26900', 'JAVA软件工程师', '542');
INSERT INTO `qs32_hotword` VALUES ('26903', 'PHP开发工程师', '249');
INSERT INTO `qs32_hotword` VALUES ('26905', 'cad工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('26915', '软件测试工程师', '876');
INSERT INTO `qs32_hotword` VALUES ('26927', '售后服务工程师', '352');
INSERT INTO `qs32_hotword` VALUES ('26928', '电子商务顾问', '13');
INSERT INTO `qs32_hotword` VALUES ('26930', '文档工程师', '32');
INSERT INTO `qs32_hotword` VALUES ('26936', '注册资产评估师', '13');
INSERT INTO `qs32_hotword` VALUES ('26940', '网站开发工程师', '87');
INSERT INTO `qs32_hotword` VALUES ('26951', '配置管理工程师', '27');
INSERT INTO `qs32_hotword` VALUES ('26958', '零售专员', '13');
INSERT INTO `qs32_hotword` VALUES ('26962', '商品数据分析员', '10');
INSERT INTO `qs32_hotword` VALUES ('26964', '电子商务部经理', '28');
INSERT INTO `qs32_hotword` VALUES ('26974', 'AS3开发工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('26982', '后期剪辑', '14');
INSERT INTO `qs32_hotword` VALUES ('26989', '生产计划协调员', '26');
INSERT INTO `qs32_hotword` VALUES ('26992', '广告客户总监', '37');
INSERT INTO `qs32_hotword` VALUES ('27018', '网络营销推广专员', '11');
INSERT INTO `qs32_hotword` VALUES ('27019', 'SEO优化专员', '26');
INSERT INTO `qs32_hotword` VALUES ('27028', 'Delphi开发工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('27033', '外贸销售员', '17');
INSERT INTO `qs32_hotword` VALUES ('27034', '4S店总经理', '42');
INSERT INTO `qs32_hotword` VALUES ('27039', '行政副总', '32');
INSERT INTO `qs32_hotword` VALUES ('27061', '物业助理', '29');
INSERT INTO `qs32_hotword` VALUES ('27064', '店面设计', '13');
INSERT INTO `qs32_hotword` VALUES ('27067', '土建造价工程师', '113');
INSERT INTO `qs32_hotword` VALUES ('27070', '微博运营专员', '18');
INSERT INTO `qs32_hotword` VALUES ('27072', '嵌入式软件工程师', '195');
INSERT INTO `qs32_hotword` VALUES ('27077', '软件开发工程师', '540');
INSERT INTO `qs32_hotword` VALUES ('27091', '信息安全工程师', '27');
INSERT INTO `qs32_hotword` VALUES ('27095', '软件程序员', '14');
INSERT INTO `qs32_hotword` VALUES ('27118', '电子商务运营经理', '17');
INSERT INTO `qs32_hotword` VALUES ('27119', '.NET程序员', '159');
INSERT INTO `qs32_hotword` VALUES ('27121', '医学信息传递代表', '16');
INSERT INTO `qs32_hotword` VALUES ('27127', 'JAVA研发工程师', '47');
INSERT INTO `qs32_hotword` VALUES ('27129', '项目实施工程师', '143');
INSERT INTO `qs32_hotword` VALUES ('27152', '资深平面设计师', '261');
INSERT INTO `qs32_hotword` VALUES ('27158', 'Android工程师', '28');
INSERT INTO `qs32_hotword` VALUES ('27163', '风险控制专员', '24');
INSERT INTO `qs32_hotword` VALUES ('27177', '注册电气工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('27179', '软件工程师java', '29');
INSERT INTO `qs32_hotword` VALUES ('27184', '高级硬件工程师', '108');
INSERT INTO `qs32_hotword` VALUES ('27185', '人力资源部经理', '173');
INSERT INTO `qs32_hotword` VALUES ('27195', '网站推广主管', '10');
INSERT INTO `qs32_hotword` VALUES ('27201', '系统架构设计师', '54');
INSERT INTO `qs32_hotword` VALUES ('27202', '.net软件工程师', '225');
INSERT INTO `qs32_hotword` VALUES ('27205', '人力资源部副经理', '11');
INSERT INTO `qs32_hotword` VALUES ('27215', 'web测试工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('27238', '硬件研发工程师', '58');
INSERT INTO `qs32_hotword` VALUES ('27239', '机械研发工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('27249', '软件研发工程师', '77');
INSERT INTO `qs32_hotword` VALUES ('27251', '高级网页设计师', '82');
INSERT INTO `qs32_hotword` VALUES ('27253', '单片机开发', '16');
INSERT INTO `qs32_hotword` VALUES ('27254', '驻外分公司经理', '12');
INSERT INTO `qs32_hotword` VALUES ('27261', '质量控制工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('27282', '项目管理经理', '15');
INSERT INTO `qs32_hotword` VALUES ('27288', '房地产销售经理', '217');
INSERT INTO `qs32_hotword` VALUES ('27322', 'PCB设计工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('27333', '高级开发工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('27355', '.net开发工程师', '240');
INSERT INTO `qs32_hotword` VALUES ('27402', '销售助理实习生', '14');
INSERT INTO `qs32_hotword` VALUES ('27419', 'BD', '10');
INSERT INTO `qs32_hotword` VALUES ('27421', '费用会计', '45');
INSERT INTO `qs32_hotword` VALUES ('27424', '单片机开发工程师', '40');
INSERT INTO `qs32_hotword` VALUES ('27425', '硬件测试工程师', '98');
INSERT INTO `qs32_hotword` VALUES ('27426', '硬件开发工程师', '84');
INSERT INTO `qs32_hotword` VALUES ('27427', '手机测试工程师', '52');
INSERT INTO `qs32_hotword` VALUES ('27430', '媒体销售专员', '51');
INSERT INTO `qs32_hotword` VALUES ('27431', '广告客户主管', '20');
INSERT INTO `qs32_hotword` VALUES ('27446', '面料辅料采购', '26');
INSERT INTO `qs32_hotword` VALUES ('27453', '呼叫中心电话销售', '18');
INSERT INTO `qs32_hotword` VALUES ('27463', '技术销售工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('27479', '产品结构工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('27488', 'JAVA高级程序员', '37');
INSERT INTO `qs32_hotword` VALUES ('27506', '游戏系统策划', '22');
INSERT INTO `qs32_hotword` VALUES ('27523', '技术服务工程师', '235');
INSERT INTO `qs32_hotword` VALUES ('27524', 'C++高级工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('27530', '系统开发工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('27537', 'Flex开发工程师', '45');
INSERT INTO `qs32_hotword` VALUES ('27540', '品牌推广主管', '14');
INSERT INTO `qs32_hotword` VALUES ('27544', 'PHP软件工程师', '71');
INSERT INTO `qs32_hotword` VALUES ('27558', '客服顾问', '15');
INSERT INTO `qs32_hotword` VALUES ('27559', '二手车评估师', '30');
INSERT INTO `qs32_hotword` VALUES ('27570', '网站开发程序员', '10');
INSERT INTO `qs32_hotword` VALUES ('27575', '资深网页设计师', '36');
INSERT INTO `qs32_hotword` VALUES ('27578', 'C#软件工程师', '88');
INSERT INTO `qs32_hotword` VALUES ('27581', '生产总监', '79');
INSERT INTO `qs32_hotword` VALUES ('27583', '餐饮渠道经理', '13');
INSERT INTO `qs32_hotword` VALUES ('27591', 'Java程序员', '278');
INSERT INTO `qs32_hotword` VALUES ('27597', '国际贸易业务员', '33');
INSERT INTO `qs32_hotword` VALUES ('27602', '签证顾问', '13');
INSERT INTO `qs32_hotword` VALUES ('27606', '建筑结构工程师', '35');
INSERT INTO `qs32_hotword` VALUES ('27610', '弱电设计工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('27621', '高级电气工程师', '31');
INSERT INTO `qs32_hotword` VALUES ('27628', '.net项目经理', '24');
INSERT INTO `qs32_hotword` VALUES ('27629', '建筑规划设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('27631', '.net高级程序员', '21');
INSERT INTO `qs32_hotword` VALUES ('27635', '技术研发经理', '32');
INSERT INTO `qs32_hotword` VALUES ('27638', '高级研发工程师', '48');
INSERT INTO `qs32_hotword` VALUES ('27641', '.NET高级工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('27659', '行政助理兼前台', '48');
INSERT INTO `qs32_hotword` VALUES ('27664', '数据挖掘工程师', '29');
INSERT INTO `qs32_hotword` VALUES ('27671', '客户关系经理', '15');
INSERT INTO `qs32_hotword` VALUES ('27672', '房地产策划经理', '19');
INSERT INTO `qs32_hotword` VALUES ('27676', '房地产销售精英', '29');
INSERT INTO `qs32_hotword` VALUES ('27697', '制作经理', '27');
INSERT INTO `qs32_hotword` VALUES ('27714', '中文编辑', '12');
INSERT INTO `qs32_hotword` VALUES ('27724', '结构设计工程师', '95');
INSERT INTO `qs32_hotword` VALUES ('27736', 'C#软件开发工程师', '44');
INSERT INTO `qs32_hotword` VALUES ('27759', '产品测试工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('27760', '财务顾问', '40');
INSERT INTO `qs32_hotword` VALUES ('27768', '网络维护工程师', '42');
INSERT INTO `qs32_hotword` VALUES ('27769', '软件销售工程师', '82');
INSERT INTO `qs32_hotword` VALUES ('27772', '初级软件工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('27777', 'BI工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('27778', '会销讲师', '16');
INSERT INTO `qs32_hotword` VALUES ('27800', '信息编辑', '38');
INSERT INTO `qs32_hotword` VALUES ('27803', '高级会计', '20');
INSERT INTO `qs32_hotword` VALUES ('27817', '房产销售代表', '18');
INSERT INTO `qs32_hotword` VALUES ('27822', '软件开发主管', '25');
INSERT INTO `qs32_hotword` VALUES ('27829', 'C++开发工程师', '127');
INSERT INTO `qs32_hotword` VALUES ('27830', '游戏开发工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('27833', 'linux系统工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('27834', '客户执行AE', '12');
INSERT INTO `qs32_hotword` VALUES ('27835', '餐饮部主管', '11');
INSERT INTO `qs32_hotword` VALUES ('27836', '财务部收银员', '11');
INSERT INTO `qs32_hotword` VALUES ('27838', '安保主管', '17');
INSERT INTO `qs32_hotword` VALUES ('27843', '网站美工设计师', '22');
INSERT INTO `qs32_hotword` VALUES ('27847', '资深美术指导', '25');
INSERT INTO `qs32_hotword` VALUES ('27864', '实施项目经理', '20');
INSERT INTO `qs32_hotword` VALUES ('27866', '嵌入式系统工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('27867', '电子技术工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('27873', '涉外商标代理人', '10');
INSERT INTO `qs32_hotword` VALUES ('27885', 'Receptionist', '23');
INSERT INTO `qs32_hotword` VALUES ('27887', '设备维护员', '10');
INSERT INTO `qs32_hotword` VALUES ('27890', '服装陈列师', '49');
INSERT INTO `qs32_hotword` VALUES ('27909', '.net研发工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('27914', '高级专员', '18');
INSERT INTO `qs32_hotword` VALUES ('27940', '应用开发工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('27944', '系统维护工程师', '55');
INSERT INTO `qs32_hotword` VALUES ('27947', 'linux工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('27952', '软件UI工程师', '57');
INSERT INTO `qs32_hotword` VALUES ('27956', 'GIS开发工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('27965', '销售经理北京', '11');
INSERT INTO `qs32_hotword` VALUES ('27967', '物业总监', '27');
INSERT INTO `qs32_hotword` VALUES ('27984', '教务老师', '19');
INSERT INTO `qs32_hotword` VALUES ('28001', '质量管理经理', '37');
INSERT INTO `qs32_hotword` VALUES ('28002', '出纳cashier', '10');
INSERT INTO `qs32_hotword` VALUES ('28003', '人力资源部部长', '18');
INSERT INTO `qs32_hotword` VALUES ('28022', 'php研发工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('28024', 'VC++程序员', '14');
INSERT INTO `qs32_hotword` VALUES ('28035', '软件实施工程师', '154');
INSERT INTO `qs32_hotword` VALUES ('28066', '发行助理', '11');
INSERT INTO `qs32_hotword` VALUES ('28076', '售后技术工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('28082', '系统运维工程师', '41');
INSERT INTO `qs32_hotword` VALUES ('28083', 'Flash开发工程师', '41');
INSERT INTO `qs32_hotword` VALUES ('28106', '讲解员', '18');
INSERT INTO `qs32_hotword` VALUES ('28109', '执行经理', '21');
INSERT INTO `qs32_hotword` VALUES ('28113', '需求工程师', '30');
INSERT INTO `qs32_hotword` VALUES ('28122', 'OTC销售代表', '409');
INSERT INTO `qs32_hotword` VALUES ('28124', '软件销售专员', '10');
INSERT INTO `qs32_hotword` VALUES ('28126', '法务总监', '15');
INSERT INTO `qs32_hotword` VALUES ('28131', 'web开发工程师', '91');
INSERT INTO `qs32_hotword` VALUES ('28132', '研发助理', '55');
INSERT INTO `qs32_hotword` VALUES ('28134', '渠道销售工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('28140', '淘宝客服主管', '31');
INSERT INTO `qs32_hotword` VALUES ('28160', '高级php工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('28161', '室内装饰设计师', '18');
INSERT INTO `qs32_hotword` VALUES ('28170', '产品部经理', '19');
INSERT INTO `qs32_hotword` VALUES ('28179', '前台兼行政助理', '40');
INSERT INTO `qs32_hotword` VALUES ('28180', '德语翻译', '20');
INSERT INTO `qs32_hotword` VALUES ('28183', '保险理赔员', '23');
INSERT INTO `qs32_hotword` VALUES ('28186', '.net工程师', '75');
INSERT INTO `qs32_hotword` VALUES ('28187', '后期合成师', '10');
INSERT INTO `qs32_hotword` VALUES ('28191', '高级java程序员', '14');
INSERT INTO `qs32_hotword` VALUES ('28195', '游戏客服专员', '16');
INSERT INTO `qs32_hotword` VALUES ('28205', '采购跟单', '29');
INSERT INTO `qs32_hotword` VALUES ('28208', '学术推广专员', '14');
INSERT INTO `qs32_hotword` VALUES ('28215', 'FLASH动画设计师', '20');
INSERT INTO `qs32_hotword` VALUES ('28216', 'ERP实施顾问', '53');
INSERT INTO `qs32_hotword` VALUES ('28223', '机械设计工程师', '304');
INSERT INTO `qs32_hotword` VALUES ('28246', '机械工艺工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('28266', '医疗器械销售代表', '97');
INSERT INTO `qs32_hotword` VALUES ('28269', 'Secretary', '27');
INSERT INTO `qs32_hotword` VALUES ('28280', 'QC检验员', '18');
INSERT INTO `qs32_hotword` VALUES ('28285', '分销业务员', '10');
INSERT INTO `qs32_hotword` VALUES ('28296', '客户服务工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('28311', '业务销售人员', '12');
INSERT INTO `qs32_hotword` VALUES ('28320', '高级JAVA工程师', '87');
INSERT INTO `qs32_hotword` VALUES ('28348', '中级JAVA工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('28363', '项目秘书', '17');
INSERT INTO `qs32_hotword` VALUES ('28383', '现场应用工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('28384', '高级系统工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('28385', '电力电子工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('28396', '专业培训师', '37');
INSERT INTO `qs32_hotword` VALUES ('28403', '售前支持工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('28432', '地质工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('28436', '制程质量工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('28445', '项目成本控制专员', '11');
INSERT INTO `qs32_hotword` VALUES ('28460', '前期制造工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('28465', '性能测试工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('28466', '设备维护工程师', '35');
INSERT INTO `qs32_hotword` VALUES ('28473', '质量管理工程师', '38');
INSERT INTO `qs32_hotword` VALUES ('28482', '电子维修工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('28492', '健康安全环境专员', '12');
INSERT INTO `qs32_hotword` VALUES ('28520', '临床监查员CRA', '20');
INSERT INTO `qs32_hotword` VALUES ('28522', 'seo外链专员', '14');
INSERT INTO `qs32_hotword` VALUES ('28527', 'flash动画师', '15');
INSERT INTO `qs32_hotword` VALUES ('28533', '产品成本分析专员', '10');
INSERT INTO `qs32_hotword` VALUES ('28537', '市场部经理助理', '47');
INSERT INTO `qs32_hotword` VALUES ('28541', '高级机械工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('28543', '安装造价员', '29');
INSERT INTO `qs32_hotword` VALUES ('28554', '土建造价员', '34');
INSERT INTO `qs32_hotword` VALUES ('28556', '人力资源实习生', '39');
INSERT INTO `qs32_hotword` VALUES ('28592', '嵌入式软件开发', '49');
INSERT INTO `qs32_hotword` VALUES ('28595', '高级咨询师', '25');
INSERT INTO `qs32_hotword` VALUES ('28596', '前端开发工程师', '119');
INSERT INTO `qs32_hotword` VALUES ('28615', '高级网络工程师', '41');
INSERT INTO `qs32_hotword` VALUES ('28616', '给排水设计工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('28617', '暖通设计工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('28626', '技术研发主管', '16');
INSERT INTO `qs32_hotword` VALUES ('28638', '园林绿化工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('28648', '照明设计师', '18');
INSERT INTO `qs32_hotword` VALUES ('28667', '游戏运营专员', '14');
INSERT INTO `qs32_hotword` VALUES ('28677', 'flash设计师', '23');
INSERT INTO `qs32_hotword` VALUES ('28719', '房地产策划师', '32');
INSERT INTO `qs32_hotword` VALUES ('28770', 'iphone工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('28772', '质量技术员', '12');
INSERT INTO `qs32_hotword` VALUES ('28782', '数据处理工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('28788', '网页制作工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('28817', '媒介顾问', '11');
INSERT INTO `qs32_hotword` VALUES ('28833', '运营编辑', '29');
INSERT INTO `qs32_hotword` VALUES ('28835', '手机软件工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('28902', '业务发展经理', '74');
INSERT INTO `qs32_hotword` VALUES ('28908', '广告销售总监', '16');
INSERT INTO `qs32_hotword` VALUES ('28927', '软件销售经理', '51');
INSERT INTO `qs32_hotword` VALUES ('28952', '电子商务客服专员', '12');
INSERT INTO `qs32_hotword` VALUES ('28967', 'java高级工程师', '77');
INSERT INTO `qs32_hotword` VALUES ('28969', 'Accountant', '53');
INSERT INTO `qs32_hotword` VALUES ('28976', '网页设计工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('28989', 'Web前端工程师', '53');
INSERT INTO `qs32_hotword` VALUES ('28996', '电力工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('29011', '证券投资顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('29035', '污水处理工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('29060', '标准化工程师', '59');
INSERT INTO `qs32_hotword` VALUES ('29062', '软件开发实习生', '20');
INSERT INTO `qs32_hotword` VALUES ('29064', '杂志编辑', '28');
INSERT INTO `qs32_hotword` VALUES ('29101', '网页美工设计师', '15');
INSERT INTO `qs32_hotword` VALUES ('29108', '兼职项目经理', '22');
INSERT INTO `qs32_hotword` VALUES ('29117', 'QC主管', '35');
INSERT INTO `qs32_hotword` VALUES ('29124', '客服主管非技术', '174');
INSERT INTO `qs32_hotword` VALUES ('29132', '网站维护工程师', '41');
INSERT INTO `qs32_hotword` VALUES ('29146', '现场咨询师', '13');
INSERT INTO `qs32_hotword` VALUES ('29161', '呼叫中心服务人员', '13');
INSERT INTO `qs32_hotword` VALUES ('29169', '高级文员', '31');
INSERT INTO `qs32_hotword` VALUES ('29182', 'C#开发工程师', '37');
INSERT INTO `qs32_hotword` VALUES ('29185', '通信技术工程师', '63');
INSERT INTO `qs32_hotword` VALUES ('29216', '软件工程师.net', '36');
INSERT INTO `qs32_hotword` VALUES ('29217', '店面设计师', '21');
INSERT INTO `qs32_hotword` VALUES ('29221', '网络安全工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('29243', 'OTC销售主管', '79');
INSERT INTO `qs32_hotword` VALUES ('29255', '驻外销售代表', '23');
INSERT INTO `qs32_hotword` VALUES ('29257', 'FPGA工程师', '29');
INSERT INTO `qs32_hotword` VALUES ('29258', '综合会计', '20');
INSERT INTO `qs32_hotword` VALUES ('29260', '博客编辑', '13');
INSERT INTO `qs32_hotword` VALUES ('29275', '软件工程师C++', '14');
INSERT INTO `qs32_hotword` VALUES ('29284', 'Delphi程序员', '23');
INSERT INTO `qs32_hotword` VALUES ('29293', '市场调研主管', '36');
INSERT INTO `qs32_hotword` VALUES ('29294', '呼叫中心客服专员', '32');
INSERT INTO `qs32_hotword` VALUES ('29315', '现场服务工程师', '37');
INSERT INTO `qs32_hotword` VALUES ('29324', '网站编辑主管', '13');
INSERT INTO `qs32_hotword` VALUES ('29331', '商业地产策划师', '11');
INSERT INTO `qs32_hotword` VALUES ('29340', '销售部副经理', '13');
INSERT INTO `qs32_hotword` VALUES ('29360', '高级射频工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('29391', 'PHP高级工程师', '36');
INSERT INTO `qs32_hotword` VALUES ('29405', '广告销售主管', '10');
INSERT INTO `qs32_hotword` VALUES ('29416', '网站销售', '10');
INSERT INTO `qs32_hotword` VALUES ('29417', '深化设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('29425', '时尚买手', '20');
INSERT INTO `qs32_hotword` VALUES ('29427', '区域项目经理', '15');
INSERT INTO `qs32_hotword` VALUES ('29435', '广告经理', '11');
INSERT INTO `qs32_hotword` VALUES ('29464', '高级平面设计师', '48');
INSERT INTO `qs32_hotword` VALUES ('29465', '呼叫中心客服代表', '14');
INSERT INTO `qs32_hotword` VALUES ('29472', '招商人员', '20');
INSERT INTO `qs32_hotword` VALUES ('29483', '国内销售人员', '10');
INSERT INTO `qs32_hotword` VALUES ('29501', '主编', '24');
INSERT INTO `qs32_hotword` VALUES ('29502', '手机UI设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('29517', '系统软件工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('29526', 'QA经理', '15');
INSERT INTO `qs32_hotword` VALUES ('29537', '精品销售员', '17');
INSERT INTO `qs32_hotword` VALUES ('29565', '机械维修工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('29566', '临床监查员', '13');
INSERT INTO `qs32_hotword` VALUES ('29569', '设计实习生', '10');
INSERT INTO `qs32_hotword` VALUES ('29570', '施工图深化设计师', '19');
INSERT INTO `qs32_hotword` VALUES ('29582', '房地产销售代表', '21');
INSERT INTO `qs32_hotword` VALUES ('29590', '房地产销售人员', '48');
INSERT INTO `qs32_hotword` VALUES ('29606', 'Teller', '12');
INSERT INTO `qs32_hotword` VALUES ('29619', '嵌入式硬件工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('29622', '大客户销售代表', '18');
INSERT INTO `qs32_hotword` VALUES ('29624', 'Python开发工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('29625', 'Delphi软件工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('29629', '驱动开发工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('29631', '电源维修工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('29632', '硬件维修工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('29641', 'ASP.NET程序员', '92');
INSERT INTO `qs32_hotword` VALUES ('29643', '生产技术', '13');
INSERT INTO `qs32_hotword` VALUES ('29657', 'ETL工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('29669', '教育行业销售经理', '12');
INSERT INTO `qs32_hotword` VALUES ('29710', 'java架构师', '24');
INSERT INTO `qs32_hotword` VALUES ('29728', '客服经理非技术', '136');
INSERT INTO `qs32_hotword` VALUES ('29735', '自动化测试工程师', '28');
INSERT INTO `qs32_hotword` VALUES ('29738', '房地产销售主管', '110');
INSERT INTO `qs32_hotword` VALUES ('29743', '舞蹈演员', '21');
INSERT INTO `qs32_hotword` VALUES ('29762', '安全专员', '15');
INSERT INTO `qs32_hotword` VALUES ('29763', '淘宝商城运营主管', '15');
INSERT INTO `qs32_hotword` VALUES ('29768', '数学老师', '21');
INSERT INTO `qs32_hotword` VALUES ('29857', '药物分析项目主管', '16');
INSERT INTO `qs32_hotword` VALUES ('29873', '网络营销人员', '18');
INSERT INTO `qs32_hotword` VALUES ('29875', '网站营运主管', '37');
INSERT INTO `qs32_hotword` VALUES ('29886', '咨询师课程顾问', '19');
INSERT INTO `qs32_hotword` VALUES ('29919', '院长助理', '13');
INSERT INTO `qs32_hotword` VALUES ('29922', '检测工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('29923', '资深软件工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('29953', '化学老师', '10');
INSERT INTO `qs32_hotword` VALUES ('29955', 'iPhone开发工程师', '82');
INSERT INTO `qs32_hotword` VALUES ('29956', 'delphi工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('29986', '日语担当', '11');
INSERT INTO `qs32_hotword` VALUES ('29988', '高级研究员', '23');
INSERT INTO `qs32_hotword` VALUES ('29996', 'VC软件工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('30010', 'seo优化工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('30013', '成本管理员', '46');
INSERT INTO `qs32_hotword` VALUES ('30015', '临床研究员CRA', '10');
INSERT INTO `qs32_hotword` VALUES ('30031', '室内设计师助理', '12');
INSERT INTO `qs32_hotword` VALUES ('30032', '影视编导', '18');
INSERT INTO `qs32_hotword` VALUES ('30036', '总裁办副主任', '11');
INSERT INTO `qs32_hotword` VALUES ('30046', '服装工艺员', '10');
INSERT INTO `qs32_hotword` VALUES ('30107', '网页设计师美工', '15');
INSERT INTO `qs32_hotword` VALUES ('30108', 'VC++软件工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('30111', '保修专员', '15');
INSERT INTO `qs32_hotword` VALUES ('30113', '配件计划员', '11');
INSERT INTO `qs32_hotword` VALUES ('30115', '旅游产品销售', '12');
INSERT INTO `qs32_hotword` VALUES ('30134', '系统集成项目经理', '42');
INSERT INTO `qs32_hotword` VALUES ('30149', 'iOS开发工程师', '64');
INSERT INTO `qs32_hotword` VALUES ('30152', '集团人力资源总监', '10');
INSERT INTO `qs32_hotword` VALUES ('30154', '综合管理部经理', '36');
INSERT INTO `qs32_hotword` VALUES ('30155', 'OTC销售经理', '27');
INSERT INTO `qs32_hotword` VALUES ('30156', 'IT运维工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('30160', '彩妆培训师', '17');
INSERT INTO `qs32_hotword` VALUES ('30165', '课程销售顾问', '63');
INSERT INTO `qs32_hotword` VALUES ('30168', '初中物理教师', '18');
INSERT INTO `qs32_hotword` VALUES ('30169', '高中英语老师', '18');
INSERT INTO `qs32_hotword` VALUES ('30170', '初中数学老师', '18');
INSERT INTO `qs32_hotword` VALUES ('30220', '广告客户专员', '15');
INSERT INTO `qs32_hotword` VALUES ('30231', '排版员', '10');
INSERT INTO `qs32_hotword` VALUES ('30232', '市场部人员', '23');
INSERT INTO `qs32_hotword` VALUES ('30240', '产品设计工程师', '57');
INSERT INTO `qs32_hotword` VALUES ('30258', '钢结构设计工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('30268', '发展部经理', '13');
INSERT INTO `qs32_hotword` VALUES ('30272', '续保专员', '37');
INSERT INTO `qs32_hotword` VALUES ('30276', '物业客服主管', '23');
INSERT INTO `qs32_hotword` VALUES ('30284', '生产技术人员', '21');
INSERT INTO `qs32_hotword` VALUES ('30293', '安装预算工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('30298', '数据库开发工程师', '80');
INSERT INTO `qs32_hotword` VALUES ('30302', '技术支持专员', '38');
INSERT INTO `qs32_hotword` VALUES ('30303', 'Java项目经理', '61');
INSERT INTO `qs32_hotword` VALUES ('30304', '网络管理工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('30323', '财务统计员', '13');
INSERT INTO `qs32_hotword` VALUES ('30340', '初高中语文教师', '38');
INSERT INTO `qs32_hotword` VALUES ('30341', '初高中英语教师', '43');
INSERT INTO `qs32_hotword` VALUES ('30342', '初高中化学教师', '36');
INSERT INTO `qs32_hotword` VALUES ('30343', '初高中物理教师', '40');
INSERT INTO `qs32_hotword` VALUES ('30344', '初高中数学教师', '20');
INSERT INTO `qs32_hotword` VALUES ('30348', '区域财务经理', '30');
INSERT INTO `qs32_hotword` VALUES ('30375', '原画设计师', '18');
INSERT INTO `qs32_hotword` VALUES ('30384', '软件设计工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('30419', '绩效考核经理', '15');
INSERT INTO `qs32_hotword` VALUES ('30420', '市场研究专员', '13');
INSERT INTO `qs32_hotword` VALUES ('30430', '暖通空调工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('30431', '热能工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('30435', '论坛管理员', '53');
INSERT INTO `qs32_hotword` VALUES ('30455', '装配工艺工程师', '21');
INSERT INTO `qs32_hotword` VALUES ('30460', '质量体系工程师', '36');
INSERT INTO `qs32_hotword` VALUES ('30461', 'IE经理总部', '10');
INSERT INTO `qs32_hotword` VALUES ('30462', '焊接工艺工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('30482', 'java开发经理', '11');
INSERT INTO `qs32_hotword` VALUES ('30489', '计量工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('30524', '黄金投资顾问', '12');
INSERT INTO `qs32_hotword` VALUES ('30530', '公装设计师', '16');
INSERT INTO `qs32_hotword` VALUES ('30578', '行政助理兼出纳', '12');
INSERT INTO `qs32_hotword` VALUES ('30583', '见习置业顾问', '12');
INSERT INTO `qs32_hotword` VALUES ('30585', '策划执行', '26');
INSERT INTO `qs32_hotword` VALUES ('30606', '营销项目经理', '18');
INSERT INTO `qs32_hotword` VALUES ('30608', '资深室内设计师', '13');
INSERT INTO `qs32_hotword` VALUES ('30636', '客服组长', '16');
INSERT INTO `qs32_hotword` VALUES ('30637', '产品规划工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('30638', '桌面工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('30644', '汽车设计工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('30648', '货品主管', '45');
INSERT INTO `qs32_hotword` VALUES ('30682', '结算主管', '10');
INSERT INTO `qs32_hotword` VALUES ('30683', '国际贸易经理', '13');
INSERT INTO `qs32_hotword` VALUES ('30688', 'CEO助理', '10');
INSERT INTO `qs32_hotword` VALUES ('30689', '高级商务经理', '15');
INSERT INTO `qs32_hotword` VALUES ('30698', '产品研发工程师', '28');
INSERT INTO `qs32_hotword` VALUES ('30705', '中餐厅服务员', '15');
INSERT INTO `qs32_hotword` VALUES ('30719', '薪资福利主管', '30');
INSERT INTO `qs32_hotword` VALUES ('30724', '助听器验配师', '13');
INSERT INTO `qs32_hotword` VALUES ('30761', '查勘定损岗', '23');
INSERT INTO `qs32_hotword` VALUES ('30770', '助理医师', '12');
INSERT INTO `qs32_hotword` VALUES ('30777', 'SEO搜索引擎优化', '21');
INSERT INTO `qs32_hotword` VALUES ('30778', '高级UI设计师', '18');
INSERT INTO `qs32_hotword` VALUES ('30791', '网络推广seo', '11');
INSERT INTO `qs32_hotword` VALUES ('30812', '游戏原画师', '13');
INSERT INTO `qs32_hotword` VALUES ('30819', '销售代表实习生', '10');
INSERT INTO `qs32_hotword` VALUES ('30840', 'Flex工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('30844', '保安人员', '22');
INSERT INTO `qs32_hotword` VALUES ('30882', '自动化控制工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('30897', '中级软件工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('30908', '调色员', '10');
INSERT INTO `qs32_hotword` VALUES ('30923', '稽核员', '11');
INSERT INTO `qs32_hotword` VALUES ('30940', '游戏特效师', '13');
INSERT INTO `qs32_hotword` VALUES ('30941', '执行策划', '44');
INSERT INTO `qs32_hotword` VALUES ('30942', '游戏测试工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('30947', '商品部经理', '43');
INSERT INTO `qs32_hotword` VALUES ('30969', '管理实习生', '16');
INSERT INTO `qs32_hotword` VALUES ('30979', 'flash工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('30985', '客户开发经理', '45');
INSERT INTO `qs32_hotword` VALUES ('31001', '房地产销售总监', '16');
INSERT INTO `qs32_hotword` VALUES ('31009', 'PHP高级程序员', '43');
INSERT INTO `qs32_hotword` VALUES ('31025', '薪酬福利主管', '10');
INSERT INTO `qs32_hotword` VALUES ('31029', '会奖部专员', '14');
INSERT INTO `qs32_hotword` VALUES ('31031', '资深项目经理', '13');
INSERT INTO `qs32_hotword` VALUES ('31036', '政府行业销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('31055', '物流、采购专员', '16');
INSERT INTO `qs32_hotword` VALUES ('31056', '行政、人事管理', '16');
INSERT INTO `qs32_hotword` VALUES ('31062', '病理医生', '13');
INSERT INTO `qs32_hotword` VALUES ('31064', '医学检验技术员', '10');
INSERT INTO `qs32_hotword` VALUES ('31065', '采购副经理', '22');
INSERT INTO `qs32_hotword` VALUES ('31070', '电气技术工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('31080', '信息技术经理', '15');
INSERT INTO `qs32_hotword` VALUES ('31131', '内衣设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('31134', '仓储部经理', '15');
INSERT INTO `qs32_hotword` VALUES ('31140', 'Cashier', '53');
INSERT INTO `qs32_hotword` VALUES ('31144', '软件维护工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('31152', '市场企划', '18');
INSERT INTO `qs32_hotword` VALUES ('31157', '竞价推广SEM', '12');
INSERT INTO `qs32_hotword` VALUES ('31158', '医疗网站客服人员', '12');
INSERT INTO `qs32_hotword` VALUES ('31159', '射频工程师', '46');
INSERT INTO `qs32_hotword` VALUES ('31166', '网站优化SEO', '17');
INSERT INTO `qs32_hotword` VALUES ('31167', '网页策划', '12');
INSERT INTO `qs32_hotword` VALUES ('31168', '网站文字编辑文案', '10');
INSERT INTO `qs32_hotword` VALUES ('31169', '竞价推广主管', '12');
INSERT INTO `qs32_hotword` VALUES ('31243', 'VIP客户经理', '34');
INSERT INTO `qs32_hotword` VALUES ('31271', '电气自动化工程师', '28');
INSERT INTO `qs32_hotword` VALUES ('31286', '资深视觉设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('31287', '互联网产品经理', '25');
INSERT INTO `qs32_hotword` VALUES ('31291', '外贸业务跟单员', '14');
INSERT INTO `qs32_hotword` VALUES ('31334', 'ERP技术开发', '18');
INSERT INTO `qs32_hotword` VALUES ('31345', '高级测试工程师', '62');
INSERT INTO `qs32_hotword` VALUES ('31350', '俄语外贸业务员', '20');
INSERT INTO `qs32_hotword` VALUES ('31377', '嵌入式开发工程师', '45');
INSERT INTO `qs32_hotword` VALUES ('31415', '总机话务员', '12');
INSERT INTO `qs32_hotword` VALUES ('31443', '人事、行政专员', '14');
INSERT INTO `qs32_hotword` VALUES ('31456', '硬件设计工程师', '28');
INSERT INTO `qs32_hotword` VALUES ('31487', '产品策划专员', '11');
INSERT INTO `qs32_hotword` VALUES ('31491', '销售统计', '10');
INSERT INTO `qs32_hotword` VALUES ('31498', '400客服专员', '12');
INSERT INTO `qs32_hotword` VALUES ('31502', '弱电设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('31513', '核价员', '17');
INSERT INTO `qs32_hotword` VALUES ('31519', '呼叫中心热线坐席', '16');
INSERT INTO `qs32_hotword` VALUES ('31540', '宣传专员', '14');
INSERT INTO `qs32_hotword` VALUES ('31541', '回款专员', '20');
INSERT INTO `qs32_hotword` VALUES ('31545', '软件售前工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('31551', 'PHP项目经理', '17');
INSERT INTO `qs32_hotword` VALUES ('31562', '技术文档工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('31593', '网站测试工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('31601', 'DBA数据库管理员', '12');
INSERT INTO `qs32_hotword` VALUES ('31605', '客服专员非技术', '17');
INSERT INTO `qs32_hotword` VALUES ('31610', '电气设计工程师', '89');
INSERT INTO `qs32_hotword` VALUES ('31611', '软件测试实习生', '10');
INSERT INTO `qs32_hotword` VALUES ('31646', '售前经理', '10');
INSERT INTO `qs32_hotword` VALUES ('31682', 'JAVA系统架构师', '12');
INSERT INTO `qs32_hotword` VALUES ('31706', '软件设计师', '17');
INSERT INTO `qs32_hotword` VALUES ('31725', 'EHS经理', '20');
INSERT INTO `qs32_hotword` VALUES ('31732', '电气维修工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('31759', '游戏UI设计师', '39');
INSERT INTO `qs32_hotword` VALUES ('31809', '程序员应届生', '12');
INSERT INTO `qs32_hotword` VALUES ('31810', '宾客关系主任', '14');
INSERT INTO `qs32_hotword` VALUES ('31835', '软件实施项目经理', '11');
INSERT INTO `qs32_hotword` VALUES ('31852', '餐饮渠道销售代表', '20');
INSERT INTO `qs32_hotword` VALUES ('31853', '大区销售总监', '56');
INSERT INTO `qs32_hotword` VALUES ('31868', '市场工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('31881', '礼仪接待', '10');
INSERT INTO `qs32_hotword` VALUES ('31889', '创作总监', '20');
INSERT INTO `qs32_hotword` VALUES ('31892', '数据工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('31916', '三维设计', '16');
INSERT INTO `qs32_hotword` VALUES ('31919', '安装造价工程师', '120');
INSERT INTO `qs32_hotword` VALUES ('31940', 'web软件工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('31956', '机械结构工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('31984', '物流文员', '15');
INSERT INTO `qs32_hotword` VALUES ('31993', '产品线经理', '10');
INSERT INTO `qs32_hotword` VALUES ('31995', '高级结构工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('32005', '报价员', '12');
INSERT INTO `qs32_hotword` VALUES ('32008', '技术服务经理', '16');
INSERT INTO `qs32_hotword` VALUES ('32011', '高中历史教师', '12');
INSERT INTO `qs32_hotword` VALUES ('32051', '驻场工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('32053', '包装设计', '30');
INSERT INTO `qs32_hotword` VALUES ('32077', '售前技术工程师', '52');
INSERT INTO `qs32_hotword` VALUES ('32090', '葡萄牙语翻译', '12');
INSERT INTO `qs32_hotword` VALUES ('32094', '3D场景设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('32104', '手机开发工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('32105', '营运助理', '37');
INSERT INTO `qs32_hotword` VALUES ('32171', '珠宝设计师', '21');
INSERT INTO `qs32_hotword` VALUES ('32183', '幼儿英语老师', '12');
INSERT INTO `qs32_hotword` VALUES ('32200', 'UI设计工程师', '42');
INSERT INTO `qs32_hotword` VALUES ('32203', '工艺师', '41');
INSERT INTO `qs32_hotword` VALUES ('32208', '大区渠道总监', '18');
INSERT INTO `qs32_hotword` VALUES ('32211', 'iPhone软件工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('32220', '西班牙语翻译', '15');
INSERT INTO `qs32_hotword` VALUES ('32236', '装饰工程项目经理', '10');
INSERT INTO `qs32_hotword` VALUES ('32244', '美国留学咨询顾问', '13');
INSERT INTO `qs32_hotword` VALUES ('32245', '英国留学咨询顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('32275', '销售Sales', '10');
INSERT INTO `qs32_hotword` VALUES ('32282', '农业技术员', '10');
INSERT INTO `qs32_hotword` VALUES ('32332', '项目技术负责人', '14');
INSERT INTO `qs32_hotword` VALUES ('32339', '装饰设计工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('32343', '高级数据库工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('32370', 'hadoop研发工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('32397', '客户端程序员', '26');
INSERT INTO `qs32_hotword` VALUES ('32410', '电子商务运营专员', '13');
INSERT INTO `qs32_hotword` VALUES ('32437', '中级测试工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('32440', '项目管理工程师', '41');
INSERT INTO `qs32_hotword` VALUES ('32514', '人力资源部总监', '12');
INSERT INTO `qs32_hotword` VALUES ('32532', '投融资经理', '24');
INSERT INTO `qs32_hotword` VALUES ('32545', '关卡策划', '14');
INSERT INTO `qs32_hotword` VALUES ('32607', '造价工程师土建', '13');
INSERT INTO `qs32_hotword` VALUES ('32614', '机电技术员', '21');
INSERT INTO `qs32_hotword` VALUES ('32621', '业务分析师', '10');
INSERT INTO `qs32_hotword` VALUES ('32643', 'IT技术支持工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('32656', '3D角色设计师', '15');
INSERT INTO `qs32_hotword` VALUES ('32672', '界面设计师', '16');
INSERT INTO `qs32_hotword` VALUES ('32675', 'ERP实施工程师', '43');
INSERT INTO `qs32_hotword` VALUES ('32677', '系统设计师', '17');
INSERT INTO `qs32_hotword` VALUES ('32683', '系统测试工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('32714', '动画导演', '10');
INSERT INTO `qs32_hotword` VALUES ('32733', '培训生', '11');
INSERT INTO `qs32_hotword` VALUES ('32753', 'J2EE开发工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('32778', '园林景观设计师', '40');
INSERT INTO `qs32_hotword` VALUES ('32804', '建筑设计工程师', '27');
INSERT INTO `qs32_hotword` VALUES ('32811', '土建预算工程师', '43');
INSERT INTO `qs32_hotword` VALUES ('32816', 'J2ME开发工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('32830', '淘宝运营主管', '20');
INSERT INTO `qs32_hotword` VALUES ('32853', '省级门店总经理', '20');
INSERT INTO `qs32_hotword` VALUES ('32891', '重点客户主任', '11');
INSERT INTO `qs32_hotword` VALUES ('32896', '工程技术部经理', '18');
INSERT INTO `qs32_hotword` VALUES ('32913', 'DSP工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('32915', 'C#高级软件工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('32925', '技术支持主管', '41');
INSERT INTO `qs32_hotword` VALUES ('32948', '专柜彩妆师', '15');
INSERT INTO `qs32_hotword` VALUES ('32963', '市场营销部经理', '25');
INSERT INTO `qs32_hotword` VALUES ('32995', 'UI界面设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('33015', '客房领班', '24');
INSERT INTO `qs32_hotword` VALUES ('33026', '软件产品经理', '16');
INSERT INTO `qs32_hotword` VALUES ('33029', '系统分析工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('33032', '成本核算会计', '14');
INSERT INTO `qs32_hotword` VALUES ('33041', '产品研发', '12');
INSERT INTO `qs32_hotword` VALUES ('33043', '专业网络工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('33061', '测试开发工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('33086', '产品开发工程师', '54');
INSERT INTO `qs32_hotword` VALUES ('33096', '数据通信工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('33101', '无线通信工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('33222', '医学经理', '24');
INSERT INTO `qs32_hotword` VALUES ('33242', '项目质量工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('33244', 'Flash程序员', '42');
INSERT INTO `qs32_hotword` VALUES ('33277', '外呼专员', '12');
INSERT INTO `qs32_hotword` VALUES ('33297', '智能交通项目经理', '21');
INSERT INTO `qs32_hotword` VALUES ('33298', '市场销售主管', '10');
INSERT INTO `qs32_hotword` VALUES ('33306', '游戏数值策划', '32');
INSERT INTO `qs32_hotword` VALUES ('33379', '专职教师', '12');
INSERT INTO `qs32_hotword` VALUES ('33384', '规划设计总监', '17');
INSERT INTO `qs32_hotword` VALUES ('33389', '招投标主管', '15');
INSERT INTO `qs32_hotword` VALUES ('33399', '电气工艺工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('33411', '商品车质押监管员', '66');
INSERT INTO `qs32_hotword` VALUES ('33417', '淘宝主管', '11');
INSERT INTO `qs32_hotword` VALUES ('33433', 'JAVA开发人员', '30');
INSERT INTO `qs32_hotword` VALUES ('33472', '综合文秘', '16');
INSERT INTO `qs32_hotword` VALUES ('33478', '大区总监', '18');
INSERT INTO `qs32_hotword` VALUES ('33489', '助理会计', '18');
INSERT INTO `qs32_hotword` VALUES ('33508', '家具设计', '10');
INSERT INTO `qs32_hotword` VALUES ('33534', '前厅部经理', '30');
INSERT INTO `qs32_hotword` VALUES ('33551', '业务副总经理', '17');
INSERT INTO `qs32_hotword` VALUES ('33564', '室内装潢设计师', '17');
INSERT INTO `qs32_hotword` VALUES ('33569', '加盟主管', '19');
INSERT INTO `qs32_hotword` VALUES ('33575', 'Net软件工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('33590', '人资主管', '27');
INSERT INTO `qs32_hotword` VALUES ('33600', '行业大客户经理', '18');
INSERT INTO `qs32_hotword` VALUES ('33608', '网络高级工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('33660', '业务副总', '28');
INSERT INTO `qs32_hotword` VALUES ('33663', '行政接待', '12');
INSERT INTO `qs32_hotword` VALUES ('33700', '财务分析经理', '64');
INSERT INTO `qs32_hotword` VALUES ('33720', '市场拓展部经理', '23');
INSERT INTO `qs32_hotword` VALUES ('33721', '合同管理专员', '15');
INSERT INTO `qs32_hotword` VALUES ('33822', '针织设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('33869', '打版师', '26');
INSERT INTO `qs32_hotword` VALUES ('33965', '助理咨询师', '18');
INSERT INTO `qs32_hotword` VALUES ('33978', '高级业务跟单', '28');
INSERT INTO `qs32_hotword` VALUES ('33994', '人力资源高级经理', '11');
INSERT INTO `qs32_hotword` VALUES ('34036', '服装设计助理', '49');
INSERT INTO `qs32_hotword` VALUES ('34065', '软件工程师实习生', '12');
INSERT INTO `qs32_hotword` VALUES ('34102', '客户服务部经理', '19');
INSERT INTO `qs32_hotword` VALUES ('34145', '三维动画设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('34185', '辅导员', '24');
INSERT INTO `qs32_hotword` VALUES ('34191', '仓库经理', '35');
INSERT INTO `qs32_hotword` VALUES ('34202', '房地产销售助理', '10');
INSERT INTO `qs32_hotword` VALUES ('34203', '房地产置业顾问', '20');
INSERT INTO `qs32_hotword` VALUES ('34205', '卖场销售人员', '11');
INSERT INTO `qs32_hotword` VALUES ('34344', '施工经理', '10');
INSERT INTO `qs32_hotword` VALUES ('34354', '物业部经理', '23');
INSERT INTO `qs32_hotword` VALUES ('34361', '销售总经理助理', '22');
INSERT INTO `qs32_hotword` VALUES ('34379', '店铺营业员', '19');
INSERT INTO `qs32_hotword` VALUES ('34383', '经营经理', '11');
INSERT INTO `qs32_hotword` VALUES ('34395', '软件UI设计师', '19');
INSERT INTO `qs32_hotword` VALUES ('34475', 'php开发人员', '10');
INSERT INTO `qs32_hotword` VALUES ('34484', '游戏策划师', '15');
INSERT INTO `qs32_hotword` VALUES ('34564', '英文网站编辑', '16');
INSERT INTO `qs32_hotword` VALUES ('34609', '药品注册专员', '10');
INSERT INTO `qs32_hotword` VALUES ('34622', '营养顾问', '11');
INSERT INTO `qs32_hotword` VALUES ('34656', '电源研发工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('34657', '嵌入式研发工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('34671', 'WEB前端开发', '13');
INSERT INTO `qs32_hotword` VALUES ('34685', '事业部总监', '10');
INSERT INTO `qs32_hotword` VALUES ('34697', '分公司销售主管', '19');
INSERT INTO `qs32_hotword` VALUES ('34719', '产品需求分析师', '17');
INSERT INTO `qs32_hotword` VALUES ('34743', '餐厅店经理', '21');
INSERT INTO `qs32_hotword` VALUES ('34744', '化学分析工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('34769', '库房经理', '29');
INSERT INTO `qs32_hotword` VALUES ('34778', '商户维护专员', '12');
INSERT INTO `qs32_hotword` VALUES ('34903', '特效师', '16');
INSERT INTO `qs32_hotword` VALUES ('34908', '生产技术工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('34943', '评估助理', '14');
INSERT INTO `qs32_hotword` VALUES ('34953', 'linux开发工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('34964', '技术维护', '13');
INSERT INTO `qs32_hotword` VALUES ('34995', '普通车工', '10');
INSERT INTO `qs32_hotword` VALUES ('35013', '楼面管理', '10');
INSERT INTO `qs32_hotword` VALUES ('35015', '楼层管理', '20');
INSERT INTO `qs32_hotword` VALUES ('35050', '医疗设备销售代表', '11');
INSERT INTO `qs32_hotword` VALUES ('35097', '客诉专员', '13');
INSERT INTO `qs32_hotword` VALUES ('35102', '程序开发工程师', '28');
INSERT INTO `qs32_hotword` VALUES ('35121', '生产工艺工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('35156', '渠道业务代表', '18');
INSERT INTO `qs32_hotword` VALUES ('35162', '市场分析员', '11');
INSERT INTO `qs32_hotword` VALUES ('35180', '模具设计工程师', '37');
INSERT INTO `qs32_hotword` VALUES ('35241', '高级工艺工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('35263', '区域营销经理', '25');
INSERT INTO `qs32_hotword` VALUES ('35270', '服务器管理员', '10');
INSERT INTO `qs32_hotword` VALUES ('35276', '终端培训讲师', '15');
INSERT INTO `qs32_hotword` VALUES ('35287', '大学生储备干部', '12');
INSERT INTO `qs32_hotword` VALUES ('35306', '店铺经理', '12');
INSERT INTO `qs32_hotword` VALUES ('35331', '技术研发总监', '17');
INSERT INTO `qs32_hotword` VALUES ('35360', 'Asp.net工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('35362', '网站架构设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('35370', '供应商管理', '13');
INSERT INTO `qs32_hotword` VALUES ('35396', '网络运营主管', '15');
INSERT INTO `qs32_hotword` VALUES ('35415', 'J2EE高级工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('35424', '餐厅副经理', '18');
INSERT INTO `qs32_hotword` VALUES ('35458', '医疗器械技术支持', '10');
INSERT INTO `qs32_hotword` VALUES ('35476', '合约部经理', '17');
INSERT INTO `qs32_hotword` VALUES ('35489', '资深UI设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('35504', '资产管理员', '16');
INSERT INTO `qs32_hotword` VALUES ('35523', '现场主管', '13');
INSERT INTO `qs32_hotword` VALUES ('35541', '加工中心操作工', '15');
INSERT INTO `qs32_hotword` VALUES ('35548', '三维网游模型师', '12');
INSERT INTO `qs32_hotword` VALUES ('35651', '网络运营专员', '24');
INSERT INTO `qs32_hotword` VALUES ('35657', '工艺设计工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('35662', '游戏原画设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('35761', '技术分析师', '11');
INSERT INTO `qs32_hotword` VALUES ('35813', '外联经理', '26');
INSERT INTO `qs32_hotword` VALUES ('35816', '楼层经理', '27');
INSERT INTO `qs32_hotword` VALUES ('35817', '店总经理', '22');
INSERT INTO `qs32_hotword` VALUES ('35853', '直销经理', '20');
INSERT INTO `qs32_hotword` VALUES ('35875', '初级测试工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('35898', '运作专员', '10');
INSERT INTO `qs32_hotword` VALUES ('35990', 'CNC技术员', '10');
INSERT INTO `qs32_hotword` VALUES ('36025', '质量检查员', '10');
INSERT INTO `qs32_hotword` VALUES ('36031', '多媒体设计', '11');
INSERT INTO `qs32_hotword` VALUES ('36047', '细胞培养技术员', '22');
INSERT INTO `qs32_hotword` VALUES ('36054', 'GIS数据工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('36077', '区域销售工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('36082', '外贸单证', '13');
INSERT INTO `qs32_hotword` VALUES ('36107', '自动控制工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('36128', '楼层领班', '13');
INSERT INTO `qs32_hotword` VALUES ('36135', '面料采购员', '13');
INSERT INTO `qs32_hotword` VALUES ('36154', '装饰项目经理', '15');
INSERT INTO `qs32_hotword` VALUES ('36184', '助理室内设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('36197', '日语营业担当', '10');
INSERT INTO `qs32_hotword` VALUES ('36203', '服装工艺师', '15');
INSERT INTO `qs32_hotword` VALUES ('36205', 'MERCHANDISER', '16');
INSERT INTO `qs32_hotword` VALUES ('36267', '财务部实习生', '38');
INSERT INTO `qs32_hotword` VALUES ('36269', '工程文员', '25');
INSERT INTO `qs32_hotword` VALUES ('36311', '陈列助理', '18');
INSERT INTO `qs32_hotword` VALUES ('36373', '硬件维护工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('36420', '高级销售工程师', '92');
INSERT INTO `qs32_hotword` VALUES ('36471', '品检', '10');
INSERT INTO `qs32_hotword` VALUES ('36475', '海外客服', '17');
INSERT INTO `qs32_hotword` VALUES ('36507', '有机合成研究员', '19');
INSERT INTO `qs32_hotword` VALUES ('36517', '注册造价工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('36548', '车床工', '12');
INSERT INTO `qs32_hotword` VALUES ('36568', '平面设计-兼职', '24');
INSERT INTO `qs32_hotword` VALUES ('36578', '市场部副经理', '21');
INSERT INTO `qs32_hotword` VALUES ('36583', '面料QC', '11');
INSERT INTO `qs32_hotword` VALUES ('36602', '淘宝商城店长', '23');
INSERT INTO `qs32_hotword` VALUES ('36661', '销售管理培训生', '14');
INSERT INTO `qs32_hotword` VALUES ('36664', '高级区域销售经理', '23');
INSERT INTO `qs32_hotword` VALUES ('36665', '设备维修技术员', '10');
INSERT INTO `qs32_hotword` VALUES ('36676', '配套工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('36677', '电子设计工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('36682', '安装电工', '10');
INSERT INTO `qs32_hotword` VALUES ('36726', '教务部主管', '10');
INSERT INTO `qs32_hotword` VALUES ('36728', '土建监理工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('36772', '铝轧制销售工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('36796', '铣床工', '12');
INSERT INTO `qs32_hotword` VALUES ('36852', '供应商质量工程师', '37');
INSERT INTO `qs32_hotword` VALUES ('36871', '外贸采购员', '12');
INSERT INTO `qs32_hotword` VALUES ('36893', '财务审计', '20');
INSERT INTO `qs32_hotword` VALUES ('36916', '现场品控', '30');
INSERT INTO `qs32_hotword` VALUES ('36926', '游戏主美', '35');
INSERT INTO `qs32_hotword` VALUES ('36928', 'AS3.0程序员', '24');
INSERT INTO `qs32_hotword` VALUES ('36934', '刀具销售工程师', '36');
INSERT INTO `qs32_hotword` VALUES ('36945', 'FPGA开发工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('36993', '电子研发工程师', '26');
INSERT INTO `qs32_hotword` VALUES ('36999', '机电造价工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('37004', '物业维修人员', '36');
INSERT INTO `qs32_hotword` VALUES ('37061', '商业空间设计师', '15');
INSERT INTO `qs32_hotword` VALUES ('37109', '营销策划部经理', '33');
INSERT INTO `qs32_hotword` VALUES ('37128', '景观方案设计师', '17');
INSERT INTO `qs32_hotword` VALUES ('37129', '景观施工图设计师', '21');
INSERT INTO `qs32_hotword` VALUES ('37192', '电机工程师', '37');
INSERT INTO `qs32_hotword` VALUES ('37193', '水泵工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('37194', '塑料模具工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('37195', '水泵技术员', '25');
INSERT INTO `qs32_hotword` VALUES ('37196', '市场推广主任', '41');
INSERT INTO `qs32_hotword` VALUES ('37197', '银行保安', '24');
INSERT INTO `qs32_hotword` VALUES ('37218', '工程预决算员', '15');
INSERT INTO `qs32_hotword` VALUES ('37226', '外勤业务', '10');
INSERT INTO `qs32_hotword` VALUES ('37228', '船务人员', '12');
INSERT INTO `qs32_hotword` VALUES ('37229', '管道工', '13');
INSERT INTO `qs32_hotword` VALUES ('37238', '销售代表上海', '10');
INSERT INTO `qs32_hotword` VALUES ('37258', '渠道开发', '11');
INSERT INTO `qs32_hotword` VALUES ('37290', '电子商务推广专员', '10');
INSERT INTO `qs32_hotword` VALUES ('37302', '软件开发项目经理', '26');
INSERT INTO `qs32_hotword` VALUES ('37484', '加工中心操作员', '12');
INSERT INTO `qs32_hotword` VALUES ('37510', 'KA业务员', '23');
INSERT INTO `qs32_hotword` VALUES ('37530', '业务跟单助理', '61');
INSERT INTO `qs32_hotword` VALUES ('37598', '平面设计师助理', '11');
INSERT INTO `qs32_hotword` VALUES ('37610', '物业工程主管', '25');
INSERT INTO `qs32_hotword` VALUES ('37625', '产品销售工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('37640', '成本总监', '12');
INSERT INTO `qs32_hotword` VALUES ('37651', '资深课程顾问', '31');
INSERT INTO `qs32_hotword` VALUES ('37656', '互联网销售代表', '11');
INSERT INTO `qs32_hotword` VALUES ('37668', '服装设计师助理', '18');
INSERT INTO `qs32_hotword` VALUES ('37672', '营销工程师', '44');
INSERT INTO `qs32_hotword` VALUES ('37691', '总务专员', '12');
INSERT INTO `qs32_hotword` VALUES ('37739', '采购跟单员', '18');
INSERT INTO `qs32_hotword` VALUES ('37740', '物业公司总经理', '48');
INSERT INTO `qs32_hotword` VALUES ('37775', '创意设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('37790', '薪资福利专员', '27');
INSERT INTO `qs32_hotword` VALUES ('37797', '园林景观工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('37818', '非处方药医院代表', '15');
INSERT INTO `qs32_hotword` VALUES ('37865', '手机维修工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('37894', '商务主任', '16');
INSERT INTO `qs32_hotword` VALUES ('37908', '礼品销售员', '10');
INSERT INTO `qs32_hotword` VALUES ('37934', 'SQE', '28');
INSERT INTO `qs32_hotword` VALUES ('37989', '集团副总裁', '10');
INSERT INTO `qs32_hotword` VALUES ('38035', '机械绘图员', '35');
INSERT INTO `qs32_hotword` VALUES ('38038', '品保主管', '14');
INSERT INTO `qs32_hotword` VALUES ('38039', '助理项目经理', '11');
INSERT INTO `qs32_hotword` VALUES ('38089', '房地产销售顾问', '14');
INSERT INTO `qs32_hotword` VALUES ('38104', '财务负责人', '12');
INSERT INTO `qs32_hotword` VALUES ('38128', 'Linux软件工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('38139', '助理客户经理', '27');
INSERT INTO `qs32_hotword` VALUES ('38140', 'COBOL软件工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('38197', '专用车机械设计师', '25');
INSERT INTO `qs32_hotword` VALUES ('38231', '材料研发工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('38271', '电气销售工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('38299', '美工编辑', '14');
INSERT INTO `qs32_hotword` VALUES ('38337', '雅思教师', '25');
INSERT INTO `qs32_hotword` VALUES ('38365', 'CEO秘书', '11');
INSERT INTO `qs32_hotword` VALUES ('38373', '面料业务员', '10');
INSERT INTO `qs32_hotword` VALUES ('38387', '综合办公室主任', '38');
INSERT INTO `qs32_hotword` VALUES ('38418', '市场开发部经理', '18');
INSERT INTO `qs32_hotword` VALUES ('38419', '资深面料开发', '24');
INSERT INTO `qs32_hotword` VALUES ('38420', '业务专员工业通讯', '24');
INSERT INTO `qs32_hotword` VALUES ('38421', '环保工程师助理', '25');
INSERT INTO `qs32_hotword` VALUES ('38422', '产品经理预付卡', '24');
INSERT INTO `qs32_hotword` VALUES ('38472', '营销企划', '13');
INSERT INTO `qs32_hotword` VALUES ('38474', '初中化学教师', '17');
INSERT INTO `qs32_hotword` VALUES ('38511', '投资分析师', '14');
INSERT INTO `qs32_hotword` VALUES ('38528', '订单管理员', '12');
INSERT INTO `qs32_hotword` VALUES ('38530', '应收账款会计', '11');
INSERT INTO `qs32_hotword` VALUES ('38533', '技术部助理', '10');
INSERT INTO `qs32_hotword` VALUES ('38539', '2012届应届生', '14');
INSERT INTO `qs32_hotword` VALUES ('38540', '计算机工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('38563', '销售技术工程师', '23');
INSERT INTO `qs32_hotword` VALUES ('38612', '注塑工艺员', '13');
INSERT INTO `qs32_hotword` VALUES ('38622', '电子技术员', '29');
INSERT INTO `qs32_hotword` VALUES ('38632', '开发人员', '10');
INSERT INTO `qs32_hotword` VALUES ('38638', '游戏美术设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('38700', '奢侈品导购', '14');
INSERT INTO `qs32_hotword` VALUES ('38719', '资料开发工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('38736', '医药招商专员', '11');
INSERT INTO `qs32_hotword` VALUES ('38742', '建筑方案设计师', '14');
INSERT INTO `qs32_hotword` VALUES ('38767', '公司前台', '16');
INSERT INTO `qs32_hotword` VALUES ('38804', '投资移民咨询顾问', '16');
INSERT INTO `qs32_hotword` VALUES ('38833', '变压器设计工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('38854', '设备管理工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('38940', '区域客户经理', '23');
INSERT INTO `qs32_hotword` VALUES ('38968', '装饰装修工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('38979', '空运销售', '16');
INSERT INTO `qs32_hotword` VALUES ('39060', 'Accountant会计', '18');
INSERT INTO `qs32_hotword` VALUES ('39070', '分公司副总经理', '31');
INSERT INTO `qs32_hotword` VALUES ('39091', '前端设计师', '18');
INSERT INTO `qs32_hotword` VALUES ('39122', '软件测试主管', '38');
INSERT INTO `qs32_hotword` VALUES ('39126', '业务跟单经理', '12');
INSERT INTO `qs32_hotword` VALUES ('39161', '英文助理', '10');
INSERT INTO `qs32_hotword` VALUES ('39186', '汽车4S店总经理', '12');
INSERT INTO `qs32_hotword` VALUES ('39201', '对日软件工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('39293', '设备维修工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('39300', '质量检验员QC', '10');
INSERT INTO `qs32_hotword` VALUES ('39313', '销售员SALES', '27');
INSERT INTO `qs32_hotword` VALUES ('39366', '高级美术指导', '22');
INSERT INTO `qs32_hotword` VALUES ('39376', '系统实施工程师', '24');
INSERT INTO `qs32_hotword` VALUES ('39430', '行政人事部经理', '36');
INSERT INTO `qs32_hotword` VALUES ('39462', '生产部经理助理', '12');
INSERT INTO `qs32_hotword` VALUES ('39476', '董事助理', '25');
INSERT INTO `qs32_hotword` VALUES ('39478', '网页美工美编', '25');
INSERT INTO `qs32_hotword` VALUES ('39479', 'SP平台运营经理', '24');
INSERT INTO `qs32_hotword` VALUES ('39480', '切配中工', '24');
INSERT INTO `qs32_hotword` VALUES ('39513', '开单员', '29');
INSERT INTO `qs32_hotword` VALUES ('39519', '化学工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('39665', '工程维修人员', '17');
INSERT INTO `qs32_hotword` VALUES ('39684', '工程部副经理', '51');
INSERT INTO `qs32_hotword` VALUES ('39748', '商标流程管理员', '24');
INSERT INTO `qs32_hotword` VALUES ('39765', '版房主管', '11');
INSERT INTO `qs32_hotword` VALUES ('39836', '涂装工艺工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('39842', '行政文员兼前台', '10');
INSERT INTO `qs32_hotword` VALUES ('39852', 'NET高级程序员', '10');
INSERT INTO `qs32_hotword` VALUES ('39904', '注塑工艺工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('39932', '工艺主管', '18');
INSERT INTO `qs32_hotword` VALUES ('39947', '体系专员', '19');
INSERT INTO `qs32_hotword` VALUES ('40025', '接送货员', '12');
INSERT INTO `qs32_hotword` VALUES ('40046', '初高中英语老师', '14');
INSERT INTO `qs32_hotword` VALUES ('40176', '振动测量专员', '24');
INSERT INTO `qs32_hotword` VALUES ('40185', '市场主任', '24');
INSERT INTO `qs32_hotword` VALUES ('40186', '项目销售主管', '12');
INSERT INTO `qs32_hotword` VALUES ('40203', '高级销售专员', '10');
INSERT INTO `qs32_hotword` VALUES ('40255', '品保工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('40256', '美容化妆顾问', '24');
INSERT INTO `qs32_hotword` VALUES ('40285', '服装跟单QC', '10');
INSERT INTO `qs32_hotword` VALUES ('40374', '市场客服', '12');
INSERT INTO `qs32_hotword` VALUES ('40489', '加盟督导', '14');
INSERT INTO `qs32_hotword` VALUES ('40498', 'B2B行业营销总监', '21');
INSERT INTO `qs32_hotword` VALUES ('40539', '分销代表', '14');
INSERT INTO `qs32_hotword` VALUES ('40549', '生产车间主任', '15');
INSERT INTO `qs32_hotword` VALUES ('40561', '记者及区域代理', '12');
INSERT INTO `qs32_hotword` VALUES ('40586', '初高中数学老师', '16');
INSERT INTO `qs32_hotword` VALUES ('40595', '门店导购', '10');
INSERT INTO `qs32_hotword` VALUES ('40651', '开发报建专员', '12');
INSERT INTO `qs32_hotword` VALUES ('40688', '试验工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('40747', '质量管理部经理', '14');
INSERT INTO `qs32_hotword` VALUES ('40756', '店铺销售员', '10');
INSERT INTO `qs32_hotword` VALUES ('40769', '高级建筑设计师', '11');
INSERT INTO `qs32_hotword` VALUES ('40795', '工业设计工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('40814', '产品渠道经理', '52');
INSERT INTO `qs32_hotword` VALUES ('40815', '网店销售', '56');
INSERT INTO `qs32_hotword` VALUES ('40816', '卖场营业员', '68');
INSERT INTO `qs32_hotword` VALUES ('40817', '区域客服经理', '54');
INSERT INTO `qs32_hotword` VALUES ('40818', '商场推广助理', '48');
INSERT INTO `qs32_hotword` VALUES ('40837', '高级电子工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('40854', '光学设计工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('40881', '技术维护工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('40893', 'JAVA测试工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('40898', '销售工程师电制冷', '10');
INSERT INTO `qs32_hotword` VALUES ('40931', '服务器工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('40939', '网站优化工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('40960', '镀膜工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('40971', '安规工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('41022', 'LED销售工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('41088', '销售工程师自动化', '12');
INSERT INTO `qs32_hotword` VALUES ('41089', '销售工程师电力', '14');
INSERT INTO `qs32_hotword` VALUES ('41096', '国际业务员', '25');
INSERT INTO `qs32_hotword` VALUES ('41097', '店铺销售人员', '12');
INSERT INTO `qs32_hotword` VALUES ('41105', '日语业务员', '10');
INSERT INTO `qs32_hotword` VALUES ('41109', '产品工艺工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('41110', '机构工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('41135', '国际贸易部经理', '12');
INSERT INTO `qs32_hotword` VALUES ('41175', '资深视觉陈列', '25');
INSERT INTO `qs32_hotword` VALUES ('41177', '质量检验员LQC', '25');
INSERT INTO `qs32_hotword` VALUES ('41181', '电子产品工程师PE', '25');
INSERT INTO `qs32_hotword` VALUES ('41183', '操作工Operator', '26');
INSERT INTO `qs32_hotword` VALUES ('41184', '质量文档控制', '25');
INSERT INTO `qs32_hotword` VALUES ('41234', 'FPGA设计工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('41263', '储干', '13');
INSERT INTO `qs32_hotword` VALUES ('41283', '二手车专员', '14');
INSERT INTO `qs32_hotword` VALUES ('41335', '化工工艺工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('41339', '风险控制', '10');
INSERT INTO `qs32_hotword` VALUES ('41347', '包装设计工程师', '36');
INSERT INTO `qs32_hotword` VALUES ('41419', 'SMT工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('41554', 'Purchaser', '24');
INSERT INTO `qs32_hotword` VALUES ('41647', '注册监理工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('41679', '主任设计师', '72');
INSERT INTO `qs32_hotword` VALUES ('41723', '车板工', '32');
INSERT INTO `qs32_hotword` VALUES ('41734', '市场策划主管', '26');
INSERT INTO `qs32_hotword` VALUES ('41743', '设备维修员', '28');
INSERT INTO `qs32_hotword` VALUES ('41758', '电子工艺工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('41771', '会计上岗证教师', '26');
INSERT INTO `qs32_hotword` VALUES ('41773', '图书编辑-日语', '24');
INSERT INTO `qs32_hotword` VALUES ('41791', 'FLEX程序员', '12');
INSERT INTO `qs32_hotword` VALUES ('41863', '原画师', '17');
INSERT INTO `qs32_hotword` VALUES ('41883', '平面广告设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('41950', '应用软件工程师', '31');
INSERT INTO `qs32_hotword` VALUES ('42070', '心外、胸外科医师', '24');
INSERT INTO `qs32_hotword` VALUES ('42071', '电气维修技术员', '28');
INSERT INTO `qs32_hotword` VALUES ('42072', '绿化养护工', '28');
INSERT INTO `qs32_hotword` VALUES ('42081', '机加工工艺工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('42096', '信息工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('42101', '公司总经理', '15');
INSERT INTO `qs32_hotword` VALUES ('42105', '产品应用工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('42144', 'linux讲师', '10');
INSERT INTO `qs32_hotword` VALUES ('42182', '机械维修技术员', '12');
INSERT INTO `qs32_hotword` VALUES ('42188', '销售统计专员', '24');
INSERT INTO `qs32_hotword` VALUES ('42189', '资深服装设计师', '31');
INSERT INTO `qs32_hotword` VALUES ('42190', '人事数据专员', '24');
INSERT INTO `qs32_hotword` VALUES ('42191', '网购部主管', '25');
INSERT INTO `qs32_hotword` VALUES ('42192', '直营部区域经理', '24');
INSERT INTO `qs32_hotword` VALUES ('42193', '区域门店督导', '24');
INSERT INTO `qs32_hotword` VALUES ('42194', '网络平面设计助理', '24');
INSERT INTO `qs32_hotword` VALUES ('42195', '市场部企划主管', '27');
INSERT INTO `qs32_hotword` VALUES ('42196', '市场策划总监', '11');
INSERT INTO `qs32_hotword` VALUES ('42266', '电镀技术员Setter', '24');
INSERT INTO `qs32_hotword` VALUES ('42299', '物流、采购人员', '32');
INSERT INTO `qs32_hotword` VALUES ('42318', '储备人才', '15');
INSERT INTO `qs32_hotword` VALUES ('42366', '市场媒体公关专员', '24');
INSERT INTO `qs32_hotword` VALUES ('42367', '商用空调业务员', '24');
INSERT INTO `qs32_hotword` VALUES ('42368', '售后服务信息员', '25');
INSERT INTO `qs32_hotword` VALUES ('42369', '商用空调销售员', '24');
INSERT INTO `qs32_hotword` VALUES ('42431', '成本会计主管', '14');
INSERT INTO `qs32_hotword` VALUES ('42457', '机电设计工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('42525', '数控铣工', '12');
INSERT INTO `qs32_hotword` VALUES ('42538', '直销员', '14');
INSERT INTO `qs32_hotword` VALUES ('42577', '销售管理部经理', '11');
INSERT INTO `qs32_hotword` VALUES ('42607', '财务分析', '11');
INSERT INTO `qs32_hotword` VALUES ('42696', '环境推进Intern', '24');
INSERT INTO `qs32_hotword` VALUES ('42697', '全国高级客户经理', '24');
INSERT INTO `qs32_hotword` VALUES ('42726', '集团总部税务主管', '24');
INSERT INTO `qs32_hotword` VALUES ('42727', '量测技术员', '25');
INSERT INTO `qs32_hotword` VALUES ('42728', '修理技术员', '24');
INSERT INTO `qs32_hotword` VALUES ('42729', '程序设计员', '27');
INSERT INTO `qs32_hotword` VALUES ('42730', '冲压工程部课长', '24');
INSERT INTO `qs32_hotword` VALUES ('42915', '市场部实习生', '13');
INSERT INTO `qs32_hotword` VALUES ('42958', '安装技师', '10');
INSERT INTO `qs32_hotword` VALUES ('43095', '售后维修工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('43265', '客户经理终端部', '21');
INSERT INTO `qs32_hotword` VALUES ('43310', '副校长', '38');
INSERT INTO `qs32_hotword` VALUES ('43406', '人力资源部主管', '16');
INSERT INTO `qs32_hotword` VALUES ('43425', '计算机维护工程师', '21');
INSERT INTO `qs32_hotword` VALUES ('43429', '机电技工', '10');
INSERT INTO `qs32_hotword` VALUES ('43431', '二手车销售顾问', '15');
INSERT INTO `qs32_hotword` VALUES ('43433', '服务顾问助理', '10');
INSERT INTO `qs32_hotword` VALUES ('43450', 'J2EE软件工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('43472', '团购客户经理', '11');
INSERT INTO `qs32_hotword` VALUES ('43480', '板房主管', '12');
INSERT INTO `qs32_hotword` VALUES ('43526', 'QC专员', '11');
INSERT INTO `qs32_hotword` VALUES ('43548', '收款专员', '16');
INSERT INTO `qs32_hotword` VALUES ('43688', '制造部经理', '15');
INSERT INTO `qs32_hotword` VALUES ('43734', '生产普工', '17');
INSERT INTO `qs32_hotword` VALUES ('43795', '现场品管', '13');
INSERT INTO `qs32_hotword` VALUES ('43813', '研发助理工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('43832', '行业客户销售', '15');
INSERT INTO `qs32_hotword` VALUES ('43841', 'UI设计顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('43849', '退票专员', '48');
INSERT INTO `qs32_hotword` VALUES ('43850', '仓库质检员', '50');
INSERT INTO `qs32_hotword` VALUES ('43883', '调度员', '46');
INSERT INTO `qs32_hotword` VALUES ('43992', '区域商超经理', '21');
INSERT INTO `qs32_hotword` VALUES ('44104', '仓储经理', '13');
INSERT INTO `qs32_hotword` VALUES ('44123', '车身设计工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('44225', 'QE工程师', '34');
INSERT INTO `qs32_hotword` VALUES ('44361', 'Apple精品店收银', '12');
INSERT INTO `qs32_hotword` VALUES ('44366', '市场部项目经理', '10');
INSERT INTO `qs32_hotword` VALUES ('44396', '前期开发专员', '10');
INSERT INTO `qs32_hotword` VALUES ('44411', '销售工程师天津', '12');
INSERT INTO `qs32_hotword` VALUES ('44413', '网络技术工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('44425', '市场联络员', '24');
INSERT INTO `qs32_hotword` VALUES ('44452', 'PB开发工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('44504', '海运业务员', '13');
INSERT INTO `qs32_hotword` VALUES ('44521', '幼教讲师', '10');
INSERT INTO `qs32_hotword` VALUES ('44561', '合约主管', '11');
INSERT INTO `qs32_hotword` VALUES ('44601', '施工人员', '12');
INSERT INTO `qs32_hotword` VALUES ('44619', '电气主管', '10');
INSERT INTO `qs32_hotword` VALUES ('44701', '学管师', '21');
INSERT INTO `qs32_hotword` VALUES ('44728', '销售代表天津', '17');
INSERT INTO `qs32_hotword` VALUES ('44732', 'c++高级程序员', '14');
INSERT INTO `qs32_hotword` VALUES ('44778', '品牌策划经理', '25');
INSERT INTO `qs32_hotword` VALUES ('44790', '地区产品经理', '23');
INSERT INTO `qs32_hotword` VALUES ('44804', '医药代表第三终端', '31');
INSERT INTO `qs32_hotword` VALUES ('44806', '置业顾问就近分配', '17');
INSERT INTO `qs32_hotword` VALUES ('44832', '大店经理', '12');
INSERT INTO `qs32_hotword` VALUES ('44834', '服务代表', '34');
INSERT INTO `qs32_hotword` VALUES ('44852', '高级培训专员', '10');
INSERT INTO `qs32_hotword` VALUES ('44865', '珠宝店店长', '29');
INSERT INTO `qs32_hotword` VALUES ('44870', '区域拓展经理', '27');
INSERT INTO `qs32_hotword` VALUES ('44878', '生产车间管理', '46');
INSERT INTO `qs32_hotword` VALUES ('44903', '工程部内勤', '10');
INSERT INTO `qs32_hotword` VALUES ('44919', '店长、店员', '15');
INSERT INTO `qs32_hotword` VALUES ('44935', '门店总经理', '16');
INSERT INTO `qs32_hotword` VALUES ('44940', '工程管理部经理', '31');
INSERT INTO `qs32_hotword` VALUES ('44964', '活动执行经理全国', '20');
INSERT INTO `qs32_hotword` VALUES ('44987', '地区营业担当经理', '15');
INSERT INTO `qs32_hotword` VALUES ('45010', '门店会计', '11');
INSERT INTO `qs32_hotword` VALUES ('45021', '二手房销售员', '23');
INSERT INTO `qs32_hotword` VALUES ('45049', 'OTC地区总经理', '13');
INSERT INTO `qs32_hotword` VALUES ('45057', '计算机硬件工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('45058', '计算机软件工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('45079', '行政部部长', '10');
INSERT INTO `qs32_hotword` VALUES ('45139', '铲车司机', '11');
INSERT INTO `qs32_hotword` VALUES ('45155', '食品研发员', '11');
INSERT INTO `qs32_hotword` VALUES ('45175', '小区业务推广', '10');
INSERT INTO `qs32_hotword` VALUES ('45176', '家装经理', '19');
INSERT INTO `qs32_hotword` VALUES ('45222', '售后服务技术员', '11');
INSERT INTO `qs32_hotword` VALUES ('45238', '运营商销售经理', '15');
INSERT INTO `qs32_hotword` VALUES ('45239', '智能机客户代表', '21');
INSERT INTO `qs32_hotword` VALUES ('45297', '施工管理员', '15');
INSERT INTO `qs32_hotword` VALUES ('45359', '零售通路代表', '12');
INSERT INTO `qs32_hotword` VALUES ('45368', '销售工程师唐山', '23');
INSERT INTO `qs32_hotword` VALUES ('45373', '房地产项目经理', '13');
INSERT INTO `qs32_hotword` VALUES ('45376', '预决算经理', '11');
INSERT INTO `qs32_hotword` VALUES ('45377', '零售代表实习生', '42');
INSERT INTO `qs32_hotword` VALUES ('45401', '机房精密空调销售', '17');
INSERT INTO `qs32_hotword` VALUES ('45407', '高级行政专员', '10');
INSERT INTO `qs32_hotword` VALUES ('45449', '采购部副经理', '14');
INSERT INTO `qs32_hotword` VALUES ('45453', '市场部客户经理', '23');
INSERT INTO `qs32_hotword` VALUES ('45460', '合同管理工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('45468', '储备招商代表', '13');
INSERT INTO `qs32_hotword` VALUES ('45475', '医药代表天津', '10');
INSERT INTO `qs32_hotword` VALUES ('45493', '胶印机机长', '17');
INSERT INTO `qs32_hotword` VALUES ('45534', '零售管理培训生', '10');
INSERT INTO `qs32_hotword` VALUES ('45562', '销售代表医院渠道', '21');
INSERT INTO `qs32_hotword` VALUES ('45574', '苹果专卖店店员', '10');
INSERT INTO `qs32_hotword` VALUES ('45614', '红帽RHCE讲师', '10');
INSERT INTO `qs32_hotword` VALUES ('45620', '连锁发展专员', '12');
INSERT INTO `qs32_hotword` VALUES ('45633', 'C语言开发工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('45642', '运营副总监', '47');
INSERT INTO `qs32_hotword` VALUES ('45643', '市场部专任代表', '26');
INSERT INTO `qs32_hotword` VALUES ('45676', '兼职歌手主播', '19');
INSERT INTO `qs32_hotword` VALUES ('45682', 'C++', '12');
INSERT INTO `qs32_hotword` VALUES ('45712', '直销主管', '29');
INSERT INTO `qs32_hotword` VALUES ('45713', 'KA业务代表', '34');
INSERT INTO `qs32_hotword` VALUES ('45779', '连锁开发经理', '10');
INSERT INTO `qs32_hotword` VALUES ('45813', '财务核算', '11');
INSERT INTO `qs32_hotword` VALUES ('45871', '电脑维修工程师', '20');
INSERT INTO `qs32_hotword` VALUES ('45874', '通路渠道销售代表', '38');
INSERT INTO `qs32_hotword` VALUES ('45906', '世界名表销售导购', '13');
INSERT INTO `qs32_hotword` VALUES ('45912', '权证专员', '19');
INSERT INTO `qs32_hotword` VALUES ('45928', '名表连锁店店长', '28');
INSERT INTO `qs32_hotword` VALUES ('45952', '安全管理专员', '25');
INSERT INTO `qs32_hotword` VALUES ('45984', '区域广告销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('46034', '人事行政储备干部', '14');
INSERT INTO `qs32_hotword` VALUES ('46097', '酒店总经理', '37');
INSERT INTO `qs32_hotword` VALUES ('46118', '营业课主任', '60');
INSERT INTO `qs32_hotword` VALUES ('46152', '品牌店财务经理', '23');
INSERT INTO `qs32_hotword` VALUES ('46153', '高端品牌店总经理', '23');
INSERT INTO `qs32_hotword` VALUES ('46180', 'Chemist', '23');
INSERT INTO `qs32_hotword` VALUES ('46297', '电气造价师', '11');
INSERT INTO `qs32_hotword` VALUES ('46330', '施工管理', '10');
INSERT INTO `qs32_hotword` VALUES ('46368', '运作员', '14');
INSERT INTO `qs32_hotword` VALUES ('46369', '储备分部经理', '11');
INSERT INTO `qs32_hotword` VALUES ('46387', '英语外贸业务员', '15');
INSERT INTO `qs32_hotword` VALUES ('46409', '分公司销售经理', '11');
INSERT INTO `qs32_hotword` VALUES ('46455', '督导主管', '35');
INSERT INTO `qs32_hotword` VALUES ('46469', '家居用品营业员', '14');
INSERT INTO `qs32_hotword` VALUES ('46519', '电气控制工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('46602', '营销副总监', '46');
INSERT INTO `qs32_hotword` VALUES ('46606', '校区主管', '12');
INSERT INTO `qs32_hotword` VALUES ('46628', '车队队长', '10');
INSERT INTO `qs32_hotword` VALUES ('46658', '兼职装饰设计师', '27');
INSERT INTO `qs32_hotword` VALUES ('46692', '分子诊断咨询代表', '26');
INSERT INTO `qs32_hotword` VALUES ('46698', '成本部经理', '57');
INSERT INTO `qs32_hotword` VALUES ('46774', '行车工', '15');
INSERT INTO `qs32_hotword` VALUES ('46793', '兼职神秘访客', '44');
INSERT INTO `qs32_hotword` VALUES ('46802', '外贸服装业务跟单', '11');
INSERT INTO `qs32_hotword` VALUES ('46803', '外贸专员及助理', '10');
INSERT INTO `qs32_hotword` VALUES ('46822', '审计部经理', '15');
INSERT INTO `qs32_hotword` VALUES ('46860', '高端理财经理', '10');
INSERT INTO `qs32_hotword` VALUES ('46862', '医院育婴助理', '11');
INSERT INTO `qs32_hotword` VALUES ('46863', '婴线终端推广员', '29');
INSERT INTO `qs32_hotword` VALUES ('46864', '客服专员母婴方向', '20');
INSERT INTO `qs32_hotword` VALUES ('46865', '医务推广员', '31');
INSERT INTO `qs32_hotword` VALUES ('46874', '诊断试剂推广专员', '11');
INSERT INTO `qs32_hotword` VALUES ('46890', 'ISO专员', '16');
INSERT INTO `qs32_hotword` VALUES ('46896', '省区商务经理', '28');
INSERT INTO `qs32_hotword` VALUES ('46897', '网络销售顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('46904', '生产技术科程式组', '23');
INSERT INTO `qs32_hotword` VALUES ('46905', '叉车驾驶员仓管', '23');
INSERT INTO `qs32_hotword` VALUES ('46906', '机械操作工涂装', '23');
INSERT INTO `qs32_hotword` VALUES ('46907', '操作工组立', '23');
INSERT INTO `qs32_hotword` VALUES ('46908', '生产技术管理', '25');
INSERT INTO `qs32_hotword` VALUES ('46909', '系统设计', '24');
INSERT INTO `qs32_hotword` VALUES ('46910', '区域KAM', '24');
INSERT INTO `qs32_hotword` VALUES ('46911', '渠道督查', '23');
INSERT INTO `qs32_hotword` VALUES ('46918', '资深营业员', '11');
INSERT INTO `qs32_hotword` VALUES ('46950', '区域培训师', '15');
INSERT INTO `qs32_hotword` VALUES ('46951', '终端主管', '15');
INSERT INTO `qs32_hotword` VALUES ('46958', '大区／办事处经理', '14');
INSERT INTO `qs32_hotword` VALUES ('46962', '销售业务员Sales', '15');
INSERT INTO `qs32_hotword` VALUES ('46995', '技术服务员', '11');
INSERT INTO `qs32_hotword` VALUES ('47025', '销售行政经理', '10');
INSERT INTO `qs32_hotword` VALUES ('47058', '医药销售OTC代表', '16');
INSERT INTO `qs32_hotword` VALUES ('47105', '兼职培训讲师', '36');
INSERT INTO `qs32_hotword` VALUES ('47138', '市场部业务经理', '11');
INSERT INTO `qs32_hotword` VALUES ('47166', '驻地业务员', '21');
INSERT INTO `qs32_hotword` VALUES ('47175', '日语老师', '15');
INSERT INTO `qs32_hotword` VALUES ('47286', '风控总监', '12');
INSERT INTO `qs32_hotword` VALUES ('47293', '品牌顾问', '18');
INSERT INTO `qs32_hotword` VALUES ('47390', '设施主管', '17');
INSERT INTO `qs32_hotword` VALUES ('47401', '销售主管第三终端', '17');
INSERT INTO `qs32_hotword` VALUES ('47445', '销售代表啤酒设备', '12');
INSERT INTO `qs32_hotword` VALUES ('47486', '糯米网-采编', '18');
INSERT INTO `qs32_hotword` VALUES ('47570', '销售信息员', '10');
INSERT INTO `qs32_hotword` VALUES ('47650', '销售代表经营人员', '31');
INSERT INTO `qs32_hotword` VALUES ('47659', '车管员', '28');
INSERT INTO `qs32_hotword` VALUES ('47670', '华为产品销售经理', '11');
INSERT INTO `qs32_hotword` VALUES ('47711', '人事行政部经理', '45');
INSERT INTO `qs32_hotword` VALUES ('47712', '销售外业', '28');
INSERT INTO `qs32_hotword` VALUES ('47713', 'SMT设备技术员', '24');
INSERT INTO `qs32_hotword` VALUES ('47730', '机电技师', '29');
INSERT INTO `qs32_hotword` VALUES ('47734', '推广服务主任', '12');
INSERT INTO `qs32_hotword` VALUES ('47740', '质量监督员', '25');
INSERT INTO `qs32_hotword` VALUES ('47779', '企业金融部部长', '16');
INSERT INTO `qs32_hotword` VALUES ('47804', '驻外融资客户经理', '18');
INSERT INTO `qs32_hotword` VALUES ('47805', '口腔医生', '12');
INSERT INTO `qs32_hotword` VALUES ('47829', '市场总经理助理', '24');
INSERT INTO `qs32_hotword` VALUES ('47839', '日语讲师', '13');
INSERT INTO `qs32_hotword` VALUES ('47846', '业代', '10');
INSERT INTO `qs32_hotword` VALUES ('47865', '生产计划工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('47877', '零售部经理', '10');
INSERT INTO `qs32_hotword` VALUES ('47889', '兼职网络写手', '11');
INSERT INTO `qs32_hotword` VALUES ('47890', '理工类写手', '13');
INSERT INTO `qs32_hotword` VALUES ('47918', '信用险客户经理', '11');
INSERT INTO `qs32_hotword` VALUES ('48010', '医用耗材销售代表', '17');
INSERT INTO `qs32_hotword` VALUES ('48089', '车务', '16');
INSERT INTO `qs32_hotword` VALUES ('48114', '造价工程师挂靠', '29');
INSERT INTO `qs32_hotword` VALUES ('48115', '一级建造师挂靠', '37');
INSERT INTO `qs32_hotword` VALUES ('48116', '监理工程师挂靠', '27');
INSERT INTO `qs32_hotword` VALUES ('48165', '品牌授权专员', '23');
INSERT INTO `qs32_hotword` VALUES ('48172', '服务器运维工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('48174', '招商主任', '14');
INSERT INTO `qs32_hotword` VALUES ('48221', 'OTC医药销售代表', '16');
INSERT INTO `qs32_hotword` VALUES ('48234', '驻店药师', '10');
INSERT INTO `qs32_hotword` VALUES ('48248', '装饰造价工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('48258', '工装夹具工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('48264', '质管员', '22');
INSERT INTO `qs32_hotword` VALUES ('48274', '银行驻点客户经理', '10');
INSERT INTO `qs32_hotword` VALUES ('48295', '前厅接待员', '12');
INSERT INTO `qs32_hotword` VALUES ('48333', '物管员', '11');
INSERT INTO `qs32_hotword` VALUES ('48344', '销售经理重庆', '10');
INSERT INTO `qs32_hotword` VALUES ('48372', '冲压工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('48430', '商场管理员', '13');
INSERT INTO `qs32_hotword` VALUES ('48468', '物业公司副总经理', '16');
INSERT INTO `qs32_hotword` VALUES ('48473', '服装督导', '11');
INSERT INTO `qs32_hotword` VALUES ('48479', '医院销售经理', '18');
INSERT INTO `qs32_hotword` VALUES ('48493', '项目申报员', '12');
INSERT INTO `qs32_hotword` VALUES ('48496', '销售代表重庆', '10');
INSERT INTO `qs32_hotword` VALUES ('48616', '营养教育主管', '12');
INSERT INTO `qs32_hotword` VALUES ('48639', '省区经理全国', '18');
INSERT INTO `qs32_hotword` VALUES ('48668', '门店专员', '19');
INSERT INTO `qs32_hotword` VALUES ('48669', '分公司副经理', '10');
INSERT INTO `qs32_hotword` VALUES ('48686', '水泥行业销售经理', '16');
INSERT INTO `qs32_hotword` VALUES ('48757', '兼职神秘顾客', '13');
INSERT INTO `qs32_hotword` VALUES ('48771', '工作人员', '10');
INSERT INTO `qs32_hotword` VALUES ('48827', '加盟经理', '12');
INSERT INTO `qs32_hotword` VALUES ('48833', '运行维护工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('48834', '高压主管', '12');
INSERT INTO `qs32_hotword` VALUES ('48835', '中控主管', '12');
INSERT INTO `qs32_hotword` VALUES ('48836', '高压值班员', '13');
INSERT INTO `qs32_hotword` VALUES ('48905', '水电安装工程师', '50');
INSERT INTO `qs32_hotword` VALUES ('48925', '综合助理', '11');
INSERT INTO `qs32_hotword` VALUES ('48938', '西南区域销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('49009', '绿化施工员', '10');
INSERT INTO `qs32_hotword` VALUES ('49016', '外教助教', '13');
INSERT INTO `qs32_hotword` VALUES ('49018', '销售工程师重庆', '14');
INSERT INTO `qs32_hotword` VALUES ('49046', '西餐厅经理', '17');
INSERT INTO `qs32_hotword` VALUES ('49190', '售后技术员', '22');
INSERT INTO `qs32_hotword` VALUES ('49201', '淘宝直通车专员', '11');
INSERT INTO `qs32_hotword` VALUES ('49214', '门店助理', '10');
INSERT INTO `qs32_hotword` VALUES ('49244', '舞蹈', '14');
INSERT INTO `qs32_hotword` VALUES ('49245', '乐器手', '12');
INSERT INTO `qs32_hotword` VALUES ('49354', '项目销售工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('49378', '零售诊所渠道专员', '17');
INSERT INTO `qs32_hotword` VALUES ('49379', '市代拓展经理', '10');
INSERT INTO `qs32_hotword` VALUES ('49383', '终端培训主管', '11');
INSERT INTO `qs32_hotword` VALUES ('49440', '新房编辑', '79');
INSERT INTO `qs32_hotword` VALUES ('49454', '物流操作员线长', '15');
INSERT INTO `qs32_hotword` VALUES ('49479', '开发报建员', '11');
INSERT INTO `qs32_hotword` VALUES ('49680', '放映员', '11');
INSERT INTO `qs32_hotword` VALUES ('49693', '质量保证工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('49746', '地区主管', '21');
INSERT INTO `qs32_hotword` VALUES ('49779', '装饰公司业务专员', '22');
INSERT INTO `qs32_hotword` VALUES ('49780', '布艺窗帘销售', '22');
INSERT INTO `qs32_hotword` VALUES ('49781', '墙纸销售店面', '22');
INSERT INTO `qs32_hotword` VALUES ('49783', '加盟事业顾问', '23');
INSERT INTO `qs32_hotword` VALUES ('49784', '招商经理重庆', '22');
INSERT INTO `qs32_hotword` VALUES ('49785', '健康代表重庆', '22');
INSERT INTO `qs32_hotword` VALUES ('49879', '监控产品销售经理', '18');
INSERT INTO `qs32_hotword` VALUES ('49897', '分公司财务经理', '20');
INSERT INTO `qs32_hotword` VALUES ('49899', '信控助理', '10');
INSERT INTO `qs32_hotword` VALUES ('49901', '高端设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('49918', '信控员', '10');
INSERT INTO `qs32_hotword` VALUES ('49919', '市场督察', '18');
INSERT INTO `qs32_hotword` VALUES ('49945', '输单员', '13');
INSERT INTO `qs32_hotword` VALUES ('49980', '自控工程师DCS', '14');
INSERT INTO `qs32_hotword` VALUES ('50008', '房地产总经理', '14');
INSERT INTO `qs32_hotword` VALUES ('50016', '二手房置业顾问', '12');
INSERT INTO `qs32_hotword` VALUES ('50052', '计算机维修工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('50125', '物控员', '11');
INSERT INTO `qs32_hotword` VALUES ('50133', '高级导购', '22');
INSERT INTO `qs32_hotword` VALUES ('50137', '打磨工', '19');
INSERT INTO `qs32_hotword` VALUES ('50163', '市场开发岗', '19');
INSERT INTO `qs32_hotword` VALUES ('50164', '营业部营销总监', '14');
INSERT INTO `qs32_hotword` VALUES ('50165', '营业部合规总监', '11');
INSERT INTO `qs32_hotword` VALUES ('50205', '车位', '12');
INSERT INTO `qs32_hotword` VALUES ('50264', '软件工程项目经理', '10');
INSERT INTO `qs32_hotword` VALUES ('50271', '医务经理', '14');
INSERT INTO `qs32_hotword` VALUES ('50290', '生产技术部经理', '10');
INSERT INTO `qs32_hotword` VALUES ('50355', '营销培训生', '11');
INSERT INTO `qs32_hotword` VALUES ('50371', '母婴渠道销售代表', '38');
INSERT INTO `qs32_hotword` VALUES ('50385', '工程维修主管', '11');
INSERT INTO `qs32_hotword` VALUES ('50405', '物料专员', '11');
INSERT INTO `qs32_hotword` VALUES ('50423', '化工技术员', '10');
INSERT INTO `qs32_hotword` VALUES ('50427', '注塑机业务员', '17');
INSERT INTO `qs32_hotword` VALUES ('50518', '开发报建经理', '10');
INSERT INTO `qs32_hotword` VALUES ('50532', '兼职人员', '15');
INSERT INTO `qs32_hotword` VALUES ('50537', '五星级酒店总经理', '10');
INSERT INTO `qs32_hotword` VALUES ('50582', '营养推广代表', '10');
INSERT INTO `qs32_hotword` VALUES ('50642', 'KA终端推广员', '26');
INSERT INTO `qs32_hotword` VALUES ('50823', '营业员、促销员', '22');
INSERT INTO `qs32_hotword` VALUES ('50829', '消防监控员', '12');
INSERT INTO `qs32_hotword` VALUES ('50832', '营运主任', '12');
INSERT INTO `qs32_hotword` VALUES ('50852', '分站站长', '12');
INSERT INTO `qs32_hotword` VALUES ('50881', '安装设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('50923', '连锁店经理', '16');
INSERT INTO `qs32_hotword` VALUES ('50927', '大区总经理', '28');
INSERT INTO `qs32_hotword` VALUES ('50948', '售后维护工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('50969', '人事主任', '14');
INSERT INTO `qs32_hotword` VALUES ('51105', '销售行政主管', '12');
INSERT INTO `qs32_hotword` VALUES ('51139', '产品线总监', '25');
INSERT INTO `qs32_hotword` VALUES ('51159', '销售主管医院', '19');
INSERT INTO `qs32_hotword` VALUES ('51240', '工程内勤', '15');
INSERT INTO `qs32_hotword` VALUES ('51243', '园林水电工程师', '25');
INSERT INTO `qs32_hotword` VALUES ('51244', '倒班班长', '23');
INSERT INTO `qs32_hotword` VALUES ('51270', '生产部主管', '17');
INSERT INTO `qs32_hotword` VALUES ('51287', '质管部经理', '10');
INSERT INTO `qs32_hotword` VALUES ('51314', '成本控制部经理', '23');
INSERT INTO `qs32_hotword` VALUES ('51430', '餐厅实习店经理', '18');
INSERT INTO `qs32_hotword` VALUES ('51634', '省区拓展经理', '12');
INSERT INTO `qs32_hotword` VALUES ('51715', '人力资源副经理', '18');
INSERT INTO `qs32_hotword` VALUES ('51794', '汽车销售工程师', '18');
INSERT INTO `qs32_hotword` VALUES ('51824', '实习交易员', '13');
INSERT INTO `qs32_hotword` VALUES ('51826', 'Java实习生', '11');
INSERT INTO `qs32_hotword` VALUES ('51906', '美国互惠生', '33');
INSERT INTO `qs32_hotword` VALUES ('51935', '采购商务', '10');
INSERT INTO `qs32_hotword` VALUES ('52012', '维修学徒', '10');
INSERT INTO `qs32_hotword` VALUES ('52088', '形象顾问', '10');
INSERT INTO `qs32_hotword` VALUES ('52167', '值班电工', '10');
INSERT INTO `qs32_hotword` VALUES ('52170', '终端销售经理', '16');
INSERT INTO `qs32_hotword` VALUES ('52197', '助理店经理', '11');
INSERT INTO `qs32_hotword` VALUES ('52215', '驻外营销人员', '15');
INSERT INTO `qs32_hotword` VALUES ('52230', '市场推广部经理', '13');
INSERT INTO `qs32_hotword` VALUES ('52245', '医药代表实习生', '10');
INSERT INTO `qs32_hotword` VALUES ('52304', '车险核保岗', '10');
INSERT INTO `qs32_hotword` VALUES ('52309', '客服兼房源管理', '13');
INSERT INTO `qs32_hotword` VALUES ('52378', '代理商', '23');
INSERT INTO `qs32_hotword` VALUES ('52394', '外派业务经理', '10');
INSERT INTO `qs32_hotword` VALUES ('52408', '地区经理河北', '10');
INSERT INTO `qs32_hotword` VALUES ('52430', '业务管理储备人才', '13');
INSERT INTO `qs32_hotword` VALUES ('52441', '区域办事处经理', '10');
INSERT INTO `qs32_hotword` VALUES ('52485', '种植师', '10');
INSERT INTO `qs32_hotword` VALUES ('52523', '医药代表河北', '11');
INSERT INTO `qs32_hotword` VALUES ('52535', '区域人事专员', '18');
INSERT INTO `qs32_hotword` VALUES ('52540', '基建工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('52550', '销售代表石家庄', '11');
INSERT INTO `qs32_hotword` VALUES ('52556', '教学、教务主管', '16');
INSERT INTO `qs32_hotword` VALUES ('52660', '物流专员驻厂代表', '14');
INSERT INTO `qs32_hotword` VALUES ('52695', 'ATM服务工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('52703', '驻厂专员', '10');
INSERT INTO `qs32_hotword` VALUES ('52729', '金融项目经理', '13');
INSERT INTO `qs32_hotword` VALUES ('52799', '销售事业部经理', '10');
INSERT INTO `qs32_hotword` VALUES ('52806', '车务主管', '14');
INSERT INTO `qs32_hotword` VALUES ('52856', '出国工作新加坡', '45');
INSERT INTO `qs32_hotword` VALUES ('52887', '渠道推广主任', '43');
INSERT INTO `qs32_hotword` VALUES ('52888', '渠道推广督导', '26');
INSERT INTO `qs32_hotword` VALUES ('52961', '工程拓展经理', '11');
INSERT INTO `qs32_hotword` VALUES ('52964', '办事处医务主管', '11');
INSERT INTO `qs32_hotword` VALUES ('52982', '兼职区域经理', '11');
INSERT INTO `qs32_hotword` VALUES ('52983', '变频器销售工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('53015', '培训生储备校长', '11');
INSERT INTO `qs32_hotword` VALUES ('53024', '财务副总经理', '11');
INSERT INTO `qs32_hotword` VALUES ('53025', '店铺文员', '15');
INSERT INTO `qs32_hotword` VALUES ('53043', '网络优化工程师', '33');
INSERT INTO `qs32_hotword` VALUES ('53083', '五金专员', '14');
INSERT INTO `qs32_hotword` VALUES ('53099', '区销售经理', '13');
INSERT INTO `qs32_hotword` VALUES ('53169', '业务发展代表BDR', '25');
INSERT INTO `qs32_hotword` VALUES ('53180', '4S店财务经理', '20');
INSERT INTO `qs32_hotword` VALUES ('53181', '4S店售后经理', '16');
INSERT INTO `qs32_hotword` VALUES ('53182', '4S店销售经理', '26');
INSERT INTO `qs32_hotword` VALUES ('53222', '连锁保定店店长', '21');
INSERT INTO `qs32_hotword` VALUES ('53223', '往来主任', '21');
INSERT INTO `qs32_hotword` VALUES ('53224', '理化微检副主任', '21');
INSERT INTO `qs32_hotword` VALUES ('53225', '驻地业务代表', '27');
INSERT INTO `qs32_hotword` VALUES ('53226', '店长助理保定', '21');
INSERT INTO `qs32_hotword` VALUES ('53227', '英语外教河北三河', '21');
INSERT INTO `qs32_hotword` VALUES ('53228', '教务主任河北廊坊', '21');
INSERT INTO `qs32_hotword` VALUES ('53229', '英语老师河北廊坊', '21');
INSERT INTO `qs32_hotword` VALUES ('53230', '科研专员', '21');
INSERT INTO `qs32_hotword` VALUES ('53247', '轮胎销售代表', '11');
INSERT INTO `qs32_hotword` VALUES ('53264', '医药销售代表河北', '11');
INSERT INTO `qs32_hotword` VALUES ('53290', '优秀应届毕业生', '16');
INSERT INTO `qs32_hotword` VALUES ('53335', '二手车经理', '10');
INSERT INTO `qs32_hotword` VALUES ('53344', 'BC促销队员', '14');
INSERT INTO `qs32_hotword` VALUES ('53358', '助理业务代表', '53');
INSERT INTO `qs32_hotword` VALUES ('53359', '直销业务员', '14');
INSERT INTO `qs32_hotword` VALUES ('53417', '个人地区代理', '18');
INSERT INTO `qs32_hotword` VALUES ('53445', '销售内勤文员', '14');
INSERT INTO `qs32_hotword` VALUES ('53518', '银保渠道经理', '10');
INSERT INTO `qs32_hotword` VALUES ('53539', '省招商经理', '10');
INSERT INTO `qs32_hotword` VALUES ('53577', '销售经理全国范围', '26');
INSERT INTO `qs32_hotword` VALUES ('53596', '销售经理中兴', '23');
INSERT INTO `qs32_hotword` VALUES ('53598', '产品讲师太原', '20');
INSERT INTO `qs32_hotword` VALUES ('53599', '销售工程师-OCS', '20');
INSERT INTO `qs32_hotword` VALUES ('53647', '医学信息沟通专员', '17');
INSERT INTO `qs32_hotword` VALUES ('53690', '科技产品服务经理', '11');
INSERT INTO `qs32_hotword` VALUES ('53906', '裁缝', '10');
INSERT INTO `qs32_hotword` VALUES ('53914', '产品主任', '11');
INSERT INTO `qs32_hotword` VALUES ('53919', '留学部经理', '10');
INSERT INTO `qs32_hotword` VALUES ('53988', 'LED销售代表', '10');
INSERT INTO `qs32_hotword` VALUES ('54042', '国内销售代表', '19');
INSERT INTO `qs32_hotword` VALUES ('54082', '办事处销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('54102', '兼职代理', '20');
INSERT INTO `qs32_hotword` VALUES ('54103', '分公司总经理助理', '25');
INSERT INTO `qs32_hotword` VALUES ('54112', '子公司总经理', '21');
INSERT INTO `qs32_hotword` VALUES ('54119', '区域人力资源经理', '10');
INSERT INTO `qs32_hotword` VALUES ('54131', '渠道拓展主管', '13');
INSERT INTO `qs32_hotword` VALUES ('54234', '传媒总监', '13');
INSERT INTO `qs32_hotword` VALUES ('54326', '财务副总监', '19');
INSERT INTO `qs32_hotword` VALUES ('54358', '片区销售经理', '13');
INSERT INTO `qs32_hotword` VALUES ('54474', '驻外司机', '10');
INSERT INTO `qs32_hotword` VALUES ('54504', '区域培训专员', '11');
INSERT INTO `qs32_hotword` VALUES ('54510', '内场主持与策划', '11');
INSERT INTO `qs32_hotword` VALUES ('54519', '清欠律师', '10');
INSERT INTO `qs32_hotword` VALUES ('54550', '成本核算员', '20');
INSERT INTO `qs32_hotword` VALUES ('54604', '医疗器械销售经理', '34');
INSERT INTO `qs32_hotword` VALUES ('54677', '业务兼司机', '12');
INSERT INTO `qs32_hotword` VALUES ('54698', '内审员', '12');
INSERT INTO `qs32_hotword` VALUES ('54861', '新药推广代表', '15');
INSERT INTO `qs32_hotword` VALUES ('54912', '销售代表沈阳', '12');
INSERT INTO `qs32_hotword` VALUES ('54926', '成本工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('55030', '厢货司机', '10');
INSERT INTO `qs32_hotword` VALUES ('55076', '综合管理专员', '21');
INSERT INTO `qs32_hotword` VALUES ('55131', '报建主管', '29');
INSERT INTO `qs32_hotword` VALUES ('55231', '销售工程师沈阳', '10');
INSERT INTO `qs32_hotword` VALUES ('55543', '营销部长', '14');
INSERT INTO `qs32_hotword` VALUES ('55567', '车物查勘定损岗', '10');
INSERT INTO `qs32_hotword` VALUES ('55577', '营销内勤', '11');
INSERT INTO `qs32_hotword` VALUES ('55695', '论坛发帖高手', '14');
INSERT INTO `qs32_hotword` VALUES ('55896', '子公司财务经理', '10');
INSERT INTO `qs32_hotword` VALUES ('55956', '分公司内销业务员', '18');
INSERT INTO `qs32_hotword` VALUES ('55957', '分公司外贸业务员', '18');
INSERT INTO `qs32_hotword` VALUES ('55958', '审计员助理', '18');
INSERT INTO `qs32_hotword` VALUES ('56082', '助理业代', '18');
INSERT INTO `qs32_hotword` VALUES ('56196', '门店营业员', '17');
INSERT INTO `qs32_hotword` VALUES ('56254', '大客户公关经理', '11');
INSERT INTO `qs32_hotword` VALUES ('56287', '房务总监', '10');
INSERT INTO `qs32_hotword` VALUES ('56385', 'SE', '19');
INSERT INTO `qs32_hotword` VALUES ('56411', '东北大区经理', '14');
INSERT INTO `qs32_hotword` VALUES ('56471', '平面设计教师', '16');
INSERT INTO `qs32_hotword` VALUES ('56629', '销售分公司经理', '14');
INSERT INTO `qs32_hotword` VALUES ('56701', '网店店长', '20');
INSERT INTO `qs32_hotword` VALUES ('56728', '零售通路专员', '21');
INSERT INTO `qs32_hotword` VALUES ('56809', '拓展', '10');
INSERT INTO `qs32_hotword` VALUES ('56875', '沈阳助理', '10');
INSERT INTO `qs32_hotword` VALUES ('56878', '教学部主管', '12');
INSERT INTO `qs32_hotword` VALUES ('57216', '电话预约员', '11');
INSERT INTO `qs32_hotword` VALUES ('57301', '经销商', '14');
INSERT INTO `qs32_hotword` VALUES ('57496', '电话招商经理', '11');
INSERT INTO `qs32_hotword` VALUES ('57551', '整机销售代表', '23');
INSERT INTO `qs32_hotword` VALUES ('57700', '强、弱电工', '19');
INSERT INTO `qs32_hotword` VALUES ('57703', '东北地区销售经理', '21');
INSERT INTO `qs32_hotword` VALUES ('57716', '工程管理人员', '20');
INSERT INTO `qs32_hotword` VALUES ('57782', '资源开发总监', '10');
INSERT INTO `qs32_hotword` VALUES ('57828', '安防销售工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('57884', '医药代表LH-MR', '34');
INSERT INTO `qs32_hotword` VALUES ('57923', 'OTC零售代表', '10');
INSERT INTO `qs32_hotword` VALUES ('58001', '会奖部主管', '36');
INSERT INTO `qs32_hotword` VALUES ('58002', '商务中心咨询员', '36');
INSERT INTO `qs32_hotword` VALUES ('58003', '国内前台咨询', '36');
INSERT INTO `qs32_hotword` VALUES ('58081', '辅导专员岗', '10');
INSERT INTO `qs32_hotword` VALUES ('58091', '物料计划员', '14');
INSERT INTO `qs32_hotword` VALUES ('58585', '库房保管员', '11');
INSERT INTO `qs32_hotword` VALUES ('58639', '收货员', '16');
INSERT INTO `qs32_hotword` VALUES ('58652', '信息技术主管', '13');
INSERT INTO `qs32_hotword` VALUES ('58979', '长春办事处主任', '18');
INSERT INTO `qs32_hotword` VALUES ('58980', '沈阳KA主管', '18');
INSERT INTO `qs32_hotword` VALUES ('59416', '教学老师', '18');
INSERT INTO `qs32_hotword` VALUES ('59480', '物业客服', '14');
INSERT INTO `qs32_hotword` VALUES ('59512', '房地产策划总监', '13');
INSERT INTO `qs32_hotword` VALUES ('59583', '监管员', '13');
INSERT INTO `qs32_hotword` VALUES ('59781', '综合金融客户经理', '18');
INSERT INTO `qs32_hotword` VALUES ('59852', '软件销售总监', '17');
INSERT INTO `qs32_hotword` VALUES ('59919', '人资总监', '10');
INSERT INTO `qs32_hotword` VALUES ('60036', '股指期货操盘手', '16');
INSERT INTO `qs32_hotword` VALUES ('60153', '培训运作岗', '11');
INSERT INTO `qs32_hotword` VALUES ('60173', '安防员', '10');
INSERT INTO `qs32_hotword` VALUES ('60331', '分行经理', '11');
INSERT INTO `qs32_hotword` VALUES ('60352', '外观设计工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('60373', '售后服务技师', '18');
INSERT INTO `qs32_hotword` VALUES ('60416', '配件专员', '10');
INSERT INTO `qs32_hotword` VALUES ('60533', '设备维修经理', '11');
INSERT INTO `qs32_hotword` VALUES ('60834', '集团总裁助理', '24');
INSERT INTO `qs32_hotword` VALUES ('60926', '对日JAVA工程师', '22');
INSERT INTO `qs32_hotword` VALUES ('60992', '初、高中数学教师', '11');
INSERT INTO `qs32_hotword` VALUES ('61126', '资讯主管', '10');
INSERT INTO `qs32_hotword` VALUES ('61292', '生产储备干部', '14');
INSERT INTO `qs32_hotword` VALUES ('61362', '普车车工经验成手', '18');
INSERT INTO `qs32_hotword` VALUES ('61363', '生产辅助工', '19');
INSERT INTO `qs32_hotword` VALUES ('61383', '服装销售', '11');
INSERT INTO `qs32_hotword` VALUES ('61396', '消防专员', '10');
INSERT INTO `qs32_hotword` VALUES ('61399', '店面陈列师', '12');
INSERT INTO `qs32_hotword` VALUES ('61403', '市场销售总监', '14');
INSERT INTO `qs32_hotword` VALUES ('61415', '零售培训师', '18');
INSERT INTO `qs32_hotword` VALUES ('61472', 'Java初级工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('61675', '苹果专卖店店长', '15');
INSERT INTO `qs32_hotword` VALUES ('61814', '加油员', '10');
INSERT INTO `qs32_hotword` VALUES ('61843', '投融资专员', '12');
INSERT INTO `qs32_hotword` VALUES ('61871', '骨科销售代表', '22');
INSERT INTO `qs32_hotword` VALUES ('61950', '监察员', '10');
INSERT INTO `qs32_hotword` VALUES ('61981', 'Rigger', '11');
INSERT INTO `qs32_hotword` VALUES ('62002', '电子商务文员', '11');
INSERT INTO `qs32_hotword` VALUES ('62175', '秩序维护主管', '22');
INSERT INTO `qs32_hotword` VALUES ('62241', '行政部副经理', '12');
INSERT INTO `qs32_hotword` VALUES ('62245', '客户经理手机产品', '18');
INSERT INTO `qs32_hotword` VALUES ('62521', '储备人员', '10');
INSERT INTO `qs32_hotword` VALUES ('62589', '拓展总监', '10');
INSERT INTO `qs32_hotword` VALUES ('62766', '报纸主编', '19');
INSERT INTO `qs32_hotword` VALUES ('62820', '印刷装订工', '12');
INSERT INTO `qs32_hotword` VALUES ('62922', '咨询老师', '13');
INSERT INTO `qs32_hotword` VALUES ('62938', '后勤文员', '10');
INSERT INTO `qs32_hotword` VALUES ('63129', '大中型论坛版主', '10');
INSERT INTO `qs32_hotword` VALUES ('63140', '产品包装设计师', '10');
INSERT INTO `qs32_hotword` VALUES ('63249', '电气技师', '12');
INSERT INTO `qs32_hotword` VALUES ('63685', '高级医药销售代表', '12');
INSERT INTO `qs32_hotword` VALUES ('63696', '工程副总-长春', '18');
INSERT INTO `qs32_hotword` VALUES ('63819', 'GIS软件工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('63894', '烘培技工', '10');
INSERT INTO `qs32_hotword` VALUES ('63977', '写手', '10');
INSERT INTO `qs32_hotword` VALUES ('64683', '教学主任', '19');
INSERT INTO `qs32_hotword` VALUES ('64818', '外阜销售代表', '13');
INSERT INTO `qs32_hotword` VALUES ('64926', '企业管理部经理', '11');
INSERT INTO `qs32_hotword` VALUES ('64953', '工程部项目经理', '15');
INSERT INTO `qs32_hotword` VALUES ('64956', 'otc医药代表', '15');
INSERT INTO `qs32_hotword` VALUES ('64992', '医药代表哈尔滨', '14');
INSERT INTO `qs32_hotword` VALUES ('65039', '驻地业务经理', '12');
INSERT INTO `qs32_hotword` VALUES ('65127', '融资会计', '14');
INSERT INTO `qs32_hotword` VALUES ('65238', '初级英语教师', '16');
INSERT INTO `qs32_hotword` VALUES ('65469', '自控工程师哈尔滨', '16');
INSERT INTO `qs32_hotword` VALUES ('65702', '药店店长', '16');
INSERT INTO `qs32_hotword` VALUES ('65712', '彩妆导师', '10');
INSERT INTO `qs32_hotword` VALUES ('66571', '电子装配技工', '15');
INSERT INTO `qs32_hotword` VALUES ('66582', '现场营运', '15');
INSERT INTO `qs32_hotword` VALUES ('66583', '幼教教研员', '15');
INSERT INTO `qs32_hotword` VALUES ('66783', '材料专员', '12');
INSERT INTO `qs32_hotword` VALUES ('66790', '销售代表南京', '11');
INSERT INTO `qs32_hotword` VALUES ('66909', '企业形象代言人', '15');
INSERT INTO `qs32_hotword` VALUES ('66910', '房地产销售员江宁', '15');
INSERT INTO `qs32_hotword` VALUES ('66911', '房地产投资顾问', '16');
INSERT INTO `qs32_hotword` VALUES ('66912', '测试设备工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('66913', '塑封工艺工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('66914', 'QFN工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('66915', '半导体熟练作业员', '15');
INSERT INTO `qs32_hotword` VALUES ('66996', '分站经理', '19');
INSERT INTO `qs32_hotword` VALUES ('67028', '售后技术服务襄阳', '12');
INSERT INTO `qs32_hotword` VALUES ('67105', '仓库主管-太仓', '15');
INSERT INTO `qs32_hotword` VALUES ('67438', '学术代表', '18');
INSERT INTO `qs32_hotword` VALUES ('67580', '处方医药代表', '19');
INSERT INTO `qs32_hotword` VALUES ('67947', 'IT实习生', '18');
INSERT INTO `qs32_hotword` VALUES ('67948', '检验员--CT', '15');
INSERT INTO `qs32_hotword` VALUES ('67963', 'CAE解析技术员', '15');
INSERT INTO `qs32_hotword` VALUES ('67964', '生管企划担当', '15');
INSERT INTO `qs32_hotword` VALUES ('67965', '机械设计类', '15');
INSERT INTO `qs32_hotword` VALUES ('67966', '行政运营部实习生', '15');
INSERT INTO `qs32_hotword` VALUES ('67967', '医药公司财务人员', '15');
INSERT INTO `qs32_hotword` VALUES ('67968', '华东地接导游', '30');
INSERT INTO `qs32_hotword` VALUES ('67969', '材料课长', '30');
INSERT INTO `qs32_hotword` VALUES ('67970', '电池质量经理', '30');
INSERT INTO `qs32_hotword` VALUES ('68019', '销售主管工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('68025', '驻外行政', '18');
INSERT INTO `qs32_hotword` VALUES ('68355', '分支机构副总经理', '12');
INSERT INTO `qs32_hotword` VALUES ('68356', '分支机构总经理', '12');
INSERT INTO `qs32_hotword` VALUES ('68473', '商务代表_南京', '15');
INSERT INTO `qs32_hotword` VALUES ('68666', '压铸工艺工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('68733', '手机美容员', '15');
INSERT INTO `qs32_hotword` VALUES ('68734', 'LED灯具内销人员', '15');
INSERT INTO `qs32_hotword` VALUES ('68735', 'LED灯具外销人员', '15');
INSERT INTO `qs32_hotword` VALUES ('68736', 'SMT后道检验员', '15');
INSERT INTO `qs32_hotword` VALUES ('68737', 'OEM销售工程师', '19');
INSERT INTO `qs32_hotword` VALUES ('68738', '厨师南京德基店', '15');
INSERT INTO `qs32_hotword` VALUES ('68739', '文案策划昆山', '15');
INSERT INTO `qs32_hotword` VALUES ('68785', '网络产品技术支持', '16');
INSERT INTO `qs32_hotword` VALUES ('68786', '云数据库架构师', '16');
INSERT INTO `qs32_hotword` VALUES ('68787', '嵌入式项目经理', '16');
INSERT INTO `qs32_hotword` VALUES ('68795', '渠道督导', '16');
INSERT INTO `qs32_hotword` VALUES ('68796', '财务苏州', '16');
INSERT INTO `qs32_hotword` VALUES ('69249', '面料开发', '10');
INSERT INTO `qs32_hotword` VALUES ('69265', '百度平台销售总监', '15');
INSERT INTO `qs32_hotword` VALUES ('69266', '销售经理硒鼓', '15');
INSERT INTO `qs32_hotword` VALUES ('69267', '专员苏州、无锡', '15');
INSERT INTO `qs32_hotword` VALUES ('69312', '仓库发货员', '11');
INSERT INTO `qs32_hotword` VALUES ('69332', '特通专员', '14');
INSERT INTO `qs32_hotword` VALUES ('69338', '网店推广', '12');
INSERT INTO `qs32_hotword` VALUES ('69505', '网页开发工程师', '10');
INSERT INTO `qs32_hotword` VALUES ('69651', 'android程序员', '10');
INSERT INTO `qs32_hotword` VALUES ('69877', '老师', '11');
INSERT INTO `qs32_hotword` VALUES ('70050', '模具维护', '17');
INSERT INTO `qs32_hotword` VALUES ('70053', '家长指导师', '22');
INSERT INTO `qs32_hotword` VALUES ('70203', '中高级测试工程师', '16');
INSERT INTO `qs32_hotword` VALUES ('70204', '会计上岗证讲师', '15');
INSERT INTO `qs32_hotword` VALUES ('70205', '安装造价员讲师', '15');
INSERT INTO `qs32_hotword` VALUES ('70206', '土建造价员讲师', '15');
INSERT INTO `qs32_hotword` VALUES ('70207', '土建预算实务讲师', '15');
INSERT INTO `qs32_hotword` VALUES ('70208', '安装预算实务讲师', '15');
INSERT INTO `qs32_hotword` VALUES ('70210', 'flash交互工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('70211', '嵌入式硬件开发', '19');
INSERT INTO `qs32_hotword` VALUES ('70212', '模具检测技术员', '16');
INSERT INTO `qs32_hotword` VALUES ('70568', '地区办主管', '10');
INSERT INTO `qs32_hotword` VALUES ('70696', '物控主管', '13');
INSERT INTO `qs32_hotword` VALUES ('70818', 'YCM班长', '15');
INSERT INTO `qs32_hotword` VALUES ('70854', 'C++初级程序员', '10');
INSERT INTO `qs32_hotword` VALUES ('71023', '项目运营主管', '19');
INSERT INTO `qs32_hotword` VALUES ('71024', 'Draftman', '15');
INSERT INTO `qs32_hotword` VALUES ('71075', '游戏QA工程师', '15');
INSERT INTO `qs32_hotword` VALUES ('71171', '工程设备部经理', '16');
INSERT INTO `qs32_hotword` VALUES ('71546', '理财经理不管理', '22');
INSERT INTO `qs32_hotword` VALUES ('71680', '材料测试工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('71688', '计量工程师CF', '15');
INSERT INTO `qs32_hotword` VALUES ('71689', '包装工程师CF', '15');
INSERT INTO `qs32_hotword` VALUES ('71690', '董办内务助理', '15');
INSERT INTO `qs32_hotword` VALUES ('71721', 'AD客户主任南京', '15');
INSERT INTO `qs32_hotword` VALUES ('71722', '仓库主任太仓', '15');
INSERT INTO `qs32_hotword` VALUES ('71723', '仓库文员太仓', '15');
INSERT INTO `qs32_hotword` VALUES ('71724', '仓库管理员太仓', '15');
INSERT INTO `qs32_hotword` VALUES ('71725', 'AD培训主任南京', '15');
INSERT INTO `qs32_hotword` VALUES ('71726', '清洁工太仓', '15');
INSERT INTO `qs32_hotword` VALUES ('71821', '3D测量技术员CC', '15');
INSERT INTO `qs32_hotword` VALUES ('72130', '丹阳业务员', '15');
INSERT INTO `qs32_hotword` VALUES ('72131', '销售经理苏州M', '15');
INSERT INTO `qs32_hotword` VALUES ('72132', '销售经理南京K', '15');
INSERT INTO `qs32_hotword` VALUES ('72133', '工艺设计主管', '15');
INSERT INTO `qs32_hotword` VALUES ('72134', '青奥项目活动策划', '30');
INSERT INTO `qs32_hotword` VALUES ('72135', '青奥销售总监', '15');
INSERT INTO `qs32_hotword` VALUES ('72136', '青奥项目经理', '15');
INSERT INTO `qs32_hotword` VALUES ('72137', '媒体编辑', '16');
INSERT INTO `qs32_hotword` VALUES ('72138', '宜兴业务员', '15');
INSERT INTO `qs32_hotword` VALUES ('72139', '资深软装设计师', '17');
INSERT INTO `qs32_hotword` VALUES ('72377', '销售工程师济南', '10');
INSERT INTO `qs32_hotword` VALUES ('73155', '营业部总经理如皋', '15');
INSERT INTO `qs32_hotword` VALUES ('73156', '网络通信开发人员', '15');
INSERT INTO `qs32_hotword` VALUES ('73157', '移动开发人员', '15');
INSERT INTO `qs32_hotword` VALUES ('73399', '窗饰设计师', '13');
INSERT INTO `qs32_hotword` VALUES ('73507', '医院开发销售代表', '15');
INSERT INTO `qs32_hotword` VALUES ('73508', 'IOS培训师', '15');
INSERT INTO `qs32_hotword` VALUES ('73526', '产业推广经理', '30');
INSERT INTO `qs32_hotword` VALUES ('73527', '住宅项目经理', '31');
INSERT INTO `qs32_hotword` VALUES ('73868', '设计师婚纱礼服', '16');
INSERT INTO `qs32_hotword` VALUES ('73905', '医药代表江苏', '16');
INSERT INTO `qs32_hotword` VALUES ('73913', '班组长工厂', '15');
INSERT INTO `qs32_hotword` VALUES ('73914', '操作工工厂', '15');
INSERT INTO `qs32_hotword` VALUES ('73915', '研发工程师高分子', '15');
INSERT INTO `qs32_hotword` VALUES ('73916', '技术部文员', '21');
INSERT INTO `qs32_hotword` VALUES ('74030', '大型货轮船员', '12');
INSERT INTO `qs32_hotword` VALUES ('74094', 'Opennebula', '16');
INSERT INTO `qs32_hotword` VALUES ('74095', '现代农业项目经理', '16');
INSERT INTO `qs32_hotword` VALUES ('74102', '机加工工程师', '13');
INSERT INTO `qs32_hotword` VALUES ('74109', '裁床主管', '12');
INSERT INTO `qs32_hotword` VALUES ('74143', '在线客服经理', '16');
INSERT INTO `qs32_hotword` VALUES ('74144', 'Planner', '18');
INSERT INTO `qs32_hotword` VALUES ('74256', '软件系统工程师', '17');
INSERT INTO `qs32_hotword` VALUES ('74257', '物联网系统架构师', '15');
INSERT INTO `qs32_hotword` VALUES ('74258', 'CEP策划师', '15');
INSERT INTO `qs32_hotword` VALUES ('74259', '场馆技术经理VITM', '15');
INSERT INTO `qs32_hotword` VALUES ('74260', '云平台系统架构师', '15');
INSERT INTO `qs32_hotword` VALUES ('74470', '市调专员', '16');
INSERT INTO `qs32_hotword` VALUES ('74496', '废水处理操作工', '14');
INSERT INTO `qs32_hotword` VALUES ('74497', '招展部业务助理', '14');
INSERT INTO `qs32_hotword` VALUES ('74498', '销售主管零售', '14');
INSERT INTO `qs32_hotword` VALUES ('74499', '家纺花稿设计师', '14');
INSERT INTO `qs32_hotword` VALUES ('74500', '工程财务', '14');
INSERT INTO `qs32_hotword` VALUES ('74511', '车版师', '18');
INSERT INTO `qs32_hotword` VALUES ('74576', '纸样师', '59');
INSERT INTO `qs32_hotword` VALUES ('74630', '主力设计师', '12');
INSERT INTO `qs32_hotword` VALUES ('74731', '售后安装技师', '12');
INSERT INTO `qs32_hotword` VALUES ('74789', '销售工程师杭州', '11');
INSERT INTO `qs32_hotword` VALUES ('75562', '应届毕业实习生', '12');
INSERT INTO `qs32_hotword` VALUES ('75762', 'Led结构工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('75763', '初中科学教师', '10');
INSERT INTO `qs32_hotword` VALUES ('76414', '加气工', '11');
INSERT INTO `qs32_hotword` VALUES ('76424', '文案营销策划', '14');
INSERT INTO `qs32_hotword` VALUES ('76425', 'EC培训专员', '14');
INSERT INTO `qs32_hotword` VALUES ('76426', '渠道批发销售', '14');
INSERT INTO `qs32_hotword` VALUES ('76533', '教学培训生', '14');
INSERT INTO `qs32_hotword` VALUES ('76534', '考研教师', '28');
INSERT INTO `qs32_hotword` VALUES ('76535', '高考数学教师', '14');
INSERT INTO `qs32_hotword` VALUES ('76536', '考研政治教师', '15');
INSERT INTO `qs32_hotword` VALUES ('76537', '市场加盟部专员', '14');
INSERT INTO `qs32_hotword` VALUES ('76538', '事业部副总经理', '18');
INSERT INTO `qs32_hotword` VALUES ('77035', '淘宝文案', '10');
INSERT INTO `qs32_hotword` VALUES ('77078', '质安员', '10');
INSERT INTO `qs32_hotword` VALUES ('77081', '电子商务运营总监', '13');
INSERT INTO `qs32_hotword` VALUES ('80057', '县级经理', '11');
INSERT INTO `qs32_hotword` VALUES ('80165', '试衣文员', '12');
INSERT INTO `qs32_hotword` VALUES ('80633', 'IT热线服务人员', '14');
INSERT INTO `qs32_hotword` VALUES ('80635', '监控值班工程师', '14');
INSERT INTO `qs32_hotword` VALUES ('80636', '金渤商副总经理', '14');
INSERT INTO `qs32_hotword` VALUES ('80637', '国际贸易常务副总', '14');
INSERT INTO `qs32_hotword` VALUES ('80913', '医药代表浙江', '11');
INSERT INTO `qs32_hotword` VALUES ('82035', '公共事务主任', '12');
INSERT INTO `qs32_hotword` VALUES ('82471', '业务员安徽经销课', '13');
INSERT INTO `qs32_hotword` VALUES ('82481', '调味品业务代表', '11');
INSERT INTO `qs32_hotword` VALUES ('82542', '见习餐厅经理', '13');
INSERT INTO `qs32_hotword` VALUES ('83157', '检验主管', '13');
INSERT INTO `qs32_hotword` VALUES ('83158', '生产技术专员', '13');
INSERT INTO `qs32_hotword` VALUES ('83159', '基建办文员', '13');
INSERT INTO `qs32_hotword` VALUES ('83331', '医药代表安徽', '12');
INSERT INTO `qs32_hotword` VALUES ('83554', 'OTC区域经理', '21');
INSERT INTO `qs32_hotword` VALUES ('83856', '店铺库房管理员', '16');
INSERT INTO `qs32_hotword` VALUES ('84446', '助理营业员', '12');
INSERT INTO `qs32_hotword` VALUES ('84635', '第三终端销售代表', '14');
INSERT INTO `qs32_hotword` VALUES ('84678', '通信线路抢修员', '12');
INSERT INTO `qs32_hotword` VALUES ('84679', '通信线路抢修队长', '12');
INSERT INTO `qs32_hotword` VALUES ('84697', '高级营销助理', '13');
INSERT INTO `qs32_hotword` VALUES ('85145', '茶叶电话销售专员', '20');
INSERT INTO `qs32_hotword` VALUES ('86350', '钢结构生产管理', '12');
INSERT INTO `qs32_hotword` VALUES ('86351', '专用汽车营销经理', '12');
INSERT INTO `qs32_hotword` VALUES ('86352', '专用汽车经营管理', '12');
INSERT INTO `qs32_hotword` VALUES ('86353', '汽车公告', '12');
INSERT INTO `qs32_hotword` VALUES ('86354', '技改工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('86355', '钢结构副总经理', '12');
INSERT INTO `qs32_hotword` VALUES ('86356', '专用汽车业务员', '12');
INSERT INTO `qs32_hotword` VALUES ('87342', '执行统筹', '12');
INSERT INTO `qs32_hotword` VALUES ('88514', '兼职as程序员', '13');
INSERT INTO `qs32_hotword` VALUES ('88718', '医药代表江西', '13');
INSERT INTO `qs32_hotword` VALUES ('88964', '前后堂主管', '13');
INSERT INTO `qs32_hotword` VALUES ('89353', '医药代表学术专员', '11');
INSERT INTO `qs32_hotword` VALUES ('89502', 'MA运维工程师', '11');
INSERT INTO `qs32_hotword` VALUES ('89509', '中控电工', '11');
INSERT INTO `qs32_hotword` VALUES ('89511', '58同城网页设计', '11');
INSERT INTO `qs32_hotword` VALUES ('89513', '58同城电话销售', '11');
INSERT INTO `qs32_hotword` VALUES ('89514', '产品经理南昌', '11');
INSERT INTO `qs32_hotword` VALUES ('89747', '客户经理济南', '16');
INSERT INTO `qs32_hotword` VALUES ('89820', '销售部--茶水小妹', '10');
INSERT INTO `qs32_hotword` VALUES ('90071', '区域销售经理净水', '10');
INSERT INTO `qs32_hotword` VALUES ('90171', '区域独家经销商', '12');
INSERT INTO `qs32_hotword` VALUES ('90212', '维修保养技术员', '11');
INSERT INTO `qs32_hotword` VALUES ('90246', '第三终端县区经理', '11');
INSERT INTO `qs32_hotword` VALUES ('90269', '销售代表青岛', '10');
INSERT INTO `qs32_hotword` VALUES ('90301', '楼盘秘书', '10');
INSERT INTO `qs32_hotword` VALUES ('90372', '技术部经理青岛', '10');
INSERT INTO `qs32_hotword` VALUES ('90373', '项目营运经理济南', '10');
INSERT INTO `qs32_hotword` VALUES ('90374', 'ERP维护', '10');
INSERT INTO `qs32_hotword` VALUES ('90375', '高级国际贸易专员', '10');
INSERT INTO `qs32_hotword` VALUES ('90376', '机械组装工', '10');
INSERT INTO `qs32_hotword` VALUES ('90377', '普工0003', '10');
INSERT INTO `qs32_hotword` VALUES ('90378', '机刀', '11');
INSERT INTO `qs32_hotword` VALUES ('90379', '印刷副手', '10');
INSERT INTO `qs32_hotword` VALUES ('91035', '矿业销售经理', '10');
INSERT INTO `qs32_hotword` VALUES ('91252', '装饰顾问', '14');
INSERT INTO `qs32_hotword` VALUES ('91522', '室内设计专员家居', '11');
INSERT INTO `qs32_hotword` VALUES ('91523', '家具采购助理', '11');
INSERT INTO `qs32_hotword` VALUES ('91524', 'ERP实施维护专员', '11');
INSERT INTO `qs32_hotword` VALUES ('91525', '摩托车采购专员', '20');
INSERT INTO `qs32_hotword` VALUES ('91820', '医药代表山东', '14');
INSERT INTO `qs32_hotword` VALUES ('92330', 'OTC业务代表', '15');
INSERT INTO `qs32_hotword` VALUES ('93331', '机械装备技师', '10');
INSERT INTO `qs32_hotword` VALUES ('93332', '自动化专业应届生', '10');
INSERT INTO `qs32_hotword` VALUES ('93801', '地区业务代表', '12');
INSERT INTO `qs32_hotword` VALUES ('94618', '驻地业务助理', '18');
INSERT INTO `qs32_hotword` VALUES ('94620', '驻地文员', '17');
INSERT INTO `qs32_hotword` VALUES ('94621', '驻地代理或合伙人', '18');
INSERT INTO `qs32_hotword` VALUES ('94767', 'web软件开发主管', '10');
INSERT INTO `qs32_hotword` VALUES ('94768', '驻地记者', '17');
INSERT INTO `qs32_hotword` VALUES ('94796', 'CAD文员', '10');
INSERT INTO `qs32_hotword` VALUES ('94798', '临床应用医生', '15');
INSERT INTO `qs32_hotword` VALUES ('94962', '无损检验员', '10');
INSERT INTO `qs32_hotword` VALUES ('94963', '金属材料分析', '10');
INSERT INTO `qs32_hotword` VALUES ('94964', '临床应届毕业生', '11');
INSERT INTO `qs32_hotword` VALUES ('95940', '日语口译译员', '16');
INSERT INTO `qs32_hotword` VALUES ('96114', '销售代表郑州', '10');
INSERT INTO `qs32_hotword` VALUES ('97411', '地区业代', '11');
INSERT INTO `qs32_hotword` VALUES ('98766', '环保技术人员', '15');
INSERT INTO `qs32_hotword` VALUES ('98940', '销售工程师武汉', '19');
INSERT INTO `qs32_hotword` VALUES ('100720', '财产险直销经理', '13');
INSERT INTO `qs32_hotword` VALUES ('100721', '车行出单内勤', '14');
INSERT INTO `qs32_hotword` VALUES ('100727', '电销运营作业岗', '13');
INSERT INTO `qs32_hotword` VALUES ('100815', '销售经理武汉', '12');
INSERT INTO `qs32_hotword` VALUES ('101160', '销售代表武汉', '12');
INSERT INTO `qs32_hotword` VALUES ('101518', '销售工程师长沙', '10');
INSERT INTO `qs32_hotword` VALUES ('101548', '汽车租赁主管', '11');
INSERT INTO `qs32_hotword` VALUES ('101551', '汽车租赁师', '16');
INSERT INTO `qs32_hotword` VALUES ('101898', '医药代表湖北', '15');
INSERT INTO `qs32_hotword` VALUES ('106142', '县级OTC业务人员', '13');
INSERT INTO `qs32_hotword` VALUES ('106318', '实验研究工程师', '12');
INSERT INTO `qs32_hotword` VALUES ('106399', '连锁门店主管', '16');
INSERT INTO `qs32_hotword` VALUES ('107133', '医药代表湖南', '12');
INSERT INTO `qs32_hotword` VALUES ('108116', '车板师', '21');
INSERT INTO `qs32_hotword` VALUES ('108125', '黄金交易学员', '10');
INSERT INTO `qs32_hotword` VALUES ('108309', '招电脑打字、兼职', '17');
INSERT INTO `qs32_hotword` VALUES ('108325', '打字录入兼职数名', '17');
INSERT INTO `qs32_hotword` VALUES ('109078', '旅游销售精英', '12');
INSERT INTO `qs32_hotword` VALUES ('109436', '跟单主管', '11');
INSERT INTO `qs32_hotword` VALUES ('116421', '民品营销副总', '22');
INSERT INTO `qs32_hotword` VALUES ('117162', '销售工程师成都', '24');
INSERT INTO `qs32_hotword` VALUES ('117559', '销售代表成都', '11');
INSERT INTO `qs32_hotword` VALUES ('121640', '川内外埠主管经理', '13');
INSERT INTO `qs32_hotword` VALUES ('122289', '县级终端承包经理', '21');
INSERT INTO `qs32_hotword` VALUES ('124097', '医药代表陕西', '20');
INSERT INTO `qs32_hotword` VALUES ('126529', '医院销售区域经理', '14');
INSERT INTO `qs32_hotword` VALUES ('127200', '医药代表云南', '15');
INSERT INTO `qs32_hotword` VALUES ('127775', '沼气营销业务代表', '14');

-- ----------------------------
-- Table structure for qs32_hrtools
-- ----------------------------
DROP TABLE IF EXISTS `qs32_hrtools`;
CREATE TABLE `qs32_hrtools` (
  `h_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `h_typeid` smallint(5) unsigned NOT NULL,
  `h_filename` varchar(200) NOT NULL,
  `h_fileurl` varchar(200) NOT NULL,
  `h_order` int(10) NOT NULL DEFAULT '0',
  `h_color` varchar(7) NOT NULL,
  `h_strong` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1096 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_hrtools
-- ----------------------------
INSERT INTO `qs32_hrtools` VALUES ('1', '1', '录用通知书', 'data/hrtools/2008010802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('2', '1', '招聘人员登记表', 'data/hrtools/200210994843.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('3', '1', '录用决定', 'data/hrtools/2008010401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('4', '1', '新员工入职手续清单', 'data/hrtools/2008010202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('5', '1', '背景调查电话交流记录表', 'data/hrtools/2008010201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('6', '1', '招聘评估报告', 'data/hrtools/2007122702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('7', '1', '人事文员专业知识考核试卷', 'data/hrtools/2007121801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('8', '1', '招聘统计分析', 'data/hrtools/2007110702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('9', '1', '面试评分要点', 'data/hrtools/2007110701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('10', '1', '办公室主任面试评价表', 'data/hrtools/2007060601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('11', '1', '新员工综合信息登记表', 'data/hrtools/2007041101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('12', '1', '招聘工作流程', 'data/hrtools/2007040302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('13', '1', '面试测评问题表', 'data/hrtools/2007030302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('14', '1', '现代企业薪资福利设计与操作工具表单', 'data/hrtools/2007010702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('15', '1', '个性特质测量表', 'data/hrtools/2007010701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('16', '1', '招聘启事的写作格式和内容', 'data/hrtools/2006120901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('17', '1', '人员补充申请表', 'data/hrtools/2006101502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('18', '1', '企业员工中途录用调查表', 'data/hrtools/2006100801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('19', '1', '应聘人员登记审批表', 'data/hrtools/2006082501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('20', '1', '招聘需求申报表', 'data/hrtools/2006081802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('21', '1', '人员招募作业办法', 'data/hrtools/2006081702.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('22', '1', '人员征募申请表', 'data/hrtools/2006081201.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('23', '1', '报到程序单', 'data/hrtools/2006080202.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('24', '1', '高级费用成本会计岗位手册', 'data/hrtools/2006072201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('25', '1', '入职手续清单', 'data/hrtools/2006062902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('26', '1', '面试评价记录表', 'data/hrtools/2006062901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('27', '1', '面试评估表', 'data/hrtools/2006060102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('28', '1', '招聘面试综合分析报告', 'data/hrtools/20060601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('29', '1', '应聘个人情况表', 'data/hrtools/20060530002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('30', '1', '招聘申请执行单', 'data/hrtools/2006053001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('31', '1', '某知名合资企业面试测评表', 'data/hrtools/2006021001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('32', '1', '应征人员登记表', 'data/hrtools/2005091402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('33', '1', '聘约人员任用核定表格', 'data/hrtools/2005082402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('34', '1', '企业聘用人员任用表', 'data/hrtools/2005062202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('35', '1', '兼职面试录用检查表', 'data/hrtools/2005062201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('36', '1', '委托招聘申请表', 'data/hrtools/2005062002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('37', '1', '企业保证条件规定表', 'data/hrtools/2005062001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('38', '1', '职位分析面谈表', 'data/hrtools/2005052502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('39', '1', '面试评分标准表', 'data/hrtools/2005052501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('40', '1', '招聘人员职位描述表', 'data/hrtools/2005050901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('41', '1', '模拟应聘评估表', 'data/hrtools/2005030901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('42', '1', '面谈构成表', 'data/hrtools/2002109110259.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('43', '1', '面谈考评用表', 'data/hrtools/2005022802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('44', '1', '操作人员工作应聘表', 'data/hrtools/2005022801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('45', '1', '教育状况确认书', 'data/hrtools/2005011402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('46', '1', '招聘录用应届毕业生制度', 'data/hrtools/2005011102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('47', '1', '招聘面试管理制度', 'data/hrtools/2005011101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('48', '1', '人员录用制度', 'data/hrtools/2005010601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('49', '1', '招聘渠道评估表', 'data/hrtools/2004121302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('50', '1', '临时工人员雇用资料表', 'data/hrtools/2004121301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('51', '1', '公司技术能力的知识检查表', 'data/hrtools/2004719155833.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('52', '1', '关于应聘者情况的电话交流记录', 'data/hrtools/2004719155817.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('53', '1', '员工离职结算', 'data/hrtools/200475142723.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('54', '1', '录用通知单', 'data/hrtools/200475142700.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('55', '1', '吸烟政策', 'data/hrtools/2004519152847.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('56', '1', '面试人员测评表', 'data/hrtools/2004519152821.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('57', '1', '任职同意书', 'data/hrtools/2004412163545.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('58', '1', '招聘人员测评表', 'data/hrtools/200447114507.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('59', '1', '招聘面试记录表', 'data/hrtools/200447114447.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('60', '1', '应聘报名申请表', 'data/hrtools/2004330152212.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('61', '1', '招聘进程表', 'data/hrtools/2004315164719.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('62', '1', '招聘事项表', 'data/hrtools/2004315164635.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('63', '1', '人员甄选录用管理制度', 'data/hrtools/200439154804.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('64', '1', '员工甄选及任用管理办法', 'data/hrtools/200439154747.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('65', '1', '内部人员求职申请表', 'data/hrtools/2004216114805.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('66', '1', '外部人员求职申请表', 'data/hrtools/2004216114623.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('67', '1', '录用员工报到通知书', 'data/hrtools/2004131171319.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('68', '1', '人事部年度招聘计划报批表', 'data/hrtools/20031231151420.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('69', '1', '员工每月工作状况考核表', 'data/hrtools/20031217151405.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('70', '1', '员工引荐担保书', 'data/hrtools/20031217151047.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('71', '1', '不录用通知', 'data/hrtools/2003126144701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('72', '1', '新员工甄选报告表', 'data/hrtools/20031124165523.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('73', '1', '面试约见时间表', 'data/hrtools/20031113142415.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('74', '1', '招聘申请表', 'data/hrtools/20031110154612.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('76', '1', '应聘人员复试表', 'data/hrtools/2002109110349.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('77', '1', '新员工试用申请核定表', 'data/hrtools/2002109110635.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('78', '1', '求职者基本情况登记表', 'data/hrtools/2002109110701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('79', '1', '面谈记录表', 'data/hrtools/2002109110309.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('80', '1', '面谈构成表', 'data/hrtools/2002109110259.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('81', '1', '面试评价表', 'data/hrtools/2002109110247.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('82', '1', '面试表', 'data/hrtools/2002109110235.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('83', '1', '年度招聘计划报批表', 'data/hrtools/2002109110727.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('84', '2', '预算部职能说明', 'data/hrtools/2007082702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('85', '2', '劳动工资员岗位职责', 'data/hrtools/2007030301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('86', '2', '客户服务部经理工作职责', 'data/hrtools/2007012902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('87', '2', '职位说明书营销总监', 'data/hrtools/2007012901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('88', '2', '系统分析员职位说明书', 'data/hrtools/2007011302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('89', '2', '职位说明书-系统开发工程师', 'data/hrtools/2007071301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('90', '2', '职位说明书-高级程序员', 'data/hrtools/2006120902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('91', '2', '企业档案存放表', 'data/hrtools/2006102402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('92', '2', '企业档案调阅单', 'data/hrtools/2006102401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('93', '2', '财务中心总经理岗位手册表', 'data/hrtools/2006082902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('94', '2', '职务说明书-QE', 'data/hrtools/2006072901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('95', '2', '标准职位说明书样本', 'data/hrtools/2006072602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('96', '2', '职务调查表', 'data/hrtools/2006072601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('97', '2', '电子公司岗位责任书', 'data/hrtools/2006052701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('98', '2', '业务部门每月工作任务书', 'data/hrtools/2006032402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('99', '2', '企划管理类职权划分表', 'data/hrtools/2006032401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('100', '2', '企业归档案卷记录表', 'data/hrtools/2006021303.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('101', '2', '总裁办公室主任职位说明书', 'data/hrtools/2005081702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('102', '2', '某电子公司?位?任?', 'data/hrtools/2005081701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('103', '2', '培训主管岗位职责说明', 'data/hrtools/2005071102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('104', '2', '人事部部长岗位职责', 'data/hrtools/2005071101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('105', '2', '职位说明书：检测员', 'data/hrtools/2005061003.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('106', '2', '职位说明书：人力资源顾问', 'data/hrtools/2005061002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('107', '2', '出纳员职务说明书', 'data/hrtools/2005061001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('108', '2', '机械维修主管岗位工作说明书', 'data/hrtools/2005060202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('109', '2', '品保部经理岗位工作说明书', 'data/hrtools/2005060201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('110', '2', '财务总监职务描述', 'data/hrtools/2005051802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('111', '2', '财务经理职务说明书', 'data/hrtools/2005051801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('112', '2', '企业人员编制变更申请表', 'data/hrtools/2005050902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('113', '2', '总经理工作职能标准', 'data/hrtools/2005040601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('114', '2', '行政主任岗位职责说明书', 'data/hrtools/2005030103.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('115', '2', '工作说明书-人力资源管理类', 'data/hrtools/2005030102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('116', '2', '工作说明书--营销经理', 'data/hrtools/2005030101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('117', '2', '职位说明书：客户代表', 'data/hrtools/2005012203.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('118', '2', '职位说明书：销售总监', 'data/hrtools/2005012202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('119', '2', '职位说明书：绩效考核主管', 'data/hrtools/2005012201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('120', '2', '总经理助理岗位职责', 'data/hrtools/2005010602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('121', '2', '员工档案表', 'data/hrtools/2004112902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('122', '2', '背景调查表', 'data/hrtools/200434172045.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('123', '2', '工作评价表', 'data/hrtools/200434171743.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('124', '2', '人事管理工作事项责权划分表', 'data/hrtools/20031211152451.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('125', '2', '从业人员登记表', 'data/hrtools/20031016154618.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('126', '2', '年度所需增补人力类别表', 'data/hrtools/2003829143438.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('127', '2', '主管人员研习班意见调查表', 'data/hrtools/2003827143158.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('128', '2', '人员增加说明表', 'data/hrtools/2003827142738.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('129', '2', '人员需求申请表', 'data/hrtools/2003816110816.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('130', '2', '人员增减申请书', 'data/hrtools/200388143424.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('131', '2', '员工培训计划', 'data/hrtools/2003619154206.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('132', '2', '员工职位变动通知单', 'data/hrtools/2003619154152.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('133', '2', '招聘申请书', 'data/hrtools/2002109111910.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('134', '2', '增补人员申请书', 'data/hrtools/2002109111903.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('135', '2', '员工招聘申请书', 'data/hrtools/2002109111850.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('136', '2', '员工人事资料卡', 'data/hrtools/2002109111840.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('137', '2', '员工档案', 'data/hrtools/2002109111830.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('138', '2', '人员增补申请表', 'data/hrtools/2002109111817.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('139', '2', '人事作业程序', 'data/hrtools/2002109111806.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('140', '2', '人事资料记录表', 'data/hrtools/2002109111752.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('141', '2', '人事资料表', 'data/hrtools/2002109111314.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('142', '2', '人事日报表', 'data/hrtools/2002109111305.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('143', '2', '人事流动月报表', 'data/hrtools/2002109111247.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('144', '2', '人事考核制度', 'data/hrtools/2002109111229.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('145', '2', '人事管理制度样例', 'data/hrtools/2002109111211.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('146', '2', '人事管理的程序与规则', 'data/hrtools/2002109111201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('147', '2', '人事动态及费用资料表', 'data/hrtools/2002109111148.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('148', '2', '人事登记表', 'data/hrtools/2002109111133.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('149', '2', '人事部门月报表', 'data/hrtools/2002109111119.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('150', '2', '人事变更报告单', 'data/hrtools/2002109111109.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('151', '2', '人事变动申请表', 'data/hrtools/2002109111059.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('152', '2', '管理人员升迁计划表', 'data/hrtools/2002109111046.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('153', '2', '管理人才储备表', 'data/hrtools/2002109111032.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('154', '2', '岗位职务说明书', 'data/hrtools/2002109111022.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('155', '2', '人事档案管理制度', 'data/hrtools/2002109110951.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('156', '3', '职员保证书', 'data/hrtools/2008100402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('157', '3', '岗位轮换制度', 'data/hrtools/2007121802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('158', '3', '销毁文件登记表', 'data/hrtools/2007121202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('159', '3', '员工手册（制造类）', 'data/hrtools/2007121201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('160', '3', '某电子公司人力资源管理程序', 'data/hrtools/2007120402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('161', '3', '工厂人事制度范本精华-厂规厂纪', 'data/hrtools/2007120401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('162', '3', '公司员工暂借款管理办法', 'data/hrtools/2007112201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('163', '3', '工伤报告单', 'data/hrtools/2007112002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('164', '3', '保安值勤管理制度', 'data/hrtools/2007112001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('165', '3', '人力资源统计分析(空表）', 'data/hrtools/2007111302.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('166', '3', '免交社保申请书', 'data/hrtools/2007111301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('167', '3', '模具工段员工岗位资格矩阵表', 'data/hrtools/2007103102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('168', '3', '人力资源规划操作手册', 'data/hrtools/2007103101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('169', '3', '员工行为礼仪规范文本', 'data/hrtools/2007102902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('170', '3', '新员工入职须知', 'data/hrtools/2007102901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('171', '3', '机动班工段员工岗位资格矩阵1', 'data/hrtools/2007102602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('172', '3', '岗位人员矩阵图', 'data/hrtools/2007102601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('173', '3', '企业综合工作情况测量表', 'data/hrtools/2007090602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('174', '3', '人事管理的程序与规则', 'data/hrtools/2007082701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('175', '3', '办公室物资管理规定', 'data/hrtools/2007082001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('176', '3', '员工处罚条件规定', 'data/hrtools/2007081602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('177', '3', '员工奖惩制度范本', 'data/hrtools/2007081601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('178', '3', '电话管理规定', 'data/hrtools/2007080602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('179', '3', '安全保卫制度', 'data/hrtools/2007080601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('180', '3', '部门临时人员管理办法', 'data/hrtools/2007080101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('181', '3', '行政检查表', 'data/hrtools/2007051901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('182', '3', '员工职位变动通知单', 'data/hrtools/2007043002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('183', '3', '员工岗位聘用办法', 'data/hrtools/2007042902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('184', '3', '员工着装管理规定', 'data/hrtools/2007042602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('185', '3', '员工配用公车管理规定', 'data/hrtools/2007042601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('186', '3', '员工食堂管理规定', 'data/hrtools/2007041902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('187', '3', '员工请假休假管理规定', 'data/hrtools/2007041901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('188', '3', '员工奖惩细则', 'data/hrtools/2007041702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('189', '3', '员工离职处理细则', 'data/hrtools/2007041701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('190', '3', '内部客户投诉管理办法', 'data/hrtools/2007040502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('191', '3', '奖惩建立申请单', 'data/hrtools/2007040301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('192', '3', '工资管理操作手册', 'data/hrtools/2007032302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('193', '3', '5S车间作业指导书', 'data/hrtools/2007032301.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('194', '3', '公司办公室发文处理程序', 'data/hrtools/2007022602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('195', '3', '经理人员述职报告', 'data/hrtools/2007022601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('196', '3', '个人申报规定', 'data/hrtools/2007020501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('197', '3', '文件收发规定', 'data/hrtools/2007010502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('198', '3', '询证函', 'data/hrtools/2007010501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('199', '3', '对员工违规行为的处理执行记录', 'data/hrtools/2006122902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('200', '3', '从业员退休申请书', 'data/hrtools/2006122901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('201', '3', '人事部部长岗位职责', 'data/hrtools/2006122602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('202', '3', '行政奖罚标准作业规程', 'data/hrtools/2006122601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('203', '3', '公司职工计划生育管理办法', 'data/hrtools/2006122301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('204', '3', '人事权限划分表', 'data/hrtools/2006120502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('205', '3', '人事决策权一览表', 'data/hrtools/2006120501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('206', '3', '公司内事故发生报告书', 'data/hrtools/2006112702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('207', '3', '人事管理资料卡', 'data/hrtools/2006112701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('208', '3', '现职人员综合日报表', 'data/hrtools/2006111601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('209', '3', '短途旅费申请表', 'data/hrtools/2006110902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('210', '3', '企业员工日常事务管理表格', 'data/hrtools/2006110901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('211', '3', '资遣通知单', 'data/hrtools/2006110702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('212', '3', '工作催办单', 'data/hrtools/2006110701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('213', '3', '日常借款管理规定', 'data/hrtools/2006103102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('214', '3', '出门证统计表', 'data/hrtools/2006101501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('215', '3', '十佳员工提名表', 'data/hrtools/2006091801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('216', '3', '工亡补偿协议书', 'data/hrtools/2006091302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('217', '3', '人事动态和费用资料表', 'data/hrtools/2006090701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('218', '3', '财务中心行政助理岗位手册表', 'data/hrtools/2006082602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('219', '3', '部门工作分类表', 'data/hrtools/2006082601.rtf', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('220', '3', '核决权限规则', 'data/hrtools/2006081202.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('221', '3', '临时人员申请表', 'data/hrtools/2006081002.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('222', '3', '工作传单', 'data/hrtools/2006081001.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('223', '3', '外出登记簿', 'data/hrtools/2006080402.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('224', '3', '奖助备案申请表', 'data/hrtools/2006072402.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('225', '3', '解除终止劳动合同审批表', 'data/hrtools/2006043002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('226', '3', '人事通报表', 'data/hrtools/2006043001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('227', '3', '奖惩公告', 'data/hrtools/2006042801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('228', '3', '企业文化共识化调查', 'data/hrtools/2006040402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('229', '3', '测试员工适合部门表格', 'data/hrtools/2006040401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('230', '3', '书面警告记录样本', 'data/hrtools/2006032903.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('231', '3', '口头警告样本', 'data/hrtools/2006032902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('232', '3', '公开个人资料认可书', 'data/hrtools/2006032901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('233', '3', '每周活动报告书', 'data/hrtools/2006031802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('234', '3', '反馈员工指导工作表', 'data/hrtools/206031801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('235', '3', '职业生涯阶段界定表', 'data/hrtools/2006031503.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('236', '3', '提高能力方法表', 'data/hrtools/2006031502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('237', '3', '电子公司岗位责任书', 'data/hrtools/2006031501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('238', '3', '最易承担的管理角色分析表', 'data/hrtools/2006030803.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('239', '3', '团队建设原则表', 'data/hrtools/2006030802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('240', '3', '授权条件表', 'data/hrtools/2006030602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('241', '3', '人员工作量汇总表', 'data/hrtools/2006022102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('242', '3', '公司书刊管理办法', 'data/hrtools/2006022101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('243', '3', '授权工作清单', 'data/hrtools/2006021802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('244', '3', '公司个人办公PC登记表', 'data/hrtools/2006021501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('245', '3', '公司行动工作日志表', 'data/hrtools/2006021302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('246', '3', '企业工作内容调查日报表', 'data/hrtools/2006021301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('247', '3', '出入厂管理规则', 'data/hrtools/2006020701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('248', '3', '工作调动申请书的格式', 'data/hrtools/2005092602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('249', '3', '员工改善提案实施成效表', 'data/hrtools/2005092102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('250', '3', '员工纪律处分通知表', 'data/hrtools/2005092101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('251', '3', '个人优缺点平衡表', 'data/hrtools/2005090502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('252', '3', '人事动态及费用控制表', 'data/hrtools/2005090501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('253', '3', '请示处理单', 'data/hrtools/2005081002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('254', '3', '企业保证人条件规定表', 'data/hrtools/2005081001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('255', '3', '职工工作日志', 'data/hrtools/2005073001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('256', '3', '人事接受函', 'data/hrtools/2005072302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('257', '3', '工作条件规定表', 'data/hrtools/2005072301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('258', '3', '企业人员状况记录表', 'data/hrtools/2005071802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('259', '3', '企业现有人数统计表', 'data/hrtools/2005071801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('260', '3', '企业员工工伤报告表', 'data/hrtools/2005051601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('261', '3', '员工医疗补贴规定', 'data/hrtools/2005051102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('262', '3', '值日值夜及餐费给付办法', 'data/hrtools/2005012803.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('263', '3', '员工着装管理规定', 'data/hrtools/2005012802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('264', '3', '员工打卡管理规定', 'data/hrtools/2005012801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('265', '3', '员工轮休办法', 'data/hrtools/2005012503.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('266', '3', '春节放假细则', 'data/hrtools/2005012502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('267', '3', '值勤细则', 'data/hrtools/2005012501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('268', '3', '员工上下班遵守细则', 'data/hrtools/2005012003.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('269', '3', '员工给假细则', 'data/hrtools/2005012002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('270', '3', '员工给假实施细则', 'data/hrtools/2005012001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('271', '3', '所有员工当日活动时间记录', 'data/hrtools/2005011401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('272', '3', '外销主管岗位工作说明书', 'data/hrtools/2005011202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('273', '3', '统计规划助理员工作说明书', 'data/hrtools/2005011201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('274', '3', '人事管理制度总则', 'data/hrtools/2005010303.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('275', '3', '事务处理制度', 'data/hrtools/2005010302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('276', '3', '人事管理规章', 'data/hrtools/20050103.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('277', '3', '服务自愿书', 'data/hrtools/2004110502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('278', '3', '员工发展规划表', 'data/hrtools/2004110302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('279', '3', '员工工作轮换登记卡', 'data/hrtools/2004110301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('280', '3', '业务改善检讨表', 'data/hrtools/2004103001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('281', '3', '职位说明书：销售代表', 'data/hrtools/2004621144311.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('282', '3', '职位说明书：销售统计员', 'data/hrtools/2004621144042.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('283', '3', '职位说明书：电话销售代表', 'data/hrtools/2004621143843.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('284', '3', '工作评价总结表', 'data/hrtools/2004512150407.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('285', '3', '职工奖惩条例', 'data/hrtools/2004512150349.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('286', '3', '离职移交清单', 'data/hrtools/200441101848.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('287', '3', '人事主管岗位职责', 'data/hrtools/200441101822.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('288', '3', '员工特殊事项纪录表', 'data/hrtools/2004318162422.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('289', '3', '计件工资幅度调查表', 'data/hrtools/2004318162406.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('290', '3', '新进员工教育成果检测表', 'data/hrtools/2004223165223.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('291', '3', '月份员工统计表', 'data/hrtools/2004223165154.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('292', '3', '奖惩申报表', 'data/hrtools/2004211160827.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('293', '3', '人事流动月报表', 'data/hrtools/20042492933.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('294', '3', '人员需求估计表', 'data/hrtools/2004112150142.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('295', '3', '奖惩建议申请单', 'data/hrtools/2004112145837.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('296', '3', '职员统一薪金等级表', 'data/hrtools/200412154836.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('297', '3', '月度用餐统计表', 'data/hrtools/20031229104927.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('298', '3', '在职训练结训报表', 'data/hrtools/2003124155617.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('299', '3', '新进职员研修事项检查表', 'data/hrtools/2003124155316.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('300', '3', '员工职务等级划分表', 'data/hrtools/2003111101156.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('301', '3', '人员保证记录表', 'data/hrtools/2003106155958.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('302', '3', '工作出勤表', 'data/hrtools/2003106155642.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('303', '3', '工作内容说明书', 'data/hrtools/2003924140507.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('304', '3', '部门工作分配表', 'data/hrtools/200399154008.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('305', '3', '公伤报告单', 'data/hrtools/200387111347.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('306', '3', '值班餐费申请单', 'data/hrtools/200387111335.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('307', '3', '员工保证书', 'data/hrtools/20038295343.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('308', '3', '员工考勤纪录表', 'data/hrtools/2003717102531.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('309', '3', '综合工作情况表', 'data/hrtools/2002109112347.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('310', '3', '职务分配表', 'data/hrtools/2002109112337.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('311', '3', '员工任免通知书', 'data/hrtools/2002109112323.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('312', '3', '员工奖惩月报表', 'data/hrtools/2002109112314.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('313', '3', '员工奖惩建议申请表', 'data/hrtools/2002109112302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('314', '3', '员工奖惩登记表', 'data/hrtools/2002109112253.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('315', '3', '员工工资变动申请表', 'data/hrtools/2002109112240.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('316', '3', '员工岗位变动通知书', 'data/hrtools/2002109112232.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('317', '3', '员工到职单', 'data/hrtools/2002109112222.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('318', '3', '员工处罚条件参照表', 'data/hrtools/2002109112211.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('319', '3', '引荐担保书', 'data/hrtools/2002109112204.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('320', '3', '业务员工作日报', 'data/hrtools/2002109112153.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('321', '3', '人员调职申请书', 'data/hrtools/2002109112142.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('322', '3', '人员调动申请单', 'data/hrtools/2002109112132.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('323', '3', '请购单', 'data/hrtools/2002109112120.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('324', '3', '奖惩登记表', 'data/hrtools/2002109112104.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('325', '3', '纪律处分通知书', 'data/hrtools/2002109112052.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('326', '3', '公司奖励种类一览表', 'data/hrtools/2002109112045.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('327', '3', '公司纪律规定', 'data/hrtools/2002109112036.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('328', '3', '工作说明书', 'data/hrtools/2002109112027.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('329', '3', '工作内容调查日报表', 'data/hrtools/2002109112018.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('330', '3', '面谈构成表', 'data/hrtools/051019x.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('331', '3', '职员品行评述表', 'data/hrtools/1.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('332', '3', '职员品行考核表', 'data/hrtools/2.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('333', '3', '职员品行分析表', 'data/hrtools/3.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('334', '3', '员工奖惩申请建议书', 'data/hrtools/4.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('335', '4', '最新劳动合同样本（2008）', 'data/hrtools/2007112408.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('336', '4', '以完成一定工作任务为期限劳动合同范本', 'data/hrtools/2007112407.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('337', '4', '无固定期限劳动合同范本（新）', 'data/hrtools/2007112406.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('338', '4', '劳务派遣劳动合同范本（新）', 'data/hrtools/2007112405.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('339', '4', '江西省劳动合同范本（新）', 'data/hrtools/2007112404.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('340', '4', '固定期限劳动合同范本（新）', 'data/hrtools/2007112403.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('341', '4', '非全日制从业人员使用劳动合同范本（新）', 'data/hrtools/2007112402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('342', '4', '东莞市职工劳动合同范本（新）', 'data/hrtools/2007112401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('343', '4', '中外合资经营合同（中英文）', 'data/hrtools/2007031901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('344', '4', '劳动合同（英文版）', 'data/hrtools/2007031202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('345', '4', '国际劳务合同', 'data/hrtools/2007031201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('346', '4', '中外劳务合同', 'data/hrtools/2007030102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('347', '4', '技术保密合同书', 'data/hrtools/2007030101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('348', '4', '集体劳动合同', 'data/hrtools/2007020702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('349', '4', '介绍信格式范本', 'data/hrtools/2007020701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('350', '4', '实习合约', 'data/hrtools/2007020502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('351', '4', '借调合同', 'data/hrtools/2007020202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('352', '4', '借用人员劳务协议', 'data/hrtools/2007020201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('353', '4', '聘请外籍工作人员合同', 'data/hrtools/2007012502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('354', '4', '教育系统聘用合同', 'data/hrtools/2007011002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('355', '4', '反竞争协议样本', 'data/hrtools/2007011001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('356', '4', '企业员工保密合同', 'data/hrtools/2006120701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('357', '4', '企业员工竞业限制合同', 'data/hrtools/2006120702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('358', '4', '保证书规约', 'data/hrtools/2006111402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('359', '4', '聘书', 'data/hrtools/2006111401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('360', '4', '面试核定表', 'data/hrtools/2006080802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('361', '4', '新进人员任用表', 'data/hrtools/2006080401.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('362', '4', '签约核准表', 'data/hrtools/2006072101.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('363', '4', '甄询记录表', 'data/hrtools/2006060602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('364', '4', '解除劳动合同通知书', 'data/hrtools/2006060601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('365', '4', '劳动合同顺延通知书', 'data/hrtools/2006041202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('366', '4', '解除劳动合同协议书', 'data/hrtools/2006041201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('367', '4', '终止劳动合同通知书', 'data/hrtools/2006041003.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('368', '4', '劳动合同中止确认书', 'data/hrtools/2006041002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('369', '4', '劳动合同变更协议书', 'data/hrtools/200604101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('370', '4', '劳动合同签订意向调查表', 'data/hrtools/2006040602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('371', '4', 'AA公司劳动合同续订书', 'data/hrtools/2006040601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('372', '4', '外商投资企业劳动合同说明', 'data/hrtools/2006031303.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('373', '4', '全员劳动合同书', 'data/hrtools/2006031302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('374', '4', '化工行业劳动合同书', 'data/hrtools/2006031301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('375', '4', '外籍工作人员聘请合同', 'data/hrtools/2005080801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('376', '4', '中外合资企业劳动合同', 'data/hrtools/2005070102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('377', '4', '解除劳动合同证明书', 'data/hrtools/2005070101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('378', '4', '雇佣合同书范本', 'data/hrtools/2005061401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('379', '4', '经营财务人员保证书', 'data/hrtools/2005031602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('380', '4', '保守商业秘密协议', 'data/hrtools/2005031601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('381', '4', '外商投资企业劳动合同', 'data/hrtools/2005031401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('382', '4', '兼职员工工作契约书', 'data/hrtools/2005011802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('383', '4', '劳动合同签收备案表', 'data/hrtools/2004122002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('384', '4', '学生实习协议', 'data/hrtools/2004120903.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('385', '4', '劳动争议调解协议书', 'data/hrtools/2004120603.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('386', '4', '劳动争议调解申请书', 'data/hrtools/2004120602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('387', '4', '变更终止解除劳动合同通书', 'data/hrtools/2004120601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('388', '4', '劳动合同顺延登记表', 'data/hrtools/2004714142636.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('389', '4', '劳动合同中止继续履行审批表', 'data/hrtools/2004714142621.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('390', '4', '职员试用通知单', 'data/hrtools/2002109112727.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('391', '4', '招聘（录用）通知单', 'data/hrtools/2002109112719.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('392', '4', '员工聘用制度', 'data/hrtools/2002109112711.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('393', '4', '员工到职单', 'data/hrtools/2002109112705.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('394', '4', '新员工甄选比较表', 'data/hrtools/2002109112657.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('395', '4', '新员工甄选报告表', 'data/hrtools/2002109112649.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('396', '4', '新员工试用考察表', 'data/hrtools/2002109112639.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('397', '4', '新员工试用表', 'data/hrtools/2002109112632.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('398', '4', '试用员工考核表', 'data/hrtools/2002109112624.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('399', '4', '试用合同书', 'data/hrtools/2002109112616.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('400', '4', '试用察看通知单', 'data/hrtools/2002109112603.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('401', '4', '试用查看通知', 'data/hrtools/2002109112556.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('402', '4', '试用保证书', 'data/hrtools/2002109112546.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('403', '4', '人员试用标准', 'data/hrtools/2002109112533.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('404', '4', '聘约人员任用核定表', 'data/hrtools/2002109112524.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('405', '4', '聘任书', 'data/hrtools/2002109112516.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('406', '4', '劳动合同管理规定', 'data/hrtools/2002109112455.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('407', '5', '纳税申报文书填写使用说明', 'data/hrtools/2007112202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('408', '5', '2007年绩效考核标准表', 'data/hrtools/2007110502.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('409', '5', '机动班工段员工岗位资格矩阵表', 'data/hrtools/2007110501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('410', '5', 'XX公司停薪留职规定', 'data/hrtools/2007101602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('411', '5', '不动产业薪资制度', 'data/hrtools/2007101601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('412', '5', '企业奖金管理制度', 'data/hrtools/2007101102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('413', '5', '部门薪水调整表', 'data/hrtools/2007101101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('414', '5', '薪酬管理章程', 'data/hrtools/2007100802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('415', '5', '国际工作派遣补贴表示例', 'data/hrtools/2007100801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('416', '5', '工资报告单', 'data/hrtools/2007092802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('417', '5', '给予驻外人员的津贴类型', 'data/hrtools/2007092801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('418', '5', '工资单补充表', 'data/hrtools/2007092602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('419', '5', '工资标准及发放办法', 'data/hrtools/2007092601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('420', '5', '工资预算表', 'data/hrtools/2007092402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('421', '5', '公司薪水调整表', 'data/hrtools/2007092401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('422', '5', '计件工资调整报告单', 'data/hrtools/2007091902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('423', '5', '机械制造业薪资制度', 'data/hrtools/2007091901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('424', '5', '计时工资核定表', 'data/hrtools/2007091702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('425', '5', '家电制造业薪资制度', 'data/hrtools/2007091701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('426', '5', '津贴及奖金制度', 'data/hrtools/2007091302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('427', '5', '某企业员工退休金领取证书', 'data/hrtools/2007091301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('428', '5', '计件工资管理办法', 'data/hrtools/2007091102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('429', '5', '技能工资管理规定', 'data/hrtools/2007091101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('430', '5', '薪资调查表', 'data/hrtools/2007090802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('431', '5', '最低工资率测算方法', 'data/hrtools/2007090801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('432', '5', '制订最低工资确定办法', 'data/hrtools/2007082902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('433', '5', '报酬待遇管理规定', 'data/hrtools/2007082901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('434', '5', '薪资与福利管理', 'data/hrtools/2007080102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('435', '5', '销售人员绩效奖金发放办法', 'data/hrtools/2007051902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('436', '5', '员工工资管理规程', 'data/hrtools/2007043001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('437', '5', '某电子公司员工薪资制度', 'data/hrtools/2007040501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('438', '5', '薪资福利设计表单', 'data/hrtools/2007033102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('439', '5', '薪资等级构成表', 'data/hrtools/2007033101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('440', '5', '销售团队薪酬激励的设计', 'data/hrtools/2007031602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('441', '5', '销售人员工资管理办法', 'data/hrtools/2007031601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('442', '5', '员工健康安全福利制度', 'data/hrtools/2006121802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('443', '5', '员工家族生活补助费支给办法', 'data/hrtools/2006121801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('444', '5', '员工公伤补助费支给办法', 'data/hrtools/2006112102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('445', '5', '福利预算表', 'data/hrtools/2006090402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('446', '5', '福利管理工作的境界检查表', 'data/hrtools/2006090401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('447', '5', '企业自主福利项目开发方案设计表', 'data/hrtools/2006083102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('448', '5', '福利工作策略标准检查表', 'data/hrtools/2006083101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('449', '5', '职级对照暨薪资级距表', 'data/hrtools/2006071702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('450', '5', '膳杂费申请表', 'data/hrtools/2006071701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('451', '5', '薪资管理问题与困境解决表', 'data/hrtools/2006070802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('452', '5', '其他工资调整类型检查表', 'data/hrtools/2006070801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('453', '5', '薪资调整沟通工具表单', 'data/hrtools/2006062102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('454', '5', '工资发放管理检查表', 'data/hrtools/2006062101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('455', '5', '企业员工工资信息表', 'data/hrtools/2006061602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('456', '5', '工资福利市场调查方案设计', 'data/hrtools/2006061601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('457', '5', '工资管理政策检查表', 'data/hrtools/2006061402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('458', '5', '项目奖金规划表', 'data/hrtools/2006061401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('459', '5', '具体职位工资标准设计表', 'data/hrtools/2006052702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('460', '5', '工资结构方案表', 'data/hrtools/2006052402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('461', '5', '企业月份福利工作计划', 'data/hrtools/2006032703.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('462', '5', '国际工作派遣补贴表', 'data/hrtools/2006032702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('463', '5', '公司福利制度方案', 'data/hrtools/2006032701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('464', '5', '员工应发应扣薪金单', 'data/hrtools/2006082402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('465', '5', '年工资基金计划表', 'data/hrtools/2006082401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('466', '5', '企业员工保险记录表', 'data/hrtools/2005092802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('467', '5', '各岗位技能工资结构表', 'data/hrtools/2005092801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('468', '5', '福利金收支预算表', 'data/hrtools/2005080302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('469', '5', '员工值班餐费申请表', 'data/hrtools/2005080301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('470', '5', '职工福利委员会费用报销单', 'data/hrtools/20050801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('471', '5', '企业员工重大伤病补助申请表', 'data/hrtools/2005071502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('472', '5', '员工婚丧喜庆补贴申请表', 'data/hrtools/2005071501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('473', '5', '结构工资表', 'data/hrtools/2005053001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('474', '5', '某公司薪酬制度', 'data/hrtools/2005041101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('475', '5', '员工工资职级设计表', 'data/hrtools/2005030902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('476', '5', '员工薪水调整表', 'data/hrtools/2004311164334.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('477', '5', '月份工作考评表', 'data/hrtools/2004226155146.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('478', '5', '计件薪核定通知单', 'data/hrtools/2004226155134.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('479', '5', '普遍员工工资计算', 'data/hrtools/200415154938.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('480', '5', '生产人员工资提成计算', 'data/hrtools/200415154926.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('481', '5', '主管助理人员奖金核定表', 'data/hrtools/2003116145018.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('482', '5', '记件工资幅度调查表', 'data/hrtools/20031013154737.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('483', '5', '计件工资每日报表', 'data/hrtools/20031013154630.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('484', '5', '新员工职务、工资核准表', 'data/hrtools/2003721155346.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('485', '5', '工资登记表', 'data/hrtools/2003721155335.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('486', '5', '生产奖金核定表', 'data/hrtools/2002109114740.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('487', '5', '操作员奖金分配表', 'data/hrtools/2002109114726.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('488', '5', '间接人员奖金核定', 'data/hrtools/2002109114709.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('489', '5', '主管助理奖金核定表', 'data/hrtools/2002109114651.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('490', '5', '工作奖金核定表（一）', 'data/hrtools/2002109114629.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('491', '5', '工作奖金核定表（二）', 'data/hrtools/2002109114614.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('492', '5', '利润中心奖金分配表', 'data/hrtools/2002109114541.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('493', '5', '员工薪金单', 'data/hrtools/2002109113720.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('494', '5', '员工奖金合计表', 'data/hrtools/2002109113706.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('495', '5', '员工工资职级核定表', 'data/hrtools/2002109113649.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('496', '5', '员工工资调整表', 'data/hrtools/2002109113637.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('497', '5', '员工工资单', 'data/hrtools/2002109113627.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('498', '5', '员工工资表', 'data/hrtools/2002109113612.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('499', '5', '员工抚恤申请表', 'data/hrtools/2002109113602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('500', '5', '员工出勤工薪记算表', 'data/hrtools/2002109113555.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('501', '5', '预支工资申请书', 'data/hrtools/2002109113538.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('502', '5', '薪资制度', 'data/hrtools/2002109113529.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('503', '5', '薪酬制度', 'data/hrtools/2002109113517.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('504', '5', '新员工职务工资标准表', 'data/hrtools/2002109113259.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('505', '5', '新员工工资核定表', 'data/hrtools/2002109113241.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('506', '5', '销售人员工资提成计算', 'data/hrtools/2002109113233.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('507', '5', '生产人员工资提成计算', 'data/hrtools/2002109113219.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('508', '5', '普遍员工工资计算表', 'data/hrtools/2002109113038.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('509', '5', '年工资基金使用计划表', 'data/hrtools/2002109113029.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('510', '5', '津贴申请单', 'data/hrtools/2002109113019.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('511', '5', '件薪计算表', 'data/hrtools/2002109113007.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('512', '5', '间接人员奖金核定表', 'data/hrtools/2002109112954.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('513', '5', '计件工资计算表', 'data/hrtools/2002109112946.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('514', '5', '公司劳动工资结构', 'data/hrtools/2002109112937.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('515', '5', '公司工资制度方案', 'data/hrtools/2002109112929.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('516', '5', '工资统计表', 'data/hrtools/2002109112920.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('517', '5', '工资扣缴表', 'data/hrtools/2002109112912.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('518', '5', '工资分析表', 'data/hrtools/2002109112904.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('519', '5', '工资调整表', 'data/hrtools/2002109112854.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('520', '5', '工资登记表', 'data/hrtools/2002109112848.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('521', '5', '工资标准表', 'data/hrtools/2002109112840.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('522', '5', '变更工资申请单', 'data/hrtools/2002109112833.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('523', '5', '变更工资申请表', 'data/hrtools/2002109112826.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('524', '5', '工资调查表', 'data/hrtools/5.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('525', '5', '加班费申请单', 'data/hrtools/6.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('588', '7', '出差管理规定2', 'data/hrtools/2007122102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('589', '7', '出差管理规定1', 'data/hrtools/2007122101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('590', '7', '出差管理办法', 'data/hrtools/2007082002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('591', '7', '国内出差作业流程图', 'data/hrtools/2006090702.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('592', '7', '出差旅费报支单', 'data/hrtools/2006082901.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('593', '7', '国外出差管理作业流程图', 'data/hrtools/2006072401.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('594', '7', '工作申请表', 'data/hrtools/2005042903.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('595', '7', '劳动合同范例', 'data/hrtools/2005042902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('596', '7', '面试结果评价表', 'data/hrtools/2005042901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('597', '7', '短程出差误餐申领单', 'data/hrtools/200418150456.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('598', '7', '预借旅费申请单', 'data/hrtools/20031215155232.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('599', '7', '年度出差日数及拜访次数报告表', 'data/hrtools/20031215155113.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('600', '7', '管理才能考核及建议表', 'data/hrtools/2003128160724.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('601', '7', '短程出差车费报销单', 'data/hrtools/2003128160545.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('602', '7', '出差业务报告书', 'data/hrtools/2003928154958.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('603', '7', '一周出差预定报告表', 'data/hrtools/2002109115549.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('604', '7', '业务人员出差报告书', 'data/hrtools/2002109115540.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('605', '7', '短程旅费申请表', 'data/hrtools/2002109115532.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('606', '7', '出差用品检查重点', 'data/hrtools/2002109115524.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('607', '7', '出差申请单', 'data/hrtools/2002109115515.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('608', '7', '出差申请单（一）', 'data/hrtools/2002109115442.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('609', '7', '出差申请单（二）', 'data/hrtools/2002109115434.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('610', '7', '出差旅费清单', 'data/hrtools/2002109115423.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('611', '7', '出差旅费报销清单', 'data/hrtools/2002109115415.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('612', '6', '管理人员录用制度', 'data/hrtools/2007073002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('613', '6', '考勤管理制度', 'data/hrtools/2007073001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('614', '6', '公司职员的人事考绩表格', 'data/hrtools/2006100802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('615', '6', '补休假申请表', 'data/hrtools/2006082502.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('616', '6', '出勤管理办法', 'data/hrtools/2006081801.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('617', '6', '职务授权及代理人作业办法', 'data/hrtools/2006081502.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('618', '6', '假别规定表', 'data/hrtools/2006081501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('619', '6', '特休假计算方法', 'data/hrtools/2006080801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('620', '6', '休假程序', 'data/hrtools/2006050801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('621', '6', '值班安排表', 'data/hrtools/2006030801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('622', '6', '留言记录表', 'data/hrtools/2006030601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('623', '6', '内部培训考勤表', 'data/hrtools/2006030103.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('624', '6', '工作班制的评价标准', 'data/hrtools/2006030102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('625', '6', 'XX网络公司出差申请表', 'data/hrtools/2006030101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('626', '6', '值班替换申请书', 'data/hrtools/2006021503.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('627', '6', '员工请假公出表', 'data/hrtools/2005083101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('628', '6', '员工加班细则', 'data/hrtools/2005051103.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('629', '6', '工作轮换申请表', 'data/hrtools/2005032201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('630', '6', '员工年度缺勤累计表', 'data/hrtools/2005030703.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('631', '6', '值班时间变更通知表', 'data/hrtools/2005030702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('632', '6', '员工出勤日报表', 'data/hrtools/2005030701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('633', '6', '员工考勤和休假的规定', 'data/hrtools/2005011902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('634', '6', '上司、部属休假掌握表', 'data/hrtools/200467145309.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('635', '6', '特别休假请假单', 'data/hrtools/200467145255.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('636', '6', '公司职员签到簿', 'data/hrtools/200431160705.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('637', '6', '缺勤报告表', 'data/hrtools/200431160648.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('638', '6', '职员签到簿', 'data/hrtools/2002109115126.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('639', '6', '月度考勤统计表', 'data/hrtools/2002109115119.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('640', '6', '员工请假公出单', 'data/hrtools/2002109115113.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('641', '6', '员工请假单', 'data/hrtools/2002109115104.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('642', '6', '员工签到卡', 'data/hrtools/2002109115058.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('643', '6', '员工考勤记录表', 'data/hrtools/2002109115045.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('644', '6', '员工工时记录簿', 'data/hrtools/2002109115031.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('645', '6', '人员出勤表', 'data/hrtools/2002109114945.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('646', '6', '考勤制度', 'data/hrtools/2002109114936.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('647', '6', '加班申请单', 'data/hrtools/2002109114926.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('648', '6', '加班管理制度', 'data/hrtools/2002109114918.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('649', '6', '加班费申请单', 'data/hrtools/2002109114909.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('650', '8', '因公出国管理规定', 'data/hrtools/2007122402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('651', '8', '外出学习考察管理规定', 'data/hrtools/2007122401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('652', '8', '业务代表培训教材', 'data/hrtools/2007090302.ppt', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('653', '8', '培养员工职业意识', 'data/hrtools/2007090301.ppt', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('654', '8', '培训跟踪表', 'data/hrtools/2007072602.ppt', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('655', '8', '在职员工培训测验成绩表', 'data/hrtools/2007062001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('656', '8', '在职员工受训意见调查表', 'data/hrtools/2007061402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('657', '8', '各级培训机构工作职责', 'data/hrtools/2007061101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('658', '8', '培训协议', 'data/hrtools/2007032702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('659', '8', '业务主管培训内容构成', 'data/hrtools/2007032701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('660', '8', '公司薪酬调整建议方案', 'data/hrtools/2007012302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('661', '8', '新进员工职前培训表', 'data/hrtools/2007012301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('662', '8', '企业内训的全面评估方案', 'data/hrtools/2006123102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('663', '8', '企业内训策划书', 'data/hrtools/2006123101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('664', '8', '培训协议书', 'data/hrtools/2006092102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('665', '8', '员工培训报告书', 'data/hrtools/2006071302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('666', '8', '上岗前三级安全教育卡片', 'data/hrtools/2006052202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('667', '8', '人员培训审批表', 'data/hrtools/2005090702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('668', '8', '内部培训考勤表', 'data/hrtools/2005090701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('669', '8', '外部培训实施记录', 'data/hrtools/2005082902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('670', '8', '职业培训费用补贴审批表', 'data/hrtools/2005081601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('671', '8', '部门培训申请表', 'data/hrtools/2005032202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('672', '8', '培训表格', 'data/hrtools/2005030403.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('673', '8', '兼职教育检查表', 'data/hrtools/2005030402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('674', '8', '新进销售员训练教材', 'data/hrtools/2005030401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('675', '8', '职员培训报告表', 'data/hrtools/2005013103.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('676', '8', '员工培训记录表', 'data/hrtools/2005013102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('677', '8', '岗前人员培训制度', 'data/hrtools/2005013101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('678', '8', '员工培训管理办法', 'data/hrtools/2004122702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('679', '8', '新员工培训方案', 'data/hrtools/2004122701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('680', '8', '员工岗前培训规定', 'data/hrtools/2004122201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('681', '8', '员工教育培训制度', 'data/hrtools/2004121502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('682', '8', '员工教育培训协议书', 'data/hrtools/2004121501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('683', '8', '培训评估表', 'data/hrtools/2004628141911.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('684', '8', '培训规划表', 'data/hrtools/2004628141856.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('685', '8', '企划管理类职权划分表', 'data/hrtools/200457161048.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('686', '8', '生产管理类职权划分表', 'data/hrtools/200457160859.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('687', '8', '员工培训反馈信息', 'data/hrtools/200457160652.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('688', '8', '在职技能培训计划申请表', 'data/hrtools/2004414155416.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('689', '8', '从业人员在职训练资历表', 'data/hrtools/20031224111113.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('690', '8', '新进员工教育内容检查表', 'data/hrtools/20031222155220.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('691', '8', '部属不当行为的分析表', 'data/hrtools/20031222155201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('692', '8', '加班记录表', 'data/hrtools/20031117155124.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('693', '8', '培训需求申请表', 'data/hrtools/20031117155018.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('694', '8', '在职训练学员意见调查表', 'data/hrtools/20031112160127.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('695', '8', '新员工试用申请及核定表', 'data/hrtools/20031024151032.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('696', '8', '训练总结报告表', 'data/hrtools/200392113359.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('697', '8', '年度训练计划与预算表', 'data/hrtools/200392113343.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('698', '8', '训练意见调查表', 'data/hrtools/200389105630.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('699', '8', '团体训练申请表', 'data/hrtools/2003728144512.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('700', '8', '新进员工教育内容检查表', 'data/hrtools/2003611143101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('701', '8', '从业人员在职训练资历表', 'data/hrtools/2003611143030.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('702', '8', '在职员工受训意见调查', 'data/hrtools/2002109120613.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('703', '8', '在职员工培训测验成绩', 'data/hrtools/2002109120604.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('704', '8', '在职训练学员意见调查', 'data/hrtools/2002109120549.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('705', '8', '在职训练实施结果表', 'data/hrtools/2002109120533.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('706', '8', '在职训练费用申请表', 'data/hrtools/2002109120527.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('707', '8', '在职训练测验成绩表', 'data/hrtools/2002109120518.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('708', '8', '在职技能培训计划申请', 'data/hrtools/2002109120509.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('709', '8', '员工在职训练制度', 'data/hrtools/2002109120455.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('710', '8', '员工培训需求调查表', 'data/hrtools/2002109120443.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('711', '8', '员工培训考核表', 'data/hrtools/2002109120435.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('712', '8', '员工培训计划表', 'data/hrtools/2002109120405.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('713', '8', '员工培训档案', 'data/hrtools/2002109120357.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('714', '8', '员工培训报告书', 'data/hrtools/2002109120346.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('715', '8', '员工培训报告表', 'data/hrtools/2002109120341.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('716', '8', '训练成效调查表', 'data/hrtools/2002109120318.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('717', '8', '新员工培训计划表', 'data/hrtools/2002109120310.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('718', '8', '新员工培训成绩评核表', 'data/hrtools/2002109120301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('719', '8', '新进职员教育成果检测', 'data/hrtools/2002109120254.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('720', '8', '新进职员教育', 'data/hrtools/2002109120241.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('721', '8', '团体培训申请表', 'data/hrtools/2002109120234.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('722', '8', '提高能力的对策表', 'data/hrtools/2002109120218.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('723', '8', '培训管理制度', 'data/hrtools/2002109120149.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('724', '8', '年度培训计划', 'data/hrtools/2002109120033.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('725', '8', '观摩报告书', 'data/hrtools/2002109120018.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('726', '8', '各级培训机构工作职责', 'data/hrtools/2002109120011.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('727', '8', '个人训练教学记录表', 'data/hrtools/2002109120000.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('728', '8', '个人训练', 'data/hrtools/2002109115953.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('729', '8', '个人外部训练申请表', 'data/hrtools/2002109115944.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('730', '8', '个人外部培训申请表', 'data/hrtools/2002109115934.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('731', '8', '从业人员在职培训资历', 'data/hrtools/2002109115924.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('732', '8', '提高能力方法表', 'data/hrtools/7.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('733', '9', '外聘专业技术管理人员年度绩效评价标准', 'data/hrtools/2007122701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('734', '9', '公司绩效管理制度', 'data/hrtools/2007102202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('735', '9', '绩效考核实施办法', 'data/hrtools/2007102201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('736', '9', '销售部门绩效考核指标', 'data/hrtools/2007101702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('737', '9', '设计部绩效考核指标', 'data/hrtools/2007101701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('738', '9', '绩效管理操作手册', 'data/hrtools/2007072601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('739', '9', '总工办主任考核指标', 'data/hrtools/2007072002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('740', '9', '工程合同预结算考核指标', 'data/hrtools/2007072001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('741', '9', '预算合同部部长考核指标', 'data/hrtools/2007071802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('742', '9', '技术审核考核指标', 'data/hrtools/2007071801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('743', '9', '规划部部长考核指标', 'data/hrtools/2007071602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('744', '9', '市场部部长考核指标', 'data/hrtools/2007071601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('745', '9', '分公司经理考核指标', 'data/hrtools/2007071302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('746', '9', '总工程师考核指标', 'data/hrtools/2007071301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('747', '9', '总建筑师考核指标', 'data/hrtools/2007070902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('748', '9', '总会计师考核指标', 'data/hrtools/2007070901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('749', '9', '总经济师考核指标', 'data/hrtools/2007070402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('750', '9', '销售副总经理考核指标', 'data/hrtools/2007070401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('751', '9', '副总经理(租赁、拆迁)考核指标', 'data/hrtools/2007080202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('752', '9', '行政副总经理考核指标', 'data/hrtools/2007070201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('753', '9', '常务副总经理考核指标', 'data/hrtools/2007062702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('754', '9', '分厂考核分值表', 'data/hrtools/2007062701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('755', '9', '供应部考核分值表', 'data/hrtools/2007062502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('756', '9', '品质管理部考核分值表', 'data/hrtools/2007062501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('757', '9', '技术开发部考核分值表', 'data/hrtools/2007062202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('758', '9', '生产计划部考核分值表', 'data/hrtools/2007062201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('759', '9', '职员具体工作能力考核表', 'data/hrtools/2007061401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('760', '9', '公司部门中层领导年度工作考核表', 'data/hrtools/2007061102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('761', '9', '生产管理指标', 'data/hrtools/2007060802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('762', '9', '财务会计指标', 'data/hrtools/2007060801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('763', '9', '500强名企的KPI绩效管理操作手册', 'data/hrtools/2007060602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('764', '9', '员工绩效改进计划表', 'data/hrtools/2007060402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('765', '9', '员工绩效考核结果处理表', 'data/hrtools/2007060401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('766', '9', '员工工作态度评估表', 'data/hrtools/2007053102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('767', '9', '员工工作能力评估表', 'data/hrtools/2007053101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('768', '9', '员工工作业绩评估表', 'data/hrtools/2007052902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('769', '9', '干部绩效考核办法', 'data/hrtools/2007052901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('770', '9', '分厂月度绩效考核管理办法', 'data/hrtools/2007052602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('771', '9', 'BOM考核管理办法', 'data/hrtools/2007052601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('772', '9', '本厂保安人员考核办法', 'data/hrtools/2007052202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('773', '9', '部门绩效考评管理办法', 'data/hrtools/2007052201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('774', '9', '每周自我鉴定', 'data/hrtools/2007051602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('775', '9', '从业人员服务成绩考核表', 'data/hrtools/2007051601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('776', '9', '员工考核管理办法', 'data/hrtools/2007042901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('777', '9', '关键绩效考评指标分解表', 'data/hrtools/2007042301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('778', '9', '技术质量部总监绩效评估表', 'data/hrtools/2007041402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('779', '9', '资金财务部总监绩效评估表', 'data/hrtools/2007041401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('780', '9', '生产管理部总监绩效评估表', 'data/hrtools/2007041102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('781', '9', '市场营销部总监绩效评估表', 'data/hrtools/2007040902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('782', '9', '总经理绩效评估表', 'data/hrtools/2007040901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('783', '9', '销售公司KPI组成表', 'data/hrtools/2007032202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('784', '9', '系统工程师季度考核表', 'data/hrtools/2007032201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('785', '9', '秘书的绩效标准', 'data/hrtools/2007030802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('786', '9', '中小企业诊断表', 'data/hrtools/2007030801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('787', '9', '职等加给与绩效奖金基数表', 'data/hrtools/2007030602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('788', '9', '职务岗位考核要素表', 'data/hrtools/2007030601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('789', '9', '办事处工作人员季度考核表', 'data/hrtools/2006122302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('790', '9', '在职员工培训测试成绩表', 'data/hrtools/2006112902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('791', '9', '人力资源考核指标KPI表', 'data/hrtools/2006112901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('792', '9', '工人年度考核表', 'data/hrtools/2006112402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('793', '9', '党政机关工作人员年度考评表', 'data/hrtools/2006112401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('794', '9', '关键职能设计标准', 'data/hrtools/2006102002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('795', '9', '合理化建议反馈信息单', 'data/hrtools/2006102001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('796', '9', '企业员工平时考绩记录表', 'data/hrtools/2006092802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('797', '9', '企业员工升等条件表', 'data/hrtools/2006092801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('798', '9', '销售公司KPI组成表', 'data/hrtools/2006092101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('799', '9', '通信品管办岗位KPI构成表', 'data/hrtools/2006062702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('800', '9', '销售公司用户服务中心考核关系表', 'data/hrtools/2006062701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('801', '9', '员工综合考评表', 'data/hrtools/2006060802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('802', '9', '营销员工业绩评价样', 'data/hrtools/2006042502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('803', '9', '业务单位公司职员的人事表', 'data/hrtools/2006042501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('804', '9', '制造业成绩与效率增长率考核表典范', 'data/hrtools/2006042201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('805', '9', '营业销售人员的人事考绩表格', 'data/hrtools/2006042202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('806', '9', '中高层经理绩效评价表', 'data/hrtools/2006042002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('807', '9', '主管人员绩效评价表', 'data/hrtools/2006042001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('808', '9', '总务部门业务能力分析表', 'data/hrtools/2006041802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('809', '9', '作业员考绩表', 'data/hrtools/2006041801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('810', '9', '目标执行追踪卡', 'data/hrtools/2006032203.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('811', '9', '厂长年度绩效考核表', 'data/hrtools/2006032202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('812', '9', '标准作业时间评定表', 'data/hrtools/2006032201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('813', '9', '外务员成绩表', 'data/hrtools/2006030603.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('814', '9', '下属重要任务考评表', 'data/hrtools/2006022403.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('815', '9', '销售实绩统计表', 'data/hrtools/2006022103.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('816', '9', '业务说明书', 'data/hrtools/2006021003.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('817', '9', '外务员成绩表', 'data/hrtools/2006021002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('818', '9', '会计部门能力分析表', 'data/hrtools/2006020703.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('819', '9', '联想集团绩效考核用表(部门经理用)', 'data/hrtools/051205.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('820', '9', 'HR绩效改进计划表', 'data/hrtools/2005091902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('821', '9', '公司管理人员评分表', 'data/hrtools/2005091901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('822', '9', '未参加考核人员情况', 'data/hrtools/2005091202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('823', '9', '月份劳动纪律检查奖罚通知单', 'data/hrtools/2005091201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('824', '9', '部属行为意识分析表格', 'data/hrtools/2005082901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('825', '9', '普通员工评定表', 'data/hrtools/2005081202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('826', '9', '技术单位人事考绩表', 'data/hrtools/2005081201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('827', '9', '保安员绩效考评方案', 'data/hrtools/2005072602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('828', '9', '员工专项评定表', 'data/hrtools/2005072601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('829', '9', '公司行为考核表', 'data/hrtools/2005072002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('830', '9', '转正评估审批表', 'data/hrtools/2005072001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('831', '9', '办事处人员季度考核表', 'data/hrtools/2005071302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('832', '9', '客户访问计划与实绩日报', 'data/hrtools/2005071301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('833', '9', '市场销售人员工作实绩综合记录表', 'data/hrtools/2005070502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('834', '9', '员工工作表现贡献评估表', 'data/hrtools/2005070501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('835', '9', '员工旅游活动费用补助申请表', 'data/hrtools/2005062802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('836', '9', '绩效考核分数比例分配表', 'data/hrtools/2005062801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('837', '9', '企业销售人员考绩表', 'data/hrtools/2005062402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('838', '9', '企业管理人员评分表', 'data/hrtools/2005062401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('839', '9', '岗位任职确认书', 'data/hrtools/2005061702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('840', '9', '企业人事考核评议表', 'data/hrtools/2005061701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('841', '9', '企业专业人员服务成绩考核表', 'data/hrtools/2005060602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('842', '9', '成绩与效率评估表格', 'data/hrtools/2005060601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('843', '9', '员工季度绩效考核评分表', 'data/hrtools/2005053002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('844', '9', '年度晋级考核制度', 'data/hrtools/2005031802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('845', '9', '普通职员考核表', 'data/hrtools/2005022503.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('846', '9', '高级职员考核表', 'data/hrtools/2005022502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('847', '9', '职员考核安排表', 'data/hrtools/2005022501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('848', '9', '业务人员业绩增减月报表', 'data/hrtools/2005012603.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('849', '9', '外务员成绩表', 'data/hrtools/2005012602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('850', '9', '生产部员工年终考绩表', 'data/hrtools/2005012601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('851', '9', '职员考核调查表', 'data/hrtools/2005011801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('852', '9', '重要干部的人事考绩表格（2）', 'data/hrtools/2005011702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('853', '9', '重要干部的人事考绩表格', 'data/hrtools/2005011701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('854', '9', '职员考核总结表', 'data/hrtools/2005011002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('855', '9', '公司职员的人事考绩表格', 'data/hrtools/2004122902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('856', '9', '仓库管理员考核表', 'data/hrtools/2004112901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('857', '9', '不同职别员工的评价方法表', 'data/hrtools/2004111602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('858', '9', '职员分阶段考绩表', 'data/hrtools/2004111201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('859', '9', '绩效考核流程图表', 'data/hrtools/2004110901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('860', '9', '员工自评表', 'data/hrtools/员工自评表.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('861', '9', '绩效考核申述表', 'data/hrtools/绩效考核申述表.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('862', '9', '新进中、高级人员资历量表', 'data/hrtools/200471142521.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('863', '9', '技术单位的人事考绩表格', 'data/hrtools/200471142325.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('864', '9', '职务调整说明书', 'data/hrtools/2004325153045.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('865', '9', '职员考评表', 'data/hrtools/2004325153001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('866', '9', '生产部门业务能力分析表', 'data/hrtools/200429154910.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('867', '9', '营业部门业务能力分析表', 'data/hrtools/200429154819.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('868', '9', '普通员工服务成绩考核表', 'data/hrtools/20031023163618.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('869', '9', '年度考绩表', 'data/hrtools/20031021152124.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('870', '9', '干部指导能力检查表', 'data/hrtools/2003108152536.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('871', '9', '业务能力规定表', 'data/hrtools/2003912151804.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('872', '9', '平时成绩记录表', 'data/hrtools/2003813170616.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('873', '9', '人事管理业务评核表', 'data/hrtools/2003729150234.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('874', '9', '业务人员考核表（二）', 'data/hrtools/2003630151032.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('875', '9', '管理员工考核表(二)', 'data/hrtools/2003630150959.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('876', '9', '总务部门业务能力分析', 'data/hrtools/2002109121933.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('877', '9', '综合能力考核表', 'data/hrtools/2002109121921.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('878', '9', '自我鉴定表', 'data/hrtools/2002109121913.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('879', '9', '自我报告书', 'data/hrtools/2002109121905.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('880', '9', '主管人员考核表', 'data/hrtools/2002109121852.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('881', '9', '主管人员服务成绩考核', 'data/hrtools/2002109121843.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('882', '9', '重要任务考评表', 'data/hrtools/2002109121832.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('883', '9', '职员品行评定表', 'data/hrtools/2002109121824.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('884', '9', '职员品行考核表', 'data/hrtools/2002109121811.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('885', '9', '职员品行分析表', 'data/hrtools/2002109121804.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('886', '9', '职员考核表', 'data/hrtools/2002109121755.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('887', '9', '职员具体工作能力考核', 'data/hrtools/2002109121741.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('888', '9', '职员阶段考绩表', 'data/hrtools/2002109121728.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('889', '9', '员工自我鉴定表', 'data/hrtools/2002109121714.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('890', '9', '员工专项考核表', 'data/hrtools/2002109121706.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('891', '9', '员工通用项目考核表', 'data/hrtools/2002109121658.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('892', '9', '营业部门业务能力分析', 'data/hrtools/2002109121630.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('893', '9', '营销人员能力考核表', 'data/hrtools/2002109121554.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('894', '9', '业务人员考核表', 'data/hrtools/2002109121543.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('895', '9', '选拔干部候选人评分表', 'data/hrtools/2002109121532.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('896', '9', '相互评价表', 'data/hrtools/2002109121512.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('897', '9', '生产部门业务能力分析', 'data/hrtools/2002109121503.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('898', '9', '软件工程师考评表', 'data/hrtools/2002109121450.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('899', '9', '人事考评表', 'data/hrtools/2002109121442.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('900', '9', '普通员工考核表', 'data/hrtools/2002109121433.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('901', '9', '普通员工服务成绩考核', 'data/hrtools/2002109121423.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('902', '9', '年度考绩表', 'data/hrtools/2002109121349.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('903', '9', '考核制度', 'data/hrtools/2002109121328.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('904', '9', '考核表范例', 'data/hrtools/2002109121317.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('905', '9', '经理人员综合素质考核', 'data/hrtools/2002109121135.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('906', '9', '经理人员能力考核表', 'data/hrtools/2002109121123.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('907', '9', '间接员工考绩表', 'data/hrtools/2002109121114.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('908', '9', '技术人员能力考核表', 'data/hrtools/2002109121106.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('909', '9', '绩效考评制度', 'data/hrtools/2002109121053.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('910', '9', '绩效考核面谈表', 'data/hrtools/2002109121043.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('911', '9', '会计部门业务能力分析', 'data/hrtools/2002109121035.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('912', '9', '管理员工考核表', 'data/hrtools/2002109121018.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('913', '9', '管理才能考核表', 'data/hrtools/2002109121007.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('914', '9', '中层领导年度工作考核', 'data/hrtools/2002109120958.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('915', '9', '定期考绩汇总表', 'data/hrtools/2002109120928.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('916', '9', '部属行为意识分析表', 'data/hrtools/2002109120917.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('917', '9', '部门工作综合测量表', 'data/hrtools/2002109120910.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('918', '10', '公司培训记录单', 'data/hrtools/2007111502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('919', '10', '人员离职率', 'data/hrtools/2007111501.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('920', '10', '员工离职率计算方法', 'data/hrtools/2007090601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('921', '10', '职务代理授权表', 'data/hrtools/2006091802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('922', '10', '职务代理人变更表', 'data/hrtools/2006081701.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('923', '10', '离职审批交接单', 'data/hrtools/2005082401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('924', '10', '辞职报告格式', 'data/hrtools/2005080802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('925', '10', '员工离职处理原则', 'data/hrtools/2005011901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('926', '10', '员工辞职管理办法', 'data/hrtools/2004122202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('927', '10', '员工岗位变动通知', 'data/hrtools/2004120902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('928', '10', '员工岗位变动回执', 'data/hrtools/2004120901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('929', '10', '职工调动审批程序', 'data/hrtools/2004110501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('930', '10', '员工辞退申请表', 'data/hrtools/20031119145648.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('931', '10', '离职通知书', 'data/hrtools/2002109122412.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('932', '10', '员工辞职管理办法', 'data/hrtools/2002109122312.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('933', '10', '员工离职单', 'data/hrtools/2002109122305.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('934', '10', '移交清单', 'data/hrtools/2002109122258.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('935', '10', '移交清册（一）', 'data/hrtools/2002109122249.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('936', '10', '移交清册（二）', 'data/hrtools/2002109122243.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('937', '10', '离职申请书', 'data/hrtools/2002109122226.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('938', '10', '辞职申请书', 'data/hrtools/2002109122216.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('939', '10', '辞职申请表', 'data/hrtools/2002109122155.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('940', '10', '离职声明书', 'data/hrtools/离职声明书.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('941', '11', '中小型企业行政事务', 'data/hrtools/2007082302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('942', '11', '公司档案管理制度', 'data/hrtools/2007082301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('943', '11', '员工婚丧喜庆应酬办法', 'data/hrtools/2007081302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('944', '11', '安全保卫防范工作规则', 'data/hrtools/2007081301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('945', '11', '文书管理规则', 'data/hrtools/2007081002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('946', '11', '电话管理制度', 'data/hrtools/2007081001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('947', '11', '岗位分析调查问卷', 'data/hrtools/2007072402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('948', '11', '人力资源规划表', 'data/hrtools/2007072401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('949', '11', '印章管理办法', 'data/hrtools/2007062002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('950', '11', '费用报销单', 'data/hrtools/2007051402.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('951', '11', '客户档案登记表', 'data/hrtools/2007043002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('952', '11', '客户跟踪表-营销人员', 'data/hrtools/2007051102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('953', '11', '意见反馈表', 'data/hrtools/2007051101.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('954', '11', '收货凭证', 'data/hrtools/2007050802.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('955', '11', '周计划表', 'data/hrtools/2007050801.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('956', '11', '回款计划', 'data/hrtools/2007042302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('957', '11', '员工损耗指数统计表', 'data/hrtools/2007032902.xls', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('958', '11', '企业聘请律师委托书', 'data/hrtools/2007032901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('959', '11', '提案单', 'data/hrtools/2007012702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('960', '11', '客户访问预定及实施表', 'data/hrtools/2007012701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('961', '11', '企业应急计划样本', 'data/hrtools/2007011901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('962', '11', '年度经营目标预测表', 'data/hrtools/2007011902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('963', '11', '历年销售业绩比较表', 'data/hrtools/2007011702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('964', '11', '每月巡回调查状况报告书', 'data/hrtools/2007011701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('965', '11', '工作分析流程', 'data/hrtools/2006121402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('966', '11', '广告预算表', 'data/hrtools/2006121401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('967', '11', '产品售价表', 'data/hrtools/2006121202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('968', '11', '产品市场性分析表', 'data/hrtools/2006121201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('969', '11', '历年客户营业额统计表', 'data/hrtools/2006112101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('970', '11', '表格请印申请单', 'data/hrtools/2006111702.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('971', '11', '打卡申请单', 'data/hrtools/2006111701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('972', '11', '产品质量管理表', 'data/hrtools/2006111602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('973', '11', '每日销售报表', 'data/hrtools/2006111102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('974', '11', '业务处理表使用例范', 'data/hrtools/2006110302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('975', '11', '经理范围及规模表', 'data/hrtools/2006110301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('976', '11', '用印申请单', 'data/hrtools/2006102802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('977', '11', '劳务费用报销单', 'data/hrtools/2006102801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('978', '11', '领用单', 'data/hrtools/2006102602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('979', '11', '会议记录格式', 'data/hrtools/2006102601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('980', '11', '访问客户预定及结果报告书', 'data/hrtools/2006101802.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('981', '11', '年度业务报告格式', 'data/hrtools/2006101801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('982', '11', '职员纪律处分通知书', 'data/hrtools/2006101302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('983', '11', '客户数量变动分析表', 'data/hrtools/2006101301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('984', '11', '收货款自动报告表', 'data/hrtools/2006092602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('985', '11', '市场总需求量调查估计表', 'data/hrtools/2006092601.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('986', '11', 'XX公司用车申请单', 'data/hrtools/2006091301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('987', '11', '同业产品市场价格调查表', 'data/hrtools/2006091202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('988', '11', '推销日报', 'data/hrtools/2006091201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('989', '11', '产品广告预定及实施报告表', 'data/hrtools/2006090902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('990', '11', '产品定价分析表', 'data/hrtools/2006090901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('991', '11', '抱怨处理报告书', 'data/hrtools/2006082202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('992', '11', '报价单', 'data/hrtools/2006082201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('993', '11', '名片申请单', 'data/hrtools/2006080201.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('994', '11', '销售额回收额管理一览表', 'data/hrtools/2006072902.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('995', '11', '采购验收单', 'data/hrtools/2006072102.DOC', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('996', '11', '销售额统计表', 'data/hrtools/2006071902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('997', '11', '用印申请单', 'data/hrtools/2006071901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('998', '11', '销售计划分析表', 'data/hrtools/2006071301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('999', '11', '展厅助理岗位手册', 'data/hrtools/2006071102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1000', '11', '销货明细表', 'data/hrtools/2006071101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1001', '11', '部门决策权一览表', 'data/hrtools/2006070502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1002', '11', '各种委员会一览表', 'data/hrtools/2006070501.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1003', '11', '销售日报表', 'data/hrtools/2006062302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1004', '11', '销售人员业务预定及实绩报告表', 'data/hrtools/2006062301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1005', '11', '销售效率分析表', 'data/hrtools/2006061202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1006', '11', '销售业务状况报告书', 'data/hrtools/2006061201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1007', '11', '销售预测表', 'data/hrtools/2006060801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1008', '11', '成本估价', 'data/hrtools/2006052401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1009', '11', '内审检查表', 'data/hrtools/2006052201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1010', '11', '销售月报', 'data/hrtools/2006051801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1011', '11', '新产品潜在客户追踪表', 'data/hrtools/2006051602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1012', '11', '新开发客户报告表', 'data/hrtools/2006051601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1013', '11', '新事业开拓调查检查表', 'data/hrtools/2006051302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1014', '11', '营业日报', 'data/hrtools/2006051301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1015', '11', '月份产销统计表', 'data/hrtools/2006051002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1016', '11', '月份经营利益检核表', 'data/hrtools/2006051001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1017', '11', '产品售价表', 'data/hrtools/2006050802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1018', '11', '有效的散会检查表', 'data/hrtools/2006042802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1019', '11', '企业文化共识化调查', 'data/hrtools/2006041402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1020', '11', '经理人的影响力计分表', 'data/hrtools/2006041401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1021', '11', '策划部个人年度工作总结', 'data/hrtools/策划部工作总结.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1022', '11', '人力资源部工作总结', 'data/hrtools/051212.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1023', '11', '管理费用设定表', 'data/hrtools/2005092601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1024', '11', '会议开销表', 'data/hrtools/2005091401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1025', '11', '劳动争议仲裁申诉登记表', 'data/hrtools/2005083102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1026', '11', '企业优势和劣势评价表', 'data/hrtools/2005082202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1027', '11', '管理者确认评价表', 'data/hrtools/2005082201.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1028', '11', '开会通知表', 'data/hrtools/2005072902.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1029', '11', '公司部门间需求请调单', 'data/hrtools/2005072901.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1030', '11', '生产线进度安排表', 'data/hrtools/2005061402.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1031', '11', '工资标准表', 'data/hrtools/2005060802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1032', '11', '生产日报表', 'data/hrtools/2005060801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1033', '11', '月份式成本管理表', 'data/hrtools/2005052303.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1034', '11', '月份式赔偿处理报表', 'data/hrtools/2005052302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1035', '11', '订货明细表', 'data/hrtools/2005052301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1036', '11', '停工报告单', 'data/hrtools/2005051603.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1037', '11', '生产数量统计表', 'data/hrtools/2005051602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1038', '11', '生产主管业务审核一览表', 'data/hrtools/2005051101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1039', '11', '定岗定编原理与操作', 'data/hrtools/05041201.ppt', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1040', '11', '销售人员考核办法', 'data/hrtools/2005032802.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1041', '11', '外国人就业申请表', 'data/hrtools/2005032801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1042', '11', '部门销售管理月报表', 'data/hrtools/2005031801.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1043', '11', '员工手册（工厂类）', 'data/hrtools/2005031603.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1044', '11', '生产效率日报表', 'data/hrtools/2005022302.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1045', '11', '工作进度周报表', 'data/hrtools/2005022301.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1046', '11', '工作申请书', 'data/hrtools/2005022103.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1047', '11', '制造月报表', 'data/hrtools/2005022102.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1048', '11', '作业时间与计件工资标准表', 'data/hrtools/2005022101.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1049', '11', '生产车间工作管理表', 'data/hrtools/2005021603.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1050', '11', '销售报表', 'data/hrtools/2005021602.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1051', '11', '产量分析表', 'data/hrtools/2005021601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1052', '11', '员工保险办法', 'data/hrtools/2004122703.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1053', '11', '消防设施器材检查月报表', 'data/hrtools/2004122001.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1054', '11', '书面请示表格', 'data/hrtools/2004111601.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1055', '11', '一周业务报表', 'data/hrtools/2004111202.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1056', '11', '间接部门活性化检讨表', 'data/hrtools/2004103002.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1057', '11', '结款通知单', 'data/hrtools/结款通知单.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1058', '11', '采购部目标达成考核表', 'data/hrtools/采购部目标达成考核表.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1059', '11', '产量记录表', 'data/hrtools/产量记录表.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1060', '11', '部门年度工作目标沟通与评价表', 'data/hrtools/部门年度工作目标沟通与评价表.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1061', '11', '特殊违规及处理方式', 'data/hrtools/2004728142112.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1062', '11', '人力资源部年度目标', 'data/hrtools/2004728141630.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1063', '11', '员工过失单', 'data/hrtools/2004712141440.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1064', '11', '部门季度工作计划评价表', 'data/hrtools/2004712141401.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1065', '11', '例会主题检查表', 'data/hrtools/2004616145846.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1066', '11', '签呈表格', 'data/hrtools/2004616145825.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1067', '11', '标准、指导书划定权责表', 'data/hrtools/2004510150837.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1068', '11', '异动、辞职、退休等作业程序', 'data/hrtools/2004510150821.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1069', '11', '工作成果周报表', 'data/hrtools/2003114111021.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1070', '11', '综合长期计划表', 'data/hrtools/2003911113341.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1071', '11', '财务损益表', 'data/hrtools/2003723102954.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1072', '11', '暂借款管理办法', 'data/hrtools/2002109122804.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1073', '11', '员工手册', 'data/hrtools/2002109122757.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1074', '11', '印章管理办法', 'data/hrtools/2002109122749.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1075', '11', '医疗及人身意外伤害保险管理办法', 'data/hrtools/2002109122741.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1076', '11', '休假程序', 'data/hrtools/2002109122724.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1077', '11', '物资管理办法', 'data/hrtools/2002109122717.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1078', '11', '文书管理办法', 'data/hrtools/2002109122710.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1079', '11', '图书、报刊管理办法', 'data/hrtools/2002109122701.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1080', '11', '经济合同管理办法', 'data/hrtools/2002109122654.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1081', '11', '计算机管理规定', 'data/hrtools/2002109122647.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1082', '11', '会议管理规定', 'data/hrtools/2002109122640.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1083', '11', '规范化管理实施大纲', 'data/hrtools/2002109122629.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1084', '11', '费用开支管理办法', 'data/hrtools/2002109122623.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1085', '11', '费用报销规定', 'data/hrtools/2002109122615.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1086', '11', '法律工作制度', 'data/hrtools/2002109122607.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1087', '11', '档案管理规定', 'data/hrtools/2002109122559.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1088', '11', '餐饮业人事管理规章', 'data/hrtools/2002109122550.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1089', '11', '财务管理规定', 'data/hrtools/2002109122541.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1090', '11', '保密制度', 'data/hrtools/2002109122510.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1091', '11', '办公行为规范', 'data/hrtools/2002109122502.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1092', '11', '办公室物资管理条例', 'data/hrtools/2002109122453.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1093', '11', '员工请假单', 'data/hrtools/8.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1094', '11', '请购单', 'data/hrtools/9.doc', '0', '', '0');
INSERT INTO `qs32_hrtools` VALUES ('1095', '11', '考核制度', 'data/hrtools/10.doc', '0', '', '0');

-- ----------------------------
-- Table structure for qs32_hrtools_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_hrtools_category`;
CREATE TABLE `qs32_hrtools_category` (
  `c_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(80) NOT NULL,
  `c_order` int(11) NOT NULL DEFAULT '0',
  `c_adminset` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_hrtools_category
-- ----------------------------
INSERT INTO `qs32_hrtools_category` VALUES ('1', '招聘/面试', '0', '1');
INSERT INTO `qs32_hrtools_category` VALUES ('2', '人事档案', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('3', '员工管理', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('4', '合同/试用', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('5', '薪酬制度', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('6', '加班/考勤', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('7', '出差', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('8', '员工培训', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('9', '绩效考核', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('10', '辞退/移交', '0', '0');
INSERT INTO `qs32_hrtools_category` VALUES ('11', '其它', '0', '0');

-- ----------------------------
-- Table structure for qs32_jobs
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs`;
CREATE TABLE `qs32_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_addtime` int(10) unsigned NOT NULL,
  `company_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `highlight` varchar(7) NOT NULL,
  `stick` tinyint(1) NOT NULL,
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(30) NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(30) NOT NULL,
  `street` int(10) unsigned NOT NULL,
  `street_cn` varchar(50) NOT NULL,
  `officebuilding` int(10) unsigned NOT NULL,
  `officebuilding_cn` varchar(50) NOT NULL,
  `tag` varchar(160) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contents` varchar(1800) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(60) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(60) NOT NULL,
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `company_id` (`company_id`),
  KEY `deadline` (`deadline`),
  KEY `refreshtime` (`refreshtime`),
  KEY `setmeal_deadline` (`setmeal_deadline`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_jobs
-- ----------------------------
INSERT INTO `qs32_jobs` VALUES ('7', '0', '214668', '大中华区销售代表', 'IBM?й???????', '6', '0', '0', '1', '0', '', '0', '62', '全职', '3', '不限', '0', '1', '541', '修造船及海洋平台/其他', '7', '港口航道与海岸工程', '80', '1-49人', '1000', '1368', '北京/北京市', '0', '', '0', '', '', '69', '大专', '183', '十年以上', '178', '15000～20000/月', '0', '要仍', '1372587398', '1375179398', '1372587398', '0', '0', '', '1', '1', '0', '大中华区销售代表 IBM?й???????  大中00 大中华0 中华00 销售00 销售代表 代表00 修造00 造船00 海洋00 平台00 其他00 北京00 北京市0', '1', '0', '', '0.000000', '0.000000', '2', '0');
INSERT INTO `qs32_jobs` VALUES ('5', '0', '214665', '职位1', 'Microsoft', '5', '0', '0', '0', '0', '', '0', '64', '临时', '3', '不限', '35', '1', '18', '修造船及海洋平台/油气开采/钻井/地质等', '1', '船舶', '84', '1000-9999人', '1002', '0', '天津', '0', '', '0', '', '', '67', '职高/技校', '78', '五年以上', '176', '8000～10000/月', '0', '职位介绍', '1372581520', '1377765520', '1372581520', '0', '0', '', '1', '1', '7', '职位10 Microsoft  职位00 修造00 造船00 海洋00 平台00 油气00 开采00 钻井00 地质00 天津00 介绍00', '1', '0', '', '0.000000', '0.000000', '2', '0');
INSERT INTO `qs32_jobs` VALUES ('6', '0', '214665', 'IT部技术支持工程师', 'Microsoft', '5', '0', '0', '0', '0', '', '0', '181', '实习', '3', '不限', '300', '1', '0', '修造船及海洋平台', '1', '船舶', '84', '1000-9999人', '1004', '0', '浙江省', '0', '', '0', '', '', '72', '博士', '79', '八年以上', '179', '20000～30000/月', '0', '职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ，不错哦职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ，不错哦职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ职位2的介绍，很多文字，QQQQ，不错哦', '1372586178', '1380362178', '1372586178', '0', '0', '', '1', '1', '5', 'IT部技术支持工程师 Microsoft  IT000 技术00 技术支持 支持00 工程00 工程师0 修造00 造船00 海洋00 平台00 浙江00 浙江省0 职位00 介绍00 文字00 不错00', '1', '0', '', '0.000000', '0.000000', '2', '0');

-- ----------------------------
-- Table structure for qs32_jobs_contact
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_contact`;
CREATE TABLE `qs32_jobs_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `contact` varchar(80) NOT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `telephone` varchar(80) NOT NULL,
  `address` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_jobs_contact
-- ----------------------------
INSERT INTO `qs32_jobs_contact` VALUES ('35', '6', '周小虎', '', '010-33565', 'address', 'zhou@b.com', '0');
INSERT INTO `qs32_jobs_contact` VALUES ('34', '5', 'contact man', '', '010', 'address', 'mail', '0');
INSERT INTO `qs32_jobs_contact` VALUES ('33', '7', '周小康', '', '33456', '', 'mail@ib.cs', '0');

-- ----------------------------
-- Table structure for qs32_jobs_search_hot
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_search_hot`;
CREATE TABLE `qs32_jobs_search_hot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `officebuilding` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_hot` (`category`,`click`),
  KEY `click` (`click`),
  KEY `district_hot` (`district`,`click`),
  KEY `officebuilding_hot` (`officebuilding`,`click`),
  KEY `refreshtime` (`refreshtime`),
  KEY `sdistrict_hot` (`sdistrict`,`click`),
  KEY `street_hot` (`street`,`click`),
  KEY `subclass_hot` (`subclass`,`click`),
  KEY `trade_hot` (`trade`,`click`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_jobs_search_hot
-- ----------------------------
INSERT INTO `qs32_jobs_search_hot` VALUES ('6', '214665', '0', '0', '0', '181', '3', '1', '0', '1', '1004', '0', '0', '0', '72', '79', '179', '84', '1372586178', '5');
INSERT INTO `qs32_jobs_search_hot` VALUES ('5', '214665', '0', '0', '0', '64', '3', '1', '18', '1', '1002', '0', '0', '0', '67', '78', '176', '84', '1372581520', '7');
INSERT INTO `qs32_jobs_search_hot` VALUES ('7', '214668', '0', '1', '0', '62', '3', '1', '541', '7', '1000', '1368', '0', '0', '69', '183', '178', '80', '1372587398', '0');

-- ----------------------------
-- Table structure for qs32_jobs_search_key
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_search_key`;
CREATE TABLE `qs32_jobs_search_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `officebuilding` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `key` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `district` (`district`),
  KEY `refreshtime` (`refreshtime`),
  KEY `sdistrict` (`sdistrict`),
  KEY `subclass` (`subclass`),
  KEY `uid` (`uid`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_jobs_search_key
-- ----------------------------
INSERT INTO `qs32_jobs_search_key` VALUES ('6', '214665', '0', '0', '0', '181', '3', '1', '0', '1', '1004', '0', '0', '0', '72', '79', '179', '84', '0.000000', '0.000000', '1372586178', 'IT部技术支持工程师 Microsoft  IT000 技术00 技术支持 支持00 工程00 工程师0 修造00 造船00 海洋00 平台00 浙江00 浙江省0 职位00 介绍00 文字00 不错00');
INSERT INTO `qs32_jobs_search_key` VALUES ('5', '214665', '0', '0', '0', '64', '3', '1', '18', '1', '1002', '0', '0', '0', '67', '78', '176', '84', '0.000000', '0.000000', '1372581520', '职位10 Microsoft  职位00 修造00 造船00 海洋00 平台00 油气00 开采00 钻井00 地质00 天津00 介绍00');
INSERT INTO `qs32_jobs_search_key` VALUES ('7', '214668', '0', '1', '0', '62', '3', '1', '541', '7', '1000', '1368', '0', '0', '69', '183', '178', '80', '0.000000', '0.000000', '1372587398', '大中华区销售代表 IBM?й???????  大中00 大中华0 中华00 销售00 销售代表 代表00 修造00 造船00 海洋00 平台00 其他00 北京00 北京市0');

-- ----------------------------
-- Table structure for qs32_jobs_search_rtime
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_search_rtime`;
CREATE TABLE `qs32_jobs_search_rtime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `officebuilding` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_rtime` (`category`,`refreshtime`),
  KEY `district_rtime` (`district`,`refreshtime`),
  KEY `emergency_rtime` (`emergency`,`refreshtime`),
  KEY `map` (`map_x`,`map_y`),
  KEY `officebuilding_rtime` (`officebuilding`,`refreshtime`),
  KEY `recommend_rtime` (`recommend`,`refreshtime`),
  KEY `refreshtime` (`refreshtime`),
  KEY `sdistrict_rtime` (`sdistrict`,`refreshtime`),
  KEY `street_rtime` (`street`,`refreshtime`),
  KEY `subclass_rtime` (`subclass`,`refreshtime`),
  KEY `trade_rtime` (`trade`,`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_jobs_search_rtime
-- ----------------------------
INSERT INTO `qs32_jobs_search_rtime` VALUES ('6', '0', '214665', '0', '0', '181', '3', '1', '0', '1', '1004', '0', '0', '0', '72', '79', '179', '84', '0.000000', '0.000000', '1372586178');
INSERT INTO `qs32_jobs_search_rtime` VALUES ('5', '0', '214665', '0', '0', '64', '3', '1', '18', '1', '1002', '0', '0', '0', '67', '78', '176', '84', '0.000000', '0.000000', '1372581520');
INSERT INTO `qs32_jobs_search_rtime` VALUES ('7', '0', '214668', '1', '0', '62', '3', '1', '541', '7', '1000', '1368', '0', '0', '69', '183', '178', '80', '0.000000', '0.000000', '1372587398');

-- ----------------------------
-- Table structure for qs32_jobs_search_scale
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_search_scale`;
CREATE TABLE `qs32_jobs_search_scale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `officebuilding` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_scale` (`category`,`scale`,`refreshtime`),
  KEY `district_scale` (`district`,`scale`,`refreshtime`),
  KEY `office_scale` (`officebuilding`,`scale`,`refreshtime`),
  KEY `scale` (`scale`,`refreshtime`),
  KEY `sdistrict_scale` (`sdistrict`,`scale`,`refreshtime`),
  KEY `street_scale` (`street`,`scale`,`refreshtime`),
  KEY `subclass_scale` (`subclass`,`scale`,`refreshtime`),
  KEY `trade_scale` (`trade`,`scale`,`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_jobs_search_scale
-- ----------------------------
INSERT INTO `qs32_jobs_search_scale` VALUES ('6', '214665', '0', '0', '0', '181', '3', '1', '0', '1', '84', '1004', '0', '0', '0', '72', '79', '179', '1372586178');
INSERT INTO `qs32_jobs_search_scale` VALUES ('5', '214665', '0', '0', '0', '64', '3', '1', '18', '1', '84', '1002', '0', '0', '0', '67', '78', '176', '1372581520');
INSERT INTO `qs32_jobs_search_scale` VALUES ('7', '214668', '0', '1', '0', '62', '3', '1', '541', '7', '80', '1000', '1368', '0', '0', '69', '183', '178', '1372587398');

-- ----------------------------
-- Table structure for qs32_jobs_search_stickrtime
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_search_stickrtime`;
CREATE TABLE `qs32_jobs_search_stickrtime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stick` tinyint(1) NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `officebuilding` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_rtime` (`category`,`stick`,`refreshtime`),
  KEY `district_rtime` (`district`,`stick`,`refreshtime`),
  KEY `sdistrict_rtime` (`sdistrict`,`stick`,`refreshtime`),
  KEY `stick_office` (`officebuilding`,`stick`,`refreshtime`),
  KEY `stick_rtime` (`stick`,`refreshtime`),
  KEY `stick_street` (`street`,`stick`,`refreshtime`),
  KEY `subclass_rtime` (`subclass`,`stick`,`refreshtime`),
  KEY `trade_rtime` (`trade`,`stick`,`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_jobs_search_stickrtime
-- ----------------------------
INSERT INTO `qs32_jobs_search_stickrtime` VALUES ('6', '214665', '0', '0', '0', '0', '181', '3', '1', '0', '1', '1004', '0', '0', '0', '72', '79', '179', '84', '1372586178');
INSERT INTO `qs32_jobs_search_stickrtime` VALUES ('5', '214665', '0', '0', '0', '0', '64', '3', '1', '18', '1', '1002', '0', '0', '0', '67', '78', '176', '84', '1372581520');
INSERT INTO `qs32_jobs_search_stickrtime` VALUES ('7', '214668', '0', '1', '0', '0', '62', '3', '1', '541', '7', '1000', '1368', '0', '0', '69', '183', '178', '80', '1372587398');

-- ----------------------------
-- Table structure for qs32_jobs_search_tag
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_search_tag`;
CREATE TABLE `qs32_jobs_search_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `tag1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subclass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sdistrict` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tag` (`tag1`,`tag2`,`tag3`,`tag4`,`tag5`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_jobs_search_tag
-- ----------------------------
INSERT INTO `qs32_jobs_search_tag` VALUES ('6', '214665', '0', '0', '0', '0', '0', '1', '0', '1004', '0');
INSERT INTO `qs32_jobs_search_tag` VALUES ('5', '214665', '0', '0', '0', '0', '0', '1', '18', '1002', '0');
INSERT INTO `qs32_jobs_search_tag` VALUES ('7', '214668', '0', '0', '0', '0', '0', '1', '541', '1000', '1368');

-- ----------------------------
-- Table structure for qs32_jobs_search_wage
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_search_wage`;
CREATE TABLE `qs32_jobs_search_wage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `officebuilding` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_wage` (`category`,`wage`,`refreshtime`),
  KEY `district_wage` (`district`,`wage`,`refreshtime`),
  KEY `officebuilding_wage` (`officebuilding`,`wage`,`refreshtime`),
  KEY `rtime_wage` (`refreshtime`,`wage`),
  KEY `sdistrict_wage` (`sdistrict`,`wage`,`refreshtime`),
  KEY `street_wage` (`street`,`wage`,`refreshtime`),
  KEY `subclass_wage` (`subclass`,`wage`,`refreshtime`),
  KEY `trade_wage` (`trade`,`wage`,`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_jobs_search_wage
-- ----------------------------
INSERT INTO `qs32_jobs_search_wage` VALUES ('6', '214665', '0', '0', '0', '181', '3', '1', '0', '1', '1004', '0', '0', '0', '72', '79', '179', '84', '1372586178');
INSERT INTO `qs32_jobs_search_wage` VALUES ('5', '214665', '0', '0', '0', '64', '3', '1', '18', '1', '1002', '0', '0', '0', '67', '78', '176', '84', '1372581520');
INSERT INTO `qs32_jobs_search_wage` VALUES ('7', '214668', '0', '1', '0', '62', '3', '1', '541', '7', '1000', '1368', '0', '0', '69', '183', '178', '80', '1372587398');

-- ----------------------------
-- Table structure for qs32_jobs_tmp
-- ----------------------------
DROP TABLE IF EXISTS `qs32_jobs_tmp`;
CREATE TABLE `qs32_jobs_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_addtime` int(10) unsigned NOT NULL,
  `company_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `highlight` varchar(7) NOT NULL,
  `stick` tinyint(1) NOT NULL,
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(30) NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(30) NOT NULL,
  `street` int(10) unsigned NOT NULL,
  `street_cn` varchar(50) NOT NULL,
  `officebuilding` int(10) unsigned NOT NULL,
  `officebuilding_cn` varchar(50) NOT NULL,
  `tag` varchar(160) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contents` varchar(1800) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(60) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(60) NOT NULL,
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `audit` (`audit`),
  KEY `company_id` (`company_id`),
  KEY `deadline` (`deadline`),
  KEY `refreshtime` (`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_jobs_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_link
-- ----------------------------
DROP TABLE IF EXISTS `qs32_link`;
CREATE TABLE `qs32_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `alias` varchar(30) NOT NULL,
  `link_name` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `link_logo` varchar(255) NOT NULL,
  `show_order` smallint(5) unsigned NOT NULL DEFAULT '50',
  `Notes` varchar(255) DEFAULT NULL,
  `app_notes` varchar(300) NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_link
-- ----------------------------
INSERT INTO `qs32_link` VALUES ('1', '1', '1', 'QS_index', '骑士cms官方站', 'http://www.74cms.com', '', '100', '', '');

-- ----------------------------
-- Table structure for qs32_link_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_link_category`;
CREATE TABLE `qs32_link_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `c_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `c_alias` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_link_category
-- ----------------------------
INSERT INTO `qs32_link_category` VALUES ('1', '网站首页', '1', 'QS_index');
INSERT INTO `qs32_link_category` VALUES ('2', '招聘首页', '1', 'QS_jobs');
INSERT INTO `qs32_link_category` VALUES ('3', '求职首页', '1', 'QS_resume');
INSERT INTO `qs32_link_category` VALUES ('4', '资讯首页', '1', 'QS_news');

-- ----------------------------
-- Table structure for qs32_locoyspider
-- ----------------------------
DROP TABLE IF EXISTS `qs32_locoyspider`;
CREATE TABLE `qs32_locoyspider` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_locoyspider
-- ----------------------------
INSERT INTO `qs32_locoyspider` VALUES ('1', 'open', '1');
INSERT INTO `qs32_locoyspider` VALUES ('2', 'search_threshold', '55');
INSERT INTO `qs32_locoyspider` VALUES ('3', 'article_display', '1');
INSERT INTO `qs32_locoyspider` VALUES ('4', 'article_focos', '1');
INSERT INTO `qs32_locoyspider` VALUES ('5', 'company_audit', '1');
INSERT INTO `qs32_locoyspider` VALUES ('6', 'company_nature', '2');
INSERT INTO `qs32_locoyspider` VALUES ('7', 'company_trade', '45');
INSERT INTO `qs32_locoyspider` VALUES ('8', 'company_district', '1,2');
INSERT INTO `qs32_locoyspider` VALUES ('9', 'company_scale', '85');
INSERT INTO `qs32_locoyspider` VALUES ('10', 'company_registered', '');
INSERT INTO `qs32_locoyspider` VALUES ('11', 'company_currency', '人民币');
INSERT INTO `qs32_locoyspider` VALUES ('12', 'jobs_display', '1');
INSERT INTO `qs32_locoyspider` VALUES ('13', 'jobs_audit', '1');
INSERT INTO `qs32_locoyspider` VALUES ('14', 'jobs_nature', '62');
INSERT INTO `qs32_locoyspider` VALUES ('15', 'jobs_days_min', '20');
INSERT INTO `qs32_locoyspider` VALUES ('16', 'jobs_days_max', '60');
INSERT INTO `qs32_locoyspider` VALUES ('17', 'jobs_category', '1');
INSERT INTO `qs32_locoyspider` VALUES ('18', 'jobs_subclass', '8');
INSERT INTO `qs32_locoyspider` VALUES ('19', 'jobs_district', '1,2');
INSERT INTO `qs32_locoyspider` VALUES ('20', 'jobs_education', '69');
INSERT INTO `qs32_locoyspider` VALUES ('21', 'jobs_experience', '76');
INSERT INTO `qs32_locoyspider` VALUES ('22', 'jobs_wage', '57');
INSERT INTO `qs32_locoyspider` VALUES ('23', 'jobs_amount_min', '5');
INSERT INTO `qs32_locoyspider` VALUES ('24', 'jobs_amount_max', '15');
INSERT INTO `qs32_locoyspider` VALUES ('25', 'jobs_notify', '0');
INSERT INTO `qs32_locoyspider` VALUES ('26', 'jobs_sex', '3');
INSERT INTO `qs32_locoyspider` VALUES ('27', 'reg_usname', 'sp_');
INSERT INTO `qs32_locoyspider` VALUES ('28', 'reg_password_tpye', '1');
INSERT INTO `qs32_locoyspider` VALUES ('29', 'reg_password', '123456');
INSERT INTO `qs32_locoyspider` VALUES ('30', 'reg_email', '@126.com');

-- ----------------------------
-- Table structure for qs32_mailconfig
-- ----------------------------
DROP TABLE IF EXISTS `qs32_mailconfig`;
CREATE TABLE `qs32_mailconfig` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_mailconfig
-- ----------------------------
INSERT INTO `qs32_mailconfig` VALUES ('1', 'method', '1');
INSERT INTO `qs32_mailconfig` VALUES ('2', 'smtpservers', 'smtp.163.com');
INSERT INTO `qs32_mailconfig` VALUES ('3', 'smtpusername', 'abc');
INSERT INTO `qs32_mailconfig` VALUES ('4', 'smtppassword', 'def');
INSERT INTO `qs32_mailconfig` VALUES ('5', 'smtpfrom', 'abc@bb.cc');
INSERT INTO `qs32_mailconfig` VALUES ('6', 'smtpport', '25');
INSERT INTO `qs32_mailconfig` VALUES ('7', 'set_reg', '0');
INSERT INTO `qs32_mailconfig` VALUES ('8', 'set_applyjobs', '0');
INSERT INTO `qs32_mailconfig` VALUES ('9', 'set_invite', '0');
INSERT INTO `qs32_mailconfig` VALUES ('10', 'set_order', '0');
INSERT INTO `qs32_mailconfig` VALUES ('11', 'set_payment', '0');
INSERT INTO `qs32_mailconfig` VALUES ('12', 'set_editpwd', '0');
INSERT INTO `qs32_mailconfig` VALUES ('13', 'set_jobsallow', '0');
INSERT INTO `qs32_mailconfig` VALUES ('14', 'set_jobsnotallow', '0');
INSERT INTO `qs32_mailconfig` VALUES ('15', 'set_licenseallow', '0');
INSERT INTO `qs32_mailconfig` VALUES ('16', 'set_licensenotallow', '0');
INSERT INTO `qs32_mailconfig` VALUES ('17', 'set_addmap', '0');
INSERT INTO `qs32_mailconfig` VALUES ('18', 'set_resumeallow', '0');
INSERT INTO `qs32_mailconfig` VALUES ('19', 'set_resumenotallow', '0');

-- ----------------------------
-- Table structure for qs32_mailqueue
-- ----------------------------
DROP TABLE IF EXISTS `qs32_mailqueue`;
CREATE TABLE `qs32_mailqueue` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_addtime` int(10) unsigned NOT NULL,
  `m_sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `m_mail` varchar(80) NOT NULL,
  `m_subject` varchar(200) NOT NULL,
  `m_body` text NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_mailqueue
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_mail_templates
-- ----------------------------
DROP TABLE IF EXISTS `qs32_mail_templates`;
CREATE TABLE `qs32_mail_templates` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_mail_templates
-- ----------------------------
INSERT INTO `qs32_mail_templates` VALUES ('1', 'set_reg', '恭喜你成为<strong><a href=\"{sitedomain}\" target=\"_blank\">{sitename}</a></strong>的会员<br />\r\n你的用户名是：<strong>{username}</strong><br />\r\n你的密码是：<strong>{password}</strong><br />\r\n此邮件由系统自动发出，请勿回复！<br />');
INSERT INTO `qs32_mail_templates` VALUES ('2', 'set_applyjobs', '亲爱的会员：<br />\r\n<strong>{personalfullname}</strong> 申请了您发布的职位:<strong>{jobsname}</strong><br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('3', 'set_invite', '亲爱的会员：<br />\r\n<strong>{companyname}</strong>  对你发起了面试邀请<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('4', 'set_order', '亲爱的会员：<br />\r\n你的订单已添加成功，请及时付款，订单号：{oid}，付款方式为：{paymenttpye}，应付金额为：{amount} 元。<br />\r\n付款后系统将为您自动开通相关服务。<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('5', 'set_payment', '亲爱的会员：<br />\r\n你已经付款成功，系统已为您开通服务。<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('6', 'set_editpwd', '亲爱的会员：<br />\r\n你已经成功修改密码，新密码为：{newpassword}。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('7', 'set_jobsallow', '亲爱的会员：<br />\r\n恭喜，你发布的职位({jobsname})已经通过审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('8', 'set_jobsnotallow', '亲爱的会员：<br />\r\n很抱歉，你发布的职位({jobsname})未通过审核，请修改后再次提交审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('9', 'set_licenseallow', '亲爱的会员：<br />\r\n恭喜，您的企业资料已认证通过！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('10', 'set_licensenotallow', '亲爱的会员：<br />\r\n很抱歉，你的企业认证未通过，请重新上传营业执照！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('11', 'set_addmap', '亲爱的会员：<br />\r\n恭喜，您已成功开通企业电子地图！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('12', 'set_resumeallow', '亲爱的会员：<br />\r\n恭喜，您的简历已通过审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('13', 'set_resumenotallow', '亲爱的会员：<br />\r\n很抱歉，您的简历未通过审核，请修改后再次提交审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！');
INSERT INTO `qs32_mail_templates` VALUES ('14', 'set_reg_title', '恭喜你成为{sitename}的会员');
INSERT INTO `qs32_mail_templates` VALUES ('15', 'set_applyjobs_title', '{personalfullname}申请了您发布的职位:{jobsname}');
INSERT INTO `qs32_mail_templates` VALUES ('16', 'set_invite_title', '{companyname}邀请你参加面试');
INSERT INTO `qs32_mail_templates` VALUES ('17', 'set_order_title', '充值订单添加成功');
INSERT INTO `qs32_mail_templates` VALUES ('18', 'set_payment_title', '充值成功，系统已为您开通服务！');
INSERT INTO `qs32_mail_templates` VALUES ('19', 'set_editpwd_title', '密码修改成功！');
INSERT INTO `qs32_mail_templates` VALUES ('20', 'set_jobsallow_title', '恭喜，您发布的职位({jobsname})已经通过审核！');
INSERT INTO `qs32_mail_templates` VALUES ('21', 'set_jobsnotallow_title', '很抱歉，你发布的职位({jobsname})未通过审核！');
INSERT INTO `qs32_mail_templates` VALUES ('22', 'set_licenseallow_title', '恭喜，你的企业信息已认证通过！');
INSERT INTO `qs32_mail_templates` VALUES ('23', 'set_licensenotallow_title', '很抱歉，你的企业信息未认证通过！');
INSERT INTO `qs32_mail_templates` VALUES ('24', 'set_addmap_title', '恭喜，您已成功开通企业电子地图！');
INSERT INTO `qs32_mail_templates` VALUES ('25', 'set_resumeallow_title', '恭喜，您的简历已通过审核！');
INSERT INTO `qs32_mail_templates` VALUES ('26', 'set_resumenotallow_title', '很抱歉，你的简历未通过审核！');

-- ----------------------------
-- Table structure for qs32_members
-- ----------------------------
DROP TABLE IF EXISTS `qs32_members`;
CREATE TABLE `qs32_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `username` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `email_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(11) NOT NULL,
  `mobile_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `reg_time` int(10) NOT NULL,
  `reg_ip` varchar(15) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  `qq_openid` varchar(60) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attach_resume_path` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`),
  KEY `qq_openid` (`qq_openid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=214670 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_members
-- ----------------------------
INSERT INTO `qs32_members` VALUES ('156', '2', 'wnfk2', 'wnfk2@163.com', '0', '', '0', '0e7b1f8889c48454754de1ed2fae6f56', 'aa', '1371359102', '138.6.3.1', '1371359102', '', '', '1', '0', '');
INSERT INTO `qs32_members` VALUES ('214663', '2', 'wnfk', 'wnfk2@163.com', '0', '', '0', '2f3eddca989e0f3a7e27639fe23ed7b9', 'aa', '1371289753', '192.0.0.1', '1372589507', '', '', '1', '0', '');
INSERT INTO `qs32_members` VALUES ('14', '2', 'web-login', 'wnfk@163.com', '0', '', '0', 'ef46b889a545c5f858a466190f36e40c', 'aa', '1371135625', '127.0.0.1', '1371136782', '', '', '1', '0', '');
INSERT INTO `qs32_members` VALUES ('214668', '1', 'qiye3', '??????', '0', '', '0', 'cb30fa8b4d1e4c4ef80feb469b3617f6', 'aa', '1372257670', '127.0.0.1', '1372586649', '', '', '1', '0', '');
INSERT INTO `qs32_members` VALUES ('214665', '1', 'qiye', 'mail', '0', '', '0', '2da9aaa811d844b0c0ac341234678e31', 'aa', '1371349890', '137.6.3.1', '1372565787', '', '', '1', '0', '');
INSERT INTO `qs32_members` VALUES ('214667', '1', 'fr_qiye', 'mail@mail.com', '0', '', '0', 'ee5811d316edf0650ac2c8127d6c56b2', 'aa', '1371566077', '127.0.0.1', '1371945410', '', '', '1', '0', '');

-- ----------------------------
-- Table structure for qs32_members_handsel
-- ----------------------------
DROP TABLE IF EXISTS `qs32_members_handsel`;
CREATE TABLE `qs32_members_handsel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `htype` varchar(60) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`htype`,`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_members_handsel
-- ----------------------------
INSERT INTO `qs32_members_handsel` VALUES ('1', '4', 'userlogin', '1370153069');
INSERT INTO `qs32_members_handsel` VALUES ('2', '13', 'userlogin', '1370614514');
INSERT INTO `qs32_members_handsel` VALUES ('3', '20', 'userlogin', '1370616029');
INSERT INTO `qs32_members_handsel` VALUES ('4', '21', 'userlogin', '1370616739');
INSERT INTO `qs32_members_handsel` VALUES ('5', '22', 'userlogin', '1370699795');
INSERT INTO `qs32_members_handsel` VALUES ('6', '23', 'userlogin', '1370864880');
INSERT INTO `qs32_members_handsel` VALUES ('7', '22', 'userlogin', '1370872677');
INSERT INTO `qs32_members_handsel` VALUES ('8', '24', 'userlogin', '1371045829');
INSERT INTO `qs32_members_handsel` VALUES ('9', '4', 'userlogin', '1372336012');
INSERT INTO `qs32_members_handsel` VALUES ('10', '4', 'userlogin', '1372506389');
INSERT INTO `qs32_members_handsel` VALUES ('11', '214669', 'userlogin', '1372524176');
INSERT INTO `qs32_members_handsel` VALUES ('12', '214665', 'userlogin', '1372565787');

-- ----------------------------
-- Table structure for qs32_members_info
-- ----------------------------
DROP TABLE IF EXISTS `qs32_members_info`;
CREATE TABLE `qs32_members_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `realname` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birthday` varchar(30) NOT NULL,
  `addresses` varchar(120) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `qq` varchar(30) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `avatars` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_members_info
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_members_log
-- ----------------------------
DROP TABLE IF EXISTS `qs32_members_log`;
CREATE TABLE `qs32_members_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_uid` int(10) NOT NULL,
  `log_username` varchar(60) NOT NULL,
  `log_addtime` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_type` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`),
  KEY `log_addtime` (`log_addtime`),
  KEY `log_username` (`log_username`),
  KEY `type_addtime` (`log_type`,`log_addtime`),
  KEY `uid_addtime` (`log_uid`,`log_addtime`),
  KEY `utype_addtime` (`log_utype`,`log_addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=279 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_members_log
-- ----------------------------
INSERT INTO `qs32_members_log` VALUES ('1', '1', 'geren', '1370101815', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('2', '1', 'geren', '1370101815', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('3', '2', 'abc', '1370103291', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('4', '2', 'abc', '1370103296', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('5', '1', 'geren', '1370104261', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('6', '3', 'geren2', '1370104306', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('7', '3', 'geren2', '1370104306', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('8', '3', 'geren2', '1370105338', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('9', '3', 'geren2', '1370106604', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('10', '3', 'geren2', '1370107232', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('11', '3', 'geren2', '1370107493', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('12', '3', 'geren2', '1370107501', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('13', '3', 'geren2', '1370107507', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('14', '3', 'geren2', '1370107747', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('15', '3', 'geren2', '1370107905', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('16', '3', 'geren2', '1370108217', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('17', '3', 'geren2', '1370108418', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('18', '3', 'geren2', '1370108491', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('19', '3', 'geren2', '1370108494', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('20', '3', 'geren2', '1370108496', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('21', '3', 'geren2', '1370108502', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('22', '3', 'geren2', '1370108805', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('23', '3', 'geren2', '1370109020', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('24', '3', 'geren2', '1370109101', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('25', '3', 'geren2', '1370109533', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('26', '3', 'geren2', '1370109615', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('27', '3', 'geren2', '1370109672', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('28', '3', 'geren2', '1370109937', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('29', '3', 'geren2', '1370130663', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('30', '3', 'geren2', '1370130838', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('31', '3', 'geren2', '1370133733', '刷新了简历', '127.0.0.1', '2', '1102');
INSERT INTO `qs32_members_log` VALUES ('32', '3', 'geren2', '1370133907', '修改了简历(周小猪)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('33', '3', 'geren2', '1370135142', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('34', '3', 'geren2', '1370135713', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('35', '3', 'geren2', '1370136409', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('36', '3', 'geren2', '1370136465', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('37', '3', 'geren2', '1370136540', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('38', '3', 'geren2', '1370136552', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('39', '3', 'geren2', '1370136555', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('40', '3', 'geren2', '1370136575', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('41', '3', 'geren2', '1370136588', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('42', '3', 'geren2', '1370136677', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('43', '3', 'geren2', '1370136709', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('44', '3', 'geren2', '1370136725', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('45', '3', 'geren2', '1370136756', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('46', '3', 'geren2', '1370136781', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('47', '3', 'geren2', '1370136998', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('48', '3', 'geren2', '1370137032', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('49', '3', 'geren2', '1370137045', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('50', '3', 'geren2', '1370137095', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('51', '3', 'geren2', '1370137108', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('52', '3', 'geren2', '1370137725', '修改了简历(ab)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('53', '3', 'geren2', '1370138104', '修改了简历(周小猪)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('54', '3', 'geren2', '1370138234', '修改了简历(周小猪)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('55', '3', 'geren2', '1370138570', '修改了简历(周小猪)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('56', '3', 'geren2', '1370138712', '删除简历(1)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('57', '3', 'geren2', '1370138738', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('58', '3', 'geren2', '1370138761', '删除简历(2)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('59', '3', 'geren2', '1370138764', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('60', '3', 'geren2', '1370138969', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('61', '3', 'geren2', '1370139145', '修改了简历(新简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('62', '3', 'geren2', '1370139248', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('63', '3', 'geren2', '1370139383', '删除简历(7)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('64', '3', 'geren2', '1370139387', '删除简历(6)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('65', '3', 'geren2', '1370139438', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('66', '3', 'geren2', '1370139506', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('67', '3', 'geren2', '1370139646', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('68', '3', 'geren2', '1370139654', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('69', '3', 'geren2', '1370139699', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('70', '3', 'geren2', '1370139721', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('71', '3', 'geren2', '1370140154', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('72', '3', 'geren2', '1370140171', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('73', '3', 'geren2', '1370140184', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('74', '3', 'geren2', '1370140195', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('75', '3', 'geren2', '1370140214', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('76', '3', 'geren2', '1370140284', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('77', '3', 'geren2', '1370140513', '修改了简历(简历名称不)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('78', '3', 'geren2', '1370141615', '删除简历(10)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('79', '3', 'geren2', '1370141641', '删除简历(9)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('80', '3', 'geren2', '1370142514', '修改了简历(English Resume)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('81', '3', 'geren2', '1370143128', '修改了简历(JImmy)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('82', '3', 'geren2', '1370143136', '修改了简历(Jmmy)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('83', '3', 'geren2', '1370143312', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('84', '3', 'geren2', '1370143345', '删除简历(11)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('85', '3', 'geren2', '1370143535', '删除简历(13)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('86', '3', 'geren2', '1370143824', '删除简历(14)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('87', '3', 'geren2', '1370143869', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('88', '3', 'geren2', '1370143880', '删除简历(15)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('89', '3', 'geren2', '1370143885', '删除简历(8)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('90', '3', 'geren2', '1370143925', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('91', '3', 'geren2', '1370143926', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('92', '3', 'geren2', '1370143961', '删除简历(16)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('93', '3', 'geren2', '1370143965', '删除简历(17)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('94', '3', 'geren2', '1370144007', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('95', '3', 'geren2', '1370144008', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('96', '3', 'geren2', '1370144031', '删除简历(19)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('97', '3', 'geren2', '1370144039', '修改了简历(asdf)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('98', '3', 'geren2', '1370144041', '修改了简历(asdf)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('99', '3', 'geren2', '1370144171', '删除简历(18)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('100', '3', 'geren2', '1370144211', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('101', '3', 'geren2', '1370144212', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('102', '3', 'geren2', '1370144277', '删除简历(21)', '127.0.0.1', '2', '1103');
INSERT INTO `qs32_members_log` VALUES ('103', '3', 'geren2', '1370144413', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('104', '3', 'geren2', '1370144694', '修改了简历(asdfasdf)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('105', '3', 'geren2', '1370144696', '修改了简历(asdfasdf)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('106', '3', 'geren2', '1370152985', '修改了简历(Jmmy)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('107', '3', 'geren2', '1370153004', '修改了简历(Jmmy)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('108', '3', 'geren2', '1370153019', '修改了简历(Jmmy)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('117', '3', 'geren2', '1370154628', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('119', '3', 'geren2', '1370160882', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('125', '1', 'geren', '1370180244', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('126', '3', 'geren2', '1370181402', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('127', '3', 'geren2', '1370181418', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('128', '5', 'zhaoxiaoyuan', '1370181476', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('129', '5', 'zhaoxiaoyuan', '1370181476', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('130', '3', 'geren2', '1370181536', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('131', '5', 'zhaoxiaoyuan', '1370265083', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('132', '5', 'zhaoxiaoyuan', '1370265114', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('133', '5', 'zhaoxiaoyuan', '1370265404', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('134', '3', 'geren2', '1370266593', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('135', '5', 'zhaoxiaoyuan', '1370351721', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('136', '6', 'wnfk1', '1370351797', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('137', '7', 'wnfk2', '1370353914', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('138', '7', 'wnfk2', '1370353923', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('139', '7', 'wnfk2', '1370353974', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('140', '6', 'wnfk1', '1370354408', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('141', '8', '猪头2', '1370608665', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('142', '8', '猪头2', '1370608712', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('143', '8', '猪头2', '1370608740', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('144', '7', 'wnfk2', '1370608911', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('145', '7', 'wnfk2', '1370609253', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('146', '7', 'wnfk2', '1370609263', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('147', '6', 'wnfk1', '1370610155', '成功登录', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('148', '6', 'wnfk1', '1370611509', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('149', '6', 'wnfk1', '1370611510', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('150', '6', 'wnfk1', '1370611526', '刷新了简历', '127.0.0.1', '2', '1102');
INSERT INTO `qs32_members_log` VALUES ('151', '12', 'asdf', '1370614499', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('156', '14', 'wnfk3', '1370614563', '注册成为会员', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('157', '15', 'zhutou3', '1370614706', '?????????', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('158', '16', 'zhutdou3', '1370614860', '?????????', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('159', '17', 'zhutou4', '1370615210', '?????????', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('160', '18', 'zhutou5', '1370615496', '?????????', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('161', '18', 'zhutou5', '1370615496', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('162', '19', 'hxl', '1370615751', '?????????', '127.0.0.1', '2', '1000');
INSERT INTO `qs32_members_log` VALUES ('163', '19', 'hxl', '1370615751', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('164', '19', 'hxl', '1370615885', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('165', '19', 'hxl', '1370615912', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('166', '19', 'hxl', '1370615946', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('175', '7', 'wnfk2', '1370697250', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('183', '7', 'wnfk2', '1370831736', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('184', '7', 'wnfk2', '1370831737', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('185', '7', 'wnfk2', '1370864671', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('186', '7', 'wnfk2', '1370864719', '刷新了简历', '127.0.0.1', '2', '1102');
INSERT INTO `qs32_members_log` VALUES ('212', '7', 'wnfk2', '1370867808', '修改了简历(张朝阳的个人简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('213', '3', 'geren2', '1370867853', '修改了简历(曹国军的个人简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('214', '3', 'geren2', '1370867875', '修改了简历(李彦宏的个人简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('215', '3', 'geren2', '1370867916', '修改了简历(乔布斯的个人简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('216', '6', 'wnfk1', '1370867954', '修改了简历(张建军的英文简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('217', '6', 'wnfk1', '1370868248', '申请高级人才', '127.0.0.1', '2', '1107');
INSERT INTO `qs32_members_log` VALUES ('218', '6', 'wnfk1', '1370868893', '申请了职位:预决算工程师', '127.0.0.1', '2', '1301');
INSERT INTO `qs32_members_log` VALUES ('228', '6', 'wnfk1', '1370874459', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('232', '6', 'wnfk1', '1370874529', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('234', '6', 'wnfk1', '1370877313', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('235', '7', 'wnfk2', '1370877570', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('236', '6', 'wnfk1', '1371023144', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('237', '6', 'wnfk1', '1371023414', '修改了简历(Jimmy)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('238', '6', 'wnfk1', '1371023428', '修改了简历(张建军的英文简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('239', '6', 'wnfk1', '1371023448', '申请高级人才', '127.0.0.1', '2', '1107');
INSERT INTO `qs32_members_log` VALUES ('240', '6', 'wnfk1', '1371027733', '修改了简历(张建军的英文简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('241', '6', 'wnfk1', '1371027926', '修改了简历(张建军的英文简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('242', '6', 'wnfk1', '1371044566', '修改了简历(张建军的英文简历)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('243', '6', 'wnfk1', '1371044608', '设置简历隐私(25)', '127.0.0.1', '2', '1104');
INSERT INTO `qs32_members_log` VALUES ('273', '214663', 'wnfk', '1372589507', '??????', '127.0.0.1', '2', '1001');
INSERT INTO `qs32_members_log` VALUES ('274', '214663', 'wnfk', '1372599967', '创建了简历', '127.0.0.1', '2', '1101');
INSERT INTO `qs32_members_log` VALUES ('275', '214663', 'wnfk', '1372600509', '修改了简历(历名称)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('276', '214663', 'wnfk', '1372600608', '修改了简历(历名称)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('277', '214663', 'wnfk', '1372601449', '修改了简历(历名称)', '127.0.0.1', '2', '1105');
INSERT INTO `qs32_members_log` VALUES ('278', '214663', 'wnfk', '1372604872', '修改了简历(历名称)', '127.0.0.1', '2', '1105');

-- ----------------------------
-- Table structure for qs32_members_points
-- ----------------------------
DROP TABLE IF EXISTS `qs32_members_points`;
CREATE TABLE `qs32_members_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_uid` (`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_members_points
-- ----------------------------
INSERT INTO `qs32_members_points` VALUES ('295', '214668', '0');
INSERT INTO `qs32_members_points` VALUES ('294', '214667', '0');
INSERT INTO `qs32_members_points` VALUES ('293', '214665', '0');

-- ----------------------------
-- Table structure for qs32_members_points_rule
-- ----------------------------
DROP TABLE IF EXISTS `qs32_members_points_rule`;
CREATE TABLE `qs32_members_points_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `operation` tinyint(1) NOT NULL DEFAULT '2',
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_members_points_rule
-- ----------------------------
INSERT INTO `qs32_members_points_rule` VALUES ('1', '刷新职位', 'jobs_refresh', '2', '0');
INSERT INTO `qs32_members_points_rule` VALUES ('2', '发布职位', 'jobs_add', '2', '15');
INSERT INTO `qs32_members_points_rule` VALUES ('3', '职位有效期内每天', 'jobs_daily', '2', '1');
INSERT INTO `qs32_members_points_rule` VALUES ('4', '下载普通简历', 'resume_download', '2', '1');
INSERT INTO `qs32_members_points_rule` VALUES ('5', '下载高级人才简历', 'resume_download_advanced', '2', '2');
INSERT INTO `qs32_members_points_rule` VALUES ('6', '发起普通人才面试邀请', 'interview_invite', '2', '1');
INSERT INTO `qs32_members_points_rule` VALUES ('7', '发起高级人才面试邀请', 'interview_invite_advanced', '2', '2');
INSERT INTO `qs32_members_points_rule` VALUES ('8', '修改招聘信息', 'jobs_edit', '2', '3');
INSERT INTO `qs32_members_points_rule` VALUES ('9', '永久开通电子地图', 'company_map', '2', '10');
INSERT INTO `qs32_members_points_rule` VALUES ('10', '上传营业执照并认证通过', 'company_auth', '1', '15');
INSERT INTO `qs32_members_points_rule` VALUES ('11', '新注册会员赠送', 'reg_points', '1', '60');
INSERT INTO `qs32_members_points_rule` VALUES ('12', '会员每天第一次登录', 'userlogin', '1', '1');
INSERT INTO `qs32_members_points_rule` VALUES ('13', '会员邮箱认证通过', 'verifyemail', '1', '3');
INSERT INTO `qs32_members_points_rule` VALUES ('14', '会员手机认证通过', 'verifymobile', '1', '3');

-- ----------------------------
-- Table structure for qs32_members_setmeal
-- ----------------------------
DROP TABLE IF EXISTS `qs32_members_setmeal`;
CREATE TABLE `qs32_members_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `effective` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `setmeal_id` int(10) unsigned NOT NULL,
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `expense` int(10) unsigned NOT NULL,
  `jobs_ordinary` int(10) unsigned NOT NULL,
  `download_resume_ordinary` int(10) unsigned NOT NULL,
  `download_resume_senior` int(10) unsigned NOT NULL,
  `interview_ordinary` int(10) unsigned NOT NULL,
  `interview_senior` int(10) unsigned NOT NULL,
  `talent_pool` int(10) unsigned NOT NULL,
  `added` varchar(250) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_uid` (`uid`),
  KEY `effective_endtime` (`effective`,`endtime`),
  KEY `effective_setmealid` (`effective`,`setmeal_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_members_setmeal
-- ----------------------------
INSERT INTO `qs32_members_setmeal` VALUES ('294', '1', '214667', '7', '远洋版', '360', '0', '100', '100', '100', '100', '100', '500', '', '1371484800', '1403020800');
INSERT INTO `qs32_members_setmeal` VALUES ('295', '1', '214668', '3', 'VIP季度会员', '90', '0', '98', '77', '100', '100', '100', '88', '', '1372176000', '1380124800');
INSERT INTO `qs32_members_setmeal` VALUES ('293', '1', '214665', '8', '近海版季度会员', '90', '0', '97', '100', '100', '100', '100', '100', '', '1372176000', '1380124800');

-- ----------------------------
-- Table structure for qs32_navigation
-- ----------------------------
DROP TABLE IF EXISTS `qs32_navigation`;
CREATE TABLE `qs32_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `urltype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `color` varchar(30) NOT NULL,
  `pagealias` varchar(100) NOT NULL,
  `list_id` varchar(30) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `target` varchar(100) NOT NULL,
  `navigationorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_navigation
-- ----------------------------
INSERT INTO `qs32_navigation` VALUES ('1', 'QS_top', '0', '1', '首  页', '', 'QS_index', '', 'homepage', '', '_self', '0');
INSERT INTO `qs32_navigation` VALUES ('2', 'QS_top', '0', '1', '招聘信息', '', 'QS_jobs', '', 'jobs', '', '_blank', '0');
INSERT INTO `qs32_navigation` VALUES ('3', 'QS_top', '0', '0', '微招聘', '', 'QS_simplelist', '', 'simple', '', '_self', '0');
INSERT INTO `qs32_navigation` VALUES ('4', 'QS_top', '0', '1', '求职信息', '', 'QS_resume', '', 'resume', '', '_blank', '0');
INSERT INTO `qs32_navigation` VALUES ('5', 'QS_top', '0', '1', 'HR工具箱', '', 'QS_hrtoolslist', '1', 'hrtools', '', '_self', '0');
INSERT INTO `qs32_navigation` VALUES ('6', 'QS_top', '0', '1', '新闻资讯', '', 'QS_news', '', 'news', '', '_self', '0');
INSERT INTO `qs32_navigation` VALUES ('7', 'QS_top', '0', '1', '会员中心', '', 'QS_login', '', 'user', '', '_self', '0');
INSERT INTO `qs32_navigation` VALUES ('8', 'QS_top', '1', '1', '进入论坛', '#FF0000', '', '', '', 'http://www.74cms.com/bbs/', '_blank', '0');

-- ----------------------------
-- Table structure for qs32_navigation_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_navigation_category`;
CREATE TABLE `qs32_navigation_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `categoryname` varchar(30) NOT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_navigation_category
-- ----------------------------
INSERT INTO `qs32_navigation_category` VALUES ('1', 'QS_top', '顶部导航', '1');

-- ----------------------------
-- Table structure for qs32_notice
-- ----------------------------
DROP TABLE IF EXISTS `qs32_notice`;
CREATE TABLE `qs32_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) NOT NULL DEFAULT '0',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL,
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`sort`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_notice
-- ----------------------------
INSERT INTO `qs32_notice` VALUES ('1', '1', '全场免费招聘！', '全场免费招聘！', '', '0', '1', 'http://', '', '', '1', '1370859154', '0');
INSERT INTO `qs32_notice` VALUES ('2', '1', '今天招聘不要钱，请大家注意啦！', '今天招聘不要钱，请大家注意啦！', '#FF0000', '0', '1', 'http://', '', '', '1', '1370859198', '0');
INSERT INTO `qs32_notice` VALUES ('3', '3', '个人会员免费填写3份简历！', '个人会员免费填写3份简历！', '', '0', '1', 'http://', '', '', '1', '1370859235', '0');

-- ----------------------------
-- Table structure for qs32_notice_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_notice_category`;
CREATE TABLE `qs32_notice_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_notice_category
-- ----------------------------
INSERT INTO `qs32_notice_category` VALUES ('1', '首页公告', '0', '1');
INSERT INTO `qs32_notice_category` VALUES ('2', '企业会员公告', '0', '1');
INSERT INTO `qs32_notice_category` VALUES ('3', '个人会员公告', '0', '1');

-- ----------------------------
-- Table structure for qs32_order
-- ----------------------------
DROP TABLE IF EXISTS `qs32_order`;
CREATE TABLE `qs32_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `is_paid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `oid` varchar(200) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_name` varchar(20) NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `payment_time` int(10) unsigned NOT NULL,
  `description` varchar(150) NOT NULL,
  `setmeal` int(10) unsigned NOT NULL,
  `notes` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `oid` (`oid`),
  KEY `payment_name` (`payment_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_order
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_page
-- ----------------------------
DROP TABLE IF EXISTS `qs32_page`;
CREATE TABLE `qs32_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `systemclass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pagetpye` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `alias` varchar(60) NOT NULL,
  `pname` varchar(12) NOT NULL,
  `file` varchar(100) NOT NULL,
  `tpl` varchar(100) NOT NULL,
  `rewrite` varchar(100) NOT NULL,
  `html` varchar(100) NOT NULL,
  `url` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `caching` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(60) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_page
-- ----------------------------
INSERT INTO `qs32_page` VALUES ('1', '1', '1', 'QS_index', '网站首页', 'index.php', 'index.htm', 'index.htm', '', '1', '0', 'homepage', '龙船招聘网 - 船舶行业招聘求职 - 最专业的船舶招聘网', '龙船招聘网是中国最专业的船舶招聘网站,提供船厂招聘,船舶设计人才招聘,船舶与海洋工程招聘,船舶校园招聘等信息', '船厂招聘,船舶招聘,船舶求职,船舶设计招聘求职,中国船舶招聘求职,船舶与海洋工程招聘,船舶人力资源,船舶校园招聘');
INSERT INTO `qs32_page` VALUES ('2', '1', '1', 'QS_jobs', '招聘首页', 'jobs/', 'jobs.htm', 'jobs/', 'html/jobs/', '1', '0', 'jobs', '招聘首页', '', '');
INSERT INTO `qs32_page` VALUES ('3', '1', '2', 'QS_jobslist', '招聘列表', 'jobs/jobs-list.php', 'jobs-list.htm', '', '', '0', '0', 'jobs', '', '', '');
INSERT INTO `qs32_page` VALUES ('4', '1', '3', 'QS_jobsshow', '招聘详细页', 'jobs/jobs-show.php', 'jobs-show.htm', 'jobs/jobs-show-($id).htm', 'html/jobs/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'jobs', '', '', '');
INSERT INTO `qs32_page` VALUES ('5', '1', '3', 'QS_jobscontrast', '职位对比页面', 'jobs/jobs-contrast.php', 'jobs-contrast.htm', '', '', '0', '0', 'jobs', '', '', '');
INSERT INTO `qs32_page` VALUES ('6', '1', '3', 'QS_companyshow', '企业简介页', 'company/company-show.php', 'company-show.htm', 'company/company-show-($id).htm', 'html/company/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'jobs', '', '', '');
INSERT INTO `qs32_page` VALUES ('7', '1', '1', 'QS_login', '会员登录', 'user/login.php', 'user/login.htm', '', '', '0', '0', 'user', '会员登录', '', '');
INSERT INTO `qs32_page` VALUES ('8', '1', '1', 'QS_resume', '简历首页', 'resume/', 'resume.htm', 'resume/', 'html/resume/', '1', '0', 'resume', '人才信息', '', '');
INSERT INTO `qs32_page` VALUES ('9', '1', '2', 'QS_resumelist', '简历列表', 'resume/resume-list.php', 'resume-list.htm', '', '', '0', '0', 'resume', '', '', '');
INSERT INTO `qs32_page` VALUES ('10', '1', '2', 'QS_resumetag', '简历标签搜索', 'resume/resume-search.php', 'resumetag-search.htm', '', '', '0', '0', 'resumetag', '', '', '');
INSERT INTO `qs32_page` VALUES ('11', '1', '3', 'QS_resumeshow', '简历详细页', 'resume/resume-show.php', 'resume-show.htm', 'resume/resume-show-($id).htm', 'html/resume/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'resume', '', '', '');
INSERT INTO `qs32_page` VALUES ('12', '1', '2', 'QS_hrtoolslist', 'HR工具箱列表', 'hrtools/hrtools-list.php', 'hrtools-list.htm', 'hrtools/hrtools-list-($id).htm', 'html/hrtools/($id).html', '1', '0', 'hrtools', 'HR工具箱', '', '');
INSERT INTO `qs32_page` VALUES ('13', '1', '1', 'QS_news', '资讯首页', 'news/', 'news.htm', 'news/', 'html/news/', '1', '0', 'news', '新闻资讯', '', '');
INSERT INTO `qs32_page` VALUES ('14', '1', '2', 'QS_newslist', '资讯列表', 'news/news-list.php', 'news-list.htm', 'news/news-list-($id)-($page).htm', 'html/news/($id)_($page).html', '1', '0', 'news', '', '', '');
INSERT INTO `qs32_page` VALUES ('15', '1', '3', 'QS_newsshow', '资讯详细页', 'news/news-show.php', 'news-show.htm', 'news/news-show-($id).htm', 'html/news/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'news', '', '', '');
INSERT INTO `qs32_page` VALUES ('16', '1', '3', 'QS_explainshow', '说明页详细页', 'explain/explain-show.php', 'explain-show.htm', 'explain/explain-show-($id).htm', 'html/explain/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'explain', '', '', '');
INSERT INTO `qs32_page` VALUES ('17', '1', '2', 'QS_noticelist', '公告列表', 'notice/notice-list.php', 'notice-list.htm', 'notice/notice-list-($id)-($page).htm', 'html/notice/($id)_($page).html', '1', '0', 'notice', '', '', '');
INSERT INTO `qs32_page` VALUES ('18', '1', '3', 'QS_noticeshow', '公告详细页', 'notice/notice-show.php', 'notice-show.htm', 'notice/notice-show-($id).htm', 'html/notice/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'notice', '', '', '');
INSERT INTO `qs32_page` VALUES ('19', '1', '2', 'QS_simplelist', '微招聘', 'simple/simple-list.php', 'simple/simple-list.htm', 'simple/simple-list-($page).htm', '', '0', '0', 'simple', '微招聘', '', '');
INSERT INTO `qs32_page` VALUES ('20', '1', '3', 'QS_simpleshow', '微招聘详细页', 'simple/simple-show.php', 'simple/simple-show.htm', 'simple/simple-show-($id).htm', 'html/simple/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'simple', '', '', '');
INSERT INTO `qs32_page` VALUES ('21', '1', '2', 'QS_officebuilding', '写字楼搜索', 'jobs/officebuilding-search.php', 'officebuilding-search.htm', '', '', '0', '0', 'officebuilding', '', '', '');
INSERT INTO `qs32_page` VALUES ('22', '1', '2', 'QS_street', '道路搜索', 'jobs/street-search.php', 'street-search.htm', '', '', '0', '0', 'street', '', '', '');
INSERT INTO `qs32_page` VALUES ('23', '1', '2', 'QS_jobtag', '职位标签搜索', 'jobs/jobtag-search.php', 'jobtag-search.htm', '', '', '0', '0', 'jobtag', '', '', '');
INSERT INTO `qs32_page` VALUES ('24', '1', '1', 'QS_help', '帮助首页', 'help/', 'help/index.htm', 'help/', 'html/help/', '1', '0', 'help', '帮助', '', '');
INSERT INTO `qs32_page` VALUES ('25', '1', '2', 'QS_helplist', '帮助列表', 'help/help-list.php', 'help/help-list.htm', 'help/help-list-($id)-($page).htm', 'html/help/($id)_($page).html', '1', '0', 'help', '', '', '');
INSERT INTO `qs32_page` VALUES ('26', '1', '3', 'QS_helpshow', '帮助详细页', 'help/help-show.php', 'help/help-show.htm', 'help/help-show-($id).htm', 'html/help/($y)($m)/($y)($m)($d)($id).html', '1', '0', 'help', '', '', '');
INSERT INTO `qs32_page` VALUES ('27', '1', '2', 'QS_helpsearch', '帮助搜索页', 'help/help-search.php', 'help/help-search.htm', '', '', '0', '0', 'help', '', '', '');

-- ----------------------------
-- Table structure for qs32_payment
-- ----------------------------
DROP TABLE IF EXISTS `qs32_payment`;
CREATE TABLE `qs32_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` int(10) unsigned NOT NULL DEFAULT '50',
  `typename` varchar(15) NOT NULL,
  `byname` varchar(50) NOT NULL,
  `p_introduction` varchar(100) NOT NULL,
  `notes` text,
  `partnerid` varchar(80) DEFAULT NULL,
  `ytauthkey` varchar(100) DEFAULT NULL,
  `fee` varchar(6) NOT NULL DEFAULT '0',
  `parameter1` varchar(50) DEFAULT NULL,
  `parameter2` varchar(50) DEFAULT NULL,
  `parameter3` varchar(50) DEFAULT NULL,
  `p_install` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_payment
-- ----------------------------
INSERT INTO `qs32_payment` VALUES ('1', '50', 'remittance', '转账/汇款', '没有开通网银的请选择此项，到款后需客服为您手动开通', '<br /><br />\r\n<div align=\"center\"><strong style=\" color:#FF6600; font-size:18px;\">付款后请通知我们客服！为你开通相关服务！</strong></div>\r\n <br />\r\n<strong style=\"color:#FF0000\" >联系客服</strong>\r\n  <br />\r\n客服QQ:000000000; 客服电话：000-0000000\r\n<br />\r\n<br />\r\n<strong style=\"color:#FF0000\" >付款方式</strong>\r\n<br />\r\n工商银行<br />\r\n  账号：000000000000000000000<br />\r\n户名：xxxxxxxxxxxxxxx<br />\r\n开户行：XXXXXXXXXXXXXX<br />\r\n---------------------------<br />\r\n  建设银行<br />\r\n  账号：000000000000000000000<br />\r\n  户名：xxxxxxxxxxxxxxx<br />\r\n开户行：XXXXXXXXXXXXXX\r\n<br />', 'remittance', '', '0', '', '', '', '2');
INSERT INTO `qs32_payment` VALUES ('2', '50', 'chinabank', '网银在线', '全面支持全国19家银行的信用卡及借记卡实现网上支付', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '', '', '0', '', '', '', '1');
INSERT INTO `qs32_payment` VALUES ('3', '50', 'tenpay', '财付通', '财付通是腾讯公司创办的中国领先的在线支付平台', '财付通支持全国各大银行的网银支付，用户也可以先充值到财付通，享受更加便捷的财付通余额支付体验。财付通的提现、收款、付款等配套账户功能，让资金使用更灵活。', null, null, '0', null, null, null, '2');
INSERT INTO `qs32_payment` VALUES ('4', '50', 'alipay', '支付宝', '全球领先的独立第三方支付平台', '支付宝，全球领先的独立第三方支付平台，致力于为广大用户提供安全快速的电子支付/网上支付/安全支付/手机支付体验，及转账收款/水电煤缴费/信用卡还款/AA收款等生活服务应用', null, null, '1.5', null, null, null, '2');

-- ----------------------------
-- Table structure for qs32_personal_favorites
-- ----------------------------
DROP TABLE IF EXISTS `qs32_personal_favorites`;
CREATE TABLE `qs32_personal_favorites` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `personal_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(100) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `personal_uid` (`personal_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_personal_favorites
-- ----------------------------
INSERT INTO `qs32_personal_favorites` VALUES ('1', '7', '1', 'HTML5/Javascript', '1370832491');

-- ----------------------------
-- Table structure for qs32_personal_jobs_apply
-- ----------------------------
DROP TABLE IF EXISTS `qs32_personal_jobs_apply`;
CREATE TABLE `qs32_personal_jobs_apply` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `personal_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `apply_addtime` int(10) unsigned NOT NULL,
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(200) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `company_uid_jobid` (`company_uid`,`jobs_id`),
  KEY `company_uid_look` (`company_uid`,`personal_look`),
  KEY `personal_uid_addtime` (`personal_uid`,`apply_addtime`),
  KEY `personal_uid_id` (`personal_uid`,`resume_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_personal_jobs_apply
-- ----------------------------
INSERT INTO `qs32_personal_jobs_apply` VALUES ('1', '25', '张建军', '6', '4', '预决算工程师', '4', '猪头有限公司', '21', '1370868893', '1', '要');

-- ----------------------------
-- Table structure for qs32_promotion
-- ----------------------------
DROP TABLE IF EXISTS `qs32_promotion`;
CREATE TABLE `qs32_promotion` (
  `cp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cp_available` tinyint(1) NOT NULL DEFAULT '1',
  `cp_promotionid` int(10) unsigned NOT NULL,
  `cp_uid` int(10) unsigned NOT NULL,
  `cp_jobid` int(10) unsigned NOT NULL,
  `cp_days` int(10) unsigned NOT NULL,
  `cp_starttime` int(10) unsigned NOT NULL,
  `cp_endtime` int(10) unsigned NOT NULL,
  `cp_val` varchar(160) NOT NULL,
  PRIMARY KEY (`cp_id`),
  KEY `cp_endtime` (`cp_endtime`),
  KEY `cp_uid` (`cp_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_promotion
-- ----------------------------
INSERT INTO `qs32_promotion` VALUES ('10', '1', '1', '214668', '7', '0', '1372586789', '1375178789', '');
INSERT INTO `qs32_promotion` VALUES ('7', '1', '0', '214668', '0', '0', '1372586789', '1375178789', '');
INSERT INTO `qs32_promotion` VALUES ('6', '1', '0', '214668', '0', '0', '1372586789', '1375178789', '');
INSERT INTO `qs32_promotion` VALUES ('5', '1', '0', '214668', '0', '0', '1372586789', '1375178789', '');

-- ----------------------------
-- Table structure for qs32_promotion_category
-- ----------------------------
DROP TABLE IF EXISTS `qs32_promotion_category`;
CREATE TABLE `qs32_promotion_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_available` tinyint(1) NOT NULL DEFAULT '1',
  `cat_name` varchar(30) NOT NULL,
  `cat_type` tinyint(3) unsigned NOT NULL,
  `cat_minday` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat_maxday` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_points` int(10) NOT NULL DEFAULT '0',
  `cat_notes` text NOT NULL,
  `cat_order` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_promotion_category
-- ----------------------------
INSERT INTO `qs32_promotion_category` VALUES ('1', '1', '推荐职位', '1', '15', '60', '3', '<p>职位推荐后，网站首页推荐职位栏目将会出现您的推荐职位。这样可以很大程度提高您的招聘效率。<br />\r\n推荐职位到期后将自动取消推荐。</p>', '0');
INSERT INTO `qs32_promotion_category` VALUES ('2', '1', '紧急招聘', '1', '7', '60', '3', '<p>设置紧急招聘后职位将出现在首页紧急招聘栏目中，而且在职位名称后面有急聘字样的图片。</p>\r\n<p>紧急招聘是按天计费，过期后将自动取消。</p>', '0');
INSERT INTO `qs32_promotion_category` VALUES ('3', '1', '职位置顶', '1', '7', '30', '6', '<p>置顶招聘将会在职位列表首页置顶显示，可有效提高招聘效率。</p>\r\n<p>置顶招聘是按天计费，过期后将自动取消。</p>', '0');
INSERT INTO `qs32_promotion_category` VALUES ('4', '1', '职位变色', '1', '7', '0', '2', '<p>通过此方案可让您的职位名称颜色随意变换，更加引人瞩目！</p>\r\n<p>职位套色是按天计费，过期后将自动取消。</p>', '0');

-- ----------------------------
-- Table structure for qs32_report
-- ----------------------------
DROP TABLE IF EXISTS `qs32_report`;
CREATE TABLE `qs32_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(150) NOT NULL,
  `jobs_addtime` int(10) unsigned NOT NULL,
  `content` varchar(250) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_report
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_resume
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume`;
CREATE TABLE `qs32_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `display_name` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `audit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(80) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `sex_cn` varchar(20) DEFAULT NULL,
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `trade` varchar(60) NOT NULL,
  `trade_cn` varchar(100) NOT NULL,
  `birthdate` smallint(4) unsigned NOT NULL,
  `height` tinyint(3) unsigned NOT NULL,
  `marriage` tinyint(3) unsigned NOT NULL,
  `marriage_cn` varchar(5) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(30) NOT NULL,
  `wage` tinyint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `householdaddress` varchar(80) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `tag` varchar(160) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `email_notify` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qq` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `recentjobs` varchar(200) NOT NULL,
  `intention_jobs` varchar(100) NOT NULL,
  `specialty` varchar(200) NOT NULL,
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `photo_img` varchar(80) NOT NULL,
  `photo_audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `photo_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `complete` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `complete_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `tpl` varchar(60) NOT NULL,
  `resume_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `refreshtime` (`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_resume
-- ----------------------------
INSERT INTO `qs32_resume` VALUES ('2', '0', '214664', '1', '2', '1', 'EnglishiResume201306162093059', 'Jim', '1', 'Male', '62', 'Full-time', '11,8', 'others,marine instruments', '2012', '0', '1', 'Singl', '75', 'One Year', '1005', '1075', 'Guangdong/Meizhou', '55', 'Keep Secret', 'ShanghaiShanghai', '67', 'Vocational high school/Technic', '', '3334444', 'wnfkwnfk@163.com', '0', '', 'mycontact', 'homepage', '', 'superintend,welding engineer', 'this is the information of self-evaluation.', '0', '', '1', '1', '1371348695', '1371348695', '1', '1', '60', '1', 'superintend welding engineer Jim00  Vocational high00 school/Technical School0', '1', '', '1');
INSERT INTO `qs32_resume` VALUES ('3', '0', '214663', '1', '2', '1', 'wnfk的个人简历', '魏丰凯', '1', '男', '64', '临时', '4', '大型设备/机电设备/重工业', '2010', '0', '3', '保密', '77', '三年以上', '1006', '1202', '江苏省/无锡市', '55', '面议', '广东省汕头市', '70', '大学本科', '', '13333333', 'wnfk2@163.com', '0', '', '', '', '', '监造工程师', '个人能力特别强，可以搞定一切别人搞不定的活！', '0', '', '1', '1', '1372588136', '1372588136', '1', '1', '60', '1', '监造工程师 魏丰凯0  工程00 工程师0 个人00 能力00 力特00 特别00 可以00 搞定00 一切00 别人00 不定00 大学本科', '1', '', '0');
INSERT INTO `qs32_resume` VALUES ('4', '0', '214663', '1', '2', '1', 'Wnfk\'s English Resume', 'Jim Green', '1', 'Male', '62', 'Full-time', '5', 'shipping', '2009', '0', '3', 'Secre', '183', 'Ten Years', '1003', '1371', 'Chongqing/Chongqing', '55', 'Keep Secret', 'ZhejiangWenzhou', '71', 'Master', '', '13333333', 'wnfk2@163.com', '0', '', '', '', '', 'engineer', 'Please use simple language to describe their overall ability (limited to 2000 words, 2000 words left)\r\nPlease use simple language to describe their overall ability (limited to 2000 words, 2000 words l', '0', '', '1', '1', '1372592774', '1372592774', '1', '1', '60', '1', 'engineer Jim00 Green0  Master0', '2', '', '1');
INSERT INTO `qs32_resume` VALUES ('1', '0', '214664', '1', '2', '1', '中文简历2013061512121964', '猪头', '1', '男', '62', '全职', '11,9,6', '其他,工程设计,游艇', '2008', '0', '2', '已婚', '75', '一年以上', '1004', '1355', '浙江省/绍兴市', '176', '8000～10000/月', '', '66', '高中', '', '13333333', '333@bb.com', '0', '', '', 'http://mysite.com', '', '焊接工程师,船东代表/机务,船坞码头基建,油气开采/钻井/地质等', '这是自我评价，呵呵', '0', '', '1', '1', '1371350954', '1371350954', '1', '1', '60', '1', '焊接工程师 船东代表/机务 船坞码头基建 油气开采/钻井/地质等 猪头00  焊接00 焊接工0 工程00 工程师0 船东00 代表00 机务00 船坞00 码头00 基建00 油气00 开采00 钻井00 地质00 这是00 自我00 评价00 呵呵00 高中00', '3', '', '0');

-- ----------------------------
-- Table structure for qs32_resume_education
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_education`;
CREATE TABLE `qs32_resume_education` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `start` varchar(20) NOT NULL,
  `endtime` varchar(20) NOT NULL,
  `school` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `education_remark` varchar(5000) NOT NULL COMMENT '教育经历文字版',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_resume_education
-- ----------------------------
INSERT INTO `qs32_resume_education` VALUES ('24', '3', '214663', '1900-01-01', '1900-01-01', '', '', '0', '', '2001年7月~2005年7月 就读某大学某专业,获本科学士学位\r\n2005年7月~2005年12月 参加某船厂培训\r\n2006年1月~2006年2月 参加某公司软件使用培训');
INSERT INTO `qs32_resume_education` VALUES ('25', '4', '214663', '1900-01-01', '1900-01-01', '', '', '0', '', 'Please use simple language to describe their education and training experience. For example, the following text: (limited to 2000 words, 2000 words left) \r\nPlease use simple language to describe their education and training experience. For example, the following text: (limited to 2000 words, 2000 words left)');
INSERT INTO `qs32_resume_education` VALUES ('22', '1', '214664', '1900-01-01', '1900-01-01', '', '', '0', '', 'asdf');
INSERT INTO `qs32_resume_education` VALUES ('23', '2', '214664', '1900-01-01', '1900-01-01', '', '', '0', '', 'July 2001 - July 2005, a student at a university, and obtained bachelor degree \r\nJuly 2005 - December 2005 to participate in a shipyard training \r\nJanuary 2006 - February 2006 to participate in training in the use of a software company');

-- ----------------------------
-- Table structure for qs32_resume_jobs
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_jobs`;
CREATE TABLE `qs32_resume_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `category` int(10) unsigned NOT NULL,
  `subclass` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`,`subclass`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_resume_jobs
-- ----------------------------
INSERT INTO `qs32_resume_jobs` VALUES ('104', '214664', '1', '1', '18');
INSERT INTO `qs32_resume_jobs` VALUES ('103', '214664', '1', '1', '15');
INSERT INTO `qs32_resume_jobs` VALUES ('102', '214664', '1', '1', '12');
INSERT INTO `qs32_resume_jobs` VALUES ('101', '214664', '1', '1', '9');
INSERT INTO `qs32_resume_jobs` VALUES ('112', '214663', '4', '1', '6');
INSERT INTO `qs32_resume_jobs` VALUES ('105', '214664', '2', '1', '12');
INSERT INTO `qs32_resume_jobs` VALUES ('106', '214664', '2', '1', '9');
INSERT INTO `qs32_resume_jobs` VALUES ('107', '214663', '3', '1', '16');

-- ----------------------------
-- Table structure for qs32_resume_search_key
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_search_key`;
CREATE TABLE `qs32_resume_search_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `nature` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `marriage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `experience` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sdistrict` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wage` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `education` smallint(5) unsigned NOT NULL DEFAULT '0',
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_resume_search_key
-- ----------------------------
INSERT INTO `qs32_resume_search_key` VALUES ('3', '0', '214663', '1', '64', '3', '77', '1006', '1202', '55', '70', '0', '1372588136', '1', '监造工程师 魏丰凯0  工程00 工程师0 个人00 能力00 力特00 特别00 可以00 搞定00 一切00 别人00 不定00 大学本科');
INSERT INTO `qs32_resume_search_key` VALUES ('4', '0', '214663', '1', '62', '3', '183', '1003', '1371', '55', '71', '0', '1372592774', '1', 'engineer Jim00 Green0  Master0');
INSERT INTO `qs32_resume_search_key` VALUES ('1', '0', '214664', '1', '62', '2', '75', '1004', '1355', '176', '66', '0', '1371350954', '1', '焊接工程师 船东代表/机务 船坞码头基建 油气开采/钻井/地质等 猪头00  焊接00 焊接工0 工程00 工程师0 船东00 代表00 机务00 船坞00 码头00 基建00 油气00 开采00 钻井00 地质00 这是00 自我00 评价00 呵呵00 高中00');
INSERT INTO `qs32_resume_search_key` VALUES ('2', '0', '214664', '1', '62', '1', '75', '1005', '1075', '55', '67', '0', '1371348695', '1', 'superintend welding engineer Jim00  Vocational high00 school/Technical School0');

-- ----------------------------
-- Table structure for qs32_resume_search_rtime
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_search_rtime`;
CREATE TABLE `qs32_resume_search_rtime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `nature` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `marriage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `experience` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sdistrict` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wage` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `education` smallint(5) unsigned NOT NULL DEFAULT '0',
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `district_rtime` (`district`,`refreshtime`),
  KEY `photo_rtime` (`photo`,`refreshtime`),
  KEY `refreshtime` (`refreshtime`),
  KEY `sdistrict_rtime` (`sdistrict`,`refreshtime`),
  KEY `talent_rtime` (`talent`,`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_resume_search_rtime
-- ----------------------------
INSERT INTO `qs32_resume_search_rtime` VALUES ('3', '0', '214663', '1', '64', '3', '77', '1006', '1202', '55', '70', '0', '1372588136', '1');
INSERT INTO `qs32_resume_search_rtime` VALUES ('4', '0', '214663', '1', '62', '3', '183', '1003', '1371', '55', '71', '0', '1372592774', '1');
INSERT INTO `qs32_resume_search_rtime` VALUES ('2', '0', '214664', '1', '62', '1', '75', '1005', '1075', '55', '67', '0', '1371348695', '1');
INSERT INTO `qs32_resume_search_rtime` VALUES ('1', '0', '214664', '1', '62', '2', '75', '1004', '1355', '176', '66', '0', '1371350954', '1');

-- ----------------------------
-- Table structure for qs32_resume_search_tag
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_search_tag`;
CREATE TABLE `qs32_resume_search_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `tag1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag5` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tag` (`tag1`,`tag2`,`tag3`,`tag4`,`tag5`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qs32_resume_search_tag
-- ----------------------------
INSERT INTO `qs32_resume_search_tag` VALUES ('3', '0', '214663', '77', '1006', '1202', '70', '0', '0', '0', '0', '0');
INSERT INTO `qs32_resume_search_tag` VALUES ('4', '0', '214663', '183', '1003', '1371', '71', '0', '0', '0', '0', '0');
INSERT INTO `qs32_resume_search_tag` VALUES ('2', '0', '214664', '75', '1005', '1075', '67', '0', '0', '0', '0', '0');
INSERT INTO `qs32_resume_search_tag` VALUES ('1', '0', '214664', '75', '1004', '1355', '66', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for qs32_resume_tmp
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_tmp`;
CREATE TABLE `qs32_resume_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `display_name` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `audit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(80) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `sex_cn` varchar(3) NOT NULL,
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `trade` varchar(60) NOT NULL,
  `trade_cn` varchar(100) NOT NULL,
  `birthdate` smallint(4) unsigned NOT NULL,
  `height` tinyint(3) unsigned NOT NULL,
  `marriage` tinyint(3) unsigned NOT NULL,
  `marriage_cn` varchar(5) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(30) NOT NULL,
  `wage` tinyint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `householdaddress` varchar(80) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `tag` varchar(160) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `email_notify` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qq` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `recentjobs` varchar(200) NOT NULL,
  `intention_jobs` varchar(100) NOT NULL,
  `specialty` varchar(200) NOT NULL,
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `photo_img` varchar(80) NOT NULL,
  `photo_audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `photo_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `complete` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `complete_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `tpl` varchar(60) NOT NULL,
  `resume_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `audit` (`audit`),
  KEY `refreshtime` (`refreshtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_resume_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_resume_training
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_training`;
CREATE TABLE `qs32_resume_training` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `start` varchar(20) NOT NULL,
  `endtime` varchar(20) NOT NULL,
  `agency` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `training_remark` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_resume_training
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_resume_work
-- ----------------------------
DROP TABLE IF EXISTS `qs32_resume_work`;
CREATE TABLE `qs32_resume_work` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `start` varchar(20) NOT NULL,
  `endtime` varchar(20) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `companyprofile` varchar(255) NOT NULL,
  `jobs` varchar(30) NOT NULL,
  `achievements` varchar(255) NOT NULL,
  `work_remark` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_resume_work
-- ----------------------------
INSERT INTO `qs32_resume_work` VALUES ('21', '3', '214663', '1900-01-01', '1900-01-01', '', '', '', '', '2006年2月~2007年7月 某船厂船体设计员,期间参与过某某船型设计 \r\n2007年8月~2009年5月 上海某设计公司设计主管,期间主持某某船型设计\r\n2009年1月~至今 上海某设计公司设计主管,主持某某船型设计');
INSERT INTO `qs32_resume_work` VALUES ('22', '4', '214663', '1900-01-01', '1900-01-01', '', '', '', '', 'February 2006 - July 2007, members of a shipyard hull design, ship design during the period involved in certain \r\nFebruary 2006 - July 2007, members of a shipyard hull design, ship design during the period involved in certain');
INSERT INTO `qs32_resume_work` VALUES ('19', '1', '214664', '1900-01-01', '1900-01-01', '', '', '', '', 'asdf');
INSERT INTO `qs32_resume_work` VALUES ('20', '2', '214664', '1900-01-01', '1900-01-01', '', '', '', '', 'August 2007 - May 2009, a Shanghai design company design director, presided over a certain period of ship design \r\nJanuary 2009 - has a Shanghai design company director, presided over a certain ship design');

-- ----------------------------
-- Table structure for qs32_setmeal
-- ----------------------------
DROP TABLE IF EXISTS `qs32_setmeal`;
CREATE TABLE `qs32_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `apply` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `expense` int(10) unsigned NOT NULL,
  `jobs_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `talent_pool` int(10) unsigned NOT NULL DEFAULT '0',
  `added` varchar(255) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_setmeal
-- ----------------------------
INSERT INTO `qs32_setmeal` VALUES ('1', '1', '0', '免费会员', '730', '0', '100', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('2', '1', '0', '月度会员', '30', '0', '100', '100', '100', '300', '300', '100', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('3', '1', '0', 'VIP季度会员', '90', '0', '100', '100', '100', '100', '100', '100', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('4', '1', '0', 'VIP半年会员', '180', '0', '100', '100', '100', '100', '100', '100', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('5', '1', '0', 'VIP年度会员', '360', '0', '100', '100', '100', '100', '100', '100', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('6', '1', '0', '近海版', '360', '0', '100', '100', '100', '100', '100', '100', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('7', '1', '0', '远洋版', '360', '0', '100', '100', '100', '100', '100', '100', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('8', '1', '0', '近海版季度会员', '90', '0', '100', '100', '100', '100', '100', '100', '', '0');
INSERT INTO `qs32_setmeal` VALUES ('9', '1', '0', '灵便版', '360', '0', '100', '100', '100', '100', '100', '100', '', '0');

-- ----------------------------
-- Table structure for qs32_simple
-- ----------------------------
DROP TABLE IF EXISTS `qs32_simple`;
CREATE TABLE `qs32_simple` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pwd` varchar(60) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `jobname` varchar(100) NOT NULL,
  `amount` smallint(3) unsigned NOT NULL DEFAULT '0',
  `comname` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `qq` varchar(30) NOT NULL,
  `address` varchar(180) NOT NULL,
  `detailed` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addip` varchar(80) NOT NULL,
  `key` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_click` (`audit`,`click`),
  KEY `audit_refreshtime` (`audit`,`refreshtime`),
  KEY `deadline` (`deadline`),
  KEY `tel` (`tel`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_simple
-- ----------------------------

-- ----------------------------
-- Table structure for qs32_sms_config
-- ----------------------------
DROP TABLE IF EXISTS `qs32_sms_config`;
CREATE TABLE `qs32_sms_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_sms_config
-- ----------------------------
INSERT INTO `qs32_sms_config` VALUES ('1', 'open', '0');
INSERT INTO `qs32_sms_config` VALUES ('2', 'sms_name', '');
INSERT INTO `qs32_sms_config` VALUES ('3', 'sms_key', '');
INSERT INTO `qs32_sms_config` VALUES ('4', 'set_applyjobs', '0');
INSERT INTO `qs32_sms_config` VALUES ('5', 'set_invite', '0');
INSERT INTO `qs32_sms_config` VALUES ('6', 'set_order', '0');
INSERT INTO `qs32_sms_config` VALUES ('7', 'set_payment', '0');
INSERT INTO `qs32_sms_config` VALUES ('8', 'set_editpwd', '0');
INSERT INTO `qs32_sms_config` VALUES ('9', 'set_jobsallow', '0');
INSERT INTO `qs32_sms_config` VALUES ('10', 'set_jobsnotallow', '0');
INSERT INTO `qs32_sms_config` VALUES ('11', 'set_licenseallow', '0');
INSERT INTO `qs32_sms_config` VALUES ('12', 'set_licensenotallow', '0');
INSERT INTO `qs32_sms_config` VALUES ('13', 'set_addrecommend', '0');
INSERT INTO `qs32_sms_config` VALUES ('15', 'set_addmap', '0');
INSERT INTO `qs32_sms_config` VALUES ('16', 'set_resumeallow', '0');
INSERT INTO `qs32_sms_config` VALUES ('17', 'set_resumenotallow', '0');

-- ----------------------------
-- Table structure for qs32_sms_templates
-- ----------------------------
DROP TABLE IF EXISTS `qs32_sms_templates`;
CREATE TABLE `qs32_sms_templates` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_sms_templates
-- ----------------------------
INSERT INTO `qs32_sms_templates` VALUES ('1', 'set_applyjobs', '{sitename}提醒您:{personalfullname}申请了您发布的职位{jobsname}，请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('2', 'set_invite', '{sitename}提醒您：{companyname}对您发起了面试邀请，请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('3', 'set_order', '{sitename}提醒您：订单{oid}已经添加成功，付款方式为：{paymenttpye}，应付金额{amount}。请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('4', 'set_payment', '{sitename}提醒您：充值成功，系统已为您开通服务，请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('5', 'set_editpwd', '{sitename}提醒您：您的密码修改成功，新密码为：{newpassword}');
INSERT INTO `qs32_sms_templates` VALUES ('6', 'set_jobsallow', '{sitename}提醒您：职位({jobsname})已经通过审核！请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('7', 'set_jobsnotallow', '{sitename}提醒您：职位({jobsname})未通过审核，请修改后再次提交审核！请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('8', 'set_licenseallow', '{sitename}提醒您：您的企业资料已认证通过！请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('9', 'set_licensenotallow', '{sitename}提醒您：你的企业认证未通过，请重新上传营业执照！请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('10', 'set_addrecommend', '{sitename}提醒您：您的职位已经成功推荐，请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('11', 'set_addmap', '{sitename}提醒您：您已成功开通企业电子地图！请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('12', 'set_resumeallow', '{sitename}提醒您：您的简历已通过审核！请登录{sitedomain}查看');
INSERT INTO `qs32_sms_templates` VALUES ('13', 'set_resumenotallow', '{sitename}提醒您：您的简历未通过审核，请修改后再次提交审核！请登录{sitedomain}查看');

-- ----------------------------
-- Table structure for qs32_syslog
-- ----------------------------
DROP TABLE IF EXISTS `qs32_syslog`;
CREATE TABLE `qs32_syslog` (
  `l_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `l_type` tinyint(1) unsigned NOT NULL,
  `l_type_name` varchar(30) NOT NULL,
  `l_time` int(10) unsigned NOT NULL,
  `l_ip` varchar(20) NOT NULL,
  `l_page` text NOT NULL,
  `l_str` text NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_syslog
-- ----------------------------
INSERT INTO `qs32_syslog` VALUES ('1', '2', 'MAIL', '1370615756', '127.0.0.1', '%2Fplus%2Fajax_verify_email.php', '邮件配置信息不完整');
INSERT INTO `qs32_syslog` VALUES ('2', '2', 'MAIL', '1370615758', '127.0.0.1', '%2Fplus%2Fajax_verify_email.php', '邮件配置信息不完整');
INSERT INTO `qs32_syslog` VALUES ('3', '2', 'MAIL', '1370615804', '127.0.0.1', '%2Fplus%2Fajax_verify_email.php', 'The following From address failed: hanxianlong888@163..com<p>SMTP server error: Mail from must equal authorized user\r\n</p>\n');

-- ----------------------------
-- Table structure for qs32_text
-- ----------------------------
DROP TABLE IF EXISTS `qs32_text`;
CREATE TABLE `qs32_text` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_text
-- ----------------------------
INSERT INTO `qs32_text` VALUES ('1', 'personal_talent_requirement', '');
INSERT INTO `qs32_text` VALUES ('2', 'agreement', '请完善注册协议请完善注册协议请完善注册协议请完善注册协议请完善注册协议请完善注册协议请完善注册协议请完善注册协议请完善注册协议请完善注册协议');
INSERT INTO `qs32_text` VALUES ('3', 'link_application_txt', '有意与本站交换链接的同盟请注意：<br />1、贵网站为人才相关网站；<br />2、首页友情连接，要求pr&gt;=6、alexa &lt; 10000；其他页面连接根据具体页面而定（请具体咨询）。<br />3、贵网站要在百度google都有记录收录，且网站访问速度不能太慢。');

-- ----------------------------
-- Table structure for qs32_tpl
-- ----------------------------
DROP TABLE IF EXISTS `qs32_tpl`;
CREATE TABLE `qs32_tpl` (
  `tpl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_type` tinyint(1) NOT NULL,
  `tpl_name` varchar(80) NOT NULL,
  `tpl_display` tinyint(1) NOT NULL DEFAULT '1',
  `tpl_dir` varchar(80) NOT NULL,
  `tpl_val` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qs32_tpl
-- ----------------------------
INSERT INTO `qs32_tpl` VALUES ('1', '2', '枫叶寒露', '1', 'fengyehanlu', '0');
INSERT INTO `qs32_tpl` VALUES ('2', '2', '默认模版', '1', 'default', '0');
INSERT INTO `qs32_tpl` VALUES ('3', '1', '深蓝商务', '1', 'shenlanshangwu', '30');
INSERT INTO `qs32_tpl` VALUES ('4', '1', '幻色', '1', 'huanse', '30');
INSERT INTO `qs32_tpl` VALUES ('5', '1', '默认模版', '1', 'default', '0');
INSERT INTO `qs32_tpl` VALUES ('6', '2', '夏日沙滩', '1', 'xiarishatan', '0');
INSERT INTO `qs32_tpl` VALUES ('7', '2', '原野', '1', 'yuanye', '0');

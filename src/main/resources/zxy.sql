/*
Navicat MariaDB Data Transfer

Source Server         : win_mariadb_root
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : zxy

Target Server Type    : MariaDB
Target Server Version : 100113
File Encoding         : 65001

Date: 2017-05-23 13:51:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='市级信息';

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '石家庄', '河北');
INSERT INTO `city` VALUES ('2', '邯郸', '河北');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `countryname` varchar(255) DEFAULT NULL COMMENT '名称',
  `countrycode` varchar(255) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COMMENT='国家信息';

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'Angola', 'AO');
INSERT INTO `country` VALUES ('2', 'Afghanistan', 'AF');
INSERT INTO `country` VALUES ('4', 'Algeria', 'DZ');
INSERT INTO `country` VALUES ('5', 'Andorra', 'AD');
INSERT INTO `country` VALUES ('7', 'Antigua and Barbuda', 'AG');
INSERT INTO `country` VALUES ('8', 'Argentina', 'AR');
INSERT INTO `country` VALUES ('9', 'Armenia', 'AM');
INSERT INTO `country` VALUES ('10', 'Australia', 'AU');
INSERT INTO `country` VALUES ('11', 'Austria', 'AT');
INSERT INTO `country` VALUES ('12', 'Azerbaijan', 'AZ');
INSERT INTO `country` VALUES ('13', 'Bahamas', 'BS');
INSERT INTO `country` VALUES ('14', 'Bahrain', 'BH');
INSERT INTO `country` VALUES ('15', 'Bangladesh', 'BD');
INSERT INTO `country` VALUES ('16', 'Barbados', 'BB');
INSERT INTO `country` VALUES ('17', 'Belarus', 'BY');
INSERT INTO `country` VALUES ('18', 'Belgium', 'BE');
INSERT INTO `country` VALUES ('19', 'Belize', 'BZ');
INSERT INTO `country` VALUES ('20', 'Benin', 'BJ');
INSERT INTO `country` VALUES ('21', 'Bermuda Is.', 'BM');
INSERT INTO `country` VALUES ('22', 'Bolivia', 'BO');
INSERT INTO `country` VALUES ('23', 'Botswana', 'BW');
INSERT INTO `country` VALUES ('24', 'Brazil', 'BR');
INSERT INTO `country` VALUES ('25', 'Brunei', 'BN');
INSERT INTO `country` VALUES ('26', 'Bulgaria', 'BG');
INSERT INTO `country` VALUES ('27', 'Burkina-faso', 'BF');
INSERT INTO `country` VALUES ('28', 'Burma', 'MM');
INSERT INTO `country` VALUES ('29', 'Burundi', 'BI');
INSERT INTO `country` VALUES ('30', 'Cameroon', 'CM');
INSERT INTO `country` VALUES ('31', 'Canada', 'CA');
INSERT INTO `country` VALUES ('32', 'Central African Republic', 'CF');
INSERT INTO `country` VALUES ('33', 'Chad', 'TD');
INSERT INTO `country` VALUES ('34', 'Chile', 'CL');
INSERT INTO `country` VALUES ('35', 'China', 'CN');
INSERT INTO `country` VALUES ('36', 'Colombia', 'CO');
INSERT INTO `country` VALUES ('37', 'Congo', 'CG');
INSERT INTO `country` VALUES ('38', 'Cook Is.', 'CK');
INSERT INTO `country` VALUES ('39', 'Costa Rica', 'CR');
INSERT INTO `country` VALUES ('40', 'Cuba', 'CU');
INSERT INTO `country` VALUES ('41', 'Cyprus', 'CY');
INSERT INTO `country` VALUES ('42', 'Czech Republic', 'CZ');
INSERT INTO `country` VALUES ('43', 'Denmark', 'DK');
INSERT INTO `country` VALUES ('44', 'Djibouti', 'DJ');
INSERT INTO `country` VALUES ('45', 'Dominica Rep.', 'DO');
INSERT INTO `country` VALUES ('46', 'Ecuador', 'EC');
INSERT INTO `country` VALUES ('47', 'Egypt', 'EG');
INSERT INTO `country` VALUES ('48', 'EI Salvador', 'SV');
INSERT INTO `country` VALUES ('49', 'Estonia', 'EE');
INSERT INTO `country` VALUES ('50', 'Ethiopia', 'ET');
INSERT INTO `country` VALUES ('51', 'Fiji', 'FJ');
INSERT INTO `country` VALUES ('52', 'Finland', 'FI');
INSERT INTO `country` VALUES ('53', 'France', 'FR');
INSERT INTO `country` VALUES ('54', 'French Guiana', 'GF');
INSERT INTO `country` VALUES ('55', 'Gabon', 'GA');
INSERT INTO `country` VALUES ('56', 'Gambia', 'GM');
INSERT INTO `country` VALUES ('57', 'Georgia', 'GE');
INSERT INTO `country` VALUES ('58', 'Germany', 'DE');
INSERT INTO `country` VALUES ('59', 'Ghana', 'GH');
INSERT INTO `country` VALUES ('60', 'Gibraltar', 'GI');
INSERT INTO `country` VALUES ('61', 'Greece', 'GR');
INSERT INTO `country` VALUES ('62', 'Grenada', 'GD');
INSERT INTO `country` VALUES ('63', 'Guam', 'GU');
INSERT INTO `country` VALUES ('64', 'Guatemala', 'GT');
INSERT INTO `country` VALUES ('65', 'Guinea', 'GN');
INSERT INTO `country` VALUES ('66', 'Guyana', 'GY');
INSERT INTO `country` VALUES ('67', 'Haiti', 'HT');
INSERT INTO `country` VALUES ('68', 'Honduras', 'HN');
INSERT INTO `country` VALUES ('69', 'Hongkong', 'HK');
INSERT INTO `country` VALUES ('70', 'Hungary', 'HU');
INSERT INTO `country` VALUES ('71', 'Iceland', 'IS');
INSERT INTO `country` VALUES ('72', 'India', 'IN');
INSERT INTO `country` VALUES ('73', 'Indonesia', 'ID');
INSERT INTO `country` VALUES ('74', 'Iran', 'IR');
INSERT INTO `country` VALUES ('75', 'Iraq', 'IQ');
INSERT INTO `country` VALUES ('76', 'Ireland', 'IE');
INSERT INTO `country` VALUES ('77', 'Israel', 'IL');
INSERT INTO `country` VALUES ('78', 'Italy', 'IT');
INSERT INTO `country` VALUES ('79', 'Jamaica', 'JM');
INSERT INTO `country` VALUES ('80', 'Japan', 'JP');
INSERT INTO `country` VALUES ('81', 'Jordan', 'JO');
INSERT INTO `country` VALUES ('82', 'Kampuchea (Cambodia )', 'KH');
INSERT INTO `country` VALUES ('83', 'Kazakstan', 'KZ');
INSERT INTO `country` VALUES ('84', 'Kenya', 'KE');
INSERT INTO `country` VALUES ('85', 'Korea', 'KR');
INSERT INTO `country` VALUES ('86', 'Kuwait', 'KW');
INSERT INTO `country` VALUES ('87', 'Kyrgyzstan', 'KG');
INSERT INTO `country` VALUES ('88', 'Laos', 'LA');
INSERT INTO `country` VALUES ('89', 'Latvia', 'LV');
INSERT INTO `country` VALUES ('90', 'Lebanon', 'LB');
INSERT INTO `country` VALUES ('91', 'Lesotho', 'LS');
INSERT INTO `country` VALUES ('92', 'Liberia', 'LR');
INSERT INTO `country` VALUES ('93', 'Libya', 'LY');
INSERT INTO `country` VALUES ('94', 'Liechtenstein', 'LI');
INSERT INTO `country` VALUES ('95', 'Lithuania', 'LT');
INSERT INTO `country` VALUES ('96', 'Luxembourg', 'LU');
INSERT INTO `country` VALUES ('97', 'Macao', 'MO');
INSERT INTO `country` VALUES ('98', 'Madagascar', 'MG');
INSERT INTO `country` VALUES ('99', 'Malawi', 'MW');
INSERT INTO `country` VALUES ('100', 'Malaysia', 'MY');
INSERT INTO `country` VALUES ('101', 'Maldives', 'MV');
INSERT INTO `country` VALUES ('102', 'Mali', 'ML');
INSERT INTO `country` VALUES ('103', 'Malta', 'MT');
INSERT INTO `country` VALUES ('104', 'Mauritius', 'MU');
INSERT INTO `country` VALUES ('105', 'Mexico', 'MX');
INSERT INTO `country` VALUES ('106', 'Moldova, Republic of', 'MD');
INSERT INTO `country` VALUES ('107', 'Monaco', 'MC');
INSERT INTO `country` VALUES ('108', 'Mongolia', 'MN');
INSERT INTO `country` VALUES ('109', 'Montserrat Is', 'MS');
INSERT INTO `country` VALUES ('110', 'Morocco', 'MA');
INSERT INTO `country` VALUES ('111', 'Mozambique', 'MZ');
INSERT INTO `country` VALUES ('112', 'Namibia', 'NA');
INSERT INTO `country` VALUES ('113', 'Nauru', 'NR');
INSERT INTO `country` VALUES ('114', 'Nepal', 'NP');
INSERT INTO `country` VALUES ('115', 'Netherlands', 'NL');
INSERT INTO `country` VALUES ('116', 'New Zealand', 'NZ');
INSERT INTO `country` VALUES ('117', 'Nicaragua', 'NI');
INSERT INTO `country` VALUES ('118', 'Niger', 'NE');
INSERT INTO `country` VALUES ('119', 'Nigeria', 'NG');
INSERT INTO `country` VALUES ('120', 'North Korea', 'KP');
INSERT INTO `country` VALUES ('121', 'Norway', 'NO');
INSERT INTO `country` VALUES ('122', 'Oman', 'OM');
INSERT INTO `country` VALUES ('123', 'Pakistan', 'PK');
INSERT INTO `country` VALUES ('124', 'Panama', 'PA');
INSERT INTO `country` VALUES ('125', 'Papua New Cuinea', 'PG');
INSERT INTO `country` VALUES ('126', 'Paraguay', 'PY');
INSERT INTO `country` VALUES ('127', 'Peru', 'PE');
INSERT INTO `country` VALUES ('128', 'Philippines', 'PH');
INSERT INTO `country` VALUES ('129', 'Poland', 'PL');
INSERT INTO `country` VALUES ('130', 'French Polynesia', 'PF');
INSERT INTO `country` VALUES ('131', 'Portugal', 'PT');
INSERT INTO `country` VALUES ('132', 'Puerto Rico', 'PR');
INSERT INTO `country` VALUES ('133', 'Qatar', 'QA');
INSERT INTO `country` VALUES ('134', 'Romania', 'RO');
INSERT INTO `country` VALUES ('135', 'Russia', 'RU');
INSERT INTO `country` VALUES ('136', 'Saint Lueia', 'LC');
INSERT INTO `country` VALUES ('137', 'Saint Vincent', 'VC');
INSERT INTO `country` VALUES ('138', 'San Marino', 'SM');
INSERT INTO `country` VALUES ('139', 'Sao Tome and Principe', 'ST');
INSERT INTO `country` VALUES ('140', 'Saudi Arabia', 'SA');
INSERT INTO `country` VALUES ('141', 'Senegal', 'SN');
INSERT INTO `country` VALUES ('142', 'Seychelles', 'SC');
INSERT INTO `country` VALUES ('143', 'Sierra Leone', 'SL');
INSERT INTO `country` VALUES ('144', 'Singapore', 'SG');
INSERT INTO `country` VALUES ('145', 'Slovakia', 'SK');
INSERT INTO `country` VALUES ('146', 'Slovenia', 'SI');
INSERT INTO `country` VALUES ('147', 'Solomon Is', 'SB');
INSERT INTO `country` VALUES ('148', 'Somali', 'SO');
INSERT INTO `country` VALUES ('149', 'South Africa', 'ZA');
INSERT INTO `country` VALUES ('150', 'Spain', 'ES');
INSERT INTO `country` VALUES ('151', 'Sri Lanka', 'LK');
INSERT INTO `country` VALUES ('152', 'St.Lucia', 'LC');
INSERT INTO `country` VALUES ('153', 'St.Vincent', 'VC');
INSERT INTO `country` VALUES ('154', 'Sudan', 'SD');
INSERT INTO `country` VALUES ('155', 'Suriname', 'SR');
INSERT INTO `country` VALUES ('156', 'Swaziland', 'SZ');
INSERT INTO `country` VALUES ('157', 'Sweden', 'SE');
INSERT INTO `country` VALUES ('158', 'Switzerland', 'CH');
INSERT INTO `country` VALUES ('159', 'Syria', 'SY');
INSERT INTO `country` VALUES ('160', 'Taiwan', 'TW');
INSERT INTO `country` VALUES ('161', 'Tajikstan', 'TJ');
INSERT INTO `country` VALUES ('162', 'Tanzania', 'TZ');
INSERT INTO `country` VALUES ('163', 'Thailand', 'TH');
INSERT INTO `country` VALUES ('164', 'Togo', 'TG');
INSERT INTO `country` VALUES ('165', 'Tonga', 'TO');
INSERT INTO `country` VALUES ('166', 'Trinidad and Tobago', 'TT');
INSERT INTO `country` VALUES ('167', 'Tunisia', 'TN');
INSERT INTO `country` VALUES ('168', 'Turkey', 'TR');
INSERT INTO `country` VALUES ('169', 'Turkmenistan', 'TM');
INSERT INTO `country` VALUES ('170', 'Uganda', 'UG');
INSERT INTO `country` VALUES ('171', 'Ukraine', 'UA');
INSERT INTO `country` VALUES ('172', 'United Arab Emirates', 'AE');
INSERT INTO `country` VALUES ('173', 'United Kiongdom', 'GB');
INSERT INTO `country` VALUES ('174', 'United States of America', 'US');
INSERT INTO `country` VALUES ('175', 'Uruguay', 'UY');
INSERT INTO `country` VALUES ('176', 'Uzbekistan', 'UZ');
INSERT INTO `country` VALUES ('177', 'Venezuela', 'VE');
INSERT INTO `country` VALUES ('178', 'Vietnam', 'VN');
INSERT INTO `country` VALUES ('179', 'Yemen', 'YE');
INSERT INTO `country` VALUES ('180', 'Yugoslavia', 'YU');
INSERT INTO `country` VALUES ('181', 'Zimbabwe', 'ZW');
INSERT INTO `country` VALUES ('182', 'Zaire', 'ZR');
INSERT INTO `country` VALUES ('183', 'Zambia', 'ZM');

-- ----------------------------
-- Table structure for signin_record
-- ----------------------------
DROP TABLE IF EXISTS `signin_record`;
CREATE TABLE `signin_record` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `time_span` varchar(255) DEFAULT NULL,
  `result` varchar(1024) DEFAULT NULL,
  `sign_num` int(11) DEFAULT NULL,
  `total_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of signin_record
-- ----------------------------
INSERT INTO `signin_record` VALUES ('1495505045688', '签到 - 2017-05-23 10:04:05', '2017-05-23 10:04:05', '教育技术1班', '00:01', '{\"46\":2,\"49\":2,\"50\":2,\"51\":1,\"52\":2,\"53\":2,\"59\":1}', '2', '7');
INSERT INTO `signin_record` VALUES ('1495506921368', '签到 - 2017-05-23 10:35:21', '2017-05-23 10:35:21', '教育技术1班', '00:01', '{\"46\":2,\"49\":2,\"50\":2,\"51\":1,\"52\":1,\"53\":2,\"59\":2}', '2', '7');
INSERT INTO `signin_record` VALUES ('1495507085429', '签到 - 2017-05-23 10:38:05', '2017-05-23 10:38:05', '教育技术1班', '00:01', '{\"46\":2,\"49\":1,\"50\":1,\"51\":1,\"52\":2,\"53\":2,\"59\":2}', '3', '7');
INSERT INTO `signin_record` VALUES ('1495517312449', '签到 - 2017-05-23 13:28:32', '2017-05-23 13:28:32', '教育技术1班', '00:01', '{\"46\":2,\"49\":2,\"50\":1,\"51\":1,\"52\":2,\"53\":2,\"59\":2}', '2', '7');
INSERT INTO `signin_record` VALUES ('1495518389291', '签到 - 2017-05-23 13:46:29', '2017-05-23 13:46:29', '教育技术1班', '00:01', '{\"46\":2,\"49\":1,\"50\":2,\"51\":2,\"52\":1,\"53\":2,\"59\":2}', '2', '7');

-- ----------------------------
-- Table structure for student_group
-- ----------------------------
DROP TABLE IF EXISTS `student_group`;
CREATE TABLE `student_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `student_ids` text,
  `mgrid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='学生分组';

-- ----------------------------
-- Records of student_group
-- ----------------------------
INSERT INTO `student_group` VALUES ('2', '教育技术1班', '46,49,51,50,53,52,59', null);
INSERT INTO `student_group` VALUES ('3', '教育技术2班', '52,49,57,56,59,58', null);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `usertype` varchar(2) DEFAULT NULL COMMENT '用户类型',
  `enabled` int(2) DEFAULT NULL COMMENT '是否可用',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `logo` text,
  `qq` varchar(14) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `group_ids` varchar(255) DEFAULT NULL,
  `mgrid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'test1', '12345678', '1', '1', '吴云强2', '/static/img/img.2aab7b4.jpg', '842269153', '32323@qq.com', '18711180761', null, null);
INSERT INTO `user_info` VALUES ('46', '201340922101', '123456', '2', '1', '丁磊', 'http://dummyimage.com/24x24/98f279&text=丁', '9316411148', 'k.hunaccismp@pjf.sb', '14687525817', null, '1');
INSERT INTO `user_info` VALUES ('49', '201340922104', '123456', '2', '1', '杨杰', 'http://dummyimage.com/24x24/f2e179&text=杨', '71876336', 'v.tny@vigffg.md', '14576186760', null, '1');
INSERT INTO `user_info` VALUES ('50', '201340922105', '123456', '2', '1', '汤军', 'http://dummyimage.com/24x24/be79f2&text=汤', '70143754', 'f.argfr@onhx.gh', '15265185578', null, '1');
INSERT INTO `user_info` VALUES ('51', '201340922106', '123456', '2', '1', '黄强', 'http://dummyimage.com/24x24/79f29b&text=黄', '771787731', 'l.yfpivbwo@icdeyrlk.hu', '14334076750', null, '1');
INSERT INTO `user_info` VALUES ('52', '201340922107', '123456', '2', '1', '尹超', 'http://dummyimage.com/24x24/f2797a&text=尹', '32487242858', 'y.izdl@hsrxsbtz.fr', '13312339728', null, '1');
INSERT INTO `user_info` VALUES ('53', '201340922108', '123456', '2', '1', '袁敏', 'http://dummyimage.com/24x24/799df2&text=袁', '5175573666', 'z.xplz@kqydw.ck', '17429775271', null, '1');
INSERT INTO `user_info` VALUES ('54', '201340922109', '123456', '2', '1', '赵强', 'http://dummyimage.com/24x24/c1f279&text=赵', '578710', 'x.iwoof@gibuqtu.cu', '17461518625', null, '1');
INSERT INTO `user_info` VALUES ('55', '201340922110', '123456', '2', '1', '袁娟', 'http://dummyimage.com/24x24/f279e4&text=袁', '94637', 'u.vshueczfh@twdtxe.hk', '17531505414', null, '1');
INSERT INTO `user_info` VALUES ('56', '201340922111', '123456', '2', '1', '杨刚', 'http://dummyimage.com/24x24/79f2dc&text=杨', '58826198', 'p.mcwpci@qurqsa.mn', '17683449735', null, '1');
INSERT INTO `user_info` VALUES ('57', '201340922112', '123456', '2', '1', '徐超', 'http://dummyimage.com/24x24/f2b979&text=徐', '5175598241', 'm.sthnblu@xwhrh.tv', '14526382692', null, '1');
INSERT INTO `user_info` VALUES ('58', '201340922113', '123456', '2', '1', '高刚', 'http://dummyimage.com/24x24/9679f2&text=高', '944862', 'v.flxds@xuhxixg.cv', '17358515678', null, '1');
INSERT INTO `user_info` VALUES ('59', '201340922114', '123456', '2', '1', '石强', 'http://dummyimage.com/24x24/7ff279&text=石', '16142747', 'u.rmtmvn@kqq.cn', '15696176172', null, '1');
INSERT INTO `user_info` VALUES ('60', '201340922115', '123456', '2', '1', '程秀兰', 'http://dummyimage.com/24x24/f279a2&text=程', '763417157', 'n.wjpnqufb@xrnc.bz', '14625586976', null, '1');
INSERT INTO `user_info` VALUES ('61', '201340922116', '123456', '2', '1', '蒋洋', 'http://dummyimage.com/24x24/79c6f2&text=蒋', '517704903', 'r.psakdhbdf@oirvritpl.coop', '14163128666', null, '1');
INSERT INTO `user_info` VALUES ('62', '201340922117', '123456', '2', '1', '苏秀英', 'http://dummyimage.com/24x24/e9f279&text=苏', '346861', 'l.cpfg@pkpnalv.bw', '17562721711', null, '1');
INSERT INTO `user_info` VALUES ('63', '201340922118', '123456', '2', '1', '汪霞', 'http://dummyimage.com/24x24/d779f2&text=汪', '87258325', 'k.dfespgpwhe@gepiop.es', '14195674248', null, '1');
INSERT INTO `user_info` VALUES ('64', '201340922119', '123456', '2', '1', '戴强', 'http://dummyimage.com/24x24/79f2b4&text=戴', '166350', 'f.lmod@mvjounligl.ae', '17258368862', null, '1');
INSERT INTO `user_info` VALUES ('65', '201340922120', '123456', '2', '1', '朱丽', 'http://dummyimage.com/24x24/f29079&text=朱', '373773387', 'e.qgug@hpmk.pa', '14563475954', null, '1');
INSERT INTO `user_info` VALUES ('66', '201340922121', '123456', '2', '1', '毛洋', 'http://dummyimage.com/24x24/7984f2&text=毛', '969383', 'h.srfbr@mzhjpotb.bz', '18452608432', null, '1');
INSERT INTO `user_info` VALUES ('67', '201340922122', '123456', '2', '1', '黄洋', 'http://dummyimage.com/24x24/a8f279&text=黄', '812773644', 'l.whxrpd@cxqnihnk.au', '18798972795', null, '1');
INSERT INTO `user_info` VALUES ('68', '201340922123', '123456', '2', '1', '叶娟', 'http://dummyimage.com/24x24/f279cb&text=叶', '5788139', 'q.qkuj@aglk.cn', '18602838114', null, '1');
INSERT INTO `user_info` VALUES ('69', '201340922124', '123456', '2', '1', '黄平', 'http://dummyimage.com/24x24/79eef2&text=黄', '23717', 'e.wtqcr@huzsr.zw', '17448112354', null, '1');
INSERT INTO `user_info` VALUES ('70', '201340922125', '123456', '2', '1', '徐敏', 'http://dummyimage.com/24x24/f2d279&text=徐', '771182593', 'z.ghrlkv@kyvy.rw', '17443565920', null, '1');
INSERT INTO `user_info` VALUES ('71', '201340922126', '123456', '2', '1', '彭洋', 'http://dummyimage.com/24x24/af79f2&text=彭', '31265', 'd.qimht@wunty.ke', '15778284973', null, '1');
INSERT INTO `user_info` VALUES ('72', '201340922127', '123456', '2', '1', '韩丽', 'http://dummyimage.com/24x24/79f28b&text=韩', '204182', 'o.xtiyvybr@nbcrk.sk', '17018913633', null, '1');
INSERT INTO `user_info` VALUES ('73', '201340922128', '123456', '2', '1', '吕娜', 'http://dummyimage.com/24x24/f27989&text=吕', '66741539', 'd.ypl@moycxskt.gy', '15864094230', null, '1');
INSERT INTO `user_info` VALUES ('74', '201340922129', '123456', '2', '1', '钱秀英', 'http://dummyimage.com/24x24/79adf2&text=钱', '854408212', 'e.irgxxsnvp@ebvyn.sy', '14136041777', null, '1');
INSERT INTO `user_info` VALUES ('75', '201340922130', '123456', '2', '1', '侯强', 'http://dummyimage.com/24x24/d0f279&text=侯', '303744', 'j.ftwtprdl@jzhcy.dj', '15327466446', null, '1');
INSERT INTO `user_info` VALUES ('76', '201340922131', '123456', '2', '1', '石芳', 'http://dummyimage.com/24x24/f079f2&text=石', '281823', 'd.ldajesbio@afxrcwl.vg', '18027717146', null, '1');
INSERT INTO `user_info` VALUES ('77', '201340922132', '123456', '2', '1', '谢磊', 'http://dummyimage.com/24x24/79f2cd&text=谢', '24603', 'z.ljqih@duerrs.tg', '18873786377', null, '1');
INSERT INTO `user_info` VALUES ('78', '201340922133', '123456', '2', '1', '吕娜', 'http://dummyimage.com/24x24/f2a979&text=吕', '40727880', 'x.lfjow@htpyhp.id', '17484203856', null, '1');
INSERT INTO `user_info` VALUES ('79', '201340922134', '123456', '2', '1', '方艳', 'http://dummyimage.com/24x24/8679f2&text=方', '45753131', 'b.itcnjulv@comucbmwj.hk', '13352676428', null, '1');
INSERT INTO `user_info` VALUES ('80', '201340922135', '123456', '2', '1', '顾秀兰', 'http://dummyimage.com/24x24/8ff279&text=顾', '6553038', 'j.nuzxfg@wckmlxvyd.bw', '14287902163', null, '1');
INSERT INTO `user_info` VALUES ('81', '201340922136', '123456', '2', '1', '雷娟', 'http://dummyimage.com/24x24/f279b2&text=雷', '86662287545', 't.digw@xlphtbhhw.dj', '17067015817', null, '1');
INSERT INTO `user_info` VALUES ('82', '201340922137', '123456', '2', '1', '于艳', 'http://dummyimage.com/24x24/79d5f2&text=于', '85217621483', 'c.qksypbzvyg@wcq.aero', '15735855764', null, '1');
INSERT INTO `user_info` VALUES ('83', '201340922138', '123456', '2', '1', '姚艳', 'http://dummyimage.com/24x24/f2eb79&text=姚', '781787713', 'x.lppoywikc@lbvnqr.bn', '15631165995', null, '1');
INSERT INTO `user_info` VALUES ('84', '201340922139', '123456', '2', '1', '田明', 'http://dummyimage.com/24x24/c879f2&text=田', '34834741758', 'd.wbcdrttgl@mjvjqolvg.lu', '18979892780', null, '1');
INSERT INTO `user_info` VALUES ('85', '201340922140', '123456', '2', '1', '叶伟', 'http://dummyimage.com/24x24/79f2a4&text=叶', '2425942585', 'l.hdophn@ehbvbkztmn.ee', '13484087072', null, '1');
INSERT INTO `user_info` VALUES ('86', '201340922141', '123456', '2', '1', '侯强', 'http://dummyimage.com/24x24/f28179&text=侯', '3883246846', 'y.gbbuixdw@oechnxwju.by', '18267481263', null, '1');
INSERT INTO `user_info` VALUES ('87', '201340922142', '123456', '2', '1', '薛敏', 'http://dummyimage.com/24x24/7994f2&text=薛', '31421582755', 't.itas@tzigo.ae', '18854039425', null, '1');
INSERT INTO `user_info` VALUES ('88', '201340922143', '123456', '2', '1', '石芳', 'http://dummyimage.com/24x24/b7f279&text=石', '1347515234', 'c.juhfxsf@yhxy.lb', '14373433437', null, '1');
INSERT INTO `user_info` VALUES ('89', '201340922144', '123456', '2', '1', '谭杰', 'http://dummyimage.com/24x24/f279da&text=谭', '42947137458', 'o.iguu@efvqkaobug.gp', '17427165613', null, '1');
INSERT INTO `user_info` VALUES ('90', '201340922145', '123456', '2', '1', '胡芳', 'http://dummyimage.com/24x24/79f2e6&text=胡', '17892565', 'd.tjyap@tlrxo.lv', '13237415229', null, '1');
INSERT INTO `user_info` VALUES ('91', '201340922146', '123456', '2', '1', '姚桂英', 'http://dummyimage.com/24x24/f2c279&text=姚', '54354', 'v.szboctxro@slrgyig.com.cn', '17911749834', null, '1');
INSERT INTO `user_info` VALUES ('92', '201340922147', '123456', '2', '1', '龚强', 'http://dummyimage.com/24x24/9f79f2&text=龚', '6895153623', 'd.mtrchkkid@cycgytuh.id', '17756184178', null, '1');
INSERT INTO `user_info` VALUES ('93', '201340922148', '123456', '2', '1', '蒋超', 'http://dummyimage.com/24x24/79f27c&text=蒋', '630370343', 'd.icjsxqqkc@ivju.ca', '15616065137', null, '1');
INSERT INTO `user_info` VALUES ('94', '201340922149', '123456', '2', '1', '薛霞', 'http://dummyimage.com/24x24/f27999&text=薛', '3852002548', 'j.jgy@ugypsl.bt', '13342813350', null, '1');
INSERT INTO `user_info` VALUES ('95', '201340922150', '123456', '2', '1', '白秀兰', 'http://dummyimage.com/24x24/79bcf2&text=白', '33976225', 'e.cfdbsmqnm@lquldn.info', '14542654607', null, '1');
INSERT INTO `user_info` VALUES ('96', '201340922151', '123456', '2', '1', '冯伟', 'http://dummyimage.com/24x24/e0f279&text=冯', '85812', 'n.mwwl@fnt.ms', '15598684857', null, '1');
INSERT INTO `user_info` VALUES ('97', '201340922152', '123456', '2', '1', '萧娟', 'http://dummyimage.com/24x24/e179f2&text=萧', '724336172', 'b.osnhw@sfgjyka.na', '14875155376', null, '1');
INSERT INTO `user_info` VALUES ('98', '201340922153', '123456', '2', '1', '夏强', 'http://dummyimage.com/24x24/79f2bd&text=夏', '35007611', 's.qzp@otsxtlb.az', '14731432241', null, '1');
INSERT INTO `user_info` VALUES ('99', '201340922154', '123456', '2', '1', '曹勇', 'http://dummyimage.com/24x24/f29a79&text=曹', '37542', 'v.dlku@dmw.mv', '14144214072', null, '1');
INSERT INTO `user_info` VALUES ('100', '201340922155', '123456', '2', '1', '阎强', 'http://dummyimage.com/24x24/797bf2&text=阎', '388203', 'l.shejtptjr@ttpyoryyx.su', '15269701691', null, '1');
INSERT INTO `user_info` VALUES ('101', '201340922156', '123456', '2', '1', '孙桂英', 'http://dummyimage.com/24x24/9ef279&text=孙', '43414866', 'j.kabg@ekuydrive.ge', '14583523673', null, '1');
INSERT INTO `user_info` VALUES ('102', '201340922157', '123456', '2', '1', '冯洋', 'http://dummyimage.com/24x24/f279c1&text=冯', '8843354036', 'j.pbgx@wygewbie.bh', '18377349244', null, '1');
INSERT INTO `user_info` VALUES ('103', '201340922158', '123456', '2', '1', '苏刚', 'http://dummyimage.com/24x24/79e5f2&text=苏', '9861777', 'u.idlvcvv@inrnkojham.aw', '17459181113', null, '1');
INSERT INTO `user_info` VALUES ('104', '201340922159', '123456', '2', '1', '黎丽', 'http://dummyimage.com/24x24/f2db79&text=黎', '5295623', 'c.oycoun@webofgnwoj.fi', '15541362262', null, '1');
INSERT INTO `user_info` VALUES ('105', '201340922160', '123456', '2', '1', '吴娜', 'http://dummyimage.com/24x24/b879f2&text=吴', '638322373', 'q.wtoubfjt@qctga.ms', '17471142485', null, '1');
INSERT INTO `user_info` VALUES ('106', '201340922161', '123456', '2', '1', '邱敏', 'http://dummyimage.com/24x24/79f295&text=邱', '402844', 'c.pmlc@ygyjbhyb.ws', '15119958508', null, '1');
INSERT INTO `user_info` VALUES ('107', '201340922162', '123456', '2', '1', '廖勇', 'http://dummyimage.com/24x24/f27980&text=廖', '523429', 'a.jnvciccqw@biwpjhvro.net', '14894746477', null, '1');
INSERT INTO `user_info` VALUES ('108', '201340922163', '123456', '2', '1', '康秀英', 'http://dummyimage.com/24x24/79a3f2&text=康', '53399120', 'e.lrsfgkbg@tjgnisb.travel', '17233423234', null, '1');
INSERT INTO `user_info` VALUES ('109', '201340922164', '123456', '2', '1', '许艳', 'http://dummyimage.com/24x24/c7f279&text=许', '4958337013', 'u.swxf@wgcreml.my', '14675077977', null, '1');
INSERT INTO `user_info` VALUES ('110', '201340922165', '123456', '2', '1', '锺秀兰', 'http://dummyimage.com/24x24/f279ea&text=锺', '7358576533', 'h.rycbgb@fcxkqx.vu', '17523706515', null, '1');
INSERT INTO `user_info` VALUES ('111', '201340922166', '123456', '2', '1', '黎桂英', 'http://dummyimage.com/24x24/79f2d6&text=黎', '7233734083', 'n.cporl@whubgnix.com.cn', '18127851507', null, '1');
INSERT INTO `user_info` VALUES ('112', '201340922167', '123456', '2', '1', '秦敏', 'http://dummyimage.com/24x24/f2b379&text=秦', '865576', 'e.ohfx@rovtl.mg', '17647612787', null, '1');
INSERT INTO `user_info` VALUES ('113', '201340922168', '123456', '2', '1', '金娜', 'http://dummyimage.com/24x24/9079f2&text=金', '5278784', 'o.ymlbef@bbyytlbj.hu', '15923574618', null, '1');
INSERT INTO `user_info` VALUES ('114', '201340922169', '123456', '2', '1', '孙勇', 'http://dummyimage.com/24x24/85f279&text=孙', '927409707', 'd.aoep@nyghemac.ae', '14415694425', null, '1');
INSERT INTO `user_info` VALUES ('115', '201340922170', '123456', '2', '1', '姚洋', 'http://dummyimage.com/24x24/f279a8&text=姚', '6872444', 'r.utkrarc@upbqvvdi.sk', '17098862831', null, '1');
INSERT INTO `user_info` VALUES ('116', '201340922171', '123456', '2', '1', '周刚', 'http://dummyimage.com/24x24/79ccf2&text=周', '610546', 'u.rihedt@mrpwdq.ve', '14618129728', null, '1');
INSERT INTO `user_info` VALUES ('117', '201340922172', '123456', '2', '1', '龙刚', 'http://dummyimage.com/24x24/eff279&text=龙', '655534604', 'q.ccuvfxr@elcd.bw', '14135653716', null, '1');
INSERT INTO `user_info` VALUES ('118', '201340922173', '123456', '2', '1', '邓洋', 'http://dummyimage.com/24x24/d179f2&text=邓', '476228482', 'c.wqrvfdk@kvozwjf.ca', '14167314447', null, '1');
INSERT INTO `user_info` VALUES ('119', '201340922174', '123456', '2', '1', '谭静', 'http://dummyimage.com/24x24/79f2ae&text=谭', '18569167', 'j.sftlos@cyhgbnr.hu', '18861289602', null, '1');
INSERT INTO `user_info` VALUES ('120', '201340922175', '123456', '2', '1', '孟秀兰', 'http://dummyimage.com/24x24/f28a79&text=孟', '743121265', 'r.bxbjyy@ybnzvqqg.mm', '14434423670', null, '1');
INSERT INTO `user_info` VALUES ('121', '201340922176', '123456', '2', '1', '余秀英', 'http://dummyimage.com/24x24/798af2&text=余', '586057', 'r.tjinxfx@hgjkl.coop', '13979298930', null, '1');
INSERT INTO `user_info` VALUES ('122', '201340922177', '123456', '2', '1', '张丽', 'http://dummyimage.com/24x24/adf279&text=张', '368734206', 'u.cenagttfu@utuwblj.sm', '14792975679', null, '1');
INSERT INTO `user_info` VALUES ('123', '201340922178', '123456', '2', '1', '万秀兰', 'http://dummyimage.com/24x24/f279d1&text=万', '69224361601', 'c.tcefdlp@pejtlypngg.bf', '15035738468', null, '1');
INSERT INTO `user_info` VALUES ('124', '201340922179', '123456', '2', '1', '吴丽', 'http://dummyimage.com/24x24/79f2ef&text=吴', '212843', 'p.xsuslhdxh@jbbgymxz.eg', '14719941517', null, '1');
INSERT INTO `user_info` VALUES ('125', '201340922180', '123456', '2', '1', '江涛', 'http://dummyimage.com/24x24/f2cc79&text=江', '686733466', 'h.wtrddhx@ubzvz.cz', '17752535884', null, '1');
INSERT INTO `user_info` VALUES ('126', '201340922181', '123456', '2', '1', '黄丽', 'http://dummyimage.com/24x24/a979f2&text=黄', '2450164', 'b.oufcysvs@mnkkydg.kw', '15414436336', null, '1');
INSERT INTO `user_info` VALUES ('127', '201340922182', '123456', '2', '1', '曹桂英', 'http://dummyimage.com/24x24/79f285&text=曹', '4328441', 'e.iadvqvodx@scrmfoov.gt', '17692347630', null, '1');
INSERT INTO `user_info` VALUES ('128', '201340922183', '123456', '2', '1', '潘勇', 'http://dummyimage.com/24x24/f2798f&text=潘', '148554', 't.ikyxfkb@ksoso.ug', '17386130860', null, '1');
INSERT INTO `user_info` VALUES ('129', '201340922184', '123456', '2', '1', '石娜', 'http://dummyimage.com/24x24/79b3f2&text=石', '4253791', 'u.imft@awoiquky.tj', '17478549722', null, '1');
INSERT INTO `user_info` VALUES ('130', '201340922185', '123456', '2', '1', '尹军', 'http://dummyimage.com/24x24/d6f279&text=尹', '24572524', 't.tqndhxxi@mkptbpnm.sg', '17746417827', null, '1');
INSERT INTO `user_info` VALUES ('131', '201340922186', '123456', '2', '1', '叶洋', 'http://dummyimage.com/24x24/ea79f2&text=叶', '424426', 'y.fwmnznxp@wxgbeb.ly', '17675476588', null, '1');
INSERT INTO `user_info` VALUES ('132', '201340922187', '123456', '2', '1', '龚军', 'http://dummyimage.com/24x24/79f2c7&text=龚', '867957189', 'g.igov@lcugl.zm', '14696147163', null, '1');
INSERT INTO `user_info` VALUES ('133', '201340922188', '123456', '2', '1', '唐秀英', 'http://dummyimage.com/24x24/f2a379&text=唐', '8181565721', 'x.sobiuxnwr@oet.nt', '17108681453', null, '1');
INSERT INTO `user_info` VALUES ('134', '201340922189', '123456', '2', '1', '常丽', 'http://dummyimage.com/24x24/8079f2&text=常', '695687', 'k.xbmxl@cvwqswix.gt', '17211211029', null, '1');
INSERT INTO `user_info` VALUES ('135', '201340922190', '123456', '2', '1', '锺磊', 'http://dummyimage.com/24x24/94f279&text=锺', '3867481', 'g.jcy@dlzqszqhj.zr', '13272622172', null, '1');
INSERT INTO `user_info` VALUES ('136', '201340922191', '123456', '2', '1', '乔霞', 'http://dummyimage.com/24x24/f279b8&text=乔', '29136393', 'a.lxrmez@fwbeldr.sh', '13425433224', null, '1');
INSERT INTO `user_info` VALUES ('137', '201340922192', '123456', '2', '1', '文明', 'http://dummyimage.com/24x24/79dbf2&text=文', '726457145', 't.eogdgth@bblxi.iq', '17655187336', null, '1');
INSERT INTO `user_info` VALUES ('138', '201340922193', '123456', '2', '1', '郑霞', 'http://dummyimage.com/24x24/f2e579&text=郑', '925461', 'f.tvoj@jwrpjykqy.md', '14426262581', null, '1');
INSERT INTO `user_info` VALUES ('139', '201340922194', '123456', '2', '1', '赵霞', 'http://dummyimage.com/24x24/c279f2&text=赵', '721226', 'n.nwdwdwwr@cqqq.cn', '14171092715', null, '1');
INSERT INTO `user_info` VALUES ('140', '201340922195', '123456', '2', '1', '朱芳', 'http://dummyimage.com/24x24/79f29e&text=朱', '404439215', 'b.iqbkxtrbmu@pjffcx.nr', '13784174473', null, '1');
INSERT INTO `user_info` VALUES ('141', '201340922196', '123456', '2', '1', '韩平', 'http://dummyimage.com/24x24/f27b79&text=韩', '815865', 'e.vqncd@qdzqquck.pm', '15667175744', null, '1');
INSERT INTO `user_info` VALUES ('142', '201340922197', '123456', '2', '1', '蔡丽', 'http://dummyimage.com/24x24/799af2&text=蔡', '55272', 'b.aaklqx@jgirpt.ga', '18150634438', null, '1');
INSERT INTO `user_info` VALUES ('143', '201340922198', '123456', '2', '1', '冯静', 'http://dummyimage.com/24x24/bdf279&text=冯', '111980937', 'o.fuhmdkd@zmoftcqrl.lk', '15632041667', null, '1');
INSERT INTO `user_info` VALUES ('144', '201340922199', '123456', '2', '1', '陈丽', 'http://dummyimage.com/24x24/f279e0&text=陈', '25354451', 'o.xtuv@yhxpygtzq.aw', '15501812453', null, '1');
INSERT INTO `user_info` VALUES ('145', '201340922200', '123456', '2', '1', '曾刚', 'http://dummyimage.com/24x24/79f2e0&text=曾', '933332', 'l.uet@bbvcnkf.dj', '15165703160', null, '1');
INSERT INTO `user_info` VALUES ('146', '201340922201', '123456', '2', '1', '汪艳', 'http://dummyimage.com/24x24/f2bd79&text=汪', '547836', 'h.qovii@dmlovj.hk', '14528604651', null, '1');
INSERT INTO `user_info` VALUES ('147', '201340922202', '123456', '2', '1', '梁平', 'http://dummyimage.com/24x24/9979f2&text=梁', '4417787', 'w.fsybtamkn@xjxjz.bj', '15747753513', null, '1');
INSERT INTO `user_info` VALUES ('148', '201340922203', '123456', '2', '1', '周明', 'http://dummyimage.com/24x24/7bf279&text=周', '539783082', 'h.oqfkunfcj@htirysge.sz', '15225866061', null, '1');
INSERT INTO `user_info` VALUES ('149', '201340922204', '123456', '2', '1', '萧敏', 'http://dummyimage.com/24x24/f2799f&text=萧', '64695952', 'x.qffvyf@blpfcwtaw.info', '15528849977', null, '1');
INSERT INTO `user_info` VALUES ('150', '201340922205', '123456', '2', '1', '邓秀兰', 'http://dummyimage.com/24x24/79c2f2&text=邓', '948532', 'y.obgm@oishbuv.af', '15697206814', null, '1');
INSERT INTO `user_info` VALUES ('151', '201340922206', '123456', '2', '1', '薛超', 'http://dummyimage.com/24x24/e5f279&text=薛', '91304', 'x.zycjvuyzkq@inostppdh.cx', '13993884223', null, '1');
INSERT INTO `user_info` VALUES ('152', '201340922207', '123456', '2', '1', '武平', 'http://dummyimage.com/24x24/db79f2&text=武', '705427', 'b.xvwfnq@fotx.nf', '17997562468', null, '1');
INSERT INTO `user_info` VALUES ('153', '201340922208', '123456', '2', '1', '沈磊', 'http://dummyimage.com/24x24/79f2b7&text=沈', '7738210333', 'o.pztpzltrx@dwionrfc.zr', '18856708420', null, '1');
INSERT INTO `user_info` VALUES ('154', '201340922209', '123456', '2', '1', '秦芳', 'http://dummyimage.com/24x24/f29479&text=秦', '44257406', 'q.huciri@dtww.in', '14163752887', null, '1');
INSERT INTO `user_info` VALUES ('155', '201340922210', '123456', '2', '1', '魏明', 'http://dummyimage.com/24x24/7981f2&text=魏', '31427844', 'q.uchiemy@pqgbvjgch.cv', '14483277226', null, '1');
INSERT INTO `user_info` VALUES ('156', '201340922211', '123456', '2', '1', '武芳', 'http://dummyimage.com/24x24/a4f279&text=武', '30269450', 'k.vmsnecxmg@oizxqyp.na', '14428383865', null, '1');
INSERT INTO `user_info` VALUES ('157', '201340922212', '123456', '2', '1', '于霞', 'http://dummyimage.com/24x24/f279c7&text=于', '30273848702', 'd.stieb@ehzw.mo', '17640774585', null, '1');
INSERT INTO `user_info` VALUES ('158', '201340922213', '123456', '2', '1', '黎芳', 'http://dummyimage.com/24x24/79ebf2&text=黎', '771455', 'o.vcv@ajybs.edu', '17822924671', null, '1');
INSERT INTO `user_info` VALUES ('159', '201340922214', '123456', '2', '1', '任霞', 'http://dummyimage.com/24x24/f2d679&text=任', '2755132775', 'v.fhwwi@wlpuru.sz', '17686736628', null, '1');
INSERT INTO `user_info` VALUES ('160', '201340922215', '123456', '2', '1', '苏娟', 'http://dummyimage.com/24x24/b279f2&text=苏', '67419663173', 'f.mdxlrsc@rleuftcm.cu', '14390211545', null, '1');
INSERT INTO `user_info` VALUES ('161', '201340922216', '123456', '2', '1', '白秀兰', 'http://dummyimage.com/24x24/79f28f&text=白', '77360347364', 'o.qedwrwbgo@bdepjbyg.lb', '14644645634', null, '1');
INSERT INTO `user_info` VALUES ('162', '201340922217', '123456', '2', '1', '何秀兰', 'http://dummyimage.com/24x24/f27986&text=何', '2401044', 'q.fkq@qemqnqdexq.sg', '17623279178', null, '1');
INSERT INTO `user_info` VALUES ('163', '201340922218', '123456', '2', '1', '汤杰', 'http://dummyimage.com/24x24/79a9f2&text=汤', '6627174353', 'n.yiw@sbzlhzj.gy', '14151131373', null, '1');
INSERT INTO `user_info` VALUES ('164', '201340922219', '123456', '2', '1', '戴静', 'http://dummyimage.com/24x24/ccf279&text=戴', '864577638', 'y.qbxw@pzpxgawo.mp', '17840655641', null, '1');
INSERT INTO `user_info` VALUES ('165', '201340922220', '123456', '2', '1', '谢秀兰', 'http://dummyimage.com/24x24/f279f0&text=谢', '674912394', 'r.pgbz@bbniaihr.hu', '18442255228', null, '1');

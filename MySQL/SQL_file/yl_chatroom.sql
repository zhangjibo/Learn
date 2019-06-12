/*
 Navicat Premium Data Transfer

 Source Server         : BiFu
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 103.254.148.61:3306
 Source Schema         : exchange_cy

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 12/06/2019 10:07:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yl_chatroom
-- ----------------------------
DROP TABLE IF EXISTS `yl_chatroom`;
CREATE TABLE `yl_chatroom`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT 0 COMMENT '父id',
  `userid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `type` enum('group','area') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'area' COMMENT 'area区域聊天，group群组聊天',
  `managerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '房间管理员id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `uids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群组成员的ids，逗号隔开',
  `sort` int(11) UNSIGNED NULL DEFAULT NULL,
  `addtime` int(11) UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '1为可用，0为不可用',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 263 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天室' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yl_chatroom
-- ----------------------------
INSERT INTO `yl_chatroom` VALUES (1, 0, '0', 'area', '', '亚洲', 'Asia', NULL, NULL, 1528457287, 1, 'ww');
INSERT INTO `yl_chatroom` VALUES (2, 0, '0', 'area', NULL, '欧洲', 'Europe', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (3, 0, '0', 'area', NULL, '北美洲', 'North America', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (4, 0, '0', 'area', NULL, '南美洲', 'South America', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (5, 0, '0', 'area', NULL, '非洲', 'Africa', '', NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (6, 0, '0', 'area', NULL, '大洋洲', 'Oceania', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (7, 1, '0', 'area', NULL, '中国', 'China', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (8, 3, '0', 'area', NULL, '美国', 'America', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (9, 4, '0', 'area', NULL, '巴西', 'Brazil', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (10, 6, '0', 'area', NULL, '澳大利亚', 'Australia', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (11, 1, '0', 'area', NULL, '印度', 'India', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (12, 4, '0', 'area', NULL, '阿根廷', 'Argentina', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (13, 5, '0', 'area', NULL, '苏丹', 'Sudan', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (14, 1, '0', 'area', NULL, '巴基斯坦', 'Pakistan', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (15, 5, '0', 'area', NULL, '尼日利亚', 'Nigeria', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (16, 1, '0', 'area', NULL, '日本', 'Japan', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (17, 3, '0', 'area', NULL, '加拿大', 'Canada', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (18, 2, '0', 'area', NULL, '俄罗斯', 'Russia', NULL, NULL, NULL, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (19, 0, '0', 'group', '209', '222、pressure_test5、客服-new_test22', NULL, '207,244,209', NULL, 1528266057, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (20, 0, '0', 'group', '209', '222、nightfox、客服-new_test22', NULL, '207,199,209', NULL, 1528266425, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (21, 0, '0', 'group', '209', '222、nightfox、客服-new_test22', NULL, '207,199,209', NULL, 1528266446, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (22, 0, '0', 'group', '209', '222、pressure_test5、客服-new_test22', NULL, '207,244,209', NULL, 1528266458, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (23, 0, '0', 'group', '209', '222、nightfox、客服-new_test22', NULL, '207,199,209', NULL, 1528266683, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (24, 0, '0', 'group', '209', '222、new_test22、客服-new_test22', NULL, '207,209,209', NULL, 1528266734, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (25, 0, '0', 'group', '209', '222、new_test22、客服-new_test22', NULL, '207,209,209', NULL, 1528266736, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (26, 0, '0', 'group', '209', '222、new_test22、客服-new_test22', NULL, '207,209,209', NULL, 1528266740, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (27, 0, '0', 'group', '209', '222、new_test22、客服-new_test22', NULL, '207,209,209', NULL, 1528266741, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (28, 0, '0', 'group', '207', 'pressure_test5、nightfox、宋仓鼠', NULL, '199,207,244', NULL, 1528286852, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (29, 0, '0', 'group', '209', '666677、nightfox、客服-new_test22', NULL, '199,209,212', NULL, 1528336631, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (30, 0, '0', 'group', '207', '666677、nightfox、宋仓鼠', NULL, '199,207,212', NULL, 1528342828, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (31, 0, '0', 'group', '209', 'wuli、nightfox、客服-new_test22', NULL, '199,208,209', NULL, 1528353900, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (32, 0, '0', 'group', '207', 'wuli、nightfox、宋仓鼠', NULL, '199,207,208', NULL, 1528353902, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (33, 0, '0', 'group', '209', 'pressure_test2、pressure_test3、客服-new_test22', NULL, '209,241,242', NULL, 1528365099, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (34, 0, '0', 'group', '207', 'pressure_test2、pressure_test3、宋仓鼠', NULL, '207,241,242', NULL, 1528365335, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (35, 0, '0', 'group', '207', 'pressure_test5、twst31、宋仓鼠', NULL, '207,235,244', NULL, 1528366655, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (36, 0, '0', 'group', '207', '666677、twst31、宋仓鼠', NULL, '207,212,235', NULL, 1528366998, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (37, 0, '0', 'group', '207', '666677、twst31、宋仓鼠', NULL, '207,212,235', NULL, 1528375915, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (38, 0, '0', 'group', '207', 'pressure_test1、twst31、宋仓鼠', NULL, '207,235,240', NULL, 1528376468, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (39, 0, '0', 'group', '209', '666677、twst31、客服-new_test22', NULL, '209,212,235', NULL, 1528376835, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (40, 0, '0', 'group', '209', 'twst31、pressure_test2、客服-new_test22', NULL, '209,235,241', NULL, 1528377249, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (41, 0, '0', 'group', '209', '222、666677、客服-new_test22', NULL, '207,209,212', NULL, 1528423674, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (42, 0, '0', 'group', '209', '222、pressure_test5、客服-new_test22', NULL, '207,209,244', NULL, 1528423706, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (43, 0, '0', 'group', '240', 'pressure_test5、pressure_test2、pressure-test1', NULL, '240,241,244', NULL, 1528425592, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (44, 0, '0', 'group', '240', 'wuli、twst31、pressure-test1', NULL, '208,235,240', NULL, 1528426754, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (45, 0, '0', 'group', '240', 'new_test22、wuli、pressure-test1', NULL, '208,209,240', NULL, 1528427914, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (46, 0, '0', 'group', '240', 'twst31、wuli、pressure-test1', NULL, '208,235,240', NULL, 1528428177, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (47, 0, '0', 'group', '209', 'wuli、twst31、客服-new_test22', NULL, '208,209,235', NULL, 1528429999, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (48, 0, '0', 'group', '209', 'twst31、222、客服-new_test22', NULL, '207,209,235', NULL, 1528434058, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (49, 0, '0', 'group', '209', 'twst31、ye_ren、客服-new_test22', NULL, '209,222,235', NULL, 1528434068, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (50, 0, '0', 'group', '209', '13333333333、wuli、客服-new_test22', NULL, '33,208,209', NULL, 1528434114, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (51, 0, '0', 'group', '209', '222、666677、客服-new_test22', NULL, '207,209,212', NULL, 1528436504, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (52, 0, '0', 'group', '240', 'sabo、twst31、pressure-test1', NULL, '122,235,240', NULL, 1528442832, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (53, 0, '0', 'group', '240', '222、twst31、pressure-test1', NULL, '207,235,240', NULL, 1528444189, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (54, 0, '0', 'group', '240', 'pressure_test3、twst31、pressure-test1', NULL, '235,240,242', NULL, 1528447715, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (55, 0, '0', 'group', '240', 'pressure_test3、pressure_test5、pressure-test1', NULL, '240,242,244', NULL, 1528449333, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (56, 0, '0', 'group', '240', 'pressure_test5、222、pressure-test1', NULL, '207,240,244', NULL, 1528619575, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (57, 0, '0', 'group', '240', 'pressure_test5、twst31、pressure-test1', NULL, '235,240,244', NULL, 1528620764, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (58, 0, '0', 'group', '209', '222、284018571@qq.com、客服-new_test22', NULL, '53,207,209', NULL, 1528625095, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (59, 0, '0', 'group', '240', '666677、twst31、pressure-test1', NULL, '212,235,240', NULL, 1528683120, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (60, 0, '0', 'group', '240', 'pressure_test5、twst31、pressure-test1', NULL, '235,240,244', NULL, 1528683363, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (61, 0, '0', 'group', '240', '222、twst31、pressure-test1', NULL, '207,235,240', NULL, 1528683556, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (62, 0, '0', 'group', '199', '111、wuli、客服-nightfox', NULL, '199,208,239', NULL, 1528683596, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (63, 0, '0', 'group', '240', 'pressure_test5、twst31、pressure-test1', NULL, '235,240,244', NULL, 1528683729, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (64, 0, '0', 'group', '240', '222、twst31、pressure-test1', NULL, '207,235,240', NULL, 1528683804, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (65, 0, '0', 'group', '240', 'pressure_test5、twst31、pressure-test1', NULL, '235,240,244', NULL, 1528683941, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (66, 0, '0', 'group', '240', '222、twst31、pressure-test1', NULL, '207,235,240', NULL, 1528684982, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (67, 0, '0', 'group', '199', '222、twst31、客服-nightfox', NULL, '199,207,235', NULL, 1528685021, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (68, 0, '0', 'group', '240', 'pressure_test5、222、pressure-test1', NULL, '207,240,244', NULL, 1528689176, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (69, 0, '0', 'group', '207', 'pressure_test2、pressure_test4、宋仓鼠', NULL, '207,241,243', NULL, 1528705328, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (70, 0, '0', 'group', '207', '666677、111、宋仓鼠', NULL, '207,212,239', NULL, 1528723793, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (71, 0, '0', 'group', '209', '666677、111、客服-new_test22', NULL, '209,212,239', NULL, 1528771651, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (72, 0, '0', 'group', '209', 'pressure_test4、pressure_test2、客服-new_test22', NULL, '209,241,243', NULL, 1528775303, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (73, 0, '0', 'group', '240', 'pressure_test2、pressure_test5、pressure-test1', NULL, '240,241,244', NULL, 1528783477, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (74, 0, '0', 'group', '240', 'pressure_test3、chatman1、pressure-test1', NULL, '240,242,254', NULL, 1528785826, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (75, 0, '0', 'group', '240', 'pppppp、666677、pressure-test1', NULL, '212,240,260', NULL, 1528788990, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (76, 0, '0', 'group', '199', 'wuli、pressure_test4、客服-nightfox', NULL, '199,208,243', NULL, 1528789882, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (77, 0, '0', 'group', '199', 'twst31、zhaiminliang、客服-nightfox', NULL, '74,199,235', NULL, 1528790101, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (78, 0, '0', 'group', '199', 'twst31、drawen1、客服-nightfox', NULL, '199,216,235', NULL, 1528790164, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (79, 0, '0', 'group', '240', 'wuli、pressure_test4、pressure-test1', NULL, '208,240,243', NULL, 1528790354, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (80, 0, '0', 'group', '199', 'chatman2、chatman1、客服-nightfox', NULL, '199,254,255', NULL, 1528790518, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (81, 0, '0', 'group', '199', 'chatman2、chatman1、客服-nightfox', NULL, '199,254,255', NULL, 1528790682, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (82, 0, '0', 'group', '209', '111、wuli、客服-new_test22', NULL, '208,209,239', NULL, 1528792228, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (83, 0, '0', 'group', '209', 'wuli、111、客服-new_test22', NULL, '208,209,239', NULL, 1528793201, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (84, 0, '0', 'group', '209', 'chatman2、twst31、客服-new_test22', NULL, '209,235,255', NULL, 1528795836, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (85, 0, '0', 'group', '209', 'chatman2、seven@qq.com、客服-new_test22', NULL, '84,209,255', NULL, 1528796157, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (86, 0, '0', 'group', '199', 'chatman2、ye_ren、客服-nightfox', NULL, '199,222,255', NULL, 1528796187, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (87, 0, '0', 'group', '209', 'wuli、chatman2、客服-new_test22', NULL, '208,209,255', NULL, 1528796349, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (88, 0, '0', 'group', '199', 'chatman5、new_test22、客服-nightfox', NULL, '199,209,258', NULL, 1528797981, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (89, 0, '0', 'group', '209', 'chatman5、wuli、客服-new_test22', NULL, '208,209,258', NULL, 1528798488, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (90, 0, '0', 'group', '199', '111、666677、客服-nightfox', NULL, '199,212,239', NULL, 1528798646, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (91, 0, '0', 'group', '199', 'guan、666677、客服-nightfox', NULL, '199,205,212', NULL, 1528798781, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (92, 0, '0', 'group', '209', 'guan、666677、客服-new_test22', NULL, '205,209,212', NULL, 1528798808, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (93, 0, '0', 'group', '254', 'new_test22、wuli、客服-254', NULL, '208,209,254', NULL, 1528802765, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (94, 0, '0', 'group', '207', 'wuli、666677、宋仓鼠', NULL, '207,208,212', NULL, 1528806767, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (95, 0, '0', 'group', '207', 'pressure_test7、pressure_test4、宋仓鼠', NULL, '207,243,246', NULL, 1528807371, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (96, 0, '0', 'group', '207', 'pressure_test7、pressure_test4、宋仓鼠', NULL, '207,243,246', NULL, 1528807639, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (97, 0, '0', 'group', '207', 'wuli、666677、宋仓鼠', NULL, '207,208,212', NULL, 1528807693, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (98, 0, '0', 'group', '207', 'pressure_test7、pressure_test4、宋仓鼠', NULL, '207,243,246', NULL, 1528807776, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (99, 0, '0', 'group', '254', 'pressure_test7、pressure_test4、客服-254', NULL, '243,246,254', NULL, 1528808739, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (100, 0, '0', 'group', '207', 'chatman5、pressure_test4、666', NULL, '207,243,258', NULL, 1528810740, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (101, 0, '0', 'group', '207', 'chatman5、5153298@qq.com、666', NULL, '88,207,258', NULL, 1528810874, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (102, 0, '0', 'group', '254', 'pressure_test2、pressure_test7、客服-254', NULL, '241,246,254', NULL, 1528812672, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (103, 0, '0', 'group', '254', 'nightfox、111、客服-254', NULL, '199,239,254', NULL, 1528815058, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (104, 0, '0', 'group', '254', 'nightfox、wuli、客服-254', NULL, '199,208,254', NULL, 1528815418, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (105, 0, '0', 'group', '254', 'sabozz、sabo、客服-254', NULL, '122,123,254', NULL, 1528815643, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (106, 0, '0', 'group', '254', 'pressure_test7、pressure_test4、客服-254', NULL, '243,246,254', NULL, 1528815993, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (107, 0, '0', 'group', '207', 'nightfox、111、666', NULL, '199,207,239', NULL, 1528820229, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (108, 0, '0', 'group', '207', 'chatman2、nightfox、666', NULL, '199,207,255', NULL, 1528820442, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (109, 0, '0', 'group', '207', 'new_test22、pressure_test5、666', NULL, '207,209,244', NULL, 1528827103, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (110, 0, '0', 'group', '199', 'twst31、pressure_test1、客服-nightfox', NULL, '199,235,240', NULL, 1528859524, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (111, 0, '0', 'group', '199', '666677、pppppp、客服-nightfox', NULL, '199,212,260', NULL, 1528861196, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (112, 0, '0', 'group', '209', 'wuli、twst31、客服-new_test22', NULL, '208,209,235', NULL, 1528872679, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (113, 0, '0', 'group', '209', 'wuli、twst31、客服-new_test22', NULL, '208,209,235', NULL, 1528872887, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (114, 0, '0', 'group', '209', 'pressure_test7、wuli、客服-new_test22', NULL, '208,209,246', NULL, 1528873528, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (115, 0, '0', 'group', '209', 'pressure_test7、wuli、客服-new_test22', NULL, '208,209,246', NULL, 1528873597, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (116, 0, '0', 'group', '209', 'pressure_test7、wuli、客服-new_test22', NULL, '208,209,246', NULL, 1528873722, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (117, 0, '0', 'group', '209', 'pressure_test7、wuli、客服-new_test22', NULL, '208,209,246', NULL, 1528873965, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (118, 0, '0', 'group', '254', 'pressure_test7、chatman5、客服-254', NULL, '246,254,258', NULL, 1528876329, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (119, 0, '0', 'group', '207', 'pppppp、twst31、666', NULL, '207,235,260', NULL, 1528876412, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (120, 0, '0', 'group', '254', 'pressure_test7、chatman5、客服-254', NULL, '246,254,258', NULL, 1528876472, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (121, 0, '0', 'group', '207', 'twst31、chatman5、666', NULL, '207,235,258', NULL, 1528876910, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (122, 0, '0', 'group', '122', 'pressure_test6、pressure_test4、客服一号', NULL, '122,243,245', NULL, 1528879844, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (123, 0, '0', 'group', '254', 'pressure_test6、pressure_test7、客服-254', NULL, '245,246,254', NULL, 1528880368, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (124, 0, '0', 'group', '209', '666677、wuli、客服-new_test22', NULL, '208,209,212', NULL, 1528880702, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (125, 0, '0', 'group', '209', '666677、wuli、客服-new_test22', NULL, '208,209,212', NULL, 1528881016, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (126, 0, '0', 'group', '209', '666677、wuli、客服-new_test22', NULL, '208,209,212', NULL, 1528881204, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (127, 0, '0', 'group', '209', '666677、wuli、客服-new_test22', NULL, '208,209,212', NULL, 1528881303, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (128, 0, '0', 'group', '122', 'wuli、twst31、客服一号', NULL, '122,208,235', NULL, 1528885342, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (129, 0, '0', 'group', '254', 'chatman5、pressure_test7、客服-254', NULL, '246,254,258', NULL, 1528885989, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (130, 0, '0', 'group', '209', '666677、wuli、客服-new_test22', NULL, '208,209,212', NULL, 1528889377, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (131, 0, '0', 'group', '254', 'wuli、666677、客服-254', NULL, '208,212,254', NULL, 1528889803, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (132, 0, '0', 'group', '245', 'wuli、666677、245客服', NULL, '208,212,245', NULL, 1528889820, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (133, 0, '0', 'group', '122', 'wuli、666677、客服一号', NULL, '122,208,212', NULL, 1528889874, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (134, 0, '0', 'group', '207', 'twst31、wuli、666', NULL, '207,208,235', NULL, 1528890012, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (135, 0, '0', 'group', '254', 'xuxianjiang、twst31、客服-254', NULL, '235,254,263', NULL, 1528890388, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (136, 0, '0', 'group', '199', 'twst31、wuli、客服-nightfox', NULL, '199,208,235', NULL, 1528890753, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (137, 0, '0', 'group', '245', 'xuxianjiang、guan、245客服', NULL, '205,245,263', NULL, 1528891391, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (138, 0, '0', 'group', '122', 'xuxianjiang、guan、客服一号', NULL, '122,205,263', NULL, 1528891397, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (139, 0, '0', 'group', '207', 'xuxianjiang、twst31、666', NULL, '207,235,263', NULL, 1528891406, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (140, 0, '0', 'group', '254', 'xuxianjiang、guan、客服-254', NULL, '205,254,263', NULL, 1528891426, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (141, 0, '0', 'group', '199', '666677、wuli、客服-nightfox', NULL, '199,208,212', NULL, 1528896720, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (142, 0, '0', 'group', '199', 'wuli、666677、客服-nightfox', NULL, '199,208,212', NULL, 1528898510, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (143, 0, '0', 'group', '199', 'pressure_test2、pressure_test4、客服-nightfox', NULL, '199,241,243', NULL, 1528898830, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (144, 0, '0', 'group', '199', 'wuli、twst31、客服-nightfox', NULL, '199,208,235', NULL, 1528899181, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (145, 0, '0', 'group', '207', 'wuli、666677、666', NULL, '207,208,212', NULL, 1528900710, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (146, 0, '0', 'group', '199', '666677、wuli、客服-nightfox', NULL, '199,208,212', NULL, 1528900957, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (147, 0, '0', 'group', '122', 'chatman5、chatman2、客服一号', NULL, '122,255,258', NULL, 1528902789, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (148, 0, '0', 'group', '199', 'twst31、wuli、客服-nightfox', NULL, '199,208,235', NULL, 1528903778, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (149, 0, '0', 'group', '199', 'chatman5、wuli、客服-nightfox', NULL, '199,208,258', NULL, 1528904483, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (150, 0, '0', 'group', '207', '666677、wuli、666', NULL, '207,208,212', NULL, 1528906060, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (151, 0, '0', 'group', '207', 'wuli、twst31、666', NULL, '207,208,235', NULL, 1528962060, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (152, 0, '0', 'group', '209', 'pressure_test10、pressure_test7、客服-new_test22', NULL, '209,246,249', NULL, 1528963643, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (153, 0, '0', 'group', '207', 'pressure_test9、pressure_test10、666', NULL, '207,248,249', NULL, 1528964452, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (154, 0, '0', 'group', '207', '超级宇宙无敌、drawen1、666', NULL, '74,207,216', NULL, 1528966242, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (155, 0, '0', 'group', '207', 'twst31、ye_ren、666', NULL, '207,222,235', NULL, 1528968047, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (156, 0, '0', 'group', '207', 'ye_ren、guan、666', NULL, '205,207,222', NULL, 1528975641, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (157, 0, '0', 'group', '207', '111、666677、666', NULL, '207,212,239', NULL, 1528975948, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (158, 0, '0', 'group', '209', 'pressure_test10、pressure_test9、客服-new_test22', NULL, '209,248,249', NULL, 1528977875, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (159, 0, '0', 'group', '207', 'pressure_test10、pressure_test9、666', NULL, '207,248,249', NULL, 1528978282, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (160, 0, '0', 'group', '209', 'twst31、pressure_test10、客服-new_test22', NULL, '209,235,249', NULL, 1528978564, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (161, 0, '0', 'group', '209', 'pressure_test8、pressure_test9、客服-new_test22', NULL, '209,247,248', NULL, 1528979262, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (162, 0, '0', 'group', '209', 'pressure_test10、pressure_test9、客服-new_test22', NULL, '209,248,249', NULL, 1528979369, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (163, 0, '0', 'group', '209', 'pressure_test10、wuli、客服-new_test22', NULL, '208,209,249', NULL, 1528981080, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (164, 0, '0', 'group', '209', 'pressure_test10、wuli、客服-new_test22', NULL, '208,209,249', NULL, 1528981174, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (165, 0, '0', 'group', '209', 'pressure_test10、wuli、客服-new_test22', NULL, '208,209,249', NULL, 1528981246, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (166, 0, '0', 'group', '209', 'pressure_test10、wuli、客服-new_test22', NULL, '208,209,249', NULL, 1528981540, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (167, 0, '0', 'group', '240', 'chatman002、pressure_test10、pressure-test1', NULL, '240,249,270', NULL, 1528989984, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (168, 0, '0', 'group', '240', 'chatman003、chatman002、pressure-test1', NULL, '240,270,271', NULL, 1528992022, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (169, 0, '0', 'group', '209', 'ye_ren、wuli、客服-new_test22', NULL, '208,209,222', NULL, 1528993974, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (170, 0, '0', 'group', '209', 'chatman004、chatman002、客服-new_test22', NULL, '209,270,272', NULL, 1528996210, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (171, 0, '0', 'group', '240', 'wuli、ye_ren、pressure-test1', NULL, '208,222,240', NULL, 1529003017, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (172, 0, '0', 'group', '240', 'pressure_test7、wuli、pressure-test1', NULL, '208,240,246', NULL, 1529003116, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (173, 0, '0', 'group', '240', 'pressure_test7、wuli、pressure-test1', NULL, '208,240,246', NULL, 1529003194, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (174, 0, '0', 'group', '240', 'wuli、pressure_test7、pressure-test1', NULL, '208,240,246', NULL, 1529003233, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (175, 0, '0', 'group', '240', 'wuli、ye_ren、pressure-test1', NULL, '208,222,240', NULL, 1529003276, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (176, 0, '0', 'group', '240', 'wuli、pressure_test7、pressure-test1', NULL, '208,240,246', NULL, 1529003340, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (177, 0, '0', 'group', '240', 'wuli、pressure_test7、pressure-test1', NULL, '208,240,246', NULL, 1529003382, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (178, 0, '0', 'group', '240', 'pressure_test7、wuli、pressure-test1', NULL, '208,240,246', NULL, 1529003576, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (179, 0, '0', 'group', '240', 'pressure_test7、wuli、pressure-test1', NULL, '208,240,246', NULL, 1529003752, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (180, 0, '0', 'group', '207', 'ye_ren、pressure_test7、666', NULL, '207,222,246', NULL, 1529004315, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (181, 0, '0', 'group', '209', 'chatman005、chatman006、客服-new_test22', NULL, '209,273,274', NULL, 1529013166, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (182, 0, '0', 'group', '209', 'chatman006、chatman005、客服-new_test22', NULL, '209,273,274', NULL, 1529013356, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (183, 0, '0', 'group', '209', 'chatman006、chatman005、客服-new_test22', NULL, '209,273,274', NULL, 1529013746, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (184, 0, '0', 'group', '207', 'chatman005、chatman006、666', NULL, '207,273,274', NULL, 1529013821, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (185, 0, '0', 'group', '209', '666677、wuli、客服-new_test22', NULL, '208,209,212', NULL, 1529014616, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (186, 0, '0', 'group', '199', '666677、twst31、客服-nightfox', NULL, '199,212,235', NULL, 1529014851, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (187, 0, '0', 'group', '199', '666677、twst31、客服-nightfox', NULL, '199,212,235', NULL, 1529014905, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (188, 0, '0', 'group', '199', '666677、twst31、客服-nightfox', NULL, '199,212,235', NULL, 1529015430, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (189, 0, '0', 'group', '209', 'chatman007、chatman006、客服-new_test22', NULL, '209,274,275', NULL, 1529016078, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (190, 0, '0', 'group', '209', 'chatman006、chatman007、客服-new_test22', NULL, '209,274,275', NULL, 1529016138, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (191, 0, '0', 'group', '122', 'pressure_test4、pressure_test5、客服一号', NULL, '122,243,244', NULL, 1529029618, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (192, 0, '0', 'group', '209', 'pressure_test4、pressure_test5、客服-new_test22', NULL, '209,243,244', NULL, 1529029690, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (193, 0, '0', 'group', '122', 'pressure_test7、超级宇宙无敌、客服一号', NULL, '74,122,246', NULL, 1529029876, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (194, 0, '0', 'group', '209', 'pressure_test4、pressure_test7、客服-new_test22', NULL, '209,243,246', NULL, 1529030956, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (195, 0, '0', 'group', '207', 'pressure_test4、ye_ren、666', NULL, '207,222,243', NULL, 1529031162, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (196, 0, '0', 'group', '245', 'pressure_test4、666677、245客服', NULL, '212,243,245', NULL, 1529031231, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (197, 0, '0', 'group', '245', 'pressure_test7、超级宇宙无敌、245客服', NULL, '74,245,246', NULL, 1529031317, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (198, 0, '0', 'group', '245', 'ye_ren、pressure_test4、245客服', NULL, '222,243,245', NULL, 1529031555, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (199, 0, '0', 'group', '209', 'chatman006、chatman005、客服-new_test22', NULL, '209,273,274', NULL, 1529031847, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (200, 0, '0', 'group', '209', 'chatman006、chatman005、客服-new_test22', NULL, '209,273,274', NULL, 1529032461, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (201, 0, '0', 'group', '209', 'chatman006、chatman005、客服-new_test22', NULL, '209,273,274', NULL, 1529032488, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (202, 0, '0', 'group', '240', '点击联系、珍珠奶茶丶、pressure-test1', NULL, '231,240,276', NULL, 1529032895, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (203, 0, '0', 'group', '209', '超级宇宙无敌、pressure_test7、客服-new_test22', NULL, '74,209,246', NULL, 1529033512, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (204, 0, '0', 'group', '240', '超级宇宙无敌、pressure_test7、pressure-test1', NULL, '74,240,246', NULL, 1529033533, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (205, 0, '0', 'group', '209', '666677、111、客服-new_test22', NULL, '209,212,239', NULL, 1529038266, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (206, 0, '0', 'group', '122', '超级宇宙无敌、sabozz、客服一号', NULL, '74,122,123', NULL, 1529051812, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (207, 0, '0', 'group', '199', 'sabozz、超级宇宙无敌、客服-nightfox', NULL, '74,123,199', NULL, 1529051879, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (208, 0, '0', 'group', '122', 'sabozz、超级宇宙无敌、客服一号', NULL, '74,122,123', NULL, 1529051973, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (209, 0, '0', 'group', '209', 'sabozz、超级宇宙无敌、客服-new_test22', NULL, '74,123,209', NULL, 1529052093, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (210, 0, '0', 'group', '122', '666677、超级宇宙无敌、客服一号', NULL, '74,122,212', NULL, 1529052221, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (211, 0, '0', 'group', '122', '111、666677、客服一号', NULL, '122,212,239', NULL, 1529054437, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (212, 0, '0', 'group', '199', 'pressure_test7、超级宇宙无敌、客服-nightfox', NULL, '74,199,246', NULL, 1529058053, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (213, 0, '0', 'group', '209', 'pressure_test5、twst31、客服-new_test22', NULL, '209,235,244', NULL, 1529379801, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (214, 0, '0', 'group', '240', '666677、wuli、pressure-test1', NULL, '208,212,240', NULL, 1529408858, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (215, 0, '0', 'group', '209', 'pressure_test4、pressure_test2、客服-new_test22', NULL, '209,241,243', NULL, 1529480046, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (216, 0, '0', 'group', '122', 'sabozz、pressure_test7、客服一号', NULL, '122,123,246', NULL, 1529486375, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (217, 0, '0', 'group', '122', 'pressure_test2、sabozz、客服一号', NULL, '122,123,241', NULL, 1529488790, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (218, 0, '0', 'group', '209', 'pressure_test2、sabozz、客服-new_test22', NULL, '123,209,241', NULL, 1529492254, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (219, 0, '0', 'group', '209', 'pressure_test2、sabozz、客服-new_test22', NULL, '123,209,241', NULL, 1529549819, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (220, 0, '0', 'group', '122', 'pressure_test2、sabozz、客服一号', NULL, '122,123,241', NULL, 1529549868, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (221, 0, '0', 'group', '209', 'pressure_test10、pressure_test1、客服-new_test22', NULL, '209,240,249', NULL, 1529553762, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (222, 0, '0', 'group', '209', 'chatman005、chatman006、客服-new_test22', NULL, '209,273,274', NULL, 1529560161, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (223, 0, '0', 'group', '209', 'pressure_test1、纛pressure_test0柒、客服-new_test22', NULL, '209,240,246', NULL, 1529560664, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (224, 0, '0', 'group', '209', 'pressure_test5、wuli、客服-new_test22', NULL, '208,209,244', NULL, 1529560922, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (225, 0, '0', 'group', '209', 'wuli、666677、客服-new_test22', NULL, '208,209,212', NULL, 1529565627, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (226, 0, '0', 'group', '279', 'twst31、wuli、宋莹小姐姐', NULL, '208,235,279', NULL, 1529565796, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (227, 0, '0', 'group', '279', 'twst31、guan、宋莹小姐姐', NULL, '205,235,279', NULL, 1529565853, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (228, 0, '0', 'group', '209', 'wuli、twst31、客服-new_test22', NULL, '208,209,235', NULL, 1529566316, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (229, 0, '0', 'group', '279', 'sabozz、chatman006、宋莹小姐姐', NULL, '123,274,279', NULL, 1529566554, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (230, 0, '0', 'group', '279', 'chatman006、chatman008、宋莹小姐姐', NULL, '274,277,279', NULL, 1529570189, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (231, 0, '0', 'group', '199', 'chatman008、chatman006、客服-nightfox', NULL, '199,274,277', NULL, 1529573334, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (232, 0, '0', 'group', '199', 'sabozz、pressure_test2、客服-nightfox', NULL, '123,199,241', NULL, 1529576128, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (233, 0, '0', 'group', '199', 'sabozz、chatman006、客服-nightfox', NULL, '123,199,274', NULL, 1529576166, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (234, 0, '0', 'group', '122', 'pressure_test2、wuli、客服一号', NULL, '122,208,241', NULL, 1529576295, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (235, 0, '0', 'group', '209', '111、666677、客服-new_test22', NULL, '209,212,239', NULL, 1529583367, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (236, 0, '0', 'group', '279', 'pressure_test4、pressure_test3、宋莹小姐姐', NULL, '242,243,279', NULL, 1529634889, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (237, 0, '0', 'group', '279', 'sabozz、纛pressure_test0柒、宋莹小姐姐', NULL, '123,246,279', NULL, 1529635007, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (238, 0, '0', 'group', '279', '666677、wuli、宋莹小姐姐', NULL, '208,212,279', NULL, 1529635074, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (239, 0, '0', 'group', '199', 'chatman007、chatman008、客服-nightfox', NULL, '199,275,277', NULL, 1529651278, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (240, 0, '0', 'group', '199', 'pressure_test4、111、客服-nightfox', NULL, '199,239,243', NULL, 1529656481, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (241, 0, '0', 'group', '279', 'pressure_test4、pressure_test6、宋莹小姐姐', NULL, '243,245,279', NULL, 1529663394, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (242, 0, '0', 'group', '279', 'test30、pressure_test9、宋莹小姐姐', NULL, '228,248,279', NULL, 1529663619, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (243, 0, '0', 'group', '279', '666677、111、宋莹小姐姐', NULL, '212,239,279', NULL, 1529664905, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (244, 0, '0', 'group', '279', 'pressure_test1、111、宋莹小姐姐', NULL, '239,240,279', NULL, 1529894625, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (245, 0, '0', 'group', '279', '666677、drawen1、宋莹小姐姐', NULL, '212,216,279', NULL, 1529908215, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (246, 0, '0', 'group', '209', 'pressure_test1、pressure_test6、客服-new_test22', NULL, '209,240,245', NULL, 1529925020, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (247, 0, '0', 'group', '209', 'twst31、wuli、客服-new_test22', NULL, '208,209,235', NULL, 1529977807, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (248, 0, '0', 'group', '209', 'pressure_test2、chatman008、客服-new_test22', NULL, '209,241,277', NULL, 1529983264, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (249, 0, '0', 'group', '199', 'pressure_test10、pressure_test4、客服-nightfox', NULL, '199,243,249', NULL, 1529985123, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (250, 0, '0', 'group', '209', 'chatman008、wuli、客服-new_test22', NULL, '208,209,277', NULL, 1529993027, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (251, 0, '0', 'group', '209', 'pressure_test4、chatman008、客服-new_test22', NULL, '209,243,277', NULL, 1529993264, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (252, 0, '0', 'group', '209', 'chatman007、chatman008、客服-new_test22', NULL, '209,275,277', NULL, 1529994732, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (253, 0, '0', 'group', '209', 'twst31、chatman008、客服-new_test22', NULL, '209,235,277', NULL, 1529995107, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (254, 0, '0', 'group', '199', 'wuli、chatman008、客服-nightfox', NULL, '199,208,277', NULL, 1529995502, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (255, 0, '0', 'group', '199', 'twst31、chatman005、客服-nightfox', NULL, '199,235,273', NULL, 1529996547, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (256, 0, '0', 'group', '209', 'twst31、chatman005、客服-new_test22', NULL, '209,235,273', NULL, 1529996579, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (257, 0, '0', 'group', '122', 'chatman005、twst31、客服一号', NULL, '122,235,273', NULL, 1529997252, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (258, 0, '0', 'group', '122', 'sabozz、pressure_test2、客服一号', NULL, '122,123,241', NULL, 1529998609, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (259, 0, '0', 'group', '122', 'sabozz、chatman006、客服一号', NULL, '122,123,274', NULL, 1529998632, 1, NULL);
INSERT INTO `yl_chatroom` VALUES (260, 0, '0', 'group', '199', 'sabozz、chatman006、客服-nightfox', NULL, '123,199,274', NULL, 1529998649, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (261, 0, '0', 'group', '199', 'chatman008、sabozz、客服-nightfox', NULL, '123,199,277', NULL, 1529999003, 0, NULL);
INSERT INTO `yl_chatroom` VALUES (262, 0, '0', 'group', '199', 'chatman007、chatman008、客服-nightfox', NULL, '199,275,277', NULL, 1530158124, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;

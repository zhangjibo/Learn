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

 Date: 12/06/2019 10:05:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yl_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `yl_admin_log`;
CREATE TABLE `yl_admin_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT '操作的管理员id',
  `admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员名称',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行的操作名称',
  `action_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行的操作的url',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参数',
  `addtime` int(11) NOT NULL COMMENT '操作执行时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `action_url`(`action_url`(250)) USING BTREE,
  INDEX `admin_name`(`admin_name`(250)) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 52683 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台操作日志表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

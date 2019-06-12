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

 Date: 12/06/2019 10:08:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yl_user
-- ----------------------------
DROP TABLE IF EXISTS `yl_user`;
CREATE TABLE `yl_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '上级ID',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邀请路径',
  `level` int(11) NOT NULL DEFAULT 1 COMMENT '级别',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobletime` int(11) UNSIGNED NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tpwdsetting` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paypassword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invit_1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invit_2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invit_3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inviters` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邀请人，有几级就填几个，一级开始逗号隔开',
  `truename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcardauth` tinyint(1) NULL DEFAULT 0 COMMENT '0.未上传,1.审核成功,2.待审核,3.审核失败',
  `idcardimg1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '序列化三个元素',
  `idcardimg2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcardinfo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logins` int(11) UNSIGNED NULL DEFAULT 0,
  `ga` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) UNSIGNED NULL DEFAULT NULL,
  `addtime` int(11) UNSIGNED NULL DEFAULT NULL,
  `endtime` int(11) UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '-1为删除状态，0为冻结状态，1为正常状态，2为账号锁定状态，3为账号解锁状态',
  `realname_auth` tinyint(1) NULL DEFAULT 0 COMMENT '0:未实名认证，1：已实名认证',
  `pserror_times` int(1) NULL DEFAULT 0 COMMENT '密码输入错误3次，就锁定账号',
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `invit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `app_token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'app端登录的token',
  `last_app_token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上一次登录的app_token',
  `awardid` int(2) NULL DEFAULT 0,
  `awardstatus` smallint(1) NULL DEFAULT 0,
  `awardname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `awardNumAll` int(10) NULL DEFAULT 0,
  `awardNumToday` int(10) NULL DEFAULT 0,
  `awardTotalToday` int(10) NULL DEFAULT 0,
  `awardtime` int(11) NULL DEFAULT 0,
  `regaward` tinyint(1) NULL DEFAULT 0,
  `usertype` tinyint(1) NULL DEFAULT 0,
  `last_login_ip` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上一次登录的ip',
  `login_ip` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本次登录的ip',
  `last_login_time` int(10) NULL DEFAULT NULL COMMENT '上一次登录时间',
  `login_time` int(10) NULL DEFAULT NULL COMMENT '本次登录时间',
  `last_token` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上一次登录的token',
  `register_type` enum('mobile','email') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'email' COMMENT '注册方式',
  `calculated_profit` decimal(22, 2) NULL DEFAULT 0.00 COMMENT '团队奖已结算收益',
  `history_coin` decimal(22, 8) NULL DEFAULT 0.00000000 COMMENT '团队历史已结算收益',
  `real_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实名认证图片',
  `verify_status` tinyint(1) NULL DEFAULT -1 COMMENT '实名认证审核状态：-1=未提交;1=审核成功;-2=审核失败；-3=审核认证中',
  `upload_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  `delete_status` tinyint(1) NULL DEFAULT 1 COMMENT '实名认证删除状态：-1=删除；1=正常',
  `coin_status` tinyint(1) NULL DEFAULT -1 COMMENT '是否冻结币种交易：-1=未冻结；1=冻结',
  `xme_switch` tinyint(1) NULL DEFAULT -1 COMMENT 'xme智能猪开关',
  `btc_switch` tinyint(1) NULL DEFAULT -1 COMMENT 'btc智能猪开关',
  `eth_switch` tinyint(1) NULL DEFAULT -1 COMMENT 'eth智能猪开关',
  `xme_time` int(11) NULL DEFAULT 0 COMMENT 'xme封闭期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 616 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;

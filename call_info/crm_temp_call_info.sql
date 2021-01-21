/*
 Navicat Premium Data Transfer

 Source Server         : ver5
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 192.168.33.11:3306
 Source Schema         : suntory_20201120

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 07/12/2020 10:51:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_temp_call_info
-- ----------------------------
DROP TABLE IF EXISTS `crm_temp_call_info`;
CREATE TABLE `crm_temp_call_info` (
  `id` int(0) NOT NULL,
  `CASE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CALL_START_DATETIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CALL_END_DATETIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CALL_TIMES` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `USER_INCHARGE` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `PHONE_NUMB` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `LINE_CLASSIFICATION` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `FILE_VOICE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `crm_temp_call_info` 
ADD INDEX `idx_CASE_ID`(`CASE_ID`) USING BTREE;

ALTER TABLE `crm_temp_call_info` 
MODIFY COLUMN `id` int(0) NOT NULL AUTO_INCREMENT FIRST;

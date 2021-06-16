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

 Date: 07/12/2020 21:40:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_temp_pure_cloud
-- ----------------------------
DROP TABLE IF EXISTS `crm_temp_pure_cloud`;
CREATE TABLE `crm_temp_pure_cloud`  (
  `ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CASE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `URL` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `CLASSIFICATION` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `USER_INCHARGE_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `USER_INCHARGE_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `FILE_NAME` text NULL COMMENT 'file path',
  INDEX `idx_CASE_ID`(`CASE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

ALTER TABLE `crm_temp_pure_cloud` 
ADD INDEX `idx_ID`(`ID`) USING BTREE;

ALTER TABLE `crm_recovoice` 
ADD COLUMN `pure_cloud_id` varchar(32) NULL;

ALTER TABLE `crm_temp_pure_cloud` 
ADD COLUMN `recovoice_id` int(0) NULL;

SET FOREIGN_KEY_CHECKS = 1;

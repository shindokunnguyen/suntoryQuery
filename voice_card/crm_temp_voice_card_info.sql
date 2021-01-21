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

 Date: 03/12/2020 15:45:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_temp_voice_card_info
-- ----------------------------
DROP TABLE IF EXISTS `crm_temp_voice_card_info`;
CREATE TABLE `crm_temp_voice_card_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `CASE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CUSTOMER_NO` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `FIRST_CRSP` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `FIRST_CRSP_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `BEHAVIOR` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `BEHAVIOR_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `EXPLAIN` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `EXPLAIN_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `USE_STATE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `USE_STATE_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `OPINION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `RESPONSETIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `RESPONSETIME_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- query post data



SET sql_mode='';

ALTER TABLE `crm_temp_voice_card_info` 
ADD INDEX `idx_CASE_ID`(`CASE_ID`) USING BTREE;

-- update data crm_issue_area_correspond_tab_11
UPDATE crm_issue_area_correspond_tab_11 AS tab11
INNER JOIN crm_temp_voice_card_info AS voice_temp ON tab11.issue_code = voice_temp.CASE_ID 
SET 
issue_area_correspond_tab_11_cf_314_code = voice_temp.FIRST_CRSP,
issue_area_correspond_tab_11_cf_314_name = voice_temp.FIRST_CRSP_NAME,
issue_area_correspond_tab_11_cf_316_code = voice_temp.BEHAVIOR,
issue_area_correspond_tab_11_cf_316_name = voice_temp.BEHAVIOR_NAME,
issue_area_correspond_tab_11_cf_317_code = voice_temp.EXPLAIN,
issue_area_correspond_tab_11_cf_317_name = voice_temp.EXPLAIN_NAME,
issue_area_correspond_tab_11_cf_318_code = voice_temp.USE_STATE,
issue_area_correspond_tab_11_cf_318_name = voice_temp.USE_STATE_NAME,
issue_area_correspond_tab_11_cf_994 = voice_temp.OPINION,
issue_area_correspond_tab_11_cf_315_code = voice_temp.RESPONSETIME,
issue_area_correspond_tab_11_cf_315_name = voice_temp.RESPONSETIME_NAME 
WHERE
	tab11.issue_code IS NOT NULL;

-- insert data crm_issue_area_correspond_tab_11
INSERT INTO crm_issue_area_correspond_tab_11 ( 
  issue_code, 
  issue_area_correspond_tab_11_cf_314_code, 
  issue_area_correspond_tab_11_cf_314_name, 
  issue_area_correspond_tab_11_cf_316_code, 
  issue_area_correspond_tab_11_cf_316_name, 
  issue_area_correspond_tab_11_cf_317_code, 
  issue_area_correspond_tab_11_cf_317_name, 
  issue_area_correspond_tab_11_cf_318_code, 
  issue_area_correspond_tab_11_cf_318_name, 
  issue_area_correspond_tab_11_cf_994, 
  issue_area_correspond_tab_11_cf_315_code, 
  issue_area_correspond_tab_11_cf_315_name 
  ) SELECT
voice_temp.CASE_ID,
voice_temp.FIRST_CRSP,
voice_temp.FIRST_CRSP_NAME,
voice_temp.BEHAVIOR,
voice_temp.BEHAVIOR_NAME,
voice_temp.EXPLAIN,
voice_temp.EXPLAIN_NAME,
voice_temp.USE_STATE,
voice_temp.USE_STATE_NAME,
voice_temp.OPINION,
voice_temp.RESPONSETIME,
voice_temp.RESPONSETIME_NAME 
FROM
	crm_temp_voice_card_info AS voice_temp
	LEFT JOIN crm_issue_area_correspond_tab_11 AS tab11 ON voice_temp.CASE_ID = tab11.issue_code 
WHERE
	( tab11.issue_code IS NULL OR tab11.issue_code = '' );
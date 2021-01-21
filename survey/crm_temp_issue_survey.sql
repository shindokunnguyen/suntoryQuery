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

 Date: 04/12/2020 13:29:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_temp_issue_survey
-- ----------------------------
DROP TABLE IF EXISTS `crm_temp_issue_survey`;
CREATE TABLE `crm_temp_issue_survey`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `CASE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '1',
  `SUBCASE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '2',
  `CRSP_ORG_CD` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '3',
  `CRSP_ORG_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '4',
  `CRSP_USER_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '5',
  `CRSP_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '6',
  `APRV_ORG_CD` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '7',
  `APRV_ORG_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '8',
  `APRV_USER_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '9',
  `APRV_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '10',
  `SURVEY_REQ_CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '11',
  `REPORT_CLASS_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '12',
  `REPORT_CLASS_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '13',
  `ADD_REPORT_ORG_CD` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '14',
  `ADD_REPORT_ORG_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '15',
  `ADD_REPORT_USER_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '16',
  `ADD_REPORT_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '17',
  `ARRIVAL_DATETIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '18',
  `ARRIVAL_DEPT_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '19',
  `ARRIVAL_DEPT_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '20',
  `ARRIVAL_USER_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '21',
  `ARRIVAL_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '22',
  `ARRIVAL_COMMENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '23',
  `SURVEY_REQ_DEPT_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '24',
  `SURVEY_REQ_DEPT_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '25',
  `SURVEY_REQ_USER_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '26',
  `SURVEY_REQ_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '27',
  `SURVEY_REQ_DATE` date NULL DEFAULT NULL COMMENT '28',
  `CRSP_DATETIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '29',
  `SURVEY_APRV_REQ_DEPT_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '30',
  `SURVEY_APRV_REQ_DEPT_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '31',
  `SURVEY_APRV_REQ_USER_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '32',
  `SURVEY_APRV_REQ_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '33',
  `SURVEY_RESULT_APRV_TARGET_DEPT_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '34',
  `SURVEY_RESULT_APRV_TARGET_DEPT_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '35',
  `SURVEY_RESULT_APRV_TARGET_USER_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '36',
  `SURVEY_RESULT_APRV_TARGET_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '37',
  `RESULT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '38',
  `COMPLETE_DATE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '39',
  `ADD_REPORT_ORG_CD2` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '40',
  `ADD_REPORT_ORG_NAME2` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '41',
  `ADD_REPORT_USER_ID2` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '42',
  `ADD_REPORT_USER_NAME2` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '43',
  `ADD_REPORT_ORG_CD3` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '44',
  `ADD_REPORT_ORG_NAME3` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '45',
  `ADD_REPORT_USER_ID3` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '46',
  `ADD_REPORT_USER_NAME3` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '47',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_CASE_ID`(`CASE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

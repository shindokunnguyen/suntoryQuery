SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_temp_request_history
-- ----------------------------
DROP TABLE IF EXISTS `crm_temp_request_history`;
CREATE TABLE `crm_temp_request_history` (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `CASE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `BRANCH_NUMB` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `HISTORY_NUMB` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `PROCESS_DATE_TIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CLASSIFICATION` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DEPT_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DEPT_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CREATED_USER_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CREATED_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CREATED_DATE_TIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `UPDATED_USER_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `UPDATED_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `UPDATED_DATE_TIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `VOICE_OF_CUST` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `COMMENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `PROCESS_CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `PARAMS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cus_process_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_updated_cus_process` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_CASE_ID`(`CASE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `crm_temp_request_history` 
ADD INDEX `idx_is_updated_cus_process`(`is_updated_cus_process`) USING BTREE,
ADD INDEX `idx_cus_process_id`(`cus_process_id`) USING BTREE,
ADD INDEX `idx_CLASSIFICATION`(`CLASSIFICATION`) USING BTREE,
ADD INDEX `idx_id`(`id`) USING BTREE;


ALTER TABLE `crm_issue_cus_process`
ADD COLUMN `temp_request_history_id` int(0) NULL AFTER `issue_cus_process_attach_flag`,
ADD INDEX `idx_temp_request_history_id`(`temp_request_history_id`) USING BTREE;


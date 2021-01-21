SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_temp_issue_mail
-- ----------------------------
DROP TABLE IF EXISTS `crm_temp_issue_mail`;
CREATE TABLE `crm_temp_issue_mail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `CASE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `BRANCH_NUMB` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `MAIL_CLASSIFICATION` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DEPT_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DEPT_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CREATED_USER_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CREATED_USER_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `CREATED_DATE_TIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SEND_DATETIME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `FROM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `TO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SUBJECT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `BODY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `PARAMS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_CASE_ID`(`CASE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

ALTER TABLE `crm_temp_issue_mail` 
ADD INDEX `idx_MAIL_CLASSIFICATION`(`MAIL_CLASSIFICATION`) USING BTREE,
ADD INDEX `idx_TO`(`TO`) USING BTREE,
ADD INDEX `idx_FROM`(`FROM`) USING BTREE;

CREATE INDEX idx_SUBJECT ON crm_temp_issue_mail ( SUBJECT(500) );

SET FOREIGN_KEY_CHECKS = 1;

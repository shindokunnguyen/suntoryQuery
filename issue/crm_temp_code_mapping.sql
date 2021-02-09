-- ----------------------------
-- Table structure for crm_temp_code_mapping
-- ----------------------------
DROP TABLE IF EXISTS `crm_temp_code_mapping`;
CREATE TABLE `crm_temp_code_mapping`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `SOURCE_CLASS` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SOURCE_CLASS_VALUE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SOURCE_CLASS_NAME` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SOURCE_CLASS_SORT_KEY` int(0) NULL DEFAULT NULL,
  `SOURCE_DEFAULT_FLG` int(0) NULL DEFAULT 0,
  `SOURCE_DELETE_FLG` int(0) NULL DEFAULT 0,
  `SOURCE_CLASS_EXT_VALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `TARGET_TAB` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `TARGET_MODULE` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `TARGET_ITEM_DISPLAY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `TARGET_ITEM_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `TARGET_ITEM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_SOURCE_CLASS`(`SOURCE_CLASS`) USING BTREE,
  INDEX `idx_SOURCE_CLASS_VALUE`(`SOURCE_CLASS_VALUE`) USING BTREE,
  INDEX `idx_SOURCE_CLASS_NAME`(`SOURCE_CLASS_NAME`) USING BTREE,
  INDEX `idx_TARGET_ITEM_CODE`(`TARGET_ITEM_CODE`) USING BTREE,
  INDEX `idx_TARGET_ITEM_NAME`(`TARGET_ITEM_NAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 461 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_temp_code_mapping
-- ----------------------------
INSERT INTO `crm_temp_code_mapping` VALUES (342, 'CRSP_RESULT', '2', 'ご説明・ご案内', 2, 0, 0, NULL, '基本情報	', '', '対応記録(選択)', '2', 'ご説明・ご案内');
INSERT INTO `crm_temp_code_mapping` VALUES (343, 'CRSP_RESULT', '3', 'お話お伺い', 3, 0, 0, NULL, '基本情報	', NULL, '対応記録(選択)', '3', 'お話お伺い');
INSERT INTO `crm_temp_code_mapping` VALUES (344, 'CRSP_RESULT', '4', '関連部署へ申し伝える旨約束', 4, 0, 0, NULL, '基本情報	', NULL, '対応記録(選択)', '4', '関連部署へ申し伝える旨約束');
INSERT INTO `crm_temp_code_mapping` VALUES (345, 'CRSP_RESULT', '5', '折り返しを約束', 5, 0, 0, NULL, '基本情報	', NULL, '対応記録(選択)', '5', '折り返しを約束');
INSERT INTO `crm_temp_code_mapping` VALUES (346, 'CRSP_RESULT', '6', 'お断り', 6, 0, 0, NULL, '基本情報	', NULL, '対応記録(選択)', '6', 'お断り');
INSERT INTO `crm_temp_code_mapping` VALUES (347, 'CRSP_RESULT', '7', 'お礼', 7, 0, 0, NULL, '基本情報	', NULL, '対応記録(選択)', '7', 'お礼');
INSERT INTO `crm_temp_code_mapping` VALUES (348, 'CRSP_RESULT', '8', '送付', 8, 0, 0, NULL, '基本情報	', NULL, '対応記録(選択)', '8', '送付');
INSERT INTO `crm_temp_code_mapping` VALUES (349, 'CRSP_RESULT', '9', '【営業】訪問のアポ取り', 9, 0, 0, NULL, '基本情報	', NULL, '対応記録(選択)', '9', '現品の確認受取');
INSERT INTO `crm_temp_code_mapping` VALUES (350, 'CUST_CLASS', '1', '消費者一般', 1, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '1', '消費者一般');
INSERT INTO `crm_temp_code_mapping` VALUES (351, 'CUST_CLASS', '10', '医療関係', 10, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '10', '医療関係');
INSERT INTO `crm_temp_code_mapping` VALUES (352, 'CUST_CLASS', '11', '社内', 11, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '11', '社内');
INSERT INTO `crm_temp_code_mapping` VALUES (353, 'CUST_CLASS', '12', 'その他', 12, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '12', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (354, 'CUST_CLASS', '2', '業務店', 2, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '2', '業務店');
INSERT INTO `crm_temp_code_mapping` VALUES (355, 'CUST_CLASS', '3', '販売店', 3, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '3', '販売店');
INSERT INTO `crm_temp_code_mapping` VALUES (356, 'CUST_CLASS', '4', '卸店', 4, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '4', '卸店');
INSERT INTO `crm_temp_code_mapping` VALUES (357, 'CUST_CLASS', '5', '企業', 5, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '5', '企業');
INSERT INTO `crm_temp_code_mapping` VALUES (358, 'CUST_CLASS', '6', '消費者団体', 6, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '6', '消費者団体');
INSERT INTO `crm_temp_code_mapping` VALUES (359, 'CUST_CLASS', '7', '行政', 7, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '7', '行政');
INSERT INTO `crm_temp_code_mapping` VALUES (360, 'CUST_CLASS', '8', 'センター・保健所', 8, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '8', '保健所・消費者センター');
INSERT INTO `crm_temp_code_mapping` VALUES (361, 'CUST_CLASS', '9', '教育関係', 9, 0, 0, NULL, '共有顧客', NULL, 'お客様属性', '9', '教育関係');
INSERT INTO `crm_temp_code_mapping` VALUES (362, 'CUST_CRSP_RESULT', '1', '納得了解', 1, 0, 0, NULL, '対応結果', NULL, 'お客様1_対応結果/お客様2_対応結果/お客様3_対応結果', '1', '納得了解');
INSERT INTO `crm_temp_code_mapping` VALUES (363, 'CUST_CRSP_RESULT', '2', '誠意は認められた', 2, 0, 0, NULL, '対応結果', NULL, 'お客様1_対応結果/お客様2_対応結果/お客様3_対応結果', '2', '誠意は認められた');
INSERT INTO `crm_temp_code_mapping` VALUES (364, 'CUST_CRSP_RESULT', '3', '了解せず', 3, 0, 0, NULL, '対応結果', NULL, 'お客様1_対応結果/お客様2_対応結果/お客様3_対応結果', '3', '了解せず（声カード送付しない）');
INSERT INTO `crm_temp_code_mapping` VALUES (365, 'CUST_CRSP_RESULT', '4', 'その他', 4, 0, 0, NULL, '対応結果', NULL, 'お客様1_対応結果/お客様2_対応結果/お客様3_対応結果', '4', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (366, 'CUST_GENERATION', '1', '２０歳未満', 1, 0, 0, NULL, '共有顧客', NULL, '年代', '1', '20歳未満');
INSERT INTO `crm_temp_code_mapping` VALUES (367, 'CUST_GENERATION', '2', '２０～４０歳', 2, 0, 0, NULL, '共有顧客', NULL, '年代', '2', '20-40歳');
INSERT INTO `crm_temp_code_mapping` VALUES (368, 'CUST_GENERATION', '3', '４０～６０歳', 3, 0, 0, NULL, '共有顧客', NULL, '年代', '3', '40-60歳');
INSERT INTO `crm_temp_code_mapping` VALUES (369, 'CUST_GENERATION', '4', '６０歳以上', 4, 0, 0, NULL, '共有顧客', NULL, '年代', '4', '60歳以上');
INSERT INTO `crm_temp_code_mapping` VALUES (370, 'CUST_GENERATION', '5', '不明', 5, 0, 0, NULL, '共有顧客', NULL, '年代', '5', '不明');
INSERT INTO `crm_temp_code_mapping` VALUES (371, 'CUST_LANGUAGE', '1', '英語', 1, 0, 0, NULL, '共有顧客', NULL, '対応言語', '1', '外国語');
INSERT INTO `crm_temp_code_mapping` VALUES (372, 'CUST_LANGUAGE', '2', '中国語', 2, 0, 0, NULL, '共有顧客', NULL, '対応言語', '1', '外国語');
INSERT INTO `crm_temp_code_mapping` VALUES (373, 'CUST_LANGUAGE', '3', 'その他', 3, 0, 0, NULL, '共有顧客', NULL, '対応言語', '1', '外国語');
INSERT INTO `crm_temp_code_mapping` VALUES (374, 'CUST_SEX', '1', '男性', 1, 0, 0, NULL, '共有顧客', NULL, '性別', '1', '男性');
INSERT INTO `crm_temp_code_mapping` VALUES (375, 'CUST_SEX', '2', '女性', 2, 0, 0, NULL, '共有顧客', NULL, '性別', '2', '女性');
INSERT INTO `crm_temp_code_mapping` VALUES (376, 'CUST_SEX', '3', 'その他', 3, 0, 0, NULL, '共有顧客', NULL, '性別', '3', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (377, 'CUST_SEX', '4', '不明', 4, 0, 0, NULL, '共有顧客', NULL, '性別', '4', '不明');
INSERT INTO `crm_temp_code_mapping` VALUES (378, 'CUST_TEL_CLASS', '1', '自宅', 1, 0, 0, NULL, '共有顧客', NULL, '受電区分', '1', '自宅');
INSERT INTO `crm_temp_code_mapping` VALUES (379, 'CUST_TEL_CLASS', '2', '職場', 2, 0, 0, NULL, '共有顧客', NULL, '受電区分', '2', '職場');
INSERT INTO `crm_temp_code_mapping` VALUES (380, 'CUST_TEL_CLASS', '3', '携帯', 3, 0, 0, NULL, '共有顧客', NULL, '受電区分', '3', '携帯');
INSERT INTO `crm_temp_code_mapping` VALUES (381, 'CUST_TEL_CLASS', '4', '着信', 4, 0, 0, NULL, '共有顧客', NULL, '受電区分', '4', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (382, 'CUST_TEL_CLASS', '5', 'その他', 5, 0, 0, NULL, '共有顧客', NULL, '受電区分', '4', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (383, 'CUST_TOFUKEN', '01', '北海道', 1, 0, 0, NULL, '共有顧客', NULL, '都道府県', '1', '北海道');
INSERT INTO `crm_temp_code_mapping` VALUES (384, 'CUST_TOFUKEN', '02', '青森県', 2, 0, 0, NULL, '共有顧客', NULL, '都道府県', '2', '青森県');
INSERT INTO `crm_temp_code_mapping` VALUES (385, 'CUST_TOFUKEN', '03', '岩手県', 3, 0, 0, NULL, '共有顧客', NULL, '都道府県', '3', '岩手県');
INSERT INTO `crm_temp_code_mapping` VALUES (386, 'CUST_TOFUKEN', '04', '宮城県', 4, 0, 0, NULL, '共有顧客', NULL, '都道府県', '4', '宮城県');
INSERT INTO `crm_temp_code_mapping` VALUES (387, 'CUST_TOFUKEN', '05', '秋田県', 5, 0, 0, NULL, '共有顧客', NULL, '都道府県', '5', '秋田県');
INSERT INTO `crm_temp_code_mapping` VALUES (388, 'CUST_TOFUKEN', '06', '山形県', 6, 0, 0, NULL, '共有顧客', NULL, '都道府県', '6', '山形県');
INSERT INTO `crm_temp_code_mapping` VALUES (389, 'CUST_TOFUKEN', '07', '福島県', 7, 0, 0, NULL, '共有顧客', NULL, '都道府県', '7', '福島県');
INSERT INTO `crm_temp_code_mapping` VALUES (390, 'CUST_TOFUKEN', '08', '茨城県', 8, 0, 0, NULL, '共有顧客', NULL, '都道府県', '8', '茨城県');
INSERT INTO `crm_temp_code_mapping` VALUES (391, 'CUST_TOFUKEN', '09', '栃木県', 9, 0, 0, NULL, '共有顧客', NULL, '都道府県', '9', '栃木県');
INSERT INTO `crm_temp_code_mapping` VALUES (392, 'CUST_TOFUKEN', '10', '群馬県', 10, 0, 0, NULL, '共有顧客', NULL, '都道府県', '10', '群馬県');
INSERT INTO `crm_temp_code_mapping` VALUES (393, 'CUST_TOFUKEN', '11', '埼玉県', 11, 0, 0, NULL, '共有顧客', NULL, '都道府県', '12', '埼玉県');
INSERT INTO `crm_temp_code_mapping` VALUES (394, 'CUST_TOFUKEN', '12', '千葉県', 12, 0, 0, NULL, '共有顧客', NULL, '都道府県', '13', '千葉県');
INSERT INTO `crm_temp_code_mapping` VALUES (395, 'CUST_TOFUKEN', '13', '東京都', 13, 0, 0, NULL, '共有顧客', NULL, '都道府県', '14', '東京都');
INSERT INTO `crm_temp_code_mapping` VALUES (396, 'CUST_TOFUKEN', '14', '神奈川県', 14, 0, 0, NULL, '共有顧客', NULL, '都道府県', '15', '神奈川県');
INSERT INTO `crm_temp_code_mapping` VALUES (397, 'CUST_TOFUKEN', '15', '新潟県', 15, 0, 0, NULL, '共有顧客', NULL, '都道府県', '11', '新潟県');
INSERT INTO `crm_temp_code_mapping` VALUES (398, 'CUST_TOFUKEN', '16', '富山県', 16, 0, 0, NULL, '共有顧客', NULL, '都道府県', '22', '富山県');
INSERT INTO `crm_temp_code_mapping` VALUES (399, 'CUST_TOFUKEN', '17', '石川県', 17, 0, 0, NULL, '共有顧客', NULL, '都道府県', '23', '石川県');
INSERT INTO `crm_temp_code_mapping` VALUES (400, 'CUST_TOFUKEN', '18', '福井県', 18, 0, 0, NULL, '共有顧客', NULL, '都道府県', '24', '福井県');
INSERT INTO `crm_temp_code_mapping` VALUES (401, 'CUST_TOFUKEN', '19', '山梨県', 19, 0, 0, NULL, '共有顧客', NULL, '都道府県', '16', '山梨県');
INSERT INTO `crm_temp_code_mapping` VALUES (402, 'CUST_TOFUKEN', '20', '長野県', 20, 0, 0, NULL, '共有顧客', NULL, '都道府県', '17', '長野県');
INSERT INTO `crm_temp_code_mapping` VALUES (403, 'CUST_TOFUKEN', '21', '岐阜県', 21, 0, 0, NULL, '共有顧客', NULL, '都道府県', '18', '岐阜県');
INSERT INTO `crm_temp_code_mapping` VALUES (404, 'CUST_TOFUKEN', '22', '静岡県', 22, 0, 0, NULL, '共有顧客', NULL, '都道府県', '19', '静岡県');
INSERT INTO `crm_temp_code_mapping` VALUES (405, 'CUST_TOFUKEN', '23', '愛知県', 23, 0, 0, NULL, '共有顧客', NULL, '都道府県', '20', '愛知県');
INSERT INTO `crm_temp_code_mapping` VALUES (406, 'CUST_TOFUKEN', '24', '三重県', 24, 0, 0, NULL, '共有顧客', NULL, '都道府県', '21', '三重県');
INSERT INTO `crm_temp_code_mapping` VALUES (407, 'CUST_TOFUKEN', '25', '滋賀県', 25, 0, 0, NULL, '共有顧客', NULL, '都道府県', '25', '滋賀県');
INSERT INTO `crm_temp_code_mapping` VALUES (408, 'CUST_TOFUKEN', '26', '京都府', 26, 0, 0, NULL, '共有顧客', NULL, '都道府県', '26', '京都府');
INSERT INTO `crm_temp_code_mapping` VALUES (409, 'CUST_TOFUKEN', '27', '大阪府', 27, 0, 0, NULL, '共有顧客', NULL, '都道府県', '27', '大阪府');
INSERT INTO `crm_temp_code_mapping` VALUES (410, 'CUST_TOFUKEN', '28', '兵庫県', 28, 0, 0, NULL, '共有顧客', NULL, '都道府県', '28', '兵庫県');
INSERT INTO `crm_temp_code_mapping` VALUES (411, 'CUST_TOFUKEN', '29', '奈良県', 29, 0, 0, NULL, '共有顧客', NULL, '都道府県', '29', '奈良県');
INSERT INTO `crm_temp_code_mapping` VALUES (412, 'CUST_TOFUKEN', '30', '和歌山県', 30, 0, 0, NULL, '共有顧客', NULL, '都道府県', '30', '和歌山県');
INSERT INTO `crm_temp_code_mapping` VALUES (413, 'CUST_TOFUKEN', '31', '鳥取県', 31, 0, 0, NULL, '共有顧客', NULL, '都道府県', '31', '鳥取県');
INSERT INTO `crm_temp_code_mapping` VALUES (414, 'CUST_TOFUKEN', '32', '島根県', 32, 0, 0, NULL, '共有顧客', NULL, '都道府県', '32', '島根県');
INSERT INTO `crm_temp_code_mapping` VALUES (415, 'CUST_TOFUKEN', '33', '岡山県', 33, 0, 0, NULL, '共有顧客', NULL, '都道府県', '33', '岡山県');
INSERT INTO `crm_temp_code_mapping` VALUES (416, 'CUST_TOFUKEN', '34', '広島県', 34, 0, 0, NULL, '共有顧客', NULL, '都道府県', '34', '広島県');
INSERT INTO `crm_temp_code_mapping` VALUES (417, 'CUST_TOFUKEN', '35', '山口県', 35, 0, 0, NULL, '共有顧客', NULL, '都道府県', '35', '山口県');
INSERT INTO `crm_temp_code_mapping` VALUES (418, 'CUST_TOFUKEN', '36', '徳島県', 36, 0, 0, NULL, '共有顧客', NULL, '都道府県', '36', '徳島県');
INSERT INTO `crm_temp_code_mapping` VALUES (419, 'CUST_TOFUKEN', '37', '香川県', 37, 0, 0, NULL, '共有顧客', NULL, '都道府県', '37', '香川県');
INSERT INTO `crm_temp_code_mapping` VALUES (420, 'CUST_TOFUKEN', '38', '愛媛県', 38, 0, 0, NULL, '共有顧客', NULL, '都道府県', '38', '愛媛県');
INSERT INTO `crm_temp_code_mapping` VALUES (421, 'CUST_TOFUKEN', '39', '高知県', 39, 0, 0, NULL, '共有顧客', NULL, '都道府県', '39', '高知県');
INSERT INTO `crm_temp_code_mapping` VALUES (422, 'CUST_TOFUKEN', '40', '福岡県', 40, 0, 0, NULL, '共有顧客', NULL, '都道府県', '40', '福岡県');
INSERT INTO `crm_temp_code_mapping` VALUES (423, 'CUST_TOFUKEN', '41', '佐賀県', 41, 0, 0, NULL, '共有顧客', NULL, '都道府県', '41', '佐賀県');
INSERT INTO `crm_temp_code_mapping` VALUES (424, 'CUST_TOFUKEN', '42', '長崎県', 42, 0, 0, NULL, '共有顧客', NULL, '都道府県', '42', '長崎県');
INSERT INTO `crm_temp_code_mapping` VALUES (425, 'CUST_TOFUKEN', '43', '熊本県', 43, 0, 0, NULL, '共有顧客', NULL, '都道府県', '43', '熊本県');
INSERT INTO `crm_temp_code_mapping` VALUES (426, 'CUST_TOFUKEN', '44', '大分県', 44, 0, 0, NULL, '共有顧客', NULL, '都道府県', '44', '大分県');
INSERT INTO `crm_temp_code_mapping` VALUES (427, 'CUST_TOFUKEN', '45', '宮崎県', 45, 0, 0, NULL, '共有顧客', NULL, '都道府県', '45', '宮崎県');
INSERT INTO `crm_temp_code_mapping` VALUES (428, 'CUST_TOFUKEN', '46', '鹿児島県', 46, 0, 0, NULL, '共有顧客', NULL, '都道府県', '46', '鹿児島県');
INSERT INTO `crm_temp_code_mapping` VALUES (429, 'CUST_TOFUKEN', '47', '沖縄県', 47, 0, 0, NULL, '共有顧客', NULL, '都道府県', '47', '沖縄県');
INSERT INTO `crm_temp_code_mapping` VALUES (430, 'CUST_TOFUKEN', '48', 'その他', 48, 0, 0, NULL, '共有顧客', NULL, '都道府県', '48', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (431, 'CUST_TOFUKEN', '49', '不明', 49, 0, 0, NULL, '共有顧客', NULL, '都道府県', '49', '不明');
INSERT INTO `crm_temp_code_mapping` VALUES (432, 'CUST_TOFUKEN', '99', 'その他', 48, 0, 0, NULL, '共有顧客', NULL, '都道府県', '48', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (433, 'CUST_TOFUKEN', '1', '北海道', 1, 0, 0, NULL, '共有顧客', NULL, '都道府県', '1', '北海道');
INSERT INTO `crm_temp_code_mapping` VALUES (434, 'CUST_TOFUKEN', '2', '青森県', 2, 0, 0, NULL, '共有顧客', NULL, '都道府県', '2', '青森県');
INSERT INTO `crm_temp_code_mapping` VALUES (435, 'CUST_TOFUKEN', '3', '岩手県', 3, 0, 0, NULL, '共有顧客', NULL, '都道府県', '3', '岩手県');
INSERT INTO `crm_temp_code_mapping` VALUES (436, 'CUST_TOFUKEN', '4', '宮城県', 4, 0, 0, NULL, '共有顧客', NULL, '都道府県', '4', '宮城県');
INSERT INTO `crm_temp_code_mapping` VALUES (437, 'CUST_TOFUKEN', '5', '秋田県', 5, 0, 0, NULL, '共有顧客', NULL, '都道府県', '5', '秋田県');
INSERT INTO `crm_temp_code_mapping` VALUES (438, 'CUST_TOFUKEN', '6', '山形県', 6, 0, 0, NULL, '共有顧客', NULL, '都道府県', '6', '山形県');
INSERT INTO `crm_temp_code_mapping` VALUES (439, 'CUST_TOFUKEN', '7', '福島県', 7, 0, 0, NULL, '共有顧客', NULL, '都道府県', '7', '福島県');
INSERT INTO `crm_temp_code_mapping` VALUES (440, 'CUST_TOFUKEN', '8', '茨城県', 8, 0, 0, NULL, '共有顧客', NULL, '都道府県', '8', '茨城県');
INSERT INTO `crm_temp_code_mapping` VALUES (441, 'CUST_TOFUKEN', '9', '栃木県', 9, 0, 0, NULL, '共有顧客', NULL, '都道府県', '9', '栃木県');
INSERT INTO `crm_temp_code_mapping` VALUES (442, 'DELAY_REASON', '1', 'お客様都合', 1, 0, 0, NULL, '対応結果', NULL, '遅延理由', '1', 'お客様都合');
INSERT INTO `crm_temp_code_mapping` VALUES (443, 'DELAY_REASON', '2', '調査８日以上', 2, 0, 0, NULL, '対応結果', NULL, '遅延理由', '2', '調査8日以上');
INSERT INTO `crm_temp_code_mapping` VALUES (444, 'DELAY_REASON', '3', '長期休日挟み（４連休以上）', 3, 0, 0, NULL, '対応結果', NULL, '遅延理由', '3', '長期休日挟み（4連休以上）');
INSERT INTO `crm_temp_code_mapping` VALUES (445, 'DELAY_REASON', '4', '対応遅れ', 4, 0, 0, NULL, '対応結果', NULL, '遅延理由', '4', '対応遅れ');
INSERT INTO `crm_temp_code_mapping` VALUES (446, 'DELAY_REASON', '5', '承認依頼遅れ', 5, 0, 0, NULL, '対応結果', NULL, '遅延理由', '5', '承認依頼遅れ');
INSERT INTO `crm_temp_code_mapping` VALUES (447, 'DELAY_REASON', '98', '不要', 5, 0, 0, NULL, '対応結果', NULL, '遅延理由', '98', '不要');
INSERT INTO `crm_temp_code_mapping` VALUES (448, 'DELAY_REASON', '99', '後日承認', 5, 0, 0, NULL, '対応結果', NULL, '遅延理由', '99', '後日承認');
INSERT INTO `crm_temp_code_mapping` VALUES (449, 'DELAY_REASON', '99', '承認遅れ', 5, 0, 0, NULL, '対応結果', NULL, '遅延理由', '99', '後日承認');
INSERT INTO `crm_temp_code_mapping` VALUES (450, 'NAYSAY_REASON', '1', '送付基準を満たしていない', 1, 0, 0, NULL, '対応結果', NULL, 'お客様1_声カード送付先/お客様2_声カード送付先/お客様3_声カード送付先', '3', '送付する');
INSERT INTO `crm_temp_code_mapping` VALUES (451, 'NAYSAY_REASON', '2', '送付基準を満たすが、対応打ち切り、お客様の再対応拒否、対応苦慮（過度の補償・不当要求）', 2, 0, 0, NULL, '対応結果', NULL, 'お客様1_声カード送付先/お客様2_声カード送付先/お客様3_声カード送付先', '2', '対応苦慮の懸念がある為送付しない');
INSERT INTO `crm_temp_code_mapping` VALUES (452, 'NAYSAY_REASON', '3', '送付基準を満たしているが、過度の補償、不当な要求を受け、対応に苦慮', 3, 0, 1, NULL, '対応結果', NULL, 'お客様1_声カード送付先/お客様2_声カード送付先/お客様3_声カード送付先', '2', '送付基準を満たしていないので送付しない');
INSERT INTO `crm_temp_code_mapping` VALUES (453, 'NAYSAY_REASON', '2', '送付基準を満たしているが、当社から対応打ち切りしたか、またはお客様が当社の再対応を断った', 3, 0, 1, NULL, '対応結果', NULL, 'お客様1_声カード送付先/お客様2_声カード送付先/お客様3_声カード送付先', '2', '対応苦慮の懸念がある為送付しない');
INSERT INTO `crm_temp_code_mapping` VALUES (454, 'PL', '1', 'なし', 1, 0, 0, NULL, '基本情報', NULL, 'PL関連情報', '1', '該当なし');
INSERT INTO `crm_temp_code_mapping` VALUES (455, 'PL', '2', '身体異常', 2, 0, 0, NULL, '基本情報', NULL, 'PL関連情報', '2', '身体異常');
INSERT INTO `crm_temp_code_mapping` VALUES (456, 'PL', '3', '怪我', 3, 0, 0, NULL, '基本情報', NULL, 'PL関連情報', '3', '怪我');
INSERT INTO `crm_temp_code_mapping` VALUES (457, 'PL', '4', '物的損害', 4, 0, 0, NULL, '基本情報', NULL, 'PL関連情報', '4', '物的損害');
INSERT INTO `crm_temp_code_mapping` VALUES (458, 'PL', '5', '健康影響(客ｾ用)', 5, 0, 0, NULL, '基本情報', NULL, 'PL関連情報', '5', '健康影響（客セ用）');
INSERT INTO `crm_temp_code_mapping` VALUES (459, 'PRESERV_PLACE_CHANNEL', '1', '倉庫 店内(常温)', 1, 0, 0, NULL, '現品', NULL, '購入時温度', '1', '常温');
INSERT INTO `crm_temp_code_mapping` VALUES (460, 'PRESERV_PLACE_CHANNEL', '2', 'リーチインクーラー', 2, 0, 0, NULL, '現品', NULL, '購入時温度', '3', 'コールド');
INSERT INTO `crm_temp_code_mapping` VALUES (461, 'PRESERV_PLACE_CHANNEL', '3', 'コールドベンダー', 3, 0, 0, NULL, '現品', NULL, '購入時温度', '3', 'コールド');
INSERT INTO `crm_temp_code_mapping` VALUES (462, 'PRESERV_PLACE_CHANNEL', '4', 'ホットベンダー', 4, 0, 0, NULL, '現品', NULL, '購入時温度', '2', 'ホット');
INSERT INTO `crm_temp_code_mapping` VALUES (463, 'PRESERV_PLACE_CHANNEL', '5', '缶ウォーマー', 5, 0, 0, NULL, '現品', NULL, '購入時温度', '2', 'ホット');
INSERT INTO `crm_temp_code_mapping` VALUES (464, 'PRESERV_PLACE_CHANNEL', '6', 'その他', 6, 0, 0, NULL, '現品', NULL, '購入時温度', '6', 'その他');
INSERT INTO `crm_temp_code_mapping` VALUES (465, 'INVEST_REPORT_METHOD', '1', '調査内容（PC・タブレット説明用）', 1, 0, 0, NULL, '調査依頼', NULL, '報告方法', '1', '調査内容（PC・タブレット説明用）');
INSERT INTO `crm_temp_code_mapping` VALUES (466, 'INVEST_REPORT_METHOD', '2', '社外報告書(特例)　【企画長、支店長了承必須】', 4, 0, 0, NULL, '調査依頼', NULL, '報告方法', '2', '社外報告書(特例)　【企画長、支店長了承必須】');
INSERT INTO `crm_temp_code_mapping` VALUES (467, 'INVEST_REPORT_METHOD', '3', 'コメント（社内確認用）', 2, 0, 0, NULL, '調査依頼', NULL, '報告方法', '3', 'コメント（社内確認用）');
INSERT INTO `crm_temp_code_mapping` VALUES (468, 'INVEST_REPORT_METHOD', '4', '報告不要', 3, 0, 0, NULL, '調査依頼', NULL, '報告方法', '4', '報告不要');
INSERT INTO `crm_temp_code_mapping` VALUES (469, 'INVEST_REPORT_METHOD', '5', '--------------------------------------------', 5, 0, 0, NULL, '調査依頼', NULL, '報告方法', '', '');
INSERT INTO `crm_temp_code_mapping` VALUES (470, 'INVEST_REPORT_METHOD', '6', '調査報告（ウエルネス用）', 6, 0, 0, NULL, '調査依頼', NULL, '報告方法', '6', '調査報告（ウエルネス用）');
INSERT INTO `crm_temp_code_mapping` VALUES (471, 'COST_DETAIL', '-1', 'サントリー', 1, 0, 0, NULL, '対応結果', NULL, '項細目', '1', 'サントリー');
INSERT INTO `crm_temp_code_mapping` VALUES (472, 'COST_DETAIL', '-2', 'サントリーフーズ', 2, 0, 0, NULL, '対応結果', NULL, '項細目', '２', 'サントリーフーズ');
INSERT INTO `crm_temp_code_mapping` VALUES (473, 'COST_DETAIL', '11', 'C情報対応費', 3, 0, 0, NULL, '対応結果', NULL, '項細目', '11', 'ご指摘情報対応費');
INSERT INTO `crm_temp_code_mapping` VALUES (474, 'COST_DETAIL', '21', '22220：販贈', 4, 0, 0, NULL, '対応結果', NULL, '項細目', '21', '【SFS】22220：販贈');
INSERT INTO `crm_temp_code_mapping` VALUES (475, 'COST_DETAIL', '22', '57690：その他雑損', 5, 0, 0, NULL, '対応結果', NULL, '項細目', '22', '【SFS】57690：その他雑損');
INSERT INTO `crm_temp_code_mapping` VALUES (476, 'COST_DETAIL', '23', '55407：ご指摘商品代替品費', 6, 0, 0, NULL, '対応結果', NULL, '項細目', '23', '【SFS】55407：ご指摘商品代替品費');

SET FOREIGN_KEY_CHECKS = 1;

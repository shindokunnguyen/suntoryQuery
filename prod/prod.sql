-- load data into temp table 

LOAD DATA LOCAL INFILE 'C:/Users/hungnm/Desktop/CRMZ050TB_ALL.csv' 
INTO TABLE crm_temp_product_info 
CHARACTER SET cp932 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
( @1, @2, @3, @4, @5,@6, @7, @8, @9, @10, @11, @12, @13, @14, 
@15, @16, @17, @18, @19, @20, @21, @22, @23, @24, @25, @26, 
@27, @28, @29, @30, @31, @32, @33, @34, @35, @36, @37, @38, 
@39, @40, @41, @42, @43, @44, @45, @46, @47, @48, @49, @50, 
@51, @52 ) 
SET 
CASE_ID = @1,
ARTICLE_NUMBER = @2,
GENERATION_DATE = @3,
OBTAINING_DATE = @4,
OBTAINING_METHOD = @5,
OBTAINING_METHOD_NAME = @6,
PRESERV_PLACE_CHANNEL = @7,
PRESERV_PLACE_CHANNEL_NAME = @8,
PRESENCE = @9,
PRESENCE_NAME = @10,
BOTTLES = @11,
OPEN_SITUATION = @12,
OPEN_SITUATION_NAME = @13, 
OPEN_DATE = @14,
REMAINDER = @15,
INDIVIDUAL_LOT_1 = @16,
INDIVIDUAL_LOT_2 = @17,
INDIVIDUAL_LOT_3 = @18,
INDIVIDUAL_LOT_FC_CD = @19,
INDIVIDUAL_LOT_FACTORY = @20,
INDIVIDUAL_LOT_LINE = @21,
OUTER_LOT_1 = @22,
OUTER_LOT_2 = @23,
OUTER_LOT_3 = @24,
OBTAINE_DESTINATION = @25,
OBTAINE_SFNO_1 = @26,
WRAPPING_CLASS_CD_1 = @27,
WRAPPING_CLASS_1 = @28,
WRAPPING_MAKER_CD_1 = @29,
WRAPPING_MAKER_1 = @30,
WRAPPING_LOT_1 = @31,
WRAPPING_CLASS_CD_2 = @32,
WRAPPING_CLASS_2 = @33,
WRAPPING_MAKER_CD_2 = @34,
WRAPPING_MAKER_2 = @35,
WRAPPING_LOT_2 = @36,
CLASSIFICATION_DEPT_CODE = @37,
CLASSIFICATION_DEPT_NAME = @38,
RESULT_1 = @39,
RESULT_2 = @40,
RESULT_3 = @41,
RESULT_4 = @42,
RESULT_5 = @43,
RESULT_NAME_1 = @44,
RESULT_NAME_2 = @45,
RESULT_NAME_3 = @46,
RESULT_NAME_4 = @47,
RESULT_NAME_5 = @48,
OBTAINE_STICKER_KIND = @49,
OBTAINE_STICKER_KIND_NAME = @50,
PROD_TO_FIND = @51,
PROD_NOTE = @52
;

-- update anh insert data to real table

SET sql_mode='';

UPDATE crm_temp_product_info AS temp_prod
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_prod.PRESERV_PLACE_CHANNEL = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'PRESERV_PLACE_CHANNEL' ) 
SET PRESERV_PLACE_CHANNEL = code_mapping.TARGET_ITEM_CODE;


UPDATE `crm_temp_product_info` AS temp_prod
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_prod.PRESERV_PLACE_CHANNEL = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'PRESERV_PLACE_CHANNEL' ) 
SET PRESERV_PLACE_CHANNEL_NAME = code_mapping.TARGET_ITEM_NAME;

-- update issue_area_correspond_md_1079
UPDATE crm_issue_area_correspond_md_1079 AS corr_md_1079
INNER JOIN crm_temp_product_info AS prod_temp ON (corr_md_1079.issue_code = prod_temp.CASE_ID AND issue_area_correspond_md_1079_ordering = (prod_temp.ARTICLE_NUMBER - 1))
SET 
issue_area_correspond_md_1079_ordering = (prod_temp.ARTICLE_NUMBER - 1),
corr_md_1079.issue_area_correspond_md_1079_cf_1085_datetime = DATE_FORMAT(prod_temp.GENERATION_DATE,'%Y-%m-%d %H:%i:%s'),
corr_md_1079.issue_area_correspond_md_1079_cf_1085_date = DATE_FORMAT(prod_temp.GENERATION_DATE,'%Y-%m-%d'),
corr_md_1079.issue_area_correspond_md_1079_cf_1086_date = DATE_FORMAT(prod_temp.OBTAINING_DATE, '%Y-%m-%d'),
corr_md_1079.issue_area_correspond_md_1079_cf_1086_datetime = DATE_FORMAT(prod_temp.OBTAINING_DATE, '%Y-%m-%d %H:%i:%s'),
corr_md_1079.issue_area_correspond_md_1079_cf_1087_code = prod_temp.OBTAINING_METHOD,
corr_md_1079.issue_area_correspond_md_1079_cf_1087_name = prod_temp.OBTAINING_METHOD_NAME,
corr_md_1079.issue_area_correspond_md_1079_cf_1088_code = PRESERV_PLACE_CHANNEL,
corr_md_1079.issue_area_correspond_md_1079_cf_1088_name = PRESERV_PLACE_CHANNEL_NAME,
corr_md_1079.issue_area_correspond_md_1079_cf_1080_code = PRESENCE,
corr_md_1079.issue_area_correspond_md_1079_cf_1080_name = PRESENCE_NAME,
corr_md_1079.issue_area_correspond_md_1079_cf_1081 = BOTTLES,
corr_md_1079.issue_area_correspond_md_1079_cf_1082_code = OPEN_SITUATION,
corr_md_1079.issue_area_correspond_md_1079_cf_1082_name = OPEN_SITUATION_NAME,
corr_md_1079.issue_area_correspond_md_1079_cf_1083_datetime = DATE_FORMAT(prod_temp.OPEN_DATE,'%Y-%m-%d %H:%i:%s'),
corr_md_1079.issue_area_correspond_md_1079_cf_1083_date = DATE_FORMAT(prod_temp.OPEN_DATE,'%Y-%m-%d'),
corr_md_1079.issue_area_correspond_md_1079_cf_1084 = REMAINDER,
corr_md_1079.issue_area_correspond_md_1079_cf_1098 = INDIVIDUAL_LOT_1,
corr_md_1079.issue_area_correspond_md_1079_cf_1099 = INDIVIDUAL_LOT_2,
corr_md_1079.issue_area_correspond_md_1079_cf_1100 = INDIVIDUAL_LOT_3,
corr_md_1079.issue_area_correspond_md_1079_cf_1094 = PROD_TO_FIND,
corr_md_1079.issue_area_correspond_md_1079_cf_1094_search = search_field(PROD_TO_FIND),
corr_md_1079.issue_area_correspond_md_1079_cf_1095 = OBTAINE_SFNO_1,
corr_md_1079.issue_area_correspond_md_1079_cf_1096_code = OBTAINE_STICKER_KIND,
corr_md_1079.issue_area_correspond_md_1079_cf_1096_name = OBTAINE_STICKER_KIND_NAME,
corr_md_1079.issue_area_correspond_md_1079_cf_1104 = PROD_NOTE
WHERE
	corr_md_1079.issue_code IS NOT NULL;

-- insert issue_area_correspond_md_1079
INSERT INTO crm_issue_area_correspond_md_1079 (
	issue_code,
	issue_area_correspond_md_1079_ordering,
	issue_area_correspond_md_1079_cf_1085_datetime,
issue_area_correspond_md_1079_cf_1085_date,
issue_area_correspond_md_1079_cf_1086_date,
issue_area_correspond_md_1079_cf_1086_datetime,
issue_area_correspond_md_1079_cf_1087_code,
issue_area_correspond_md_1079_cf_1087_name,
issue_area_correspond_md_1079_cf_1088_code,
issue_area_correspond_md_1079_cf_1088_name,
issue_area_correspond_md_1079_cf_1080_code,
issue_area_correspond_md_1079_cf_1080_name,
issue_area_correspond_md_1079_cf_1081,
issue_area_correspond_md_1079_cf_1082_code,
issue_area_correspond_md_1079_cf_1082_name,
issue_area_correspond_md_1079_cf_1083_datetime,
issue_area_correspond_md_1079_cf_1083_date,
issue_area_correspond_md_1079_cf_1084,
issue_area_correspond_md_1079_cf_1098,
issue_area_correspond_md_1079_cf_1099,
issue_area_correspond_md_1079_cf_1100,
issue_area_correspond_md_1079_cf_1094,
issue_area_correspond_md_1079_cf_1094_search,
issue_area_correspond_md_1079_cf_1095,
issue_area_correspond_md_1079_cf_1096_code,
issue_area_correspond_md_1079_cf_1096_name,
issue_area_correspond_md_1079_cf_1104
) SELECT
prod_temp.CASE_ID,
prod_temp.ARTICLE_NUMBER - 1,
DATE_FORMAT(prod_temp.GENERATION_DATE,'%Y-%m-%d %H:%i:%s'),
DATE_FORMAT(prod_temp.GENERATION_DATE,'%Y-%m-%d'),
DATE_FORMAT(prod_temp.OBTAINING_DATE, '%Y-%m-%d'),
DATE_FORMAT(prod_temp.OBTAINING_DATE, '%Y-%m-%d %H:%i:%s'),
prod_temp.OBTAINING_METHOD,
prod_temp.OBTAINING_METHOD_NAME,
PRESERV_PLACE_CHANNEL,
PRESERV_PLACE_CHANNEL_NAME,
PRESENCE,
PRESENCE_NAME,
BOTTLES,
OPEN_SITUATION,
OPEN_SITUATION_NAME,
DATE_FORMAT(prod_temp.OPEN_DATE,'%Y-%m-%d %H:%i:%s'),
DATE_FORMAT(prod_temp.OPEN_DATE,'%Y-%m-%d'),
REMAINDER,
INDIVIDUAL_LOT_1,
INDIVIDUAL_LOT_2,
INDIVIDUAL_LOT_3,
PROD_TO_FIND,
search_field(PROD_TO_FIND),
OBTAINE_SFNO_1,
OBTAINE_STICKER_KIND,
OBTAINE_STICKER_KIND_NAME,
PROD_NOTE
FROM
	crm_temp_product_info AS prod_temp
	LEFT JOIN crm_issue_area_correspond_md_1079 AS corr_md_1079 ON (
		prod_temp.CASE_ID = corr_md_1079.issue_code AND issue_area_correspond_md_1079_ordering = (prod_temp.ARTICLE_NUMBER - 1))
WHERE
	corr_md_1079.issue_code IS NULL 
	OR corr_md_1079.issue_code = '';
	
	
-- update crm_issue_area_correspond_md_1109
UPDATE crm_issue_area_correspond_md_1109 AS corr_md_1109
INNER JOIN crm_temp_product_info AS prod_temp ON corr_md_1109.issue_code = prod_temp.CASE_ID 
SET 
issue_area_correspond_md_1109_cf_1114_code = INDIVIDUAL_LOT_FC_CD,
issue_area_correspond_md_1109_cf_1114_name = INDIVIDUAL_LOT_FACTORY,
issue_area_correspond_md_1109_cf_1115 = INDIVIDUAL_LOT_LINE,
issue_area_correspond_md_1109_cf_1110 = OUTER_LOT_1,
issue_area_correspond_md_1109_cf_1111 = OUTER_LOT_2,
issue_area_correspond_md_1109_cf_1112 = OUTER_LOT_3,
issue_area_correspond_md_1109_cf_1117_multil_lv1_code = WRAPPING_CLASS_CD_1,
issue_area_correspond_md_1109_cf_1117_multil_lv1_name = WRAPPING_CLASS_1,
issue_area_correspond_md_1109_cf_1117_multil_lv2_code = WRAPPING_MAKER_CD_1,
issue_area_correspond_md_1109_cf_1117_multil_lv2_name = WRAPPING_MAKER_1,
issue_area_correspond_md_1109_cf_1174 = WRAPPING_LOT_1,
issue_area_correspond_md_1109_cf_1118_multil_lv1_code = WRAPPING_CLASS_CD_2,
issue_area_correspond_md_1109_cf_1118_multil_lv1_name = WRAPPING_CLASS_2,
issue_area_correspond_md_1109_cf_1118_multil_lv2_code = WRAPPING_MAKER_CD_2,
issue_area_correspond_md_1109_cf_1118_multil_lv2_name = WRAPPING_MAKER_2,
issue_area_correspond_md_1109_cf_1119 = WRAPPING_LOT_2,
issue_area_correspond_md_1109_cf_1120_multil_lv1_code = CLASSIFICATION_DEPT_CODE,
issue_area_correspond_md_1109_cf_1120_multil_lv1_name = CLASSIFICATION_DEPT_NAME,
issue_area_correspond_md_1109_cf_1120_multil_lv2_code = RESULT_1,
issue_area_correspond_md_1109_cf_1120_multil_lv2_name = RESULT_NAME_1,
issue_area_correspond_md_1109_cf_1120_multil_lv3_code = RESULT_2,
issue_area_correspond_md_1109_cf_1120_multil_lv3_name = RESULT_NAME_2,
issue_area_correspond_md_1109_cf_1120_multil_lv4_code = RESULT_3,
issue_area_correspond_md_1109_cf_1120_multil_lv4_name = RESULT_NAME_3,
issue_area_correspond_md_1109_cf_1120_multil_lv5_code = RESULT_4,
issue_area_correspond_md_1109_cf_1120_multil_lv5_name = RESULT_NAME_4,
issue_area_correspond_md_1109_cf_1120_multil_lv6_code = RESULT_5,
issue_area_correspond_md_1109_cf_1120_multil_lv6_name = RESULT_NAME_5
WHERE
	corr_md_1109.issue_code IS NOT NULL;
	
	
-- insert crm_issue_area_correspond_md_1109
INSERT INTO crm_issue_area_correspond_md_1109 (
	issue_code,
	issue_area_correspond_md_1109_cf_1114_code,
issue_area_correspond_md_1109_cf_1114_name,
issue_area_correspond_md_1109_cf_1115,
issue_area_correspond_md_1109_cf_1110,
issue_area_correspond_md_1109_cf_1111,
issue_area_correspond_md_1109_cf_1112,
issue_area_correspond_md_1109_cf_1117_multil_lv1_code,
issue_area_correspond_md_1109_cf_1117_multil_lv1_name,
issue_area_correspond_md_1109_cf_1117_multil_lv2_code,
issue_area_correspond_md_1109_cf_1117_multil_lv2_name,
issue_area_correspond_md_1109_cf_1174,
issue_area_correspond_md_1109_cf_1118_multil_lv1_code,
issue_area_correspond_md_1109_cf_1118_multil_lv1_name,
issue_area_correspond_md_1109_cf_1118_multil_lv2_code,
issue_area_correspond_md_1109_cf_1118_multil_lv2_name,
issue_area_correspond_md_1109_cf_1119,
issue_area_correspond_md_1109_cf_1120_multil_lv1_code,
issue_area_correspond_md_1109_cf_1120_multil_lv1_name,
issue_area_correspond_md_1109_cf_1120_multil_lv2_code,
issue_area_correspond_md_1109_cf_1120_multil_lv2_name,
issue_area_correspond_md_1109_cf_1120_multil_lv3_code,
issue_area_correspond_md_1109_cf_1120_multil_lv3_name,
issue_area_correspond_md_1109_cf_1120_multil_lv4_code,
issue_area_correspond_md_1109_cf_1120_multil_lv4_name,
issue_area_correspond_md_1109_cf_1120_multil_lv5_code,
issue_area_correspond_md_1109_cf_1120_multil_lv5_name,
issue_area_correspond_md_1109_cf_1120_multil_lv6_code,
issue_area_correspond_md_1109_cf_1120_multil_lv6_name
) SELECT
prod_temp.CASE_ID,
INDIVIDUAL_LOT_FC_CD,
INDIVIDUAL_LOT_FACTORY,
INDIVIDUAL_LOT_LINE,
OUTER_LOT_1,
OUTER_LOT_2,
OUTER_LOT_3,
WRAPPING_CLASS_CD_1,
WRAPPING_CLASS_1,
WRAPPING_MAKER_CD_1,
WRAPPING_MAKER_1,
WRAPPING_LOT_1,
WRAPPING_CLASS_CD_2,
WRAPPING_CLASS_2,
WRAPPING_MAKER_CD_2,
WRAPPING_MAKER_2,
WRAPPING_LOT_2,
CLASSIFICATION_DEPT_CODE,
CLASSIFICATION_DEPT_NAME,
RESULT_1,
RESULT_NAME_1,
RESULT_2,
RESULT_NAME_2,
RESULT_3,
RESULT_NAME_3,
RESULT_4,
RESULT_NAME_4,
RESULT_5,
RESULT_NAME_5
FROM
	crm_temp_product_info AS prod_temp
	LEFT JOIN crm_issue_area_correspond_md_1109 AS corr_md_1109 ON prod_temp.CASE_ID = corr_md_1109.issue_code 
WHERE
	corr_md_1109.issue_code IS NULL 
	OR corr_md_1109.issue_code = '';



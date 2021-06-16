SET sql_mode='';

UPDATE `crm_temp_issue_survey`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;

UPDATE `crm_temp_issue_survey` AS temp_servey
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_servey.REPORT_CLASS_CODE = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'INVEST_REPORT_METHOD' ) 
SET REPORT_CLASS_CODE = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_survey` AS temp_servey
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_servey.REPORT_CLASS_CODE = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'INVEST_REPORT_METHOD' ) 
SET REPORT_CLASS_NAME = code_mapping.TARGET_ITEM_NAME;

-- update tab3
UPDATE crm_issue_area_correspond_tab_3 AS tab3
INNER JOIN crm_temp_issue_survey AS survey_temp ON tab3.issue_code = survey_temp.CASE_ID 
SET 
tab3.issue_area_correspond_tab_3_cf_1194_dept_code = survey_temp.CRSP_ORG_CD,
tab3.issue_area_correspond_tab_3_cf_1194_dept_name = survey_temp.CRSP_ORG_NAME,
tab3.issue_area_correspond_tab_3_cf_1194_person_code = survey_temp.CRSP_USER_ID,
tab3.issue_area_correspond_tab_3_cf_1194_person_name = survey_temp.CRSP_USER_NAME,
tab3.issue_area_correspond_tab_3_cf_816_dept_code = survey_temp.APRV_ORG_CD,
tab3.issue_area_correspond_tab_3_cf_816_dept_name = survey_temp.APRV_ORG_NAME,
tab3.issue_area_correspond_tab_3_cf_816_person_code = survey_temp.APRV_USER_ID,
tab3.issue_area_correspond_tab_3_cf_816_person_name = survey_temp.APRV_USER_NAME,
tab3.issue_area_correspond_tab_3_cf_911_date = DATE_FORMAT(survey_temp.ARRIVAL_DATETIME,'%Y-%m-%d'),
tab3.issue_area_correspond_tab_3_cf_911_time = DATE_FORMAT(survey_temp.ARRIVAL_DATETIME,'%H:%i'),
tab3.issue_area_correspond_tab_3_cf_911_datetime = DATE_FORMAT(survey_temp.ARRIVAL_DATETIME,'%Y-%m-%d %H:%i:%s'),
tab3.issue_area_correspond_tab_3_cf_911_dept_code = survey_temp.ARRIVAL_DEPT_CODE,
tab3.issue_area_correspond_tab_3_cf_911_dept_name = survey_temp.ARRIVAL_DEPT_NAME,
tab3.issue_area_correspond_tab_3_cf_911_person_code = survey_temp.ARRIVAL_USER_CODE,
tab3.issue_area_correspond_tab_3_cf_911_person_name = survey_temp.ARRIVAL_USER_NAME,
tab3.issue_area_correspond_tab_3_cf_821_date = DATE_FORMAT(survey_temp.CRSP_DATETIME,'%Y-%m-%d'),
tab3.issue_area_correspond_tab_3_cf_821_time = DATE_FORMAT(survey_temp.CRSP_DATETIME,'%H:%i'),
tab3.issue_area_correspond_tab_3_cf_821_datetime = DATE_FORMAT(survey_temp.CRSP_DATETIME,'%Y-%m-%d %H:%i:%s'),
tab3.issue_area_correspond_tab_3_cf_821_dept_code = survey_temp.SURVEY_APRV_REQ_DEPT_CODE,
tab3.issue_area_correspond_tab_3_cf_821_dept_name = survey_temp.SURVEY_APRV_REQ_DEPT_NAME,
tab3.issue_area_correspond_tab_3_cf_821_person_code = survey_temp.SURVEY_APRV_REQ_USER_CODE,
tab3.issue_area_correspond_tab_3_cf_821_person_name = survey_temp.SURVEY_APRV_REQ_USER_NAME,
tab3.issue_area_correspond_tab_3_cf_175_dept_code = survey_temp.SURVEY_RESULT_APRV_TARGET_DEPT_CODE,
tab3.issue_area_correspond_tab_3_cf_175_dept_name = survey_temp.SURVEY_RESULT_APRV_TARGET_DEPT_NAME,
tab3.issue_area_correspond_tab_3_cf_175_person_code = survey_temp.SURVEY_RESULT_APRV_TARGET_USER_CODE,
tab3.issue_area_correspond_tab_3_cf_175_person_name = survey_temp.SURVEY_RESULT_APRV_TARGET_USER_NAME,
tab3.issue_area_correspond_tab_3_cf_816_date = DATE_FORMAT(survey_temp.COMPLETE_DATE,'%Y-%m-%d'),
tab3.issue_area_correspond_tab_3_cf_816_time = DATE_FORMAT(survey_temp.COMPLETE_DATE,'%H:%i'),
tab3.issue_area_correspond_tab_3_cf_816_datetime = DATE_FORMAT(survey_temp.COMPLETE_DATE,'%Y-%m-%d %H:%i:%s'),
tab3.issue_area_correspond_tab_3_cf_703_code = '',
tab3.issue_area_correspond_tab_3_cf_703_name = '',
tab3.issue_area_correspond_tab_3_cf_1344 = survey_temp.RESULT,
tab3.issue_area_correspond_tab_3_cf_1344_search = search_field(survey_temp.RESULT)
WHERE
	tab3.issue_code IS NOT NULL;
	
-- insert tab3
INSERT INTO crm_issue_area_correspond_tab_3 (
	issue_code,
	issue_area_correspond_tab_3_cf_1194_dept_code,
issue_area_correspond_tab_3_cf_1194_dept_name,
issue_area_correspond_tab_3_cf_1194_person_code,
issue_area_correspond_tab_3_cf_1194_person_name,
issue_area_correspond_tab_3_cf_816_dept_code,
issue_area_correspond_tab_3_cf_816_dept_name,
issue_area_correspond_tab_3_cf_816_person_code,
issue_area_correspond_tab_3_cf_816_person_name,
issue_area_correspond_tab_3_cf_911_date,
issue_area_correspond_tab_3_cf_911_time,
issue_area_correspond_tab_3_cf_911_datetime,
issue_area_correspond_tab_3_cf_911_dept_code,
issue_area_correspond_tab_3_cf_911_dept_name,
issue_area_correspond_tab_3_cf_911_person_code,
issue_area_correspond_tab_3_cf_911_person_name,
issue_area_correspond_tab_3_cf_821_date,
issue_area_correspond_tab_3_cf_821_time,
issue_area_correspond_tab_3_cf_821_datetime,
issue_area_correspond_tab_3_cf_821_dept_code,
issue_area_correspond_tab_3_cf_821_dept_name,
issue_area_correspond_tab_3_cf_821_person_code,
issue_area_correspond_tab_3_cf_821_person_name,
issue_area_correspond_tab_3_cf_175_dept_code,
issue_area_correspond_tab_3_cf_175_dept_name,
issue_area_correspond_tab_3_cf_175_person_code,
issue_area_correspond_tab_3_cf_175_person_name,
issue_area_correspond_tab_3_cf_816_date,
issue_area_correspond_tab_3_cf_816_time,
issue_area_correspond_tab_3_cf_816_datetime,
issue_area_correspond_tab_3_cf_703_code,
issue_area_correspond_tab_3_cf_703_name,
issue_area_correspond_tab_3_cf_1344,
issue_area_correspond_tab_3_cf_1344_search
) SELECT
survey_temp.CASE_ID,
survey_temp.CRSP_ORG_CD,
survey_temp.CRSP_ORG_NAME,
survey_temp.CRSP_USER_ID,
survey_temp.CRSP_USER_NAME,
survey_temp.APRV_ORG_CD,
survey_temp.APRV_ORG_NAME,
survey_temp.APRV_USER_ID,
survey_temp.APRV_USER_NAME,
DATE_FORMAT(survey_temp.ARRIVAL_DATETIME,'%Y-%m-%d'),
DATE_FORMAT(survey_temp.ARRIVAL_DATETIME,'%H:%i'),
DATE_FORMAT(survey_temp.ARRIVAL_DATETIME,'%Y-%m-%d %H:%i:%s'),
survey_temp.ARRIVAL_DEPT_CODE,
survey_temp.ARRIVAL_DEPT_NAME,
survey_temp.ARRIVAL_USER_CODE,
survey_temp.ARRIVAL_USER_NAME,
DATE_FORMAT(survey_temp.CRSP_DATETIME,'%Y-%m-%d'),
DATE_FORMAT(survey_temp.CRSP_DATETIME,'%H:%i'),
DATE_FORMAT(survey_temp.CRSP_DATETIME,'%Y-%m-%d %H:%i:%s'),
survey_temp.SURVEY_APRV_REQ_DEPT_CODE,
survey_temp.SURVEY_APRV_REQ_DEPT_NAME,
survey_temp.SURVEY_APRV_REQ_USER_CODE,
survey_temp.SURVEY_APRV_REQ_USER_NAME,
survey_temp.SURVEY_RESULT_APRV_TARGET_DEPT_CODE,
survey_temp.SURVEY_RESULT_APRV_TARGET_DEPT_NAME,
survey_temp.SURVEY_RESULT_APRV_TARGET_USER_CODE,
survey_temp.SURVEY_RESULT_APRV_TARGET_USER_NAME,
DATE_FORMAT(survey_temp.COMPLETE_DATE,'%Y-%m-%d'),
DATE_FORMAT(survey_temp.COMPLETE_DATE,'%H:%i'),
DATE_FORMAT(survey_temp.COMPLETE_DATE,'%Y-%m-%d %H:%i:%s'),
'' as issue_area_correspond_tab_3_cf_703_code,
'' as issue_area_correspond_tab_3_cf_703_name,
survey_temp.RESULT as issue_area_correspond_tab_3_cf_1344,
search_field(survey_temp.RESULT) as issue_area_correspond_tab_3_cf_1344_search
FROM
	crm_temp_issue_survey AS survey_temp
	LEFT JOIN crm_issue_area_correspond_tab_3 AS tab3 ON survey_temp.CASE_ID = tab3.issue_code
WHERE
	tab3.issue_code IS NULL 
	OR tab3.issue_code = '';	
	
	
	
-- update tab2
UPDATE crm_issue_area_correspond_tab_2 AS tab2
INNER JOIN crm_temp_issue_survey AS survey_temp ON tab2.issue_code = survey_temp.CASE_ID 
SET tab2.issue_area_correspond_tab_2_cf_51 = survey_temp.SURVEY_REQ_CONTENT,
tab2.issue_area_correspond_tab_2_cf_51_search = search_field ( survey_temp.SURVEY_REQ_CONTENT ),
tab2.issue_area_correspond_tab_2_cf_53_code = survey_temp.REPORT_CLASS_CODE,
tab2.issue_area_correspond_tab_2_cf_53_name = survey_temp.REPORT_CLASS_NAME,
tab2.issue_area_correspond_tab_2_cf_886 = ''
-- tab2.issue_area_correspond_tab_2_cf_887 = NULL 
WHERE
	tab2.issue_code IS NOT NULL;
	
-- insert tab2
INSERT INTO crm_issue_area_correspond_tab_2 (
	issue_code,
	issue_area_correspond_tab_2_cf_51,
	issue_area_correspond_tab_2_cf_51_search,
	issue_area_correspond_tab_2_cf_53_code,
	issue_area_correspond_tab_2_cf_53_name,
	issue_area_correspond_tab_2_cf_886
	-- issue_area_correspond_tab_2_cf_887 
) SELECT
survey_temp.CASE_ID,
survey_temp.SURVEY_REQ_CONTENT,
search_field ( survey_temp.SURVEY_REQ_CONTENT ),
survey_temp.REPORT_CLASS_CODE,
survey_temp.REPORT_CLASS_NAME,
'' AS issue_area_correspond_tab_2_cf_886
-- NULL AS issue_area_correspond_tab_2_cf_887 
FROM
	crm_temp_issue_survey AS survey_temp
	LEFT JOIN crm_issue_area_correspond_tab_2 AS tab2 ON survey_temp.CASE_ID = tab2.issue_code 
WHERE
	tab2.issue_code IS NULL 
	OR tab2.issue_code = '';
	
	
-- update crm_issue_area_correspond_md_161
UPDATE crm_issue_area_correspond_md_161 AS md161
INNER JOIN crm_temp_issue_survey AS survey_temp ON (md161.issue_code = survey_temp.CASE_ID AND md161.issue_area_correspond_md_161_ordering = 0 )
SET 
md161.issue_area_correspond_md_161_cf_162_dept_code = survey_temp.ADD_REPORT_ORG_CD,
md161.issue_area_correspond_md_161_cf_162_dept_name = survey_temp.ADD_REPORT_ORG_NAME,
md161.issue_area_correspond_md_161_cf_162_person_code = survey_temp.ADD_REPORT_USER_ID,
md161.issue_area_correspond_md_161_cf_162_person_name = survey_temp.ADD_REPORT_USER_NAME
WHERE
	md161.issue_code IS NOT NULL;
	
	
-- insert data cust1
INSERT INTO crm_issue_area_correspond_md_161 (
	issue_code,
	issue_area_correspond_md_161_cf_162_dept_code,
	issue_area_correspond_md_161_cf_162_dept_name,
	issue_area_correspond_md_161_cf_162_person_code,
	issue_area_correspond_md_161_cf_162_person_name,
	issue_area_correspond_md_161_ordering
) SELECT
survey_temp.CASE_ID,
survey_temp.ADD_REPORT_ORG_CD,
survey_temp.ADD_REPORT_ORG_NAME,
survey_temp.ADD_REPORT_USER_ID,
survey_temp.ADD_REPORT_USER_NAME,
0 as issue_area_correspond_md_161_ordering
FROM
	crm_temp_issue_survey AS survey_temp
	LEFT JOIN crm_issue_area_correspond_md_161 AS md161 ON survey_temp.CASE_ID = md161.issue_code 
	AND md161.issue_area_correspond_md_161_ordering = 0 
WHERE
	( md161.issue_code IS NULL OR md161.issue_code = '' );
	
	
	
UPDATE crm_issue_area_correspond_md_161 AS md161
INNER JOIN crm_temp_issue_survey AS survey_temp ON (md161.issue_code = survey_temp.CASE_ID AND md161.issue_area_correspond_md_161_ordering = 1 )
SET 
md161.issue_area_correspond_md_161_cf_162_dept_code = survey_temp.ADD_REPORT_ORG_CD2,
md161.issue_area_correspond_md_161_cf_162_dept_name = survey_temp.ADD_REPORT_ORG_NAME2,
md161.issue_area_correspond_md_161_cf_162_person_code = survey_temp.ADD_REPORT_USER_ID2,
md161.issue_area_correspond_md_161_cf_162_person_name = survey_temp.ADD_REPORT_USER_NAME2
WHERE
	md161.issue_code IS NOT NULL;
	
	
-- insert data cust1
INSERT INTO crm_issue_area_correspond_md_161 (
	issue_code,
	issue_area_correspond_md_161_cf_162_dept_code,
	issue_area_correspond_md_161_cf_162_dept_name,
	issue_area_correspond_md_161_cf_162_person_code,
	issue_area_correspond_md_161_cf_162_person_name,
	issue_area_correspond_md_161_ordering
) SELECT
survey_temp.CASE_ID,
survey_temp.ADD_REPORT_ORG_CD2,
survey_temp.ADD_REPORT_ORG_NAME2,
survey_temp.ADD_REPORT_USER_ID2,
survey_temp.ADD_REPORT_USER_NAME2,
1 as issue_area_correspond_md_161_ordering
FROM
	crm_temp_issue_survey AS survey_temp
	LEFT JOIN crm_issue_area_correspond_md_161 AS md161 ON survey_temp.CASE_ID = md161.issue_code 
	AND md161.issue_area_correspond_md_161_ordering = 1 
WHERE
	( md161.issue_code IS NULL OR md161.issue_code = '' );
	
	
UPDATE crm_issue_area_correspond_md_161 AS md161
INNER JOIN crm_temp_issue_survey AS survey_temp ON (md161.issue_code = survey_temp.CASE_ID AND md161.issue_area_correspond_md_161_ordering = 2 )
SET 
md161.issue_area_correspond_md_161_cf_162_dept_code = survey_temp.ADD_REPORT_ORG_CD3,
md161.issue_area_correspond_md_161_cf_162_dept_name = survey_temp.ADD_REPORT_ORG_NAME3,
md161.issue_area_correspond_md_161_cf_162_person_code = survey_temp.ADD_REPORT_USER_ID3,
md161.issue_area_correspond_md_161_cf_162_person_name = survey_temp.ADD_REPORT_USER_NAME3
WHERE
	md161.issue_code IS NOT NULL;
	
-- insert data cust1
INSERT INTO crm_issue_area_correspond_md_161 (
	issue_code,
	issue_area_correspond_md_161_cf_162_dept_code,
	issue_area_correspond_md_161_cf_162_dept_name,
	issue_area_correspond_md_161_cf_162_person_code,
	issue_area_correspond_md_161_cf_162_person_name,
	issue_area_correspond_md_161_ordering
) SELECT
survey_temp.CASE_ID,
survey_temp.ADD_REPORT_ORG_CD3,
survey_temp.ADD_REPORT_ORG_NAME3,
survey_temp.ADD_REPORT_USER_ID3,
survey_temp.ADD_REPORT_USER_NAME3,
2 as issue_area_correspond_md_161_ordering
FROM
	crm_temp_issue_survey AS survey_temp
	LEFT JOIN crm_issue_area_correspond_md_161 AS md161 ON survey_temp.CASE_ID = md161.issue_code 
	AND md161.issue_area_correspond_md_161_ordering = 2
WHERE
	( md161.issue_code IS NULL OR md161.issue_code = '' );
	
-- update crm_issue_area_correspond_tab_8
UPDATE crm_issue_area_correspond_tab_8 AS tab8
INNER JOIN crm_temp_issue_survey AS survey_temp ON ( tab8.issue_code = survey_temp.CASE_ID ) 
SET issue_area_correspond_tab_8_cf_1195_dept_code = survey_temp.SURVEY_REQ_DEPT_CODE,
issue_area_correspond_tab_8_cf_1195_dept_name = survey_temp.SURVEY_REQ_DEPT_NAME,
issue_area_correspond_tab_8_cf_1195_person_code = survey_temp.SURVEY_REQ_USER_CODE,
issue_area_correspond_tab_8_cf_1195_person_name = survey_temp.SURVEY_REQ_USER_NAME,
issue_area_correspond_tab_8_cf_1195_datetime = DATE_FORMAT( survey_temp.SURVEY_REQ_DATE, '%Y-%m-%d %H:%i:%s' ),
issue_area_correspond_tab_8_cf_1195_date = DATE_FORMAT( survey_temp.SURVEY_REQ_DATE, '%Y-%m-%d' ),
issue_area_correspond_tab_8_cf_1195_time = DATE_FORMAT( survey_temp.SURVEY_REQ_DATE, '%H:%i' ) 
WHERE
	tab8.issue_code IS NOT NULL;
	
-- insert data crm_issue_area_correspond_tab_8
INSERT INTO crm_issue_area_correspond_tab_8 ( issue_code, issue_area_correspond_tab_8_cf_1195_dept_code, issue_area_correspond_tab_8_cf_1195_dept_name, issue_area_correspond_tab_8_cf_1195_person_code, issue_area_correspond_tab_8_cf_1195_person_name, issue_area_correspond_tab_8_cf_1195_datetime, issue_area_correspond_tab_8_cf_1195_date, issue_area_correspond_tab_8_cf_1195_time ) SELECT
survey_temp.CASE_ID,
survey_temp.SURVEY_REQ_DEPT_CODE,
survey_temp.SURVEY_REQ_DEPT_NAME,
survey_temp.SURVEY_REQ_USER_CODE,
survey_temp.SURVEY_REQ_USER_NAME,
DATE_FORMAT( survey_temp.SURVEY_REQ_DATE, '%Y-%m-%d %H:%i:%s' ),
DATE_FORMAT( survey_temp.SURVEY_REQ_DATE, '%Y-%m-%d' ),
DATE_FORMAT( survey_temp.SURVEY_REQ_DATE, '%H:%i' ) 
FROM
	crm_temp_issue_survey AS survey_temp
	LEFT JOIN crm_issue_area_correspond_tab_8 AS tab8 ON survey_temp.CASE_ID = tab8.issue_code 
WHERE
	( tab8.issue_code IS NULL OR tab8.issue_code = '' );
	

-- BO XU LY THEO QA 21	
-- update issue_area_correspond_md_1079
-- UPDATE crm_issue_area_correspond_md_1079 AS corr_md_1079
-- INNER JOIN crm_temp_issue_survey AS survey_temp ON corr_md_1079.issue_code = survey_temp.CASE_ID 
-- SET 
-- corr_md_1079.issue_area_correspond_md_1079_cf_1104 = survey_temp.ARRIVAL_COMMENT
-- WHERE
-- 	corr_md_1079.issue_code IS NOT NULL;
	
-- insert issue_area_correspond_md_1079
-- INSERT INTO crm_issue_area_correspond_md_1079 (
-- 	issue_code,
-- 	issue_area_correspond_md_1079_cf_1104
-- ) SELECT
-- survey_temp.CASE_ID,
-- survey_temp.ARRIVAL_COMMENT
-- FROM
-- 	crm_temp_issue_survey AS survey_temp
-- 	LEFT JOIN crm_issue_area_correspond_md_1079 AS corr_md_1079 ON survey_temp.CASE_ID = corr_md_1079.issue_code 
-- WHERE
-- 	corr_md_1079.issue_code IS NULL 
-- 	OR corr_md_1079.issue_code = '';	
	
	
-- update issue_area_correspond_md_1053
-- UPDATE crm_issue_area_correspond_md_1053 AS corr_md_1053
-- INNER JOIN crm_temp_issue_survey AS survey_temp ON corr_md_1053.issue_code = survey_temp.CASE_ID
-- SET 
-- corr_md_1053.issue_area_correspond_md_1053_cf_1054 = survey_temp.RESULT,
-- corr_md_1053.issue_area_correspond_md_1053_cf_1054_search = search_field(survey_temp.RESULT)
-- WHERE
--	corr_md_1053.issue_code IS NOT NULL;
	
-- insert issue_area_correspond_md_1053
-- INSERT INTO crm_issue_area_correspond_md_1053 
-- ( 
-- 	issue_code, 
-- 	issue_area_correspond_md_1053_cf_1054,
-- 	issue_area_correspond_md_1053_cf_1054_search
-- ) SELECT
-- 	survey_temp.CASE_ID,
-- 	survey_temp.RESULT,
-- 	search_field(survey_temp.RESULT)
-- FROM
-- 	crm_temp_issue_survey AS survey_temp
-- 	LEFT JOIN crm_issue_area_correspond_md_1053 AS corr_md_1053 ON survey_temp.CASE_ID = corr_md_1053.issue_code 
-- WHERE
-- 	corr_md_1053.issue_code IS NULL 
-- 	OR corr_md_1053.issue_code = '';
	

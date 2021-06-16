SET sql_mode='';

UPDATE `crm_temp_issue_survey_detail`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;

-- update ordering
SET @sum := -1,
@issue := '';
UPDATE crm_temp_issue_survey_detail 
SET ordering = ( @sum := IF ( @issue COLLATE utf8mb4_unicode_ci = CASE_ID, @sum, -1 ) + 1 ),
_temp = ( @issue := CASE_ID) 
ORDER BY
	CASE_ID;


-- update issue_area_correspond_md_1123
UPDATE crm_issue_area_correspond_md_1123 AS corr_md_1123
INNER JOIN crm_temp_issue_survey_detail AS survey_detail_temp ON (corr_md_1123.issue_code = survey_detail_temp.CASE_ID AND corr_md_1123.issue_area_correspond_md_1123_ordering = survey_detail_temp.ordering)
SET 
corr_md_1123.issue_area_correspond_md_1123_ordering = survey_detail_temp.ordering,
corr_md_1123.issue_area_correspond_md_1123_cf_1126_multil_lv2_code = survey_detail_temp.SURV_REQ_DESTINATION_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1126_multil_lv2_name = survey_detail_temp.SURV_REQ_DESTINATION_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_code = survey_detail_temp.SURV_RESPONDENT_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_name = survey_detail_temp.SURV_RESPONDENT_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_code = survey_detail_temp.SURV_RESPONDENT_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_name = survey_detail_temp.SURV_RESPONDENT_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1128_dept_code = survey_detail_temp.SURV_REQ_1_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1128_dept_name = survey_detail_temp.SURV_REQ_1_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1128_person_code = survey_detail_temp.SURV_REQ_1_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1128_person_name = survey_detail_temp.SURV_REQ_1_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1127 = survey_detail_temp.SURV_REQ_1_CONTENT,
corr_md_1123.issue_area_correspond_md_1123_cf_1127_search = search_field ( survey_detail_temp.SURV_REQ_1_CONTENT ),
corr_md_1123.issue_area_correspond_md_1123_cf_1155_dept_code = survey_detail_temp.SURV_REQ_2_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1155_dept_name = survey_detail_temp.SURV_REQ_2_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1155_person_code = survey_detail_temp.SURV_REQ_2_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1155_person_name = survey_detail_temp.SURV_REQ_2_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1154 = survey_detail_temp.SURV_REQ_2_CONTENT,
corr_md_1123.issue_area_correspond_md_1123_cf_1154_search = search_field ( survey_detail_temp.SURV_REQ_2_CONTENT ),
corr_md_1123.issue_area_correspond_md_1123_cf_1157_dept_code = survey_detail_temp.SURV_REQ_3_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1157_dept_name = survey_detail_temp.SURV_REQ_3_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1157_person_code = survey_detail_temp.SURV_REQ_3_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1157_person_name = survey_detail_temp.SURV_REQ_3_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1156 = survey_detail_temp.SURV_REQ_3_CONTENT,
corr_md_1123.issue_area_correspond_md_1123_cf_1156_search = search_field ( survey_detail_temp.SURV_REQ_3_CONTENT ),
corr_md_1123.issue_area_correspond_md_1123_cf_1125_date = DATE_FORMAT( survey_detail_temp.INVST_PROD_SHIPPING_DATE_TIME, '%Y-%m-%d' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1125_time = DATE_FORMAT( survey_detail_temp.INVST_PROD_SHIPPING_DATE_TIME, '%H:%i' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1125_datetime = DATE_FORMAT( survey_detail_temp.INVST_PROD_SHIPPING_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1125_dept_code = survey_detail_temp.INVST_PROD_SHIPPING_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1125_dept_name = survey_detail_temp.INVST_PROD_SHIPPING_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1125_person_code = survey_detail_temp.INVST_PROD_SHIPPING_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1125_person_name = survey_detail_temp.INVST_PROD_SHIPPING_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1161 = survey_detail_temp.SURV_CONTENT_RESULT_1,
corr_md_1123.issue_area_correspond_md_1123_cf_1161_search = search_field ( survey_detail_temp.SURV_CONTENT_RESULT_1 ),
corr_md_1123.issue_area_correspond_md_1123_cf_1162 = survey_detail_temp.SURV_CONTENT_RESULT_2,
corr_md_1123.issue_area_correspond_md_1123_cf_1162_search = search_field ( survey_detail_temp.SURV_CONTENT_RESULT_2 ),
corr_md_1123.issue_area_correspond_md_1123_cf_1163 = survey_detail_temp.SURV_CONTENT_RESULT_3,
corr_md_1123.issue_area_correspond_md_1123_cf_1163_search = search_field ( survey_detail_temp.SURV_CONTENT_RESULT_3 ),
corr_md_1123.issue_area_correspond_md_1123_cf_1166_date = DATE_FORMAT( survey_detail_temp.INVST_APPR_DATE_TIME, '%Y-%m-%d' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1166_time = DATE_FORMAT( survey_detail_temp.INVST_APPR_DATE_TIME, '%H:%i' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1166_datetime = DATE_FORMAT( survey_detail_temp.INVST_APPR_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_code = survey_detail_temp.INVST_APPR_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_name = survey_detail_temp.INVST_APPR_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_code = survey_detail_temp.INVST_APPR_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_name = survey_detail_temp.INVST_APPR_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_code = survey_detail_temp.SURV_RESULT_APPR_DESTINATION_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_name = survey_detail_temp.SURV_RESULT_APPR_DESTINATION_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_code = survey_detail_temp.SURV_RESULT_APPR_DESTINATION_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_name = survey_detail_temp.SURV_RESULT_APPR_DESTINATION_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1165_date = DATE_FORMAT( survey_detail_temp.INVST_APPR_REQ_DATE_TIME, '%Y-%m-%d' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1165_time = DATE_FORMAT( survey_detail_temp.INVST_APPR_REQ_DATE_TIME, '%H:%i' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1165_datetime = DATE_FORMAT( survey_detail_temp.INVST_APPR_REQ_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_code = survey_detail_temp.INVST_APPR_REQ_DEPT_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_name = survey_detail_temp.INVST_APPR_REQ_DEPT_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_code = survey_detail_temp.INVST_APPR_REQ_USER_CODE,
corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_name = survey_detail_temp.INVST_APPR_REQ_USER_NAME,
corr_md_1123.issue_area_correspond_md_1123_cf_1128_date = DATE_FORMAT( survey_detail_temp.SURV_REQ_1_DATETIME, '%Y-%m-%d' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1128_time = DATE_FORMAT( survey_detail_temp.SURV_REQ_1_DATETIME, '%H:%i' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1155_date = DATE_FORMAT( survey_detail_temp.SURV_REQ_2_DATETIME, '%Y-%m-%d' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1155_time = DATE_FORMAT( survey_detail_temp.SURV_REQ_2_DATETIME, '%H:%i' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1157_date = DATE_FORMAT( survey_detail_temp.SURV_REQ_3_DATETIME, '%Y-%m-%d' ),
corr_md_1123.issue_area_correspond_md_1123_cf_1157_time = DATE_FORMAT( survey_detail_temp.SURV_REQ_3_DATETIME, '%H:%i' )
WHERE
	corr_md_1123.issue_code IS NOT NULL;
	
-- insert crm_issue_area_correspond_md_1123
INSERT INTO crm_issue_area_correspond_md_1123 ( 
issue_code,
issue_area_correspond_md_1123_ordering,
issue_area_correspond_md_1123_cf_1126_multil_lv2_code,
issue_area_correspond_md_1123_cf_1126_multil_lv2_name,
issue_area_correspond_md_1123_cf_1160_dept_code,
issue_area_correspond_md_1123_cf_1160_dept_name,
issue_area_correspond_md_1123_cf_1160_person_code,
issue_area_correspond_md_1123_cf_1160_person_name,
issue_area_correspond_md_1123_cf_1128_dept_code,
issue_area_correspond_md_1123_cf_1128_dept_name,
issue_area_correspond_md_1123_cf_1128_person_code,
issue_area_correspond_md_1123_cf_1128_person_name,
issue_area_correspond_md_1123_cf_1127,
issue_area_correspond_md_1123_cf_1127_search,
issue_area_correspond_md_1123_cf_1155_dept_code,
issue_area_correspond_md_1123_cf_1155_dept_name,
issue_area_correspond_md_1123_cf_1155_person_code,
issue_area_correspond_md_1123_cf_1155_person_name,
issue_area_correspond_md_1123_cf_1154,
issue_area_correspond_md_1123_cf_1154_search,
issue_area_correspond_md_1123_cf_1157_dept_code,
issue_area_correspond_md_1123_cf_1157_dept_name,
issue_area_correspond_md_1123_cf_1157_person_code,
issue_area_correspond_md_1123_cf_1157_person_name,
issue_area_correspond_md_1123_cf_1156,
issue_area_correspond_md_1123_cf_1156_search,
issue_area_correspond_md_1123_cf_1125_date,
issue_area_correspond_md_1123_cf_1125_time,
issue_area_correspond_md_1123_cf_1125_datetime,
issue_area_correspond_md_1123_cf_1125_dept_code,
issue_area_correspond_md_1123_cf_1125_dept_name,
issue_area_correspond_md_1123_cf_1125_person_code,
issue_area_correspond_md_1123_cf_1125_person_name,
issue_area_correspond_md_1123_cf_1161,
issue_area_correspond_md_1123_cf_1161_search,
issue_area_correspond_md_1123_cf_1162,
issue_area_correspond_md_1123_cf_1162_search,
issue_area_correspond_md_1123_cf_1163,
issue_area_correspond_md_1123_cf_1163_search,
issue_area_correspond_md_1123_cf_1166_date,
issue_area_correspond_md_1123_cf_1166_time,
issue_area_correspond_md_1123_cf_1166_datetime,
issue_area_correspond_md_1123_cf_1166_dept_code,
issue_area_correspond_md_1123_cf_1166_dept_name,
issue_area_correspond_md_1123_cf_1166_person_code,
issue_area_correspond_md_1123_cf_1166_person_name,
issue_area_correspond_md_1123_cf_1181_dept_code,
issue_area_correspond_md_1123_cf_1181_dept_name,
issue_area_correspond_md_1123_cf_1181_person_code,
issue_area_correspond_md_1123_cf_1181_person_name,
issue_area_correspond_md_1123_cf_1165_date,
issue_area_correspond_md_1123_cf_1165_time,
issue_area_correspond_md_1123_cf_1165_datetime,
issue_area_correspond_md_1123_cf_1165_dept_code,
issue_area_correspond_md_1123_cf_1165_dept_name,
issue_area_correspond_md_1123_cf_1165_person_code,
issue_area_correspond_md_1123_cf_1165_person_name,
issue_area_correspond_md_1123_cf_1128_date,
issue_area_correspond_md_1123_cf_1128_time,
issue_area_correspond_md_1123_cf_1155_date,
issue_area_correspond_md_1123_cf_1155_time,
issue_area_correspond_md_1123_cf_1157_date,
issue_area_correspond_md_1123_cf_1157_time
) SELECT
survey_detail_temp.CASE_ID,
survey_detail_temp.ordering,
survey_detail_temp.SURV_REQ_DESTINATION_CODE,
survey_detail_temp.SURV_REQ_DESTINATION_NAME,
survey_detail_temp.SURV_RESPONDENT_DEPT_CODE,
survey_detail_temp.SURV_RESPONDENT_DEPT_NAME,
survey_detail_temp.SURV_RESPONDENT_USER_CODE,
survey_detail_temp.SURV_RESPONDENT_USER_NAME,
survey_detail_temp.SURV_REQ_1_DEPT_CODE,
survey_detail_temp.SURV_REQ_1_DEPT_NAME,
survey_detail_temp.SURV_REQ_1_USER_CODE,
survey_detail_temp.SURV_REQ_1_USER_NAME,
survey_detail_temp.SURV_REQ_1_CONTENT,
search_field ( survey_detail_temp.SURV_REQ_1_CONTENT ),
survey_detail_temp.SURV_REQ_2_DEPT_CODE,
survey_detail_temp.SURV_REQ_2_DEPT_NAME,
survey_detail_temp.SURV_REQ_2_USER_CODE,
survey_detail_temp.SURV_REQ_2_USER_NAME,
survey_detail_temp.SURV_REQ_2_CONTENT,
search_field ( survey_detail_temp.SURV_REQ_2_CONTENT ),
survey_detail_temp.SURV_REQ_3_DEPT_CODE,
survey_detail_temp.SURV_REQ_3_DEPT_NAME,
survey_detail_temp.SURV_REQ_3_USER_CODE,
survey_detail_temp.SURV_REQ_3_USER_NAME,
survey_detail_temp.SURV_REQ_3_CONTENT,
search_field ( survey_detail_temp.SURV_REQ_3_CONTENT ),
DATE_FORMAT( survey_detail_temp.INVST_PROD_SHIPPING_DATE_TIME, '%Y-%m-%d' ),
DATE_FORMAT( survey_detail_temp.INVST_PROD_SHIPPING_DATE_TIME, '%H:%i' ),
DATE_FORMAT( survey_detail_temp.INVST_PROD_SHIPPING_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
survey_detail_temp.INVST_PROD_SHIPPING_DEPT_CODE,
survey_detail_temp.INVST_PROD_SHIPPING_DEPT_NAME,
survey_detail_temp.INVST_PROD_SHIPPING_USER_CODE,
survey_detail_temp.INVST_PROD_SHIPPING_USER_NAME,
survey_detail_temp.SURV_CONTENT_RESULT_1,
search_field ( survey_detail_temp.SURV_CONTENT_RESULT_1 ),
survey_detail_temp.SURV_CONTENT_RESULT_2,
search_field ( survey_detail_temp.SURV_CONTENT_RESULT_2 ),
survey_detail_temp.SURV_CONTENT_RESULT_3,
search_field ( survey_detail_temp.SURV_CONTENT_RESULT_3 ),
DATE_FORMAT( survey_detail_temp.INVST_APPR_DATE_TIME, '%Y-%m-%d' ),
DATE_FORMAT( survey_detail_temp.INVST_APPR_DATE_TIME, '%H:%i' ),
DATE_FORMAT( survey_detail_temp.INVST_APPR_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
survey_detail_temp.INVST_APPR_DEPT_CODE,
survey_detail_temp.INVST_APPR_DEPT_NAME,
survey_detail_temp.INVST_APPR_USER_CODE,
survey_detail_temp.INVST_APPR_USER_NAME,
survey_detail_temp.SURV_RESULT_APPR_DESTINATION_DEPT_CODE,
survey_detail_temp.SURV_RESULT_APPR_DESTINATION_DEPT_NAME,
survey_detail_temp.SURV_RESULT_APPR_DESTINATION_USER_CODE,
survey_detail_temp.SURV_RESULT_APPR_DESTINATION_USER_NAME,
DATE_FORMAT( survey_detail_temp.INVST_APPR_REQ_DATE_TIME, '%Y-%m-%d' ),
DATE_FORMAT( survey_detail_temp.INVST_APPR_REQ_DATE_TIME, '%H:%i' ),
DATE_FORMAT( survey_detail_temp.INVST_APPR_REQ_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
survey_detail_temp.INVST_APPR_REQ_DEPT_CODE,
survey_detail_temp.INVST_APPR_REQ_DEPT_NAME,
survey_detail_temp.INVST_APPR_REQ_USER_CODE,
survey_detail_temp.INVST_APPR_REQ_USER_NAME,
DATE_FORMAT( survey_detail_temp.SURV_REQ_1_DATETIME, '%Y-%m-%d' ),
DATE_FORMAT( survey_detail_temp.SURV_REQ_1_DATETIME, '%H:%i' ),
DATE_FORMAT( survey_detail_temp.SURV_REQ_2_DATETIME, '%Y-%m-%d' ),
DATE_FORMAT( survey_detail_temp.SURV_REQ_2_DATETIME, '%H:%i' ),
DATE_FORMAT( survey_detail_temp.SURV_REQ_3_DATETIME, '%Y-%m-%d' ),
DATE_FORMAT( survey_detail_temp.SURV_REQ_3_DATETIME, '%H:%i' )
FROM
	crm_temp_issue_survey_detail AS survey_detail_temp
	LEFT JOIN crm_issue_area_correspond_md_1123 AS corr_md_1123 ON (survey_detail_temp.CASE_ID = corr_md_1123.issue_code AND corr_md_1123.issue_area_correspond_md_1123_ordering = survey_detail_temp.ordering)
WHERE
	corr_md_1123.issue_code IS NULL 
	OR corr_md_1123.issue_code = '';
	
	
	
-- update data crm_issue_area_correspond_tab_4 lv 1
UPDATE crm_issue_area_correspond_tab_4 AS tab4
INNER JOIN crm_issue_area_correspond_md_1123 AS corr_md_1123 ON ( tab4.issue_code = corr_md_1123.issue_code AND corr_md_1123.issue_area_correspond_md_1123_ordering = 0 ) 
SET tab4.issue_area_correspond_tab_4_cf_1256_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_code,
tab4.issue_area_correspond_tab_4_cf_1256_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_name,
tab4.issue_area_correspond_tab_4_cf_1256_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_code,
tab4.issue_area_correspond_tab_4_cf_1256_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_name,

tab4.issue_area_correspond_tab_4_cf_1205_datetime = corr_md_1123.issue_area_correspond_md_1123_cf_1166_time,
tab4.issue_area_correspond_tab_4_cf_1205_date = corr_md_1123.issue_area_correspond_md_1123_cf_1166_date,
tab4.issue_area_correspond_tab_4_cf_1205_time = corr_md_1123.issue_area_correspond_md_1123_cf_1166_time,
tab4.issue_area_correspond_tab_4_cf_1205_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_code,
tab4.issue_area_correspond_tab_4_cf_1205_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_name,
tab4.issue_area_correspond_tab_4_cf_1205_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_code,
tab4.issue_area_correspond_tab_4_cf_1205_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_name,

tab4.issue_area_correspond_tab_4_cf_1199_date = corr_md_1123.issue_area_correspond_md_1123_cf_1165_date,
tab4.issue_area_correspond_tab_4_cf_1199_time = corr_md_1123.issue_area_correspond_md_1123_cf_1165_time,
tab4.issue_area_correspond_tab_4_cf_1199_datetime = corr_md_1123.issue_area_correspond_md_1123_cf_1165_datetime,
tab4.issue_area_correspond_tab_4_cf_1199_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_code,
tab4.issue_area_correspond_tab_4_cf_1199_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_name,
tab4.issue_area_correspond_tab_4_cf_1199_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_code,
tab4.issue_area_correspond_tab_4_cf_1199_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_name,

tab4.issue_area_correspond_tab_4_cf_1202_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_code,
tab4.issue_area_correspond_tab_4_cf_1202_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_name,
tab4.issue_area_correspond_tab_4_cf_1202_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_code,
tab4.issue_area_correspond_tab_4_cf_1202_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_name
WHERE
	tab4.issue_code IS NOT NULL;
	
	
-- update data crm_issue_area_correspond_tab_4 lv 2
UPDATE crm_issue_area_correspond_tab_4 AS tab4
INNER JOIN crm_issue_area_correspond_md_1123 AS corr_md_1123 ON ( 
	tab4.issue_code = corr_md_1123.issue_code AND corr_md_1123.issue_area_correspond_md_1123_ordering = 1 
) 
SET tab4.issue_area_correspond_tab_4_cf_1257_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_code,
tab4.issue_area_correspond_tab_4_cf_1257_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_name,
tab4.issue_area_correspond_tab_4_cf_1257_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_code,
tab4.issue_area_correspond_tab_4_cf_1257_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_name,

tab4.issue_area_correspond_tab_4_cf_1206_datetime = corr_md_1123.issue_area_correspond_md_1123_cf_1166_time,
tab4.issue_area_correspond_tab_4_cf_1206_date = corr_md_1123.issue_area_correspond_md_1123_cf_1166_date,
tab4.issue_area_correspond_tab_4_cf_1206_time = corr_md_1123.issue_area_correspond_md_1123_cf_1166_time,
tab4.issue_area_correspond_tab_4_cf_1206_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_code,
tab4.issue_area_correspond_tab_4_cf_1206_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_name,
tab4.issue_area_correspond_tab_4_cf_1206_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_code,
tab4.issue_area_correspond_tab_4_cf_1206_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_name,

tab4.issue_area_correspond_tab_4_cf_1200_date = corr_md_1123.issue_area_correspond_md_1123_cf_1165_date,
tab4.issue_area_correspond_tab_4_cf_1200_time = corr_md_1123.issue_area_correspond_md_1123_cf_1165_time,
tab4.issue_area_correspond_tab_4_cf_1200_datetime = corr_md_1123.issue_area_correspond_md_1123_cf_1165_datetime,
tab4.issue_area_correspond_tab_4_cf_1200_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_code,
tab4.issue_area_correspond_tab_4_cf_1200_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_name,
tab4.issue_area_correspond_tab_4_cf_1200_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_code,
tab4.issue_area_correspond_tab_4_cf_1200_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_name,

tab4.issue_area_correspond_tab_4_cf_1204_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_code,
tab4.issue_area_correspond_tab_4_cf_1204_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_name,
tab4.issue_area_correspond_tab_4_cf_1204_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_code,
tab4.issue_area_correspond_tab_4_cf_1204_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_name
WHERE
	tab4.issue_code IS NOT NULL;
	
-- update data crm_issue_area_correspond_tab_4 lv 3
UPDATE crm_issue_area_correspond_tab_4 AS tab4
INNER JOIN crm_issue_area_correspond_md_1123 AS corr_md_1123 ON ( 
	tab4.issue_code = corr_md_1123.issue_code AND corr_md_1123.issue_area_correspond_md_1123_ordering = 2 
) 
SET tab4.issue_area_correspond_tab_4_cf_1258_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_code,
tab4.issue_area_correspond_tab_4_cf_1258_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1160_dept_name,
tab4.issue_area_correspond_tab_4_cf_1258_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_code,
tab4.issue_area_correspond_tab_4_cf_1258_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1160_person_name,

tab4.issue_area_correspond_tab_4_cf_1207_datetime = corr_md_1123.issue_area_correspond_md_1123_cf_1166_time,
tab4.issue_area_correspond_tab_4_cf_1207_date = corr_md_1123.issue_area_correspond_md_1123_cf_1166_date,
tab4.issue_area_correspond_tab_4_cf_1207_time = corr_md_1123.issue_area_correspond_md_1123_cf_1166_time,
tab4.issue_area_correspond_tab_4_cf_1207_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_code,
tab4.issue_area_correspond_tab_4_cf_1207_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1166_person_name,
tab4.issue_area_correspond_tab_4_cf_1207_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_code,
tab4.issue_area_correspond_tab_4_cf_1207_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1166_dept_name,

tab4.issue_area_correspond_tab_4_cf_1201_date = corr_md_1123.issue_area_correspond_md_1123_cf_1165_date,
tab4.issue_area_correspond_tab_4_cf_1201_time = corr_md_1123.issue_area_correspond_md_1123_cf_1165_time,
tab4.issue_area_correspond_tab_4_cf_1201_datetime = corr_md_1123.issue_area_correspond_md_1123_cf_1165_datetime,
tab4.issue_area_correspond_tab_4_cf_1201_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_code,
tab4.issue_area_correspond_tab_4_cf_1201_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1165_person_name,
tab4.issue_area_correspond_tab_4_cf_1201_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_code,
tab4.issue_area_correspond_tab_4_cf_1201_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1165_dept_name,

tab4.issue_area_correspond_tab_4_cf_1203_dept_code = corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_code,
tab4.issue_area_correspond_tab_4_cf_1203_dept_name = corr_md_1123.issue_area_correspond_md_1123_cf_1181_dept_name,
tab4.issue_area_correspond_tab_4_cf_1203_person_code = corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_code,
tab4.issue_area_correspond_tab_4_cf_1203_person_name = corr_md_1123.issue_area_correspond_md_1123_cf_1181_person_name
WHERE
	tab4.issue_code IS NOT NULL;
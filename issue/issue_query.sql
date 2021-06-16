SET sql_mode='';

UPDATE `crm_temp_issue_info`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;

-- update data temp_issue_info
UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_CLASS_CODE_1 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_CLASS' ) 
SET CUST_CLASS_NAME_1 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_CLASS_CODE_2 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_CLASS' ) 
SET CUST_CLASS_NAME_2 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_CLASS_CODE_3 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_CLASS' ) 
SET CUST_CLASS_NAME_3 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.PL_CODE = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'PL' ) 
SET PL_NAME = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CRSP_RESULT_CODE_1 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_CRSP_RESULT' ) 
SET CRSP_RESULT_NAME_1 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CRSP_RESULT_CODE_2 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_CRSP_RESULT' ) 
SET CRSP_RESULT_NAME_2 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CRSP_RESULT_CODE_3 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_CRSP_RESULT' ) 
SET CRSP_RESULT_NAME_3 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.NAYSAY_REASON_CODE_1 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'NAYSAY_REASON' ) 
SET NAYSAY_REASON_NAME_1 = code_mapping.TARGET_ITEM_NAME, NAYSAY_REASON_CODE_1 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.NAYSAY_REASON_CODE_2 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'NAYSAY_REASON' ) 
SET NAYSAY_REASON_NAME_2 = code_mapping.TARGET_ITEM_NAME, NAYSAY_REASON_CODE_2 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.NAYSAY_REASON_CODE_3 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'NAYSAY_REASON' ) 
SET NAYSAY_REASON_NAME_3 = code_mapping.TARGET_ITEM_NAME, NAYSAY_REASON_CODE_3 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.TMP_COST_DETAILS_CODE = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'COST_DETAIL' ) 
SET TMP_COST_DETAILS_CODE = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.TMP_COST_DETAILS_CODE = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'COST_DETAIL' ) 
SET TMP_COST_DETAILS_NAME = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.DELAY_REASON_CODE = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'DELAY_REASON' ) 
SET DELAY_REASON_NAME = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.DELAY_REASON_CODE = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'DELAY_REASON' ) 
SET DELAY_REASON_CODE = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_GENERATION_CODE_1 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_GENERATION' ) 
SET CUST_GENERATION_NAME_1 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_GENERATION_CODE_2 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_GENERATION' ) 
SET CUST_GENERATION_NAME_2 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_GENERATION_CODE_3 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_GENERATION' ) 
SET CUST_GENERATION_NAME_3 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_TEL_CLASS_CODE_1 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET CUST_TEL_CLASS_CODE_1 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_TEL_CLASS_CODE_2 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET CUST_TEL_CLASS_CODE_2 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_TEL_CLASS_CODE_3 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET CUST_TEL_CLASS_CODE_3 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_TEL_CLASS_CODE_1 = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET CUST_TEL_CLASS_NAME_1 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_TEL_CLASS_CODE_2 = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET CUST_TEL_CLASS_NAME_2 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_TEL_CLASS_CODE_3 = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET CUST_TEL_CLASS_NAME_3 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_FUKEN_CODE_1 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TOFUKEN' ) 
SET CUST_FUKEN_CODE_1 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_FUKEN_CODE_2 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TOFUKEN' ) 
SET CUST_FUKEN_CODE_2 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_FUKEN_CODE_3 = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TOFUKEN' ) 
SET CUST_FUKEN_CODE_3 = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_FUKEN_CODE_1 = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TOFUKEN' ) 
SET CUST_FUKEN_NAME_1 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_FUKEN_CODE_2 = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TOFUKEN' ) 
SET CUST_FUKEN_NAME_2 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_FUKEN_CODE_3 = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TOFUKEN' ) 
SET CUST_FUKEN_NAME_3 = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_LANGUAGE_CODE = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_LANGUAGE' ) 
SET CUST_LANGUAGE_CODE = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_issue_info` AS temp_issue
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_issue.CUST_LANGUAGE_CODE = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_LANGUAGE' ) 
SET CUST_LANGUAGE_NAME = code_mapping.TARGET_ITEM_NAME;

-- update data issue
UPDATE crm_issue AS issue
INNER JOIN crm_temp_issue_info AS issue_temp ON issue.issue_code = issue_temp.CASE_ID 
SET issue.issue_created_dept_code = issue_temp.CREATE_ORG_CD,
issue.issue_created_dept_name = '',
issue.issue_created_member_code = issue_temp.CREATE_USER_ID,
issue.issue_created_member_name = '',
issue.issue_created_date = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d' ),
issue.issue_created_year_month = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y/%m' ),
issue.issue_created_year = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y' ),
issue.issue_created_time = DATE_FORMAT( issue_temp.RECEPT_DATE, '%H:%i' ),
issue.issue_created_datetime = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d %H:%i:%s' ),
issue.issue_updated_dept_code = issue_temp.UPDATE_DEPT_CODE,
issue.issue_updated_dept_name = issue_temp.UPDATE_DEPT_NAME,
issue.issue_updated_member_code = issue_temp.UPDATE_USER_CODE,
issue.issue_updated_member_name = replace(replace(issue_temp.UPDATE_USER_NAME,' ', ''), '　', ''),
issue.issue_updated_date = DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%Y-%m-%d' ),
issue.issue_updated_time = DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%H:%i' ),
issue.issue_updated_datetime = DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
issue.issue_receive_dept_code = issue_temp.RECEPT_ORG_CD,
issue.issue_receive_dept_name = issue_temp.RECEPT_ORG_NAME,
issue.issue_receive_person_code = issue_temp.RECEPT_USER_ID,
issue.issue_receive_person_name = issue_temp.RECEPT_USER_NAME,
issue.issue_receive_date = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d' ),
issue.issue_receive_time = DATE_FORMAT( issue_temp.RECEPT_DATE, '%H:%i' ),
issue.issue_receive_datetime = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d %H:%i:%s' ),
issue.issue_receive_week_day = DAYNAME( DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d' ) ),
issue.issue_receive_day_hour = DATE_FORMAT( issue_temp.RECEPT_DATE, '%H' ),
issue.issue_receive_month = DATE_FORMAT( issue_temp.RECEPT_DATE, '%m' ),
issue.issue_receive_year = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y' ),
issue.issue_receive_year_month = DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y/%m' ),
issue.issue_finish_date = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y-%m-%d' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y-%m-%d' )),
issue.issue_finish_datetime = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y-%m-%d %H:%i:%s' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y-%m-%d %H:%i:%s' )),
issue.issue_finish_time = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%H:%i' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%H:%i' )),
issue.issue_finish_month = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%m' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%m' )),
issue.issue_finish_year = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y' )),
issue.issue_finish_year_month = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y/%m' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y/%m' )),
issue.issue_finish_dept_code = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_DEPT_CODE, '') = '', issue_temp.UPDATE_DEPT_CODE, issue_temp.COMP_DEPT_CODE)), IF(IFNULL(issue_temp.COMP_DEPT_CODE, '') = '', issue_temp.UPDATE_DEPT_CODE, issue_temp.COMP_DEPT_CODE)),
issue.issue_finish_dept_name = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_DEPT_NAME, '') = '', issue_temp.UPDATE_DEPT_NAME, issue_temp.COMP_DEPT_NAME)), IF(IFNULL(issue_temp.COMP_DEPT_NAME, '') = '', issue_temp.UPDATE_DEPT_NAME, issue_temp.COMP_DEPT_NAME)),
issue.issue_finish_person_code = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_USER_CODE, '') = '', issue_temp.UPDATE_USER_CODE, issue_temp.COMP_USER_CODE)), IF(IFNULL(issue_temp.COMP_USER_CODE, '') = '', issue_temp.UPDATE_USER_CODE, issue_temp.COMP_USER_CODE)),
issue.issue_finish_person_name = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_USER_NAME, '') = '', issue_temp.UPDATE_USER_NAME, issue_temp.COMP_USER_NAME)), IF(IFNULL(issue_temp.COMP_USER_NAME, '') = '', issue_temp.UPDATE_USER_NAME, issue_temp.COMP_USER_NAME)),
issue.issue_receive_code = issue_temp.OBTAIN_METHOD_CODE,
issue.issue_receive_name = issue_temp.OBTAIN_METHOD_NAME,
issue.issue_content_ask = issue_temp.CUSTOMER_VOICE,
issue.issue_content_ask_search = search_field ( issue_temp.CUSTOMER_VOICE ),
						 
  
issue.issue_status_code = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '2', '7'), '7' ),
						 
  
issue.issue_status_name = IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '対応中', '完了'), '完了' ),
issue.issue_migration_no = 1,
-- issue.issue_keyword_code = issue_temp.KEYWORD_CODE,
-- issue.issue_keyword_name = issue_temp.KEYWORD_NAME,
issue.issue_public = 1,
issue.issue_public_name = '公開'
WHERE
	issue.issue_code IS NOT NULL;
	
    
-- insert data issue
INSERT INTO crm_issue (
issue_code,
	issue_created_dept_code,
	issue_created_dept_name,
	issue_created_member_code,
	issue_created_member_name,
	issue_created_date,
	issue_created_year_month,
	issue_created_year,
	issue_created_time,
	issue_created_datetime,
	issue_updated_dept_code,
	issue_updated_dept_name,
	issue_updated_member_code,
	issue_updated_member_name,
	issue_updated_date,
	issue_updated_time,
	issue_updated_datetime,
	issue_receive_dept_code,
	issue_receive_dept_name,
	issue_receive_person_code,
	issue_receive_person_name,
	issue_receive_date,
	issue_receive_time,
	issue_receive_datetime,
	issue_receive_week_day,
	issue_receive_day_hour,
	issue_receive_month,
	issue_receive_year,
	issue_receive_year_month,
	issue_finish_date,
	issue_finish_datetime,
	issue_finish_time,
	issue_finish_month,
	issue_finish_year,
	issue_finish_year_month,
	issue_finish_dept_code,
	issue_finish_dept_name,
	issue_finish_person_code,
	issue_finish_person_name,
	issue_receive_code,
	issue_receive_name,
	issue_content_ask,
	issue_content_ask_search,
	issue_status_code,
	issue_status_name,
	issue_migration_no,
	-- issue_keyword_code,
	-- issue_keyword_name,
  issue_public,
  issue_public_name
) SELECT
issue_temp.CASE_ID,
issue_temp.CREATE_ORG_CD,
'' as issue_created_dept_name,
issue_temp.CREATE_USER_ID,
'' as issue_created_member_name,
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y/%m' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%H:%i' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d %H:%i:%s' ),
issue_temp.UPDATE_DEPT_CODE,
issue_temp.UPDATE_DEPT_NAME,
issue_temp.UPDATE_USER_CODE,
replace(replace(issue_temp.UPDATE_USER_NAME,' ', ''), '　', ''),
DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%H:%i' ),
DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
issue_temp.RECEPT_ORG_CD,
issue_temp.RECEPT_ORG_NAME,
issue_temp.RECEPT_USER_ID,
issue_temp.RECEPT_USER_NAME,
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%H:%i' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d %H:%i:%s' ),
DAYNAME( DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y-%m-%d' ) ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%H' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%m' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y' ),
DATE_FORMAT( issue_temp.RECEPT_DATE, '%Y/%m' ),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y-%m-%d' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y-%m-%d' )),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y-%m-%d %H:%i:%s' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y-%m-%d %H:%i:%s' )),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%H:%i' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%H:%i' )),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%m' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%m' )),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y' )),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', DATE_FORMAT( issue_temp.COMP_DATE, '%Y/%m' ), DATE_FORMAT( issue_temp.COMP_DATE_TIME, '%Y/%m' )),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_DEPT_CODE, '') = '', issue_temp.UPDATE_DEPT_CODE, issue_temp.COMP_DEPT_CODE)), IF(IFNULL(issue_temp.COMP_DEPT_CODE, '') = '', issue_temp.UPDATE_DEPT_CODE, issue_temp.COMP_DEPT_CODE)),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_DEPT_NAME, '') = '', issue_temp.UPDATE_DEPT_NAME, issue_temp.COMP_DEPT_NAME)), IF(IFNULL(issue_temp.COMP_DEPT_NAME, '') = '', issue_temp.UPDATE_DEPT_NAME, issue_temp.COMP_DEPT_NAME)),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_USER_CODE, '') = '', issue_temp.UPDATE_USER_CODE, issue_temp.COMP_USER_CODE)), IF(IFNULL(issue_temp.COMP_USER_CODE, '') = '', issue_temp.UPDATE_USER_CODE, issue_temp.COMP_USER_CODE)),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '', IF(IFNULL(issue_temp.COMP_USER_NAME, '') = '', issue_temp.UPDATE_USER_NAME, issue_temp.COMP_USER_NAME)), IF(IFNULL(issue_temp.COMP_USER_NAME, '') = '', issue_temp.UPDATE_USER_NAME, issue_temp.COMP_USER_NAME)),
issue_temp.OBTAIN_METHOD_CODE,
issue_temp.OBTAIN_METHOD_NAME,
issue_temp.CUSTOMER_VOICE,
search_field ( issue_temp.CUSTOMER_VOICE ),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '2', '7'), '7' ),
IF( IFNULL( issue_temp.COMP_DATE_TIME, '' ) = '', IF (IFNULL(issue_temp.COMP_DATE, '') = '', '対応中', '完了'), '完了' ),
1 as issue_migration_no,
-- issue_temp.KEYWORD_CODE,
-- issue_temp.KEYWORD_NAME,
1 as issue_public,
'公開' as issue_public_name
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue AS issue ON issue_temp.CASE_ID = issue.issue_code 
WHERE
	issue.issue_code IS NULL 
	OR issue.issue_code = '';
    
-- update data common
UPDATE crm_issue_area_common AS common
INNER JOIN crm_temp_issue_info AS issue_temp ON common.issue_code = issue_temp.CASE_ID 
SET common.issue_area_common_cf_81_dept_code = issue_temp.CRSP_ORG_CD,
common.issue_area_common_cf_81_dept_name = issue_temp.CRSP_ORG_NAME,
common.issue_area_common_cf_81_person_code = issue_temp.CRSP_USER_ID,
common.issue_area_common_cf_81_person_name = issue_temp.CRSP_USER_NAME,
common.issue_area_common_cf_863_dept_code = issue_temp.CRSP_SUPERIOR_DEPT_CODE,
common.issue_area_common_cf_863_dept_name = issue_temp.CRSP_SUPERIOR_DEPT_NAME,
common.issue_area_common_cf_863_person_code = issue_temp.CRSP_SUPERIOR_USER_CODE,
common.issue_area_common_cf_863_person_name = issue_temp.CRSP_SUPERIOR_USER_NAME,
common.issue_area_common_updated_at = DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%Y-%m-%d %H:%i:%s' ), 
common.issue_area_common_created_by = issue_temp.CREATE_USER_ID,
common.issue_area_common_updated_by = issue_temp.UPDATE_USER_CODE
WHERE
	common.issue_code IS NOT NULL;
    
-- insert data common
INSERT INTO crm_issue_area_common ( 
issue_code,
issue_area_common_cf_81_dept_code, 
issue_area_common_cf_81_dept_name, 
issue_area_common_cf_81_person_code, 
issue_area_common_cf_81_person_name, 
issue_area_common_cf_863_dept_code, 
issue_area_common_cf_863_dept_name, 
issue_area_common_cf_863_person_code, 
issue_area_common_cf_863_person_name,
issue_area_common_updated_at, 
issue_area_common_created_by,
issue_area_common_updated_by
) SELECT
issue_temp.CASE_ID,
issue_temp.CRSP_ORG_CD,
issue_temp.CRSP_ORG_NAME,
issue_temp.CRSP_USER_ID,
issue_temp.CRSP_USER_NAME,
issue_temp.CRSP_SUPERIOR_DEPT_CODE,
issue_temp.CRSP_SUPERIOR_DEPT_NAME,
issue_temp.CRSP_SUPERIOR_USER_CODE,
issue_temp.CRSP_SUPERIOR_USER_NAME,
DATE_FORMAT( issue_temp.UPDATE_DATE_TIME, '%Y-%m-%d %H:%i:%s' ), 
issue_temp.CREATE_USER_ID,
issue_temp.UPDATE_USER_CODE 
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_common AS common ON issue_temp.CASE_ID = common.issue_code 
WHERE
	common.issue_code IS NULL 
	OR common.issue_code = '';
    
-- update data crm_issue_area_correspond_tab_11
UPDATE crm_issue_area_correspond_tab_11 AS tab11
INNER JOIN crm_temp_issue_info AS issue_temp ON tab11.issue_code = issue_temp.CASE_ID 
SET tab11.issue_area_correspond_tab_11_cf_752_dept_code = issue_temp.APRV_DEPT_CODE,
tab11.issue_area_correspond_tab_11_cf_752_dept_name = issue_temp.APRV_DEPT_NAME,
tab11.issue_area_correspond_tab_11_cf_752_person_code = issue_temp.APRV_USER_CODE,
tab11.issue_area_correspond_tab_11_cf_752_person_name = issue_temp.APRV_USER_NAME,
tab11.issue_area_correspond_tab_11_cf_305_date = DATE_FORMAT( issue_temp.CRSP_REQ_APRV_DATETIME, '%Y-%m-%d' ),
tab11.issue_area_correspond_tab_11_cf_305_time = DATE_FORMAT( issue_temp.CRSP_REQ_APRV_DATETIME, '%H:%i' ),
tab11.issue_area_correspond_tab_11_cf_305_datetime = DATE_FORMAT( issue_temp.CRSP_REQ_APRV_DATETIME, '%Y-%m-%d %H:%i:%s' ),
tab11.issue_area_correspond_tab_11_cf_305_dept_code = issue_temp.CRSP_REQ_APRV_DEPT_CODE,
tab11.issue_area_correspond_tab_11_cf_305_dept_name = issue_temp.CRSP_REQ_APRV_DEPT_NAME,
tab11.issue_area_correspond_tab_11_cf_305_person_code = issue_temp.CRSP_REQ_APRV_USER_CODE,
tab11.issue_area_correspond_tab_11_cf_305_person_name = issue_temp.CRSP_REQ_APRV_USER_NAME,
tab11.issue_area_correspond_tab_11_cf_306_date = DATE_FORMAT( issue_temp.CRSP_COMP_APR_DATETIME, '%Y-%m-%d' ),
tab11.issue_area_correspond_tab_11_cf_306_time = DATE_FORMAT( issue_temp.CRSP_COMP_APR_DATETIME, '%H:%i' ),
tab11.issue_area_correspond_tab_11_cf_306_datetime = DATE_FORMAT( issue_temp.CRSP_COMP_APR_DATETIME, '%Y-%m-%d %H:%i:%s' ),
tab11.issue_area_correspond_tab_11_cf_306_dept_code = issue_temp.CRSP_COMP_APR_DEPT_CODE,
tab11.issue_area_correspond_tab_11_cf_306_dept_name = issue_temp.CRSP_COMP_APR_DEPT_NAME,
tab11.issue_area_correspond_tab_11_cf_306_person_code = issue_temp.CRSP_COMP_APR_USER_CODE,
tab11.issue_area_correspond_tab_11_cf_306_person_name = issue_temp.CRSP_COMP_APR_USER_NAME,
tab11.issue_area_correspond_tab_11_cf_967 = issue_temp.CUST_CLASS_NAME_1,
tab11.issue_area_correspond_tab_11_cf_974 = issue_temp.CUST_CLASS_NAME_2,
tab11.issue_area_correspond_tab_11_cf_975 = issue_temp.CUST_CLASS_NAME_3,
tab11.issue_area_correspond_tab_11_cf_302_code = issue_temp.CRSP_RESULT_CODE_1,
tab11.issue_area_correspond_tab_11_cf_302_name = issue_temp.CRSP_RESULT_NAME_1,
tab11.issue_area_correspond_tab_11_cf_312_date = DATE_FORMAT( issue_temp.SEND_CARD_DATE_1, '%Y-%m-%d' ),
tab11.issue_area_correspond_tab_11_cf_312_datetime = DATE_FORMAT( issue_temp.SEND_CARD_DATE_1, '%Y-%m-%d %H:%i:%s' ),
tab11.issue_area_correspond_tab_11_cf_312_time = DATE_FORMAT( issue_temp.SEND_CARD_DATE_1, '%H:%i' ),
tab11.issue_area_correspond_tab_11_cf_790_code = issue_temp.NAYSAY_REASON_CODE_1,
tab11.issue_area_correspond_tab_11_cf_790_name = issue_temp.NAYSAY_REASON_NAME_1,
tab11.issue_area_correspond_tab_11_cf_788_code = issue_temp.CRSP_RESULT_CODE_2,
tab11.issue_area_correspond_tab_11_cf_788_name = issue_temp.CRSP_RESULT_NAME_2,
tab11.issue_area_correspond_tab_11_cf_964_code = issue_temp.NAYSAY_REASON_CODE_2,
tab11.issue_area_correspond_tab_11_cf_964_name = issue_temp.NAYSAY_REASON_NAME_2,
tab11.issue_area_correspond_tab_11_cf_789_code= issue_temp.CRSP_RESULT_CODE_3,
tab11.issue_area_correspond_tab_11_cf_789_name = issue_temp.CRSP_RESULT_NAME_3,
tab11.issue_area_correspond_tab_11_cf_965_code = issue_temp.NAYSAY_REASON_CODE_3,
tab11.issue_area_correspond_tab_11_cf_965_name = issue_temp.NAYSAY_REASON_NAME_3,
tab11.issue_area_correspond_tab_11_cf_914_code = issue_temp.TMP_COST_DETAILS_CODE,
tab11.issue_area_correspond_tab_11_cf_914_name = issue_temp.TMP_COST_DETAILS_NAME,
tab11.issue_area_correspond_tab_11_cf_915 = issue_temp.TMP_COST,
tab11.issue_area_correspond_tab_11_cf_862_code = issue_temp.DELAY_REASON_CODE,
tab11.issue_area_correspond_tab_11_cf_862_name = issue_temp.DELAY_REASON_NAME,

tab11.issue_area_correspond_tab_11_cf_1305_date = DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d' ),
tab11.issue_area_correspond_tab_11_cf_1305_time = DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%H:%i' ),
tab11.issue_area_correspond_tab_11_cf_1305_datetime = DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d %H:%i:%s' ),
tab11.issue_area_correspond_tab_11_cf_1305_dept_code = issue_temp.REOPEN_DEPT_CODE,
tab11.issue_area_correspond_tab_11_cf_1305_dept_name = issue_temp.REOPEN_DEPT_NAME,
tab11.issue_area_correspond_tab_11_cf_1305_person_code = issue_temp.REOPEN_USER_CODE,
tab11.issue_area_correspond_tab_11_cf_1305_person_name = issue_temp.REOPEN_USER_NAME
 
WHERE
	tab11.issue_code IS NOT NULL;
	
-- update data crm_issue_area_correspond_tab_11
INSERT INTO crm_issue_area_correspond_tab_11 (
	issue_code,
	issue_area_correspond_tab_11_cf_752_dept_code,
issue_area_correspond_tab_11_cf_752_dept_name,
issue_area_correspond_tab_11_cf_752_person_code,
issue_area_correspond_tab_11_cf_752_person_name,
issue_area_correspond_tab_11_cf_305_date,
issue_area_correspond_tab_11_cf_305_time,
issue_area_correspond_tab_11_cf_305_datetime,
issue_area_correspond_tab_11_cf_305_dept_code,
issue_area_correspond_tab_11_cf_305_dept_name,
issue_area_correspond_tab_11_cf_305_person_code,
issue_area_correspond_tab_11_cf_305_person_name,
issue_area_correspond_tab_11_cf_306_date,
issue_area_correspond_tab_11_cf_306_time,
issue_area_correspond_tab_11_cf_306_datetime,
issue_area_correspond_tab_11_cf_306_dept_code,
issue_area_correspond_tab_11_cf_306_dept_name,
issue_area_correspond_tab_11_cf_306_person_code,
issue_area_correspond_tab_11_cf_306_person_name,
issue_area_correspond_tab_11_cf_967,
issue_area_correspond_tab_11_cf_974,
issue_area_correspond_tab_11_cf_975,
issue_area_correspond_tab_11_cf_302_code,
issue_area_correspond_tab_11_cf_302_name,
issue_area_correspond_tab_11_cf_312_date,
issue_area_correspond_tab_11_cf_312_datetime,
issue_area_correspond_tab_11_cf_312_time,
issue_area_correspond_tab_11_cf_790_code,
issue_area_correspond_tab_11_cf_790_name,
issue_area_correspond_tab_11_cf_788_code,
issue_area_correspond_tab_11_cf_788_name,
issue_area_correspond_tab_11_cf_964_code,
issue_area_correspond_tab_11_cf_964_name,
issue_area_correspond_tab_11_cf_789_code,
issue_area_correspond_tab_11_cf_789_name,
issue_area_correspond_tab_11_cf_965_code,
issue_area_correspond_tab_11_cf_965_name,
issue_area_correspond_tab_11_cf_914_code,
issue_area_correspond_tab_11_cf_914_name,
issue_area_correspond_tab_11_cf_915,
issue_area_correspond_tab_11_cf_862_code,
issue_area_correspond_tab_11_cf_862_name,

issue_area_correspond_tab_11_cf_1305_date,
issue_area_correspond_tab_11_cf_1305_time,
issue_area_correspond_tab_11_cf_1305_datetime,
issue_area_correspond_tab_11_cf_1305_dept_code,
issue_area_correspond_tab_11_cf_1305_dept_name,
issue_area_correspond_tab_11_cf_1305_person_code,
issue_area_correspond_tab_11_cf_1305_person_name
) SELECT
issue_temp.CASE_ID,
issue_temp.APRV_DEPT_CODE,
issue_temp.APRV_DEPT_NAME,
issue_temp.APRV_USER_CODE,
issue_temp.APRV_USER_NAME,
DATE_FORMAT( issue_temp.CRSP_REQ_APRV_DATETIME, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.CRSP_REQ_APRV_DATETIME, '%H:%i' ),
DATE_FORMAT( issue_temp.CRSP_REQ_APRV_DATETIME, '%Y-%m-%d %H:%i:%s' ),
issue_temp.CRSP_REQ_APRV_DEPT_CODE,
issue_temp.CRSP_REQ_APRV_DEPT_NAME,
issue_temp.CRSP_REQ_APRV_USER_CODE,
issue_temp.CRSP_REQ_APRV_USER_NAME,
DATE_FORMAT( issue_temp.CRSP_COMP_APR_DATETIME, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.CRSP_COMP_APR_DATETIME, '%H:%i' ),
DATE_FORMAT( issue_temp.CRSP_COMP_APR_DATETIME, '%Y-%m-%d %H:%i:%s' ),
issue_temp.CRSP_COMP_APR_DEPT_CODE,
issue_temp.CRSP_COMP_APR_DEPT_NAME,
issue_temp.CRSP_COMP_APR_USER_CODE,
issue_temp.CRSP_COMP_APR_USER_NAME,
issue_temp.CUST_CLASS_NAME_1,
issue_temp.CUST_CLASS_NAME_2,
issue_temp.CUST_CLASS_NAME_3,
issue_temp.CRSP_RESULT_CODE_1,
issue_temp.CRSP_RESULT_NAME_1,
DATE_FORMAT( issue_temp.SEND_CARD_DATE_1, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.SEND_CARD_DATE_1, '%Y-%m-%d %H:%i:%s' ),
DATE_FORMAT( issue_temp.SEND_CARD_DATE_1, '%H:%i' ),
issue_temp.NAYSAY_REASON_CODE_1,
issue_temp.NAYSAY_REASON_NAME_1,
issue_temp.CRSP_RESULT_CODE_2,
issue_temp.CRSP_RESULT_NAME_2,
issue_temp.NAYSAY_REASON_CODE_2,
issue_temp.NAYSAY_REASON_NAME_2,
issue_temp.CRSP_RESULT_CODE_3,
issue_temp.CRSP_RESULT_NAME_3,
issue_temp.NAYSAY_REASON_CODE_3,
issue_temp.NAYSAY_REASON_NAME_3,
issue_temp.TMP_COST_DETAILS_CODE,
issue_temp.TMP_COST_DETAILS_NAME,
issue_temp.TMP_COST,
issue_temp.DELAY_REASON_CODE,
issue_temp.DELAY_REASON_NAME,

DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%H:%i' ),
DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d %H:%i:%s' ),
issue_temp.REOPEN_DEPT_CODE,
issue_temp.REOPEN_DEPT_NAME,
issue_temp.REOPEN_USER_CODE,
issue_temp.REOPEN_USER_NAME
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_correspond_tab_11 AS tab11 ON issue_temp.CASE_ID = tab11.issue_code 
WHERE
	tab11.issue_code IS NULL 
	OR tab11.issue_code = '';
	
	
-- update data tab 8
UPDATE crm_issue_area_correspond_tab_8 AS tab8
INNER JOIN crm_temp_issue_info AS issue_temp ON tab8.issue_code = issue_temp.CASE_ID 
SET tab8.issue_area_correspond_tab_8_cf_710_date = DATE_FORMAT( issue_temp.FIRST_REPORT_DATE, '%Y-%m-%d' ),
tab8.issue_area_correspond_tab_8_cf_710_time = DATE_FORMAT( issue_temp.FIRST_REPORT_DATE, '%H:%i' ),
tab8.issue_area_correspond_tab_8_cf_710_datetime = DATE_FORMAT( issue_temp.FIRST_REPORT_DATE, '%Y-%m-%d %H:%i:%s' ),
tab8.issue_area_correspond_tab_8_cf_710_dept_code = issue_temp.FIRST_REPORT_DEPT_CODE,
tab8.issue_area_correspond_tab_8_cf_710_dept_name = issue_temp.FIRST_REPORT_DEPT_NAME,
tab8.issue_area_correspond_tab_8_cf_710_person_code = issue_temp.FIRST_REPORT_USER_CODE,
tab8.issue_area_correspond_tab_8_cf_710_person_name = issue_temp.FIRST_REPORT_USER_NAME,
-- tab8.issue_area_correspond_tab_8_cf_820_date = DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d' ),
-- tab8.issue_area_correspond_tab_8_cf_820_time = DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%H:%i' ),
-- tab8.issue_area_correspond_tab_8_cf_820_datetime = DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d %H:%i:%s' ),
-- tab8.issue_area_correspond_tab_8_cf_820_dept_code = issue_temp.REOPEN_DEPT_CODE,
-- tab8.issue_area_correspond_tab_8_cf_820_dept_name = issue_temp.REOPEN_DEPT_NAME,
-- tab8.issue_area_correspond_tab_8_cf_820_person_code = issue_temp.REOPEN_USER_CODE,
-- tab8.issue_area_correspond_tab_8_cf_820_person_name = issue_temp.REOPEN_USER_NAME,
tab8.issue_area_correspond_tab_8_cf_213_name = IF ( (issue_temp.ALARM_STOP_FLG = '' OR issue_temp.ALARM_STOP_FLG IS NULL), '必要',  IF ( issue_temp.ALARM_STOP_FLG = 1, '不要', issue_temp.ALARM_STOP_FLG ) ),
tab8.issue_area_correspond_tab_8_cf_213_code = IF ( (issue_temp.ALARM_STOP_FLG = '' OR issue_temp.ALARM_STOP_FLG IS NULL), '1',  IF ( issue_temp.ALARM_STOP_FLG = 1, 2, issue_temp.ALARM_STOP_FLG ) )
WHERE
	tab8.issue_code IS NOT NULL;
	
-- insert data tab 8
INSERT INTO crm_issue_area_correspond_tab_8 (
	issue_code,
	issue_area_correspond_tab_8_cf_710_date,
	issue_area_correspond_tab_8_cf_710_time,
	issue_area_correspond_tab_8_cf_710_datetime,
	issue_area_correspond_tab_8_cf_710_dept_code,
	issue_area_correspond_tab_8_cf_710_dept_name,
	issue_area_correspond_tab_8_cf_710_person_code,
	issue_area_correspond_tab_8_cf_710_person_name,
	-- issue_area_correspond_tab_8_cf_820_date,
	-- issue_area_correspond_tab_8_cf_820_time,
	-- issue_area_correspond_tab_8_cf_820_datetime,
	-- issue_area_correspond_tab_8_cf_820_dept_code,
	-- issue_area_correspond_tab_8_cf_820_dept_name,
	-- issue_area_correspond_tab_8_cf_820_person_code,
	-- issue_area_correspond_tab_8_cf_820_person_name,
	issue_area_correspond_tab_8_cf_213_name,
	issue_area_correspond_tab_8_cf_213_code
) SELECT
issue_temp.CASE_ID,
DATE_FORMAT( issue_temp.FIRST_REPORT_DATE, '%Y-%m-%d' ),
DATE_FORMAT( issue_temp.FIRST_REPORT_DATE, '%H:%i' ),
DATE_FORMAT( issue_temp.FIRST_REPORT_DATE, '%Y-%m-%d %H:%i:%s' ),
issue_temp.FIRST_REPORT_DEPT_CODE,
issue_temp.FIRST_REPORT_DEPT_NAME,
issue_temp.FIRST_REPORT_USER_CODE,
issue_temp.FIRST_REPORT_USER_NAME,
-- DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d' ),
-- DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%H:%i' ),
-- DATE_FORMAT( issue_temp.REOPEN_DATETIME, '%Y-%m-%d %H:%i:%s' ),
-- issue_temp.REOPEN_DEPT_CODE,
-- issue_temp.REOPEN_DEPT_NAME,
-- issue_temp.REOPEN_USER_CODE,
-- issue_temp.REOPEN_USER_NAME,
IF ( (issue_temp.ALARM_STOP_FLG = '' OR issue_temp.ALARM_STOP_FLG IS NULL), '必要',  IF ( issue_temp.ALARM_STOP_FLG = 1, '不要', issue_temp.ALARM_STOP_FLG ) ) as issue_area_correspond_tab_8_cf_213_name,
IF ( (issue_temp.ALARM_STOP_FLG = '' OR issue_temp.ALARM_STOP_FLG IS NULL), '1',  IF ( issue_temp.ALARM_STOP_FLG = 1, 2, issue_temp.ALARM_STOP_FLG ) ) as issue_area_correspond_tab_8_cf_213_code
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_correspond_tab_8 AS tab8 ON issue_temp.CASE_ID = tab8.issue_code 
WHERE
	tab8.issue_code IS NULL 
	OR tab8.issue_code = '';
	
-- update tab 1
UPDATE crm_issue_area_correspond_tab_1 AS tab1
INNER JOIN crm_temp_issue_info AS issue_temp ON tab1.issue_code = issue_temp.CASE_ID 
SET tab1.issue_area_correspond_tab_1_cf_89_multil_lv3_code = issue_temp.INQ_CLASS_CODE_3,
	tab1.issue_area_correspond_tab_1_cf_89_multil_lv1_name = issue_temp.INQ_CLASS_NAME_1,
	tab1.issue_area_correspond_tab_1_cf_89_multil_lv1_code = issue_temp.INQ_CLASS_CODE_1,
	tab1.issue_area_correspond_tab_1_cf_89_multil_lv2_name = issue_temp.INQ_CLASS_NAME_2,
	tab1.issue_area_correspond_tab_1_cf_89_multil_lv2_code = issue_temp.INQ_CLASS_CODE_2,
	tab1.issue_area_correspond_tab_1_cf_89_multil_lv3_name = issue_temp.INQ_CLASS_NAME_3,
	tab1.issue_area_correspond_tab_1_cf_227_code = issue_temp.INQ_KIND,
	tab1.issue_area_correspond_tab_1_cf_227_name = issue_temp.INQ_KIND_NAME,
	tab1.issue_area_correspond_tab_1_cf_1189_code = IF( IFNULL( issue_temp.RANK, '' ) = 1, '5', '' ),
	tab1.issue_area_correspond_tab_1_cf_1189_name = IF( IFNULL( issue_temp.RANK, '' ) = 1, 'A客推本判定', '' ),
	tab1.issue_area_correspond_tab_1_cf_1190_code = IF( IFNULL( issue_temp.RANK, '' ) = 2, '1', '' ),
	tab1.issue_area_correspond_tab_1_cf_1190_name = IF( IFNULL( issue_temp.RANK, '' ) = 2, '特A', '' ),
	tab1.issue_area_correspond_tab_1_cf_90_code = issue_temp.FEELINGS_CODE,
	tab1.issue_area_correspond_tab_1_cf_90_name = issue_temp.FEELINGS_NAME,
	tab1.issue_area_correspond_tab_1_cf_91_code = issue_temp.PL_CODE,
	tab1.issue_area_correspond_tab_1_cf_91_name = issue_temp.PL_NAME,
	tab1.issue_area_correspond_tab_1_cf_95_code = '',
	tab1.issue_area_correspond_tab_1_cf_95_name = '',
	tab1.issue_area_correspond_tab_1_cf_96 = issue_temp.CRSP_COMMENT,
	tab1.issue_area_correspond_tab_1_cf_96_search = search_field ( issue_temp.CRSP_COMMENT ),
	tab1.issue_area_correspond_tab_1_cf_880_code = issue_temp.KEYWORD_CODE,
	tab1.issue_area_correspond_tab_1_cf_880_name = issue_temp.KEYWORD_NAME
WHERE
	tab1.issue_code IS NOT NULL;
	
-- insert data tab 1
INSERT INTO crm_issue_area_correspond_tab_1 (
	issue_code,
	issue_area_correspond_tab_1_cf_89_multil_lv3_code,
	issue_area_correspond_tab_1_cf_89_multil_lv1_name,
	issue_area_correspond_tab_1_cf_89_multil_lv1_code,
	issue_area_correspond_tab_1_cf_89_multil_lv2_name,
	issue_area_correspond_tab_1_cf_89_multil_lv2_code,
	issue_area_correspond_tab_1_cf_89_multil_lv3_name,
	issue_area_correspond_tab_1_cf_227_code,
	issue_area_correspond_tab_1_cf_227_name,
	issue_area_correspond_tab_1_cf_1189_code,
	issue_area_correspond_tab_1_cf_1189_name,
	issue_area_correspond_tab_1_cf_1190_code,
	issue_area_correspond_tab_1_cf_1190_name,
	issue_area_correspond_tab_1_cf_90_code,
	issue_area_correspond_tab_1_cf_90_name,
	issue_area_correspond_tab_1_cf_91_code,
	issue_area_correspond_tab_1_cf_91_name,
	issue_area_correspond_tab_1_cf_95_code,
	issue_area_correspond_tab_1_cf_95_name,
	issue_area_correspond_tab_1_cf_96,
	issue_area_correspond_tab_1_cf_96_search,
	issue_area_correspond_tab_1_cf_880_code,
	issue_area_correspond_tab_1_cf_880_name
) SELECT
	issue_temp.CASE_ID,
	issue_temp.INQ_CLASS_CODE_3,
	issue_temp.INQ_CLASS_NAME_1,
	issue_temp.INQ_CLASS_CODE_1,
	issue_temp.INQ_CLASS_NAME_2,
	issue_temp.INQ_CLASS_CODE_2,
	issue_temp.INQ_CLASS_NAME_3,
	issue_temp.INQ_KIND,
	issue_temp.INQ_KIND_NAME,
	IF( IFNULL( issue_temp.RANK, '' ) = 1, '5', '' ),
	IF( IFNULL( issue_temp.RANK, '' ) = 1, 'A客推本判定', '' ),
	IF( IFNULL( issue_temp.RANK, '' ) = 2, '1', '' ),
	IF( IFNULL( issue_temp.RANK, '' ) = 2, '特A', '' ),
	issue_temp.FEELINGS_CODE,
	issue_temp.FEELINGS_NAME,
	issue_temp.PL_CODE,
	issue_temp.PL_NAME,
	'' AS issue_area_correspond_tab_1_cf_95_code,
	'' AS issue_area_correspond_tab_1_cf_95_name,
	issue_temp.CRSP_COMMENT,
	search_field ( issue_temp.CRSP_COMMENT ),
	issue_temp.KEYWORD_CODE,	
	issue_temp.KEYWORD_NAME
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_correspond_tab_1 AS tab1 ON issue_temp.CASE_ID = tab1.issue_code 
WHERE
	tab1.issue_code IS NULL 
	OR tab1.issue_code = '';
	
	
-- update data crm_issue_master_module_33_655
UPDATE crm_issue_master_module_33_655 AS master_mod_33_655
INNER JOIN crm_temp_issue_info AS issue_temp ON master_mod_33_655.issue_code = issue_temp.CASE_ID 
SET 
master_mod_33_655.issue_master_module_33_655_cf_677_182_master_category_1_code = issue_temp.PRODUCT_CLASS_CD_1,
master_mod_33_655.issue_master_module_33_655_cf_677_182_master_category_1_name = issue_temp.PRODUCT_CLASS_NAME_1,
issue_master_module_33_655_cf_677_182_master_category_2_code = issue_temp.PRODUCT_CLASS_CD_2,
issue_master_module_33_655_cf_677_182_master_category_2_name = issue_temp.PRODUCT_CLASS_NAME_2,
issue_master_module_33_655_cf_677_182_master_category_3_code = issue_temp.PRODUCT_CLASS_CD_3,
issue_master_module_33_655_cf_677_182_master_category_3_name = issue_temp.PRODUCT_CLASS_NAME_3,
issue_master_module_33_655_cf_677_182_master_category_4_code = issue_temp.PRODUCT_CLASS_CD_4,
issue_master_module_33_655_cf_677_182_master_category_4_name = issue_temp.PRODUCT_CLASS_NAME_4,
issue_master_module_33_655_cf_677_182_master_category_5_code = issue_temp.PRODUCT_CLASS_CD_5,
issue_master_module_33_655_cf_677_182_master_category_5_name = issue_temp.PRODUCT_CLASS_NAME_5,
issue_master_module_33_655_cf_678_182_master_category_1_code = issue_temp.PRODUCT_CLASS_CD_1,
issue_master_module_33_655_cf_678_182_master_category_1_name = issue_temp.PRODUCT_CLASS_NAME_1,
master_mod_33_655.issue_master_module_33_655_cf_678_182_master_category_2_code = issue_temp.PRODUCT_CLASS_CD_2,
master_mod_33_655.issue_master_module_33_655_cf_678_182_master_category_2_name = issue_temp.PRODUCT_CLASS_NAME_2,
issue_master_module_33_655_cf_678_182_master_category_3_code = issue_temp.PRODUCT_CLASS_CD_3,
issue_master_module_33_655_cf_678_182_master_category_3_name = issue_temp.PRODUCT_CLASS_NAME_3,
issue_master_module_33_655_cf_678_182_master_category_4_code = issue_temp.PRODUCT_CLASS_CD_4,
issue_master_module_33_655_cf_678_182_master_category_4_name = issue_temp.PRODUCT_CLASS_NAME_4,
issue_master_module_33_655_cf_678_182_master_category_5_code = issue_temp.PRODUCT_CLASS_CD_5,
issue_master_module_33_655_cf_678_182_master_category_5_name = issue_temp.PRODUCT_CLASS_NAME_5,
issue_master_module_33_655_cf_679_182_master_category_1_code = issue_temp.PRODUCT_CLASS_CD_1,
issue_master_module_33_655_cf_679_182_master_category_1_name = issue_temp.PRODUCT_CLASS_NAME_1,
issue_master_module_33_655_cf_679_182_master_category_2_code = issue_temp.PRODUCT_CLASS_CD_2,
issue_master_module_33_655_cf_679_182_master_category_2_name = issue_temp.PRODUCT_CLASS_NAME_2,
master_mod_33_655.issue_master_module_33_655_cf_679_182_master_category_3_code = issue_temp.PRODUCT_CLASS_CD_3,
master_mod_33_655.issue_master_module_33_655_cf_679_182_master_category_3_name = issue_temp.PRODUCT_CLASS_NAME_3,
issue_master_module_33_655_cf_679_182_master_category_4_code = issue_temp.PRODUCT_CLASS_CD_4,
issue_master_module_33_655_cf_679_182_master_category_4_name = issue_temp.PRODUCT_CLASS_NAME_4,
issue_master_module_33_655_cf_679_182_master_category_5_code = issue_temp.PRODUCT_CLASS_CD_5,
issue_master_module_33_655_cf_679_182_master_category_5_name = issue_temp.PRODUCT_CLASS_NAME_5,
issue_master_module_33_655_cf_680_182_master_category_1_code = issue_temp.PRODUCT_CLASS_CD_1,
issue_master_module_33_655_cf_680_182_master_category_1_name = issue_temp.PRODUCT_CLASS_NAME_1,
issue_master_module_33_655_cf_680_182_master_category_2_code = issue_temp.PRODUCT_CLASS_CD_2,
issue_master_module_33_655_cf_680_182_master_category_2_name = issue_temp.PRODUCT_CLASS_NAME_2,
issue_master_module_33_655_cf_680_182_master_category_3_code = issue_temp.PRODUCT_CLASS_CD_3,
issue_master_module_33_655_cf_680_182_master_category_3_name = issue_temp.PRODUCT_CLASS_NAME_3,
master_mod_33_655.issue_master_module_33_655_cf_680_182_master_category_4_code = issue_temp.PRODUCT_CLASS_CD_4,
master_mod_33_655.issue_master_module_33_655_cf_680_182_master_category_4_name = issue_temp.PRODUCT_CLASS_NAME_4,
issue_master_module_33_655_cf_680_182_master_category_5_code = issue_temp.PRODUCT_CLASS_CD_5,
issue_master_module_33_655_cf_680_182_master_category_5_name = issue_temp.PRODUCT_CLASS_NAME_5,
issue_master_module_33_655_cf_681_182_master_category_1_code = issue_temp.PRODUCT_CLASS_CD_1,
issue_master_module_33_655_cf_681_182_master_category_1_name = issue_temp.PRODUCT_CLASS_NAME_1,
issue_master_module_33_655_cf_681_182_master_category_2_code = issue_temp.PRODUCT_CLASS_CD_2,
issue_master_module_33_655_cf_681_182_master_category_2_name = issue_temp.PRODUCT_CLASS_NAME_2,
issue_master_module_33_655_cf_681_182_master_category_3_code = issue_temp.PRODUCT_CLASS_CD_3,
issue_master_module_33_655_cf_681_182_master_category_3_name = issue_temp.PRODUCT_CLASS_NAME_3,
issue_master_module_33_655_cf_681_182_master_category_4_code = issue_temp.PRODUCT_CLASS_CD_4,
issue_master_module_33_655_cf_681_182_master_category_4_name = issue_temp.PRODUCT_CLASS_NAME_4,
master_mod_33_655.issue_master_module_33_655_cf_681_182_master_category_5_code = issue_temp.PRODUCT_CLASS_CD_5,
master_mod_33_655.issue_master_module_33_655_cf_681_182_master_category_5_name = issue_temp.PRODUCT_CLASS_NAME_5,
master_mod_33_655.issue_master_module_33_655_cf_657_203 = issue_temp.PRODUCT_CODE,
master_mod_33_655.issue_master_module_33_655_cf_674_204 = issue_temp.PRODUCT_NAME 
WHERE
	master_mod_33_655.issue_code IS NOT NULL;
	
-- insert data crm_issue_master_module_33_655
INSERT INTO crm_issue_master_module_33_655 ( 
issue_code, 
issue_master_module_33_655_cf_677_182_master_category_1_code,
issue_master_module_33_655_cf_677_182_master_category_1_name,
issue_master_module_33_655_cf_677_182_master_category_2_code,
issue_master_module_33_655_cf_677_182_master_category_2_name,
issue_master_module_33_655_cf_677_182_master_category_3_code,
issue_master_module_33_655_cf_677_182_master_category_3_name,
issue_master_module_33_655_cf_677_182_master_category_4_code,
issue_master_module_33_655_cf_677_182_master_category_4_name,
issue_master_module_33_655_cf_677_182_master_category_5_code,
issue_master_module_33_655_cf_677_182_master_category_5_name,
issue_master_module_33_655_cf_678_182_master_category_1_code,
issue_master_module_33_655_cf_678_182_master_category_1_name,
issue_master_module_33_655_cf_678_182_master_category_2_code,
issue_master_module_33_655_cf_678_182_master_category_2_name,
issue_master_module_33_655_cf_678_182_master_category_3_code,
issue_master_module_33_655_cf_678_182_master_category_3_name,
issue_master_module_33_655_cf_678_182_master_category_4_code,
issue_master_module_33_655_cf_678_182_master_category_4_name,
issue_master_module_33_655_cf_678_182_master_category_5_code,
issue_master_module_33_655_cf_678_182_master_category_5_name,
issue_master_module_33_655_cf_679_182_master_category_1_code,
issue_master_module_33_655_cf_679_182_master_category_1_name,
issue_master_module_33_655_cf_679_182_master_category_2_code,
issue_master_module_33_655_cf_679_182_master_category_2_name,
issue_master_module_33_655_cf_679_182_master_category_3_code,
issue_master_module_33_655_cf_679_182_master_category_3_name,
issue_master_module_33_655_cf_679_182_master_category_4_code,
issue_master_module_33_655_cf_679_182_master_category_4_name,
issue_master_module_33_655_cf_679_182_master_category_5_code,
issue_master_module_33_655_cf_679_182_master_category_5_name,
issue_master_module_33_655_cf_680_182_master_category_1_code,
issue_master_module_33_655_cf_680_182_master_category_1_name,
issue_master_module_33_655_cf_680_182_master_category_2_code,
issue_master_module_33_655_cf_680_182_master_category_2_name,
issue_master_module_33_655_cf_680_182_master_category_3_code,
issue_master_module_33_655_cf_680_182_master_category_3_name,
issue_master_module_33_655_cf_680_182_master_category_4_code,
issue_master_module_33_655_cf_680_182_master_category_4_name,
issue_master_module_33_655_cf_680_182_master_category_5_code,
issue_master_module_33_655_cf_680_182_master_category_5_name,
issue_master_module_33_655_cf_681_182_master_category_1_code,
issue_master_module_33_655_cf_681_182_master_category_1_name,
issue_master_module_33_655_cf_681_182_master_category_2_code,
issue_master_module_33_655_cf_681_182_master_category_2_name,
issue_master_module_33_655_cf_681_182_master_category_3_code,
issue_master_module_33_655_cf_681_182_master_category_3_name,
issue_master_module_33_655_cf_681_182_master_category_4_code,
issue_master_module_33_655_cf_681_182_master_category_4_name,
issue_master_module_33_655_cf_681_182_master_category_5_code,
issue_master_module_33_655_cf_681_182_master_category_5_name,
issue_master_module_33_655_cf_657_203, 
issue_master_module_33_655_cf_674_204 ) 
SELECT
issue_temp.CASE_ID,
issue_temp.PRODUCT_CLASS_CD_1 as issue_master_module_33_655_cf_677_182_master_category_1_code,
issue_temp.PRODUCT_CLASS_NAME_1 as issue_master_module_33_655_cf_677_182_master_category_1_name,
issue_temp.PRODUCT_CLASS_CD_2 as issue_master_module_33_655_cf_677_182_master_category_2_code,
 issue_temp.PRODUCT_CLASS_NAME_2 as issue_master_module_33_655_cf_677_182_master_category_2_name,
 issue_temp.PRODUCT_CLASS_CD_3 as issue_master_module_33_655_cf_677_182_master_category_3_code,
 issue_temp.PRODUCT_CLASS_NAME_3 as issue_master_module_33_655_cf_677_182_master_category_3_name,
 issue_temp.PRODUCT_CLASS_CD_4 as issue_master_module_33_655_cf_677_182_master_category_4_code,
 issue_temp.PRODUCT_CLASS_NAME_4 as issue_master_module_33_655_cf_677_182_master_category_4_name,
 issue_temp.PRODUCT_CLASS_CD_5 as issue_master_module_33_655_cf_677_182_master_category_5_code,
 issue_temp.PRODUCT_CLASS_NAME_5 as issue_master_module_33_655_cf_677_182_master_category_5_name,
 issue_temp.PRODUCT_CLASS_CD_1 as issue_master_module_33_655_cf_678_182_master_category_1_code,
 issue_temp.PRODUCT_CLASS_NAME_1 as issue_master_module_33_655_cf_678_182_master_category_1_name,
 issue_temp.PRODUCT_CLASS_CD_2 as issue_master_module_33_655_cf_678_182_master_category_2_code,
 issue_temp.PRODUCT_CLASS_NAME_2 as issue_master_module_33_655_cf_678_182_master_category_2_name,
 issue_temp.PRODUCT_CLASS_CD_3 as issue_master_module_33_655_cf_678_182_master_category_3_code,
 issue_temp.PRODUCT_CLASS_NAME_3 as issue_master_module_33_655_cf_678_182_master_category_3_name,
 issue_temp.PRODUCT_CLASS_CD_4 as issue_master_module_33_655_cf_678_182_master_category_4_code,
 issue_temp.PRODUCT_CLASS_NAME_4 as issue_master_module_33_655_cf_678_182_master_category_4_name,
 issue_temp.PRODUCT_CLASS_CD_5 as issue_master_module_33_655_cf_678_182_master_category_5_code,
 issue_temp.PRODUCT_CLASS_NAME_5 as issue_master_module_33_655_cf_678_182_master_category_5_name,
 issue_temp.PRODUCT_CLASS_CD_1 as issue_master_module_33_655_cf_679_182_master_category_1_code,
 issue_temp.PRODUCT_CLASS_NAME_1 as issue_master_module_33_655_cf_679_182_master_category_1_name,
 issue_temp.PRODUCT_CLASS_CD_2 as issue_master_module_33_655_cf_679_182_master_category_2_code,
 issue_temp.PRODUCT_CLASS_NAME_2 as issue_master_module_33_655_cf_679_182_master_category_2_name,
 issue_temp.PRODUCT_CLASS_CD_3 as issue_master_module_33_655_cf_679_182_master_category_3_code,
 issue_temp.PRODUCT_CLASS_NAME_3 as issue_master_module_33_655_cf_679_182_master_category_3_name,
 issue_temp.PRODUCT_CLASS_CD_4 as issue_master_module_33_655_cf_679_182_master_category_4_code,
 issue_temp.PRODUCT_CLASS_NAME_4 as issue_master_module_33_655_cf_679_182_master_category_4_name,
 issue_temp.PRODUCT_CLASS_CD_5 as issue_master_module_33_655_cf_679_182_master_category_5_code,
 issue_temp.PRODUCT_CLASS_NAME_5 as issue_master_module_33_655_cf_679_182_master_category_5_name,
 issue_temp.PRODUCT_CLASS_CD_1 as issue_master_module_33_655_cf_680_182_master_category_1_code,
 issue_temp.PRODUCT_CLASS_NAME_1 as issue_master_module_33_655_cf_680_182_master_category_1_name,
 issue_temp.PRODUCT_CLASS_CD_2 as issue_master_module_33_655_cf_680_182_master_category_2_code,
 issue_temp.PRODUCT_CLASS_NAME_2 as issue_master_module_33_655_cf_680_182_master_category_2_name,
 issue_temp.PRODUCT_CLASS_CD_3 as issue_master_module_33_655_cf_680_182_master_category_3_code,
 issue_temp.PRODUCT_CLASS_NAME_3 as issue_master_module_33_655_cf_680_182_master_category_3_name,
 issue_temp.PRODUCT_CLASS_CD_4 as issue_master_module_33_655_cf_680_182_master_category_4_code,
 issue_temp.PRODUCT_CLASS_NAME_4 as issue_master_module_33_655_cf_680_182_master_category_4_name,
 issue_temp.PRODUCT_CLASS_CD_5 as issue_master_module_33_655_cf_680_182_master_category_5_code,
 issue_temp.PRODUCT_CLASS_NAME_5 as issue_master_module_33_655_cf_680_182_master_category_5_name,
 issue_temp.PRODUCT_CLASS_CD_1 as issue_master_module_33_655_cf_681_182_master_category_1_code,
 issue_temp.PRODUCT_CLASS_NAME_1 as issue_master_module_33_655_cf_681_182_master_category_1_name,
 issue_temp.PRODUCT_CLASS_CD_2 as issue_master_module_33_655_cf_681_182_master_category_2_code,
 issue_temp.PRODUCT_CLASS_NAME_2 as issue_master_module_33_655_cf_681_182_master_category_2_name,
 issue_temp.PRODUCT_CLASS_CD_3 as issue_master_module_33_655_cf_681_182_master_category_3_code,
 issue_temp.PRODUCT_CLASS_NAME_3 as issue_master_module_33_655_cf_681_182_master_category_3_name,
 issue_temp.PRODUCT_CLASS_CD_4 as issue_master_module_33_655_cf_681_182_master_category_4_code,
 issue_temp.PRODUCT_CLASS_NAME_4 as issue_master_module_33_655_cf_681_182_master_category_4_name,
 issue_temp.PRODUCT_CLASS_CD_5 as issue_master_module_33_655_cf_681_182_master_category_5_code,
 issue_temp.PRODUCT_CLASS_NAME_5 as issue_master_module_33_655_cf_681_182_master_category_5_name,
issue_temp.PRODUCT_CODE,
issue_temp.PRODUCT_NAME 
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_master_module_33_655 AS master_mod_33_655 ON issue_temp.CASE_ID = master_mod_33_655.issue_code 
WHERE
	master_mod_33_655.issue_code IS NULL 
	OR master_mod_33_655.issue_code = '';
	
-- update issue_master_module_33_655_record_id
UPDATE crm_issue_master_module_33_655 as module_33_655 INNER JOIN crm_master_33 as mst33 ON (
	module_33_655.issue_master_module_33_655_cf_677_182_master_category_1_code = mst33.master_33_cf_182_master_category_1_code
	AND module_33_655.issue_master_module_33_655_cf_677_182_master_category_2_code = mst33.master_33_cf_182_master_category_2_code
	AND module_33_655.issue_master_module_33_655_cf_677_182_master_category_3_code = mst33.master_33_cf_182_master_category_3_code
	AND module_33_655.issue_master_module_33_655_cf_677_182_master_category_4_code = mst33.master_33_cf_182_master_category_4_code
	AND module_33_655.issue_master_module_33_655_cf_677_182_master_category_5_code = mst33.master_33_cf_182_master_category_5_code
	AND module_33_655.issue_master_module_33_655_cf_657_203 = mst33.master_33_cf_203
)
INNER JOIN crm_issue ON (module_33_655.issue_code = crm_issue.issue_code AND crm_issue.issue_migration_no = 1)
set issue_master_module_33_655_record_id = mst33.master_33_id;


-- update data cust1
UPDATE crm_issue_cust AS cust
INNER JOIN crm_temp_issue_info AS issue_temp ON ( cust.issue_cust_issue_code = issue_temp.CASE_ID AND cust.issue_cust_no_order = 1 ) 
SET cust.issue_cust_cf_990 = issue_temp.CUST_NAME_1,
cust.issue_cust_cf_991 = issue_temp.CUST_NAME_KANA_1,
cust.issue_cust_cf_106 = issue_temp.CUST_COMPANY_NAME_1,
 cust.issue_cust_cf_884 = issue_temp.CUS_CORP_NAME_KANA_1,
cust.issue_cust_cooperation_code = issue_temp.CUST_CLASS_CODE_1,
cust.issue_cust_cooperation_name = issue_temp.CUST_CLASS_NAME_1,
cust.issue_cust_gender_code = issue_temp.CUST_SEX_CODE_1,
cust.issue_cust_gender_name = issue_temp.CUST_SEX_NAME_1,
cust.issue_cust_age_code = issue_temp.CUST_GENERATION_CODE_1,
cust.issue_cust_age_name = issue_temp.CUST_GENERATION_NAME_1,
 cust.issue_cust_class_tel1_code = issue_temp.CUST_TEL_CLASS_CODE_1,
 cust.issue_cust_class_tel1_name = issue_temp.CUST_TEL_CLASS_NAME_1,
 cust.issue_cust_tel1 = issue_temp.CUST_TEL_1,
 cust.issue_cust_cf_986 = issue_temp.CUS_FAX_1,
cust.issue_cust_prefecture_code = issue_temp.CUST_FUKEN_CODE_1,
cust.issue_cust_prefecture_name = issue_temp.CUST_FUKEN_NAME_1,
 cust.issue_cust_mail1 = issue_temp.CUS_MAIL_1,
-- cust.issue_cust_tel1 = issue_temp.RECEIVE_TEL,
cust.issue_cust_cf_111_code = issue_temp.CUST_LANGUAGE_CODE,
cust.issue_cust_cf_111_name = issue_temp.CUST_LANGUAGE_NAME,
cust.issue_cust_cf_112 = issue_temp.CUST_COUNTRY,
cust.issue_cust_cf_904 = issue_temp.CUS_DISTIN_NAME_1,
cust.issue_cust_zipcode = issue_temp.CUS_ZIPCODE_1,
cust.issue_cust_address1 = issue_temp.CUS_HOME_ADDR_1_1,
cust.issue_cust_address2 = issue_temp.CUS_HOME_ADDR_2_1,
cust.issue_cust_cf_988 = issue_temp.CUS_AFTER_ADDR_1,
cust.issue_cust_cf_107 = issue_temp.CUS_OTHER_ADDR_1,
cust.issue_cust_cf_987 = issue_temp.CUS_OTHER_FAX_1,
cust.issue_cust_cf_1272 = issue_temp.CUS_NOTE_1,
cust.issue_cust_cf_1272_search = search_field(issue_temp.CUS_NOTE_1),
cust.issue_cust_special_code = issue_temp.CUS_SHARE_CLASSIFICATION_CODE_1,
cust.issue_cust_special_name = issue_temp.CUS_SHARE_CLASSIFICATION_NAME_1,
cust.issue_cust_cf_108_code = IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 1, 1, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 2, 2, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 0, 4, ''))),
cust.issue_cust_cf_108_name = IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 1, '◎：基本ここにかける', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 2, '○：掛けても良い', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 0, '×：架けてはいけない', '')))
WHERE
	cust.issue_cust_issue_code IS NOT NULL;
	
-- insert data cust1
INSERT INTO crm_issue_cust (
	issue_cust_issue_code,
	issue_cust_cf_990,
	issue_cust_cf_991,
	issue_cust_cf_106,
	 issue_cust_cf_884,
	issue_cust_cooperation_code,
	issue_cust_cooperation_name,
	issue_cust_gender_code,
	issue_cust_gender_name,
	issue_cust_age_code,
	issue_cust_age_name,
	 issue_cust_class_tel1_code,
	 issue_cust_class_tel1_name,
	 issue_cust_tel1,
	 issue_cust_cf_986,
	issue_cust_prefecture_code,
	issue_cust_prefecture_name,
	 issue_cust_mail1,
	-- issue_cust_tel1,
	issue_cust_cf_111_code,
	issue_cust_cf_111_name,
	issue_cust_cf_112,
	issue_cust_cf_904,
	issue_cust_zipcode,
	issue_cust_address1,
	issue_cust_address2,
	issue_cust_cf_988,
	issue_cust_cf_107,
	issue_cust_cf_987,
	issue_cust_cf_1272,
	issue_cust_cf_1272_search,
	issue_cust_special_code,
	issue_cust_special_name,
	issue_cust_cf_108_code,
	issue_cust_cf_108_name,
	issue_cust_no_order 
) SELECT
issue_temp.CASE_ID,
issue_temp.CUST_NAME_1,
issue_temp.CUST_NAME_KANA_1,
issue_temp.CUST_COMPANY_NAME_1,
 issue_temp.CUS_CORP_NAME_KANA_1,
issue_temp.CUST_CLASS_CODE_1,
issue_temp.CUST_CLASS_NAME_1,
issue_temp.CUST_SEX_CODE_1,
issue_temp.CUST_SEX_NAME_1,
issue_temp.CUST_GENERATION_CODE_1,
issue_temp.CUST_GENERATION_NAME_1,
 issue_temp.CUST_TEL_CLASS_CODE_1,
 issue_temp.CUST_TEL_CLASS_NAME_1,
 issue_temp.CUST_TEL_1,
 issue_temp.CUS_FAX_1,
issue_temp.CUST_FUKEN_CODE_1,
issue_temp.CUST_FUKEN_NAME_1,
 issue_temp.CUS_MAIL_1,
-- issue_temp.RECEIVE_TEL,
issue_temp.CUST_LANGUAGE_CODE,
issue_temp.CUST_LANGUAGE_NAME,
issue_temp.CUST_COUNTRY,
issue_temp.CUS_DISTIN_NAME_1,
issue_temp.CUS_ZIPCODE_1,
issue_temp.CUS_HOME_ADDR_1_1,
issue_temp.CUS_HOME_ADDR_2_1,
issue_temp.CUS_AFTER_ADDR_1,
issue_temp.CUS_OTHER_ADDR_1,
issue_temp.CUS_OTHER_FAX_1,
issue_temp.CUS_NOTE_1,
search_field(issue_temp.CUS_NOTE_1),
issue_temp.CUS_SHARE_CLASSIFICATION_CODE_1,
issue_temp.CUS_SHARE_CLASSIFICATION_NAME_1,
IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 1, 1, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 2, 2, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 0, 4, ''))),
IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 1, '◎：基本ここにかける', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 2, '○：掛けても良い', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_1, '') = 0, '×：架けてはいけない', ''))),
1 as issue_cust_no_order
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_cust AS cust ON issue_temp.CASE_ID = cust.issue_cust_issue_code 
	AND cust.issue_cust_no_order = 1 
WHERE
	( cust.issue_cust_issue_code IS NULL OR cust.issue_cust_issue_code = '' );
	
	
-- update data cust2
UPDATE crm_issue_cust AS cust
INNER JOIN crm_temp_issue_info AS issue_temp ON ( cust.issue_cust_issue_code = issue_temp.CASE_ID AND cust.issue_cust_no_order = 2) 
SET 
cust.issue_cust_cf_990 = issue_temp.CUST_NAME_2,
cust.issue_cust_cf_991 = issue_temp.CUST_NAME_KANA_2,
cust.issue_cust_cf_106 = issue_temp.CUST_COMPANY_NAME_2,
 cust.issue_cust_cf_884 = issue_temp.CUS_CORP_NAME_KANA_2,
cust.issue_cust_cooperation_code = issue_temp.CUST_CLASS_CODE_2,
cust.issue_cust_cooperation_name = issue_temp.CUST_CLASS_NAME_2,
cust.issue_cust_gender_code = issue_temp.CUST_SEX_CODE_2,
cust.issue_cust_gender_name = issue_temp.CUST_SEX_NAME_2,
cust.issue_cust_age_code = issue_temp.CUST_GENERATION_CODE_2,
cust.issue_cust_age_name = issue_temp.CUST_GENERATION_NAME_2,
 cust.issue_cust_class_tel1_code = issue_temp.CUST_TEL_CLASS_CODE_2,
 cust.issue_cust_class_tel1_name = issue_temp.CUST_TEL_CLASS_NAME_2,
 cust.issue_cust_tel1 = issue_temp.CUST_TEL_2,
 cust.issue_cust_cf_986 = issue_temp.CUS_FAX_2,
cust.issue_cust_prefecture_code = issue_temp.CUST_FUKEN_CODE_2,
cust.issue_cust_prefecture_name = issue_temp.CUST_FUKEN_NAME_2,
cust.issue_cust_cf_904 = issue_temp.CUS_DISTIN_NAME_2,
cust.issue_cust_zipcode = issue_temp.CUS_ZIPCODE_2,
cust.issue_cust_address1 = issue_temp.CUS_HOME_ADDR_1_2,
cust.issue_cust_address2 = issue_temp.CUS_HOME_ADDR_2_2,
cust.issue_cust_cf_988 = issue_temp.CUS_AFTER_ADDR_2,
cust.issue_cust_cf_107 = issue_temp.CUS_OTHER_ADDR_2,
cust.issue_cust_cf_987 = issue_temp.CUS_OTHER_FAX_2,
 cust.issue_cust_mail1 = issue_temp.CUS_MAIL_2,
cust.issue_cust_cf_1272 = issue_temp.CUS_NOTE_2,
cust.issue_cust_cf_1272_search = search_field(issue_temp.CUS_NOTE_2),
cust.issue_cust_special_code = issue_temp.CUS_SHARE_CLASSIFICATION_CODE_2,
cust.issue_cust_special_name = issue_temp.CUS_SHARE_CLASSIFICATION_NAME_2,
cust.issue_cust_cf_108_code = IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 1, 1, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 2, 2, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 0, 4, ''))),
cust.issue_cust_cf_108_name = IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 1, '◎：基本ここにかける', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 2, '○：掛けても良い', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 0, '×：架けてはいけない', '')))
WHERE
	cust.issue_cust_issue_code IS NOT NULL;
	
-- insert data cust2
INSERT INTO crm_issue_cust (
	issue_cust_issue_code,
	issue_cust_cf_990,
	issue_cust_cf_991,
	issue_cust_cf_106,
	 issue_cust_cf_884,
	issue_cust_cooperation_code,
	issue_cust_cooperation_name,
	issue_cust_gender_code,
	issue_cust_gender_name,
	issue_cust_age_code,
	issue_cust_age_name,
	 issue_cust_class_tel1_code,
	 issue_cust_class_tel1_name,
	 issue_cust_tel1,
	 issue_cust_cf_986,
	issue_cust_prefecture_code,
	issue_cust_prefecture_name,
	 issue_cust_mail1,
	issue_cust_cf_904,
	issue_cust_zipcode,
	issue_cust_address1,
	issue_cust_address2,
	issue_cust_cf_988,
	issue_cust_cf_107,
	issue_cust_cf_987,
	issue_cust_cf_1272,
	issue_cust_cf_1272_search,
	issue_cust_special_code,
	issue_cust_special_name,
	issue_cust_cf_108_code,
	issue_cust_cf_108_name,
	issue_cust_no_order	
) SELECT
issue_temp.CASE_ID,
issue_temp.CUST_NAME_2,
issue_temp.CUST_NAME_KANA_2,
issue_temp.CUST_COMPANY_NAME_2,
 issue_temp.CUS_CORP_NAME_KANA_2,
issue_temp.CUST_CLASS_CODE_2,
issue_temp.CUST_CLASS_NAME_2,
issue_temp.CUST_SEX_CODE_2,
issue_temp.CUST_SEX_NAME_2,
issue_temp.CUST_GENERATION_CODE_2,
issue_temp.CUST_GENERATION_NAME_2,
 issue_temp.CUST_TEL_CLASS_CODE_2,
 issue_temp.CUST_TEL_CLASS_NAME_2,
 issue_temp.CUST_TEL_2,
 issue_temp.CUS_FAX_2,
issue_temp.CUST_FUKEN_CODE_2,
issue_temp.CUST_FUKEN_NAME_2,
 issue_temp.CUS_MAIL_2,
issue_temp.CUS_DISTIN_NAME_2,
issue_temp.CUS_ZIPCODE_2,
issue_temp.CUS_HOME_ADDR_1_2,
issue_temp.CUS_HOME_ADDR_2_2,
issue_temp.CUS_AFTER_ADDR_2,
issue_temp.CUS_OTHER_ADDR_2,
issue_temp.CUS_OTHER_FAX_2,
issue_temp.CUS_NOTE_2,
search_field(issue_temp.CUS_NOTE_2),
issue_temp.CUS_SHARE_CLASSIFICATION_CODE_2,
issue_temp.CUS_SHARE_CLASSIFICATION_NAME_2,
IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 1, 1, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 2, 2, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 0, 4, ''))),
IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 1, '◎：基本ここにかける', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 2, '○：掛けても良い', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_2, '') = 0, '×：架けてはいけない', ''))),
2 as issue_cust_no_order
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_cust AS cust ON issue_temp.CASE_ID = cust.issue_cust_issue_code AND cust.issue_cust_no_order = 2
WHERE
	( cust.issue_cust_issue_code IS NULL OR cust.issue_cust_issue_code = '' );
	
	
-- update data cust3
UPDATE crm_issue_cust AS cust
INNER JOIN crm_temp_issue_info AS issue_temp ON ( cust.issue_cust_issue_code = issue_temp.CASE_ID AND cust.issue_cust_no_order = 3) 
SET 
cust.issue_cust_cf_990 = issue_temp.CUST_NAME_3,
cust.issue_cust_cf_991 = issue_temp.CUST_NAME_KANA_3,
cust.issue_cust_cf_106 = issue_temp.CUST_COMPANY_NAME_3,
 cust.issue_cust_cf_884 = issue_temp.CUS_CORP_NAME_KANA_3,
cust.issue_cust_cooperation_code = issue_temp.CUST_CLASS_CODE_3,
cust.issue_cust_cooperation_name = issue_temp.CUST_CLASS_NAME_3,
cust.issue_cust_gender_code = issue_temp.CUST_SEX_CODE_3,
cust.issue_cust_gender_name = issue_temp.CUST_SEX_NAME_3,
cust.issue_cust_age_code = issue_temp.CUST_GENERATION_CODE_3,
cust.issue_cust_age_name = issue_temp.CUST_GENERATION_NAME_3,
 cust.issue_cust_class_tel1_code = issue_temp.CUST_TEL_CLASS_CODE_3,
 cust.issue_cust_class_tel1_name = issue_temp.CUST_TEL_CLASS_NAME_3,
 cust.issue_cust_tel1 = issue_temp.CUST_TEL_3,
 cust.issue_cust_cf_986 = issue_temp.CUS_FAX_3,
cust.issue_cust_prefecture_code = issue_temp.CUST_FUKEN_CODE_3,
cust.issue_cust_prefecture_name = issue_temp.CUST_FUKEN_NAME_3,
cust.issue_cust_cf_904 = issue_temp.CUS_DISTIN_NAME_3,
cust.issue_cust_zipcode = issue_temp.CUS_ZIPCODE_3,
cust.issue_cust_address1 = issue_temp.CUS_HOME_ADDR_1_3,
cust.issue_cust_address2 = issue_temp.CUS_HOME_ADDR_2_3,
cust.issue_cust_cf_988 = issue_temp.CUS_AFTER_ADDR_3,
cust.issue_cust_cf_107 = issue_temp.CUS_OTHER_ADDR_3,
cust.issue_cust_cf_987 = issue_temp.CUS_OTHER_FAX_3,
 cust.issue_cust_mail1 = issue_temp.CUS_MAIL_3,
cust.issue_cust_cf_1272 = issue_temp.CUS_NOTE_3,
cust.issue_cust_cf_1272_search = search_field(issue_temp.CUS_NOTE_3),
cust.issue_cust_special_code = issue_temp.CUS_SHARE_CLASSIFICATION_CODE_3,
cust.issue_cust_special_name = issue_temp.CUS_SHARE_CLASSIFICATION_NAME_3,
cust.issue_cust_cf_108_code = IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 1, 1, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 2, 2, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 0, 4, ''))),
cust.issue_cust_cf_108_name = IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 1, '◎：基本ここにかける', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 2, '○：掛けても良い', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 0, '×：架けてはいけない', '')))
WHERE
	cust.issue_cust_issue_code IS NOT NULL;
	
-- insert data cust3
INSERT INTO crm_issue_cust (
	issue_cust_issue_code,
	issue_cust_cf_990,
	issue_cust_cf_991,
	issue_cust_cf_106,
	 issue_cust_cf_884,
	issue_cust_cooperation_code,
	issue_cust_cooperation_name,
	issue_cust_gender_code,
	issue_cust_gender_name,
	issue_cust_age_code,
	issue_cust_age_name,
	 issue_cust_class_tel1_code,
	 issue_cust_class_tel1_name,
	 issue_cust_tel1,
	 issue_cust_cf_986,
	issue_cust_prefecture_code,
	issue_cust_prefecture_name,
	 issue_cust_mail1,
	issue_cust_cf_904,
	issue_cust_zipcode,
	issue_cust_address1,
	issue_cust_address2,
	issue_cust_cf_988,
	issue_cust_cf_107,
	issue_cust_cf_987,
	issue_cust_cf_1272,
	issue_cust_cf_1272_search,
	issue_cust_special_code,
	issue_cust_special_name,
	issue_cust_cf_108_code,
	issue_cust_cf_108_name,
	issue_cust_no_order	
) SELECT
issue_temp.CASE_ID,
issue_temp.CUST_NAME_3,
issue_temp.CUST_NAME_KANA_3,
issue_temp.CUST_COMPANY_NAME_3,
 issue_temp.CUS_CORP_NAME_KANA_3,
issue_temp.CUST_CLASS_CODE_3,
issue_temp.CUST_CLASS_NAME_3,
issue_temp.CUST_SEX_CODE_3,
issue_temp.CUST_SEX_NAME_3,
issue_temp.CUST_GENERATION_CODE_3,
issue_temp.CUST_GENERATION_NAME_3,
 issue_temp.CUST_TEL_CLASS_CODE_3,
 issue_temp.CUST_TEL_CLASS_NAME_3,
 issue_temp.CUST_TEL_3,
 issue_temp.CUS_FAX_3,
issue_temp.CUST_FUKEN_CODE_3,
issue_temp.CUST_FUKEN_NAME_3,
 issue_temp.CUS_MAIL_3,
issue_temp.CUS_DISTIN_NAME_3,
issue_temp.CUS_ZIPCODE_3,
issue_temp.CUS_HOME_ADDR_1_3,
issue_temp.CUS_HOME_ADDR_2_3,
issue_temp.CUS_AFTER_ADDR_3,
issue_temp.CUS_OTHER_ADDR_3,
issue_temp.CUS_OTHER_FAX_3,
issue_temp.CUS_NOTE_3,
search_field(issue_temp.CUS_NOTE_3),
issue_temp.CUS_SHARE_CLASSIFICATION_CODE_3,
issue_temp.CUS_SHARE_CLASSIFICATION_NAME_3,
IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 1, 1, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 2, 2, IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 0, 4, ''))),
IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 1, '◎：基本ここにかける', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 2, '○：掛けても良い', IF (IFNULL(issue_temp.CUS_IS_REPLY_RECEIVE_TEL_3, '') = 0, '×：架けてはいけない', ''))),
3 as issue_cust_no_order
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_cust AS cust ON issue_temp.CASE_ID = cust.issue_cust_issue_code AND cust.issue_cust_no_order = 3
WHERE
	( cust.issue_cust_issue_code IS NULL OR cust.issue_cust_issue_code = '' );
	
-- update issue_area_correspond_md_1079
-- UPDATE crm_issue_area_correspond_md_1079 AS corr_md_1079
-- INNER JOIN crm_temp_issue_info AS issue_temp ON corr_md_1079.issue_code = issue_temp.CASE_ID 
-- SET 
-- corr_md_1079.issue_area_correspond_md_1079_cf_1094 = issue_temp.CHAIN_NAME,
-- corr_md_1079.issue_area_correspond_md_1079_cf_1094_search = search_field(issue_temp.CHAIN_NAME)
-- WHERE
-- 	corr_md_1079.issue_code IS NOT NULL;
	
-- insert issue_area_correspond_md_1079
-- INSERT INTO crm_issue_area_correspond_md_1079 (
-- 	issue_code,
-- 	issue_area_correspond_md_1079_cf_1094,
-- 	issue_area_correspond_md_1079_cf_1094_search
-- ) SELECT
-- issue_temp.CASE_ID,
-- issue_temp.CHAIN_NAME,
-- search_field(issue_temp.CHAIN_NAME)
-- FROM
-- 	crm_temp_issue_info AS issue_temp
-- 	LEFT JOIN crm_issue_area_correspond_md_1079 AS corr_md_1079 ON issue_temp.CASE_ID = corr_md_1079.issue_code 
-- WHERE
-- 	corr_md_1079.issue_code IS NULL 
-- 	OR corr_md_1079.issue_code = '';	
	
-- update issue_receive_week_day
UPDATE crm_issue 
SET issue_receive_week_day =
IF
	( issue_receive_week_day = 'Monday' || issue_receive_week_day = '月曜日', '月曜日', 
	IF ( issue_receive_week_day = 'Tuesday' || issue_receive_week_day = '火曜日', '火曜日', 
		IF (issue_receive_week_day = 'Wednesday' || issue_receive_week_day = '水曜日', '水曜日', 
			IF (issue_receive_week_day = 'Thursday' || issue_receive_week_day = '木曜日', '木曜日', 
				IF (issue_receive_week_day = 'Friday' || issue_receive_week_day = '金曜日', '金曜日', 
					IF (issue_receive_week_day = 'Saturday' || issue_receive_week_day = '土曜日', '土曜日', 
						IF (issue_receive_week_day = 'Sunday' || issue_receive_week_day = '日曜日', '日曜日', '')
					)
				)
			)
		) 
	) 
);


UPDATE crm_issue 
SET issue_date_over = IF (issue_status_code = 7, IF (IFNULL (issue_receive_date, '') = '', 0, DATEDIFF(issue_finish_date, issue_receive_date)), IF (IFNULL (issue_receive_date, '') = '', 0, DATEDIFF(CURRENT_DATE, issue_receive_date)))
WHERE issue_migration_no = 1;


INSERT INTO crm_temp_issue_relation
(
	code_ref,
	code
)
SELECT 
	SUBSTR(issue_temp.CASE_ID,1,LENGTH(issue_temp.CASE_ID) - 1) as code_ref,
	issue_temp.CASE_ID
FROM crm_temp_issue_info as issue_temp;


UPDATE crm_temp_issue_info
SET CASE_ID_REF = SUBSTR(CASE_ID,1,LENGTH(CASE_ID) -1);

INSERT INTO crm_issue_related
(
	issue_related_issue_code,
	issue_related_code,
	issue_related_created_date
)
SELECT
	temp_issue.CASE_ID,
	temp_relation.`code`,
	DATE_FORMAT(NOW(),'%Y-%m-%d %H:%i:%s') as issue_related_created_date
FROM
	crm_temp_issue_info AS temp_issue
	INNER JOIN crm_temp_issue_relation AS temp_relation ON ( 
		temp_issue.CASE_ID != temp_relation.`code` AND temp_issue.CASE_ID_REF = temp_relation.code_ref
	)
ORDER BY temp_issue.CASE_ID;


-- insert crm_issue_area_correspond_tab_4
INSERT INTO crm_issue_area_correspond_tab_4 (
	issue_code
) SELECT
issue_temp.CASE_ID
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_correspond_tab_4 AS tab4 ON issue_temp.CASE_ID = tab4.issue_code 
WHERE
	tab4.issue_code IS NULL 
	OR tab4.issue_code = '';	


-- crm_issue_area_correspond_tab_13
INSERT INTO crm_issue_area_correspond_tab_13 (
	issue_code
) SELECT
issue_temp.CASE_ID
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_correspond_tab_13 AS tab13 ON issue_temp.CASE_ID = tab13.issue_code 
WHERE
	tab13.issue_code IS NULL 
	OR tab13.issue_code = '';
	
	
-- crm_issue_area_correspond_tab_5
INSERT INTO crm_issue_area_correspond_tab_5 (
	issue_code
) SELECT
issue_temp.CASE_ID
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_correspond_tab_5 AS tab5 ON issue_temp.CASE_ID = tab5.issue_code 
WHERE
	tab5.issue_code IS NULL 
	OR tab5.issue_code = '';


-- crm_issue_area_correspond_tab_10
UPDATE crm_issue_area_correspond_tab_10
INNER JOIN crm_temp_issue_info AS issue_temp ON crm_issue_area_correspond_tab_10.issue_code = issue_temp.CASE_ID 
SET 
issue_area_correspond_tab_10_cf_1021 = issue_temp.YAMATO_NOTE_POINT,
issue_area_correspond_tab_10_cf_1021_search = search_field(issue_temp.YAMATO_NOTE_POINT) 
WHERE
	crm_issue_area_correspond_tab_10.issue_code IS NOT NULL;


INSERT INTO crm_issue_area_correspond_tab_10 (
	issue_code,
	issue_area_correspond_tab_10_cf_1021,
	issue_area_correspond_tab_10_cf_1021_search
)SELECT
issue_temp.CASE_ID,
issue_temp.YAMATO_NOTE_POINT,
search_field(issue_temp.YAMATO_NOTE_POINT)
FROM
	crm_temp_issue_info AS issue_temp
	LEFT JOIN crm_issue_area_correspond_tab_10 AS tab10 ON issue_temp.CASE_ID = tab10.issue_code 
WHERE
	tab10.issue_code IS NULL 
	OR tab10.issue_code = '';

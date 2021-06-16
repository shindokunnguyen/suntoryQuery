SET sql_mode='';

UPDATE `crm_temp_request_history`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;

-- insert data cus_process
INSERT INTO crm_issue_cus_process (
	issue_cus_process_issue_code,
	issue_cus_process_receive_date,
	issue_cus_process_receive_time,
	issue_cus_process_question,
	issue_cus_process_question_search,
	issue_cus_process_dept_code,
	issue_cus_process_dept_name,
	issue_cus_process_method_code,
	issue_cus_process_method_name,
	issue_cus_process_creator_code,
	issue_cus_process_creator_name,
	issue_cus_process_updater_code,
	issue_cus_process_updater_name,
	issue_cus_process_migration_no,
	temp_request_history_id
) select 
	history_temp.CASE_ID,
	DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS issue_cus_process_receive_date,
	DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%H:%i' ) AS issue_cus_process_receive_time,
	history_temp.PROCESS_CONTENT,
	search_field(history_temp.PROCESS_CONTENT),
	history_temp.DEPT_CODE,
	history_temp.DEPT_NAME,
	history_temp.CREATED_USER_CODE,
	history_temp.CREATED_USER_NAME,
	history_temp.CREATED_USER_CODE,
	history_temp.CREATED_USER_NAME,
	history_temp.CREATED_USER_CODE,
	history_temp.CREATED_USER_NAME,
	1,
	history_temp.id
from crm_temp_request_history as history_temp 
where 
 CLASSIFICATION != '新規案件';

 
UPDATE crm_temp_request_history AS temp_history
INNER JOIN crm_issue_cus_process AS cus_proc ON ( temp_history.id = cus_proc.temp_request_history_id ) 
SET temp_history.cus_process_id = cus_proc.issue_cus_process_id,
temp_history.is_updated_cus_process = 1;


-- insert data issue history
INSERT INTO crm_issue_history ( 
history_issue_code, 
history_relation_id,
history_type, 
history_display_flag, 
history_params, 
history_action, 
history_level, 
history_created_date, 
history_creator_code, 
history_creator_name, 
history_updater_code, 
history_updater_name,
history_updated_date,
history_process_date ) 
SELECT
	history_temp.CASE_ID,
	history_temp.cus_process_id AS history_relation_id,
	1 AS history_type,
	1 AS history_display_flag,
	IF (history_temp.CLASSIFICATION = '新規案件', 
		JSON_OBJECT(
			'issue_code',history_temp.CASE_ID,
			'data', JSON_OBJECT(
				'issue', JSON_OBJECT(
					'issue_code', history_temp.CASE_ID,
					'issue_created_year', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y' ),
					'issue_created_datetime', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y/%m/%d %H:%i:%s' ),
					'issue_created_year_month', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y/%m' ),
					'issue_updated_date', DATE_FORMAT( history_temp.UPDATED_DATE_TIME, '%Y/%m/%d' ),
					'issue_updated_time', DATE_FORMAT( history_temp.UPDATED_DATE_TIME, '%H:%i' ),
					'issue_updated_datetime', DATE_FORMAT( history_temp.UPDATED_DATE_TIME, '%Y/%m/%d %H:%i:%s' ),
					'issue_receive_dept_code', history_temp.DEPT_CODE,
					'issue_receive_dept_name', history_temp.DEPT_NAME,
					'issue_receive_person_code', history_temp.CREATED_USER_CODE,
					'issue_receive_person_name', replace(replace(history_temp.CREATED_USER_NAME,' ', ''), '　', ''),
					'issue_updated_member_code', history_temp.UPDATED_USER_CODE,
					'issue_updated_member_name', replace(replace(history_temp.UPDATED_USER_NAME,' ', ''), '　', ''),
					'issue_receive_date', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y/%m/%d' ),
					'issue_receive_time', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%H:%i' ),
					'issue_receive_year', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y' ),
					'issue_receive_datetime', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y/%m/%d %H:%i:%s' ),
					'issue_receive_day_hour', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%H' ),
					'issue_receive_year_month', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y/%m' ),
					'issue_content_ask', history_temp.VOICE_OF_CUST,
					'issue_content_ask_search', search_field(history_temp.VOICE_OF_CUST)
				),
				'crm_issue_area_correspond_tab_1', JSON_OBJECT(
					'issue_area_correspond_tab_1_cf_96_search', search_field(history_temp.COMMENT),
					'issue_area_correspond_tab_1_cf_96', history_temp.COMMENT
				)
			)
		), 
		JSON_OBJECT(
			'issue_cus_process_issue_code',history_temp.CASE_ID,
			'issue_cus_process_receive_date', DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y/%m/%d' ),
			'issue_cus_process_receive_time',  DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%H:%i' ),
			'issue_cus_process_question', history_temp.PROCESS_CONTENT, 
			'issue_cus_process_question_search', search_field(history_temp.PROCESS_CONTENT),
			'issue_cus_process_answer', '',
			'issue_cus_process_method_code', '',
			'issue_cus_process_method_name', '',
			'issue_cus_process_type_code', '',
			'issue_cus_process_type_name', history_temp.CLASSIFICATION,
			'issue_cus_process_dept_code', history_temp.DEPT_CODE,
			'issue_cus_process_dept_name', history_temp.DEPT_NAME,
			'issue_cus_process_creator_code',history_temp.CREATED_USER_CODE,
			'issue_cus_process_creator_name',history_temp.CREATED_USER_NAME,
			'issue_cus_process_relation_issue_code', '',
			'cusProcessId', history_temp.cus_process_id,
			'issue_cus_process_id', history_temp.cus_process_id
		) ) as  history_params,
	IF (history_temp.CLASSIFICATION = '新規案件', 'save_issue', 'cust_process') AS history_action,
	1 AS history_level,
	DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS history_created_date,
	history_temp.CREATED_USER_CODE AS history_creator_code,
	history_temp.CREATED_USER_NAME AS history_creator_name,
	history_temp.CREATED_USER_CODE AS history_updater_code,
	history_temp.CREATED_USER_NAME AS history_updater_name,
	DATE_FORMAT( history_temp.UPDATED_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS history_updated_date, 
	DATE_FORMAT( history_temp.PROCESS_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS history_process_date 
FROM
	crm_temp_request_history AS history_temp;
	
UPDATE crm_issue
INNER JOIN crm_issue_area_correspond_tab_1 ON crm_issue.issue_code = crm_issue_area_correspond_tab_1.issue_code 
INNER JOIN crm_temp_request_history ON crm_issue.issue_code = crm_temp_request_history.CASE_ID
SET issue_public = 0 , issue_public_name = '非公開'
WHERE
    crm_issue_area_correspond_tab_1.issue_area_correspond_tab_1_cf_89_multil_lv3_code = '451540' 
    AND (crm_temp_request_history.CLASSIFICATION = '受信メール' OR crm_temp_request_history.CLASSIFICATION = '送信メール' )
    AND issue_created_date >= '2006-12-01';

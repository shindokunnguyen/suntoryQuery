SET sql_mode='';

UPDATE `crm_temp_request_history_2`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;


INSERT INTO crm_escalation_log (
escalation_log_code,
escalation_log_mail_type,
escalation_log_title,
escalation_log_body,
escalation_log_body_new,
escalation_log_is_read,
escalation_log_read_datetime,
escalation_log_from_email_address,
escalation_log_to_dept_code,
escalation_log_to_dept_name,
escalation_log_to_code,
escalation_log_to_name,
escalation_log_to_email_address,
escalation_log_to_id,
escalation_log_send_date,
escalation_log_send_time,
escalation_log_creator_code,
escalation_log_created_datetime,
escalation_log_updater_code,
escalation_log_updater_name,
escalation_log_updated_datetime,
escalation_log_type,
escalation_log_send_mail_flag,
escalation_log_approve_mail,
escalation_log_customer_send_mail_flag,
escalation_log_list_to,
escalation_log_request_approve_flag,
escalation_log_is_saved,
temp_req_history_2_id
) SELECT 
	history_temp.CASE_ID,
	1 as escalation_log_mail_type,
	history_temp.REQUEST_SUBJECT,
	history_temp.REQUEST_CONTENT as escalation_log_body,
	history_temp.REQUEST_CONTENT as escalation_log_body_new,
	1 as escalation_log_is_read,
	DATE_FORMAT( history_temp.REQUEST_DATETIME, '%Y-%m-%d %H:%i:%s' ) as escalation_log_read_datetime,
	'test_webmaster2@suntory.co.jp' as escalation_log_from_email_address,
	history_temp.REQUEST_TO_DEPT_CODE,
	history_temp.REQUEST_TO_DEPT_NAME, 
	history_temp.REQUEST_TO_USER_CODE,
	history_temp.REQUEST_TO_USER_NAME,
	member.member_mail as escalation_log_to_email_address,
	member.member_id as escalation_log_to_id,
	DATE_FORMAT( history_temp.REQUEST_DATETIME, '%Y-%m-%d %H:%i:%s' ) as escalation_log_send_date,
	DATE_FORMAT( history_temp.REQUEST_DATETIME, '%H:%i' ) as escalation_log_send_time,
	history_temp.CREATED_USER_CODE as escalation_log_creator_code,
	DATE_FORMAT( history_temp.REQUEST_DATETIME, '%Y-%m-%d %H:%i:%s' ) as escalation_log_created_datetime,
	history_temp.UPDATED_USER_CODE,
	history_temp.UPDATED_USER_NAME,
	DATE_FORMAT( history_temp.UPDATED_DATETIME, '%Y-%m-%d %H:%i:%s' ),
	2 as escalation_log_type,
	0 as escalation_log_send_mail_flag,
	0 as escalation_log_approve_mail,
	0 as escalation_log_customer_send_mail_flag,
	member.member_mail as escalation_log_list_to,
	1 as escalation_log_request_approve_flag,
	1 as escalation_log_is_saved,
	history_temp.ID as temp_req_history_2_id
FROM crm_temp_request_history_2 AS history_temp
	LEFT JOIN crm_member as member ON history_temp.REQUEST_TO_USER_CODE = member.member_code AND member.member_is_deleted = 0;
	
	
-- insert data issue history
INSERT INTO crm_issue_history ( 
history_issue_code, 
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
history_process_date,
history_updated_date 
) SELECT
history_temp.CASE_ID,
1 AS history_type,
1 AS history_display_flag,
JSON_OBJECT(
	'issue_code',
	es_log.escalation_log_code,
	'issue_send_request_datetime',
	DATE_FORMAT( REQUEST_DATETIME, '%Y-%m-%d %H:%i' ),
	'issue_send_request_person_name',
	replace(replace(CREATED_USER_NAME,' ', ''), '　', ''),
	'issue_send_request_dept_name',
	REQUEST_DEPT_NAME,
	'issue_send_request_subject',
	REQUEST_SUBJECT,
	'issue_send_request_from',
	'test_webmaster2@suntory.co.jp',
	'issue_send_request_to', JSON_ARRAY(
	JSON_OBJECT( 'id', es_log.escalation_log_to_code, 'name', CONCAT( es_log.escalation_log_to_dept_name, ' / ', es_log.escalation_log_to_name ), 'dept', es_log.escalation_log_to_dept_code, 'mail', es_log.escalation_log_to_email_address )),
	'issue_send_request_type',
	'',
	'issue_send_request_title',
	REQUEST_SUBJECT,
	'issue_send_request_body',
	REQUEST_CONTENT,
	'issue_send_request_footer',
	'',
	'issue_send_request_type_name',
	REQUEST_CLASSIFICATION,
	'issue_send_request_log_id',JSON_ARRAY(es_log.escalation_log_id)
) as history_params,
'send_request' AS history_action,
1 AS history_level,
DATE_FORMAT( history_temp.REQUEST_DATETIME, '%Y-%m-%d %H:%i:%s' ) AS history_created_date,
history_temp.CREATED_USER_CODE as history_creator_code,
replace(replace(history_temp.CREATED_USER_NAME,' ', ''), '　', '') as history_creator_name,
history_temp.UPDATED_USER_CODE as history_updater_code,
replace(replace(history_temp.UPDATED_USER_NAME,' ', ''), '　', '') as history_updater_name,
DATE_FORMAT( history_temp.REQUEST_DATETIME, '%Y-%m-%d %H:%i:%s' ) AS history_process_date,
DATE_FORMAT( history_temp.UPDATED_DATETIME, '%Y-%m-%d %H:%i:%s' ) AS history_updated_date  
FROM
	crm_temp_request_history_2 AS history_temp
LEFT JOIN crm_escalation_log as es_log ON (
	history_temp.ID = es_log.temp_req_history_2_id
	AND es_log.escalation_log_from_email_address = 'test_webmaster2@suntory.co.jp'
);
	
ALTER TABLE `crm_escalation_log` 
DROP COLUMN `temp_req_history_2_id`,
DROP INDEX `idx_temp_req_history_2_id`;

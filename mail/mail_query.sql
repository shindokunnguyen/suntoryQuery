SET sql_mode='';

INSERT INTO crm_escalation_log (
escalation_log_code,
escalation_log_mail_type,
escalation_log_title,
escalation_log_body,
escalation_log_body_new,
escalation_log_is_read,
escalation_log_read_datetime,
escalation_log_from_email_address,
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
escalation_log_is_saved
) SELECT 
	mail_temp.CASE_ID,
	1 as escalation_log_mail_type,
	mail_temp.SUBJECT,
	mail_temp.BODY as escalation_log_body,
	mail_temp.BODY as escalation_log_body_new,
	1 as escalation_log_is_read,
	DATE_FORMAT( mail_temp.SEND_DATETIME, '%Y-%m-%d %H:%i:%s' ) as escalation_log_read_datetime,
	mail_temp.`FROM` as escalation_log_from_email_address,
	mail_temp.`TO` as escalation_log_to_email_address,
	0 as escalation_log_to_id,
	DATE_FORMAT( mail_temp.SEND_DATETIME, '%Y-%m-%d %H:%i:%s' ) as escalation_log_send_date,
	DATE_FORMAT( mail_temp.SEND_DATETIME, '%H:%i' ) as escalation_log_send_time,
	mail_temp.CREATED_USER_CODE as escalation_log_creator_code,
	DATE_FORMAT( mail_temp.SEND_DATETIME, '%Y-%m-%d %H:%i:%s' ) as escalation_log_created_datetime,
	mail_temp.CREATED_USER_CODE,
	mail_temp.CREATED_USER_NAME,
	DATE_FORMAT( mail_temp.CREATED_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
	1 as escalation_log_type,
	0 as escalation_log_send_mail_flag,
	0 as escalation_log_approve_mail,
	0 as escalation_log_customer_send_mail_flag,
	mail_temp.`TO` as escalation_log_list_to,
	1 as escalation_log_request_approve_flag,
	1 as escalation_log_is_saved
FROM crm_temp_issue_mail AS mail_temp
WHERE mail_temp.MAIL_CLASSIFICATION = '送信';


UPDATE crm_temp_issue_mail 
SET PARAMS = JSON_OBJECT(
	'issue_code',
	CASE_ID,
	'issue_send_custmail_datetime',
	DATE_FORMAT( SEND_DATETIME, '%Y-%m-%d %H:%i:%s' ),
	'issue_send_custmail_dept_name',
	DEPT_NAME,
	'issue_send_custmail_dept_code',
	DEPT_CODE,
	'issue_send_custmail_person_name',
	CREATED_USER_NAME,
	'issue_send_custmail_person_code',
	CREATED_USER_CODE,
	'issue_send_cusmail_create_date',
	DATE_FORMAT( CREATED_DATE_TIME, '%Y-%m-%d %H:%i:%s' ),
	'issue_send_custmail_subject',
	`SUBJECT`,
	'issue_send_custmail_from',
	`FROM`,
	'issue_send_custmail_to',
	`TO`,
	'issue_send_custmail_body',
	BODY,
	'issue_send_custmail_body_new', BODY,
	'issue_send_custmail_body_only_body', BODY,
	'issue_send_custmail_body_new_only_body', BODY
) where MAIL_CLASSIFICATION = '送信';


UPDATE crm_temp_issue_mail 
SET PARAMS = JSON_OBJECT(
	'mail_data_issue_code',
	CASE_ID,
	'mail_data_datetime',
	DATE_FORMAT( SEND_DATETIME, '%Y-%m-%d %H:%i:%s' ),
	'mail_data_id',
	'',
	'mail_data_from',
	`FROM`,
	'mail_data_from_name',
	'',
	'mail_data_to',
	`TO`,
	'mail_data_subject',
	`SUBJECT`,
	'mail_data_body',
	BODY,
	'mail_data_body_new',
	BODY,
	'mail_data_is_related_issue',
	'0'
) where MAIL_CLASSIFICATION = '受信';


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
history_process_date 
) SELECT
	issue_mail_temp.CASE_ID,
	1 AS history_type,
	1 AS history_display_flag,
	issue_mail_temp.PARAMS,
	'mail_process' as history_action,
	-- IF( issue_mail_temp.MAIL_CLASSIFICATION = '受信', 'mail_process', IF ( issue_mail_temp.MAIL_CLASSIFICATION = '送信', 'send_custmail', '' ) ),
	1 AS history_level,
	DATE_FORMAT( issue_mail_temp.CREATED_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS history_created_date,
	issue_mail_temp.CREATED_USER_CODE as history_creator_code,
	issue_mail_temp.CREATED_USER_NAME as history_creator_name,
	issue_mail_temp.CREATED_USER_CODE as history_updater_code,
	issue_mail_temp.CREATED_USER_NAME as history_updater_name,
	DATE_FORMAT( issue_mail_temp.CREATED_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS history_process_date 
FROM
	crm_temp_issue_mail AS issue_mail_temp
	LEFT JOIN crm_issue_history AS history ON (issue_mail_temp.CASE_ID = history.history_issue_code 
		AND history.history_is_deleted = 0 
		AND history.history_action = 'mail_process' )
WHERE ( history.history_issue_code IS NULL OR history.history_issue_code = '' )  AND issue_mail_temp.MAIL_CLASSIFICATION = '受信';
	
	
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
history_process_date 
) SELECT
	issue_mail_temp.CASE_ID,
	escalation.escalation_log_id,
	1 AS history_type,
	1 AS history_display_flag,
	issue_mail_temp.PARAMS,
	'send_custmail' as history_action,
	1 AS history_level,
	DATE_FORMAT( issue_mail_temp.CREATED_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS history_created_date,
	issue_mail_temp.CREATED_USER_CODE as history_creator_code,
	issue_mail_temp.CREATED_USER_NAME as history_creator_name,
	issue_mail_temp.CREATED_USER_CODE as history_updater_code,
	issue_mail_temp.CREATED_USER_NAME as history_updater_name,
	DATE_FORMAT( issue_mail_temp.CREATED_DATE_TIME, '%Y-%m-%d %H:%i:%s' ) AS history_process_date 
FROM
	crm_temp_issue_mail AS issue_mail_temp
	LEFT JOIN crm_issue_history AS history ON (issue_mail_temp.CASE_ID = history.history_issue_code 
		AND history.history_is_deleted = 0 
		AND history.history_action = 'send_custmail' )
	INNER JOIN crm_escalation_log as escalation ON (issue_mail_temp.CASE_ID = escalation.escalation_log_code 
		AND issue_mail_temp.`SUBJECT` = escalation.escalation_log_title 
		AND issue_mail_temp.`TO` = escalation.escalation_log_to_email_address 
		AND issue_mail_temp.`FROM` = escalation.escalation_log_from_email_address )
WHERE ( history.history_issue_code IS NULL OR history.history_issue_code = '' )  AND issue_mail_temp.MAIL_CLASSIFICATION = '送信';
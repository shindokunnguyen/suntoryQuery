SET sql_mode='';

INSERT INTO crm_recovoice (
	recovoice_inout_flag,
  	recovoice_recording_date,
	recovoice_recording_start_time,
	recovoice_recording_finish_time,
	recovoice_recording_total_time,
	recovoice_person_incharge_call_name,
	recovoice_tell_cust,
	recovoice_recording_file_url,
	recovoice_recording_file_name
)
SELECT
IF (LINE_CLASSIFICATION = '発信', 0, 1),
CALL_START_DATETIME as recovoice_recording_date,
CALL_START_DATETIME,
CALL_END_DATETIME,
CALL_TIMES,
USER_INCHARGE,
PHONE_NUMB,
CONCAT('migvoice/', FILE_VOICE) as recovoice_recording_file_url,
CONCAT('migvoice/', FILE_VOICE) as recovoice_recording_file_name
FROM crm_temp_call_info;


INSERT INTO crm_issue_recovoice ( 
issue_recovoice_issue_code, 
issue_recovoice_recording_id, 
issue_recovoice_issue_class, 
issue_recovoice_keep_flag, 
issue_recovoice_is_guaranted, 
issue_recovoice_is_security, 
issue_recovoice_is_public 
) 
SELECT
call_info.CASE_ID,
crm_recovoice.recovoice_id,
IF (call_info.LINE_CLASSIFICATION = '発信', 0, 1),
1 as issue_recovoice_keep_flag,
1 as issue_recovoice_is_guaranted, 
1 as issue_recovoice_is_security,
1 as issue_recovoice_is_public
FROM
	crm_temp_call_info AS call_info
	INNER JOIN crm_recovoice ON (
		call_info.CALL_START_DATETIME = DATE_FORMAT( crm_recovoice.recovoice_recording_start_time, '%Y-%m-%d %H:%i:%s' ) 
		AND call_info.CALL_END_DATETIME = DATE_FORMAT( crm_recovoice.recovoice_recording_finish_time, '%Y-%m-%d %H:%i:%s' ) 
		AND call_info.CALL_TIMES = crm_recovoice.recovoice_recording_total_time 
		AND call_info.PHONE_NUMB = crm_recovoice.recovoice_tell_cust 
		AND CONCAT('migvoice/', call_info.FILE_VOICE) = crm_recovoice.recovoice_recording_file_name 
		AND CONCAT('migvoice/', call_info.FILE_VOICE) = crm_recovoice.recovoice_recording_file_url
	);

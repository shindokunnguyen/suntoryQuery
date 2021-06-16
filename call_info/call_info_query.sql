SET sql_mode='';

UPDATE `crm_temp_call_info`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;


INSERT INTO crm_recovoice (
	recovoice_inout_flag,
  	recovoice_recording_date,
	recovoice_recording_start_time,
	recovoice_recording_finish_time,
	recovoice_recording_total_time,
	recovoice_person_incharge_call_name,
	recovoice_tell_cust,
	recovoice_recording_file_url,
	recovoice_recording_file_name,
	call_info_id
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
CONCAT('migvoice/', FILE_VOICE) as recovoice_recording_file_name,
id as call_info_id
FROM crm_temp_call_info;

-- update recovoice_id into crm_temp_call_info
UPDATE crm_temp_call_info as temp_call INNER JOIN crm_recovoice ON (temp_call.id = crm_recovoice.call_info_id)
SET temp_call.recovoice_id = crm_recovoice.recovoice_id;


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
call_info.recovoice_id,
IF (call_info.LINE_CLASSIFICATION = '発信', 0, 1),
1 as issue_recovoice_keep_flag,
1 as issue_recovoice_is_guaranted, 
0 as issue_recovoice_is_security,
0 as issue_recovoice_is_public
FROM
	crm_temp_call_info AS call_info;
	
ALTER TABLE `crm_recovoice` 
DROP COLUMN `call_info_id`;

ALTER TABLE `crm_temp_call_info` 
DROP COLUMN `recovoice_id`;

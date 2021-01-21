SET sql_mode='';

INSERT INTO crm_recovoice (
	recovoice_inout_flag,
	recovoice_recording_file_url,
	recovoice_recording_file_name,
	recovoice_unique_id,
	recovoice_request_id,
	recovoice_person_incharge_call_code,
	recovoice_person_incharge_call_name
) SELECT 
	CLASSIFICATION,
	URL as recovoice_recording_file_url,
URL as recovoice_recording_file_name,
substring_index(URL, '/', -1) as recovoice_unique_id,
substring_index(URL, '/', -1) as recovoice_request_id,
USER_INCHARGE_CODE,
USER_INCHARGE_NAME
From crm_temp_pure_cloud;


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
pure_cloud.CASE_ID,
crm_recovoice.recovoice_id,
pure_cloud.CLASSIFICATION,
1 as issue_recovoice_keep_flag,
1 as issue_recovoice_is_guaranted, 
1 as issue_recovoice_is_security,
1 as issue_recovoice_is_public
FROM
	crm_temp_pure_cloud AS pure_cloud
	INNER JOIN crm_recovoice ON (
		 pure_cloud.CLASSIFICATION = crm_recovoice.recovoice_inout_flag
		 AND pure_cloud.URL = crm_recovoice.recovoice_recording_file_url
		AND pure_cloud.USER_INCHARGE_CODE = crm_recovoice.recovoice_person_incharge_call_code
		AND substring_index(pure_cloud.URL, '/', -1) = crm_recovoice.recovoice_request_id
		AND substring_index(pure_cloud.URL, '/', -1) = recovoice_unique_id
	);
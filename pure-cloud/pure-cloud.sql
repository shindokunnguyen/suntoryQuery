SET sql_mode='';

UPDATE `crm_temp_pure_cloud`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;

INSERT INTO crm_recovoice (
	recovoice_inout_flag,
	recovoice_recording_file_url,
	recovoice_recording_file_name,
	recovoice_unique_id,
	recovoice_request_id,
	recovoice_person_incharge_call_code,
	recovoice_person_incharge_call_name,
	pure_cloud_id
) SELECT 
	CLASSIFICATION,
	URL as recovoice_recording_file_url,
URL as recovoice_recording_file_name,
substring_index(URL, '/', -1) as recovoice_unique_id,
substring_index(URL, '/', -1) as recovoice_request_id,
USER_INCHARGE_CODE,
USER_INCHARGE_NAME,
ID
From crm_temp_pure_cloud;

-- update recovoice_id for temp table
Update crm_temp_pure_cloud as pure_cloud INNER JOIN crm_recovoice ON (pure_cloud.ID = crm_recovoice.pure_cloud_id)
SET pure_cloud.recovoice_id = crm_recovoice.recovoice_id;

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
pure_cloud.recovoice_id,
pure_cloud.CLASSIFICATION,
1 as issue_recovoice_keep_flag,
1 as issue_recovoice_is_guaranted, 
0 as issue_recovoice_is_security,
0 as issue_recovoice_is_public
FROM
	crm_temp_pure_cloud AS pure_cloud;
	
ALTER TABLE `crm_recovoice` 
DROP COLUMN `pure_cloud_id`;

ALTER TABLE `crm_temp_pure_cloud` 
DROP COLUMN `recovoice_id`;

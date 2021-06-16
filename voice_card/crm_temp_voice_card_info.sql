SET sql_mode='';

UPDATE `crm_temp_voice_card_info`
SET FILE_NAME = '$file_path'
WHERE FILE_NAME IS NULL;

ALTER TABLE `crm_temp_voice_card_info` 
ADD INDEX `idx_CASE_ID`(`CASE_ID`) USING BTREE;

DELETE t1.* 
FROM
	crm_temp_voice_card_info AS t1
	INNER JOIN crm_temp_voice_card_info AS t2 ON ( t1.CASE_ID = t2.CASE_ID ) 
WHERE
	t1.id > t2.id;

-- update data crm_issue_area_correspond_tab_11
UPDATE crm_issue_area_correspond_tab_11 AS tab11
INNER JOIN crm_temp_voice_card_info AS voice_temp ON tab11.issue_code = voice_temp.CASE_ID 
SET 
issue_area_correspond_tab_11_cf_314_code = voice_temp.FIRST_CRSP,
issue_area_correspond_tab_11_cf_314_name = voice_temp.FIRST_CRSP_NAME,
issue_area_correspond_tab_11_cf_316_code = voice_temp.BEHAVIOR,
issue_area_correspond_tab_11_cf_316_name = voice_temp.BEHAVIOR_NAME,
issue_area_correspond_tab_11_cf_317_code = voice_temp.EXPLAIN,
issue_area_correspond_tab_11_cf_317_name = voice_temp.EXPLAIN_NAME,
issue_area_correspond_tab_11_cf_318_code = voice_temp.USE_STATE,
issue_area_correspond_tab_11_cf_318_name = voice_temp.USE_STATE_NAME,
issue_area_correspond_tab_11_cf_1269 = voice_temp.OPINION,
issue_area_correspond_tab_11_cf_1269_search = search_field(voice_temp.OPINION),
issue_area_correspond_tab_11_cf_315_code = voice_temp.RESPONSETIME,
issue_area_correspond_tab_11_cf_315_name = voice_temp.RESPONSETIME_NAME,
issue_area_correspond_tab_11_cf_313_date = IF (voice_temp.ARRIVE_CARD_DATE = null, null, DATE_FORMAT(voice_temp.ARRIVE_CARD_DATE, '%Y-%m-%d')),
issue_area_correspond_tab_11_cf_313_time = IF (voice_temp.ARRIVE_CARD_DATE = null, null, DATE_FORMAT(voice_temp.ARRIVE_CARD_DATE, '%H:%i')),
issue_area_correspond_tab_11_cf_313_datetime = IF (voice_temp.ARRIVE_CARD_DATE = null, null, DATE_FORMAT(voice_temp.ARRIVE_CARD_DATE, '%Y-%m-%d %H:%i:%s'))
WHERE
	tab11.issue_code IS NOT NULL;

-- insert data crm_issue_area_correspond_tab_11
INSERT INTO crm_issue_area_correspond_tab_11 ( 
  issue_code, 
  issue_area_correspond_tab_11_cf_314_code, 
  issue_area_correspond_tab_11_cf_314_name, 
  issue_area_correspond_tab_11_cf_316_code, 
  issue_area_correspond_tab_11_cf_316_name, 
  issue_area_correspond_tab_11_cf_317_code, 
  issue_area_correspond_tab_11_cf_317_name, 
  issue_area_correspond_tab_11_cf_318_code, 
  issue_area_correspond_tab_11_cf_318_name, 
  issue_area_correspond_tab_11_cf_1269, 
  issue_area_correspond_tab_11_cf_1269_search, 
  issue_area_correspond_tab_11_cf_315_code, 
  issue_area_correspond_tab_11_cf_315_name,
	issue_area_correspond_tab_11_cf_313_date,
	issue_area_correspond_tab_11_cf_313_time,
	issue_area_correspond_tab_11_cf_313_datetime
  ) SELECT
voice_temp.CASE_ID,
voice_temp.FIRST_CRSP,
voice_temp.FIRST_CRSP_NAME,
voice_temp.BEHAVIOR,
voice_temp.BEHAVIOR_NAME,
voice_temp.EXPLAIN,
voice_temp.EXPLAIN_NAME,
voice_temp.USE_STATE,
voice_temp.USE_STATE_NAME,
voice_temp.OPINION,
search_field(voice_temp.OPINION),
voice_temp.RESPONSETIME,
voice_temp.RESPONSETIME_NAME,
IF (voice_temp.ARRIVE_CARD_DATE = null, null, DATE_FORMAT(voice_temp.ARRIVE_CARD_DATE, '%Y-%m-%d')), 
IF (voice_temp.ARRIVE_CARD_DATE = null, null, DATE_FORMAT(voice_temp.ARRIVE_CARD_DATE, '%H:%i')),
IF (voice_temp.ARRIVE_CARD_DATE = null, null, DATE_FORMAT(voice_temp.ARRIVE_CARD_DATE, '%Y-%m-%d %H:%i:%s'))
FROM
	crm_temp_voice_card_info AS voice_temp
	LEFT JOIN crm_issue_area_correspond_tab_11 AS tab11 ON voice_temp.CASE_ID = tab11.issue_code 
WHERE
	( tab11.issue_code IS NULL OR tab11.issue_code = '' );
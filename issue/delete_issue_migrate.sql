DELETE 
FROM
	crm_issue_area_common 
WHERE
	crm_issue_area_common.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );
DELETE 
FROM
	crm_issue_area_correspond_tab_8 
WHERE
	crm_issue_area_correspond_tab_8.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );
DELETE 
FROM
	crm_issue_area_correspond_tab_11 
WHERE
	crm_issue_area_correspond_tab_11.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );
DELETE 
FROM
	crm_issue_area_correspond_tab_1 
WHERE
	crm_issue_area_correspond_tab_1.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );
DELETE 
FROM
	crm_issue_area_correspond_md_1079 
WHERE
	crm_issue_area_correspond_md_1079.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );
DELETE 
FROM
	crm_issue_cust
WHERE
	crm_issue_cust.issue_cust_issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );
DELETE 
FROM
	crm_issue_master_module_33_655 
WHERE
	crm_issue_master_module_33_655.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );



-- crm_issue_area_correspond_tab_3
DELETE 
FROM
	crm_issue_area_correspond_tab_3 
WHERE
	crm_issue_area_correspond_tab_3.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_area_correspond_tab_2
DELETE 
FROM
	crm_issue_area_correspond_tab_2 
WHERE
	crm_issue_area_correspond_tab_2.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_area_correspond_md_161
DELETE 
FROM
	crm_issue_area_correspond_md_161 
WHERE
	crm_issue_area_correspond_md_161.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_area_correspond_md_1053
DELETE 
FROM
	crm_issue_area_correspond_md_1053 
WHERE
	crm_issue_area_correspond_md_1053.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_area_correspond_md_1123
DELETE 
FROM
	crm_issue_area_correspond_md_1123 
WHERE
	crm_issue_area_correspond_md_1123.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_history
DELETE 
FROM
	crm_issue_history 
WHERE
	crm_issue_history.history_issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_area_correspond_md_1109
DELETE 
FROM
	crm_issue_area_correspond_md_1109 
WHERE
	crm_issue_area_correspond_md_1109.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );


-- crm_issue_related
DELETE 
FROM
	crm_issue_related 
WHERE
	crm_issue_related.issue_related_issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_area_correspond_tab_4
DELETE 
FROM
	crm_issue_area_correspond_tab_4 
WHERE
	crm_issue_area_correspond_tab_4.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );


-- crm_issue_area_correspond_tab_12
DELETE 
FROM
	crm_issue_area_correspond_tab_12 
WHERE
	crm_issue_area_correspond_tab_12.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );


-- crm_issue_area_correspond_tab_13
DELETE 
FROM
	crm_issue_area_correspond_tab_13 
WHERE
	crm_issue_area_correspond_tab_13.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );

-- crm_issue_area_correspond_tab_5
DELETE 
FROM
	crm_issue_area_correspond_tab_5 
WHERE
	crm_issue_area_correspond_tab_5.issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );


-- crm_issue_cus_process
DELETE 
FROM
	crm_issue_cus_process 
WHERE
	crm_issue_cus_process.issue_cus_process_issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );


-- delete crm_recovoice
delete from crm_recovoice
where recovoice_id IN (select issue_recovoice_recording_id as recovoice_id from crm_issue_recovoice where issue_recovoice_issue_code IN (SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1));

-- crm_issue_recovoice
DELETE 
FROM
	crm_issue_recovoice 
WHERE
	crm_issue_recovoice.issue_recovoice_issue_code IN ( SELECT crm_issue.issue_code AS CODE FROM crm_issue WHERE crm_issue.issue_migration_no = 1 );



DELETE 
FROM
	crm_issue 
WHERE
	issue_migration_no = 1;
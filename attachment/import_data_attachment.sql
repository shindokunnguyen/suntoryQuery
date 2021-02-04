mysql -uroot -p -h bizcrm-vnext-test-cloud.coktk68kmgxo.ap-northeast-1.rds.amazonaws.com --local-infile=1;

use suntory_crmotion;
delete from crm_attachment where attachment_migration_no = '1';

LOAD DATA LOCAL INFILE '/mnt/efs/suntory/convert-data/csv/test2/CRMZ090TB.csv'
INTO TABLE crm_attachment
CHARACTER SET cp932
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
( @1, @2, @3, @4, @5,@6, @7, @8 ) 
SET attachment_filename = @6,
attachment_order = 1,
attachment_type = @4,
attachment_issue_code = @1,
attachment_hash_name = CONCAT('mig',@5),
attachment_file_type = @8,
attachment_created_date = @7,
attachment_migration_no = 1;

-- update attachment type

UPDATE crm_attachment 
SET attachment_type =
IF
    ( attachment_type = '新規案件', 'issue_area_correspond_tab_1_cf_291', 
    IF ( attachment_type = '調査完了報告（承認依頼） - 調査', 'issue_area_correspond_tab_3_cf_174', 
        IF ( attachment_type = '調査完了報告（承認依頼） - 詳細調査', 'issue_area_correspond_md_1123_cf_1164', 'issue_cus_process' ) 
    ) 
) 
WHERE
    attachment_type IS NOT NULL 
    AND attachment_migration_no = 1;

-- update attachment_category

UPDATE crm_attachment AS attach
INNER JOIN (
    SELECT
        attachment_id,
        ROW_NUMBER () OVER ( PARTITION BY attachment_type, attachment_issue_code ORDER BY attachment_id ASC ) AS my_category_id,
        attachment_type,
        attachment_issue_code 
    FROM
        crm_attachment 
    WHERE
        attachment_type = 'issue_area_correspond_md_1123_cf_1164' 
        AND attachment_migration_no = 1 
    ) AS temp ON attach.attachment_id = temp.attachment_id 
    SET attach.attachment_category_id = (temp.my_category_id -1 )
SET sql_mode='';

	
UPDATE crm_temp_module_39 AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.CUSTOMER_CLASS = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_CLASS' ) 
SET temp_39.CUSTOMER_CLASS_NAME = code_mapping.TARGET_ITEM_NAME;

UPDATE crm_temp_module_39 AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.CUSTOMER_GENERATION = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_GENERATION' ) 
SET temp_39.CUSTOMER_GENERATION_NAME = code_mapping.TARGET_ITEM_NAME;

UPDATE `crm_temp_module_39` AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.RECEIVE_CLASSIFICATION = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET temp_39.RECEIVE_CLASSIFICATION = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_module_39` AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.RECEIVE_CLASSIFICATION = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET temp_39.RECEIVE_CLASSIFICATION_NAME = code_mapping.TARGET_ITEM_NAME;


UPDATE `crm_temp_module_39` AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.CONTACT_1_CLASSIFICATION = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET temp_39.CONTACT_1_CLASSIFICATION = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_module_39` AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.CONTACT_1_CLASSIFICATION = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET temp_39.CONTACT_1_CLASSIFICATION_NAME = code_mapping.TARGET_ITEM_NAME;


UPDATE `crm_temp_module_39` AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.CONTACT_2_CLASSIFICATION = code_mapping.SOURCE_CLASS_VALUE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET temp_39.CONTACT_2_CLASSIFICATION = code_mapping.TARGET_ITEM_CODE;

UPDATE `crm_temp_module_39` AS temp_39
INNER JOIN crm_temp_code_mapping AS code_mapping ON ( temp_39.CONTACT_2_CLASSIFICATION = code_mapping.TARGET_ITEM_CODE AND code_mapping.SOURCE_CLASS = 'CUST_TEL_CLASS' ) 
SET temp_39.CONTACT_2_CLASSIFICATION_NAME = code_mapping.TARGET_ITEM_NAME;


-- insert data
INSERT INTO crm_master_39 
( 
	master_39_cf_491, 
	master_39_cf_492,
	master_39_cf_493,
	master_39_cf_525,
	master_39_cf_520,
	master_39_cf_489_code, 
	master_39_cf_489_name,
	master_39_cf_494_code,
	master_39_cf_494_name,
	master_39_cf_495_code,
	master_39_cf_495_name,
	master_39_cf_516,
	master_39_cf_497,
	master_39_cf_498,
	master_39_cf_499,
	master_39_cf_500,
	master_39_cf_523,
	master_39_cf_501,
	master_39_cf_521,
	master_39_cf_513,
	master_39_cf_539,
	master_39_cf_490_code,
	master_39_cf_490_name,
	master_39_cf_502,
	master_39_cf_503_code,
	master_39_cf_503_name,
	master_39_cf_504_code,
	master_39_cf_504_name,
	master_39_cf_505,
	master_39_cf_506_code,
	master_39_cf_506_name,
	master_39_cf_507_code,
	master_39_cf_507_name,
	master_39_cf_508,
	master_39_cf_509_code,
	master_39_cf_509_name,
	master_39_cf_510_code,
	master_39_cf_510_name,
  master_39_is_public
) SELECT
	CUSTOMER_NAME,
	CUSTOMER_NAME_KANA,
	COMPANY_NAME,
	COMPANY_NAME_KANA,
	IDENTIFICATION,
	CUSTOMER_CLASS,
	CUSTOMER_CLASS_NAME,
	CUSTOMER_SEX,
	CUSTOMER_SEX_NAME,
	CUSTOMER_GENERATION, 
	CUSTOMER_GENERATION_NAME,
	HOME_POST_CD,
	HOME_FUKEN,
	HOME_ADDRESS_1,
	HOME_ADDRESS_2,
	HOME_ADDRESS_3,
	HOME_FAX,
	ANY_POST_CD,
	ANY_FAX,
	EMAIL,
	NOTE,
	BLACKLIST,
	BLACKLIST_NAME,
	RECEIVE_NUMBER,
	IF (CAN_BE_TURN_BACK = '1', '1', IF (CAN_BE_TURN_BACK = '0', '4', IF (CAN_BE_TURN_BACK = '2', '2', ''))) as master_39_cf_503_code, 
	IF (CAN_BE_TURN_BACK = '1', '◎：基本ここに掛ける', IF (CAN_BE_TURN_BACK = '0', '×：掛けてはいけない', IF (CAN_BE_TURN_BACK = '2', '◯：掛けても良い', ''))) as master_39_cf_503_name,
	RECEIVE_CLASSIFICATION,
	RECEIVE_CLASSIFICATION_NAME,
	CONTACT_NUMB_1,
	IF (CAN_BE_TURN_BACK_1 = '1', '1', IF (CAN_BE_TURN_BACK_1 = '0', '4', IF (CAN_BE_TURN_BACK = '2', '2', ''))) as master_39_cf_506_code, 
	IF (CAN_BE_TURN_BACK_1 = '1', '◎：基本ここに掛ける', IF (CAN_BE_TURN_BACK_1 = '0', '×：掛けてはいけない', IF (CAN_BE_TURN_BACK = '2', '◯：掛けても良い', ''))) as master_39_cf_506_name,
	CONTACT_1_CLASSIFICATION,
	CONTACT_1_CLASSIFICATION_NAME,
	CONTACT_NUMB_2,
	IF (CAN_BE_TURN_BACK_2 = '1', '1', IF (CAN_BE_TURN_BACK_2 = '0', '4', IF (CAN_BE_TURN_BACK = '2', '2', ''))) as master_39_cf_509_code,
	IF (CAN_BE_TURN_BACK_2 = '1', '◎：基本ここに掛ける', IF (CAN_BE_TURN_BACK_2 = '0', '×：掛けてはいけない', IF (CAN_BE_TURN_BACK = '2', '◯：掛けても良い', ''))) as master_39_cf_509_name,
	CONTACT_2_CLASSIFICATION,
	CONTACT_2_CLASSIFICATION_NAME,
    1
FROM
	crm_temp_module_39;
	

ALTER TABLE `crm_issue_cus_process` 
DROP COLUMN `temp_request_history_id`,
DROP INDEX `idx_temp_request_history_id`;

ALTER TABLE `crm_escalation_log` 
DROP COLUMN `mail_temp_id`;
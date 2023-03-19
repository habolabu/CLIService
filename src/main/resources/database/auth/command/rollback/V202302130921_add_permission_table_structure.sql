-- liquibase formatted sql
-- 2023-02-13 21:00:00 VN
-- changeset trungkien.nguyen:V202302130921_add_permission_table_structure

DROP TABLE IF EXISTS AccountSetting;

ALTER TABLE AccountSetting
DROP CONSTRAINT FK_AccountSetting_Account,
DROP CONSTRAINT FK_AccountSetting_Permission,
DROP CONSTRAINT FK_AccountSetting_Role;

ALTER TABLE Permission
DROP CONSTRAINT FK_Permission_Service,
DROP CONSTRAINT FK_Permission_Permission;

ALTER TABLE Account
DROP CONSTRAINT FK_Account_Role;

DROP TABLE IF EXISTS Service;

DROP TABLE IF EXISTS Permission;
-- liquibase formatted sql
-- 2022-10-06 10:00:00 VN
-- changeset trungkien.nguyen:V202210061000_init_master_database_structure

ALTER TABLE Password
DROP
CONSTRAINT FK_Password_Account;

ALTER TABLE Account
DROP
CONSTRAINT FK_Account_Role;

DROP TABLE IF EXISTS Password;

DROP TABLE IF EXISTS Account;

DROP TABLE IF EXISTS Role;
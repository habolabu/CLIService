-- liquibase formatted sql
-- 2022-10-06 10:00:00 VN
-- changeset trungkien.nguyen:V202210061000_init_master_database_data

DELETE
FROM Password;
DELETE
FROM Account;
DELETE
FROM Role;
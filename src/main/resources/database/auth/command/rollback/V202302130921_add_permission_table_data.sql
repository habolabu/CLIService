-- liquibase formatted sql
-- 2023-02-13 21:00:00 VN
-- changeset trungkien.nguyen:V202302130921_add_permission_table_data

UPDATE TABLE Role
SET name = 'quan-tri-vien', display = 'quản trị viên'
WHERE name = 'ADMINISTRATOR';

UPDATE TABLE Role
SET name = 'nguoi-dung-thuong', display = 'người dùng thường'
WHERE name = 'NORMAL_USER';

DELETE FROM AccountSetting;
DELETE FROM Permission;
DELETE FROM Service;
-- liquibase formatted sql
-- 2023-02-26 10:00:00 VN
-- rollback trungkien.nguyen:V202302261000_add_keycloak_id_column_into_user_table

ALTER TABLE User
DROP
COLUMN keyCloakId VARCHAR(255);
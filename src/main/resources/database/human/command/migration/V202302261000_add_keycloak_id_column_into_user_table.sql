-- liquibase formatted sql
-- 2023-02-26 10:00:00 VN
-- changeset trungkien.nguyen:V202302261000_add_keycloak_id_column_into_user_table

ALTER TABLE User
    ADD COLUMN keyCloakId VARCHAR(255);

UPDATE User
SET keyCloakId = '03be6fbe-c070-4535-91c4-ab2b707c68db'
WHERE id = 1;

UPDATE User
SET keyCloakId = 'd5d45c16-901c-4833-92cd-9cd374aa1288'
WHERE id = 2;
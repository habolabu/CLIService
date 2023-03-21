-- liquibase formatted sql
-- 2023-02-26 10:00:00 VN
-- changeset trungkien.nguyen:V202302261000_add_keycloak_id_column_into_user_table

ALTER TABLE User
    ADD COLUMN keyCloakId VARCHAR(255);

UPDATE User
SET keyCloakId = 'd15245d4-ab63-4aef-b8a6-d912004043b3'
WHERE id = 1;

UPDATE User
SET keyCloakId = 'af64f2e5-2651-4bd1-b24e-10ae5ffdded8'
WHERE id = 2;
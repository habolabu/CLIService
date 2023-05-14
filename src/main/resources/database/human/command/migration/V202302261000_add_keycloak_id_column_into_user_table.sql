-- liquibase formatted sql
-- 2023-02-26 10:00:00 VN
-- changeset trungkien.nguyen:V202302261000_add_keycloak_id_column_into_user_table

ALTER TABLE User
    ADD COLUMN keyCloakId VARCHAR(255);

UPDATE User
SET keyCloakId = 'd15245d4-ab63-4aef-b8a6-d912004043b3'
WHERE id = 1;

UPDATE User
SET keyCloakId = 'cd191de0-7a1d-4a95-9e82-70d44fb23abc'
WHERE id = 2;
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

UPDATE User
SET keyCloakId = '58fc4240-3d16-499a-ad8c-6356f22dd20d'
WHERE id = 3;

UPDATE User
SET keyCloakId = '9d10bcf2-c08a-4222-b4cd-33c00fd64de5'
WHERE id = 4;

UPDATE User
SET keyCloakId = 'fd9d8354-11e5-4b01-882c-71ea6e23767f'
WHERE id = 5;

UPDATE User
SET keyCloakId = 'ff7d2fb6-0ec8-4538-bfd5-5ffc6b8a2b02'
WHERE id = 6;

UPDATE User
SET keyCloakId = '5ecc2a2c-97aa-4c06-9d27-04d5dae405a6'
WHERE id = 7;

UPDATE User
SET keyCloakId = 'f1f670e4-6fab-4b3e-ad71-1acdaf1fc579'
WHERE id = 8;

UPDATE User
SET keyCloakId = '8b499a02-d568-40bd-b59b-652e59d4f295'
WHERE id = 9;

UPDATE User
SET keyCloakId = '45b7d292-c401-4581-ba99-b057d06a807d'
WHERE id = 10;

UPDATE User
SET keyCloakId = '54cb91d1-6c42-4126-ba2d-a808ee22313f'
WHERE id = 11;

UPDATE User
SET keyCloakId = 'bac0d0d8-8aba-48a9-beb6-f109c34bb1a6'
WHERE id = 12;

UPDATE User
SET keyCloakId = 'de380e41-fa0a-4008-82c1-13705952b282'
WHERE id = 13;

UPDATE User
SET keyCloakId = '75a51cf2-a101-4fb5-baaf-8847b00e6179'
WHERE id = 14;

UPDATE User
SET keyCloakId = 'eb102194-7ec6-46cf-ba16-8ea2a86e456b'
WHERE id = 15;

UPDATE User
SET keyCloakId = 'a7742aae-b8c7-4b44-8274-3eb47a44225c'
WHERE id = 16;

UPDATE User
SET keyCloakId = '508de1a9-842c-48cc-967f-59b2b7b8c5e1'
WHERE id = 17;

UPDATE User
SET keyCloakId = '4c0cf47e-ec35-449f-9dd0-a111c80a7bdf'
WHERE id = 18;

UPDATE User
SET keyCloakId = '0be57e58-9fb7-435c-a4e3-7f76a4673c47'
WHERE id = 19;

UPDATE User
SET keyCloakId = 'e4f7217f-0c8e-4407-8a0e-2ece2f555f5d'
WHERE id = 20;

UPDATE User
SET keyCloakId = '93568d92-37f7-4a99-a792-59615490d4a6'
WHERE id = 21;

UPDATE User
SET keyCloakId = '1a7b9bb9-19fd-4056-851e-7ecda205f4b8'
WHERE id = 22;

UPDATE User
SET keyCloakId = 'f539a383-5afc-4b1c-b1d1-d3b097c2544b'
WHERE id = 23;

UPDATE User
SET keyCloakId = 'aea2c6fa-fe5b-4f78-b0d3-2281a28a74ee'
WHERE id = 24;

UPDATE User
SET keyCloakId = '8eaa0a1f-b348-440d-b17a-e66cc3726cc2'
WHERE id = 25;
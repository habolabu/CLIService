-- liquibase formatted sql
-- 2022-08-05 21:30:00 VN
-- rollback trungkien.nguyen:V202208052130_init_master_database_structure
ALTER TABLE Apartment
DROP
CONSTRAINT FK_Apartment_Area;

ALTER TABLE Apartment
DROP
COLUMN areaId;

ALTER TABLE Room
DROP
CONSTRAINT FK_Room_Apartment;

ALTER TABLE Room
DROP
COLUMN apartmentId;

DROP TABLE IF EXISTS Room;

DROP TABLE IF EXISTS Apartment;

DROP TABLE IF EXISTS Area;
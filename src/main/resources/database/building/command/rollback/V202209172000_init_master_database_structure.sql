-- liquibase formatted sql
-- 2022-09-17 20:00:00 VN
-- rollback trungkien.nguyen:V202209172000_init_master_database_structure
ALTER TABLE Room
DROP
COLUMN priceTagId;

ALTER TABLE Room
DROP CONSTRAINT FK_Room_PriceTag;

ALTER TABLE OwnerHistory
DROP CONSTRAINT FK_OwnerHistory_Room;

ALTER TABLE Parking
DROP CONSTRAINT FK_Parking_Apartment;

ALTER TABLE ParkingType
DROP CONSTRAINT FK_ParkingType_PriceTag;

ALTER TABLE ParkingSpace
DROP CONSTRAINT FK_ParkingSpace_Parking;

ALTER TABLE ParkingSpace
DROP CONSTRAINT FK_ParkingSpace_ParkingType;

DROP TABLE IF EXISTS OwnerHistory;

DROP TABLE IF EXISTS Parking;

DROP TABLE IF EXISTS PriceTag;

DROP TABLE IF EXISTS ParkingType;

DROP TABLE IF EXISTS ParkingSpace;
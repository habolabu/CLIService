-- liquibase formatted sql
-- 2022-09-17 20:00:00 VN
-- rolback trungkien.nguyen:V202209172000_init_master_database_structure
DELETE
FROM ParkingSpace;

DELETE
FROM Parking;

DELETE
FROM ParkingType;

DELETE
FROM PriceTag;

DELETE
FROM OwnerHistory;

UPDATE Room
SET priceTagId = NULL;
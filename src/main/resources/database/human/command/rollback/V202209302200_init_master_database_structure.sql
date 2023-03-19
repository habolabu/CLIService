-- liquibase formatted sql
-- 2022-09-30 22:00:00 VN
-- rollback trungkien.nguyen:V202209302200_init_master_database_structure
ALTER TABLE Avatar
DROP
CONSTRAINT FK_Avatar_User;

ALTER TABLE RoomDetail
DROP
CONSTRAINT FK_RoomDetail_User;

ALTER TABLE ParkingDetail
DROP
CONSTRAINT FK_ParkingDetail_User;

ALTER TABLE Emergency
DROP
CONSTRAINT FK_Emergency_User;

DROP TABLE IF EXISTS Avatar;

DROP TABLE IF EXISTS RoomDetail;

DROP TABLE IF EXISTS ParkingDetail;

DROP TABLE IF EXISTS Emergency;

DROP TABLE IF EXISTS User;
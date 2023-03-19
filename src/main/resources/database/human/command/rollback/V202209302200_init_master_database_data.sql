-- liquibase formatted sql
-- 2022-09-30 22:00:00 VN
-- rollback trungkien.nguyen:V202209302200_init_master_database_data
DELETE
FROM Avatar;
DELETE
FROM RoomDetail;
DELETE
FROM ParkingDetail;
DELETE
FROM Emergency;
DELETE
FROM User;
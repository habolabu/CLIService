-- liquibase formatted sql
-- 2022-08-05 21:30:00 VN
-- rollback trungkien.nguyen:V202208052130_init_master_database_data
DELETE
FROM Room;
DELETE
FROM Apartment;
DELETE
FROM Area;
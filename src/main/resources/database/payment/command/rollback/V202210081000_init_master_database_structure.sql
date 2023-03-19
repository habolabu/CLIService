-- liquibase formatted sql
-- 2022-10-08 10:00:00 VN
-- rollback trungkien.nguyen:V202210081000_init_master_database_structure
ALTER TABLE ParkingBill
DROP
CONSTRAINT FK_ParkingBill_Bill;

ALTER TABLE RoomBill
DROP
CONSTRAINT FK_RoomBill_Bill;

ALTER TABLE Bill
DROP
CONSTRAINT FK_Bill_BillStatus;

ALTER TABLE Bill
DROP
CONSTRAINT FK_Bill_PaymentType;

DROP TABLE IF EXISTS Bill;

DROP TABLE IF EXISTS BillStatus;

DROP TABLE IF EXISTS PaymentType;
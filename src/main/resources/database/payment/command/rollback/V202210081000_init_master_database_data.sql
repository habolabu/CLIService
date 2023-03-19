-- liquibase formatted sql
-- 2022-10-08 10:00:00 VN
-- rollback trungkien.nguyen:V202210081000_init_master_database_data
DELETE
FROM PaymentHistoryTemporary;
DELETE
FROM ParkingBill;
DELETE
FROM RoomBill;
DELETE
FROM Bill;
DELETE
FROM BillStatus;
DELETE
FROM PaymentType;
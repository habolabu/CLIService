-- liquibase formatted sql
-- 2022-09-17 20:00:00 VN
-- changeset trungkien.nguyen:202209172000_init_master_database_structure

INSERT INTO PriceTag (name, slug, pricePerDay)
VALUES (N'VIP 1', 'vip-1', 20000),
       (N'VIP 2', 'vip-2', 21000),
       (N'Bình dân 1', 'binh-dan-1', 5000),
       (N'Bình dân 2', 'binh-dan-2',8000),
       (N'Giá 1', 'gia-1', 10000),
       (N'Giá 2', 'gia-2', 11000),
       (N'Giá 3', 'gia-3', 12000),
       (N'Giá 4', 'gia-4', 13000),
       (N'Giá 5', 'gia-5', 14000),
       (N'Giá 6', 'gia-6', 15000),
       (N'Giá 7', 'gia-7', 16000),
       (N'Giá 8', 'gia-8', 17000),
       (N'Giá 9', 'gia-9', 18000),
       (N'Giá 10', 'gia-10', 19000);

UPDATE Room SET priceTagId = 1 WHERE id < 50;
UPDATE Room SET priceTagId = 2 WHERE id BETWEEN 50 AND 100;
UPDATE Room SET priceTagId = 3 WHERE id BETWEEN 101 AND 120;
UPDATE Room SET priceTagId = 4 WHERE id BETWEEN 121 AND 131;
UPDATE Room SET priceTagId = 5 WHERE id BETWEEN 132 AND 140;
UPDATE Room SET priceTagId = 6 WHERE id BETWEEN 141 AND 150;
UPDATE Room SET priceTagId = 7 WHERE id BETWEEN 151 AND 170;
UPDATE Room SET priceTagId = 8 WHERE id BETWEEN 171 AND 180;
UPDATE Room SET priceTagId = 9 WHERE id BETWEEN 181 AND 190;
UPDATE Room SET priceTagId = 10 WHERE id BETWEEN 191 AND 192;
UPDATE Room SET priceTagId = 11 WHERE id BETWEEN 193 AND 194;
UPDATE Room SET priceTagId = 12 WHERE id BETWEEN 195 AND 196;
UPDATE Room SET priceTagId = 13 WHERE id BETWEEN 197 AND 200;
UPDATE Room SET priceTagId = 14 WHERE id > 200;

INSERT INTO Parking (name, slug, apartmentId)
VALUES (N'Tầng hầm A1', 'tang-ham-a1', 1),
       (N'Tầng hầm A2', 'tang-ham-a2', 1),
       (N'Tầng hầm B1', 'tang-ham-b1', 2),
       (N'Tầng hầm C1', 'tang-ham-c1', 3),
       (N'Tầng hầm D1', 'tang-ham-d1', 4),
       (N'Tầng hầm D2', 'tang-ham-d2', 4),
       (N'Tầng hầm E1', 'tang-ham-e1', 5);

INSERT INTO ParkingType (name, slug, priceTagId)
VALUES (N'Khu vực ô tô', 'khu-vuc-o-to', 1),
       (N'Khu vực xe máy', 'khu-vuc-xe-may', 2),
       (N'Khu vực xe đạp', 'khu-vuc-xe-đap', 3),
       (N'Khu vực khác', 'khu-vuc-khac', 4);

INSERT INTO ParkingSpace (parkingId, parkingTypeId, capacity, availableSpace)
VALUES (1, 1, 20, 15),
       (1, 2, 100, 50),
       (1, 3, 50, 35),
       (1, 4, 30, 10),
       (2, 1, 40, 0),
       (2, 2, 150, 50),
       (2, 3, 30, 32),
       (3, 2, 200, 19),
       (4, 1, 150, 20);

INSERT INTO OwnerHistory (ownerId, roomId, joinDate)
VALUES (1, 1, NOW()),
       (2, 2,  NOW()),
       (3, 3, NOW()),
       (4, 4, NOW()),
       (5, 5, NOW()),
       (6, 6, NOW()),
       (7, 7, NOW()),
       (1, 8, NOW()),
       (1, 9, NOW()),
       (1, 30, NOW()),
       (1, 41, NOW()),
       (1, 52, NOW()),
       (1, 74, NOW()),
       (1, 75, NOW()),
       (1, 78, NOW()),
       (1, 100, NOW()),
       (1, 120, NOW()),
       (1, 125, NOW()),
       (2, 42, NOW()),
       (2, 26, NOW()),
       (2, 33, NOW());
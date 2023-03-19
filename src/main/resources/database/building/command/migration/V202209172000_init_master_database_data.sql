-- liquibase formatted sql
-- 2022-09-17 20:00:00 VN
-- changeset trungkien.nguyen:202209172000_init_master_database_structure

INSERT INTO PriceTag (name, slug, pricePerDay)
VALUES (N'VIP 1', 'vip-1', 1000000),
       (N'VIP 2', 'vip-2',2000000),
       (N'Bình dân 1', 'binh-dan-1', 500000),
       (N'Bình dân 2', 'binh-dan-2',800000);

UPDATE Room SET priceTagId = 1 WHERE id = 1;
UPDATE Room SET priceTagId = 2 WHERE id = 2;
UPDATE Room SET priceTagId = 3 WHERE id = 3;
UPDATE Room SET priceTagId = 4 WHERE id = 4;
UPDATE Room SET priceTagId = 1 WHERE id = 5;
UPDATE Room SET priceTagId = 2 WHERE id = 6;
UPDATE Room SET priceTagId = 3 WHERE id = 7;

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
VALUES (1, 1, '2022-09-18 09:35:33'),
       (2, 2, '2022-09-18 09:35:33'),
       (3, 3, '2022-09-18 09:35:33'),
       (4, 4, '2022-09-18 09:35:33'),
       (5, 5, '2022-09-18 09:35:33'),
       (6, 6, '2022-09-18 09:35:33'),
       (7, 7, '2022-09-18 09:35:33');
-- liquibase formatted sql
-- 2022-08-05 21:30:00 VN
-- changeset trungkien.nguyen:202208052130_init_master_database_data

INSERT
IGNORE INTO Area(name, slug, address)
VALUES (N'Khu đất hoàng gia', 'khu-dat-hoang-gia', N'Quận 3, Tp Hồ Chí Minh'),
       (N'Khu đất thượng lưu', 'khu-dat-thuong-luu', N'Quận 1, Tp Hồ Chí Minh'),
       (N'Khu đất quý tộc', 'khu-dat-quy-toc', N'Quận 7, Tp Hồ Chí Minh'),
       (N'Khu đất bình dân', 'khu-dat-binh-dan', N'Quận 2, Tp Hồ Chí Minh');

INSERT
IGNORE INTO Apartment(name, slug, floorAmount, areaId)
VALUES (N'Căn hộ Vạn Phước', 'can-ho-van-phuoc', 30, 1),
       (N'Căn hộ Vạn Lộc', 'can-ho-van-loc', 40, 2),
       (N'Căn hộ Vạn Thọ', 'can-ho-van-tho', 20, 3),
       (N'Căn hộ Vạn Bình', 'can-ho-van-binh', 30, 4),
       (N'Căn hộ Vạn An', 'can-ho-van-an', 15, 1);

INSERT
IGNORE INTO Room(name, slug, floorNumber, apartmentId)
VALUES (N'Phòng Xuân', 'phong-xuan', 7, 1),
       (N'Phòng Hạ', 'phong-ha', 21, 2),
       (N'Phòng Thu', 'phong-thu', 15, 3),
       (N'Phòng Đông', 'phong-dong', 0, 4),
       (N'Phòng Mưa', 'phong-mua', 6, 5),
       (N'Phòng Nắng', 'phong-nang', 10, 1),
       (N'Phòng Âm U', 'phong-am-u', 15, 2);
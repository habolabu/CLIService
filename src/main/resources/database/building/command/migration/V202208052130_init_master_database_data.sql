-- liquibase formatted sql
-- 2022-08-05 21:30:00 VN
-- changeset trungkien.nguyen:202208052130_init_master_database_data

INSERT
IGNORE INTO Area(name, slug, address)
VALUES (N'Khu đất hoàng gia', 'khu-dat-hoang-gia', N'Quận 3, Tp Hồ Chí Minh'),
       (N'Khu đất thượng lưu', 'khu-dat-thuong-luu', N'Quận 1, Tp Hồ Chí Minh'),
       (N'Khu đất quý tộc', 'khu-dat-quy-toc', N'Quận 7, Tp Hồ Chí Minh'),
       (N'Khu đất bình dân', 'khu-dat-binh-dan', N'Quận 2, Tp Hồ Chí Minh'),
       (N'Khu đất 1', 'khu-dat-1', N'Địa chỉ 1'),
        (N'Khu đất 2', 'khu-dat-2', N'Địa chỉ 2'),
        (N'Khu đất 3', 'khu-dat-3', N'Địa chỉ 3'),
        (N'Khu đất 4', 'khu-dat-4', N'Địa chỉ 4'),
        (N'Khu đất 5', 'khu-dat-5', N'Địa chỉ 5'),
        (N'Khu đất 6', 'khu-dat-6', N'Địa chỉ 6'),
        (N'Khu đất 7', 'khu-dat-7', N'Địa chỉ 7'),
        (N'Khu đất 8', 'khu-dat-8', N'Địa chỉ 8'),
        (N'Khu đất 9', 'khu-dat-9', N'Địa chỉ 9'),
        (N'Khu đất 10', 'khu-dat-10', N'Địa chỉ 10'),
        (N'Khu đất 11', 'khu-dat-11', N'Địa chỉ 11'),
        (N'Khu đất 12', 'khu-dat-12', N'Địa chỉ 12'),
        (N'Khu đất 13', 'khu-dat-13', N'Địa chỉ 13'),
        (N'Khu đất 14', 'khu-dat-14', N'Địa chỉ 14'),
        (N'Khu đất 15', 'khu-dat-15', N'Địa chỉ 15'),
        (N'Khu đất 16', 'khu-dat-16', N'Địa chỉ 16'),
        (N'Khu đất 17', 'khu-dat-17', N'Địa chỉ 17'),
        (N'Khu đất 18', 'khu-dat-18', N'Địa chỉ 18'),
        (N'Khu đất 19', 'khu-dat-19', N'Địa chỉ 19'),
        (N'Khu đất 20', 'khu-dat-20', N'Địa chỉ 20'),
        (N'Khu đất 21', 'khu-dat-21', N'Địa chỉ 21'),
        (N'Khu đất 22', 'khu-dat-22', N'Địa chỉ 22'),
        (N'Khu đất 23', 'khu-dat-23', N'Địa chỉ 23'),
        (N'Khu đất 24', 'khu-dat-24', N'Địa chỉ 24'),
        (N'Khu đất 25', 'khu-dat-25', N'Địa chỉ 25'),
        (N'Khu đất 26', 'khu-dat-26', N'Địa chỉ 26');

INSERT
IGNORE INTO Apartment(name, slug, floorAmount, areaId)
VALUES (N'Căn hộ Vạn Phước', 'can-ho-van-phuoc', 30, 1),
       (N'Căn hộ Vạn Lộc', 'can-ho-van-loc', 40, 2),
       (N'Căn hộ Vạn Thọ', 'can-ho-van-tho', 20, 3),
       (N'Căn hộ Vạn Bình', 'can-ho-van-binh', 30, 4),
       (N'Căn hộ Vạn An', 'can-ho-van-an', 15, 1),
       (N'Căn hộ 1', 'can-ho-1', 10, 1),
       (N'Căn hộ 2', 'can-ho-2', 10, 1),
       (N'Căn hộ 3', 'can-ho-3', 10, 1),
       (N'Căn hộ 4', 'can-ho-4', 10, 1),
       (N'Căn hộ 5', 'can-ho-5', 10, 1),
       (N'Căn hộ 6', 'can-ho-6', 10, 1),
       (N'Căn hộ 7', 'can-ho-7', 10, 1),
       (N'Căn hộ 8', 'can-ho-8', 10, 1),
       (N'Căn hộ 9', 'can-ho-9', 10, 1),
       (N'Căn hộ 10', 'can-ho-10', 10, 1),
       (N'Căn hộ 11', 'can-ho-11', 10, 1),
       (N'Căn hộ 12', 'can-ho-12', 10, 1),
       (N'Căn hộ 13', 'can-ho-13', 10, 1),
       (N'Căn hộ 14', 'can-ho-14', 10, 1),
       (N'Căn hộ 15', 'can-ho-15', 10, 1),
       (N'Căn hộ 16', 'can-ho-16', 10, 1),
       (N'Căn hộ 17', 'can-ho-17', 10, 1),
       (N'Căn hộ 18', 'can-ho-18', 10, 1),
       (N'Căn hộ 19', 'can-ho-19', 10, 1),
       (N'Căn hộ 20', 'can-ho-20', 10, 2),
       (N'Căn hộ 21', 'can-ho-21', 10, 2),
       (N'Căn hộ 22', 'can-ho-22', 10, 2),
       (N'Căn hộ 23', 'can-ho-23', 10, 2),
       (N'Căn hộ 24', 'can-ho-24', 10, 2),
       (N'Căn hộ 25', 'can-ho-25', 10, 2),
       (N'Căn hộ 26', 'can-ho-26', 10, 2),
       (N'Căn hộ 27', 'can-ho-27', 10, 2),
       (N'Căn hộ 28', 'can-ho-28', 10, 2),
       (N'Căn hộ 29', 'can-ho-29', 10, 2),
       (N'Căn hộ 30', 'can-ho-30', 10, 2),
       (N'Căn hộ 31', 'can-ho-31', 10, 2),
       (N'Căn hộ 32', 'can-ho-32', 10, 2),
       (N'Căn hộ 33', 'can-ho-33', 10, 3),
       (N'Căn hộ 34', 'can-ho-34', 10, 4),
       (N'Căn hộ 35', 'can-ho-35', 10, 5),
       (N'Căn hộ 36', 'can-ho-36', 10, 6),
       (N'Căn hộ 37', 'can-ho-37', 10, 7),
       (N'Căn hộ 38', 'can-ho-38', 10, 8),
       (N'Căn hộ 39', 'can-ho-39', 10, 9),
       (N'Căn hộ 40', 'can-ho-40', 10, 10),
       (N'Căn hộ 41', 'can-ho-41', 10, 11),
       (N'Căn hộ 42', 'can-ho-42', 10, 12),
       (N'Căn hộ 43', 'can-ho-43', 10, 13),
       (N'Căn hộ 44', 'can-ho-44', 10, 14),
       (N'Căn hộ 45', 'can-ho-45', 10, 15),
       (N'Căn hộ 46', 'can-ho-46', 10, 16),
       (N'Căn hộ 47', 'can-ho-47', 10, 17),
       (N'Căn hộ 48', 'can-ho-48', 10, 18),
       (N'Căn hộ 49', 'can-ho-49', 10, 19),
       (N'Căn hộ 50', 'can-ho-50', 10, 10),
       (N'Căn hộ 51', 'can-ho-51', 10, 11),
       (N'Căn hộ 52', 'can-ho-52', 10, 12),
       (N'Căn hộ 53', 'can-ho-53', 10, 13),
        (N'Căn hộ 54', 'can-ho-54', 10, 14),
       (N'Căn hộ 55', 'can-ho-55', 10, 15),
       (N'Căn hộ 56', 'can-ho-56', 10, 16),
       (N'Căn hộ 57', 'can-ho-57', 10, 17),
       (N'Căn hộ 58', 'can-ho-58', 10, 18),
       (N'Căn hộ 59', 'can-ho-59', 10, 19),
       (N'Căn hộ 60', 'can-ho-60', 10, 20),
       (N'Căn hộ 61', 'can-ho-61', 10, 21),
       (N'Căn hộ 62', 'can-ho-62', 10, 22),
       (N'Căn hộ 63', 'can-ho-63', 10, 23),
       (N'Căn hộ 64', 'can-ho-64', 10, 24),
       (N'Căn hộ 65', 'can-ho-65', 10, 25),
       (N'Căn hộ 66', 'can-ho-66', 10, 26),
       (N'Căn hộ 67', 'can-ho-67', 10, 27),
       (N'Căn hộ 68', 'can-ho-68', 10, 28),
       (N'Căn hộ 69', 'can-ho-69', 10, 29),
       (N'Căn hộ 70', 'can-ho-70', 10, 30);

INSERT
IGNORE INTO Room(name, slug, floorNumber, apartmentId)
VALUES (N'Phòng Xuân', 'phong-xuan', 7, 1),
       (N'Phòng Hạ', 'phong-ha', 21, 2),
       (N'Phòng Thu', 'phong-thu', 15, 3),
       (N'Phòng Đông', 'phong-dong', 3, 4),
       (N'Phòng Mưa', 'phong-mua', 6, 5),
       (N'Phòng Nắng', 'phong-nang', 10, 1),
       (N'Phòng Âm U', 'phong-am-u', 15, 2),
        (N'Phòng 1', 'phong-1', 4, 1),
        (N'Phòng 2', 'phong-2', 4, 1),
        (N'Phòng 3', 'phong-3', 4, 1),
        (N'Phòng 4', 'phong-4', 4, 1),
        (N'Phòng 5', 'phong-5', 4, 1),
        (N'Phòng 6', 'phong-6', 4, 1),
        (N'Phòng 7', 'phong-7', 4, 1),
        (N'Phòng 8', 'phong-8', 4, 1),
        (N'Phòng 9', 'phong-9', 4, 1),
        (N'Phòng 10', 'phong-10', 4, 1),
        (N'Phòng 11', 'phong-11', 4, 1),
        (N'Phòng 12', 'phong-12', 4, 1),
        (N'Phòng 13', 'phong-13', 4, 1),
        (N'Phòng 14', 'phong-14', 4, 1),
        (N'Phòng 15', 'phong-15', 4, 1),
        (N'Phòng 16', 'phong-16', 4, 1),
        (N'Phòng 17', 'phong-17', 4, 1),
        (N'Phòng 18', 'phong-18', 4, 1),
        (N'Phòng 19', 'phong-19', 4, 1),
        (N'Phòng 20', 'phong-20', 4, 1),
        (N'Phòng 21', 'phong-21', 4, 1),
        (N'Phòng 22', 'phong-22', 4, 1),
        (N'Phòng 23', 'phong-23', 4, 1),
        (N'Phòng 24', 'phong-24', 4, 1),
        (N'Phòng 25', 'phong-25', 4, 1),
        (N'Phòng 26', 'phong-26', 4, 1),
        (N'Phòng 27', 'phong-27', 4, 1),
        (N'Phòng 28', 'phong-28', 4, 1),
        (N'Phòng 29', 'phong-29', 4, 1),
        (N'Phòng 30', 'phong-30', 4, 1),
        (N'Phòng 31', 'phong-31', 4, 1),
        (N'Phòng 32', 'phong-32', 4, 1),
        (N'Phòng 33', 'phong-33', 4, 1),
        (N'Phòng 34', 'phong-34', 4, 1),
        (N'Phòng 35', 'phong-35', 4, 1),
        (N'Phòng 36', 'phong-36', 4, 1),
        (N'Phòng 37', 'phong-37', 4, 1),
        (N'Phòng 38', 'phong-38', 4, 1),
        (N'Phòng 39', 'phong-39', 4, 1),
        (N'Phòng 40', 'phong-40', 4, 1),
        (N'Phòng 41', 'phong-41', 4, 1),
        (N'Phòng 42', 'phong-42', 4, 1),
        (N'Phòng 43', 'phong-43', 4, 1),
        (N'Phòng 44', 'phong-44', 4, 1),
        (N'Phòng 45', 'phong-45', 4, 1),
        (N'Phòng 46', 'phong-46', 4, 1),
        (N'Phòng 47', 'phong-47', 4, 1),
        (N'Phòng 48', 'phong-48', 4, 1),
        (N'Phòng 49', 'phong-49', 4, 1),
        (N'Phòng 50', 'phong-50', 4, 1),
        (N'Phòng 51', 'phong-51', 4, 1),
        (N'Phòng 52', 'phong-52', 4, 2),
        (N'Phòng 53', 'phong-53', 4, 2),
        (N'Phòng 54', 'phong-54', 4, 2),
        (N'Phòng 55', 'phong-55', 4, 2),
        (N'Phòng 56', 'phong-56', 4, 2),
        (N'Phòng 57', 'phong-57', 4, 2),
        (N'Phòng 58', 'phong-58', 4, 2),
        (N'Phòng 59', 'phong-59', 4, 2),
        (N'Phòng 60', 'phong-60', 4, 2),
        (N'Phòng 61', 'phong-61', 4, 2),
        (N'Phòng 62', 'phong-62', 4, 2),
        (N'Phòng 63', 'phong-63', 4, 2),
        (N'Phòng 64', 'phong-64', 4, 2),
        (N'Phòng 65', 'phong-65', 4, 2),
        (N'Phòng 66', 'phong-66', 4, 2),
        (N'Phòng 67', 'phong-67', 4, 2),
        (N'Phòng 68', 'phong-68', 4, 2),
        (N'Phòng 69', 'phong-69', 4, 2),
        (N'Phòng 70', 'phong-70', 4, 2),
        (N'Phòng 71', 'phong-71', 4, 2),
        (N'Phòng 72', 'phong-72', 4, 2),
        (N'Phòng 73', 'phong-73', 4, 2),
        (N'Phòng 74', 'phong-74', 4, 2),
        (N'Phòng 75', 'phong-75', 4, 2),
        (N'Phòng 76', 'phong-76', 4, 2),
        (N'Phòng 77', 'phong-77', 4, 2),
        (N'Phòng 78', 'phong-78', 4, 2),
        (N'Phòng 79', 'phong-79', 4, 2),
        (N'Phòng 80', 'phong-80', 4, 2),
        (N'Phòng 81', 'phong-81', 4, 3),
        (N'Phòng 82', 'phong-82', 4, 4),
        (N'Phòng 83', 'phong-83', 4, 5),
        (N'Phòng 84', 'phong-84', 4, 6),
        (N'Phòng 85', 'phong-85', 4, 7),
        (N'Phòng 86', 'phong-86', 4, 8),
        (N'Phòng 87', 'phong-87', 4, 9),
        (N'Phòng 88', 'phong-88', 4, 10),
        (N'Phòng 89', 'phong-89', 4, 11),
        (N'Phòng 90', 'phong-90', 4, 12),
        (N'Phòng 91', 'phong-91', 4, 13),
        (N'Phòng 92', 'phong-92', 4, 14),
        (N'Phòng 93', 'phong-93', 4, 15),
        (N'Phòng 94', 'phong-94', 4, 16),
        (N'Phòng 95', 'phong-95', 4, 17),
        (N'Phòng 96', 'phong-96', 4, 18),
        (N'Phòng 97', 'phong-97', 4, 19),
        (N'Phòng 98', 'phong-98', 4, 20),
        (N'Phòng 99', 'phong-99', 4, 21),
        (N'Phòng 100', 'phong-100', 4, 22),
        (N'Phòng 101', 'phong-101', 4, 23),
        (N'Phòng 102', 'phong-102', 4, 24),
        (N'Phòng 103', 'phong-103', 4, 25),
        (N'Phòng 104', 'phong-104', 4, 26),
        (N'Phòng 105', 'phong-105', 4, 27),
        (N'Phòng 106', 'phong-106', 4, 28),
        (N'Phòng 107', 'phong-107', 4, 29),
        (N'Phòng 108', 'phong-108', 4, 30),
        (N'Phòng 109', 'phong-109', 4, 31),
        (N'Phòng 110', 'phong-110', 4, 32),
        (N'Phòng 111', 'phong-111', 4, 33),
        (N'Phòng 112', 'phong-112', 4, 34),
        (N'Phòng 113', 'phong-113', 4, 35),
        (N'Phòng 114', 'phong-114', 4, 36),
        (N'Phòng 115', 'phong-115', 4, 37),
        (N'Phòng 116', 'phong-116', 4, 38),
        (N'Phòng 117', 'phong-117', 4, 39),
        (N'Phòng 118', 'phong-118', 4, 40),
        (N'Phòng 119', 'phong-119', 4, 41),
        (N'Phòng 120', 'phong-120', 4, 42),
        (N'Phòng 121', 'phong-121', 4, 43),
        (N'Phòng 122', 'phong-122', 4, 44),
        (N'Phòng 123', 'phong-123', 4, 45),
        (N'Phòng 124', 'phong-124', 4, 46),
        (N'Phòng 125', 'phong-125', 4, 47),
        (N'Phòng 126', 'phong-126', 4, 48),
        (N'Phòng 127', 'phong-127', 4, 49),
        (N'Phòng 128', 'phong-128', 4, 50),
        (N'Phòng 129', 'phong-129', 4, 51),
        (N'Phòng 130', 'phong-130', 4, 52),
        (N'Phòng 131', 'phong-131', 4, 53),
        (N'Phòng 132', 'phong-132', 4, 54),
        (N'Phòng 133', 'phong-133', 4, 55),
        (N'Phòng 134', 'phong-134', 4, 56),
        (N'Phòng 135', 'phong-135', 4, 57),
        (N'Phòng 136', 'phong-136', 4, 58),
        (N'Phòng 137', 'phong-137', 4, 59),
        (N'Phòng 138', 'phong-138', 4, 60),
        (N'Phòng 139', 'phong-139', 4, 61),
        (N'Phòng 140', 'phong-140', 4, 62),
        (N'Phòng 141', 'phong-141', 4, 63),
        (N'Phòng 142', 'phong-142', 4, 64),
        (N'Phòng 143', 'phong-143', 4, 65),
        (N'Phòng 144', 'phong-144', 4, 66),
        (N'Phòng 145', 'phong-145', 4, 67),
        (N'Phòng 146', 'phong-146', 4, 68),
        (N'Phòng 147', 'phong-147', 4, 68),
        (N'Phòng 148', 'phong-148', 4, 69),
        (N'Phòng 149', 'phong-149', 4, 70),
        (N'Phòng 150', 'phong-150', 4, 1),
        (N'Phòng 151', 'phong-151', 4, 1),
        (N'Phòng 152', 'phong-152', 4, 1),
        (N'Phòng 153', 'phong-153', 4, 1),
        (N'Phòng 154', 'phong-154', 4, 1),
        (N'Phòng 155', 'phong-155', 4, 1),
        (N'Phòng 156', 'phong-156', 4, 1),
        (N'Phòng 157', 'phong-157', 4, 1),
        (N'Phòng 158', 'phong-158', 4, 1),
        (N'Phòng 159', 'phong-159', 4, 1),
        (N'Phòng 160', 'phong-160', 4, 1),
        (N'Phòng 161', 'phong-161', 4, 1),
        (N'Phòng 162', 'phong-162', 4, 1),
        (N'Phòng 163', 'phong-163', 4, 1),
        (N'Phòng 164', 'phong-164', 4, 1),
        (N'Phòng 165', 'phong-165', 4, 1),
        (N'Phòng 166', 'phong-166', 4, 1),
        (N'Phòng 167', 'phong-167', 4, 1),
        (N'Phòng 168', 'phong-168', 4, 1),
        (N'Phòng 169', 'phong-169', 4, 1),
        (N'Phòng 170', 'phong-170', 4, 1),
        (N'Phòng 171', 'phong-171', 4, 1),
        (N'Phòng 172', 'phong-172', 4, 1),
        (N'Phòng 173', 'phong-173', 4, 1),
        (N'Phòng 174', 'phong-174', 4, 1),
        (N'Phòng 175', 'phong-175', 4, 1),
        (N'Phòng 176', 'phong-176', 4, 1),
        (N'Phòng 177', 'phong-177', 4, 1),
        (N'Phòng 178', 'phong-178', 4, 1),
        (N'Phòng 179', 'phong-179', 4, 1),
        (N'Phòng 180', 'phong-180', 4, 1),
        (N'Phòng 181', 'phong-181', 4, 1),
        (N'Phòng 182', 'phong-182', 4, 1),
        (N'Phòng 183', 'phong-183', 4, 1),
        (N'Phòng 184', 'phong-184', 4, 1),
        (N'Phòng 185', 'phong-185', 4, 1),
        (N'Phòng 186', 'phong-186', 4, 1),
        (N'Phòng 187', 'phong-187', 4, 1),
        (N'Phòng 188', 'phong-188', 4, 1),
        (N'Phòng 189', 'phong-189', 4, 1),
        (N'Phòng 190', 'phong-190', 4, 1),
        (N'Phòng 191', 'phong-191', 4, 1),
        (N'Phòng 192', 'phong-192', 4, 1),
        (N'Phòng 193', 'phong-193', 4, 1),
        (N'Phòng 194', 'phong-194', 4, 1),
        (N'Phòng 195', 'phong-195', 4, 1),
        (N'Phòng 196', 'phong-196', 4, 1),
        (N'Phòng 197', 'phong-197', 4, 1),
        (N'Phòng 198', 'phong-198', 4, 1),
        (N'Phòng 199', 'phong-199', 4, 1),
        (N'Phòng 200', 'phong-200', 4, 1),
        (N'Phòng 201', 'phong-201', 4, 1),
        (N'Phòng 202', 'phong-202', 4, 1),
        (N'Phòng 203', 'phong-203', 4, 1);
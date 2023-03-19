-- liquibase formatted sql
-- 2022-12-22 20:00:00 VN
-- changeset trungkien.nguyen:V202212222000_init_master_database_data
INSERT
IGNORE INTO FeedBackType (name, slug)
VALUES  (N'Phản hồi lỗi hệ thống', 'phan-hoi-loi-he-thong'),
    (N'Phản hồi dịch vụ', 'phan-hoi-dich-vu');

INSERT
IGNORE INTO FeedBack (title, slug, content, userId, feedBackTypeId)
VALUES (N'Phản hồi hệ thống nước hư', 'phan-hoi-he-thong-nuoc-hu', 'Hệ thống nước của phòng D01 đang bị hư. Cần sửa gấp', 1, 2),
    (N'Phản hồi hệ thống điện hư', 'phan-hoi-he-thong-dien-hu', 'Hệ thống điện của phòng D02 đang bị hư. Cần sửa gấp', 2, 2),
    (N'Phản hồi hệ thống còi báo động hư', 'phan-hoi-he-thong-coi-bao-dong-hu', 'Hệ thống còi báo động hư của phòng D03 đang bị hư. Cần sửa gấp', 3, 2),
    (N'Hệ thống không bình luận được', 'he-thong-khong-binh-luan-duoc', 'Hệ thống web không thể bình luận được', 5, 1);

INSERT
IGNORE INTO Post (title, slug, content, totalComment, totalEmotion, isEdited)
VALUES (N'Giới thiệu về hệ thống Habolabu', 'gioi-thieu-ve-he-thong-habolabu', 'Hệ thống Habolabu là một hệ thống quản lý dân cư', 4, 4, false),
    (N'Nội quy tại habolabu', 'noi-quy-tai-habolabu', 'Habolabu là nơi không có nội quy', 5, 5, false),
    (N'Ưu điểm của habolabu', 'uu-diem-cua-habolabu', 'Ưu điểm của Habolabu là không có khuyết điểm', 1, 1, true),
    (N'Nhược điểm của habolabu', 'nhuoc-diem-cua-habolabu', 'Nhược điểm của Habolabu là toàn ưu điểm', 1, 8, false);

INSERT
IGNORE INTO Emotion (name, icon)
VALUES (N'Thích', 'https://res.cloudinary.com/dzd9sonxs/image/upload/v1672239478/emoji/like_uxq9ok.svg'),
    (N'Tim', 'https://res.cloudinary.com/dzd9sonxs/image/upload/v1672239478/emoji/love_vhjhlb.svg'),
    (N'Thương thương', 'https://res.cloudinary.com/dzd9sonxs/image/upload/v1672239479/emoji/care_rjzmav.svg'),
    (N'Haha', 'https://res.cloudinary.com/dzd9sonxs/image/upload/v1672239478/emoji/haha_hwgo3u.svg'),
    (N'Wow', 'https://res.cloudinary.com/dzd9sonxs/image/upload/v1672239477/emoji/wow_jmezta.svg'),
    (N'Buồn', 'https://res.cloudinary.com/dzd9sonxs/image/upload/v1672239478/emoji/sad_ttzf24.svg'),
    (N'Giận dữ', 'https://res.cloudinary.com/dzd9sonxs/image/upload/v1672239478/emoji/angry_voavkr.svg');

INSERT
IGNORE INTO Comment (content, totalEmotion, userId, postId, commentId)
VALUES (N'Ú là trời!', 3, 1, 1, NULL),
    (N'Quá tuyệt vời', 2, 2, 1, 1),
    (N'Hảo hảo 100', 4, 3, 1, 1),
    (N'Hảo hảo chua cay', 2, 5, 1, 2),
    (N'wán đờ phùn', 4, 1, 2, NULL),
    (N'wán đờ phèng', 2, 2, 2, 5),
    (N'wán đờ phàng', 0, 3, 2, 5),
    (N'wán đờ phìn', 0, 2, 2, NULL),
    (N'wán đờ phồng', 1, 5, 2, 8),
    (N'ahihi', 1, 1, 3, NULL),
    (N'ahoho', 0, 1, 4, NULL);

INSERT
IGNORE INTO CommentEmotion (commentId, userId, emotionId)
VALUES (1,1,1),
    (2,2,2),
    (3,3,3),
    (4,4,4),
    (5,5,5),
    (6,6,6),
    (7,7,7),
    (8,8,1),
    (9,9,2),
    (10,10,3),
    (11,1,4),
    (1,2,5),
    (2,3,6),
    (3,4,7),
    (4,5,1),
    (5,6,2),
    (6,7,3),
    (7,8,4),
    (8,9,5);

INSERT
IGNORE INTO PostEmotion (postId, userId, emotionId)
VALUES (1, 1, 1),
    (1, 2, 2),
    (1, 3, 3),
    (1, 4, 4),
    (2, 1, 5),
    (2, 2, 6),
    (2, 3, 7),
    (2, 4, 1),
    (2, 5, 1),
    (3, 1, 2),
    (4, 2, 3),
    (4, 3, 4),
    (4, 4, 5),
    (4, 5, 6),
    (4, 6, 7),
    (4, 7, 1),
    (4, 8, 2),
    (4, 9, 3);
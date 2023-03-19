-- liquibase formatted sql
-- 2022-10-06 10:00:00 VN
-- changeset trungkien.nguyen:V202210061000_init_master_database_data
INSERT
IGNORE INTO Role(name, display)
VALUES  ('quan-tri-vien', N'Quản trị viên'),
        ('nguoi-dung-thuong', N'Người dùng thường');

INSERT
IGNORE INTO Account(username, userId, roleId)
VALUES ('test.admin', 1, 1),
    ('test.user1', 2, 2),
    ('test.user2', 3, 2),
    ('test.user3', 4, 2),
    ('test.user4', 5, 2),
    ('test.user5', 6, 2),
    ('test.user6', 7, 2),
    ('test.user7', 8, 2),
    ('test.user8', 9, 2),
    ('test.user9', 10, 2),
    ('test.user10', 11, 2);

INSERT INTO Password (password, accountId)
VALUES ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 1),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 2),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 3),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 4),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 5),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 6),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 7),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 8),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 9),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 10);
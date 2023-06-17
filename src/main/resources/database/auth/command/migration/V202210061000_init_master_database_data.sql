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
    ('test.user10', 11, 2),
    ('test.user11', 12, 2),
    ('test.user12', 13, 2),
    ('test.user13', 14, 2),
    ('test.user14', 15, 2),
    ('test.user15', 16, 2),
    ('test.user16', 17, 2),
    ('test.user17', 18, 2),
    ('test.user18', 19, 2),
    ('test.user19', 20, 2),
    ('test.user20', 21, 2),
    ('test.user21', 22, 2),
    ('test.user22', 23, 2),
    ('test.user23', 24, 2),
    ('test.user24', 25, 2);

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
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 10),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 11),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 12),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 13),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 14),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 15),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 16),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 17),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 18),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 19),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 20),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 21),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 22),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 23),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 24),
       ('$2a$12$1dHd0ZGdkvI0chMWs2P.a.FdAfGSW/u3MHdFezey4BAUwr.DWOLi2', 25);
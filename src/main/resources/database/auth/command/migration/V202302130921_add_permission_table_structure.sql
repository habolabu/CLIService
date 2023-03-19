-- liquibase formatted sql
-- 2023-02-13 21:00:00 VN
-- changeset trungkien.nguyen:V202302130921_add_permission_table_structure

CREATE TABLE IF NOT EXISTS AccountSetting
(
    accountId       INT,
    roleId          INT,
    permissionId    INT,
    status          BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (accountId, roleId, permissionId)
);

CREATE TABLE IF NOT EXISTS Service
(
    id          INT AUTO_INCREMENT,
    name        VARCHAR(255)        UNIQUE   NOT NULL,
    createdAt   DATETIME                     NOT NULL   DEFAULT NOW(),
    isDeleted   DATETIME                                DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Permission
(
    id          INT AUTO_INCREMENT,
    name        VARCHAR(50)         UNIQUE  NOT NULL,
    display     VARCHAR(255)        UNIQUE  NOT NULL,
    parentId    INT,
    childOrder  INT,
    type        VARCHAR(50)                 NOT NULL,
    serviceId   INT                         NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE AccountSetting
    ADD CONSTRAINT FK_AccountSetting_Account
FOREIGN KEY (accountId)
    REFERENCES Account(id),
    ADD CONSTRAINT FK_AccountSetting_Permission
FOREIGN KEY (permissionId)
    REFERENCES Permission(id),
    ADD CONSTRAINT FK_AccountSetting_Role
FOREIGN KEY (roleId)
    REFERENCES Role(id);

ALTER TABLE Permission
    ADD CONSTRAINT FK_Permission_Service
FOREIGN KEY (serviceId)
    REFERENCES Service(id),
    ADD CONSTRAINT FK_Permission_Permission
FOREIGN KEY (parentId)
    REFERENCES Permission(id);

ALTER TABLE Account
DROP CONSTRAINT FK_Account_Role,
DROP COLUMN roleId;




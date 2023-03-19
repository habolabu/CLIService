-- liquibase formatted sql
-- 2022-10-06 10:00:00 VN
-- changeset trungkien.nguyen:V202210061000_init_master_database_structure

CREATE TABLE IF NOT EXISTS Role
(
    id          INT AUTO_INCREMENT,
    name        VARCHAR(50)         UNIQUE NOT NULL,
    display     CHARACTER(255)             NOT NULL,
    isDeleted   DATETIME                                DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Account
(
    id          INT AUTO_INCREMENT,
    username    VARCHAR(50)       UNIQUE  NOT NULL,
    createdAt   DATETIME                   NOT NULL    DEFAULT NOW(),
    userId      INT,
    roleId      INT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Password
(
    id          INT AUTO_INCREMENT,
    password    VARCHAR(255)               NOT NULL,
    createdAt   DATETIME                   NOT NULL    DEFAULT NOW(),
    accountId   INT,
    PRIMARY KEY (id)
);


ALTER TABLE Password
    ADD CONSTRAINT FK_Password_Account
FOREIGN KEY(accountId)
    REFERENCES Account(id);

ALTER TABLE Account
    ADD CONSTRAINT FK_Account_Role
FOREIGN KEY(roleId)
    REFERENCES Role(id);
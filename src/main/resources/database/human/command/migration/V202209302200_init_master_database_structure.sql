-- liquibase formatted sql
-- 2022-09-30 22:00:00 VN
-- changeset trungkien.nguyen:V202209302200_init_master_database_structure

CREATE TABLE IF NOT EXISTS User
(
    id          INT AUTO_INCREMENT,
    firstName   CHARACTER(100)            NOT NULL,
    lastName    CHARACTER(255)            NOT NULL,
    address     CHARACTER(255)            NOT NULL,
    idCard      CHAR(12)                  NOT NULL,
    phoneNumber CHAR(10)                  NOT NULL,
    email       VARCHAR(255)              NOT NULL,
    gender      BOOLEAN                   NOT NULL    DEFAULT TRUE,
    dateOfBirth DATE                      NOT NULL,
    nationality CHARACTER(100)            NOT NULL    DEFAULT N'Việt Nam',
    createdAt   DATETIME                  NOT NULL    DEFAULT NOW(),
    isDeleted   DATETIME                              DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Avatar
(
    id          INT AUTO_INCREMENT,
    url         VARCHAR(255)               NOT NULL,
    createdAt   DATETIME                   NOT NULL    DEFAULT NOW(),
    isSelected  BOOLEAN                    NOT NULL    DEFAULT FALSE,
    isDeleted   DATETIME                               DEFAULT NULL,
    userId      INT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Emergency
(
    id          INT AUTO_INCREMENT,
    name        CHARACTER(255)      UNIQUE NOT NULL,
    address     CHARACTER(255)             NOT NULL,
    phoneNumber CHAR(10)                   NOT NULL,
    isDeleted   DATETIME                               DEFAULT NULL,
    userId      INT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS RoomDetail
(
    userId      INT,
    roomId      INT,
    joinDate    DATETIME  DEFAULT NOW(),
    PRIMARY KEY (userId, roomId)
);

CREATE TABLE IF NOT EXISTS ParkingDetail
(
    userId          INT,
    parkingId       INT,
    parkingTypeId   INT,
    joinDate    DATETIME  DEFAULT NOW(),
    PRIMARY KEY (userId, parkingId)
    );

ALTER TABLE Avatar
    ADD CONSTRAINT FK_Avatar_User
FOREIGN KEY(userId)
    REFERENCES User(id);

ALTER TABLE RoomDetail
    ADD CONSTRAINT FK_RoomDetail_User
FOREIGN KEY(userId)
    REFERENCES User(id);

ALTER TABLE ParkingDetail
    ADD CONSTRAINT FK_ParkingDetail_User
FOREIGN KEY(userId)
    REFERENCES User(id);

ALTER TABLE Emergency
    ADD CONSTRAINT FK_Emergency_User
FOREIGN KEY(userId)
    REFERENCES User(id);
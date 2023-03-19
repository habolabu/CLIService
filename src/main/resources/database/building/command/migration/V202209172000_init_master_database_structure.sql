-- liquibase formatted sql
-- 2022-09-17 20:00:00 VN
-- changeset trungkien.nguyen:202209172000_init_master_database_structure

CREATE TABLE IF NOT EXISTS OwnerHistory
(
    id        INT AUTO_INCREMENT,
    joinDate  DATETIME       NOT NULL DEFAULT NOW(),
    isDeleted DATETIME       DEFAULT NULL ,
    ownerId   INT            NOT NULL,
    roomId    INT            NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Parking
(
    id          INT AUTO_INCREMENT,
    name        CHARACTER(50)     UNIQUE  NOT NULL,
    slug        VARCHAR(50)       UNIQUE  NOT NULL,
    isDeleted   DATETIME          DEFAULT NULL,
    apartmentId INT                       NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS PriceTag
(
    id              INT AUTO_INCREMENT,
    name            CHARACTER(50)    UNIQUE  NOT NULL,
    slug            VARCHAR(50)      UNIQUE  NOT NULL,
    pricePerDay     DECIMAL          DEFAULT 0,
    isDeleted       DATETIME         DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ParkingType
(
    id              INT AUTO_INCREMENT,
    name            CHARACTER(50)    UNIQUE  NOT NULL,
    slug            VARCHAR(50)      UNIQUE  NOT NULL,
    isDeleted       DATETIME         DEFAULT NULL,
    priceTagId      INT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ParkingSpace
(
    parkingId       INT,
    parkingTypeId   INT,
    capacity        INT  DEFAULT 0,
    availableSpace  INT  DEFAULT 0,
    PRIMARY KEY (parkingId, parkingTypeId)
);

ALTER TABLE Room
    ADD COLUMN priceTagId INT;

ALTER TABLE Room
    ADD CONSTRAINT FK_Room_PriceTag
FOREIGN KEY (priceTagId)
    REFERENCES PriceTag (id);

ALTER TABLE OwnerHistory
    ADD CONSTRAINT FK_OwnerHistory_Room
FOREIGN KEY (roomId)
    REFERENCES  Room(id);

ALTER TABLE Parking
    ADD CONSTRAINT FK_Parking_Apartment
FOREIGN KEY (apartmentId)
    REFERENCES  Apartment(id);

ALTER TABLE ParkingType
    ADD CONSTRAINT FK_ParkingType_PriceTag
FOREIGN KEY (priceTagId)
    REFERENCES  PriceTag(id);

ALTER TABLE ParkingSpace
    ADD CONSTRAINT FK_ParkingSpace_Parking
FOREIGN KEY (parkingId)
    REFERENCES  Parking(id),
    ADD CONSTRAINT FK_ParkingSpace_ParkingType
FOREIGN KEY (parkingTypeId)
    REFERENCES  ParkingType(id);
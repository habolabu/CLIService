-- liquibase formatted sql
-- 2022-08-05 21:30:00 VN
-- changeset trungkien.nguyen:202208052130_init_master_database_structure

CREATE TABLE IF NOT EXISTS Area
(
    id        INT AUTO_INCREMENT,
    name      CHARACTER(50) UNIQUE NOT NULL,
    slug      VARCHAR(50) UNIQUE   NOT NULL,
    address   CHARACTER(255) DEFAULT NULL,
    isDeleted DATETIME       DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Apartment
(
    id          INT AUTO_INCREMENT,
    name        CHARACTER(50) UNIQUE NOT NULL,
    slug        VARCHAR(50) UNIQUE   NOT NULL,
    floorAmount INT                  NOT NULL DEFAULT 0,
    isDeleted   DATETIME                      DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Room
(
    id          INT AUTO_INCREMENT,
    name        CHARACTER(20) UNIQUE NOT NULL,
    slug        VARCHAR(20) UNIQUE   NOT NULL,
    floorNumber INT                  NOT NULL DEFAULT 0,
    isDeleted   DATETIME                      DEFAULT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE Apartment
    ADD COLUMN areaId INT DEFAULT NULL,
ADD CONSTRAINT FK_Apartment_Area
FOREIGN KEY(areaId)
REFERENCES Area(id);

ALTER TABLE Room
    ADD COLUMN  apartmentId INT DEFAULT NULL,
ADD CONSTRAINT FK_Room_Apartment
FOREIGN KEY(apartmentId)
REFERENCES Apartment(id);

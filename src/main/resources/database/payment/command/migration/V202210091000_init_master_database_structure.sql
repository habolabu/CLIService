-- liquibase formatted sql
-- 2022-10-08 10:00:00 VN
-- changeset trungkien.nguyen:V202210081000_init_master_database_structure

CREATE TABLE IF NOT EXISTS BillStatus
(
    id          INT AUTO_INCREMENT,
    name        CHARACTER(255)               NOT NULL,
    slug        VARCHAR(255)                 NOT NULL,
    isDeleted   DATETIME                                DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS PaymentType
(
    id          INT AUTO_INCREMENT,
    name        CHARACTER(255)               NOT NULL,
    slug        VARCHAR(255)                 NOT NULL,
    isDeleted   DATETIME                                DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Bill
(
    id              INT AUTO_INCREMENT,
    total           DECIMAL(18,2)             NOT NULL,
    paidDate        DATETIME                              DEFAULT NULL,
    createdAt       DATETIME                  NOT NULL    DEFAULT NOW(),
    userId          INT,
    paymentTypeId   INT,
    billStatusId    INT,
    PRIMARY KEY (id)
);

CREATE TABLE ParkingBill(
    id              INT AUTO_INCREMENT,
    billId          INT                       NOT NULL,
    parkingId       INT                       NOT NULL,
    parkingTypeId   INT                       NOT NULL,
    dayAmount       INT                       NOT NULL ,
    total           DECIMAL(18,2)             NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE RoomBill(
    id              INT AUTO_INCREMENT,
    billId          INT                       NOT NULL,
    roomId          INT                       NOT NULL,
    dayAmount       INT                       NOT NULL,
    total           DECIMAL(18,2)             NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE PaymentHistoryTemporary(
    userId                    INT,
    nearestPaidDate           DATETIME        NOT NULL     DEFAULT NOW(),
    PRIMARY KEY (userId)
);


ALTER TABLE Bill
    ADD CONSTRAINT FK_Bill_BillStatus
FOREIGN KEY (billStatusId)
    REFERENCES BillStatus(id),
    ADD CONSTRAINT FK_Bill_PaymentType
FOREIGN KEY (paymentTypeId)
    REFERENCES PaymentType(id);

ALTER TABLE ParkingBill
    ADD  CONSTRAINT FK_ParkingBill_Bill
FOREIGN KEY (billId)
    REFERENCES Bill(id);

ALTER TABLE RoomBill
    ADD  CONSTRAINT FK_RoomBill_Bill
FOREIGN KEY (billId)
    REFERENCES Bill(id);
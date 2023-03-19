-- liquibase formatted sql
-- 2022-12-22 20:00:00 VN
-- changeset trungkien.nguyen:V202212222000_init_master_database_structure

CREATE TABLE IF NOT EXISTS FeedBackType
(
    id              INT AUTO_INCREMENT,
    name            CHARACTER(255)       NOT NULL,
    slug            VARCHAR(255)         NOT NULL,
    createdAt       DATETIME             NOT NULL   DEFAULT NOW(),
    isDeleted       DATETIME                        DEFAULT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS FeedBack
(
    id              INT AUTO_INCREMENT,
    title           CHARACTER(255)      NOT NULL,
    slug            VARCHAR(255)        NOT NULL,
    createdAt       DATETIME            NOT NULL    DEFAULT NOW(),
    isDeleted       DATETIME                        DEFAULT NULL,
    content         LONGTEXT            NOT NULL,
    userId          INT                 NOT NULL,
    feedBackTypeId  INT                 NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Post
(
    id              INT AUTO_INCREMENT,
    title           CHARACTER(255)      NOT NULL,
    slug            VARCHAR(255)        NOT NULL,
    content         LONGTEXT            NOT NULL,
    totalComment    INT                             DEFAULT 0,
    totalEmotion    INT                             DEFAULT 0,
    createdAt       DATETIME            NOT NULL    DEFAULT NOW(),
    isEdited        BOOLEAN                         DEFAULT FALSE,
    isDeleted       DATETIME                        DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Emotion
(
    id              INT AUTO_INCREMENT,
    name            VARCHAR(50)         NOT NULL,
    icon            VARCHAR(500)        NOT NULL,
    isDeleted       DATETIME                        DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Comment
(
    id              INT AUTO_INCREMENT,
    content         LONGTEXT            NOT NULL,
    totalEmotion    INT                             DEFAULT 0,
    createdAt       DATETIME            NOT NULL    DEFAULT NOW(),
    isDeleted       DATETIME                        DEFAULT NULL,
    userId          INT                 NOT NULL,
    postId          INT                 NOT NULL,
    commentId       INT                             DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS CommentEmotion
(
    commentId       INT                 NOT NULL,
    userId          INT                 NOT NULL,
    emotionId       INT                 NOT NULL,
    PRIMARY KEY (commentId, userId, emotionId)
);

CREATE TABLE IF NOT EXISTS PostEmotion
(
    postId          INT                 NOT NULL,
    userId          INT                 NOT NULL,
    emotionId       INT                 NOT NULL,
    PRIMARY KEY (postId, userId, emotionId)
);

ALTER TABLE FeedBack
    ADD CONSTRAINT FK_FeedBack_FeedBackType
FOREIGN KEY(feedBackTypeId)
    REFERENCES FeedBackType(id);

ALTER TABLE Comment
    ADD CONSTRAINT FK_Comment_Post
FOREIGN KEY (postId)
    REFERENCES Post(id),
    ADD CONSTRAINT FK_Comment_Comment
FOREIGN KEY (commentId)
    REFERENCES Comment(id);

ALTER TABLE PostEmotion
    ADD CONSTRAINT FK_PostEmotion_Post
FOREIGN KEY (postId)
    REFERENCES Post(id),
    ADD CONSTRAINT FK_PostEmotion_Emotion
FOREIGN KEY (emotionId)
    REFERENCES Emotion(id);

ALTER TABLE CommentEmotion
    ADD CONSTRAINT FK_CommentEmotion_Comment
FOREIGN KEY (commentId)
    REFERENCES Comment(id),
    ADD CONSTRAINT FK_CommentEmotion_Emotion
FOREIGN KEY (emotionId)
    REFERENCES Emotion(id);
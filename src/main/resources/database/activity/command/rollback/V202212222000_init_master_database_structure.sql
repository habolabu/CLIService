-- liquibase formatted sql
-- 2022-12-22 20:00:00 VN
-- changeset trungkien.nguyen:V202212222000_init_master_database_structure

ALTER TABLE FeedBack
DROP
CONSTRAINT FK_FeedBack_FeedBackType;

ALTER TABLE Comment
DROP
CONSTRAINT FK_Comment_Post
DROP
CONSTRAINT FK_Comment_Comment;

ALTER TABLE PostEmotion
DROP
CONSTRAINT FK_PostEmotion_Post
DROP
CONSTRAINT FK_PostEmotion_Emotion;

ALTER TABLE CommentEmotion
DROP
CONSTRAINT FK_CommentEmotion_Comment
DROP
CONSTRAINT FK_CommentEmotion_Emotion;

DROP TABLE IF EXISTS FeadBackType;

DROP TABLE IF EXISTS FeedBack;

DROP TABLE IF EXISTS Post;

DROP TABLE IF EXISTS Emotion;

DROP TABLE IF EXISTS Comment;

DROP TABLE IF EXISTS CommentEmotion;

DROP TABLE IF EXISTS PostEmotion;
-- liquibase formatted sql
-- 2022-12-22 20:00:00 VN
-- changeset trungkien.nguyen:V202212222000_init_master_database_data

DELETE
FROM  PostEmotion;

DELETE
FROM  CommentEmotion;

DELETE
FROM  Emotion;

DELETE
FROM  Comment;

DELETE
FROM  Post;

DELETE
FROM  FeadBackType;

DELETE
FROM  FeedBack;
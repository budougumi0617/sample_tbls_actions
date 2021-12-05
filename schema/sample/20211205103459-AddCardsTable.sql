
-- +migrate Up
-- +migrate Up
CREATE TABLE `cards`
(
    `id`           int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '識別子',
    `user_id`      int(11) unsigned NOT NULL COMMENT 'カードユーザーの識別子',
    `created_at`   datetime(6)      NOT NULL COMMENT 'レコード作成日時',
    `modified_at`  datetime(6)      NOT NULL COMMENT 'レコード修正日時',
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_user_id`
        FOREIGN KEY (`user_id`)
            REFERENCES `users` (`id`)
            ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='デモ用のサンプル';


-- +migrate Down
DROP TABLE IF EXISTS `cards`;
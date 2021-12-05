-- +migrate Up
CREATE TABLE IF NOT EXISTS `users`
(
    `id`            int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '識別子',
    `name`          varchar(12)      NOT NULL COMMENT '名前',
    `created_at`    datetime(6)      NOT NULL COMMENT 'レコード作成日時',
    `modified_at`   datetime(6)      NOT NULL COMMENT 'レコード修正日時',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='デモ用のサンプルテーブル';


-- +migrate Down
DROP TABLE IF EXISTS `users`;
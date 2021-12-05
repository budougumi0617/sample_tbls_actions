-- +migrate Up
ALTER TABLE cards ADD COLUMN `status` varchar(12) COMMENT 'カードの状態' AFTER `user_id`;

-- +migrate Down
ALTER TABLE cards DROP COLUMN `status`;
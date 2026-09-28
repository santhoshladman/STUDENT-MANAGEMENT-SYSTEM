-- ============================================================
--  MIGRATION 3 — run this if you already imported schema.sql
--  (or migration_2.sql) before this update.
--  Adds: staff login accounts, per-user activity tracking.
--
--  How to run: phpMyAdmin -> click sms_db -> SQL tab -> paste
--  everything below -> Go.
-- ============================================================
USE sms_db;

ALTER TABLE users
  ADD COLUMN staff_id VARCHAR(20) NULL AFTER full_name,
  ADD COLUMN last_login DATETIME NULL AFTER staff_id;

ALTER TABLE staff
  ADD COLUMN username VARCHAR(50) NULL AFTER photo_mime,
  ADD COLUMN sys_role VARCHAR(20) DEFAULT 'staff' AFTER username;

ALTER TABLE activity_log
  ADD COLUMN username VARCHAR(50) AFTER by_role,
  ADD INDEX idx_username (username);

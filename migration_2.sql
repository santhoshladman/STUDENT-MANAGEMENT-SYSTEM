-- ============================================================
--  MIGRATION — run this ONLY if you already imported the old
--  schema.sql before (i.e. your sms_db already has 19 tables).
--  If you are setting up FRESH, ignore this file and just import
--  schema.sql — it already includes these columns.
--
--  How to run: phpMyAdmin -> click sms_db -> SQL tab -> paste
--  everything below -> Go.
-- ============================================================
USE sms_db;

ALTER TABLE gate_passes
  ADD COLUMN stu_name VARCHAR(150) AFTER pass_no,
  ADD COLUMN stu_yr VARCHAR(10) AFTER stu_name,
  ADD COLUMN approver VARCHAR(100) AFTER in_time,
  ADD COLUMN status VARCHAR(20) DEFAULT 'Approved' AFTER approver;

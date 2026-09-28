-- ============================================================
--  MIGRATION 4 — run this if you already imported schema.sql
--  (or migration_2.sql / migration_3.sql) before this update.
--  Adds: year tagging on fee entries, so each fee entry knows
--  whether it belongs to 1st/2nd/3rd year — needed for the new
--  year-wise Fee Report (Student Profile → Fees tab).
--
--  How to run: phpMyAdmin -> click sms_db -> SQL tab -> paste
--  everything below -> Go.
-- ============================================================
USE sms_db;

ALTER TABLE fee_structure
  ADD COLUMN yr_key VARCHAR(10) AFTER stu_id,
  ADD COLUMN yr_label VARCHAR(10) AFTER yr_key;

-- Backfill: every fee entry that already exists gets tagged with
-- that student's CURRENT year (best guess, since the old data never
-- recorded which year a fee entry was for). If some of these are
-- actually from an earlier year (e.g. a 2nd-year student's fee entry
-- that was really from their 1st year), open that student's profile
-- → Fees tab and use the small year dropdown on the fee entry card
-- to correct it — this does not affect totals already paid/recorded.
UPDATE fee_structure fs
JOIN students s ON fs.stu_id = s.stu_id
SET fs.yr_key = s.yr_key, fs.yr_label = s.yr_label
WHERE fs.yr_key IS NULL;

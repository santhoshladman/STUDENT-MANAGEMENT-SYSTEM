-- ============================================================
--  SBM Polytechnic — Student Management System
--  Full MySQL schema (everything stored in DB, incl. files as BLOBs)
--  Import this once in phpMyAdmin (or `mysql -u root -p < schema.sql`)
-- ============================================================

CREATE DATABASE IF NOT EXISTS sms_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE sms_db;

-- ---------- LOGIN USERS ----------
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  role ENUM('admin','staff') NOT NULL DEFAULT 'staff',
  full_name VARCHAR(150),
  staff_id VARCHAR(20) NULL,          -- links to staff.staff_id when this login belongs to a staff member
  last_login DATETIME NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- ---------- BATCH / YEAR CONFIG (Admin Panel: batch label, register prefix, ID sequence) ----------
CREATE TABLE batch_config (
  yr_key VARCHAR(10) PRIMARY KEY,      -- yr1 / yr2 / yr3
  yr_label VARCHAR(10) NOT NULL,       -- 1st / 2nd / 3rd
  batch_label VARCHAR(20) NOT NULL,    -- e.g. 2026-28
  reg_prefix VARCHAR(10) NOT NULL,     -- e.g. 26
  next_seq INT NOT NULL DEFAULT 1
) ENGINE=InnoDB;

-- ---------- STUDENTS (active — 1st/2nd/3rd year only; graduates move to alumni_archive) ----------
CREATE TABLE students (
  stu_id VARCHAR(20) PRIMARY KEY,      -- CSE101 style
  yr_key VARCHAR(10) NOT NULL,         -- yr1/yr2/yr3
  yr_label VARCHAR(10) NOT NULL,       -- 1st/2nd/3rd
  sem VARCHAR(10),
  name VARCHAR(150) NOT NULL,
  roll VARCHAR(50),
  reg_no VARCHAR(50),
  batch VARCHAR(20),
  dob VARCHAR(20),
  comm VARCHAR(20),
  religion VARCHAR(50),
  phone VARCHAR(20),
  pphone VARCHAR(20),
  addr TEXT,
  job VARCHAR(100),
  att_pct VARCHAR(10) DEFAULT '0%',
  fee_status VARCHAR(20) DEFAULT 'No Fees',
  gate_used INT DEFAULT 0,
  photo LONGBLOB,
  photo_mime VARCHAR(50),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_yr (yr_key)
) ENGINE=InnoDB;

-- ---------- FEES ----------
CREATE TABLE fee_summary (
  stu_id VARCHAR(20) PRIMARY KEY,
  total DECIMAL(12,2) DEFAULT 0,
  paid DECIMAL(12,2) DEFAULT 0,
  balance DECIMAL(12,2) DEFAULT 0,
  FOREIGN KEY (stu_id) REFERENCES students(stu_id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE fee_structure (
  id INT AUTO_INCREMENT PRIMARY KEY,
  stu_id VARCHAR(20) NOT NULL,
  yr_key VARCHAR(10),           -- yr1/yr2/yr3 — which year (1st/2nd/3rd) this fee entry belongs to
  yr_label VARCHAR(10),         -- 1st/2nd/3rd (display label, kept in sync with yr_key)
  sem VARCHAR(10),
  tuition DECIMAL(10,2) DEFAULT 0,
  bus DECIMAL(10,2) DEFAULT 0,
  hostel DECIMAL(10,2) DEFAULT 0,
  other_json TEXT,             -- extra fee rows [{label,amount}]
  total DECIMAL(10,2) DEFAULT 0,
  paid DECIMAL(10,2) DEFAULT 0,
  balance DECIMAL(10,2) DEFAULT 0,
  status VARCHAR(20),
  FOREIGN KEY (stu_id) REFERENCES students(stu_id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE fee_transactions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  stu_id VARCHAR(20) NOT NULL,
  bill_no VARCHAR(20),
  txn_date VARCHAR(20),
  fee_type VARCHAR(50),
  period VARCHAR(20),
  amount DECIMAL(10,2) DEFAULT 0,
  scholarship DECIMAL(10,2) DEFAULT 0,
  net DECIMAL(10,2) DEFAULT 0,
  FOREIGN KEY (stu_id) REFERENCES students(stu_id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- ---------- DOCUMENTS & CERTIFICATES (students AND staff; files stored as BLOB) ----------
CREATE TABLE documents (
  id INT AUTO_INCREMENT PRIMARY KEY,
  owner_type ENUM('student','staff') NOT NULL DEFAULT 'student',
  owner_id VARCHAR(20) NOT NULL,
  name VARCHAR(200),
  doc_type VARCHAR(50),
  doc_date VARCHAR(20),
  file_size VARCHAR(20),
  file_name VARCHAR(255),
  mime VARCHAR(100),
  file_data LONGBLOB,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_owner (owner_type, owner_id)
) ENGINE=InnoDB;

CREATE TABLE certificates (
  id INT AUTO_INCREMENT PRIMARY KEY,
  owner_type ENUM('student','staff') NOT NULL DEFAULT 'student',
  owner_id VARCHAR(20) NOT NULL,
  name VARCHAR(200),
  cert_type VARCHAR(50),
  cert_date VARCHAR(20),
  file_name VARCHAR(255),
  mime VARCHAR(100),
  file_data LONGBLOB,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_owner (owner_type, owner_id)
) ENGINE=InnoDB;

-- ---------- STAFF ----------
CREATE TABLE staff (
  staff_id VARCHAR(20) PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  role VARCHAR(50),
  dept VARCHAR(100),
  phone VARCHAR(20),
  email VARCHAR(100),
  dob VARCHAR(20),
  doj VARCHAR(20),
  addr TEXT,
  photo LONGBLOB,
  photo_mime VARCHAR(50),
  username VARCHAR(50) NULL,          -- login username for this staff member (NULL if no login was created)
  sys_role VARCHAR(20) DEFAULT 'staff', -- system access level: 'admin' or 'staff'
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- ---------- ATTENDANCE ----------
CREATE TABLE student_attendance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  stu_id VARCHAR(20) NOT NULL,
  yr_key VARCHAR(10) NOT NULL,
  att_year INT NOT NULL,
  att_month INT NOT NULL,
  att_day INT NOT NULL,
  status VARCHAR(20) NOT NULL,   -- P / A / OD / L etc.
  UNIQUE KEY uniq_att (stu_id, att_year, att_month, att_day)
) ENGINE=InnoDB;

CREATE TABLE leave_permissions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  stu_id VARCHAR(20) NOT NULL,
  yr_key VARCHAR(10) NOT NULL,
  att_year INT NOT NULL,
  att_month INT NOT NULL,
  att_day INT NOT NULL,
  duration VARCHAR(20),
  leave_type VARCHAR(50),
  reason TEXT,
  UNIQUE KEY uniq_leave (stu_id, att_year, att_month, att_day)
) ENGINE=InnoDB;

CREATE TABLE staff_attendance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(20) NOT NULL,
  att_year INT NOT NULL,
  att_month INT NOT NULL,
  att_day INT NOT NULL,
  status VARCHAR(20) NOT NULL,
  UNIQUE KEY uniq_satt (staff_id, att_year, att_month, att_day)
) ENGINE=InnoDB;

CREATE TABLE holidays (
  id INT AUTO_INCREMENT PRIMARY KEY,
  h_date VARCHAR(20) NOT NULL,
  title VARCHAR(150)
) ENGINE=InnoDB;

CREATE TABLE working_saturdays (
  id INT AUTO_INCREMENT PRIMARY KEY,
  s_date VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE gate_passes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  stu_id VARCHAR(20),
  pass_no VARCHAR(20),
  stu_name VARCHAR(150),
  stu_yr VARCHAR(10),
  pass_date VARCHAR(20),
  reason TEXT,
  out_time VARCHAR(20),
  in_time VARCHAR(20),
  approver VARCHAR(100),
  status VARCHAR(20) DEFAULT 'Approved'
) ENGINE=InnoDB;

-- ---------- ALUMNI ARCHIVE (graduated batches — the "unlimited batches" solution) ----------
-- One promotion run = one group_id. Everything about that student at graduation time
-- is snapshotted here so the live `students` table can stay small/fast no matter
-- how many years/batches have passed.
CREATE TABLE alumni_archive (
  id INT AUTO_INCREMENT PRIMARY KEY,
  group_id VARCHAR(50) NOT NULL,        -- one per promotion/graduation event
  stu_id VARCHAR(20) NOT NULL,
  name VARCHAR(150),
  roll VARCHAR(50),
  reg_no VARCHAR(50),
  final_batch VARCHAR(20),
  phone VARCHAR(20),
  pphone VARCHAR(20),
  dob VARCHAR(20),
  comm VARCHAR(20),
  religion VARCHAR(50),
  addr TEXT,
  job VARCHAR(100),
  graduated_on VARCHAR(20),
  photo LONGBLOB,
  photo_mime VARCHAR(50),
  fee_snapshot LONGTEXT,     -- JSON: {total,paid,balance,transactions:[...]}
  att_snapshot LONGTEXT,     -- JSON: attendance record for final year
  leave_snapshot LONGTEXT,   -- JSON: leave/permission record for final year
  INDEX idx_group (group_id)
) ENGINE=InnoDB;

CREATE TABLE alumni_documents (
  id INT AUTO_INCREMENT PRIMARY KEY,
  alumni_id INT NOT NULL,
  name VARCHAR(200), doc_type VARCHAR(50), doc_date VARCHAR(20),
  file_name VARCHAR(255), mime VARCHAR(100), file_data LONGBLOB,
  FOREIGN KEY (alumni_id) REFERENCES alumni_archive(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE alumni_certificates (
  id INT AUTO_INCREMENT PRIMARY KEY,
  alumni_id INT NOT NULL,
  name VARCHAR(200), cert_type VARCHAR(50), cert_date VARCHAR(20),
  file_name VARCHAR(255), mime VARCHAR(100), file_data LONGBLOB,
  FOREIGN KEY (alumni_id) REFERENCES alumni_archive(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- ---------- ACTIVITY LOG ----------
CREATE TABLE activity_log (
  id INT AUTO_INCREMENT PRIMARY KEY,
  icon VARCHAR(10),
  title VARCHAR(150),
  detail VARCHAR(255),
  by_role VARCHAR(20),
  username VARCHAR(50),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_username (username)
) ENGINE=InnoDB;

-- ---------- SEED DATA ----------
INSERT INTO batch_config (yr_key,yr_label,batch_label,reg_prefix,next_seq) VALUES
 ('yr1','1st','2026-28','26',1),
 ('yr2','2nd','2025-27','25',1),
 ('yr3','3rd','2024-26','24',1);

-- default admin login: username = admin / password = admin123  (CHANGE THIS after first login)
INSERT INTO users (username,password_hash,role,full_name) VALUES
 ('admin', '$2y$10$2RKfkLX7zmCFDnfNrHIBSOUtKhYrIcQTkvR88aqacGyuUICHWIAUG', 'admin', 'Administrator');

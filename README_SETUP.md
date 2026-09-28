# SBM Student Management System — PHP + MySQL Backend

## 🆕 What changed in this update (read this first if upgrading)

0. **App file renamed** — `index.html` is now `index.php`. Open it at
   `http://localhost/sms-backend/index.php`. Delete any old `index.html`
   left in the folder so there's only one copy.

00. **NEW: Year-wise Fee Report** — every student's Fees tab now shows a
    **Year-wise Fee Summary** (1st Year / 2nd Year / 3rd Year — Total,
    Paid, Balance — plus a grand total), and the Payment Transactions
    table has checkboxes so you can pick specific bills and download +
    print them together, or download + print the full report in one go
    (both open the same print/preview window you already use for single
    receipts — "Save as PDF" in the print dialog gives you a download).
    - New fee entries now ask which **Fee Year** they belong to
      (defaults to the student's current year, but you can change it —
      handy for a late/arrear fee for a year they've already finished).
    - **If you're upgrading an existing install**, run `migration_4.sql`
      (see below) — it adds the year tag to fee entries and best-guesses
      each existing entry's year as the student's *current* year. If any
      of those guesses are wrong (e.g. a 2nd-year student's fee entry
      that was really from 1st year), open that student's profile →
      Fees tab and use the small Year dropdown on that fee entry's card
      to fix it — this never touches the amounts already recorded.

## 📁 Folder layout — check this if you get "Could not reach server" or 404 errors

Your `sms-backend` folder must look **exactly** like this inside
`D:\xampp\htdocs\`:
```
sms-backend/
├── index.php
├── config.php
├── schema.sql
├── migration_2.sql
├── migration_3.sql
└── api/
    ├── auth.php
    ├── bootstrap.php
    ├── api.php
    └── download.php
```
If `api/auth.php` isn't reachable at `http://localhost/sms-backend/api/auth.php`
(try opening that URL directly — it should NOT say "Not Found"), the `api`
folder is missing or in the wrong place and nothing will log in.

1. **Login simplified** — removed the HOD and Registrar role buttons and the
   whole "Register Staff" self-signup tab. Login now only has **Admin** and
   **Staff**. Staff accounts are created by the Admin (see #2).
2. **Adding a staff member can now create a real login for them** — the
   "Add Staff" form has new fields: **Username**, **Temporary Password**, and
   **System Access Role** (Staff or Admin). Fill these in and that person can
   immediately sign in with those credentials. Leave them blank to add someone
   as a directory-only record with no portal access.
3. **Permissions are locked to the real account role** — Admin accounts get
   full access (including Delete and the Admin Panel). Staff accounts can
   create, update, view, and edit records, but never see Delete buttons, the
   Admin Panel, Reports, or Alumni Records — this is enforced by the actual
   database role, not just which button was clicked at login.
4. **Admin can now see staff login & activity** — Admin Panel → **Staff Login
   & Activity** card shows every sign-in and every action (add/update fee,
   attendance marked, document uploaded, etc.) with the exact staff username,
   filterable per staff member. The **User Management** table also now shows
   each user's real username and last-login time, plus a **Reset PW** button.
5. **Fee modals now have search + year filter** — both "Update Student Fees"
   and "Create Fee Structure Entry" have a search box (name/ID/roll no.) and
   1st/2nd/3rd Year buttons above the student dropdown, so you're not scrolling
   through every student across every year.

**To upgrade an existing install:**
1. Replace `index.html`, `config.php`, and the whole `api/` folder in your
   `htdocs/sms-backend/` folder with the new ones from this zip.
2. Open phpMyAdmin → `sms_db` → **SQL** tab → open `migration_3.sql` from this
   zip, paste it in, and click **Go**. (Adds the new login/activity columns —
   your existing students/fees/staff data is untouched.)
3. Reload the app and log in again.

If you already ran `migration_2.sql` / `migration_3.sql` before, you don't
need to re-run them — just run `migration_4.sql` on top of whatever you
already have. If this is a **fresh** install, skip all three migrations —
`schema.sql` already includes everything.

## ⚠️ If you set this up before (July 23) — read this first
The earlier version of this app had a bug: adding students, fees, documents,
staff, attendance, etc. only updated the page in your browser — it never
actually sent that data to MySQL. So everything vanished on refresh. That's
now fixed — every action in the app actually saves to the database.

**To upgrade your existing setup:**
1. Replace your old `index.html`, `config.php`, and the whole `api/` folder
   in `D:\xampp\htdocs\sms-backend\` with the new ones from this zip.
2. Open `http://localhost/phpmyadmin` → click `sms_db` → **SQL** tab → open
   `migration_2.sql` from this zip, paste its contents in, and click **Go**.
   (This just adds a few missing columns to the `gate_passes` table — it
   won't touch your existing students/fees/etc.)
3. Reload the app and log in again.

If you're setting this up **fresh** (first time), skip the migration step —
just follow the normal setup below, `schema.sql` already has everything.

---

## What's in this zip
```
sms-backend/
├── index.html          ← the app (open this in browser via XAMPP, not by double-click)
├── config.php          ← DB connection settings (edit if your MySQL root has a password)
├── schema.sql           ← full database structure — import this first (fresh installs)
├── migration_2.sql      ← ONLY for upgrading an install from before July 23
├── migration_3.sql      ← ONLY for upgrading an install from before this update
└── api/
    ├── auth.php         ← login / logout
    ├── bootstrap.php    ← loads all saved data when the app opens
    ├── api.php          ← every save/update/delete action (students, fees, docs,
    │                       certificates, staff, attendance, promotion → Alumni Records)
    └── download.php     ← file/photo downloads + Alumni batch ZIP downloads
```

## Setup (XAMPP, Windows/D: drive)

1. **Copy the whole `sms-backend` folder** into `D:\xampp\htdocs\`
   (so the app will load at `http://localhost/sms-backend/index.html`)

2. **Start Apache and MySQL** in the XAMPP Control Panel.

3. **Import the database:**
   - Open `http://localhost/phpmyadmin`
   - Click **New** (left sidebar) → this creates a database — but you don't need to,
     `schema.sql` creates it for you. Instead: click the **Import** tab at the top,
     choose `schema.sql`, and click **Go**.
   - You should now see a `sms_db` database with 19 tables in the left sidebar.

4. **Check `config.php`** — if your XAMPP MySQL root user has a password (most don't
   by default), open `config.php` and set `DB_PASS` to it. Otherwise leave everything
   as-is.

5. **Open the app:** go to `http://localhost/sms-backend/index.html` in your browser.

6. **Log in** with:
   - Username: `admin`
   - Password: `admin123`
   - (**Change this password** once you're set up — see "Changing the admin password" below)

Every student, fee entry, document, certificate, staff record, attendance mark, and
Alumni batch you create from here on is saved permanently in MySQL — refreshing the
page or restarting your computer will not lose data.

## Backing up your data (you mentioned you keep a backup on your hard disk)

Since everything lives in MySQL now, back up the database itself, not any files:
- In phpMyAdmin, click `sms_db` → **Export** tab → **Go**. This downloads a `.sql`
  file containing every student, alumni batch, document, and photo in the system.
- Keep copies of that exported `.sql` file on your backup hard disk on whatever
  schedule you like (daily/weekly).
- To restore: create a blank database and use **Import** with that `.sql` file,
  exactly like step 3 above.

## The Alumni Records / batch limit problem — how it's solved now

- When you click **Promote Batches** (Admin Panel, password `admin123` by default),
  the system:
  1. Moves every current 3rd-Year student into the `alumni_archive` table (with a
     full snapshot of their fees, attendance, documents, and certificates).
  2. Shifts 2nd Year → 3rd Year, and 1st Year → 2nd Year.
  3. Leaves 1st Year empty and ready for the next intake.
- Because graduated students move to a **separate archive table** instead of staying
  in the main `students` table, the live tables never grow — whether you've promoted
  10 batches or 100. All history stays searchable and downloadable in **Alumni Records**.
- From Alumni Records you can open any graduated batch and **download it as one ZIP
  file** containing every student's profile, documents, and certificates in that
  batch — exactly the "24–26 zip → open → see all their data" workflow you asked for.

## Changing the admin password

Easiest way: open phpMyAdmin → `sms_db` → `users` table → edit the `admin` row.
For the password, you can't just type plain text (it's hashed) — instead:
1. Open XAMPP's "Shell" (or a command prompt in the `htdocs\sms-backend` folder)
2. Run: `php -r "echo password_hash('YOUR_NEW_PASSWORD', PASSWORD_DEFAULT);"`
3. Copy the output string and paste it into the `password_hash` column for the
   `admin` row in phpMyAdmin.

## Notes
- All files you upload (photos, ID documents, certificates) are stored directly
  inside MySQL as you asked, so a single database export/import carries everything.
- The default `ADMIN_PROMOTE_PASSWORD` (for the Promote Batches button) is set in
  `config.php` — change it there.
- Known limitation: adding an extra custom batch row or deleting one in Admin Panel
  (beyond the built-in 1st/2nd/3rd Year rows) is still display-only and won't survive
  a refresh — that's a small leftover, not connected to your student/fee/attendance
  data, which all now saves properly.

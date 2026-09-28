<?php
require_once __DIR__ . '/../config.php';
$in = jsonInput();
$action = $in['action'] ?? '';

function logAct($conn, $icon, $title, $detail, $role = null) {
    // default to the actual signed-in user's role/username rather than a hardcoded value,
    // so Admins can see exactly which staff member performed which action.
    $role = $role ?: strtoupper($_SESSION['role'] ?? 'staff');
    $username = $_SESSION['username'] ?? 'system';
    $stmt = $conn->prepare("INSERT INTO activity_log (icon,title,detail,by_role,username) VALUES (?,?,?,?,?)");
    $stmt->bind_param('sssss', $icon, $title, $detail, $role, $username);
    $stmt->execute();
}

switch ($action) {

// ============================================================
// STUDENTS
// ============================================================
case 'add_student': {
    $s = $in['student']; $yk = $in['yrKey'];
    $stmt = $conn->prepare("INSERT INTO students (stu_id,yr_key,yr_label,sem,name,roll,reg_no,batch,dob,comm,religion,phone,pphone,addr,job,att_pct,fee_status,gate_used,photo,photo_mime) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    [$mime, $bin] = decodeDataUrl($s['photo'] ?? '');
    $gate = 0; $att = '0%'; $fees = 'No Fees';
    $stmt->bind_param('sssssssssssssssssiss',
        $s['id'], $yk, $s['yr'], $s['sem'], $s['name'], $s['roll'], $s['reg'], $s['batch'],
        $s['dob'], $s['comm'], $s['rel'], $s['phone'], $s['pphone'], $s['addr'], $s['job'],
        $att, $fees, $gate, $bin, $mime);
    if (!$stmt->execute()) fail('Could not add student: ' . $conn->error);
    // bump the sequence counter for this year
    $conn->query("UPDATE batch_config SET next_seq = next_seq + 1 WHERE yr_key='" . $conn->real_escape_string($yk) . "'");
    logAct($conn, '🎓', 'Student added', $s['name'] . ' — ' . $s['id']);
    respond(['ok' => true]);
}
case 'update_student': {
    $s = $in['student'];
    $sql = "UPDATE students SET name=?,dob=?,phone=?,pphone=?,job=?,comm=?,religion=?,addr=?";
    $params = [$s['name'], $s['dob'], $s['phone'], $s['pphone'], $s['job'], $s['comm'], $s['rel'], $s['addr']];
    $types = 'ssssssss';
    if (!empty($s['photo'])) {
        [$mime, $bin] = decodeDataUrl($s['photo']);
        if ($bin !== null) { $sql .= ",photo=?,photo_mime=?"; $params[] = $bin; $params[] = $mime; $types .= 'bs'; }
    }
    $sql .= " WHERE stu_id=?"; $params[] = $s['id']; $types .= 's';
    $stmt = $conn->prepare($sql);
    $stmt->bind_param($types, ...$params);
    if (!$stmt->execute()) fail('Update failed: ' . $conn->error);
    logAct($conn, '✏️', 'Student updated', $s['name'] . ' — ' . $s['id']);
    respond(['ok' => true]);
}
case 'delete_student': {
    $id = $in['id'];
    $stmt = $conn->prepare("DELETE FROM students WHERE stu_id=?");
    $stmt->bind_param('s', $id);
    $stmt->execute();
    logAct($conn, '🗑️', 'Student deleted', $id);
    respond(['ok' => true]);
}

// ============================================================
// FEES
// ============================================================
case 'save_fee_structure': {
    $sid = $in['stuId']; $f = $in['entry'];
    $otherJson = json_encode($f['other'] ?? []);
    // Which year (1st/2nd/3rd) this fee entry belongs to. Frontend always sends this now
    // (defaults to the student's current year); fall back to current year server-side too,
    // just in case, so this never ends up NULL for new entries.
    $yrKey = $f['yrKey'] ?? null; $yrLabel = $f['yrLabel'] ?? null;
    if (!$yrKey) {
        $stu = $conn->query("SELECT yr_key,yr_label FROM students WHERE stu_id='" . $conn->real_escape_string($sid) . "'")->fetch_assoc();
        $yrKey = $stu['yr_key'] ?? null; $yrLabel = $stu['yr_label'] ?? null;
    }
    $stmt = $conn->prepare("INSERT INTO fee_structure (stu_id,yr_key,yr_label,sem,tuition,bus,hostel,other_json,total,paid,balance,status) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
    $stmt->bind_param('ssssdddsddds', $sid, $yrKey, $yrLabel, $f['sem'], $f['tuition'], $f['bus'], $f['hostel'], $otherJson, $f['total'], $f['paid'], $f['balance'], $f['status']);
    if (!$stmt->execute()) fail('Could not save fee structure: ' . $conn->error);
    upsertFeeSummary($conn, $sid);
    logAct($conn, '💰', 'Fee structure saved', $sid . ' — ' . $yrLabel . ' Yr — ' . $f['sem']);
    respond(['ok' => true, 'id' => $stmt->insert_id]);
}
case 'update_fee_structure_year': {
    // Lets staff correct the tagged year on an existing fee entry (e.g. old entries that were
    // auto-assigned to the student's current year during the migration, but actually belong
    // to an earlier year).
    $id = (int)$in['id']; $sid = $in['stuId']; $yrKey = $in['yrKey']; $yrLabel = $in['yrLabel'];
    $stmt = $conn->prepare("UPDATE fee_structure SET yr_key=?, yr_label=? WHERE id=?");
    $stmt->bind_param('ssi', $yrKey, $yrLabel, $id);
    if (!$stmt->execute()) fail('Could not update fee entry year: ' . $conn->error);
    logAct($conn, '📁', 'Fee entry year corrected', $sid . ' — now ' . $yrLabel . ' Yr');
    respond(['ok' => true]);
}
case 'update_fee_structure': {
    $id = (int)$in['id']; $sid = $in['stuId']; $f = $in['entry'];
    $stmt = $conn->prepare("UPDATE fee_structure SET paid=?, balance=?, status=? WHERE id=?");
    $stmt->bind_param('ddsi', $f['paid'], $f['balance'], $f['status'], $id);
    if (!$stmt->execute()) fail('Could not update fee structure: ' . $conn->error);
    upsertFeeSummary($conn, $sid);
    respond(['ok' => true]);
}
case 'delete_fee_structure': {
    $id = (int)$in['id']; $sid = $in['stuId'];
    $conn->query("DELETE FROM fee_structure WHERE id=$id");
    upsertFeeSummary($conn, $sid);
    respond(['ok' => true]);
}
case 'add_fee_transaction': {
    $sid = $in['stuId']; $t = $in['txn'];
    $stmt = $conn->prepare("INSERT INTO fee_transactions (stu_id,bill_no,txn_date,fee_type,period,amount,scholarship,net) VALUES (?,?,?,?,?,?,?,?)");
    $stmt->bind_param('sssssddd', $sid, $t['bill'], $t['date'], $t['type'], $t['period'], $t['amount'], $t['scholarship'], $t['net']);
    if (!$stmt->execute()) fail('Could not add transaction: ' . $conn->error);
    upsertFeeSummary($conn, $sid);
    logAct($conn, '💵', 'Fee payment recorded', $sid . ' — ₹' . $t['net']);
    respond(['ok' => true, 'id' => $stmt->insert_id]);
}
case 'delete_fee_transaction': {
    $id = (int)$in['id']; $sid = $in['stuId'];
    $conn->query("DELETE FROM fee_transactions WHERE id=$id");
    upsertFeeSummary($conn, $sid);
    respond(['ok' => true]);
}

// ============================================================
// DOCUMENTS
// ============================================================
case 'upload_document': {
    $d = $in['doc']; $ownerType = $in['ownerType'] ?? 'student'; $ownerId = $in['ownerId'];
    [$mime, $bin] = decodeDataUrl($d['dataUrl'] ?? '');
    $stmt = $conn->prepare("INSERT INTO documents (owner_type,owner_id,name,doc_type,doc_date,file_size,file_name,mime,file_data) VALUES (?,?,?,?,?,?,?,?,?)");
    $stmt->bind_param('ssssssssb', $ownerType, $ownerId, $d['name'], $d['type'], $d['date'], $d['size'], $d['fileName'], $mime, $bin);
    $stmt->send_long_data(8, $bin);
    if (!$stmt->execute()) fail('Upload failed: ' . $conn->error);
    logAct($conn, '📄', 'Document uploaded', $ownerId . ' — ' . $d['name']);
    respond(['ok' => true, 'id' => $stmt->insert_id]);
}
case 'delete_document': {
    $id = (int)$in['id'];
    $conn->query("DELETE FROM documents WHERE id=$id");
    respond(['ok' => true]);
}

// ============================================================
// CERTIFICATES
// ============================================================
case 'add_certificate': {
    $c = $in['cert']; $ownerType = $in['ownerType'] ?? 'student'; $ownerId = $in['ownerId'];
    [$mime, $bin] = decodeDataUrl($c['dataUrl'] ?? '');
    $stmt = $conn->prepare("INSERT INTO certificates (owner_type,owner_id,name,cert_type,cert_date,file_name,mime,file_data) VALUES (?,?,?,?,?,?,?,?)");
    $stmt->bind_param('sssssssb', $ownerType, $ownerId, $c['name'], $c['type'], $c['date'], $c['fileName'], $mime, $bin);
    $stmt->send_long_data(7, $bin);
    if (!$stmt->execute()) fail('Could not add certificate: ' . $conn->error);
    logAct($conn, '📜', 'Certificate added', $ownerId . ' — ' . $c['name']);
    respond(['ok' => true, 'id' => $stmt->insert_id]);
}
case 'delete_certificate': {
    $id = (int)$in['id'];
    $conn->query("DELETE FROM certificates WHERE id=$id");
    respond(['ok' => true]);
}

// ============================================================
// GATE PASSES
// ============================================================
case 'save_gate_pass': {
    $p = $in['pass'];
    $stmt = $conn->prepare("INSERT INTO gate_passes (stu_id,pass_no,stu_name,stu_yr,pass_date,reason,out_time,in_time,approver,status) VALUES (?,?,?,?,?,?,?,?,?,?)");
    $stmt->bind_param('ssssssssss', $p['stuId'], $p['no'], $p['name'], $p['yr'], $p['date'], $p['reason'], $p['outTime'], $p['inTime'], $p['approver'], $p['status']);
    if (!$stmt->execute()) fail('Could not save gate pass: ' . $conn->error);
    $conn->query("UPDATE students SET gate_used = gate_used + 1 WHERE stu_id='" . $conn->real_escape_string($p['stuId']) . "'");
    logAct($conn, '🚪', 'Gate pass issued', $p['name'] . ' — ' . $p['no']);
    respond(['ok' => true, 'id' => $stmt->insert_id]);
}
case 'mark_gate_pass_returned': {
    $no = $in['no'];
    $conn->query("UPDATE gate_passes SET status='Returned' WHERE pass_no='" . $conn->real_escape_string($no) . "'");
    respond(['ok' => true]);
}

// ============================================================
// STAFF
// ============================================================
case 'add_staff': {
    $s = $in['staff'];
    $login = $in['login'] ?? null; // optional {username,password,role}
    [$mime, $bin] = decodeDataUrl($s['photo'] ?? '');

    $conn->begin_transaction();
    try {
        $username = null;
        $sysRole = 'staff';
        if ($login && !empty(trim($login['username'] ?? ''))) {
            $username = trim($login['username']);
            $password = (string)($login['password'] ?? '');
            $sysRole = ($login['role'] ?? 'staff') === 'admin' ? 'admin' : 'staff';
            if (strlen($password) < 4) throw new Exception('Login password must be at least 4 characters');
            $hash = password_hash($password, PASSWORD_DEFAULT);
            $fullName = $s['name'];
            $stmt = $conn->prepare("INSERT INTO users (username,password_hash,role,full_name,staff_id) VALUES (?,?,?,?,?)");
            $stmt->bind_param('sssss', $username, $hash, $sysRole, $fullName, $s['id']);
            if (!$stmt->execute()) throw new Exception('That username is already taken — choose another');
        }

        $stmt = $conn->prepare("INSERT INTO staff (staff_id,name,role,dept,phone,email,dob,doj,addr,photo,photo_mime,username,sys_role) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param('sssssssssbsss', $s['id'], $s['name'], $s['role'], $s['dept'], $s['phone'], $s['email'], $s['dob'], $s['doj'], $s['addr'], $bin, $mime, $username, $sysRole);
        $stmt->send_long_data(9, $bin);
        if (!$stmt->execute()) throw new Exception('Could not add staff: ' . $conn->error);

        $conn->commit();
    } catch (Throwable $e) {
        $conn->rollback();
        fail($e->getMessage());
    }
    logAct($conn, '👩‍🏫', 'Staff added', $s['name'] . ' — ' . $s['id'] . ($username ? ' (login: ' . $username . ')' : ' (no login access)'));
    respond(['ok' => true]);
}
case 'update_staff': {
    $s = $in['staff'];
    $sql = "UPDATE staff SET name=?,role=?,dept=?,phone=?,email=?,dob=?,doj=?,addr=?";
    $params = [$s['name'], $s['role'], $s['dept'], $s['phone'], $s['email'], $s['dob'], $s['doj'], $s['addr']];
    $types = 'ssssssss';
    if (!empty($s['photo'])) {
        [$mime, $bin] = decodeDataUrl($s['photo']);
        if ($bin !== null) { $sql .= ",photo=?,photo_mime=?"; $params[] = $bin; $params[] = $mime; $types .= 'bs'; }
    }
    $sql .= " WHERE staff_id=?"; $params[] = $s['id']; $types .= 's';
    $stmt = $conn->prepare($sql);
    $stmt->bind_param($types, ...$params);
    if (!$stmt->execute()) fail('Update failed: ' . $conn->error);
    // keep the linked login account's display name in sync
    $stmt2 = $conn->prepare("UPDATE users SET full_name=? WHERE staff_id=?");
    $stmt2->bind_param('ss', $s['name'], $s['id']);
    $stmt2->execute();
    logAct($conn, '✏️', 'Staff updated', $s['name'] . ' — ' . $s['id']);
    respond(['ok' => true]);
}
case 'delete_staff': {
    $id = $in['id'];
    $conn->query("DELETE FROM staff WHERE staff_id='" . $conn->real_escape_string($id) . "'");
    $conn->query("DELETE FROM users WHERE staff_id='" . $conn->real_escape_string($id) . "'");
    logAct($conn, '🗑️', 'Staff deleted', $id);
    respond(['ok' => true]);
}
case 'reset_staff_password': {
    // Admin-only action (enforced in the UI) to reset a staff member's login password
    $staffId = $in['id'] ?? '';
    $newPassword = (string)($in['password'] ?? '');
    if (strlen($newPassword) < 4) fail('Password must be at least 4 characters');
    $hash = password_hash($newPassword, PASSWORD_DEFAULT);
    $stmt = $conn->prepare("UPDATE users SET password_hash=? WHERE staff_id=?");
    $stmt->bind_param('ss', $hash, $staffId);
    if (!$stmt->execute() || $stmt->affected_rows === 0) fail('This staff member has no login account to reset');
    logAct($conn, '🔑', 'Password reset', 'Staff ' . $staffId);
    respond(['ok' => true]);
}

// ============================================================
// ATTENDANCE
// ============================================================
case 'save_student_attendance': {
    // { stuId, yrKey, year, month, day, status }  status='' means clear/unmark
    $sid = $in['stuId']; $yk = $in['yrKey']; $y = (int)$in['year']; $m = (int)$in['month']; $d = (int)$in['day']; $status = $in['status'];
    if ($status === '') {
        $conn->query("DELETE FROM student_attendance WHERE stu_id='" . $conn->real_escape_string($sid) . "' AND att_year=$y AND att_month=$m AND att_day=$d");
    } else {
        $stmt = $conn->prepare("INSERT INTO student_attendance (stu_id,yr_key,att_year,att_month,att_day,status) VALUES (?,?,?,?,?,?) ON DUPLICATE KEY UPDATE status=VALUES(status), yr_key=VALUES(yr_key)");
        $stmt->bind_param('ssiiis', $sid, $yk, $y, $m, $d, $status);
        $stmt->execute();
    }
    respond(['ok' => true]);
}
case 'save_leave_permission': {
    $sid = $in['stuId']; $yk = $in['yrKey']; $y = (int)$in['year']; $m = (int)$in['month']; $d = (int)$in['day'];
    $dur = $in['duration']; $type = $in['type']; $reason = $in['reason'];
    $stmt = $conn->prepare("INSERT INTO leave_permissions (stu_id,yr_key,att_year,att_month,att_day,duration,leave_type,reason) VALUES (?,?,?,?,?,?,?,?) ON DUPLICATE KEY UPDATE duration=VALUES(duration), leave_type=VALUES(leave_type), reason=VALUES(reason)");
    $stmt->bind_param('ssiiisss', $sid, $yk, $y, $m, $d, $dur, $type, $reason);
    $stmt->execute();
    respond(['ok' => true]);
}
case 'clear_leave_permission': {
    $sid = $in['stuId']; $y = (int)$in['year']; $m = (int)$in['month']; $d = (int)$in['day'];
    $conn->query("DELETE FROM leave_permissions WHERE stu_id='" . $conn->real_escape_string($sid) . "' AND att_year=$y AND att_month=$m AND att_day=$d");
    respond(['ok' => true]);
}
case 'save_staff_attendance': {
    $sid = $in['staffId']; $y = (int)$in['year']; $m = (int)$in['month']; $d = (int)$in['day']; $status = $in['status'];
    if ($status === '') {
        $conn->query("DELETE FROM staff_attendance WHERE staff_id='" . $conn->real_escape_string($sid) . "' AND att_year=$y AND att_month=$m AND att_day=$d");
    } else {
        $stmt = $conn->prepare("INSERT INTO staff_attendance (staff_id,att_year,att_month,att_day,status) VALUES (?,?,?,?,?) ON DUPLICATE KEY UPDATE status=VALUES(status)");
        $stmt->bind_param('siiis', $sid, $y, $m, $d, $status);
        $stmt->execute();
    }
    respond(['ok' => true]);
}

// ============================================================
// HOLIDAYS / SATURDAYS
// ============================================================
case 'save_holiday': {
    $h = $in['holiday'];
    $stmt = $conn->prepare("INSERT INTO holidays (h_date,title) VALUES (?,?)");
    $stmt->bind_param('ss', $h['date'], $h['name']);
    $stmt->execute();
    logAct($conn, '📅', 'Holiday added', $h['name'] . ' — ' . $h['date']);
    respond(['ok' => true, 'id' => $stmt->insert_id]);
}
case 'delete_holiday': {
    $date = $in['date'];
    $conn->query("DELETE FROM holidays WHERE h_date='" . $conn->real_escape_string($date) . "' LIMIT 1");
    respond(['ok' => true]);
}
case 'save_saturday': {
    $date = $in['date'];
    $stmt = $conn->prepare("INSERT INTO working_saturdays (s_date) VALUES (?)");
    $stmt->bind_param('s', $date);
    $stmt->execute();
    logAct($conn, '📆', 'Saturday setting added', $date);
    respond(['ok' => true]);
}

// ============================================================
// ADMIN: BATCH CONFIG EDIT
// ============================================================
case 'save_batch_config': {
    $yk = $in['yrKey']; $label = $in['batchLabel']; $prefix = $in['regPrefix'];
    $stmt = $conn->prepare("UPDATE batch_config SET batch_label=?, reg_prefix=? WHERE yr_key=?");
    $stmt->bind_param('sss', $label, $prefix, $yk);
    $stmt->execute();
    respond(['ok' => true]);
}

// ============================================================
// BATCH PROMOTION -> ALUMNI ARCHIVE  (the core "unlimited batches" feature)
// ============================================================
case 'promote_batches': {
    $pwd = $in['password'] ?? '';
    if ($pwd !== ADMIN_PROMOTE_PASSWORD) fail('Incorrect admin password', 401);

    $conn->begin_transaction();
    try {
        $groupId = 'GRAD-' . round(microtime(true) * 1000);
        $today = date('Y-m-d');

        // 1. Snapshot every current 3rd-Year student into alumni_archive (+ their docs/certs/fees/attendance)
        $res = $conn->query("SELECT * FROM students WHERE yr_key='yr3'");
        $count3 = 0;
        while ($s = $res->fetch_assoc()) {
            $count3++;
            $sid = $s['stu_id'];

            // fee snapshot
            $fsum = $conn->query("SELECT * FROM fee_summary WHERE stu_id='" . $conn->real_escape_string($sid) . "'")->fetch_assoc();
            $txns = [];
            $tres = $conn->query("SELECT * FROM fee_transactions WHERE stu_id='" . $conn->real_escape_string($sid) . "'");
            while ($t = $tres->fetch_assoc()) $txns[] = $t;
            $feeSnap = json_encode(['total' => $fsum['total'] ?? 0, 'paid' => $fsum['paid'] ?? 0, 'balance' => $fsum['balance'] ?? 0, 'transactions' => $txns]);

            // attendance snapshot (all recorded days for this student)
            $attRows = [];
            $ares = $conn->query("SELECT att_year,att_month,att_day,status FROM student_attendance WHERE stu_id='" . $conn->real_escape_string($sid) . "'");
            while ($a = $ares->fetch_assoc()) $attRows[] = $a;
            $attSnap = json_encode($attRows);

            $leaveRows = [];
            $lres = $conn->query("SELECT att_year,att_month,att_day,duration,leave_type,reason FROM leave_permissions WHERE stu_id='" . $conn->real_escape_string($sid) . "'");
            while ($l = $lres->fetch_assoc()) $leaveRows[] = $l;
            $leaveSnap = json_encode($leaveRows);

            $stmt = $conn->prepare("INSERT INTO alumni_archive (group_id,stu_id,name,roll,reg_no,final_batch,phone,pphone,dob,comm,religion,addr,job,graduated_on,photo,photo_mime,fee_snapshot,att_snapshot,leave_snapshot) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            $stmt->bind_param('ssssssssssssssbssss',
                $groupId, $sid, $s['name'], $s['roll'], $s['reg_no'], $s['batch'], $s['phone'], $s['pphone'],
                $s['dob'], $s['comm'], $s['religion'], $s['addr'], $s['job'], $today, $s['photo'], $s['photo_mime'],
                $feeSnap, $attSnap, $leaveSnap);
            $stmt->send_long_data(14, $s['photo']);
            $stmt->execute();
            $alumniId = $stmt->insert_id;

            // copy documents
            $dres = $conn->query("SELECT * FROM documents WHERE owner_type='student' AND owner_id='" . $conn->real_escape_string($sid) . "'");
            while ($d = $dres->fetch_assoc()) {
                $ds = $conn->prepare("INSERT INTO alumni_documents (alumni_id,name,doc_type,doc_date,file_name,mime,file_data) VALUES (?,?,?,?,?,?,?)");
                $ds->bind_param('isssssb', $alumniId, $d['name'], $d['doc_type'], $d['doc_date'], $d['file_name'], $d['mime'], $d['file_data']);
                $ds->send_long_data(6, $d['file_data']);
                $ds->execute();
            }
            // copy certificates
            $cres = $conn->query("SELECT * FROM certificates WHERE owner_type='student' AND owner_id='" . $conn->real_escape_string($sid) . "'");
            while ($c = $cres->fetch_assoc()) {
                $cs = $conn->prepare("INSERT INTO alumni_certificates (alumni_id,name,cert_type,cert_date,file_name,mime,file_data) VALUES (?,?,?,?,?,?,?)");
                $cs->bind_param('isssssb', $alumniId, $c['name'], $c['cert_type'], $c['cert_date'], $c['file_name'], $c['mime'], $c['file_data']);
                $cs->send_long_data(6, $c['file_data']);
                $cs->execute();
            }
        }
        // remove graduated 3rd-years and their child records entirely from the live tables
        $conn->query("DELETE FROM students WHERE yr_key='yr3'");

        // 2. 2nd Year -> 3rd Year
        $conn->query("UPDATE students SET yr_key='yr3', yr_label='3rd', sem='Sem 5' WHERE yr_key='yr2'");

        // 3. 1st Year -> 2nd Year
        $conn->query("UPDATE students SET yr_key='yr2', yr_label='2nd', sem='Sem 3' WHERE yr_key='yr1'");
        // (yr1 is now naturally empty — ready for next intake)

        $conn->commit();
        logAct($conn, '🔁', 'Batches promoted', "1st→2nd, 2nd→3rd, 3rd Year → Alumni ($count3 students, $groupId)");
        respond(['ok' => true, 'groupId' => $groupId, 'archivedCount' => $count3]);
    } catch (Throwable $e) {
        $conn->rollback();
        fail('Promotion failed, nothing was changed: ' . $e->getMessage(), 500);
    }
}

case 'log_activity': {
    logAct($conn, $in['icon'] ?? '📝', $in['title'] ?? '', $in['detail'] ?? '', $in['by'] ?? 'ADMIN');
    respond(['ok' => true]);
}

default:
    fail('Unknown action: ' . $action);
}

// recompute fee_summary from structure+transactions (mirrors the original JS calcFeeTotal/syncFeeStatus logic)
function upsertFeeSummary($conn, $sid) {
    $tot = 0; $paidStruct = 0;
    $res = $conn->query("SELECT total FROM fee_structure WHERE stu_id='" . $conn->real_escape_string($sid) . "'");
    while ($r = $res->fetch_assoc()) $tot += (float)$r['total'];
    $paid = 0;
    $res = $conn->query("SELECT net FROM fee_transactions WHERE stu_id='" . $conn->real_escape_string($sid) . "'");
    while ($r = $res->fetch_assoc()) $paid += (float)$r['net'];
    $balance = $tot - $paid;
    $status = $tot == 0 ? 'No Fees' : ($balance <= 0 ? 'Paid' : ($paid > 0 ? 'Partial' : 'Pending'));
    $stmt = $conn->prepare("INSERT INTO fee_summary (stu_id,total,paid,balance) VALUES (?,?,?,?) ON DUPLICATE KEY UPDATE total=VALUES(total), paid=VALUES(paid), balance=VALUES(balance)");
    $stmt->bind_param('sddd', $sid, $tot, $paid, $balance);
    $stmt->execute();
    $conn->query("UPDATE students SET fee_status='" . $conn->real_escape_string($status) . "' WHERE stu_id='" . $conn->real_escape_string($sid) . "'");
}

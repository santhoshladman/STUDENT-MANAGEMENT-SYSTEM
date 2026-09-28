<?php
require_once __DIR__ . '/../config.php';

$out = [
    'ok' => true,
    'batchConfig' => [],
    'students' => ['yr1' => [], 'yr2' => [], 'yr3' => []],
    'nextStuSeq' => ['yr1' => 1, 'yr2' => 1, 'yr3' => 1],
    'feeData' => new stdClass(),
    'studentDocs' => new stdClass(),
    'staffDB' => [],
    'attState' => ['yr1' => new stdClass(), 'yr2' => new stdClass(), 'yr3' => new stdClass()],
    'attLeaveInfo' => ['yr1' => new stdClass(), 'yr2' => new stdClass(), 'yr3' => new stdClass()],
    'staffAttState' => new stdClass(),
    'holidays' => [],
    'holidayList' => [],
    'workingSaturdays' => [],
    'satList' => [],
    'alumniDB' => [],
    'activityLog' => [],
    'gatePasses' => [],
];

// ---- batch config ----
$res = $conn->query("SELECT * FROM batch_config");
while ($row = $res->fetch_assoc()) {
    $out['batchConfig'][$row['yr_key']] = [
        'label' => $row['yr_label'], 'batch' => $row['batch_label'],
        'regPrefix' => $row['reg_prefix'], 'nextSeq' => (int)$row['next_seq']
    ];
    $out['nextStuSeq'][$row['yr_key']] = (int)$row['next_seq'];
}

// ---- build certificate lookup maps first (certs live directly on the owner object, e.g. student.certificates) ----
$certsByOwner = [];
$res = $conn->query("SELECT * FROM certificates ORDER BY id");
while ($row = $res->fetch_assoc()) {
    $key = $row['owner_type'] . ':' . $row['owner_id'];
    if (!isset($certsByOwner[$key])) $certsByOwner[$key] = [];
    $certsByOwner[$key][] = [
        'id' => (int)$row['id'], 'name' => $row['name'], 'type' => $row['cert_type'], 'date' => $row['cert_date'],
        'fileName' => $row['file_name'], 'dataUrl' => blobToDataUrl($row['mime'], $row['file_data'])
    ];
}

// ---- students (+ their certificates inline, matching original s.certificates shape) ----
$res = $conn->query("SELECT * FROM students ORDER BY stu_id");
while ($row = $res->fetch_assoc()) {
    $photo = blobToDataUrl($row['photo_mime'], $row['photo']);
    $student = [
        'id' => $row['stu_id'], 'yr' => $row['yr_label'], 'sem' => $row['sem'],
        'name' => $row['name'], 'roll' => $row['roll'], 'reg' => $row['reg_no'], 'batch' => $row['batch'],
        'dob' => $row['dob'], 'comm' => $row['comm'], 'rel' => $row['religion'],
        'phone' => $row['phone'], 'pphone' => $row['pphone'], 'addr' => $row['addr'], 'job' => $row['job'],
        'att' => $row['att_pct'], 'fees' => $row['fee_status'], 'gate' => (int)$row['gate_used'],
        'photo' => $photo, 'certificates' => $certsByOwner['student:' . $row['stu_id']] ?? []
    ];
    $out['students'][$row['yr_key']][] = $student;
}

// ---- documents (student + staff) ----
$res = $conn->query("SELECT * FROM documents WHERE owner_type='student'");
while ($row = $res->fetch_assoc()) {
    $sid = $row['owner_id'];
    if (!isset($out['studentDocs']->$sid)) $out['studentDocs']->$sid = [];
    $out['studentDocs']->$sid[] = [
        'id' => (int)$row['id'], 'name' => $row['name'], 'type' => $row['doc_type'], 'date' => $row['doc_date'],
        'size' => $row['file_size'], 'fileName' => $row['file_name'],
        'dataUrl' => blobToDataUrl($row['mime'], $row['file_data'])
    ];
}
$res = $conn->query("SELECT * FROM documents WHERE owner_type='staff'");
while ($row = $res->fetch_assoc()) {
    $sid = $row['owner_id'];
    if (!isset($out['staffDocs']->$sid)) $out['staffDocs']->$sid = [];
    $out['staffDocs']->$sid[] = [
        'id' => (int)$row['id'], 'name' => $row['name'], 'type' => $row['doc_type'], 'date' => $row['doc_date'],
        'size' => $row['file_size'], 'fileName' => $row['file_name'],
        'dataUrl' => blobToDataUrl($row['mime'], $row['file_data'])
    ];
}

// ---- fee data: feeData[stuId] = {total,paid,balance,structure:[],transactions:[]} ----
$res = $conn->query("SELECT * FROM fee_summary");
while ($row = $res->fetch_assoc()) {
    $sid = $row['stu_id'];
    $out['feeData']->$sid = ['total' => (float)$row['total'], 'paid' => (float)$row['paid'], 'balance' => (float)$row['balance'], 'structure' => [], 'transactions' => []];
}
$res = $conn->query("SELECT * FROM fee_structure");
while ($row = $res->fetch_assoc()) {
    $sid = $row['stu_id'];
    if (!isset($out['feeData']->$sid)) $out['feeData']->$sid = ['total' => 0, 'paid' => 0, 'balance' => 0, 'structure' => [], 'transactions' => []];
    $other = json_decode($row['other_json'] ?: '[]', true);
    $out['feeData']->$sid['structure'][] = [
        'id' => (int)$row['id'], 'yrKey' => $row['yr_key'], 'yr' => $row['yr_label'],
        'sem' => $row['sem'], 'tuition' => (float)$row['tuition'], 'bus' => (float)$row['bus'],
        'hostel' => (float)$row['hostel'], 'other' => $other, 'total' => (float)$row['total'],
        'paid' => (float)$row['paid'], 'balance' => (float)$row['balance'], 'status' => $row['status']
    ];
}
$res = $conn->query("SELECT * FROM fee_transactions ORDER BY id");
while ($row = $res->fetch_assoc()) {
    $sid = $row['stu_id'];
    if (!isset($out['feeData']->$sid)) $out['feeData']->$sid = ['total' => 0, 'paid' => 0, 'balance' => 0, 'structure' => [], 'transactions' => []];
    $out['feeData']->$sid['transactions'][] = [
        'id' => (int)$row['id'], 'bill' => $row['bill_no'], 'date' => $row['txn_date'], 'type' => $row['fee_type'],
        'period' => $row['period'], 'amount' => (float)$row['amount'], 'scholarship' => (float)$row['scholarship'], 'net' => (float)$row['net']
    ];
}

// ---- staff (+ their linked login account, if any) ----
$lastLoginByUsername = [];
$lres = $conn->query("SELECT username, last_login FROM users WHERE username IS NOT NULL");
while ($lr = $lres->fetch_assoc()) $lastLoginByUsername[$lr['username']] = $lr['last_login'];

$res = $conn->query("SELECT * FROM staff ORDER BY staff_id");
while ($row = $res->fetch_assoc()) {
    $out['staffDB'][] = [
        'id' => $row['staff_id'], 'name' => $row['name'], 'role' => $row['role'], 'dept' => $row['dept'],
        'phone' => $row['phone'], 'email' => $row['email'], 'dob' => $row['dob'], 'doj' => $row['doj'],
        'addr' => $row['addr'], 'photo' => blobToDataUrl($row['photo_mime'], $row['photo']),
        'certificates' => $certsByOwner['staff:' . $row['staff_id']] ?? [],
        'username' => $row['username'], 'sysRole' => $row['sys_role'] ?: 'staff',
        'lastLogin' => $row['username'] ? ($lastLoginByUsername[$row['username']] ?? null) : null
    ];
}

// ---- attendance (current in-memory representation; day-of-month keyed, matching original app) ----
$res = $conn->query("SELECT * FROM student_attendance");
while ($row = $res->fetch_assoc()) {
    $yk = $row['yr_key']; $sid = $row['stu_id']; $d = (string)$row['att_day'];
    if (!isset($out['attState'][$yk]->$sid)) $out['attState'][$yk]->$sid = new stdClass();
    $out['attState'][$yk]->$sid->$d = $row['status'];
}
$res = $conn->query("SELECT * FROM leave_permissions");
while ($row = $res->fetch_assoc()) {
    $yk = $row['yr_key']; $sid = $row['stu_id']; $d = (string)$row['att_day'];
    if (!isset($out['attLeaveInfo'][$yk]->$sid)) $out['attLeaveInfo'][$yk]->$sid = new stdClass();
    $out['attLeaveInfo'][$yk]->$sid->$d = ['type' => $row['leave_type'], 'reason' => $row['reason'], 'duration' => $row['duration']];
}
$res = $conn->query("SELECT * FROM staff_attendance");
while ($row = $res->fetch_assoc()) {
    $sid = $row['staff_id']; $d = (string)$row['att_day'];
    if (!isset($out['staffAttState']->$sid)) $out['staffAttState']->$sid = new stdClass();
    $out['staffAttState']->$sid->$d = $row['status'];
}

// ---- holidays / saturdays ----
$res = $conn->query("SELECT * FROM holidays ORDER BY h_date");
while ($row = $res->fetch_assoc()) {
    $out['holidays'][] = $row['h_date'];
    $out['holidayList'][] = ['date' => $row['h_date'], 'name' => $row['title'], 'type' => 'Other'];
}
$res = $conn->query("SELECT * FROM working_saturdays ORDER BY s_date");
while ($row = $res->fetch_assoc()) {
    $out['workingSaturdays'][] = $row['s_date'];
    $out['satList'][] = ['date' => $row['s_date'], 'working' => true];
}

// ---- alumni archive, grouped exactly like the original alumniDB array ----
$res = $conn->query("SELECT * FROM alumni_archive ORDER BY id");
while ($row = $res->fetch_assoc()) {
    $aid = $row['id'];
    $docs = [];
    $dres = $conn->query("SELECT * FROM alumni_documents WHERE alumni_id=$aid");
    while ($d = $dres->fetch_assoc()) {
        $docs[] = ['name' => $d['name'], 'type' => $d['doc_type'], 'date' => $d['doc_date'], 'fileName' => $d['file_name'], 'dataUrl' => blobToDataUrl($d['mime'], $d['file_data'])];
    }
    $certs = [];
    $cres = $conn->query("SELECT * FROM alumni_certificates WHERE alumni_id=$aid");
    while ($c = $cres->fetch_assoc()) {
        $certs[] = ['name' => $c['name'], 'type' => $c['cert_type'], 'date' => $c['cert_date'], 'fileName' => $c['file_name'], 'dataUrl' => blobToDataUrl($c['mime'], $c['file_data'])];
    }
    $out['alumniDB'][] = [
        'id' => $row['stu_id'], 'name' => $row['name'], 'roll' => $row['roll'], 'reg' => $row['reg_no'],
        'finalBatch' => $row['final_batch'], 'phone' => $row['phone'], 'pphone' => $row['pphone'],
        'dob' => $row['dob'], 'comm' => $row['comm'], 'rel' => $row['religion'], 'addr' => $row['addr'], 'job' => $row['job'],
        'graduatedOn' => $row['graduated_on'], 'groupId' => $row['group_id'],
        'photo' => blobToDataUrl($row['photo_mime'], $row['photo']),
        'feeSnapshot' => json_decode($row['fee_snapshot'] ?: '{}', true),
        'docsSnapshot' => $docs, 'certsSnapshot' => $certs,
        'attSnapshot' => json_decode($row['att_snapshot'] ?: '{}', true),
        'leaveSnapshot' => json_decode($row['leave_snapshot'] ?: '{}', true),
    ];
}

// ---- activity log (most recent 300 — enough for the Admin Panel's Staff Activity view) ----
$res = $conn->query("SELECT * FROM activity_log ORDER BY id DESC LIMIT 300");
while ($row = $res->fetch_assoc()) {
    $out['activityLog'][] = ['icon' => $row['icon'], 'title' => $row['title'], 'detail' => $row['detail'], 'by' => $row['by_role'], 'user' => $row['username'], 'time' => $row['created_at']];
}

// ---- gate passes ----
$res = $conn->query("SELECT * FROM gate_passes ORDER BY id DESC");
while ($row = $res->fetch_assoc()) {
    $out['gatePasses'][] = [
        'id' => (int)$row['id'], 'no' => $row['pass_no'], 'stuId' => $row['stu_id'],
        'name' => $row['stu_name'], 'yr' => $row['stu_yr'], 'date' => $row['pass_date'],
        'outTime' => $row['out_time'], 'inTime' => $row['in_time'], 'reason' => $row['reason'],
        'approver' => $row['approver'], 'status' => $row['status']
    ];
}

respond($out);

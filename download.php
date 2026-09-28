<?php
require_once __DIR__ . '/../config.php';
$type = $_GET['type'] ?? '';

function sendBlob($conn, $table, $id) {
    $id = (int)$id;
    $res = $conn->query("SELECT * FROM $table WHERE id=$id");
    $row = $res->fetch_assoc();
    if (!$row) { http_response_code(404); echo 'Not found'; exit; }
    header('Content-Type: ' . ($row['mime'] ?: 'application/octet-stream'));
    header('Content-Disposition: attachment; filename="' . basename($row['file_name'] ?: $row['name']) . '"');
    header('Content-Length: ' . strlen($row['file_data']));
    echo $row['file_data'];
    exit;
}

// single document / certificate download (works for live records)
if ($type === 'document') { sendBlob($conn, 'documents', $_GET['id']); }
if ($type === 'certificate') { sendBlob($conn, 'certificates', $_GET['id']); }

if ($type === 'student_photo') {
    $sid = $conn->real_escape_string($_GET['id']);
    $row = $conn->query("SELECT photo,photo_mime,name FROM students WHERE stu_id='$sid'")->fetch_assoc();
    if (!$row || !$row['photo']) { http_response_code(404); exit; }
    header('Content-Type: ' . $row['photo_mime']);
    echo $row['photo'];
    exit;
}

// ---- ALUMNI: single student ZIP (profile + docs + certs + photo) ----
if ($type === 'alumni_student_zip') {
    $sid = $conn->real_escape_string($_GET['id']);
    $s = $conn->query("SELECT * FROM alumni_archive WHERE stu_id='$sid' ORDER BY id DESC LIMIT 1")->fetch_assoc();
    if (!$s) { http_response_code(404); echo 'Alumni record not found'; exit; }
    $zipPath = buildAlumniZip($conn, [$s]);
    streamZip($zipPath, preg_replace('/[^a-zA-Z0-9]+/', '_', $s['name']) . '_Alumni_Record.zip');
}

// ---- ALUMNI: whole graduated batch ZIP (this is your "10+ batches saved as zip" feature) ----
if ($type === 'alumni_batch_zip') {
    $groupId = $conn->real_escape_string($_GET['groupId']);
    $res = $conn->query("SELECT * FROM alumni_archive WHERE group_id='$groupId'");
    $rows = [];
    while ($r = $res->fetch_assoc()) $rows[] = $r;
    if (!count($rows)) { http_response_code(404); echo 'No records for this batch'; exit; }
    $label = 'Graduated_' . $rows[0]['graduated_on'] . '_' . preg_replace('/[^0-9]+/', '-', $rows[0]['final_batch']);
    $zipPath = buildAlumniZip($conn, $rows);
    streamZip($zipPath, $label . '.zip');
}

http_response_code(400);
echo 'Unknown download type';
exit;

function buildAlumniZip($conn, $rows) {
    $tmp = tempnam(sys_get_temp_dir(), 'alumni_') . '.zip';
    $zip = new ZipArchive();
    $zip->open($tmp, ZipArchive::CREATE | ZipArchive::OVERWRITE);
    foreach ($rows as $s) {
        $folder = preg_replace('/[^a-zA-Z0-9]+/', '_', $s['name']) . '_' . $s['stu_id'] . '/';
        $fee = json_decode($s['fee_snapshot'] ?: '{}', true);
        $att = json_decode($s['att_snapshot'] ?: '[]', true);

        $html = "<html><head><meta charset='utf-8'><title>{$s['name']}</title></head><body>";
        $html .= "<h1>Alumni Profile &amp; Full History (Archived)</h1>";
        $html .= "<h2>1. Personal &amp; Academic Details</h2><table border='1' cellpadding='6'>";
        $html .= "<tr><td>Full Name</td><td>{$s['name']}</td></tr>";
        $html .= "<tr><td>Student ID</td><td>{$s['stu_id']}</td></tr>";
        $html .= "<tr><td>Roll No</td><td>{$s['roll']}</td></tr>";
        $html .= "<tr><td>Register No</td><td>{$s['reg_no']}</td></tr>";
        $html .= "<tr><td>Final Batch</td><td>{$s['final_batch']}</td></tr>";
        $html .= "<tr><td>Date of Birth</td><td>{$s['dob']}</td></tr>";
        $html .= "<tr><td>Phone / Parent Phone</td><td>{$s['phone']} / {$s['pphone']}</td></tr>";
        $html .= "<tr><td>Address</td><td>{$s['addr']}</td></tr>";
        $html .= "<tr><td>Status</td><td>Graduated on {$s['graduated_on']}</td></tr></table>";
        $html .= "<h2>2. Fees (Final Snapshot)</h2><table border='1' cellpadding='6'>";
        $html .= "<tr><td>Total</td><td>₹" . ($fee['total'] ?? 0) . "</td></tr>";
        $html .= "<tr><td>Paid</td><td>₹" . ($fee['paid'] ?? 0) . "</td></tr>";
        $html .= "<tr><td>Balance</td><td>₹" . ($fee['balance'] ?? 0) . "</td></tr></table>";
        $html .= "<h2>3. Attendance Records on File</h2><p>" . count($att) . " day(s) recorded in final year.</p>";
        $html .= "<p style='font-size:9pt;color:#888;'>System-generated archival record — SBM Polytechnic College SMS.</p>";
        $html .= "</body></html>";
        $zip->addFromString($folder . 'Profile_and_History.html', $html);

        if (!empty($s['photo'])) $zip->addFromString($folder . 'photo.' . mimeExt($s['photo_mime']), $s['photo']);

        $docs = $conn->query("SELECT * FROM alumni_documents WHERE alumni_id=" . (int)$s['id']);
        while ($d = $docs->fetch_assoc()) {
            $zip->addFromString($folder . 'Documents/' . ($d['file_name'] ?: $d['name']), $d['file_data']);
        }
        $certs = $conn->query("SELECT * FROM alumni_certificates WHERE alumni_id=" . (int)$s['id']);
        while ($c = $certs->fetch_assoc()) {
            $zip->addFromString($folder . 'Certificates/' . ($c['file_name'] ?: $c['name']), $c['file_data']);
        }
    }
    $zip->close();
    return $tmp;
}
function mimeExt($mime) {
    $map = ['image/jpeg' => 'jpg', 'image/png' => 'png', 'image/webp' => 'webp'];
    return $map[$mime] ?? 'jpg';
}
function streamZip($path, $downloadName) {
    header('Content-Type: application/zip');
    header('Content-Disposition: attachment; filename="' . $downloadName . '"');
    header('Content-Length: ' . filesize($path));
    readfile($path);
    unlink($path);
    exit;
}

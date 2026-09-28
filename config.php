<?php
// ============================================================
// SMS Backend - Database Configuration
// Edit these 4 lines to match your XAMPP MySQL setup.
// Default XAMPP: host=localhost, user=root, pass='' (blank)
//
// SEEING "Access denied for user 'root'@'localhost' (using
// password: NO)"? This PC's MySQL root account has a password
// set. Put it in DB_PASS below, e.g. define('DB_PASS', 'yourpassword');
// Or reset it to blank: stop MySQL in XAMPP, open a command
// prompt in D:\xampp\mysql\bin and run:
//   mysqladmin -u root -p password ""
// then restart MySQL and leave DB_PASS as '' below.
// ============================================================
define('DB_HOST', 'localhost');
define('DB_NAME', 'sms_db');
define('DB_USER', 'root');
define('DB_PASS', 'c$e');          // set your XAMPP MySQL root password here if you have one

define('ADMIN_PROMOTE_PASSWORD', 'admin123'); // password required to promote batches / view Alumni Records

mysqli_report(MYSQLI_REPORT_OFF); // we handle errors manually so the API always returns clean JSON
$conn = @new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if ($conn->connect_error) {
    http_response_code(500);
    header('Content-Type: application/json');
    echo json_encode(['ok' => false, 'error' => 'Database connection failed: ' . $conn->connect_error]);
    exit;
}
$conn->set_charset('utf8mb4');

session_start();

header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *'); // same-origin in normal XAMPP use; harmless to leave on for local dev
header('Access-Control-Allow-Headers: Content-Type');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') { exit; }

// ---- small helpers used by every endpoint ----
function jsonInput() {
    $raw = file_get_contents('php://input');
    $data = json_decode($raw, true);
    return is_array($data) ? $data : [];
}
function respond($arr) {
    echo json_encode($arr);
    exit;
}
function fail($msg, $code = 400) {
    http_response_code($code);
    respond(['ok' => false, 'error' => $msg]);
}
// Convert an uploaded/base64 data-URL (e.g. from <input type=file> read as DataURL in JS)
// into [mime, rawBinaryData]. Returns [null,null] if not a data URL.
function decodeDataUrl($dataUrl) {
    if (!$dataUrl || strpos($dataUrl, 'data:') !== 0) return [null, null];
    $comma = strpos($dataUrl, ',');
    if ($comma === false) return [null, null];
    $meta = substr($dataUrl, 5, $comma - 5); // e.g. image/png;base64
    $mime = explode(';', $meta)[0];
    $bin = base64_decode(substr($dataUrl, $comma + 1));
    return [$mime, $bin];
}
function blobToDataUrl($mime, $blobData) {
    if ($blobData === null || $blobData === '') return '';
    return 'data:' . ($mime ?: 'application/octet-stream') . ';base64,' . base64_encode($blobData);
}

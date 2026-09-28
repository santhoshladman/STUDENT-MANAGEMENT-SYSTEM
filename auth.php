<?php
require_once __DIR__ . '/../config.php';
$action = $_GET['action'] ?? jsonInput()['action'] ?? '';

if ($action === 'login') {
    $in = jsonInput();
    $username = trim($in['username'] ?? '');
    $password = $in['password'] ?? '';
    $role     = $in['role'] ?? '';
    $stmt = $conn->prepare("SELECT id,username,password_hash,role,full_name FROM users WHERE username=? LIMIT 1");
    $stmt->bind_param('s', $username);
    $stmt->execute();
    $res = $stmt->get_result();
    $user = $res->fetch_assoc();
    if (!$user || !password_verify($password, $user['password_hash'])) {
        fail('Invalid username or password', 401);
    }
    // The role button clicked on the login screen is just a UX hint — the frontend always
    // uses THIS account's real DB role (returned below) to decide what the user can access.
    $_SESSION['uid'] = $user['id'];
    $_SESSION['role'] = $user['role'];
    $_SESSION['username'] = $user['username'];

    // record last login + write an activity_log entry so Admins can see who logged in and when
    $upd = $conn->prepare("UPDATE users SET last_login = NOW() WHERE id = ?");
    $upd->bind_param('i', $user['id']);
    $upd->execute();
    $roleUpper = strtoupper($user['role']);
    $log = $conn->prepare("INSERT INTO activity_log (icon,title,detail,by_role,username) VALUES (?,?,?,?,?)");
    $icon = '🔐'; $title = 'Signed in'; $detail = $user['full_name'] ?: $user['username'];
    $log->bind_param('sssss', $icon, $title, $detail, $roleUpper, $user['username']);
    $log->execute();

    respond(['ok' => true, 'user' => ['username' => $user['username'], 'role' => $user['role'], 'full_name' => $user['full_name']]]);
}

if ($action === 'register') {
    $in = jsonInput();
    $username = trim($in['username'] ?? '');
    $password = $in['password'] ?? '';
    $role     = $in['role'] ?? 'staff';
    $fullName = trim($in['full_name'] ?? $username);
    if (!$username || strlen($password) < 4) fail('Username and a password (4+ chars) are required');
    $hash = password_hash($password, PASSWORD_DEFAULT);
    $stmt = $conn->prepare("INSERT INTO users (username,password_hash,role,full_name) VALUES (?,?,?,?)");
    $stmt->bind_param('ssss', $username, $hash, $role, $fullName);
    if (!$stmt->execute()) fail('Username already exists');
    respond(['ok' => true]);
}

if ($action === 'logout') {
    $_SESSION = [];
    session_destroy();
    respond(['ok' => true]);
}

if ($action === 'check_promote_password') {
    $in = jsonInput();
    respond(['ok' => true, 'valid' => ($in['password'] ?? '') === ADMIN_PROMOTE_PASSWORD]);
}

fail('Unknown auth action');

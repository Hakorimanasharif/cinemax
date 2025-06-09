<?php
// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'cinemax_db');

// Website configuration
define('SITE_URL', 'http://localhost/cinemax');
define('UPLOAD_DIR', 'assets/uploads/');

// Start session
session_start();

// Error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// WhatsApp contact
define('WHATSAPP_NUMBER', '1234567890');
define('WHATSAPP_TEXT', 'Hello%20Cinemax%20Support');
?>
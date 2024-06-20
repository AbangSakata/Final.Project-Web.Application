<?php
$servername = "localhost";
$username = "id22285139_basinggahsmokol";
$password = "Basinggahsmokol10#";
$dbname = "id22285139_makananmanado";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
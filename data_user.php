<?php
session_start();
if (!isset($_SESSION['admin_id'])) {
    header("Location: log_admin.php");
    exit();
}

// file koneksi
include 'koneksi.php';

// Mengambil data user
$users = $conn->query("SELECT * FROM users");
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Data User</title>
  <link rel="icon" href="img/basinggahsmokol.png">
  <link rel="stylesheet" href="css/admin.css">
</head>
<body>

<header class="admin-header">
  <div class="admin-logo">Panel<span>Admin.</span></div>
  <nav class="navbar">
    <div class="navbar-nav">
      <a href="data_user.php">Data User</a>
      <a href="edit_menu.php">Edit Menu</a>
      <a href="lihat_saran.php">Lihat Saran</a>
    </div>
  </nav>
  <a href="logout_admin.php" class="btn logout">Log Out</a>
</header>

<main class="admin-panel">
  <section id="view-users" class="admin-section">
    <h2>Lihat User</h2>
    <table class="admin-table">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nama</th>
          <th>Email</th>
        </tr>
      </thead>
      <tbody>
        <?php while ($row = $users->fetch_assoc()): ?>
        <tr>
          <td><?php echo $row['id_user']; ?></td>
          <td><?php echo $row['nama']; ?></td>
          <td><?php echo $row['email']; ?></td>
        </tr>
        <?php endwhile; ?>
      </tbody>
    </table>
  </section>
</main>

<footer>
  <p>&copy; 2024 Basinggah Smokol. Hak cipta dilindungi.</p>
</footer>

</body>
</html>

<?php
$conn->close();
?>

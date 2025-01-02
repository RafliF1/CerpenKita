<?php
include 'config.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Situs Cerita</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <header>
        <div class="header-container">
            <!-- Logo dan Judul Situs -->
            <div class="logo-title">
                <h1><a href="index.php">Situs Cerita</a></h1>
            </div>

            <!-- Navigasi Menu -->
            <nav>
                <ul class="navbar">
                    <li><a href="index.php">Beranda</a></li>
                    <li><a href="user_request.php">Request Cerita</a></li>
                    <?php if (isset($_SESSION['admin'])): ?>
                    <li><a href="tentang_kontak.php">Edit Cerita</a></li>
                    <li><a href="admin_request.php">Admin Requests</a></li>
                    <li><a href="tambah.php">Tambah Cerita</a></li>
                    <?php endif; ?>
                </ul>
            </nav>

            <!-- Tombol Login/Logout -->
            <div class="user-actions">
                <?php if (isset($_SESSION['logged_in'])): ?>
                <a href="logout.php" class="btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
                <?php else: ?>
                <a href="login.php" class="btn"><i class="fas fa-sign-in-alt"></i> Login </a>
                <?php endif; ?>
            </div>
        </div>
    </header>
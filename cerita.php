<?php
include 'config.php';
include 'header.php';

$id = $_GET['id'];
$sql = "SELECT judul, deskripsi, konten FROM cerita WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$cerita = $result->fetch_assoc();

if (!$cerita) {
    die("Cerita tidak ditemukan.");
}
?>
<h1><?= htmlspecialchars($cerita['judul']) ?></h1>
<p><strong>Deskripsi:</strong> <?= htmlspecialchars($cerita['deskripsi']) ?></p>
<p><?= nl2br(htmlspecialchars($cerita['konten'])) ?></p>
<a href="index.php" class="btn">Kembali</a>
<?php
include 'footer.php';
$stmt->close();
$conn->close();
?>
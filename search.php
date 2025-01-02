<?php
include 'config.php';
include 'header.php';

$query = isset($_GET['query']) ? $_GET['query'] : '';
$kategori = isset($_GET['kategori']) ? $_GET['kategori'] : '';

// Bangun query SQL berdasarkan input pencarian
$sql = "SELECT id, judul, kategori, deskripsi, gambar FROM cerita WHERE 1=1";
$params = [];

// Tambahkan kondisi untuk kata kunci jika diisi
if (!empty($query)) {
    $sql .= " AND (judul LIKE ? OR deskripsi LIKE ?)";
    $params[] = '%' . $query . '%';
    $params[] = '%' . $query . '%';
}

// Tambahkan kondisi untuk kategori jika diisi
if (!empty($kategori)) {
    $sql .= " AND kategori = ?";
    $params[] = $kategori;
}

$stmt = $conn->prepare($sql);

// Bind parameter ke statement
if (!empty($params)) {
    $stmt->bind_param(str_repeat('s', count($params)), ...$params);
}

$stmt->execute();
$result = $stmt->get_result();
?>
<div class="cerita-list">
    <?php if ($result->num_rows > 0): ?>
    <?php while($row = $result->fetch_assoc()): ?>
    <div class="cerita-item">
        <a href="cerita.php?id=<?= $row['id'] ?>">
            <img src="<?= htmlspecialchars($row['gambar']) ?>" alt="<?= htmlspecialchars($row['judul']) ?>"
                class="gambar-cerita">
            <div class="cerita-info">
                <h2><?= htmlspecialchars($row['judul']) ?></h2>
                <p><strong>Kategori:</strong> <?= htmlspecialchars($row['kategori']) ?></p>
                <p><?= htmlspecialchars($row['deskripsi']) ?></p>
            </div>
        </a>
    </div>
    <?php endwhile; ?>
    <?php else: ?>
    <p>Tidak ada cerita yang ditemukan.</p>
    <?php endif; ?>
</div>
<?php
include 'footer.php';
$stmt->close();
$conn->close();
?>
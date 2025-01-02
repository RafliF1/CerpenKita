<?php
include 'config.php';
include 'header.php';

$penulis_id = $_GET['id'];
$sql_penulis = "SELECT nama, biografi FROM penulis WHERE id = ?";
$stmt_penulis = $conn->prepare($sql_penulis);
$stmt_penulis->bind_param("i", $penulis_id);
$stmt_penulis->execute();
$result_penulis = $stmt_penulis->get_result();
$penulis = $result_penulis->fetch_assoc();

$sql_cerita = "SELECT id, judul, kategori, deskripsi FROM cerita WHERE penulis_id = ?";
$stmt_cerita = $conn->prepare($sql_cerita);
$stmt_cerita->bind_param("i", $penulis_id);
$stmt_cerita->execute();
$result_cerita = $stmt_cerita->get_result();
?>
<h1>Profil Penulis: <?= htmlspecialchars($penulis['nama']) ?></h1>
<p><?= htmlspecialchars($penulis['biografi']) ?></p>

<h2>Karya-karya:</h2>
<ul class="cerita-list">
    <?php if ($result_cerita->num_rows > 0): ?>
    <?php while($row = $result_cerita->fetch_assoc()): ?>
    <li>
        <a href="cerita.php?id=<?= $row['id'] ?>">
            <h2><?= htmlspecialchars($row['judul']) ?></h2>
            <p><strong>Kategori:</strong> <?= htmlspecialchars($row['kategori']) ?></p>
            <p><?= htmlspecialchars($row['deskripsi']) ?></p>
        </a>
    </li>
    <?php endwhile; ?>
    <?php else: ?>
    <li>Tidak ada karya.</li>
    <?php endif; ?>
</ul>
<?php
include 'footer.php';
$stmt_penulis->close();
$stmt_cerita->close();
$conn->close();
?>
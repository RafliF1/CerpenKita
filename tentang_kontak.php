<?php
include 'config.php';
include 'header.php';

// Proses Delete
if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];
    $sql = "DELETE FROM cerita WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        echo "<script>alert('Cerita berhasil dihapus!'); window.location.href='tentang_kontak.php';</script>";
    } else {
        echo "<script>alert('Gagal menghapus cerita.'); window.location.href='tentang_kontak.php';</script>";
    }
    $stmt->close();
}

// Query untuk mendapatkan semua cerita
$sql = "SELECT id, judul, kategori, deskripsi, gambar FROM cerita";
$result = $conn->query($sql);
?>

<div class="content-container">
    <h2>Daftar Cerita</h2>
    <table class="cerita-table">
        <thead>
            <tr>
                <th>Judul</th>
                <th>Kategori</th>
                <th>Deskripsi</th>
                <th>Gambar</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($result->num_rows > 0): ?>
            <?php while($row = $result->fetch_assoc()): ?>
            <tr>
                <td><?= htmlspecialchars($row['judul']) ?></td>
                <td><?= htmlspecialchars($row['kategori']) ?></td>
                <td><?= htmlspecialchars($row['deskripsi']) ?></td>
                <td><img src="<?= htmlspecialchars($row['gambar']) ?>" alt="<?= htmlspecialchars($row['judul']) ?>"
                        class="gambar-cerita"></td>
                <td>
                    <a href="edit.php?id=<?= $row['id'] ?>" class="btn">Edit</a>
                    <a href="tentang_kontak.php?delete_id=<?= $row['id'] ?>" class="btn btn-danger"
                        onclick="return confirm('Apakah Anda yakin ingin menghapus cerita ini?')">Delete</a>
                </td>
            </tr>
            <?php endwhile; ?>
            <?php else: ?>
            <tr>
                <td colspan="5">Tidak ada cerita.</td>
            </tr>
            <?php endif; ?>
        </tbody>
    </table>
</div>

<?php
include 'footer.php';
$conn->close();
?>
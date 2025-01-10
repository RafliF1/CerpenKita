<!-- Bagian Paginasi -->
<div class="pagination">
    <?php if ($page > 1): ?>
    <a href="?page=<?= $page - 1 ?>" class="page-arrow">&laquo; Prev</a>
    <?php endif; ?>

    <?php for ($i = 1; $i <= ceil($total_cerita / $cerita_per_halaman); $i++): ?>
    <a href="?page=<?= $i ?>" class="<?= $i === $page ? 'active' : '' ?>"><?= $i ?></a>
    <?php endfor; ?>

    <?php if ($page < ceil($total_cerita / $cerita_per_halaman)): ?>
    <a href="?page=<?= $page + 1 ?>" class="page-arrow">Next &raquo;</a>
    <?php endif; ?>
</div>
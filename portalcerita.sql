-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2024 pada 14.41
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalcerita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin1', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cerita`
--

CREATE TABLE `cerita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `konten` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `penulis_id` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cerita`
--

INSERT INTO `cerita` (`id`, `judul`, `deskripsi`, `konten`, `kategori`, `penulis_id`, `gambar`) VALUES
(1, 'Kancil adalah kingkong', 'Gatau', 'Di sebuah desa kecil yang dikelilingi hutan lebat, hiduplah seorang pemuda bernama Arif. Ia dikenal sebagai sosok yang pendiam dan lebih suka menghabiskan waktu di perpustakaan desa daripada bergaul dengan teman-temannya. Arif memiliki hobi membaca cerita-cerita misteri dan petualangan, yang sering kali membawanya ke dunia imajinasi yang jauh dari kenyataan.\r\n\r\nSuatu malam, saat bulan purnama bersinar terang, Arif memutuskan untuk berjalan-jalan di sekitar desa. Ia merasa ada sesuatu yang aneh di udara malam itu, seolah-olah hutan di sekelilingnya berbisik. Dengan rasa penasaran, ia melangkah lebih jauh ke dalam hutan, mengikuti jalan setapak yang jarang dilalui.\r\n\r\nSetelah beberapa saat berjalan, Arif tiba di sebuah clearing yang dipenuhi cahaya bulan. Di tengah clearing, ia melihat sebuah bangunan tua yang tertutup lumut dan tanaman merambat. Bangunan itu tampak seperti bekas rumah, dengan jendela-jendela yang pecah dan pintu yang setengah terbuka. Rasa ingin tahunya mengalahkan rasa takutnya, dan ia melangkah mendekat.\r\n\r\nSaat Arif memasuki rumah itu, suasana di dalamnya terasa dingin dan sunyi. Dinding-dindingnya dipenuhi dengan gambar-gambar aneh dan tulisan-tulisan yang tidak ia mengerti. Di sudut ruangan, ia melihat sebuah cermin besar yang berdebu. Ketika ia mendekat, bayangannya di cermin tampak berbeda. Ia melihat sosok seorang gadis dengan gaun putih yang berdiri di belakangnya, meskipun ia tahu tidak ada siapa-siapa di sana.\r\n\r\nArif terkejut dan berbalik, tetapi tidak ada siapa-siapa. Ia menatap cermin lagi, dan kali ini gadis itu tersenyum padanya. \"Aku sudah menunggumu, Arif,\" katanya dengan suara lembut. \"Aku adalah bayangan dari masa lalu, terjebak di sini karena kesedihan yang tak kunjung reda.\"\r\n\r\n\"Siapa kamu?\" tanya Arif, suaranya bergetar.\r\n\r\n\"Aku Lila, pemilik rumah ini. Dulu, aku hidup bahagia di sini, tetapi sebuah tragedi merenggut segalanya. Kini, aku terjebak di antara dunia ini dan dunia lain. Hanya seseorang dengan hati yang tulus yang bisa membebaskanku.\"\r\n\r\nArif merasa tergerak oleh cerita Lila. Ia tidak ingin melihatnya terjebak selamanya. \"Apa yang harus aku lakukan?\" tanyanya.\r\n\r\n\"Kau harus menemukan kenangan yang hilang. Di dalam rumah ini, ada tiga benda yang menyimpan kenangan terindahku. Temukan mereka, dan aku akan bebas.\"\r\n\r\nDengan semangat baru, Arif mulai mencari di seluruh rumah. Ia menemukan sebuah buku tua yang berisi puisi-puisi indah, sebuah kalung yang terbuat dari bunga kering, dan sebuah lukisan yang menggambarkan Lila dan keluarganya. Setiap benda yang ia temukan mengungkapkan kisah cinta dan kebahagiaan yang pernah ada di rumah itu.\r\n\r\nSetelah menemukan semua benda, Arif kembali ke cermin. \"Aku telah menemukan kenanganmu, Lila,\" katanya. \"Sekarang, apa yang harus aku lakukan?\"\r\n\r\nLila tersenyum, dan cahaya lembut mulai mengelilinginya. \"Terima kasih, Arif. Sekarang aku bisa pergi. Ingatlah, setiap kenangan memiliki kekuatan untuk mengubah hidup kita.\"\r\n\r\nDengan satu sentuhan, Lila menghilang, dan cermin itu pecah menjadi serpihan-serpihan kecil. Arif merasa seolah beban berat telah terangkat dari hatinya. Ia keluar dari rumah itu, dan saat ia melangkah kembali ke desa, ia merasakan kehangatan dan kedamaian yang belum pernah ia rasakan sebelumnya.\r\n\r\nSejak malam itu, Arif tidak hanya menjadi pemuda yang pendiam, tetapi juga seorang penulis. Ia mulai menuliskan kisah Lila dan kenangan-kenangan indah yang ia temukan, membagikannya kepada dunia. Dan di setiap cerita yang ia tulis, ada bayangan Lila yang tersenyum, mengingatkan bahwa setiap akhir adalah awal yang baru.', 'fiksi', 0, 'uploads/NoImages.png'),
(2, 'Perjalanan Seorang Relawan di Tengah Bencana', 'Test', 'Pada bulan September 2021, Indonesia dilanda bencana alam yang cukup parah. Gempa bumi berkekuatan 6,2 skala Richter mengguncang pulau Sulawesi, menyebabkan kerusakan yang meluas dan mengakibatkan banyak korban jiwa. Di tengah kepanikan dan kesedihan, banyak relawan dari berbagai daerah bergegas menuju lokasi bencana untuk memberikan bantuan.\r\n\r\nSalah satu relawan tersebut adalah Rina, seorang mahasiswi jurusan Kesehatan Masyarakat di sebuah universitas di Jakarta. Rina merasa terpanggil untuk membantu setelah melihat berita tentang bencana tersebut di televisi. Ia segera mendaftar sebagai relawan melalui organisasi kemanusiaan yang sudah berpengalaman dalam penanganan bencana.\r\n\r\nSetelah beberapa hari persiapan, Rina dan timnya berangkat menuju Sulawesi. Dalam perjalanan, ia merasakan campuran antara kegembiraan dan kecemasan. Kegembiraan karena bisa membantu sesama, tetapi juga kecemasan tentang apa yang akan mereka hadapi di lokasi bencana.\r\n\r\nSetibanya di lokasi, Rina terkejut melihat pemandangan yang sangat memilukan. Banyak rumah yang hancur, jalanan yang terputus, dan orang-orang yang kehilangan tempat tinggal. Rina dan timnya segera dibagi menjadi beberapa kelompok. Tugas Rina adalah memberikan bantuan medis dan psikologis kepada para korban.\r\n\r\nHari-hari pertama di lokasi bencana sangat melelahkan. Rina dan timnya bekerja tanpa henti, memberikan pertolongan pertama kepada korban yang terluka, mendistribusikan makanan dan air bersih, serta mendirikan tenda sebagai tempat berlindung. Rina juga berusaha mendengarkan cerita-cerita dari para korban, memberikan dukungan emosional kepada mereka yang kehilangan orang terkasih.\r\n\r\nSalah satu pengalaman yang paling mengesankan bagi Rina adalah saat ia bertemu dengan seorang ibu bernama Siti. Siti kehilangan suaminya dalam gempa dan kini harus merawat dua anaknya yang masih kecil. Rina melihat betapa hancurnya hati Siti, tetapi juga melihat semangatnya untuk tetap kuat demi anak-anaknya. Rina menghabiskan waktu berbicara dengan Siti, mendengarkan keluh kesahnya, dan memberikan semangat.\r\n\r\n\"Bu, saya tahu ini sangat sulit, tetapi Anda tidak sendirian. Kami di sini untuk membantu,\" kata Rina dengan tulus.\r\n\r\nSiti menatap Rina dengan mata penuh haru. \"Terima kasih, Nak. Kehadiranmu membuatku merasa tidak sendirian.\"\r\n\r\nSetelah beberapa minggu di lokasi bencana, Rina merasakan perubahan dalam dirinya. Ia belajar banyak tentang ketahanan manusia dan kekuatan komunitas. Meskipun banyak yang kehilangan segalanya, mereka tetap saling mendukung dan membantu satu sama lain. Rina juga menyadari betapa pentingnya peran relawan dalam situasi seperti ini.\r\n\r\nKetika akhirnya Rina kembali ke Jakarta, ia membawa pulang lebih dari sekadar pengalaman. Ia membawa pulang pelajaran berharga tentang empati, keberanian, dan harapan. Rina bertekad untuk terus terlibat dalam kegiatan kemanusiaan, tidak hanya saat bencana terjadi, tetapi juga dalam upaya pencegahan dan pemulihan.\r\n\r\nPengalaman Rina di Sulawesi mengubah pandangannya tentang kehidupan. Ia menyadari bahwa setiap orang memiliki cerita dan perjuangan masing-masing. Dan meskipun dunia sering kali dipenuhi dengan kesedihan, ada selalu harapan dan kekuatan dalam kebersamaan. Rina berjanji untuk menjadi suara bagi mereka yang tidak terdengar dan untuk terus berkontribusi dalam menciptakan dunia yang lebih baik.', 'non-fiksi', 0, 'uploads/NoImages.png'),
(3, 'Test', 'Test', 'Example', 'horor', 0, 'uploads/NoImages.png'),
(4, 'Test', 'Example', 'Test', 'romansa', 0, 'uploads/NoImages.png'),
(5, 'Test', 'Example', 'Test', 'fantasi', 0, 'uploads/NoImages.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `biografi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

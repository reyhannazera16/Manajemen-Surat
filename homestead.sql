-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 08 Jun 2023 pada 16.08
-- Versi server: 8.0.30
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisis`
--

CREATE TABLE `disposisis` (
  `id` int UNSIGNED NOT NULL,
  `tujuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int UNSIGNED NOT NULL,
  `suratmasuk_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `disposisis`
--

INSERT INTO `disposisis` (`id`, `tujuan`, `isi`, `sifat`, `batas_waktu`, `catatan`, `users_id`, `suratmasuk_id`, `created_at`, `updated_at`) VALUES
(4, 'Kepala Fakultas Teknik', 'Konfirmasi Undangan', 'Segera', '2020-02-06', 'Harap Untuk Ditindaklajuti', 2, 1, '2020-02-06 07:33:32', '2020-02-06 07:33:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansis`
--

CREATE TABLE `instansis` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pimpinan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `instansis`
--

INSERT INTO `instansis` (`id`, `nama`, `alamat`, `pimpinan`, `email`, `file`, `created_at`, `updated_at`) VALUES
(5, 'UNIVERSITAS PGRI RONGGOLAWE TUBAN', 'Jl. Manunggal No. 61 Tuban Telp. (0356) 477596', 'Prof. Dr. Supiyana Dian Nurtjachyani, M.Kes.', 'prosepective@unirow.ac.id', 'uploads/logo/1581015162logo.png', '2020-02-06 11:52:42', '2020-02-06 11:57:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `klasifikasi`
--

INSERT INTO `klasifikasi` (`id`, `nama`, `kode`, `uraian`, `created_at`, `updated_at`) VALUES
(3, 'Ijin Kegiatan', 'C', 'Ini Kode Klasifikasi Untuk Surat Ijin Kegiatan', '2020-02-06 04:35:33', '2020-02-06 04:35:33'),
(5, 'Undangan', 'A', 'Ini Klasifikasi Untuk Undangan', '2020-02-06 11:27:21', '2020-02-06 11:27:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_12_102424_create_suratmasuk_table', 1),
(4, '2020_01_12_102608_create_suratkeluar_table', 1),
(5, '2020_01_12_102751_create_klasifikasi_table', 1),
(6, '2020_02_01_133812_tambah_field_userid', 1),
(7, '2020_02_01_150517_create_instansis_table', 1),
(8, '2020_02_03_030401_create_disposisi_table', 1),
(9, '2020_02_04_014420_tambah_foreign_key_constraint', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratkeluar`
--

CREATE TABLE `suratkeluar` (
  `id` int UNSIGNED NOT NULL,
  `no_surat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan_surat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `filekeluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suratkeluar`
--

INSERT INTO `suratkeluar` (`id`, `no_surat`, `tujuan_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `filekeluar`, `keterangan`, `created_at`, `updated_at`, `users_id`) VALUES
(3, '212/Pan.LKMOM/VIII/2026', 'a', 'Ini isi surat', 'A', '2020-02-06', '2020-02-06', 'suratKeluar-PEETA.jpg', 'Harap Untuk Ditindaklanjuti', '2020-02-06 09:46:44', '2020-02-06 11:00:03', 2),
(4, '212/Pan.LKMOM/VIII/2022', 'Kepala Program Studi Di Lingkungan Kampus Unirow', 'Pemeberitahuan Pembayaran Kuliah', 'A', '2020-02-06', '2020-02-06', 'suratKeluar-AgendaSuratMasuk.pdf', 'Harap Untuk Disampaikan Ke Mahasiswa', '2020-02-06 09:50:28', '2020-02-06 09:50:28', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratmasuk`
--

CREATE TABLE `suratmasuk` (
  `id` int UNSIGNED NOT NULL,
  `no_surat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_surat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `filemasuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suratmasuk`
--

INSERT INTO `suratmasuk` (`id`, `no_surat`, `asal_surat`, `isi`, `kode`, `tgl_surat`, `tgl_terima`, `filemasuk`, `keterangan`, `created_at`, `updated_at`, `users_id`) VALUES
(1, '22/Pan.DN/HIMATIF/XI/2019', 'Hima TIfF Unirow Tuban', 'Surat Ijin Kegiatan', 'C', '2020-02-04', '2020-02-04', 'suratMasuk-3355-8907-1-PB (1) (1).pdf', 'Harap Untuk Ditindaklanjuti', '2020-02-03 18:51:33', '2023-06-08 09:03:51', 1),
(2, '212/Pan.LKMOM/VIII/2021', 'Hima TIfF Unirow Tuban', 'Undangan Pengukuhan', 'A', '2020-02-04', '2020-02-04', 'suratMasuk-SK PEMB. TUGAS 20182019.pdf', 'Harap Datang Tepat Waktu', '2020-02-03 19:26:09', '2020-02-06 06:38:30', 1),
(3, 'asd123', 'asd', 'asdasda', 'C', '2023-06-08', '2023-06-09', 'suratMasuk-DOC-20230311-WA0008.-1.pdf', 'asasdd123', '2023-06-08 09:05:55', '2023-06-08 09:05:55', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Iqbal', 'iqbal@gmail.com', NULL, '$2y$10$ebU0KB9admL2m67.Jd3WSe/sSMyrOfm7D8GQ423U2GOhsXijV6m7q', 'admin', 's8hfOcnIXDj06Ek0ooYYyGPggGkkhhNFQiUHH9PRyToeQD0GMhAwa6G8l7UQ', '2020-02-04 01:49:00', '2020-02-06 12:28:03'),
(2, 'Qkoh St', 'kukohsantoso013@gmail.com', NULL, '$2y$10$f1G8wzNnJUBSUutITNlMY.ophXIddfaAPlBc3bQ/ML9KWEDxT1dai', 'admin', 'ukw33hzTTe7OeW4IO4hMvuRDXTpYrIO0aZXHH2ElWv5ptUY8FG7yAefWxySr', '2020-02-03 19:33:14', '2020-02-03 19:33:14'),
(4, 'Muhammad Afifudin', 'afif@gmail.com', NULL, '$2y$10$ke55swuFi6j28mG0XKtuHOp18OhM1d5wYJcSuQv/AKVvxBmQUAlGi', 'petugas', 'amt0qD4IpDYrJBYfNFUZYdr05l6EM9E3UfwJiMexu1xfIFQb3h5rU4Uz4m5N', '2020-02-05 22:35:40', '2020-02-06 04:43:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `disposisis`
--
ALTER TABLE `disposisis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disposisis_users_id_foreign` (`users_id`),
  ADD KEY `disposisis_suratmasuk_id_foreign` (`suratmasuk_id`);

--
-- Indeks untuk tabel `instansis`
--
ALTER TABLE `instansis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `suratkeluar`
--
ALTER TABLE `suratkeluar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suratkeluar_no_surat_unique` (`no_surat`),
  ADD KEY `suratkeluar_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `suratmasuk`
--
ALTER TABLE `suratmasuk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suratmasuk_no_surat_unique` (`no_surat`),
  ADD KEY `suratmasuk_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `disposisis`
--
ALTER TABLE `disposisis`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `instansis`
--
ALTER TABLE `instansis`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `klasifikasi`
--
ALTER TABLE `klasifikasi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `suratkeluar`
--
ALTER TABLE `suratkeluar`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `suratmasuk`
--
ALTER TABLE `suratmasuk`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `disposisis`
--
ALTER TABLE `disposisis`
  ADD CONSTRAINT `disposisis_suratmasuk_id_foreign` FOREIGN KEY (`suratmasuk_id`) REFERENCES `suratmasuk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disposisis_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `suratkeluar`
--
ALTER TABLE `suratkeluar`
  ADD CONSTRAINT `suratkeluar_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `suratmasuk`
--
ALTER TABLE `suratmasuk`
  ADD CONSTRAINT `suratmasuk_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

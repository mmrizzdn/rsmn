-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2024 pada 16.15
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rsmn`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone`, `email`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Sepaku, Kabupaten Penajam Paser Utara, Provinsi Kalimantan Timur', '0541-21102041', 'rsmedikanusantara@ikn.go.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.243037873324!2d116.70625760973533!3d-0.9729865990135261!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2df6c9a9138990fd%3A0x593aee2ae36416b6!2sTitik%20Nol%20IKN%20Nusantara!5e0!3m2!1sid!2sid!4v1704732733344!5m2!1sid!2sid', '2024-01-15 07:08:45', '2024-01-15 07:08:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inpatients`
--

CREATE TABLE `inpatients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_total` int(11) NOT NULL,
  `filled` int(11) NOT NULL,
  `empty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `inpatients`
--

INSERT INTO `inpatients` (`id`, `class`, `bed_total`, `filled`, `empty`, `price`, `created_at`, `updated_at`) VALUES
(1, 'VVIP', 9, 4, 5, '500000.00', '2024-01-15 07:08:45', '2024-01-15 07:08:45'),
(2, 'VIP', 23, 21, 2, '380000.00', '2024-01-15 07:08:45', '2024-01-15 07:08:45'),
(3, 'Kelas 1', 73, 59, 14, '230000.00', '2024-01-15 07:08:45', '2024-01-15 07:08:45'),
(4, 'Kelas 2', 127, 96, 31, '160000.00', '2024-01-15 07:08:45', '2024-01-15 07:08:45'),
(5, 'Kelas 3', 168, 114, 54, '95000.00', '2024-01-15 07:08:45', '2024-01-15 07:08:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `installations`
--

CREATE TABLE `installations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `installations`
--

INSERT INTO `installations` (`id`, `img_path`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'storage/img/igd.jpg', 'Instalasi Gawat Darurat (IGD)', 'Memberikan pelayanan One Day Care selama 24 jam.', '2024-01-15 07:08:45', '2024-01-15 07:08:45'),
(2, 'storage/img/jenazah.jpg', 'Instalasi Kamar Jenazah', 'Instalasi Kamar Jenazah melayani: Konservasi Jenazah, Pemulasaran Jenazah, Pembalseman Pengawetan Jenazah, Persemayaman/Rumah Duka Persemayaman.', '2024-01-15 07:08:45', '2024-01-15 07:08:45'),
(3, 'storage/img/radiology.jpg', 'Instalasi Radiology', 'Pelayanan untuk melakukan diagnosis menggunakan peralatan X-ray.', '2024-01-15 07:08:45', '2024-01-15 07:08:45'),
(4, 'storage/img/pharmacy.jpg', 'Instalasi Farmasi', 'Memberikan pelayanan kesediaan farmasi untuk obat-obatan bagi pasien.', '2024-01-15 07:08:45', '2024-01-15 07:08:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_19_195218_create_polyclinics_table', 1),
(7, '2024_01_04_172500_inpatients', 1),
(8, '2024_01_08_040425_create_installations_table', 1),
(9, '2024_01_08_161753_create_contacts_table', 1),
(10, '2024_01_12_223046_create_patients_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `polyclinic_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polyclinic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `patients`
--

INSERT INTO `patients` (`id`, `polyclinic_id`, `type`, `date`, `time`, `polyclinic`, `doctor`, `queue`, `name`, `complain`, `created_at`, `updated_at`) VALUES
(1, 1, 'Umum', '2024-01-15', '08.00 - 11.00 WIB', 'Poli Kulit dan Kelamin', 'dr. Rakhma Tri Irfanti, Sp.DV', 'A001', 'Ammar', 'Bercak kulit yang berubah warna (pigmentasi abnormal) Kulit kering. Luka terbuka, lesi, atau borok. Kulit mengelupas. Ruam yang mungkin disertai rasa gatal atau nyeri. Benjolan berwarna merah, putih, atau berisi nanah. Kulit bersisik atau kasar.', '2024-01-15 07:19:27', '2024-01-15 07:19:27'),
(2, 3, 'BPJS', '2024-01-16', '13.00 - 15.00 WIB', 'Poli Jiwa', 'dr. Sih Ayuwatini, Sp. KJ, M. Kes', 'A002', 'Natasya', 'Mengalami perubahan suasana hati secara drastis, misalnya dari yang gembira menjadi sangat sedih. Sering merasa takut secara berlebihan. Cenderung menyendiri dan menarik diri dari lingkungan sosial.', '2024-01-15 07:20:25', '2024-01-15 07:20:25'),
(3, 4, 'BPJS', '2024-01-31', '16.00 - 19.00 WIB', 'Poli Mata', 'dr. Kharisma Gita Edhita, Sp.M', 'A003', 'Yasmin', 'Mata merah. Terasa nyeri. Gatal. Kering. Berair. Pandangan kabur atau berbayang. Kepala terasa pusing saat memfokuskan titik penglihatan pada satu objek.', '2024-01-15 07:21:05', '2024-01-15 07:21:05'),
(4, 5, 'Umum', '2024-01-24', '16.00 - 19.00 WIB', 'Poli THT', 'dr. Ari Nursanti, Sp. THT', 'A004', 'Pak Bita', 'nyeri telinga, gangguan pendengaran, demam, keluar cairan dari telinga, keluhan pilek, hidung buntu, mimisen, sakit tenggorokan, susah menelan dan lainnya.', '2024-01-15 07:22:47', '2024-01-15 07:22:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `polyclinics`
--

CREATE TABLE `polyclinics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `polyclinics`
--

INSERT INTO `polyclinics` (`id`, `icon`, `title`, `description`, `day`, `time`, `name`, `created_at`, `updated_at`) VALUES
(1, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"16\" viewBox=\"0 0 512 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2023 Fonticons, Inc.--><path d=\"M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V240c0 8.8-7.2 16-16 16s-16-7.2-16-16V64c0-17.7-14.3-32-32-32s-32 14.3-32 32V336c0 1.5 0 3.1 .1 4.6L67.6 283c-16-15.2-41.3-14.6-56.6 1.4s-14.6 41.3 1.4 56.6L124.8 448c43.1 41.1 100.4 64 160 64H304c97.2 0 176-78.8 176-176V128c0-17.7-14.3-32-32-32s-32 14.3-32 32V240c0 8.8-7.2 16-16 16s-16-7.2-16-16V64c0-17.7-14.3-32-32-32s-32 14.3-32 32V240c0 8.8-7.2 16-16 16s-16-7.2-16-16V32zM240 336a16 16 0 1 1 32 0 16 16 0 1 1 -32 0zm80 16a16 16 0 1 1 0 32 16 16 0 1 1 0-32zm48-16a16 16 0 1 1 32 0 16 16 0 1 1 -32 0zm-16 80a16 16 0 1 1 0 32 16 16 0 1 1 0-32zM240 432a16 16 0 1 1 32 0 16 16 0 1 1 -32 0zm-48-48a16 16 0 1 1 0 32 16 16 0 1 1 0-32z\"/></svg>', 'Poli Kulit dan Kelamin', 'Poliklinik Kulit dan Kelamin merupakan poli khusus yang menangani beragam masalah pada kesehatan kulit dan kelamin ', 'Senin - Sabtu', '08.00 - 11.00 WIB', 'dr. Rakhma Tri Irfanti, Sp.DV', '2024-01-15 07:08:43', '2024-01-15 07:08:43'),
(2, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"20\" viewBox=\"0 0 640 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2023 Fonticons, Inc.--><path d=\"M32 32c17.7 0 32 14.3 32 32V320H288V160c0-17.7 14.3-32 32-32H544c53 0 96 43 96 96V448c0 17.7-14.3 32-32 32s-32-14.3-32-32V416H352 320 64v32c0 17.7-14.3 32-32 32s-32-14.3-32-32V64C0 46.3 14.3 32 32 32zm144 96a80 80 0 1 1 0 160 80 80 0 1 1 0-160z\"/></svg>', 'Poli VCT', 'Voluntary Counseling and Testing (VCT) merupakan salah satu strategi kesehatan masyarakat yang dilakukan untuk menangani penyebaran HIV/AIDS', 'Senin - Sabtu', '08.00 - 11.00 WIB', 'dr. Nur Aeni Mulyaningsih', '2024-01-15 07:08:43', '2024-01-15 07:08:43'),
(3, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"18\" viewBox=\"0 0 576 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2023 Fonticons, Inc.--><path d=\"M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H96V32H64zm64 0V480H448V32H128zM512 480c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H480V480h32zM256 176c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v48h48c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H320v48c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V288H208c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16h48V176z\"/></svg>', 'Poli Jiwa', 'Poliklinik Jiwa atau Psikiatri menyediakan pelayanan rawat jalan jiwa atau psikiatri dan pelayanan spesialistik lain yang terkait dengan kesehatan jiwa.', 'Senin - Sabtu', '08.00 - 11.00 WIB', 'dr. Sih Ayuwatini, Sp. KJ, M. Kes', '2024-01-15 07:08:43', '2024-01-15 07:08:43'),
(4, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"18\" viewBox=\"0 0 576 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2023 Fonticons, Inc.--><path d=\"M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z\"/></svg>', 'Poli Mata', 'Poliklinik mata kami berfokus pada penanganan mata manusia dengan melakukan pemeriksaan ,pencegahan terhadap kerusakan, cedera, gangguan pengelihatan dan penyakit mata.', 'Senin - Sabtu', '08.00 - 11.00 WIB', 'dr. Kharisma Gita Edhita, Sp.M', '2024-01-15 07:08:43', '2024-01-15 07:08:43'),
(5, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"20\" viewBox=\"0 0 640 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M320 0c17.7 0 32 14.3 32 32V164.1c0 16.4 8.4 31.7 22.2 40.5l9.8 6.2V165.3C384 127 415 96 453.3 96c21.7 0 42.8 10.2 55.8 28.8c15.4 22.1 44.3 65.4 71 116.9c26.5 50.9 52.4 112.5 59.6 170.3c.2 1.3 .2 2.6 .2 4v7c0 49.1-39.8 89-89 89c-7.3 0-14.5-.9-21.6-2.7l-72.7-18.2C414 480.5 384 442.1 384 398V325l90.5 57.6c7.5 4.7 17.3 2.5 22.1-4.9s2.5-17.3-4.9-22.1L384 287.1v-.4l-44.1-28.1c-7.3-4.6-13.9-10.1-19.9-16.1c-5.9 6-12.6 11.5-19.9 16.1L256 286.7 161.2 347l-13.5 8.6c0 0 0 0-.1 0c-7.4 4.8-9.6 14.6-4.8 22.1c4.7 7.5 14.6 9.7 22.1 4.9l91.1-58V398c0 44.1-30 82.5-72.7 93.1l-72.7 18.2c-7.1 1.8-14.3 2.7-21.6 2.7c-49.1 0-89-39.8-89-89v-7c0-1.3 .1-2.7 .2-4c7.2-57.9 33.1-119.4 59.6-170.3c26.8-51.5 55.6-94.8 71-116.9c13-18.6 34-28.8 55.8-28.8C225 96 256 127 256 165.3v45.5l9.8-6.2c13.8-8.8 22.2-24.1 22.2-40.5V32c0-17.7 14.3-32 32-32z\"/></svg>', 'Poli THT', 'Poliklinik Telinga Hidung Tenggorokan(THT) kami berfokus pada penanganan permasalahan atau penyakit yang berhubungan dengan Telinga,Hidung Tengggorokan.', 'Senin - Sabtu', '13.00 - 15.00 WIB', 'dr. Ari Nursanti, Sp. THT', '2024-01-15 07:08:43', '2024-01-15 07:08:43'),
(6, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"16\" viewBox=\"0 0 512 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M228.3 469.1L47.6 300.4c-4.2-3.9-8.2-8.1-11.9-12.4h87c22.6 0 43-13.6 51.7-34.5l10.5-25.2 49.3 109.5c3.8 8.5 12.1 14 21.4 14.1s17.8-5 22-13.3L320 253.7l1.7 3.4c9.5 19 28.9 31 50.1 31H476.3c-3.7 4.3-7.7 8.5-11.9 12.4L283.7 469.1c-7.5 7-17.4 10.9-27.7 10.9s-20.2-3.9-27.7-10.9zM503.7 240h-132c-3 0-5.8-1.7-7.2-4.4l-23.2-46.3c-4.1-8.1-12.4-13.3-21.5-13.3s-17.4 5.1-21.5 13.3l-41.4 82.8L205.9 158.2c-3.9-8.7-12.7-14.3-22.2-14.1s-18.1 5.9-21.8 14.8l-31.8 76.3c-1.2 3-4.2 4.9-7.4 4.9H16c-2.6 0-5 .4-7.3 1.1C3 225.2 0 208.2 0 190.9v-5.8c0-69.9 50.5-129.5 119.4-141C165 36.5 211.4 51.4 244 84l12 12 12-12c32.6-32.6 79-47.5 124.6-39.9C461.5 55.6 512 115.2 512 185.1v5.8c0 16.9-2.8 33.5-8.3 49.1z\"/></svg>', 'Poli Jantung', 'Poliklinik jantung dan pembuluh darah berkaitan dengan mencegah, mendiagnosis, dan melakukan pengobatan berbagai penyakit kardiovaskuler seperti tekanan darah tinggi sampai dengan serangan jantung.', 'Senin - Sabtu', '13.00 - 15.00 WIB', 'dr. Jarot Widodo, Sp. JP', '2024-01-15 07:08:44', '2024-01-15 07:08:44'),
(7, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"16\" viewBox=\"0 0 512 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M0 224.2C0 100.6 100.2 0 224 0h24c95.2 0 181.2 69.3 197.3 160.2c2.3 13 6.8 25.7 15.1 36l42 52.6c6.2 7.8 9.6 17.4 9.6 27.4c0 24.2-19.6 43.8-43.8 43.8H448v64c0 35.3-28.7 64-64 64H320v32c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V407.3c0-16.7-6.9-32.5-17.1-45.8C16.6 322.4 0 274.1 0 224.2zM224 64c-8.8 0-16 7.2-16 16c0 33-39.9 49.5-63.2 26.2c-6.2-6.2-16.4-6.2-22.6 0s-6.2 16.4 0 22.6C145.5 152.1 129 192 96 192c-8.8 0-16 7.2-16 16s7.2 16 16 16c33 0 49.5 39.9 26.2 63.2c-6.2 6.2-6.2 16.4 0 22.6s16.4 6.2 22.6 0C168.1 286.5 208 303 208 336c0 8.8 7.2 16 16 16s16-7.2 16-16c0-33 39.9-49.5 63.2-26.2c6.2 6.2 16.4 6.2 22.6 0s6.2-16.4 0-22.6C302.5 263.9 319 224 352 224c8.8 0 16-7.2 16-16s-7.2-16-16-16c-33 0-49.5-39.9-26.2-63.2c6.2-6.2 6.2-16.4 0-22.6s-16.4-6.2-22.6 0C279.9 129.5 240 113 240 80c0-8.8-7.2-16-16-16zm-24 96a24 24 0 1 1 0 48 24 24 0 1 1 0-48zm40 80a16 16 0 1 1 32 0 16 16 0 1 1 -32 0z\"/></svg>', 'Poli Saraf', 'Poliklinik saraf kami memberikan pelayanan yang berkaitan dengan kelainan pada system saraf manusia,dimana seorang neurologi menangani pasien dewasa dengan mendiagnosis,memberikan perawatan pada pasien yang memiliki kelainan saraf.', 'Senin - Sabtu', '08.00 - 11.00 WIB', 'dr. Rr. Emmy K, Sp.S.', '2024-01-15 07:08:44', '2024-01-15 07:08:44'),
(8, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"14\" viewBox=\"0 0 448 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M186.1 52.1C169.3 39.1 148.7 32 127.5 32C74.7 32 32 74.7 32 127.5v6.2c0 15.8 3.7 31.3 10.7 45.5l23.5 47.1c4.5 8.9 7.6 18.4 9.4 28.2l36.7 205.8c2 11.2 11.6 19.4 22.9 19.8s21.4-7.4 24-18.4l28.9-121.3C192.2 323.7 207 312 224 312s31.8 11.7 35.8 28.3l28.9 121.3c2.6 11.1 12.7 18.8 24 18.4s20.9-8.6 22.9-19.8l36.7-205.8c1.8-9.8 4.9-19.3 9.4-28.2l23.5-47.1c7.1-14.1 10.7-29.7 10.7-45.5v-2.1c0-55-44.6-99.6-99.6-99.6c-24.1 0-47.4 8.8-65.6 24.6l-3.2 2.8 19.5 15.2c7 5.4 8.2 15.5 2.8 22.5s-15.5 8.2-22.5 2.8l-24.4-19-37-28.8z\"/></svg>', 'Poli Gigi', 'Polilinik Gigi dan Bedah Mulut kami berfokus pada penanganan proses penyembuhan termasuk juga penyakit yang berhubungan dengan kesehatan mulut.', 'Senin - Sabtu', '16.00 - 19.00 WIB', 'dr.Pradnya Widya Septodika, Sp.KG', '2024-01-15 07:08:44', '2024-01-15 07:08:44'),
(9, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"14\" viewBox=\"0 0 448 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M416 0c17.7 0 32 14.3 32 32c0 59.8-30.3 107.5-69.4 146.6c-28 28-62.5 53.5-97.3 77.4l-2.5 1.7c-11.9 8.1-23.8 16.1-35.5 23.9l0 0 0 0 0 0-1.6 1c-6 4-11.9 7.9-17.8 11.9c-20.9 14-40.8 27.7-59.3 41.5H283.3c-9.8-7.4-20.1-14.7-30.7-22.1l7-4.7 3-2c15.1-10.1 30.9-20.6 46.7-31.6c25 18.1 48.9 37.3 69.4 57.7C417.7 372.5 448 420.2 448 480c0 17.7-14.3 32-32 32s-32-14.3-32-32H64c0 17.7-14.3 32-32 32s-32-14.3-32-32c0-59.8 30.3-107.5 69.4-146.6c28-28 62.5-53.5 97.3-77.4c-34.8-23.9-69.3-49.3-97.3-77.4C30.3 139.5 0 91.8 0 32C0 14.3 14.3 0 32 0S64 14.3 64 32H384c0-17.7 14.3-32 32-32zM338.6 384H109.4c-10.1 10.6-18.6 21.3-25.5 32H364.1c-6.8-10.7-15.3-21.4-25.5-32zM109.4 128H338.6c10.1-10.7 18.6-21.3 25.5-32H83.9c6.8 10.7 15.3 21.3 25.5 32zm55.4 48c18.4 13.8 38.4 27.5 59.3 41.5c20.9-14 40.8-27.7 59.3-41.5H164.7z\"/></svg>', 'Poli Obsgyn', 'Poliklinik Obsgyn juga sering disebut sebagai Poli Kandungan dan Kebidanan.', 'Senin - Sabtu', '16.00 - 19.00 WIB', 'dr. Wijoyo Hadiningrat, Sp.OG.', '2024-01-15 07:08:44', '2024-01-15 07:08:44'),
(10, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"10\" viewBox=\"0 0 320 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M96 64a64 64 0 1 1 128 0A64 64 0 1 1 96 64zm48 320v96c0 17.7-14.3 32-32 32s-32-14.3-32-32V287.8L59.1 321c-9.4 15-29.2 19.4-44.1 10S-4.5 301.9 4.9 287l39.9-63.3C69.7 184 113.2 160 160 160s90.3 24 115.2 63.6L315.1 287c9.4 15 4.9 34.7-10 44.1s-34.7 4.9-44.1-10L240 287.8V480c0 17.7-14.3 32-32 32s-32-14.3-32-32V384H144z\"/></svg>', 'Poli Anak', 'Instalasi khusus yang memberikan pelayanan terhadap anak dan bayi.', 'Senin - Sabtu', '08.00 - 11.00 WIB', 'dr. Dewi Laksmi, Sp.A., M.Kes.', '2024-01-15 07:08:44', '2024-01-15 07:08:44'),
(11, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"14\" viewBox=\"0 0 448 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-96 55.2C54 332.9 0 401.3 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7c0-81-54-149.4-128-171.1V362c27.6 7.1 48 32.2 48 62v40c0 8.8-7.2 16-16 16H336c-8.8 0-16-7.2-16-16s7.2-16 16-16V424c0-17.7-14.3-32-32-32s-32 14.3-32 32v24c8.8 0 16 7.2 16 16s-7.2 16-16 16H256c-8.8 0-16-7.2-16-16V424c0-29.8 20.4-54.9 48-62V304.9c-6-.6-12.1-.9-18.3-.9H178.3c-6.2 0-12.3 .3-18.3 .9v65.4c23.1 6.9 40 28.3 40 53.7c0 30.9-25.1 56-56 56s-56-25.1-56-56c0-25.4 16.9-46.8 40-53.7V311.2zM144 448a24 24 0 1 0 0-48 24 24 0 1 0 0 48z\"/></svg>', 'Poli Umum', 'Salah satu instalasi rawat jalan yang memberikan pelayanan kesehatan kepada masyarakat umum.', 'Senin - Sabtu', '16.00 - 19.00 WIB', 'dr. Afandi', '2024-01-15 07:08:44', '2024-01-15 07:08:44'),
(12, '<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"16\" width=\"14\" viewBox=\"0 0 448 512\"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-96 55.2C54 332.9 0 401.3 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7c0-81-54-149.4-128-171.1V362c27.6 7.1 48 32.2 48 62v40c0 8.8-7.2 16-16 16H336c-8.8 0-16-7.2-16-16s7.2-16 16-16V424c0-17.7-14.3-32-32-32s-32 14.3-32 32v24c8.8 0 16 7.2 16 16s-7.2 16-16 16H256c-8.8 0-16-7.2-16-16V424c0-29.8 20.4-54.9 48-62V304.9c-6-.6-12.1-.9-18.3-.9H178.3c-6.2 0-12.3 .3-18.3 .9v65.4c23.1 6.9 40 28.3 40 53.7c0 30.9-25.1 56-56 56s-56-25.1-56-56c0-25.4 16.9-46.8 40-53.7V311.2zM144 448a24 24 0 1 0 0-48 24 24 0 1 0 0 48z\"/></svg>', 'Poli Umum', 'Salah satu instalasi rawat jalan yang memberikan pelayanan kesehatan kepada masyarakat umum.', 'Senin - Sabtu', '16.00 - 19.00 WIB', 'dr. Afandi', '2024-01-15 07:08:44', '2024-01-15 07:08:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@mail.com', 'admin', NULL, '$2y$12$knTDMriiDbeqnz1YYEpvVu5s0LSbAF4TWhFufuoHioWtCksCMlsUK', NULL, '2024-01-15 07:08:43', '2024-01-15 07:08:43'),
(2, 'user', 'Ammar', 'ammar@mail.com', 'ammar', NULL, '$2y$12$vGqY1MPP/0EnR8F/MdssQey/8tpuvoz5tfbW9bjeK8HJM3h2jSM3S', NULL, '2024-01-15 07:15:28', '2024-01-15 07:15:28'),
(3, 'user', 'Natasya', 'natasya@mail.com', 'natasya', NULL, '$2y$12$lWIfgXNnxk2N7mSh.61CduittKE56Y8Hy7KIY5whi5dsYnDKRFvce', NULL, '2024-01-15 07:15:57', '2024-01-15 07:15:57'),
(4, 'user', 'Yasmin', 'yasmin@mail.com', 'yasmin', NULL, '$2y$12$/gmgFwRj5Tsh2HXDwnh8cO6.Prv8w9Z.oXUXv3joNEK5pTZym8hHu', NULL, '2024-01-15 07:16:38', '2024-01-15 07:16:38'),
(5, 'user', 'Pak Bita', 'pakbita@mail.com', 'pakbita', NULL, '$2y$12$ZwVJf8Y8EG.yVJz9kIsHn.l/.Zb8wU8maoQp3J1pmmMjDZx5eeO3O', NULL, '2024-01-15 07:21:49', '2024-01-15 07:21:49');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_phone_unique` (`phone`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `inpatients`
--
ALTER TABLE `inpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `installations`
--
ALTER TABLE `installations`
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
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_queue_unique` (`queue`),
  ADD KEY `patients_polyclinic_id_foreign` (`polyclinic_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `polyclinics`
--
ALTER TABLE `polyclinics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inpatients`
--
ALTER TABLE `inpatients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `installations`
--
ALTER TABLE `installations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `polyclinics`
--
ALTER TABLE `polyclinics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_polyclinic_id_foreign` FOREIGN KEY (`polyclinic_id`) REFERENCES `polyclinics` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

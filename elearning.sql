-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2016 at 08:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `field_tambahan`
--

CREATE TABLE `field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_tambahan`
--

INSERT INTO `field_tambahan` (`id`, `nama`, `value`) VALUES
('history-mengerjakan-2-1', 'History pengerjaan tugas', '{"mulai":"2016-10-16 14:16:08","selesai":"2016-10-16 15:56:08","uri_string":"tugas\\/kerjakan\\/1","valid_route":["\\/tugas\\/kerjakan","\\/tugas\\/finish","\\/tugas\\/submit_essay","\\/tugas\\/submit_upload"],"tugas":{"id":"1","mapel_id":"4","pengajar_id":"2","type_id":"3","judul":"Kuis 1","durasi":"100","info":"<p>waw<\\/p>","aktif":"1","tgl_buat":"2016-10-16 13:52:05","tampil_siswa":"1"},"unix_id":"183e0349627f3eb5386fc7dde7da62b1538944","ip":"::1","agent_string":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/53.0.2785.143 Safari\\/537.36","pertanyaan_id":["1"],"jawaban":{"1":"1"},"nilai":100,"jml_benar":1,"jml_salah":0,"tgl_submit":"2016-10-16 14:16:26","total_waktu":"18 detik"}');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=aktif 0=tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `parent_id`, `urutan`, `aktif`) VALUES
(1, 'KELAS X', NULL, 1, 1),
(2, 'KELAS X - GEO', 1, 2, 1),
(3, 'KELAS X - TKBB', 1, 3, 1),
(4, 'KELAS X - TGB 1', 1, 4, 1),
(5, 'KELAS X - TGB 2', 1, 5, 1),
(6, 'KELAS XI', NULL, 25, 1),
(7, 'KELAS XI - TKJ 1', 6, 45, 1),
(8, 'KELAS XI - TKJ 2', 6, 46, 1),
(9, 'KELAS XI - MM 1', 6, 47, 1),
(10, 'KELAS XI - MM 2', 6, 48, 1),
(11, 'KELAS XII', NULL, 49, 1),
(12, 'KELAS XII - TKJ 1', 11, 69, 1),
(13, 'KELAS XII - TKJ 2', 11, 70, 1),
(14, 'KELAS XII - MM 1', 11, 71, 1),
(15, 'KELAS XII - MM 2', 11, 72, 1),
(16, 'KELAS X - TGB 3', 1, 6, 1),
(17, 'KELAS X - TAV 1', 1, 7, 1),
(18, 'KELAS X - TAV 2', 1, 8, 1),
(19, 'KELAS X - TIPTL 1', 1, 9, 1),
(20, 'KELAS X - TIPTL 2', 1, 10, 1),
(21, 'KELAS X - TIPTL 3', 1, 11, 1),
(22, 'KELAS X - TIPTL 4', 1, 12, 1),
(23, 'KELAS X - TP 1', 1, 13, 1),
(24, 'KELAS X - TP 2', 1, 14, 1),
(25, 'KELAS X - TP 3', 1, 15, 1),
(26, 'KELAS X - TP 4', 1, 16, 1),
(27, 'KELAS X - TKR 1', 1, 17, 1),
(28, 'KELAS X - TKR 2', 1, 18, 1),
(29, 'KELAS X - TKR 3', 1, 19, 1),
(30, 'KELAS X - TKR 4', 1, 20, 1),
(31, 'KELAS X - TKJ 1', 1, 21, 1),
(32, 'KELAS X - TKJ 2', 1, 22, 1),
(33, 'KELAS X - MM 1', 1, 23, 1),
(34, 'KELAS X - MM 2', 1, 24, 1),
(35, 'KELAS XI - TKR 4', 6, 44, 1),
(36, 'KELAS XI - TKR 3', 6, 43, 1),
(37, 'KELAS XI - TKR 2', 6, 42, 1),
(38, 'KELAS XI - TKR 1', 6, 41, 1),
(39, 'KELAS XI - TP 4', 6, 40, 1),
(40, 'KELAS XI - TP 3', 6, 39, 1),
(41, 'KELAS XI - TP 2', 6, 38, 1),
(42, 'KELAS XI - TP 1', 6, 37, 1),
(43, 'KELAS XI - TIPTL 4', 6, 36, 1),
(44, 'KELAS XI - TIPTL 3', 6, 35, 1),
(45, 'KELAS XI - TIPTL 2', 6, 34, 1),
(46, 'KELAS XI - TIPTL 1', 6, 33, 1),
(47, 'KELAS XI - TAV 2', 6, 32, 1),
(48, 'KELAS XI - TAV 1', 6, 31, 1),
(49, 'KELAS XI - TGB 3', 6, 30, 1),
(50, 'KELAS XI - TGB 2', 6, 29, 1),
(51, 'KELAS XI - TGB 1', 6, 28, 1),
(52, 'KELAS XI - TKBB', 6, 27, 1),
(53, 'KELAS XI - GEO', 6, 26, 1),
(54, 'KELAS XII - TKR 4', 11, 68, 1),
(55, 'KELAS XII - TKR 3', 11, 67, 1),
(56, 'KELAS XII - TKR 2', 11, 66, 1),
(57, 'KELAS XII - TKR 1', 11, 65, 1),
(58, 'KELAS XII - TP 4', 11, 64, 1),
(59, 'KELAS XII - TP 3', 11, 63, 1),
(60, 'KELAS XII - TP 2', 11, 62, 1),
(61, 'KELAS XII - TP 1', 11, 61, 1),
(62, 'KELAS XII - TIPTL 4', 11, 60, 1),
(63, 'KELAS XII - TIPTL 3', 11, 59, 1),
(64, 'KELAS XII - TIPTL 2', 11, 58, 1),
(65, 'KELAS XII - TIPTL 1', 11, 57, 1),
(66, 'KELAS XII - TAV 2', 11, 56, 1),
(67, 'KELAS XII - TAV 1', 11, 55, 1),
(68, 'KELAS XII - TGB 3', 11, 54, 1),
(69, 'KELAS XII - TGB 2', 11, 53, 1),
(70, 'KELAS XII - TGB 1', 11, 52, 1),
(71, 'KELAS XII - TKBB', 11, 51, 1),
(72, 'KELAS XII - GEO', 11, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `aktif` tinyint(4) NOT NULL COMMENT '0 jika bukan, 1 jika ya'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id`, `kelas_id`, `siswa_id`, `aktif`) VALUES
(1, 15, 1, 1),
(2, 12, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=tidak,1=tampil',
  `konten` text,
  `tgl_posting` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `login_id`, `materi_id`, `tampil`, `konten`, `tgl_posting`) VALUES
(2, 4, 1, 1, '<p>aokwokawokawokaw</p>', '2016-10-16 20:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` int(11) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `siswa_id`, `pengajar_id`, `is_admin`, `reset_kode`) VALUES
(1, 'admin@mail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 1, 1, NULL),
(2, 'octopus@mail.com', 'fcf1eed8596699624167416a1e7e122e', 1, NULL, 0, NULL),
(3, 'pengajar1@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 2, 0, NULL),
(4, 'siswa1@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` text,
  `aktif` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = ya, 0 = tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `nama`, `info`, `aktif`) VALUES
(1, 'Bahasa Indonesia', NULL, 1),
(2, 'Bahasa Inggris', NULL, 1),
(3, 'Matematika', NULL, 1),
(4, 'Ekonomi', NULL, 1),
(5, 'Geografi', NULL, 1),
(6, 'Biologi', NULL, 1),
(7, 'Penjas', NULL, 1),
(8, 'Agama', NULL, 1),
(9, 'Fisika', NULL, 1),
(10, 'Kimia', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_ajar`
--

CREATE TABLE `mapel_ajar` (
  `id` int(11) NOT NULL,
  `hari_id` tinyint(4) NOT NULL COMMENT '1=senin,2=selasa,3=rabu,4=kamis,5=jum''at,6=sabtu,7=minggu',
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `mapel_kelas_id` int(11) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = aktif 0 = tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mapel_kelas`
--

CREATE TABLE `mapel_kelas` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel_kelas`
--

INSERT INTO `mapel_kelas` (`id`, `kelas_id`, `mapel_id`, `aktif`) VALUES
(1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text,
  `file` text,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(4) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `mapel_id`, `pengajar_id`, `siswa_id`, `judul`, `konten`, `file`, `tgl_posting`, `publish`, `views`) VALUES
(1, 4, 1, NULL, 'sdadsad', '<p>dasdsadsa</p>', NULL, '2016-10-16 20:39:02', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `materi_kelas`
--

CREATE TABLE `materi_kelas` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi_kelas`
--

INSERT INTO `materi_kelas` (`id`, `materi_id`, `kelas_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=inbox,2=outbox',
  `content` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sender_receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=belum,1=sudah'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tugas`
--

CREATE TABLE `nilai_tugas` (
  `id` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_tugas`
--

INSERT INTO `nilai_tugas` (`id`, `nilai`, `tugas_id`, `siswa_id`) VALUES
(1, 100, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text,
  `status_id` tinyint(4) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id`, `nip`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `foto`, `status_id`) VALUES
(1, '00000000', 'Admin', 'Laki-laki', 'Yogyakarta', '1985-04-11', 'Yogyakarta', 'pengajar-admin.jpg', 1),
(2, '12345', 'Budiman', 'Laki-laki', 'Yogyakarta', '1980-06-06', 'Jl. R.W. Monginsidi No 2, Cokrodiningratan, Jetis, Yogyakarta', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `value`) VALUES
('alamat', 'alamat', 'Jl. AM. Sangaji 47, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233'),
('email-server', 'Email server', 'no-reply@domain.com'),
('email-template-approve-pengajar', 'Approve pengajar (email pengajar)', '{"subject":"Pengaktifan Akun","body":"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai pengajar pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>"}'),
('email-template-approve-siswa', 'Approve siswa (email siswa)', '{"subject":"Pengaktifan Akun","body":"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai siswa pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>"}'),
('email-template-link-reset', 'Link Reset Password', '{"subject":"Reset Password","body":"<p>Hai,<\\/p>\\n<p>Anda mengirimkan permintaan untuk reset password anda, klik link berikut untuk memulai reset password : {$link_reset}<\\/p>"}'),
('email-template-register-pengajar', 'Register pengajar (email pengajar)', '{"subject":"Registrasi Berhasil","body":"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai pengajar di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>"}'),
('email-template-register-siswa', 'Register siswa (email siswa)', '{"subject":"Registrasi Berhasil","body":"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai siswa di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>"}'),
('info-registrasi', 'Info Registrasi', '<p>Silahkan mendaftar sebagai siswa atau pengajar (jika anda sebagai pengajar) dengan memilih sesuai tab berikut :</p>'),
('install-success', 'install-success', '1'),
('jenjang', 'jenjang', 'SMA'),
('nama-sekolah', 'nama-sekolah', 'SMKN 2 Yogyakarta'),
('peraturan-elearning', 'Peraturan E-learning', ''),
('registrasi-pengajar', 'Registrasi Pengajar', '1'),
('registrasi-siswa', 'Registrasi Siswa', '1'),
('telp', 'telp', '(0274) 513490'),
('versi', 'Versi', '1.7');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tgl_tampil` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT '1',
  `tampil_pengajar` tinyint(1) NOT NULL DEFAULT '1',
  `pengajar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pilihan`
--

CREATE TABLE `pilihan` (
  `id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=tidak',
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pilihan`
--

INSERT INTO `pilihan` (`id`, `pertanyaan_id`, `konten`, `kunci`, `urutan`, `aktif`) VALUES
(1, 1, '<p>ilmu ekonomi</p>', 1, 1, 1),
(2, 1, '<p>ilmu mengaji</p>', 0, 2, 1),
(3, 2, '<p>Rosevelt</p>', 1, 1, 1),
(4, 2, '<p>aku tak tau </p>', 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` text,
  `status_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `tahun_masuk`, `foto`, `status_id`) VALUES
(1, '21321321', 'sdasad', 'Laki-laki', 'Yogyakarta', '2000-02-01', '', 'Jl. R.W. Monginsidi No 2, Cokrodiningratan, Jetis, Yogyakarta', 2014, NULL, 1),
(2, '123456', 'Andi', 'Laki-laki', 'Ambon', '2000-03-02', 'ISLAM', 'Yogyakarta', 2015, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `type_id` tinyint(4) NOT NULL COMMENT '1=upload,2=essay,3=ganda',
  `judul` varchar(255) NOT NULL,
  `durasi` int(11) DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `info` text,
  `aktif` tinyint(4) NOT NULL DEFAULT '0',
  `tgl_buat` datetime DEFAULT NULL,
  `tampil_siswa` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=tidak tampil di siswa, 1=tampil siswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `mapel_id`, `pengajar_id`, `type_id`, `judul`, `durasi`, `info`, `aktif`, `tgl_buat`, `tampil_siswa`) VALUES
(1, 4, 2, 3, 'Kuis 1', 100, '<p>waw</p>', 1, '2016-10-16 13:52:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tugas_kelas`
--

CREATE TABLE `tugas_kelas` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas_kelas`
--

INSERT INTO `tugas_kelas` (`id`, `tugas_id`, `kelas_id`) VALUES
(1, 1, 2),
(2, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tugas_pertanyaan`
--

CREATE TABLE `tugas_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas_pertanyaan`
--

INSERT INTO `tugas_pertanyaan` (`id`, `pertanyaan`, `urutan`, `tugas_id`, `aktif`) VALUES
(1, '<p>apa yang dimaksud ilmu ekonomi?</p>', 1, 1, 1),
(2, '<p>siapakah penggagas ilmu ekonomi yang digagas presiden Rosevelt?</p>', 2, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `field_tambahan`
--
ALTER TABLE `field_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelas_siswa_kelas_idx` (`kelas_id`),
  ADD KEY `fk_kelas_siswa_siswa1_idx` (`siswa_id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_komentar_login1_idx` (`login_id`),
  ADD KEY `fk_komentar_materi1_idx` (`materi_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_login_siswa1_idx` (`siswa_id`),
  ADD KEY `fk_login_pengajar1_idx` (`pengajar_id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_ajar`
--
ALTER TABLE `mapel_ajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mapel_ajar_pengajar1_idx` (`pengajar_id`),
  ADD KEY `fk_mapel_ajar_mapel_kelas1_idx` (`mapel_kelas_id`);

--
-- Indexes for table `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mapel_kelas_kelas1_idx` (`kelas_id`),
  ADD KEY `fk_mapel_kelas_mapel1_idx` (`mapel_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_materi_pengajar1_idx` (`pengajar_id`),
  ADD KEY `fk_materi_siswa1_idx` (`siswa_id`),
  ADD KEY `fk_materi_mapel1_idx` (`mapel_id`);

--
-- Indexes for table `materi_kelas`
--
ALTER TABLE `materi_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_materi_kelas_materi1_idx` (`materi_id`),
  ADD KEY `fk_materi_kelas_kelas1_idx` (`kelas_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_messages_login1_idx` (`owner_id`),
  ADD KEY `fk_messages_login2_idx` (`sender_receiver_id`);

--
-- Indexes for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tugas_id` (`tugas_id`,`siswa_id`),
  ADD KEY `fk_nilai_tugas1_idx` (`tugas_id`),
  ADD KEY `fk_nilai_siswa1_idx` (`siswa_id`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengumuman_pengajar1_idx` (`pengajar_id`);

--
-- Indexes for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pilihan_tugas_pertanyaan1_idx` (`pertanyaan_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tugas_mapel1_idx` (`mapel_id`),
  ADD KEY `fk_tugas_pengajar1_idx` (`pengajar_id`);

--
-- Indexes for table `tugas_kelas`
--
ALTER TABLE `tugas_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tugas_kelas_tugas1_idx` (`tugas_id`),
  ADD KEY `fk_tugas_kelas_kelas1_idx` (`kelas_id`);

--
-- Indexes for table `tugas_pertanyaan`
--
ALTER TABLE `tugas_pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tugas_essay_tugas1_idx` (`tugas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mapel_ajar`
--
ALTER TABLE `mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `materi_kelas`
--
ALTER TABLE `materi_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pilihan`
--
ALTER TABLE `pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tugas_kelas`
--
ALTER TABLE `tugas_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tugas_pertanyaan`
--
ALTER TABLE `tugas_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD CONSTRAINT `fk_kelas_siswa_kelas` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_kelas_siswa_siswa1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `fk_komentar_login1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_komentar_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_pengajar1` FOREIGN KEY (`pengajar_id`) REFERENCES `pengajar` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_login_siswa1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mapel_ajar`
--
ALTER TABLE `mapel_ajar`
  ADD CONSTRAINT `fk_mapel_ajar_mapel_kelas1` FOREIGN KEY (`mapel_kelas_id`) REFERENCES `mapel_kelas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mapel_ajar_pengajar1` FOREIGN KEY (`pengajar_id`) REFERENCES `pengajar` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  ADD CONSTRAINT `fk_mapel_kelas_kelas1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mapel_kelas_mapel1` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `fk_materi_mapel1` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materi_pengajar1` FOREIGN KEY (`pengajar_id`) REFERENCES `pengajar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materi_siswa1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `materi_kelas`
--
ALTER TABLE `materi_kelas`
  ADD CONSTRAINT `fk_materi_kelas_kelas1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materi_kelas_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_messages_login1` FOREIGN KEY (`owner_id`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_messages_login2` FOREIGN KEY (`sender_receiver_id`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD CONSTRAINT `fk_nilai_siswa1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nilai_tugas1` FOREIGN KEY (`tugas_id`) REFERENCES `tugas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `fk_pengumuman_pengajar1` FOREIGN KEY (`pengajar_id`) REFERENCES `pengajar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD CONSTRAINT `fk_pilihan_tugas_pertanyaan1` FOREIGN KEY (`pertanyaan_id`) REFERENCES `tugas_pertanyaan` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `fk_tugas_mapel1` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tugas_pengajar1` FOREIGN KEY (`pengajar_id`) REFERENCES `pengajar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tugas_kelas`
--
ALTER TABLE `tugas_kelas`
  ADD CONSTRAINT `fk_tugas_kelas_kelas1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tugas_kelas_tugas1` FOREIGN KEY (`tugas_id`) REFERENCES `tugas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tugas_pertanyaan`
--
ALTER TABLE `tugas_pertanyaan`
  ADD CONSTRAINT `fk_tugas_essay_tugas1` FOREIGN KEY (`tugas_id`) REFERENCES `tugas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

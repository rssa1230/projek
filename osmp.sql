-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 05:31 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(9) NOT NULL,
  `about` varchar(500) NOT NULL,
  `visi` varchar(500) NOT NULL,
  `misi1` text NOT NULL,
  `misi2` text NOT NULL,
  `misi3` text NOT NULL,
  `misi4` text NOT NULL,
  `misi5` text NOT NULL,
  `misi6` text NOT NULL,
  `misi7` text NOT NULL,
  `misi8` text NOT NULL,
  `misi9` text NOT NULL,
  `misi10` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about`, `visi`, `misi1`, `misi2`, `misi3`, `misi4`, `misi5`, `misi6`, `misi7`, `misi8`, `misi9`, `misi10`) VALUES
(1, 'OSIS adalah satu-satunya wadah organisasi siswa yang sah di sekolah. Oleh karena itu setiap sekolah wajib membentuk Organisasi Siswa Intra Sekolah (OSIS), yang tidak mempunyai hubungan organisatoris dengan OSIS di sekolah lain dan tidak menjadi bagian/alat dari organisasi lain yang ada di luar sekolah.', 'Menjadikan suatu organisai OSIS yang cermat (cekatan, empati, responsif, mandiri, amanah, dan terampil)', '1. Menumbuhkan rasa keimanan dan ketaqwaan kepada Tuhan yang maha esa.', '2. Menjalin hubungan yang harmonis dengan semua pihak yang terlibat dalam seluruh kegiatan OSIS.', '3. Meningkatkan kinerja OSIS supaya lebih aktif, kreatif, dan inovatif.', '4. Mengapresiasi siswa siswi yang berprestasi disekolah.', '', '', '', '', '', ''),
(2, 'MPK adalah kepanjangan dari Majelis Perwakilan Kelas. MPK adalah suatu organisasi di sekolah yang bertugas mengawasi kinerja OSIS dalam menjalankan tugas-tugasnya selama masa jabatannya berlangsung. MPK merupakan satu-satunya organisasi di sekolah yang dapat memantau, mengawasi dan membantu tugas-tugas dari OSIS.', 'hjjjj', '1. aku', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(9) NOT NULL,
  `tanggal` date NOT NULL,
  `agenda` varchar(100) NOT NULL,
  `ketuplak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `tanggal`, `agenda`, `ketuplak`) VALUES
(4, '2023-05-03', 'PERPISAHAN KELAS XII', 'ROSSA NURAENI');

-- --------------------------------------------------------

--
-- Stand-in structure for view `joinsiswa`
-- (See below for the actual view)
--
CREATE TABLE `joinsiswa` (
`id` int(9)
,`nis` varchar(11)
,`foto` varchar(100)
,`nama` varchar(50)
,`tingkat` varchar(4)
,`id_jurusan` int(11)
,`jurusan` varchar(6)
,`id_kelas` int(11)
,`kelas` varchar(9)
,`keterangan` varchar(5)
,`jabatan` varchar(30)
,`hp` varchar(13)
);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(9) NOT NULL,
  `jurusan` varchar(6) NOT NULL,
  `keterangan` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `jurusan`, `keterangan`) VALUES
(5, 'PPLG', 'PENGEMBANGAN PERANGKAT LUNAK & GIM'),
(6, 'TJKT', 'TEKNIK JARINGAN KOMPUTER DAN TELEKOMINIKASI'),
(7, 'TBSM', 'TEKNIS BISNIS SEPEDA MOTOR'),
(8, 'DKV', 'DESAIN KOMUNIKASI VISUAL'),
(9, 'TOI', 'TEKNIK OTOMASI INDUSTRI');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(9) NOT NULL,
  `kelas` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(5, '1'),
(6, '2'),
(7, '3'),
(8, '4');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` date NOT NULL,
  `alamat` text NOT NULL,
  `site` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `img`, `nama`, `ttl`, `alamat`, `site`) VALUES
(1, 'rose.jpg', 'MUHAMMAD HILMI AHADIAT', '2023-03-03', 'Tidak tahu', '@hilmi');

-- --------------------------------------------------------

--
-- Table structure for table `proker`
--

CREATE TABLE `proker` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `proker` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proker`
--

INSERT INTO `proker` (`id`, `jabatan`, `proker`) VALUES
(3, 'KETUA', 'Memimpin organisasi dengan baik dan bijaksana; \r\nMengkoordinasikan semua aparat kepengurusan; \r\nMemimpin rapat; \r\nMenetapkan kebijaksanaan dan mengambil keputusan berdasarkan musyawarah dan mufakat; \r\nSetiap saat mengevaluasi kegiatan aparat kepengurusan.'),
(4, 'WAKIL KETUA', 'Bersama-sama ketua menetapkan kebijaksanaan; \r\nMemberi saran kepada ketua dalam rangka mengambil keputusan; \r\nMenggantikan ketua jika berhalangan; \r\nMembantu ketua dalam melaksanakan tugas; \r\nBertanggung jawab kepada ketua.'),
(5, 'SEKRETARIS', 'Memberi saran/ masukan kepada ketua dalam mengambil keputusan; \r\nBersama ketua menandatangani setiap surat; \r\nBertindak sebagai notulen dalam rapat, atau diserahkan kepada wakil sekretaris.'),
(6, 'WAKIL SEKRETARIS', 'Menggantikan sekretaris jika sekretaris berhalangan.'),
(7, 'BENDAHARA & WAKIL BENDAHARA', 'Bertanggung jawab dan mengetahui segala pemasukan pengeluaran uang/biaya yang diperlukan; \r\nMembuat tanda bukti, setiap pemasukan/ pengeluaran uang untuk bertanggung jawab; \r\nBertanggung jawab atas inventaris dan pembendaharaan.'),
(8, 'SEKBID 1', 'Mengkoordinir shalat dzuhur berjamaah;  Memperingati Maulid Nabi Muhammad; Melaksanakan lomba-lomba keagamaan; Infak jumat.'),
(9, 'SEKBID 2', 'Tepat waktu datang ke sekolah; Memantau kedisiplinan; Memantau sosial media; Membuat jadwal jaga gerbang.'),
(10, 'KOMISI A', 'Membuat AD/ART (Anggaran Dasar/Anggaran Rumah Tangga) dan Kode Etik Siswa yang telah disusun dan ditetapkan bersama; \r\nMengawasi kinerja OSIS; \r\nMenginformasikan setiap permasalah AD/ART ke anggota MPK lain; \r\nMemberi saran/masukan kepada ketua dalam mengambil keputusan.'),
(11, 'KOMISI B', 'Komisi B bertugas untuk membuat Anggaran Dasar dan Anggaran Rumah Tangga bersama Komisi A, ketua, dan beberapa orang terpilih; \r\nbersama dengan komisi A dan dewan harian menentukan matrix kerja MPK.'),
(12, 'KOMISI C', 'Menampung dan menyalurkan aspirasi siswa kepa pihak sekolah; \r\nMelaksanakan fungsi pengawasan terhadap kinerja pengurus OSIS selama 1 tahun.');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(9) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tingkat` varchar(4) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `keterangan` varchar(5) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `foto`, `nama`, `tingkat`, `id_jurusan`, `id_kelas`, `keterangan`, `jabatan`, `hp`) VALUES
(1, '2000', 'mawar1.jpg', 'ROSSA NURAENI', 'XII', 5, 6, 'OSIS', 'WAKIL KETUA OSIS', '085703243781'),
(2, '2022', 'back1.png', 'ROSE', 'XI', 5, 6, 'MPK', 'WAKIL KETUA MPK', '085703243781');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(9) NOT NULL,
  `user` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_role` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `username`, `password`, `id_role`) VALUES
(1, 'ROSSA NURAENI', 'rssa', 'admin', 1),
(3, 'TRISENDI', 'admin', 'admin', 2);

-- --------------------------------------------------------

--
-- Structure for view `joinsiswa`
--
DROP TABLE IF EXISTS `joinsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `joinsiswa`  AS SELECT `a`.`id` AS `id`, `a`.`nis` AS `nis`, `a`.`foto` AS `foto`, `a`.`nama` AS `nama`, `a`.`tingkat` AS `tingkat`, `a`.`id_jurusan` AS `id_jurusan`, `b`.`jurusan` AS `jurusan`, `a`.`id_kelas` AS `id_kelas`, `c`.`kelas` AS `kelas`, `a`.`keterangan` AS `keterangan`, `a`.`jabatan` AS `jabatan`, `a`.`hp` AS `hp` FROM ((`siswa` `a` join `jurusan` `b` on(`a`.`id_jurusan` = `b`.`id`)) join `kelas` `c` on(`a`.`id_kelas` = `c`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proker`
--
ALTER TABLE `proker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `id_jurusan` (`id_jurusan`,`id_kelas`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proker`
--
ALTER TABLE `proker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Feb 2023 pada 19.47
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spkprestasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT 'administrator',
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'admin',
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_session` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `level`, `alamat`, `no_telp`, `email`, `blokir`, `id_session`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'admin', 'Sampit', '0989', 'admin@gmail.com', 'N', 'kf97rq4f9vfjp17fo5e57rvou7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `jumlah`) VALUES
(1, 'IPA', 2),
(3, 'IPS', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `id_kelas`, `nama`) VALUES
(31, '10-1', 'X-1'),
(32, '10-2', 'X-2'),
(39, '11-IPA1', 'XI-IPA1'),
(40, '11-IPA2', 'XI-IPA2'),
(41, '11-IPS1', 'XI-IPS1'),
(42, '11-IPS2', 'XI-IPS2'),
(44, '12-IPA1', 'XII-IPA1'),
(45, '12-IPA2', 'XII-IPA2'),
(46, '12-IPS1', 'XII-IPS1'),
(47, '12-IPS2', 'XII-IPS2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE IF NOT EXISTS `ranking` (
  `id_ranking` int(20) NOT NULL AUTO_INCREMENT,
  `nis` varchar(100) DEFAULT NULL,
  `nama_lengkap` varchar(200) DEFAULT NULL,
  `nilai_saw` varchar(50) DEFAULT NULL,
  `nilai_wp` varchar(50) NOT NULL,
  `tahun` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_ranking`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_ranking`, `nis`, `nama_lengkap`, `nilai_saw`, `nilai_wp`, `tahun`) VALUES
(1, '8780', 'ABDURRAZAQ AL HANAFI', '0.738', '0.030101864328846', '2023'),
(2, '8444', 'AHMAD FAHRIZAL', '0.914', '0.037470048801755', '2023'),
(3, '8445', 'ALBET MICHAEL KRISTIAN', '0.908', '0.037028375606214', '2023'),
(4, '8447', 'ANISA RAHAYU', '0.72', '0.02933248840885', '2023'),
(5, '8448', 'CHRISTIAN ARDY ARTHA SANJAYA', '0.818', '0.033232400090257', '2023'),
(6, '8449', 'DELLIA SUBANDINI', '0.764', '0.030657654067008', '2023'),
(7, '8450', 'ELISABETH SHINTA SETYAWARDANI', '0.734', '0.029247001308395', '2023'),
(8, '8451', 'FERNANDY JULIAN SAPUTRA', '0.83', '0.034272364172408', '2023'),
(9, '8453', 'JEFRIYANTO', '0.82', '0.033565587628519', '2023'),
(10, '8454', 'JESSICA ALEXIA PUTRI RUMAHORBO', '0.938', '0.038661212554501', '2023'),
(11, '8455', 'JESSICA ANJELIA PUTRI RUMAHORBO', '1', '0.041644712945139', '2023'),
(12, '8456', 'JONATHAN LOURENSIUS TAMBUANG', '0.938', '0.038861339745138', '2023'),
(13, '8457', 'LIDIA MEICHIA PUTRI', '0.7', '0.028852303475041', '2023'),
(14, '8459', 'M. DEDY PRATAMA', '0.83', '0.033450703489868', '2023'),
(15, '9564', 'M. KAHFI AL SAKDAT', '0.842', '0.03390157354342', '2023'),
(16, '8460', 'MUHAMMAD DZIKRI ALBASTI', '0.708', '0.028126167177742', '2023'),
(17, '8461', 'MUHAMMAD FAUZI', '0.838', '0.034158202352383', '2023'),
(18, '8462', 'MUHAMMAT ALDI', '0.844', '0.03360764505964', '2023'),
(19, '8463', 'NADIA NUR HOLIZAH', '0.758', '0.03078111839293', '2023'),
(20, '8465', 'NORHAYATI', '0.75', '0.030238555376511', '2023'),
(21, '9160', 'NUR ISHMA AZIZAH', '0.834', '0.034292610029106', '2023'),
(22, '8466', 'NUR KHADZAH', '0.83', '0.03368032771046', '2023'),
(23, '8467', 'NURUL HAFIZAH', '0.802', '0.032813397880492', '2023'),
(24, '8468', 'PRAYUDA ANGGARA SISWOYO PUTRA', '0.784', '0.032160982182212', '2023'),
(25, '8469', 'PUTRI KEYSA ALYA SALSABIELLA', '0.766', '0.031338977106909', '2023'),
(26, '8470', 'RAMA FITRIA', '0.712', '0.02798294989106', '2023'),
(27, '8471', 'RENATA RESIA PUTRI RAMADANI', '0.97', '0.040273870652573', '2023'),
(28, '8473', 'SURIYANUR AFIFANSAH', '0.928', '0.038430166687131', '2023'),
(29, '8474', 'WULAN DARI', '0.754', '0.030042381478336', '2023'),
(31, '8464', 'NANDASIA SELTIANA QURANI', '0.776', '0.031793017857156', '2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(9) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `id_kelas` varchar(8) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `th_masuk` varchar(4) NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_lengkap`, `id_kelas`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `th_masuk`, `blokir`) VALUES
(105, '8457', 'LIDIA MEICHIA PUTRI', '11-IPA2', 'Jl.Simpang 2', 'Sampit', '2009-11-15', 'P', 'ISLAM', '2020', 'N'),
(104, '8456', 'JONATHAN LOURENSIUS TAMBUANG', '11-IPA1', 'Jl.Simpang 1', 'Sampit', '2009-11-14', 'L', 'KRISTEN', '2020', 'N'),
(103, '8455', 'JESSICA ANJELIA PUTRI RUMAHORBO', '10-2', 'Jl.Simpang 12', 'Sampit', '2009-11-13', 'P', 'KRISTEN', '2020', 'N'),
(102, '8454', 'JESSICA ALEXIA PUTRI RUMAHORBO', '10-1', 'Jl.Simpang 11', 'Sampit', '2009-11-12', 'P', 'KRISTEN', '2020', 'N'),
(101, '8453', 'JEFRIYANTO', '12-IPA2', 'Jl.Simpang 10', 'Sampit', '2009-12-31', 'L', 'KRISTEN', '2020', 'N'),
(100, '8451', 'FERNANDY JULIAN SAPUTRA', '12-IPS2', 'Jl.Simpang 9', 'Sampit', '2009-12-30', 'L', 'KRISTEN', '2020', 'N'),
(99, '8450', 'ELISABETH SHINTA SETYAWARDANI', '11-IPS2', 'Jl.Simpang 8', 'Sampit', '2009-12-29', 'P', 'KRISTEN', '2020', 'N'),
(98, '8449', 'DELLIA SUBANDINI', '11-IPS1', 'Jl.Simpang 7', 'Sampit', '2009-12-28', 'P', 'KRISTEN', '2020', 'N'),
(97, '8448', 'CHRISTIAN ARDY ARTHA SANJAYA', '11-IPA2', 'Jl.Simpang 6', 'Sampit', '2009-12-27', 'L', 'KRISTEN', '2020', 'N'),
(96, '8447', 'ANISA RAHAYU', '11-IPA1', 'Jl.Simpang 5', 'Sampit', '2009-12-26', 'P', 'ISLAM', '2020', 'N'),
(93, '8780', 'ABDURRAZAQ AL HANAFI', '12-IPS2', 'Jl.Simpang 2', 'Sampit', '2009-12-23', 'L', 'ISLAM', '2020', 'N'),
(94, '8444', 'AHMAD FAHRIZAL', '10-1', 'Jl.Simpang 3', 'Sampit', '2009-12-24', 'L', 'ISLAM', '2020', 'N'),
(95, '8445', 'ALBET MICHAEL KRISTIAN', '10-2', 'Jl.Simpang 4', 'Sampit', '2009-12-25', 'L', 'KRISTEN', '2020', 'N'),
(106, '8459', 'M. DEDY PRATAMA', '11-IPS1', 'Jl.Simpang 3', 'Sampit', '2009-11-16', 'L', 'ISLAM', '2020', 'N'),
(107, '9564', 'M. KAHFI AL SAKDAT', '12-IPA1', 'Jl.Simpang 4', 'Sampit', '2009-11-17', 'L', 'ISLAM', '2020', 'N'),
(108, '8460', 'MUHAMMAD DZIKRI ALBASTI', '11-IPS2', 'Jl.Simpang 5', 'Sampit', '2009-11-18', 'L', 'ISLAM', '2020', 'N'),
(109, '8461', 'MUHAMMAD FAUZI', '12-IPA1', 'Jl.Simpang 6', 'Sampit', '2009-11-19', 'L', 'ISLAM', '2020', 'N'),
(110, '8462', 'MUHAMMAT ALDI', '12-IPA2', 'Jl.Simpang 7', 'Sampit', '2009-11-20', 'L', 'ISLAM', '2020', 'N'),
(111, '8463', 'NADIA NUR HOLIZAH', '12-IPS1', 'Jl.Simpang 8', 'Sampit', '2009-11-21', 'P', 'ISLAM', '2020', 'N'),
(112, '8464', 'NANDASIA SELTIANA QURANI', '12-IPS2', 'Jl.Simpang 9', 'Sampit', '2009-11-22', 'P', 'ISLAM', '2020', 'N'),
(113, '8465', 'NORHAYATI', '10-1', 'Jl.Simpang 10', 'Sampit', '2009-11-23', 'P', 'ISLAM', '2020', 'N'),
(114, '9160', 'NUR ISHMA AZIZAH', '12-IPS1', 'Jl.Simpang 11', 'Sampit', '2009-11-24', 'P', 'ISLAM', '2020', 'N'),
(115, '8466', 'NUR KHADZAH', '10-2', 'Jl.Simpang 12', 'Sampit', '2009-11-25', 'P', 'ISLAM', '2020', 'N'),
(116, '8467', 'NURUL HAFIZAH', '11-IPA1', 'Jl.Simpang 13', 'Sampit', '2009-11-26', 'P', 'ISLAM', '2020', 'N'),
(117, '8468', 'PRAYUDA ANGGARA SISWOYO PUTRA', '11-IPA2', 'Jl.Simpang 14', 'Sampit', '2009-11-27', 'L', 'ISLAM', '2020', 'N'),
(118, '8469', 'PUTRI KEYSA ALYA SALSABIELLA', '11-IPS1', 'Jl.Simpang 15', 'Sampit', '2009-11-28', 'P', 'ISLAM', '2020', 'N'),
(119, '8470', 'RAMA FITRIA', '11-IPS2', 'Jl.Simpang 16', 'Sampit', '2009-11-29', 'L', 'ISLAM', '2020', 'N'),
(120, '8471', 'RENATA RESIA PUTRI RAMADANI', '12-IPA1', 'Jl.Simpang 17', 'Sampit', '2009-11-30', 'P', 'ISLAM', '2020', 'N'),
(121, '8473', 'SURIYANUR AFIFANSAH', '12-IPA2', 'Jl.Simpang 18', 'Sampit', '0000-00-00', 'L', 'ISLAM', '2020', 'N'),
(122, '8474', 'WULAN DARI', '12-IPS1', 'Jl.Simpang 19', 'Sampit', '0000-00-00', 'P', 'ISLAM', '2020', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_himpunankriteria`
--

CREATE TABLE IF NOT EXISTS `tbl_himpunankriteria` (
  `id_hk` int(11) NOT NULL AUTO_INCREMENT,
  `id_kriteria` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  `nilai` int(11) NOT NULL,
  PRIMARY KEY (`id_hk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data untuk tabel `tbl_himpunankriteria`
--

INSERT INTO `tbl_himpunankriteria` (`id_hk`, `id_kriteria`, `nama`, `keterangan`, `nilai`) VALUES
(7, 4, '> 4', 'Sangat Baik', 5),
(8, 4, '3', 'Baik', 4),
(9, 4, '2', 'Cukup', 3),
(10, 4, '1', 'Kurang', 2),
(11, 4, '0', 'Sangat Kurang', 1),
(12, 5, '86-100', 'Sangat Baik', 5),
(13, 5, '76-85', 'Baik', 4),
(14, 5, '66-75', 'Cukup Baik', 3),
(15, 5, '51-65', 'Kurang', 2),
(16, 5, '0-50', 'Sangat Kurang', 1),
(17, 6, '100 %', 'Sangat Baik', 5),
(18, 6, '75 %', 'Baik', 4),
(19, 6, '50 %', 'Cukup', 3),
(25, 12, '86-100', 'Sangat Baik', 5),
(26, 12, '76-85', 'Baik', 4),
(27, 12, '66-75', 'Cukup', 3),
(28, 12, '51-65', 'Kurang', 2),
(29, 12, '0-50', 'Sangat Kurang', 1),
(30, 6, '25 %', 'Kurang', 2),
(31, 6, '0 %', 'Sangat Kurang', 1),
(37, 14, '86-100', 'Sangat Baik', 5),
(38, 14, '76-85', 'Baik', 4),
(39, 14, '60-75', 'Cukup', 3),
(40, 14, '55-60', 'Kurang', 2),
(41, 14, '0-54', 'Sangat Kurang', 1),
(43, 7, '86-100', 'Sangat Baik', 5),
(44, 7, '76-85', 'Baik', 4),
(45, 7, '66-75', 'Cukup', 3),
(46, 7, '51-65', 'Kurang', 2),
(47, 7, '0-50', 'Sangat Kurang', 1),
(48, 3, '86-100', 'Sangat Baik', 5),
(49, 3, '76-85', 'Baik', 4),
(50, 3, '66-75', 'Cukup', 3),
(51, 3, '51-65', 'Kurang', 2),
(52, 3, '0-50', 'Sangat Kurang', 1),
(53, 2, '1', 'Sangat Baik', 5),
(54, 2, '2', 'Baik', 4),
(55, 2, '3', 'Cukup', 3),
(56, 2, '4', 'Kurang', 2),
(57, 2, '< 5', 'Sangat Kurang', 1),
(58, 8, '86-100', 'Sangat Baik', 5),
(59, 8, '76-85', 'Baik', 4),
(60, 8, '66-75', 'Cukup', 3),
(61, 8, '51-65', 'Kurang', 2),
(62, 8, '0-50', 'Sangat Kurang', 1),
(63, 9, '86-100', 'Sangat Baik', 5),
(64, 9, '76-85', 'Baik', 4),
(65, 9, '66-75', 'Cukup', 3),
(66, 9, '51-65', 'Kurang', 2),
(67, 9, '0-50', 'Sangat Kurang', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klasifikasi`
--

CREATE TABLE IF NOT EXISTS `tbl_klasifikasi` (
  `id_klasifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_hk` int(11) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=521 ;

--
-- Dumping data untuk tabel `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `id_siswa`, `id_hk`) VALUES
(17, 110, 43),
(18, 110, 53),
(19, 110, 51),
(20, 110, 7),
(21, 110, 12),
(22, 110, 18),
(23, 110, 60),
(24, 110, 64),
(129, 97, 43),
(130, 97, 53),
(131, 97, 50),
(132, 97, 9),
(133, 97, 13),
(134, 97, 17),
(135, 97, 59),
(136, 97, 65),
(137, 98, 43),
(138, 98, 53),
(139, 98, 50),
(140, 98, 9),
(141, 98, 13),
(142, 98, 18),
(143, 98, 60),
(144, 98, 66),
(153, 100, 44),
(154, 100, 54),
(155, 100, 48),
(156, 100, 8),
(157, 100, 13),
(158, 100, 18),
(159, 100, 58),
(160, 100, 65),
(185, 104, 43),
(186, 104, 53),
(187, 104, 48),
(188, 104, 8),
(189, 104, 12),
(190, 104, 18),
(191, 104, 58),
(192, 104, 64),
(217, 119, 43),
(218, 119, 53),
(219, 119, 50),
(220, 119, 10),
(221, 119, 14),
(222, 119, 18),
(223, 119, 61),
(224, 119, 65),
(233, 122, 43),
(234, 122, 53),
(235, 122, 50),
(236, 122, 10),
(237, 122, 13),
(238, 122, 18),
(239, 122, 60),
(240, 122, 65),
(249, 120, 43),
(250, 120, 54),
(251, 120, 48),
(252, 120, 7),
(253, 120, 12),
(254, 120, 17),
(255, 120, 58),
(256, 120, 63),
(345, 113, 44),
(346, 113, 53),
(347, 113, 50),
(348, 113, 10),
(349, 113, 13),
(350, 113, 18),
(351, 113, 59),
(352, 113, 64),
(353, 103, 43),
(354, 103, 53),
(355, 103, 48),
(356, 103, 7),
(357, 103, 12),
(358, 103, 17),
(359, 103, 58),
(360, 103, 63),
(361, 115, 43),
(362, 115, 54),
(363, 115, 50),
(364, 115, 9),
(365, 115, 12),
(366, 115, 17),
(367, 115, 58),
(368, 115, 65),
(369, 116, 43),
(370, 116, 54),
(371, 116, 50),
(372, 116, 9),
(373, 116, 13),
(374, 116, 18),
(375, 116, 58),
(376, 116, 64),
(377, 96, 43),
(378, 96, 55),
(379, 96, 50),
(380, 96, 9),
(381, 96, 13),
(382, 96, 18),
(383, 96, 60),
(384, 96, 65),
(385, 117, 43),
(386, 117, 54),
(387, 117, 50),
(388, 117, 9),
(389, 117, 13),
(390, 117, 18),
(391, 117, 59),
(392, 117, 64),
(393, 105, 44),
(394, 105, 55),
(395, 105, 49),
(396, 105, 9),
(397, 105, 14),
(398, 105, 19),
(399, 105, 59),
(400, 105, 64),
(401, 118, 43),
(402, 118, 54),
(403, 118, 50),
(404, 118, 9),
(405, 118, 13),
(406, 118, 18),
(407, 118, 60),
(408, 118, 64),
(409, 106, 43),
(410, 106, 55),
(411, 106, 48),
(412, 106, 7),
(413, 106, 13),
(414, 106, 18),
(415, 106, 59),
(416, 106, 66),
(417, 108, 43),
(418, 108, 54),
(419, 108, 50),
(420, 108, 10),
(421, 108, 13),
(422, 108, 18),
(423, 108, 60),
(424, 108, 66),
(425, 99, 43),
(426, 99, 55),
(427, 99, 50),
(428, 99, 10),
(429, 99, 12),
(430, 99, 18),
(431, 99, 60),
(432, 99, 64),
(433, 109, 44),
(434, 109, 53),
(435, 109, 50),
(436, 109, 9),
(437, 109, 12),
(438, 109, 17),
(439, 109, 58),
(440, 109, 64),
(441, 107, 43),
(442, 107, 55),
(443, 107, 48),
(444, 107, 8),
(445, 107, 13),
(446, 107, 17),
(447, 107, 58),
(448, 107, 66),
(449, 121, 43),
(450, 121, 54),
(451, 121, 48),
(452, 121, 8),
(453, 121, 12),
(454, 121, 17),
(455, 121, 58),
(456, 121, 64),
(457, 101, 43),
(458, 101, 55),
(459, 101, 48),
(460, 101, 8),
(461, 101, 13),
(462, 101, 18),
(463, 101, 59),
(464, 101, 65),
(465, 112, 43),
(466, 112, 54),
(467, 112, 50),
(468, 112, 8),
(469, 112, 13),
(470, 112, 18),
(471, 112, 60),
(472, 112, 65),
(473, 93, 43),
(474, 93, 55),
(475, 93, 50),
(476, 93, 9),
(477, 93, 13),
(478, 93, 18),
(479, 93, 59),
(480, 93, 65),
(481, 111, 43),
(482, 111, 55),
(483, 111, 50),
(484, 111, 9),
(485, 111, 13),
(486, 111, 17),
(487, 111, 59),
(488, 111, 65),
(489, 114, 43),
(490, 114, 54),
(491, 114, 50),
(492, 114, 8),
(493, 114, 12),
(494, 114, 18),
(495, 114, 59),
(496, 114, 64),
(497, 102, 43),
(498, 102, 54),
(499, 102, 48),
(500, 102, 7),
(501, 102, 12),
(502, 102, 17),
(503, 102, 58),
(504, 102, 65),
(505, 95, 43),
(506, 95, 55),
(507, 95, 48),
(508, 95, 7),
(509, 95, 12),
(510, 95, 17),
(511, 95, 58),
(512, 95, 65),
(513, 94, 43),
(514, 94, 55),
(515, 94, 48),
(516, 94, 8),
(517, 94, 12),
(518, 94, 17),
(519, 94, 58),
(520, 94, 63);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kriteria`
--

CREATE TABLE IF NOT EXISTS `tbl_kriteria` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(50) NOT NULL,
  `bobot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`id`, `kriteria`, `bobot`) VALUES
(7, 'Nilai Rata-Rata Rapot', 19),
(2, 'Bobot Ranking', 15),
(3, 'Nilai Ekstrakurikuler', 14),
(4, 'Lomba', 13),
(5, 'Kepribadian', 12),
(6, 'Kehadiran', 10),
(8, 'Organisasi', 9),
(9, 'Kesenian', 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_analisa`
--
CREATE TABLE IF NOT EXISTS `v_analisa` (
`id_klasifikasi` int(11)
,`id_siswa` int(11)
,`nama_lengkap` varchar(100)
,`id_hk` int(11)
,`id_kriteria` int(11)
,`kriteria` varchar(50)
,`bobot` int(11)
,`nama` varchar(60)
,`keterangan` varchar(15)
,`nilai` int(11)
);
-- --------------------------------------------------------

--
-- Struktur untuk view `v_analisa`
--
DROP TABLE IF EXISTS `v_analisa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_analisa` AS select `tbl_klasifikasi`.`id_klasifikasi` AS `id_klasifikasi`,`tbl_klasifikasi`.`id_siswa` AS `id_siswa`,`siswa`.`nama_lengkap` AS `nama_lengkap`,`tbl_klasifikasi`.`id_hk` AS `id_hk`,`tbl_himpunankriteria`.`id_kriteria` AS `id_kriteria`,`tbl_kriteria`.`kriteria` AS `kriteria`,`tbl_kriteria`.`bobot` AS `bobot`,`tbl_himpunankriteria`.`nama` AS `nama`,`tbl_himpunankriteria`.`keterangan` AS `keterangan`,`tbl_himpunankriteria`.`nilai` AS `nilai` from (((`tbl_himpunankriteria` join `tbl_kriteria` on((`tbl_himpunankriteria`.`id_kriteria` = `tbl_kriteria`.`id`))) join `tbl_klasifikasi` on((`tbl_klasifikasi`.`id_hk` = `tbl_himpunankriteria`.`id_hk`))) join `siswa` on((`tbl_klasifikasi`.`id_siswa` = `siswa`.`id_siswa`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

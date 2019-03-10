-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 12:41 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appubk`
--

-- --------------------------------------------------------

--
-- Table structure for table `essay`
--

CREATE TABLE `essay` (
  `soal_id` int(11) NOT NULL,
  `soal_pelajaran` int(11) NOT NULL,
  `soal_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `essay_jawaban`
--

CREATE TABLE `essay_jawaban` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `soal_id` int(11) DEFAULT NULL,
  `jawaban` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `NIP` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `NIP`) VALUES
(1, 'Dosti Purba', '848333'),
(2, 'te', '123'),
(3, 'te', '45'),
(4, 'Henni Sinaga, S.Pd', '1980'),
(5, 'MGMP SMK USBN', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'XII RPL'),
(2, 'XII TKJ'),
(3, 'XII MM 1'),
(4, 'XII MM 2'),
(5, 'XII AP U'),
(6, 'XII AP 1'),
(7, 'XII AP 2'),
(8, 'XII AK U'),
(9, 'XII AK 1'),
(10, 'XII AK 2'),
(11, 'XII PM');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `KKM` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id_pelajaran`, `id_guru`, `nama`, `KKM`) VALUES
(1, 5, 'Bahasa Inggris', 75),
(2, 5, 'Bahasa Indonesia', 75),
(3, 5, 'Matematika', 75),
(4, 5, 'Produktif RPL', 75),
(5, 5, 'PPKN', 75),
(6, 5, 'Seni Budaya', 75),
(7, 5, 'Prakarya dan Kewirausahaan', 75),
(8, 5, 'Penjaskes', 75),
(9, 5, 'Fisika', 75),
(10, 5, 'Simulasi Digital', 75),
(11, 5, 'Produktif MM', 75),
(12, 5, 'Produktif TKJ', 75),
(13, 5, 'Produktif AK', 75),
(14, 5, 'Produktif PM', 75),
(15, 5, 'Produktif AP', 75),
(16, 5, 'Prakarya dan Kewirausahaan', 75);

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id_record` int(11) NOT NULL,
  `id_siswa` int(15) NOT NULL,
  `id_pelajaran` int(15) NOT NULL,
  `id_soal` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id_record`, `id_siswa`, `id_pelajaran`, `id_soal`, `status`) VALUES
(1, 334, 1, '1,2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `nama`, `nis`, `tanggal_lahir`, `username`, `password`) VALUES
(1, 1, 'ABDUL KADIR', '', '0000-00-00', 'K1503000100018', '9788*'),
(2, 1, 'ABDURAHMAN', '', '0000-00-00', 'K1503000100027', '5692*'),
(3, 1, 'ADAM SETIAWAN', '', '0000-00-00', 'K1503000100036', '8371*'),
(4, 1, 'AHMAD MUSTAIN', '', '0000-00-00', 'K1503000100045', '7913*'),
(5, 1, 'AKHMAD AGUS SUPIANI', '', '0000-00-00', 'K1503000100054', '9553*'),
(6, 1, 'BAGUS RIAN KUSUMA', '', '0000-00-00', 'K1503000100063', '5518*'),
(7, 1, 'IHFA LAZUARDI FIRDAUS', '', '0000-00-00', 'K1503000100072', '1644*'),
(8, 1, 'JUAIRIA FATHANA', '', '0000-00-00', 'K1503000100089', '8258*'),
(9, 1, 'KURNIA', '', '0000-00-00', 'K1503000100098', '6250*'),
(10, 1, 'M. AYNAL ADHAR', '', '0000-00-00', 'K1503000100107', '6287*'),
(11, 1, 'M. DARMIN', '', '0000-00-00', 'K1503000100116', '1564*'),
(12, 1, 'M. RONY SABIRIN', '', '0000-00-00', 'K1503000100125', '5761*'),
(13, 1, 'MUHAMMAD FIRDAUS', '', '0000-00-00', 'K1503000100134', '6724*'),
(14, 1, 'MUHAMMAD PAZRIN ANDREANOR', '', '0000-00-00', 'K1503000100143', '4398*'),
(15, 1, 'MUHAMMAD RAFI', '', '0000-00-00', 'K1503000100152', '2571*'),
(16, 1, 'MUHAMMAD RIFALDI', '', '0000-00-00', 'K1503000100169', '0076*'),
(17, 1, 'MUHAMMAD ROSYAD ERSAN MAULANA', '', '0000-00-00', 'K1503000100178', '4340*'),
(18, 1, 'NURUL MUSDALIFAH', '', '0000-00-00', 'K1503000100187', '5905*'),
(19, 1, 'PAHRINA', '', '0000-00-00', 'K1503000100196', '1815*'),
(20, 1, 'PRIZA AULIA MARWA', '', '0000-00-00', 'K1503000100205', '3075*'),
(21, 1, 'RESTI NUR AMALLIA', '', '0000-00-00', 'K1503000100214', '9225*'),
(22, 1, 'RIKA SAFITRI', '', '0000-00-00', 'K1503000100223', '8157*'),
(23, 1, 'SAID ANGGA RAMADHAN', '', '0000-00-00', 'K1503000100232', '6701*'),
(24, 1, 'TRI SELVIANA PUTRI', '', '0000-00-00', 'K1503000100249', '9436*'),
(25, 1, 'YEZA NUR WAHYUDI', '', '0000-00-00', 'K1503000100258', '9244*'),
(26, 2, 'ABDUL RAHIM', '', '0000-00-00', 'K1503000100267', '6427*'),
(27, 2, 'ADELIA ANANDA', '', '0000-00-00', 'K1503000100276', '4299*'),
(28, 2, 'APRIANDI SAUPAR', '', '0000-00-00', 'K1503000100285', '4351*'),
(29, 2, 'ASEP SURAHMIN', '', '0000-00-00', 'K1503000100294', '6378*'),
(30, 2, 'BAYU NUGRAHA', '', '0000-00-00', 'K1503000100303', '3085*'),
(31, 2, 'DELILA NUR KEVIYANTI', '', '0000-00-00', 'K1503000100312', '5416*'),
(32, 2, 'DESINTA NUR MADINA', '', '0000-00-00', 'K1503000100329', '5584*'),
(33, 2, 'DWI ALFAN ARDIANSYAH', '', '0000-00-00', 'K1503000100338', '0895*'),
(34, 2, 'EKKY GALANG PRATAMA', '', '0000-00-00', 'K1503000100347', '4349*'),
(35, 2, 'ERVA KHAIRUNNISA', '', '0000-00-00', 'K1503000100356', '3696*'),
(36, 2, 'GINA AKLIYAH', '', '0000-00-00', 'K1503000100365', '6589*'),
(37, 2, 'HUSIN KADRI', '', '0000-00-00', 'K1503000100374', '8868*'),
(38, 2, 'IKHSAN MAKKAWALI', '', '0000-00-00', 'K1503000100383', '6370*'),
(39, 2, 'JAKA ERFANDI', '', '0000-00-00', 'K1503000100392', '4243*'),
(40, 2, 'KELANA ARIS BAYA', '', '0000-00-00', 'K1503000100409', '9273*'),
(41, 2, 'KHAIRUL RADI SAPUTRA', '', '0000-00-00', 'K1503000100418', '0780*'),
(42, 2, 'KHAIRURRAHIM', '', '0000-00-00', 'K1503000100427', '6832*'),
(43, 2, 'M.RIFANDI ABDILLAH', '', '0000-00-00', 'K1503000100436', '6966*'),
(44, 2, 'MALISA AMALIA', '', '0000-00-00', 'K1503000100445', '3131*'),
(45, 2, 'MUHAMMAD ALAMSYAH YUSUF', '', '0000-00-00', 'K1503000100454', '0729*'),
(46, 2, 'MUHAMMAD ANDIKA NOOR ROMADHONI', '', '0000-00-00', 'K1503000100463', '3877*'),
(47, 2, 'MUHAMMAD HAMDANI AKBAR', '', '0000-00-00', 'K1503000100472', '2473*'),
(48, 2, 'Muhammad Hamsir', '', '0000-00-00', 'K1503000100489', '5983*'),
(49, 2, 'MUHAMMAD HIDAYAT', '', '0000-00-00', 'K1503000100498', '9742*'),
(50, 2, 'MUHAMMAD KHAIRILLAH', '', '0000-00-00', 'K1503000100507', '8545*'),
(51, 2, 'MUHAMMAD MAISA JILHAM', '', '0000-00-00', 'K1503000100516', '5171*'),
(52, 2, 'MUHAMMAD RAHUL', '', '0000-00-00', 'K1503000100525', '1013*'),
(53, 2, 'MUHAMMAD RIZKI HAMDANI', '', '0000-00-00', 'K1503000100534', '0167*'),
(54, 2, 'NAHDATUL IHSAN HIDAYATULLAH', '', '0000-00-00', 'K1503000100543', '8570*'),
(55, 2, 'NOOR HASDIANA', '', '0000-00-00', 'K1503000100552', '2245*'),
(56, 2, 'RAHMAD AULIA GALI', '', '0000-00-00', 'K1503000100569', '2910*'),
(57, 2, 'RIFADIL RAMADHAN', '', '0000-00-00', 'K1503000100578', '2483*'),
(58, 2, 'RIZKY FADILA MUHAMMAD AKBAR', '', '0000-00-00', 'K1503000100587', '3648*'),
(59, 2, 'RUDIANSYAH', '', '0000-00-00', 'K1503000100596', '0618*'),
(60, 2, 'SAJIDAN NUR', '', '0000-00-00', 'K1503000100605', '8053*'),
(61, 2, 'SHOPIYYAH ALMA', '', '0000-00-00', 'K1503000100614', '7372*'),
(62, 2, 'SYARIF RAHMAN', '', '0000-00-00', 'K1503000100623', '0244*'),
(63, 2, 'ZULFI ARYANDHY', '', '0000-00-00', 'K1503000100632', '8114*'),
(64, 3, 'AHMAD HALBIANOOR', '', '0000-00-00', 'K1503000100649', '8868*'),
(65, 3, 'ALDHI MAYNAKI', '', '0000-00-00', 'K1503000100658', '4872*'),
(66, 3, 'BAHRUL ILMI', '', '0000-00-00', 'K1503000100667', '4568*'),
(67, 3, 'CECE CEHYATI', '', '0000-00-00', 'K1503000100676', '3796*'),
(68, 3, 'DARLIANI', '', '0000-00-00', 'K1503000100685', '0576*'),
(69, 3, 'DHEA ANANDA', '', '0000-00-00', 'K1503000100694', '4184*'),
(70, 3, 'ERNI SAFITRI', '', '0000-00-00', 'K1503000100703', '2573*'),
(71, 3, 'FEBY NUR FAHNI', '', '0000-00-00', 'K1503000100712', '7113*'),
(72, 3, 'JUWAIRIYAH', '', '0000-00-00', 'K1503000100729', '3147*'),
(73, 3, 'KAHARUDDIN', '', '0000-00-00', 'K1503000100738', '6180*'),
(74, 3, 'KARMILAWATI', '', '0000-00-00', 'K1503000100747', '5700*'),
(75, 3, 'M. WAHYU', '', '0000-00-00', 'K1503000100756', '0622*'),
(76, 3, 'MAYDAYANI', '', '0000-00-00', 'K1503000100765', '3016*'),
(77, 3, 'MUHAMMAD FAHRUL ROZY', '', '0000-00-00', 'K1503000100774', '0540*'),
(78, 3, 'MUHAMMAD MULIA ROFIY', '', '0000-00-00', 'K1503000100783', '0696*'),
(79, 3, 'MUHAMMAD RIDHO ANWAR', '', '0000-00-00', 'K1503000100792', '2324*'),
(80, 3, 'MUNAWARATUL AQLIAH', '', '0000-00-00', 'K1503000100809', '8328*'),
(81, 3, 'PRAYOGA SUHARDI', '', '0000-00-00', 'K1503000100818', '2422*'),
(82, 3, 'RAHMANI', '', '0000-00-00', 'K1503000100827', '9413*'),
(83, 3, 'RATNA SARI', '', '0000-00-00', 'K1503000100836', '2429*'),
(84, 3, 'RICKO EKA KRISANTA', '', '0000-00-00', 'K1503000100845', '4396*'),
(85, 3, 'RIFALDY', '', '0000-00-00', 'K1503000100854', '7989*'),
(86, 3, 'RISMAYANA', '', '0000-00-00', 'K1503000100863', '4209*'),
(87, 3, 'RIYANDA SAPUTRA', '', '0000-00-00', 'K1503000100872', '1201*'),
(88, 3, 'RIZKY WAHYUDI', '', '0000-00-00', 'K1503000100889', '5563*'),
(89, 3, 'SALSABILA', '', '0000-00-00', 'K1503000100898', '2037*'),
(90, 3, 'SELPI', '', '0000-00-00', 'K1503000100907', '9999*'),
(91, 3, 'SONIA H', '', '0000-00-00', 'K1503000100916', '9482*'),
(92, 3, 'WAHIDAH AGUSTYA RAHMAN', '', '0000-00-00', 'K1503000100925', '6241*'),
(93, 4, 'ALDY FIRDAUS', '', '0000-00-00', 'K1503000100934', '3739*'),
(94, 4, 'AYUDIA PUTRI ANANDA', '', '0000-00-00', 'K1503000100943', '2496*'),
(95, 4, 'BURHANUDDIN NUR', '', '0000-00-00', 'K1503000100952', '6583*'),
(96, 4, 'FAHRUL AKBAR', '', '0000-00-00', 'K1503000100969', '0890*'),
(97, 4, 'GT. NITA FAUZIAH', '', '0000-00-00', 'K1503000100978', '3890*'),
(98, 4, 'HASNIAH', '', '0000-00-00', 'K1503000100987', '2032*'),
(99, 4, 'INDRI FEBRIANTI', '', '0000-00-00', 'K1503000100996', '7286*'),
(100, 4, 'INTAN SARI', '', '0000-00-00', 'K1503000101005', '0610*'),
(101, 4, 'M. IRFAN', '', '0000-00-00', 'K1503000101014', '9936*'),
(102, 4, 'M. RAENALDI BARUS', '', '0000-00-00', 'K1503000101023', '9927*'),
(103, 4, 'M. YANDI FITRIYANNOR', '', '0000-00-00', 'K1503000101032', '5397*'),
(104, 4, 'M. ZAINAL ABIDIN', '', '0000-00-00', 'K1503000101049', '4355*'),
(105, 4, 'MAHDIATI NUR NADIAH', '', '0000-00-00', 'K1503000101058', '4673*'),
(106, 4, 'MUHAMMAD IRLAN FAJAR', '', '0000-00-00', 'K1503000101067', '9520*'),
(107, 4, 'MURZIAH INTANING KINASIH', '', '0000-00-00', 'K1503000101076', '2573*'),
(108, 4, 'NIDA\' FARDILLA', '', '0000-00-00', 'K1503000101085', '4023*'),
(109, 4, 'NOOR AINAH', '', '0000-00-00', 'K1503000101094', '4501*'),
(110, 4, 'NOORHASANAH', '', '0000-00-00', 'K1503000101103', '5409*'),
(111, 4, 'NOR ETNI KHAIRUNA', '', '0000-00-00', 'K1503000101112', '6164*'),
(112, 4, 'PUTRI FADIYAH RAKHMAN', '', '0000-00-00', 'K1503000101129', '2693*'),
(113, 4, 'RAHMA WATI', '', '0000-00-00', 'K1503000101138', '8192*'),
(114, 4, 'RAHMAT GIRI ANSHORI', '', '0000-00-00', 'K1503000101147', '6114*'),
(115, 4, 'RIZKY ARIYANTI', '', '0000-00-00', 'K1503000101156', '8913*'),
(116, 4, 'SANTI SEPTIANY', '', '0000-00-00', 'K1503000101165', '1332*'),
(117, 4, 'SUPIAH WATI', '', '0000-00-00', 'K1503000101174', '3036*'),
(118, 4, 'SYAHRUL IRAWAN', '', '0000-00-00', 'K1503000101183', '7425*'),
(119, 4, 'TIARA ANINGTYA', '', '0000-00-00', 'K1503000101192', '6369*'),
(120, 4, 'TRI SANI AMBAR SULISTYOWATI', '', '0000-00-00', 'K1503000101209', '5880*'),
(121, 5, 'AGIS RAGITA', '', '0000-00-00', 'K1503000101218', '3170*'),
(122, 5, 'AHMAD RIFANI ANSYARI', '', '0000-00-00', 'K1503000101227', '9758*'),
(123, 5, 'AKBAR WALUYO', '', '0000-00-00', 'K1503000101236', '4187*'),
(124, 5, 'ALDA FEBIYANTIKA', '', '0000-00-00', 'K1503000101245', '6044*'),
(125, 5, 'ANDI MAULIDA', '', '0000-00-00', 'K1503000101254', '0373*'),
(126, 5, 'ARLIN ANDHIKA PUTRA', '', '0000-00-00', 'K1503000101263', '2643*'),
(127, 5, 'ASSE PADLY', '', '0000-00-00', 'K1503000101272', '1579*'),
(128, 5, 'DEA AULINA PUSPITASARI', '', '0000-00-00', 'K1503000101289', '4106*'),
(129, 5, 'DEDY ARDIANSYAH', '', '0000-00-00', 'K1503000101298', '9641*'),
(130, 5, 'DESSY RATNA SARI', '', '0000-00-00', 'K1503000101307', '9681*'),
(131, 5, 'DEVIANA', '', '0000-00-00', 'K1503000101316', '7820*'),
(132, 5, 'ELVIRA MONICA', '', '0000-00-00', 'K1503000101325', '6001*'),
(133, 5, 'HAMDAYANA', '', '0000-00-00', 'K1503000101334', '3829*'),
(134, 5, 'HAMIM BASNAWAN', '', '0000-00-00', 'K1503000101343', '7626*'),
(135, 5, 'LISDA MERIYANTI', '', '0000-00-00', 'K1503000101352', '3628*'),
(136, 5, 'LORA MAULITJAH', '', '0000-00-00', 'K1503000101369', '6868*'),
(137, 5, 'M. RAJA INDRA', '', '0000-00-00', 'K1503000101378', '4515*'),
(138, 5, 'M. ROHIB SEPRIADI PRATAMA', '', '0000-00-00', 'K1503000101387', '0680*'),
(139, 5, 'MUHAMMAD DEDI RENALDI', '', '0000-00-00', 'K1503000101396', '8644*'),
(140, 5, 'MUHAMMAD RISKY RAMADHAN', '', '0000-00-00', 'K1503000101405', '9317*'),
(141, 5, 'NORLELA SAWITRI PUTRI', '', '0000-00-00', 'K1503000101414', '2013*'),
(142, 5, 'NORMA YUNITA', '', '0000-00-00', 'K1503000101423', '7002*'),
(143, 5, 'NUR AISYAH', '', '0000-00-00', 'K1503000101432', '7032*'),
(144, 5, 'NUR HIKMAH ARIYANTI', '', '0000-00-00', 'K1503000101449', '6887*'),
(145, 5, 'PUSPITASARI', '', '0000-00-00', 'K1503000101458', '3400*'),
(146, 5, 'RAHMA ANDINI', '', '0000-00-00', 'K1503000101467', '0470*'),
(147, 5, 'RAHMATIAH', '', '0000-00-00', 'K1503000101476', '6681*'),
(148, 5, 'REINA RAHMAWATI', '', '0000-00-00', 'K1503000101485', '9342*'),
(149, 5, 'RIDHA MASITA', '', '0000-00-00', 'K1503000101494', '6314*'),
(150, 5, 'RISKA INDAH SARI', '', '0000-00-00', 'K1503000101503', '8761*'),
(151, 5, 'SAHRUL RINALDI', '', '0000-00-00', 'K1503000101512', '8642*'),
(152, 5, 'SAMSIYAH', '', '0000-00-00', 'K1503000101529', '9648*'),
(153, 5, 'SAYYID MAHENDRA IRWANNA', '', '0000-00-00', 'K1503000101538', '7577*'),
(154, 5, 'SELVIYA DAMAYANTI', '', '0000-00-00', 'K1503000101547', '4270*'),
(155, 5, 'SRI NURIATI. A', '', '0000-00-00', 'K1503000101556', '5632*'),
(156, 5, 'SUNITA FATIMAH', '', '0000-00-00', 'K1503000101565', '3668*'),
(157, 6, 'AGUNG SETYAWAN', '', '0000-00-00', 'K1503000101574', '9307*'),
(158, 6, 'AHMAD HUSAINI', '', '0000-00-00', 'K1503000101583', '7625*'),
(159, 6, 'FAHRI HUSAYNI', '', '0000-00-00', 'K1503000101592', '7596*'),
(160, 6, 'FEBRI LIANTINA PUTRI', '', '0000-00-00', 'K1503000101609', '6202*'),
(161, 6, 'HASRIANI', '', '0000-00-00', 'K1503000101618', '0641*'),
(162, 6, 'HENI HANDAYANI', '', '0000-00-00', 'K1503000101627', '3750*'),
(163, 6, 'INDRA DARMA KUSUMA', '', '0000-00-00', 'K1503000101636', '3165*'),
(164, 6, 'IRA ADI YANTI', '', '0000-00-00', 'K1503000101645', '6813*'),
(165, 6, 'IRMA RISKIANI', '', '0000-00-00', 'K1503000101654', '6123*'),
(166, 6, 'M. RIZKI TIRTA MAULANA', '', '0000-00-00', 'K1503000101663', '2049*'),
(167, 6, 'M. ZULPAHRI', '', '0000-00-00', 'K1503000101672', '5479*'),
(168, 6, 'MUH. AZHAR', '', '0000-00-00', 'K1503000101689', '9704*'),
(169, 6, 'MUHAMMAD FARDIANSYAH', '', '0000-00-00', 'K1503000101698', '1602*'),
(170, 6, 'MUHAMMAD IHSAN', '', '0000-00-00', 'K1503000101707', '1410*'),
(171, 6, 'NOOR PUTRI DISNAYANTI', '', '0000-00-00', 'K1503000101716', '4102*'),
(172, 6, 'NOVIA VITRIANA', '', '0000-00-00', 'K1503000101725', '1615*'),
(173, 6, 'NUR ASHILA ZALNA', '', '0000-00-00', 'K1503000101734', '0928*'),
(174, 6, 'PRATAMA PUTRI', '', '0000-00-00', 'K1503000101743', '3074*'),
(175, 6, 'PUTRI AYU', '', '0000-00-00', 'K1503000101752', '5628*'),
(176, 6, 'PUTRI NOR JAMILA', '', '0000-00-00', 'K1503000101769', '9479*'),
(177, 6, 'RACHMAD AL KAUSAR', '', '0000-00-00', 'K1503000101778', '9649*'),
(178, 6, 'RAHMA YUNITA', '', '0000-00-00', 'K1503000101787', '9355*'),
(179, 6, 'RANDA RAMADHAN', '', '0000-00-00', 'K1503000101796', '4837*'),
(180, 6, 'RISKA MAULIDA', '', '0000-00-00', 'K1503000101805', '0701*'),
(181, 6, 'SAHDATUL AZWAD', '', '0000-00-00', 'K1503000101814', '6767*'),
(182, 6, 'TINA FEBRIANA', '', '0000-00-00', 'K1503000101823', '4604*'),
(183, 7, 'ALVIRA AVISAH RAMLI', '', '0000-00-00', 'K1503000101832', '8384*'),
(184, 7, 'ANANG EFFENDY', '', '0000-00-00', 'K1503000101849', '6210*'),
(185, 7, 'ARIANTO', '', '0000-00-00', 'K1503000101858', '8632*'),
(186, 7, 'ARUN TOHIR', '', '0000-00-00', 'K1503000101867', '2936*'),
(187, 7, 'DINDA SUHARTINA', '', '0000-00-00', 'K1503000101876', '8156*'),
(188, 7, 'FITRIANI', '', '0000-00-00', 'K1503000101885', '8259*'),
(189, 7, 'HASRIADI SAPUTRA', '', '0000-00-00', 'K1503000101894', '0546*'),
(190, 7, 'IIN ANDRIANI', '', '0000-00-00', 'K1503000101903', '8685*'),
(191, 7, 'INDAH PURWANDARI', '', '0000-00-00', 'K1503000101912', '7828*'),
(192, 7, 'ISMA YULIANA', '', '0000-00-00', 'K1503000101929', '1913*'),
(193, 7, 'LATIFAH', '', '0000-00-00', 'K1503000101938', '2787*'),
(194, 7, 'M. RIZKI FAUZAN SYAHBANI', '', '0000-00-00', 'K1503000101947', '9657*'),
(195, 7, 'MUHAMMAD ADAM', '', '0000-00-00', 'K1503000101956', '0705*'),
(196, 7, 'MUHAMMAD FIRHAN', '', '0000-00-00', 'K1503000101965', '2540*'),
(197, 7, 'MUHAMMAD RENALDY', '', '0000-00-00', 'K1503000101974', '0566*'),
(198, 7, 'MULTAZAM', '', '0000-00-00', 'K1503000101983', '9637*'),
(199, 7, 'NOOR ALLIFAH', '', '0000-00-00', 'K1503000101992', '7753*'),
(200, 7, 'NOPA SUSI FITRIANA', '', '0000-00-00', 'K1503000102009', '0182*'),
(201, 7, 'NORHALIFAH', '', '0000-00-00', 'K1503000102018', '9741*'),
(202, 7, 'NUR REZKY OKTAVIANA', '', '0000-00-00', 'K1503000102027', '1808*'),
(203, 7, 'NURMANIDA', '', '0000-00-00', 'K1503000102036', '1043*'),
(204, 7, 'RABIYATUL ADANIN', '', '0000-00-00', 'K1503000102045', '0051*'),
(205, 7, 'RAHMATULLAH', '', '0000-00-00', 'K1503000102054', '4236*'),
(206, 7, 'RIZKY FAJAR MAULANA', '', '0000-00-00', 'K1503000102063', '4914*'),
(207, 7, 'SALSA ELLYA DILLA AGUSTINA', '', '0000-00-00', 'K1503000102072', '0689*'),
(208, 7, 'SITI NORHALISA', '', '0000-00-00', 'K1503000102089', '3311*'),
(209, 7, 'SUPRIYANTO', '', '0000-00-00', 'K1503000102098', '1776*'),
(210, 7, 'TAUFIK HARDANI', '', '0000-00-00', 'K1503000102107', '0081*'),
(211, 7, 'THIESNA JULIATI', '', '0000-00-00', 'K1503000102116', '1914*'),
(212, 7, 'YUNI KARTIKA', '', '0000-00-00', 'K1503000102125', '6758*'),
(213, 8, 'AHMAD ZAINI', '', '0000-00-00', 'K1503000102134', '7644*'),
(214, 8, 'AKHMAD ALFIANI', '', '0000-00-00', 'K1503000102143', '2226*'),
(215, 8, 'ANJELI', '', '0000-00-00', 'K1503000102152', '1161*'),
(216, 8, 'ANTIKA PERMATA DEWI', '', '0000-00-00', 'K1503000102169', '3799*'),
(217, 8, 'BAYU ADI PUTRA', '', '0000-00-00', 'K1503000102178', '5292*'),
(218, 8, 'EMA SEPTIYANA', '', '0000-00-00', 'K1503000102187', '6171*'),
(219, 8, 'FARAH DIBA SIFA', '', '0000-00-00', 'K1503000102196', '8467*'),
(220, 8, 'FEBRY ARISANDY', '', '0000-00-00', 'K1503000102205', '5577*'),
(221, 8, 'FITRI HANDAYANI', '', '0000-00-00', 'K1503000102214', '5243*'),
(222, 8, 'GUSTI MAULIDA', '', '0000-00-00', 'K1503000102223', '0693*'),
(223, 8, 'JANATUL HUSNA', '', '0000-00-00', 'K1503000102232', '8132*'),
(224, 8, 'LISDAWATI', '', '0000-00-00', 'K1503000102249', '3145*'),
(225, 8, 'M. ABDI NOR RISKY', '', '0000-00-00', 'K1503000102258', '4804*'),
(226, 8, 'M. RAMADHAN', '', '0000-00-00', 'K1503000102267', '6597*'),
(227, 8, 'M. SUPIAN', '', '0000-00-00', 'K1503000102276', '0261*'),
(228, 8, 'M. WAHYUDI', '', '0000-00-00', 'K1503000102285', '7945*'),
(229, 8, 'MILENISA', '', '0000-00-00', 'K1503000102294', '2410*'),
(230, 8, 'MISDA HARIANTI NABILA', '', '0000-00-00', 'K1503000102303', '0019*'),
(231, 8, 'MUHAMMAD BAYU', '', '0000-00-00', 'K1503000102312', '8554*'),
(232, 8, 'MUHAMMAD RIDWAN', '', '0000-00-00', 'K1503000102329', '7269*'),
(233, 8, 'NADYA RISKY', '', '0000-00-00', 'K1503000102338', '0670*'),
(234, 8, 'NOVIA LISTYANI', '', '0000-00-00', 'K1503000102347', '0323*'),
(235, 8, 'RAUDHATUL JANNAH', '', '0000-00-00', 'K1503000102356', '8256*'),
(236, 8, 'RISDALIPAH', '', '0000-00-00', 'K1503000102365', '0819*'),
(237, 8, 'RIYO SAPUTRA', '', '0000-00-00', 'K1503000102374', '8448*'),
(238, 8, 'RUSMIATI ARRUAN LANGI', '', '0000-00-00', 'K1503000102383', '6594*'),
(239, 8, 'SAHRUL MAN', '', '0000-00-00', 'K1503000102392', '9295*'),
(240, 8, 'SELA FITRIANI', '', '0000-00-00', 'K1503000102409', '1671*'),
(241, 8, 'SELAMAT ARIYADI', '', '0000-00-00', 'K1503000102418', '9949*'),
(242, 8, 'SERLIYANA', '', '0000-00-00', 'K1503000102427', '1411*'),
(243, 8, 'SHERLIANTI', '', '0000-00-00', 'K1503000102436', '6794*'),
(244, 8, 'SITI MUSAROFAH', '', '0000-00-00', 'K1503000102445', '9867*'),
(245, 8, 'ST. AISYAH HERFIYANTI', '', '0000-00-00', 'K1503000102454', '8420*'),
(246, 8, 'SUKMAWATI', '', '0000-00-00', 'K1503000102463', '2522*'),
(247, 8, 'WANDATIKA HERLINA PURWANTI', '', '0000-00-00', 'K1503000102472', '5729*'),
(248, 9, 'AHMAD RIZALUL FAHMI', '', '0000-00-00', 'K1503000102489', '9257*'),
(249, 9, 'ANDI ANDRE AL-AMIN', '', '0000-00-00', 'K1503000102498', '2047*'),
(250, 9, 'ANISA MUSDALIFAH', '', '0000-00-00', 'K1503000102507', '0686*'),
(251, 9, 'DEWI SHINTA', '', '0000-00-00', 'K1503000102516', '7966*'),
(252, 9, 'EMA KIFTIAH', '', '0000-00-00', 'K1503000102525', '0838*'),
(253, 9, 'ERNASARI', '', '0000-00-00', 'K1503000102534', '1528*'),
(254, 9, 'FAHRAZI', '', '0000-00-00', 'K1503000102543', '2860*'),
(255, 9, 'HUMAIRAH DELLA TUNNAHDIAH', '', '0000-00-00', 'K1503000102552', '8525*'),
(256, 9, 'IRSANSYAH. M', '', '0000-00-00', 'K1503000102569', '5039*'),
(257, 9, 'ITA NOR NITA', '', '0000-00-00', 'K1503000102578', '5922*'),
(258, 9, 'KARMILA', '', '0000-00-00', 'K1503000102587', '6380*'),
(259, 9, 'MASHUR RIDA', '', '0000-00-00', 'K1503000102596', '1645*'),
(260, 9, 'MAULIDA SARI RAHMITA', '', '0000-00-00', 'K1503000102605', '3159*'),
(261, 9, 'MUHAMMAD ARSYAD RIZALDI', '', '0000-00-00', 'K1503000102614', '3992*'),
(262, 9, 'MUHAMMAD IRFANSYAH', '', '0000-00-00', 'K1503000102623', '0050*'),
(263, 9, 'MUHAMMAD IRWANSYAH', '', '0000-00-00', 'K1503000102632', '1517*'),
(264, 9, 'NUR FAUZIAH', '', '0000-00-00', 'K1503000102649', '8268*'),
(265, 9, 'RAHMIYATI', '', '0000-00-00', 'K1503000102658', '1908*'),
(266, 9, 'RAMA ADITIA', '', '0000-00-00', 'K1503000102667', '8439*'),
(267, 9, 'RISKA HANDINI', '', '0000-00-00', 'K1503000102676', '1404*'),
(268, 9, 'RISMAWATI', '', '0000-00-00', 'K1503000102685', '9246*'),
(269, 9, 'RISMAYANI', '', '0000-00-00', 'K1503000102694', '9725*'),
(270, 9, 'SAHRIANUR', '', '0000-00-00', 'K1503000102703', '9717*'),
(271, 9, 'SHINTA OKTAVIA HAIDA', '', '0000-00-00', 'K1503000102712', '5755*'),
(272, 9, 'SITI HALIMATUS\'SADIAH', '', '0000-00-00', 'K1503000102729', '7297*'),
(273, 9, 'SITI NORMADIAH', '', '0000-00-00', 'K1503000102738', '2835*'),
(274, 9, 'SITI RAHMAH', '', '0000-00-00', 'K1503000102747', '9165*'),
(275, 9, 'YAHYA ARSANDI', '', '0000-00-00', 'K1503000102756', '6562*'),
(276, 9, 'YULIANA SAPUTRI', '', '0000-00-00', 'K1503000102765', '7026*'),
(277, 10, 'AKHMAD MAKHRAJA', '', '0000-00-00', 'K1503000102774', '9862*'),
(278, 10, 'ANNISA MAULIDA', '', '0000-00-00', 'K1503000102783', '4592*'),
(279, 10, 'ARIF BAHRIAN NOOR', '', '0000-00-00', 'K1503000102792', '2553*'),
(280, 10, 'ASTI', '', '0000-00-00', 'K1503000102809', '8982*'),
(281, 10, 'Dewi Herlina', '', '0000-00-00', 'K1503000102818', '2436*'),
(282, 10, 'DEWI SUSANTI', '', '0000-00-00', 'K1503000102827', '0633*'),
(283, 10, 'DINA HARIYANTI', '', '0000-00-00', 'K1503000102836', '1602*'),
(284, 10, 'DINA MARIANA', '', '0000-00-00', 'K1503000102845', '0389*'),
(285, 10, 'FITRI SRI WAHYUNI', '', '0000-00-00', 'K1503000102854', '1737*'),
(286, 10, 'GUNTUR MATHORY', '', '0000-00-00', 'K1503000102863', '9806*'),
(287, 10, 'HELVA HERLIANIDA', '', '0000-00-00', 'K1503000102872', '4029*'),
(288, 10, 'HELVI HERLIANDA', '', '0000-00-00', 'K1503000102889', '3908*'),
(289, 10, 'IKHSAN FAJRIANTO', '', '0000-00-00', 'K1503000102898', '3370*'),
(290, 10, 'LIANI MELYSA', '', '0000-00-00', 'K1503000102907', '9284*'),
(291, 10, 'MARIAH', '', '0000-00-00', 'K1503000102916', '4343*'),
(292, 10, 'MUHAMMAD FAHKRUL RODZIE', '', '0000-00-00', 'K1503000102925', '6451*'),
(293, 10, 'MUHAMMAD FAZAR', '', '0000-00-00', 'K1503000102934', '9924*'),
(294, 10, 'MUHAMMAD PATHUR RAHMAN FADILLAH', '', '0000-00-00', 'K1503000102943', '2182*'),
(295, 10, 'NUR FITRIA ELFINA', '', '0000-00-00', 'K1503000102952', '6759*'),
(296, 10, 'NURUL HIKMAH', '', '0000-00-00', 'K1503000102969', '8109*'),
(297, 10, 'PUTRI LIANA', '', '0000-00-00', 'K1503000102978', '5833*'),
(298, 10, 'RAHMAD RAMADHAN', '', '0000-00-00', 'K1503000102987', '1828*'),
(299, 10, 'RISNAWATI', '', '0000-00-00', 'K1503000102996', '6646*'),
(300, 10, 'SAMSURI ALAM', '', '0000-00-00', 'K1503000103005', '1695*'),
(301, 10, 'SANDY SAPUTRA', '', '0000-00-00', 'K1503000103014', '4343*'),
(302, 10, 'SELFI ALDI OKTAVIA', '', '0000-00-00', 'K1503000103023', '4004*'),
(303, 10, 'SINTA SUSANA', '', '0000-00-00', 'K1503000103032', '0879*'),
(304, 10, 'SUCI WAHYUNI', '', '0000-00-00', 'K1503000103049', '6160*'),
(305, 10, 'SYAYID FAISAL HUSMAIDI', '', '0000-00-00', 'K1503000103058', '6087*'),
(306, 10, 'VENY ASRIANI', '', '0000-00-00', 'K1503000103067', '3589*'),
(307, 10, 'YUNI KARTIKA', '', '0000-00-00', 'K1503000103076', '8525*'),
(308, 11, 'ARFELI', '', '0000-00-00', 'K1503000103085', '0852*'),
(309, 11, 'ASLANG', '', '0000-00-00', 'K1503000103094', '4256*'),
(310, 11, 'BIMA HAIRUL ASYIKIN', '', '0000-00-00', 'K1503000103103', '3109*'),
(311, 11, 'DARMANSYAH', '', '0000-00-00', 'K1503000103112', '1752*'),
(312, 11, 'DESTY ARIANI', '', '0000-00-00', 'K1503000103129', '4612*'),
(313, 11, 'IIN AGUSTINA PURWASIH', '', '0000-00-00', 'K1503000103138', '8685*'),
(314, 11, 'LISDA ARIANTI', '', '0000-00-00', 'K1503000103147', '8125*'),
(315, 11, 'LUSIA KOSASIH', '', '0000-00-00', 'K1503000103156', '3406*'),
(316, 11, 'MUHAMAD SYARIFUDIN NOOR', '', '0000-00-00', 'K1503000103165', '0139*'),
(317, 11, 'MUHAMMAD AMIN AINAL YAKIN', '', '0000-00-00', 'K1503000103174', '4919*'),
(318, 11, 'MUHAMMAD DANIL', '', '0000-00-00', 'K1503000103183', '3500*'),
(319, 11, 'MUHAMMAD GALANG ANARKI', '', '0000-00-00', 'K1503000103192', '2016*'),
(320, 11, 'MUHAMMAD HUSIEN', '', '0000-00-00', 'K1503000103209', '3883*'),
(321, 11, 'MUHAMMAD TAUFIK HIDAYAT', '', '0000-00-00', 'K1503000103218', '9011*'),
(322, 11, 'NIA PADILA', '', '0000-00-00', 'K1503000103227', '8398*'),
(323, 11, 'NINA ASTUTI', '', '0000-00-00', 'K1503000103236', '1714*'),
(324, 11, 'NOR HANA', '', '0000-00-00', 'K1503000103245', '3198*'),
(325, 11, 'NOVIA RUSTINA', '', '0000-00-00', 'K1503000103254', '6274*'),
(326, 11, 'NUR AFNI', '', '0000-00-00', 'K1503000103263', '2404*'),
(327, 11, 'RASWAN', '', '0000-00-00', 'K1503000103272', '0332*'),
(328, 11, 'REYKI PRADANA', '', '0000-00-00', 'K1503000103289', '1578*'),
(329, 11, 'RISKIA RAHMA', '', '0000-00-00', 'K1503000103298', '9499*'),
(330, 11, 'SAMSUDIN DANDI', '', '0000-00-00', 'K1503000103307', '7167*'),
(331, 11, 'SELVI', '', '0000-00-00', 'K1503000103316', '1468*'),
(332, 11, 'SYAIFUL RAHIM', '', '0000-00-00', 'K1503000103325', '3081*'),
(333, 11, 'WAHYUDIN', '', '0000-00-00', 'K1503000103334', '9109*'),
(334, 1, 'Hendri Arifin, S.Kom', '2212', '0000-00-00', 'hendri', 'hendri');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `soal_id` int(11) NOT NULL,
  `soal_pelajaran` int(11) NOT NULL,
  `soal_deskripsi` text NOT NULL,
  `soal_jwb1` varchar(200) NOT NULL,
  `soal_jwb2` varchar(200) NOT NULL,
  `soal_jwb3` varchar(200) NOT NULL,
  `soal_jwb4` varchar(200) NOT NULL,
  `soal_jwb5` varchar(200) NOT NULL,
  `soal_jawaban` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`, `soal_jwb1`, `soal_jwb2`, `soal_jwb3`, `soal_jwb4`, `soal_jwb5`, `soal_jawaban`) VALUES
(1, 1, '						<div>ayam dan telur duluan mana ?<br></div>', 'ayam', 'telur ayam', 'jantan', 'betina', 'anak', 'ayam'),
(2, 1, '												<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/972f643314609feee29b3736f8564282.png\" width=\"931\"><br><div>siapa presiden pertama indonesia ?</div>										', 'BJ. Habibie', 'megawati', 'sby', 'jokowi', 'soekarno', 'soekarno'),
(3, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b1331cb15384d8f807cf6e8b510e2dc4.png\" width=\"331\"><br>', '21/5<br>', '20/5<br>', '12/5<br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e650146d4097584daaf4275975e7c450.png\" width=\"75\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/694c23bc428e5651bc3f14484032d652.png\" width=\"69\"><br>', '12/5<br>'),
(4, 6, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/9c27203e8f5b564be9693ee8b6d570f3.png\" width=\"331\"><br>', '21/5<br>', '20/5<br>', '12/5<br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d3b8a16778c0b254b04df51d00bfae6f.png\" width=\"75\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/99b54c9822c6af5d3707322583717194.png\" width=\"69\"><br>', '12/5<br>'),
(5, 3, '						<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/be26d4410e537d4188edd54dc36e5438.png\" width=\"651\"><br>				', '<div>x+y?82;3x+2y?210;x?0;y?0 </div><div><br></div>', 'a', 'b', 'c', 'g', 'g'),
(6, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8b6b9751ecd659afe53878504e6f7fa2.png\" width=\"591\"><br>', '-3<br>', '-2<br>', '1<br>', '4<br>', '5<br>', '-2<br>'),
(7, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/dbba28307ed5a074f304c2d57ad99c8f.png\" width=\"434\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/0725f7250d95002e7f721e8df7254879.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d0c4e429f37f51ba9586e5e1b000d0e8.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b5783e350fbf0c8e3af10c81aeb8add8.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/fcc5556d3fb96c2dd57e435047a0d2a0.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/ce931470513d032e9d23c3da48b4ad05.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/fcc5556d3fb96c2dd57e435047a0d2a0.png\" width=\"147\"><br>'),
(8, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/9d2ae5494b11445b2a97b694c6908b5e.png\" width=\"620\"><br>', '12/23<br>', '21/46<br>', '-1/2<br>', '- 21/46<br>', '- 12/23<br>', '- 21/46<br>'),
(9, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/71c7c2355f1c072a5bda583f2a83529f.png\" width=\"829\"><br>', '-6<br>', '-2<br>', '2<br>', '4<br>', '8<br>', '2<br>'),
(10, 3, 'Reza belanja di toko buah “Harum” 2 kg manggis dan 3 kg kelengkeng dan membayar Rp97.000,00. Harga 3 kg manggis dan 1 kg kelengkeng di tempat yang sama adalah Rp91.000,00. Harga 1 kg apel dan 1 kg jeruk adalah .... <br>', 'Rp33.000,00<br>', 'Rp34.000,00<br>', 'Rp35.000,00<br>', 'Rp36.000,00<br>', 'Rp37.000,00<br>', 'Rp36.000,00<br>'),
(11, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/145852af5163b2b259980066f535425d.png\" width=\"861\"><br>', '0,125<br>', '1,250<br>', '0,500<br>', '0,750<br>', '-0,125<br>', '1,250<br>'),
(12, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/1cb4bbee16a15d85453908230e31fb14.png\" width=\"750\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cc6f0081dcc3c8b90e8ac6f866ca22b5.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e7b57ca5b94a7c9cb0242cbdb57d6b22.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/9c624347a7d9f27c4a32b90b9838858e.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/f48d608e3c0780acf0bad98512f394fd.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/dc59bdd077035ce670a85d8d31d77ba8.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e7b57ca5b94a7c9cb0242cbdb57d6b22.png\" width=\"111\"><br>'),
(13, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/bfaa1f45b70f1d32a94ac411f424f8f0.png\" width=\"836\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/4eaa4d089761aad66f99ecf042b20c56.png\" width=\"75\"><br>', '-1<br>', '3/4<br>', '1<br>', '1 1/3<br>', '1 1/3<br>'),
(14, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/582fdff23b816aa4ad7105fb0bfb5c89.png\" width=\"528\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cc2154e500a6f74cd23c3b21e3e8c6fb.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/0df09b3101ff7b152eb2f8a19584d477.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/543d4737d6ba8ac26581fa4de5ed857e.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cf617bf89d8d3a8549f77c4b874771c9.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/6a55615ec8d8eb6ec38565a0969e133b.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cf617bf89d8d3a8549f77c4b874771c9.png\" width=\"81\"><br>'),
(15, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/17184eb8fa7092b5fe4456258dec7830.png\" width=\"624\"><br>', 'I', 'II', 'III', 'IV', 'V', 'II'),
(16, 3, '<div>Suku ke-4 dan ke-7 dari suatu deret geometri berturut-turut adalah&nbsp; 1/9 dan 1/243 Jumlah lima suku pertama deret tersebut adalah ….</div><div><br></div>', '61/27', '40/9', '121/27', '820/9', '7381/81', '121/27'),
(17, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e101cdf01a920251ab6afce1f32dfd0e.png\" width=\"476\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/c5345f0372ad5d27a7bfe0f99bee229a.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e3eeb1086c13856c060c0c2f3513a327.png\" width=\"83\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/3c2abb57c3766b0976cefeea09ce8355.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/ddcd1d22d20219104d8774b4053d19ed.png\" width=\"100\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8422dca0b60227377d52971786df7c1b.png\" width=\"82\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8422dca0b60227377d52971786df7c1b.png\" width=\"82\"><br>'),
(18, 3, '			<div>Sebuah pesawat penerbangan domestik mempunyai tempat duduk tidak lebih dari 82 kursi. Setiap penumpang kelas utama boleh membawa bagasi 30 kg sedang untuk kelas ekonomi 20 kg. Pesawat itu hanya dapat membawa bagasi maksimum 2.100 kg. Bila x dan y berturut-turut menyatakan banyak penumpang kelas utama dan ekonomi, maka model matematika dari persoalan di atas adalah ……</div><div><br></div>		', '<div>x+y?82;3x+2y?210;x?0;y?0 </div><div><br></div>', '<div><div>x+y?82;3x+2y?210;x?0;y?0</div></div>', '<div>x+y?82;3x+2y?210;x?0;y?0</div>', '<div>x+y?82;2x+3y?210;x?0;y?0</div>', '<div>x+y?82;2x+3y?210;x?0;y?0</div>', '<div>x+y?82;3x+2y?210;x?0;y?0 </div><div><br></div>'),
(19, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d85ee00d61fb1605d57396be785e9519.png\" width=\"621\"><br>', '-53', '-51', '-45', '-32', '-25', '-25'),
(20, 3, '<div>Diketahui suku ke-5 dari barisan aritmatika adalah 21 dan jumlah suku ke-2 dan suku ke-4 adalah 26. Suku ke-50 dari barisan aritmatika tersebut adalah....</div><div><br></div>', '198<br>', '200<br>', '201<br>', '203<br>', '<div>205</div>', '201<br>'),
(21, 3, '<div>Dari suatu barisan geometri diketahui suku pertamanya 3 dan suku ke-5 = 48. Besar suku ke-7 dari barisan tersebut adalah ....</div><div><br></div>', '96', '144', '164', '182', '192', '192'),
(22, 3, '<div>Jumlah deret geometri tak hingga adalah 28 dan suku pertamanya 8. Rasio deret tersebut adalah ….</div><div><br></div>', '6/7', '5/7', '2/7', '1/7', '1/4', '5/7'),
(23, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b456e5aa69d04f8e064faf7adf807761.png\" width=\"471\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/fbf5524fe6443795941185c783242f53.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/f97e6256a13a1e5176e27f693ffe1815.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/6b9374e1c79da10c869738744bd517b2.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/454aeca12750f868a87f304aa2bf676f.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/72a554ff035df1b0406a834f4e97dbef.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/72a554ff035df1b0406a834f4e97dbef.png\" width=\"44\"><br>'),
(24, 3, '<div>Diketahui kubus ABCD.EFGH dengan panjang rusuk 8 cm.</div><div>Titik K adalah titik tengah EH. Jarak K terhadap garis AG adalah ....</div><div><br></div>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d06ca4b49462c13858674205cd5f505b.png\" width=\"65\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/f85c8a41473978d14af27679b08e95e5.png\" width=\"66\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/c6f98a5c10e41b6f63edcc7f31c03668.png\" width=\"59\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/105b8e83d7170e7ce6a3a3b8660ac60a.png\" width=\"58\"><br>', '4', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/c6f98a5c10e41b6f63edcc7f31c03668.png\" width=\"59\"><br>'),
(25, 3, '<div>Diketahui segitiga ABC mempunyai panjang sisi AB = 12 cm, panjang sisi AC = 14 cm dan&nbsp;&nbsp;<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b2063297f92fe430c791177ca76625f5.png\" width=\"20\">BAC = 300. Luas segitiga ABC adalah ....</div>', '21 satuan luas<br>', '24 satuan luas<br>', '36 satuan luas<br>', '42 satuan luas<br>', '84 satuan luas<br>', '42 satuan luas<br>'),
(26, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/0b7aa45b8a6117f5e07a71f7eafed841.png\" width=\"617\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/5664b8722c89765648646dce84432d64.png\" width=\"199\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/a3032ae531b0feb31bfc7223e4c2b058.png\" width=\"216\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/a9d0932bb982b4fa2a34c6f2cce3f75c.png\" width=\"208\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d896e4d35643cd9ed4876f4109603396.png\" width=\"186\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/82d6302d7c872879685a1d2f04877974.png\" width=\"202\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/82d6302d7c872879685a1d2f04877974.png\" width=\"202\"><br>'),
(27, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/6cce64d0b67014fa3bef98144260795c.png\" width=\"610\"><br>', '3x – 4y =25<br>', '3x + 4y =25<br>', '4x – 3y =25<br>', '4x + 3y =25<br>', '–4x + 3y =25<br>', '4x – 3y =25<br>'),
(28, 3, '<div>Titik A (-5, 2) direfleksikan terhadap garis y=-x dilanjutkan rotasi 90° searah&nbsp; jarum jam. Bayangan titik A adalah ....</div><div><br></div>', '(5,2)<br>', '(5,-2)<br>', '(-2,5)<br>', '(-2,-5)&nbsp;<br>', '(-5,-2)<br>', '(5,2)<br>'),
(29, 3, '<div>Ingkaran dari pernyataan “Jika semua pengendara patuh terhadap rambu-rambu lalu lintas maka lalu lintas lancar” adalah …</div><div><br></div>', '<div>Lalu lintas lancar dan semua pengendara patuh terhadap rambu-rambu lalu&nbsp; &nbsp; lintas.</div>', '<div>Semua pengendara patuh terhadap rambu-rambu lalu lintas atau lalu lintas tidak lancar.</div>', '<div>Semua pengendara patuh terhadap rambu-rambu lalu lintas tetapi lalu lintas tidak lancar.</div>', '<div>Jalan raya tidak lancar dan semua pengendara patuh terhadap rambu-rambu lalu lintas.</div><div><br></div>', '<div>Lalu lintas tidak lancar dan ada pengendara yang tidak patuh terhadap rambu-rambu lalu lintas.</div>', '<div>Semua pengendara patuh terhadap rambu-rambu lalu lintas tetapi lalu lintas tidak lancar.</div>'),
(30, 3, '<div>Dua dadu dilempar undi bersama-sama satu kali, peluang muncul dua sisi dadu bermata sama adalah ....</div>', '4/36', '6/36', '8/36', '10/36', '12/36', '6/36'),
(31, 3, '<div>Diketahui premis-premis berikut:</div><div>Premis P1 : Jika ia beramal maka ia disenangi masyarakat.</div><div>Premis P2 : Ia tidak disenangi masyarakat.</div><div>Kesimpulan yang sah dari kedua premis adalah ….</div>', 'Ia beramal<br>', 'Ia tidak beramal<br>', '<div>Ia beramal tetapi tidak disenangi masyarakat</div>', '<div>Ia tidak beramal tetapi disenangi masyarakat</div>', '<div>Ia tidak beramal dan tidak disenangi masyarakat</div>', 'Ia tidak beramal<br>'),
(32, 3, '29.<span style=\"white-space:pre\">	</span>Perhatikan diagram di bawah !<br><div><img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/41e8cb626c96dbe67c573ee412d2506b.png\" width=\"221\"><br></div><div>Diagram tentang hasil pertanian di kampung makmur. Jika panen kacang mencapai 3,5 ton, maka hasil panen jagung mencapai … ton.&nbsp;<br></div>', '2,4', '3,0', '3,6', '4,0', '18,0', '4,0'),
(33, 3, 'Koperasi siswa mendata hasil penjualan kaos kaki setiap bulan. Diagram batang berikut menyatakan banyaknya penjualan kaos kaki selama tahun 2017.&nbsp;<br><div><img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b60db99929bb9b8a1e941ad892ce98d7.png\" width=\"511\"><br></div><div>Persentase penjualan terbesar terjadi pada bulan .....<br></div>', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Mei'),
(34, 3, '<div>Dari 100 sampel data diketahui nilai terbesarnya 92 dan terkecil 36. Dari data tersebut akan dibuat tabel distribusi frekuensi, dengan menggunakan aturan Sturgess maka panjang kelas dari data tersebut adalah....</div>', '5', '6', '7', '8', '9', '7'),
(35, 3, 'Perhatikan tabel berikut !<div><img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d4e3395ad630da83c0d03dd19ffd51d9.png\" width=\"220\"><br></div><div><div>Modus dari data di atas adalah ……</div></div><div><br></div>', '135,875<br>', '136,375<br>', '136,875<br>', '137,378&nbsp;<br>', '137,875<br>', '137,378&nbsp;<br>'),
(36, 3, '<div>Kuartil atas dari data: 4, 8, 6, 9, 8, 5, 7, 9, 5 adalah ....</div><div><br></div>', '5,00<br>', '7,00<br>', '8,50<br>', '8,75<br>', '9,00', '8,50<br>'),
(37, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/464f2065227e48799ed3717d5b62ebee.png\" width=\"174\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/88147315c3126d2ace253ef4fb1843c7.png\" width=\"151\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/de0ec6b8805fe9ce757f55204eec2024.png\" width=\"141\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8c48eec5a97c31682359e99f0b33165f.png\" width=\"149\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e0713b2b29e22dbff6f0ae81b48df973.png\" width=\"151\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/009ea87b35e11ee33e4574703c8f56ca.png\" width=\"150\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/de0ec6b8805fe9ce757f55204eec2024.png\" width=\"141\"><br>'),
(38, 1, 'e', 'e', '<br>', '<br>', '<br>', '<br>', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `token` varchar(6) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `id_kelas`, `id_pelajaran`, `token`, `status`) VALUES
(1, 1, 1, 'URZQQV', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ujian_jawaban`
--

CREATE TABLE `ujian_jawaban` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `soal_id` int(11) DEFAULT NULL,
  `jawaban` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian_jawaban`
--

INSERT INTO `ujian_jawaban` (`id`, `ujian_id`, `siswa_id`, `soal_id`, `jawaban`) VALUES
(1, 1, 334, 1, 'ayam'),
(2, 1, 334, 2, 'BJ. Habibie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `essay`
--
ALTER TABLE `essay`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `fk_soal_pelajaran` (`soal_pelajaran`);

--
-- Indexes for table `essay_jawaban`
--
ALTER TABLE `essay_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jawaban_ujian` (`ujian_id`),
  ADD KEY `fk_jawaban_siswa` (`siswa_id`),
  ADD KEY `fk_jawaban_soal` (`soal_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id_record`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_pelajaran` (`id_pelajaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `fk_soal_pelajaran` (`soal_pelajaran`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`),
  ADD UNIQUE KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_pelajaran` (`id_pelajaran`);

--
-- Indexes for table `ujian_jawaban`
--
ALTER TABLE `ujian_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jawaban_ujian` (`ujian_id`),
  ADD KEY `fk_jawaban_siswa` (`siswa_id`),
  ADD KEY `fk_jawaban_soal` (`soal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `essay`
--
ALTER TABLE `essay`
  MODIFY `soal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essay_jawaban`
--
ALTER TABLE `essay_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id_record` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `soal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ujian_jawaban`
--
ALTER TABLE `ujian_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `essay`
--
ALTER TABLE `essay`
  ADD CONSTRAINT `essay_ibfk_1` FOREIGN KEY (`soal_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Constraints for table `essay_jawaban`
--
ALTER TABLE `essay_jawaban`
  ADD CONSTRAINT `essay_jawaban_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `essay_jawaban_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `essay` (`soal_id`),
  ADD CONSTRAINT `essay_jawaban_ibfk_3` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id_ujian`);

--
-- Constraints for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD CONSTRAINT `pelajaran_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE;

--
-- Constraints for table `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_soal_pelajaran` FOREIGN KEY (`soal_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Constraints for table `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `ujian_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `ujian_ibfk_2` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Constraints for table `ujian_jawaban`
--
ALTER TABLE `ujian_jawaban`
  ADD CONSTRAINT `ujian_jawaban_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `ujian_jawaban_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `soal` (`soal_id`),
  ADD CONSTRAINT `ujian_jawaban_ibfk_3` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id_ujian`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `token_event_1` ON SCHEDULE EVERY 15 MINUTE STARTS '2019-03-08 11:25:32' ON COMPLETION PRESERVE ENABLE DO UPDATE ujian SET token=lpad(conv(floor(rand()*pow(36,6)), 10, 36), 6, 0),status=0 WHERE id_ujian='1'$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

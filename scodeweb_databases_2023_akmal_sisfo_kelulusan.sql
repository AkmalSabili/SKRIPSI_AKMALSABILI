-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2023 at 09:59 AM
-- Server version: 10.6.14-MariaDB-cll-lve-log
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scodeweb_databases_2023_akmal_sisfo_kelulusan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id_admin` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id_admin`, `username`, `password`) VALUES
('ADM001', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `data_format_surat`
--

CREATE TABLE `data_format_surat` (
  `id_format_surat` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `file` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_format_surat`
--

INSERT INTO `data_format_surat` (`id_format_surat`, `nama`, `file`) VALUES
('FOR20230725061525374', 'Surat Keterangan Lulus', '1690267281-68679-surat lulus.docx');

-- --------------------------------------------------------

--
-- Table structure for table `data_jurusan`
--

CREATE TABLE `data_jurusan` (
  `id_jurusan` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_jurusan`
--

INSERT INTO `data_jurusan` (`id_jurusan`, `jurusan`) VALUES
('JUR20230707000830954', 'Multimedia');

-- --------------------------------------------------------

--
-- Table structure for table `data_matapelajaran`
--

CREATE TABLE `data_matapelajaran` (
  `id_matapelajaran` varchar(50) NOT NULL,
  `matapelajaran` varchar(50) NOT NULL,
  `id_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_matapelajaran`
--

INSERT INTO `data_matapelajaran` (`id_matapelajaran`, `matapelajaran`, `id_jurusan`) VALUES
('MAT20230704233612822', 'Bahasa Mandarin', 'JUR20230707000830954'),
('MAT20230704233624638', 'Bahasa Indonesia', 'JUR20230707000830954'),
('MAT20230724233659123', 'Pendidikan Agama dan Budi Pekerti', 'JUR20230707000830954'),
('MAT20230724234021319', 'Pendidikan Pancasila dan Kewarganegaraan', 'JUR20230707000830954'),
('MAT20230724234103565', 'Matematika', 'JUR20230707000830954'),
('MAT20230724234142798', 'Sejarah Indonesia', 'JUR20230707000830954'),
('MAT20230724234156331', 'Bahasa Inggris dan Bahasa Lainnya', 'JUR20230707000830954'),
('MAT20230724234220682', 'Seni Budaya', 'JUR20230707000830954'),
('MAT20230724234353921', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'JUR20230707000830954'),
('MAT20230724234416581', 'Muatan Lokal', 'JUR20230707000830954'),
('MAT20230724234437881', 'Simulasi dan Komunikasi Digital', 'JUR20230707000830954'),
('MAT20230724234455767', 'Fisika', 'JUR20230707000830954'),
('MAT20230724234513316', 'Biologi', 'JUR20230707000830954'),
('MAT20230724234538896', 'Kimia', 'JUR20230707000830954'),
('MAT20230724234550786', 'Dasar Program Keahlian', 'JUR20230707000830954'),
('MAT20230724234618485', 'Kompetensi Keahlian', 'JUR20230707000830954'),
('MAT20230725013024382', 'Bahasa Sunda', 'JUR20230707000830954'),
('MAT20230725013043986', 'Bahasa Jepang', 'JUR20230707000830954'),
('MAT20230725013123541', 'Tahsin Al – Qur’an', 'JUR20230707000830954');

-- --------------------------------------------------------

--
-- Table structure for table `data_nilai`
--

CREATE TABLE `data_nilai` (
  `id_nilai` varchar(50) NOT NULL,
  `id_siswa` varchar(50) NOT NULL,
  `id_matapelajaran` varchar(50) NOT NULL,
  `kelompok_kompetensi` enum('kelompok a','kelompok b','kelompok c') NOT NULL,
  `rata_rata_nilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_nilai`
--

INSERT INTO `data_nilai` (`id_nilai`, `id_siswa`, `id_matapelajaran`, `kelompok_kompetensi`, `rata_rata_nilai`) VALUES
('NIL20230705000957788', 'SIS20230703044351200', 'MAT20230704233624638', 'kelompok a', '80'),
('NIL0121', 'SIS20230703044351200', 'MAT20230704233624638', 'kelompok a', '89'),
('NIL0121', 'SIS20230703044351200', 'MAT20230704233624638', 'kelompok a', '9.99'),
('NIL20230724034909419', 'SIS20230703044351200', 'MAT20230704233612822', 'kelompok a', '99,7'),
('NIL20230724212436939', 'SIS20230703044351200', 'MAT20230704233612822', 'kelompok a', '89,9'),
('NIL20230724234636178', 'SIS20230724215904725', 'MAT20230724233659123', 'kelompok a', '87,00'),
('NIL20230724234824323', 'SIS20230703044351200', 'MAT20230724234021319', 'kelompok a', '90,63'),
('NIL20230724234851366', 'SIS20230703044351200', 'MAT20230704233624638', 'kelompok a', '94,00'),
('NIL20230724234929851', 'SIS20230724215904725', 'MAT20230724234103565', 'kelompok a', '88,00'),
('NIL20230724235018190', 'SIS20230724215904725', 'MAT20230724234142798', 'kelompok a', '70,00'),
('NIL20230724235040984', 'SIS20230724215904725', 'MAT20230724234156331', 'kelompok a', '85,95'),
('NIL20230724235116829', 'SIS20230724215904725', 'MAT20230724234220682', 'kelompok a', '89,00'),
('NIL20230724235155342', 'SIS20230724215904725', 'MAT20230724234353921', 'kelompok b', '89,00'),
('NIL20230724235216108', 'SIS20230724215904725', 'MAT20230724234416581', 'kelompok b', '89,00'),
('NIL20230724235241440', 'SIS20230724215904725', 'MAT20230724234437881', 'kelompok c', '90,63'),
('NIL20230724235317365', 'SIS20230724215904725', 'MAT20230724234455767', 'kelompok c', '90,63'),
('NIL20230724235403967', 'SIS20230724215904725', 'MAT20230724234513316', 'kelompok c', '87,00'),
('NIL20230724235425318', 'SIS20230724215904725', 'MAT20230724234538896', 'kelompok c', '87,00'),
('NIL20230724235504549', 'SIS20230724215904725', 'MAT20230724234550786', 'kelompok c', '91,00'),
('NIL20230724235523266', 'SIS20230724215904725', 'MAT20230724234618485', 'kelompok c', '80,00');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengaturan`
--

CREATE TABLE `data_pengaturan` (
  `id_pengaturan` varchar(50) NOT NULL,
  `nama_aplikasi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_pengaturan`
--

INSERT INTO `data_pengaturan` (`id_pengaturan`, `nama_aplikasi`, `email`, `telepon`, `alamat`, `logo`) VALUES
('PEN20230704235900300', 'Sistem Informasi Kelulusan SMK BHAKTI Kencana Sero', 'smkbhakti@gmail.com', '082329206118', 'Jl. Raya Soreang - Banjaran No.297, Soreang, Kec. Soreang, Kabupaten Bandung, Jawa Barat 40911', '1688533606_f241999b666a0c7a11f9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` varchar(50) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `isn` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki - Laki','Perempuan') NOT NULL,
  `nama_ortu` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_jurusan` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` enum('Lulus','Tidak Lulus') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `nis`, `isn`, `nama_siswa`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `nama_ortu`, `alamat`, `nomor_telepon`, `email`, `id_jurusan`, `username`, `password`, `status`) VALUES
('SIS20230703044351200', '', '', 'asdf', '', '2023-07-03', 'Laki - Laki', '', 'asdf', '234234', 'asdf@mail.com', 'JUR20230707000830954', '123123', '123123', 'Lulus'),
('SIS20230705014328532', '789', '7899', 'Kiki', 'Jambi', '2005-12-12', 'Perempuan', 'budi', 'Jambi', '082329206113', 'kiki@gmail.com', 'JUR20230707000830954', 'kiki', 'kiki', 'Tidak Lulus'),
('SIS20230724204407904', '', '', 'Ayu', 'Jambi', '2000-12-12', 'Perempuan', 'budi', 'jambi', '0818017177', 'ayu@gmail.com', 'JUR20230707000830954', 'ayu', '29c65f781a1068a41f735e1b092546de', 'Lulus'),
('SIS20230724215904725', '1213', '5345', 'dian', 'jambi', '2008-12-12', 'Perempuan', 'budi', 'Jambi', '082918072112', 'dian@gmail.com', 'JUR20230707000830954', 'dian', 'f97de4a9986d216a6e0fea62b0450da9', 'Lulus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

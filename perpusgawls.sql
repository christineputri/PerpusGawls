-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 10:31 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusgawls`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `IDBuku` char(10) NOT NULL,
  `IDKatalog` char(10) DEFAULT NULL,
  `judulBuku` varchar(50) DEFAULT NULL,
  `genreBuku` varchar(50) DEFAULT NULL,
  `tempatBuku` varchar(50) DEFAULT NULL,
  `pengarangBuku` varchar(90) DEFAULT NULL,
  `penerbitBuku` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`IDBuku`, `IDKatalog`, `judulBuku`, `genreBuku`, `tempatBuku`, `pengarangBuku`, `penerbitBuku`) VALUES
('BK70001', 'KG60001', 'Coding Itu Menyenangkan!', 'Pelajaran', 'Rak 1', 'Henry', 'Hendra'),
('BK70002', 'KG60002', 'Anatomi Manusia', 'Pelajaran', 'Rak 2', 'Halim', 'Felix'),
('BK70003', 'KG60003', 'Cara Merangkai Miniatur Pesawat', 'Pelajaran', 'Rak 3', 'Sandra', 'Felicia'),
('BK70004', 'KG60004', 'Ayo hitung Kalori Makananmu Sehari-hari!', 'Gaya Hidup', 'Rak 4', 'Ijah', 'Corla'),
('BK70005', 'KG60005', 'Interior Rumah Modern Edisi Terbaru', 'Rumah', 'Rak 5', 'Lany', 'Selena'),
('BK70006', 'KG60006', 'Kuliah Manajemen Tidak Sesulit Itu', 'Pelajaran', 'Rak 6', 'Vina', 'Dewi'),
('BK70007', 'KG60007', 'Bayar Pajak Itu Wajib!', 'Bisnis', 'Rak 7', 'Jennie', 'Lisa'),
('BK70008', 'KG60008', 'Surat Pisah Harta Wajib atau Tidak?', 'Hukum', 'Rak 8', 'Winni', 'Shelly'),
('BK70009', 'KG60009', 'Bahasa Indonesia Kelas 5 SD', 'Pelajaran', 'Rak 9', 'Yudhistira', 'Putri'),
('BK70010', 'KG60010', 'Mahir Piano Dalam 3 Bulan? Bisa Saja', 'Pelajaran', 'Rak 10', 'Victoria', 'Tristan'),
('BK70011', 'KG60011', 'Public Speaking Sepenting Itu Loh!', 'Pengembangan Diri', 'Rak 11', 'Gracia', 'Benny'),
('BK70012', 'KG60012', 'Seni dalam berbicara', 'Gaya Hidup', 'Rak 12', 'Lauv', 'Rose');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `IDInformasi` char(10) NOT NULL,
  `IDStaff` char(10) DEFAULT NULL,
  `IDMember` char(10) DEFAULT NULL,
  `IDBuku` char(10) DEFAULT NULL,
  `IDPinjam` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`IDInformasi`, `IDStaff`, `IDMember`, `IDBuku`, `IDPinjam`) VALUES
('INFO20001', 'CPC10001', 'PG50001', 'BK70001', 'PM80001'),
('INFO20002', 'CPC10002', 'PG50002', 'BK70002', 'PM80002'),
('INFO20003', 'CPC10003', 'PG50003', 'BK70003', 'PM80003'),
('INFO20004', 'CPC10004', 'PG50004', 'BK70004', 'PM80004'),
('INFO20005', 'CPC10005', 'PG50005', 'BK70005', 'PM80005'),
('INFO20006', 'CPC10006', 'PG50006', 'BK70006', 'PM80006'),
('INFO20007', 'CPC10007', 'PG50007', 'BK70007', 'PM80007'),
('INFO20008', 'CPC10008', 'PG50008', 'BK70008', 'PM80008'),
('INFO20009', 'CPC10009', 'PG50009', 'BK70009', 'PM80009'),
('INFO20010', 'CPC10010', 'PG50010', 'BK70010', 'PM80010'),
('INFO20011', 'CPC10011', 'PG50011', 'BK70011', 'PM80011'),
('INFO20012', 'CPC10012', 'PG50012', 'BK70012', 'PM80012');

-- --------------------------------------------------------

--
-- Table structure for table `katalog`
--

CREATE TABLE `katalog` (
  `IDKatalog` char(10) NOT NULL,
  `namaKatalog` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `katalog`
--

INSERT INTO `katalog` (`IDKatalog`, `namaKatalog`) VALUES
('KG60001', 'Teknologi'),
('KG60002', 'Kedokteran'),
('KG60003', 'Teknik'),
('KG60004', 'Gizi'),
('KG60005', 'Desain'),
('KG60006', 'Manajemen'),
('KG60007', 'Ekonomi'),
('KG60008', 'Hukum'),
('KG60009', 'Bahasa'),
('KG60010', 'Musik'),
('KG60011', 'Komunikasi'),
('KG60012', 'Seni');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `IDMember` char(10) NOT NULL,
  `namaMember` varchar(30) DEFAULT NULL,
  `emailMember` varchar(50) DEFAULT NULL,
  `noHpMember` varchar(15) DEFAULT NULL,
  `genderMember` varchar(10) DEFAULT NULL,
  `alamatMember` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`IDMember`, `namaMember`, `emailMember`, `noHpMember`, `genderMember`, `alamatMember`) VALUES
('PG50001', 'Irwanto Wijaya', 'irwantowijaya@gmail.com', '081173540193', 'Laki-laki', 'Alam Sutera'),
('PG50002', 'Charlie Kanoto', 'charliekanoto@gmail.com', '081184826402', 'Laki-laki', 'Karawaci'),
('PG50003', 'Erick Leonardo', 'erickleonardo@gmail.com', '081193649272', 'Laki-laki', 'BSD'),
('PG50004', 'Cindy Yasmine', 'cindyyasmine.com', '081173958254', 'Perempuan', 'Menteng'),
('PG50005', 'Noreen Tanzil', 'noreentanzil@gmail.com', '08114683785', 'Perempuan', 'Kemang'),
('PG50006', 'Trista', 'trista@gmail.com', '081864487523', 'Perempuan', 'Kemayoran'),
('PG50007', 'Jovina Serena', 'jovinaserena@gmail.com', '081927395623', 'Laki-laki', 'PIK'),
('PG50008', 'Kevin Luis', 'kevinluis@gmail.com', '081153848263', 'Laki-laki', 'Kebayoran'),
('PG50009', 'Martin Japardy', 'martionjapardy@gmail.com', '081153278740', 'Laki-laki', 'Gajah Mada'),
('PG50010', 'Zevany Natalia', 'zevanynatalia@gmail.com', '081136337283', 'Perempuan', 'Hayam Wuruk'),
('PG50011', 'Charista Tania', 'charistatania@gmail.com', '081935479223', 'Perempuan', 'Harmoni'),
('PG50012', 'Natasha Audrey', 'natashaaudrey@gmail.com', '081739462403', 'Perempuan', 'Sunter');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `IDPinjam` char(10) NOT NULL,
  `IDMember` char(10) DEFAULT NULL,
  `jumlahPinjam` int(11) DEFAULT NULL,
  `tanggalPinjam` date DEFAULT NULL,
  `tanggalKembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`IDPinjam`, `IDMember`, `jumlahPinjam`, `tanggalPinjam`, `tanggalKembali`, `denda`) VALUES
('PM80001', 'PG50003', 2, '2022-09-05', '2022-09-12', 0),
('PM80002', 'PG50005', 4, '2022-09-05', '2022-09-12', 0),
('PM80003', 'PG50008', 1, '2022-09-06', '2022-09-13', 1000),
('PM80004', 'PG50006', 3, '2022-09-08', '2022-09-15', 0),
('PM80005', 'PG50001', 4, '2022-09-05', '2022-09-12', 3000),
('PM80006', 'PG50009', 3, '2022-09-06', '2022-09-13', 0),
('PM80007', 'PG50002', 1, '2022-09-07', '2022-09-14', 9000),
('PM80008', 'PG50004', 1, '2022-09-10', '2022-09-17', 0),
('PM80009', 'PG50011', 2, '2022-09-11', '2022-09-18', 0),
('PM80010', 'PG50007', 2, '2022-09-09', '2022-09-16', 0),
('PM80011', 'PG50012', 1, '2022-09-12', '2022-09-19', 7000),
('PM80012', 'PG50010', 1, '2022-09-12', '2022-09-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `IDStaff` char(10) NOT NULL,
  `namaStaff` varchar(30) DEFAULT NULL,
  `emailStaff` varchar(50) DEFAULT NULL,
  `noHPStaff` varchar(15) DEFAULT NULL,
  `genderStaff` varchar(10) DEFAULT NULL,
  `alamatStaff` varchar(50) DEFAULT NULL,
  `dobStaff` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`IDStaff`, `namaStaff`, `emailStaff`, `noHPStaff`, `genderStaff`, `alamatStaff`, `dobStaff`) VALUES
('CPC10001', 'Christine Putri', 'christineputri@gmail.com', '082258394620', 'Perempuan', 'Kebon Jeruk', '2003-06-12'),
('CPC10002', 'Clarissa Audrys', 'clarissaaudrys@gmail.com', '082236294716', 'Perempuan', 'Bintaro', '2003-06-12'),
('CPC10003', 'Cecilia Rusli', 'ceciliarusli@gmail.com', '082273549164', 'Perempuan', 'Grogol', '2003-06-12'),
('CPC10004', 'Chaterina', 'chaterina@gmail.com', '082264073868', 'Perempuan', 'Tanjung Duren', '2003-06-12'),
('CPC10005', 'Grace Bethanie', 'gracebethanie@gmail.com', '082272946359', 'Perempuan', 'Glodok', '2003-06-12'),
('CPC10006', 'Sukent', 'sukent@gmail.com', '082286302648', 'Laki-laki', 'Sunter', '2003-06-12'),
('CPC10007', 'William Tanindra', 'williamtanindra@gmail.com', '081173629465', 'Laki-laki', 'Kelapa Gading', '2003-06-12'),
('CPC10008', 'Leonardo Halim', 'leonardohalim@gmail.com', '081783649173', 'Laki-laki', 'Cengkareng', '2003-06-12'),
('CPC10009', 'Dennis Christian', 'dennischristian@gmail.com', '08223562355', 'Laki-laki', 'Gading Serpong', '2003-06-12'),
('CPC10010', 'Evelyn Idris', 'evelynidris@gmail.com', '081345724523', 'Perempuan', 'Mangga Besar', '2003-06-12'),
('CPC10011', 'Felicia Hanitio', 'feliciahanitio@gmail.com', '082283649274', 'Perempuan', 'Meruya', '2003-06-12'),
('CPC10012', 'Clarelle Rasiman', 'clarellerasiman@gmail.com', '082234625784', 'Perempuan', 'Sudirman', '2003-05-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`IDBuku`),
  ADD KEY `IDKatalog` (`IDKatalog`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`IDInformasi`),
  ADD KEY `IDStaff` (`IDStaff`),
  ADD KEY `IDMember` (`IDMember`),
  ADD KEY `IDBuku` (`IDBuku`),
  ADD KEY `IDPinjam` (`IDPinjam`);

--
-- Indexes for table `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`IDKatalog`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`IDMember`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`IDPinjam`),
  ADD KEY `IDMember` (`IDMember`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`IDStaff`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`IDKatalog`) REFERENCES `katalog` (`IDKatalog`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`IDStaff`) REFERENCES `staff` (`IDStaff`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `informasi_ibfk_2` FOREIGN KEY (`IDMember`) REFERENCES `member` (`IDMember`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `informasi_ibfk_3` FOREIGN KEY (`IDBuku`) REFERENCES `buku` (`IDBuku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `informasi_ibfk_4` FOREIGN KEY (`IDPinjam`) REFERENCES `pinjam` (`IDPinjam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`IDMember`) REFERENCES `member` (`IDMember`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

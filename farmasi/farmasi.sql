-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2015 at 05:33 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `farmasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(50) NOT NULL,
  `HARGA` double NOT NULL,
  `KUANTITI` int(11) NOT NULL,
  `JUM_HARGA` double NOT NULL,
  `nama_ubat` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pembekal`
--

CREATE TABLE IF NOT EXISTS `pembekal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_SYARIKAT` varchar(25) NOT NULL,
  `ALAMAT` varchar(50) NOT NULL,
  `NO_TEL` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Faxs` varchar(10) NOT NULL,
  `nama_ubat` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `pembekal`
--

INSERT INTO `pembekal` (`ID`, `NAMA_SYARIKAT`, `ALAMAT`, `NO_TEL`, `Email`, `Faxs`, `nama_ubat`) VALUES
(32, 'Heliza Enterprice', 'NO 31 taman Seladang', '044843822', 'Heliza1@gmail.com', '3245625', ''),
(33, 'Rose Enterprice', 'No 3 Taman Mawar', '0129037894', 'Rose_izzul@gmail.com', '7869831', ''),
(34, 'Afiq Enterprice', 'No 7 Taman Selasih', '0194141438', 'Afiq_bob@yahoo.com', '2463878', ''),
(35, 'Kim Enterprice', 'No 2 Taman Mutiara', '0128963824', 'Kim_89@gmail.com', '9087834', ''),
(36, 'Itali Enterprise', 'No 3 Taman Junjong', '042133488', 'Italian@gmail.com', '9891398', ''),
(37, 'Kesihatan Enterprise', 'No 2 Jalan Perdana', '043789766', 'Kamal4@gmail.com', '8976568', ''),
(38, 'Panadolistik Enterprise', 'No 3 / 4 Jalan Hi Tech', '0126688339', 'Anas_Ismail@gmail.com', '7823467', ''),
(39, 'Sprektrem Enterprice', 'No 34/2 Kampung Serai Wangi', '0134247382', 'azproduction268@gmail.com', '8936786', '');

-- --------------------------------------------------------

--
-- Table structure for table `ubat`
--

CREATE TABLE IF NOT EXISTS `ubat` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAMA_UBAT` varchar(30) NOT NULL,
  `JENIS_UBAT` varchar(25) DEFAULT NULL,
  `SATUAN_UBAT` varchar(10) NOT NULL,
  `PENYAKIT` varchar(30) NOT NULL,
  `HARGA` double NOT NULL,
  `KUANTITI` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `ubat`
--

INSERT INTO `ubat` (`ID`, `NAMA_UBAT`, `JENIS_UBAT`, `SATUAN_UBAT`, `PENYAKIT`, `HARGA`, `KUANTITI`) VALUES
(34, 'DIPHENHYDRAMINE HCL', 'EKSP', '10 ML TDS ', 'BATUK (COUGH)', 3, 10),
(36, 'MEFENAMIC ACID', 'CAP', '250 MG TDS', 'SAKIT KEPALA (HEADACHE)', 7, 41),
(38, 'PARACETAMOL (PANADOL)', 'TAB.', ' 1000 MG T', 'DEMAM (FEVER)', 4, 44),
(39, 'CHLORPHENIRAMINEN MALEATE (PIR', 'TAB.', '4 MG TDS x', 'SELSEMA ( FLU )', 5, 45),
(40, 'GELUSIL', 'TAB.', '11/11 TDS ', 'MASUK ANGIN', 7, 66),
(41, 'PROLASE', 'TAB.', '11/11 (10,', ' BENGKAK (SWELLING)', 5, 57),
(42, 'CLOTRIMAZOLE (CANESTEN)', 'CREAM', '15 GM BD', 'PANAU, GATAL2', 6, 55),
(43, 'SILVER SULPHADIAZINE', ' CREAM', '15 GM BD', ' KULIT MELECUR', 8, 55),
(44, 'THEOPHYLLINE (NEULIN)', ' TAB.', '125 MG TDS', 'BRONKIOL ASTHMA, PENAT, SOB', 15, 70),
(45, 'INDOMETHACINE (INDOCID)', ' CAP.', '25 MG TDS ', 'SAKIT URAT/ LENGOH (JOINT PAIN', 7.5, 65),
(46, 'BISACODY (DULCOLAX)', 'TAB.', '5 MG 2/2 O', ' SEMBELIT', 5, 68),
(47, 'ASCORBIC ACID (VIT. C)', 'TAB', '50 MG 2/2 ', ' LETIH, SELSEMA, BIBIR PECAH {', 8, 88),
(48, 'VIT B COMPLEX', 'TAB.', '11/11 DLY ', 'KURANG SELERA MAKAN', 5, 5),
(49, 'ALBENDAZOLE (ZENTAL)', 'TAB.', '400MG ON S', 'CACING (WORM INFESTATIONS)', 7, 70),
(50, 'ATROPINE SULPHATE', 'TAB', '2.5 MG + D', 'CIRIT-BIRIT (DIARRHOEA)', 7, 67),
(51, ' PARACETAMOL', 'TAB', '1000 MG TD', 'SAKIT TEKAK (SORE THROAT)', 10, 100),
(52, 'AMOXYCILINE', 'TAB', '250 TDS x ', 'GUSI BENGKAK/ SAKIT MULUT', 12, 55),
(53, 'CLOXACILLINE SOD (ORBENIN)', 'CAP', '500 MG QID', 'LUKA (WOUND)', 7, 67),
(54, 'MAGNESIUM TRISILICATE (GELUSIL', 'TAB', '11/11 TDS ', 'SAKIT PERUT, PERUT KEMBUNG, ME', 4, 41),
(55, 'PIRITON', 'TAB', '4MG TDS x ', 'DEMAM CAMPAK (CHICKEN POX)', 12, 31),
(56, 'BACAMPICILLINE (PENGLOBE)', 'TAB', '400MG BD x', 'DEMAM LEBIH 38 & SAKIT GIGI', 15, 60),
(59, 'CLOXACILLINE (SUSP ORBENIN)', 'SUSP', '125MG / 5M', 'SKIN INFECTION, KUDIS ADA NANA', 3, 51),
(60, 'ERYTHROMYCINE (SUSP ERYPED)', ' SUSP', '400MG / 5M', ' SAKIT TEKAK, URINARY TRACK IN', 4, 31),
(62, 'Ubat Batuk', 'AIR', '3   litre ', 'Batuk', 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(12) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `NAME`, `USERNAME`, `EMAIL`, `PASSWORD`, `level`) VALUES
(1, 'AMIN ZAKARIA', 'ADMIN', 'AzProduction268@gmail.com', 'admin', 1),
(2, 'ARIFF AZHAN', 'ARIFF', 'lethaprince97@yahoo.com', 'arepcomey', 1),
(4, 'NABIL', 'NABIL', 'nabil@yahoo.com', 'nabil', 1),
(5, 'ANIS', 'ANIS97', 'anisa@gmail.com', '970815', 2),
(7, 'AINA', 'AINA', 'aina@yahoo.com', 'aina', 2),
(8, 'AIMAN', 'AIMANSAFFWAN', 'aimansaffwan@yahoo.com', '123456', 1),
(9, 'ANAS', 'ANAS', 'anas@yahoo.com', '123', 2),
(15, 'AMIN', 'AMIN', 'AMIN123@GMAIL.COM', '12345', 1),
(16, 'user', 'USER', 'user@gmail.com', 'user', 2),
(17, 'iman', 'IMAN', 'iman@yahoo.com', 'iman', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

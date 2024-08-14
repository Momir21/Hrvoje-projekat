-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 10:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankarski_sistem`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `datum_rodjenja` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `sifra` varchar(100) NOT NULL,
  `broj_telefona` varchar(15) DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `datum_rodjenja`, `email`, `sifra`, `broj_telefona`, `adresa`) VALUES
(1, 'Momir', 'Nedeljkovic', '2003-04-30', 'momirnedeljkovic03@gmail.com', '123', '0638202165', 'Malajnicka 12');

-- --------------------------------------------------------

--
-- Table structure for table `krediti`
--

CREATE TABLE `krediti` (
  `id` int(11) NOT NULL,
  `fk_id` int(11) DEFAULT NULL,
  `iznos_kredita` decimal(15,2) NOT NULL,
  `kamatna_stopa` decimal(5,2) NOT NULL,
  `period_kredita` int(11) NOT NULL,
  `datum_pocetka` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krediti`
--

INSERT INTO `krediti` (`id`, `fk_id`, `iznos_kredita`, `kamatna_stopa`, `period_kredita`, `datum_pocetka`) VALUES
(1, 1, 100000.00, 10.00, 60, '2022-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `racuni`
--

CREATE TABLE `racuni` (
  `id` int(11) NOT NULL,
  `fk_id` int(11) DEFAULT NULL,
  `broj_racuna` varchar(20) NOT NULL,
  `tip_racuna` varchar(20) NOT NULL,
  `stanje` decimal(15,2) DEFAULT 0.00,
  `datum_kreiranja` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `racuni`
--

INSERT INTO `racuni` (`id`, `fk_id`, `broj_racuna`, `tip_racuna`, `stanje`, `datum_kreiranja`) VALUES
(1, 1, '587956', 'dinarski', 52000.00, '2019-02-05 20:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `transakcije`
--

CREATE TABLE `transakcije` (
  `id` int(11) NOT NULL,
  `fk_id` int(11) DEFAULT NULL,
  `tip_transakcije` varchar(20) NOT NULL,
  `iznos` decimal(15,2) NOT NULL,
  `datum_transakcije` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transakcije`
--

INSERT INTO `transakcije` (`id`, `fk_id`, `tip_transakcije`, `iznos`, `datum_transakcije`) VALUES
(1, 1, 'Uplata', 25000.00, '2024-08-13 19:09:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sifra` (`sifra`);

--
-- Indexes for table `krediti`
--
ALTER TABLE `krediti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id` (`fk_id`);

--
-- Indexes for table `racuni`
--
ALTER TABLE `racuni`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `broj_racuna` (`broj_racuna`),
  ADD KEY `fk_id` (`fk_id`);

--
-- Indexes for table `transakcije`
--
ALTER TABLE `transakcije`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id` (`fk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `krediti`
--
ALTER TABLE `krediti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `racuni`
--
ALTER TABLE `racuni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transakcije`
--
ALTER TABLE `transakcije`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `krediti`
--
ALTER TABLE `krediti`
  ADD CONSTRAINT `krediti_ibfk_1` FOREIGN KEY (`fk_id`) REFERENCES `korisnici` (`id`);

--
-- Constraints for table `racuni`
--
ALTER TABLE `racuni`
  ADD CONSTRAINT `racuni_ibfk_1` FOREIGN KEY (`fk_id`) REFERENCES `korisnici` (`id`);

--
-- Constraints for table `transakcije`
--
ALTER TABLE `transakcije`
  ADD CONSTRAINT `transakcije_ibfk_1` FOREIGN KEY (`fk_id`) REFERENCES `racuni` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

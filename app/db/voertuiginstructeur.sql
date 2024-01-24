-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 24 jan 2024 om 10:07
-- Serverversie: 8.0.31
-- PHP-versie: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voertuiginstructeur`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `instructeur`
--

DROP TABLE IF EXISTS `instructeur`;
CREATE TABLE IF NOT EXISTS `instructeur` (
  `id` int NOT NULL,
  `Voornaam` varchar(20) DEFAULT NULL,
  `Tussenvoegsel` varchar(10) DEFAULT NULL,
  `Achternaam` varchar(50) DEFAULT NULL,
  `Mobiel` varchar(12) DEFAULT NULL,
  `DatumInDienst` date DEFAULT NULL,
  `AantalSterren` varchar(5) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `instructeur`
--

INSERT INTO `instructeur` (`id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `DatumInDienst`, `AantalSterren`, `Status`) VALUES
(1, 'Li', '  ', 'Zhan', '06-28493827', '2015-04-17', '***', 0),
(2, 'Leroy', ' ', 'Boerhaven', '06-39398734', '2018-06-25', '*', 0),
(3, 'Yoeri', ' Van ', 'Veen', '06-24383291', '2010-05-12', '***', 0),
(4, 'Bert', ' Van ', 'Sali', '06-48293823', '2023-01-10', '****', 0),
(5, 'Mohammed', ' EL ', 'Yassidi', '06-34291234', '2010-06-14', '*****', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `typevoertuig`
--

DROP TABLE IF EXISTS `typevoertuig`;
CREATE TABLE IF NOT EXISTS `typevoertuig` (
  `id` int NOT NULL,
  `TypeVoertuig` varchar(14) DEFAULT NULL,
  `Rijbewijscategorie` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `typevoertuig`
--

INSERT INTO `typevoertuig` (`id`, `TypeVoertuig`, `Rijbewijscategorie`) VALUES
(1, 'Personenauto', 'B'),
(2, 'Vrachtwagen', 'C'),
(3, 'Bus', 'D'),
(4, 'Bromfiets', 'AM');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `voertuig`
--

DROP TABLE IF EXISTS `voertuig`;
CREATE TABLE IF NOT EXISTS `voertuig` (
  `id` int NOT NULL,
  `Kenteken` varchar(8) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Bouwjaar` date DEFAULT NULL,
  `Brandstof` varchar(10) DEFAULT NULL,
  `TypeVoertuigId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Voertuig_TypeVoertuig` (`TypeVoertuigId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `voertuig`
--

INSERT INTO `voertuig` (`id`, `Kenteken`, `Type`, `Bouwjaar`, `Brandstof`, `TypeVoertuigId`) VALUES
(1, 'AU-67-IO', 'GOLF', '2017-06-12', 'Diesel', 1),
(2, 'TR-24-OP', 'DAF', '2019-05-23', 'Diesel', 2),
(3, 'TH-78-KL', 'MERCEDES', '2023-01-01', 'Benzine', 1),
(4, '90-KL-TR', 'FIAT 500', '2021-09-12', 'Benzine', 1),
(5, '34-TK-LP', 'SCANIA', '2015-03-13', 'Diesel', 2),
(6, 'YY-OP-78', 'BMMW M5', '2022-05-13', 'Diesel', 1),
(7, 'UU-HH-JK', 'M.A.N', '2017-12-03', 'Diesel', 2),
(8, 'ST-FZ-28', 'Citroën', '2018-01-20', 'Elektrisch', 1),
(9, '123-FZ-T', 'Piaggio ZIP', '2021-02-01', 'Benzine', 4),
(10, 'DRS-52-P', 'Vespa', '2022-03-21', 'Benzine', 4),
(11, 'STP-12-U', 'Kymco', '2022-07-02', 'Benzine', 4),
(12, '45-SD-23', 'Renault', '2023-01-01', 'Diesel', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `voertuiginstructeur`
--

DROP TABLE IF EXISTS `voertuiginstructeur`;
CREATE TABLE IF NOT EXISTS `voertuiginstructeur` (
  `id` int NOT NULL,
  `VoertuigId` int DEFAULT NULL,
  `InstructeurId` int DEFAULT NULL,
  `DatumToekenning` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `VoertuigInstructeur_Instructeur` (`InstructeurId`),
  KEY `VoertuigInstructeur_Voertuig` (`VoertuigId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `voertuiginstructeur`
--

INSERT INTO `voertuiginstructeur` (`id`, `VoertuigId`, `InstructeurId`, `DatumToekenning`) VALUES
(1, 1, 5, '2017-06-18'),
(2, 3, 1, '2021-09-26'),
(3, 9, 1, '2021-09-27'),
(4, 4, 4, '2022-08-01'),
(5, 5, 1, '2019-08-30'),
(6, 10, 5, '2020-02-02');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `voertuig`
--
ALTER TABLE `voertuig`
  ADD CONSTRAINT `Voertuig_TypeVoertuig` FOREIGN KEY (`TypeVoertuigId`) REFERENCES `typevoertuig` (`id`);

--
-- Beperkingen voor tabel `voertuiginstructeur`
--
ALTER TABLE `voertuiginstructeur`
  ADD CONSTRAINT `VoertuigInstructeur_Instructeur` FOREIGN KEY (`InstructeurId`) REFERENCES `instructeur` (`id`),
  ADD CONSTRAINT `VoertuigInstructeur_Voertuig` FOREIGN KEY (`VoertuigId`) REFERENCES `voertuig` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

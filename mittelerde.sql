-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Okt 2022 um 18:54
-- Server-Version: 10.4.20-MariaDB
-- PHP-Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mittelerde`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gerichte`
--

CREATE TABLE `gerichte` (
  `gerichtNr` int(11) NOT NULL,
  `name` varchar(63) NOT NULL,
  `vegetarisch` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `gerichte`
--

INSERT INTO `gerichte` (`gerichtNr`, `name`, `vegetarisch`) VALUES
(1, 'Kartoffelbrei', 1),
(2, 'Apfel-Tarte', 1),
(3, 'Brot', 1),
(4, 'Honigschinken', 0),
(5, 'Rührei', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hobbits`
--

CREATE TABLE `hobbits` (
  `hobbitNr` int(11) NOT NULL,
  `name` varchar(63) NOT NULL,
  `alter` int(63) NOT NULL,
  `lieblingsessen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `hobbits`
--

INSERT INTO `hobbits` (`hobbitNr`, `name`, `alter`, `lieblingsessen`) VALUES
(1, 'Frodo Beutlin', 33, 3),
(2, 'Samweis Gamdschie', 26, 1),
(3, 'Meriadoc Brandybock', 28, 5),
(4, 'Peregrin Tuck', 22, 2);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `gerichte`
--
ALTER TABLE `gerichte`
  ADD PRIMARY KEY (`gerichtNr`);

--
-- Indizes für die Tabelle `hobbits`
--
ALTER TABLE `hobbits`
  ADD PRIMARY KEY (`hobbitNr`),
  ADD KEY `lieblingsessen` (`lieblingsessen`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `hobbits`
--
ALTER TABLE `hobbits`
  ADD CONSTRAINT `hobbits_ibfk_1` FOREIGN KEY (`lieblingsessen`) REFERENCES `gerichte` (`gerichtNr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

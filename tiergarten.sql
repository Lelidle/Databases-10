-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 26. Sep 2022 um 18:26
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
-- Datenbank: `tiergarten`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `betreut`
--

CREATE TABLE `betreut` (
  `tierNr` int(11) NOT NULL,
  `mitarbeiterNr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `betreut`
--

INSERT INTO `betreut` (`tierNr`, `mitarbeiterNr`) VALUES
(1, 1),
(2, 1),
(3, 4),
(4, 1),
(4, 4),
(5, 1),
(6, 5),
(12, 21),
(12, 23),
(13, 24),
(14, 24),
(15, 25);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiter`
--

CREATE TABLE `mitarbeiter` (
  `mitarbeiterNr` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `monatsgehalt` double NOT NULL,
  `tiergartenNr` int(11) NOT NULL,
  `ausweisNr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mitarbeiter`
--

INSERT INTO `mitarbeiter` (`mitarbeiterNr`, `name`, `adresse`, `monatsgehalt`, `tiergartenNr`, `ausweisNr`) VALUES
(1, 'Thilo Meyer', 'Heuweg 33, 90427 Nürnberg', 3500, 1, 1000),
(2, 'Sina Moßburger', 'Schwalbenweg 5, 90443 Nürnberg', 4200, 1, 1001),
(3, 'Mareike Weber', 'Siebertstr. 85, 90762 Fürth', 2700, 1, 1002),
(4, 'Adam Kraft', 'Fichtenallee 55, 90445 Nürnberg', 3800, 1, 1003),
(5, 'Mia Seeheimer', 'Theodor-Fontane-Gässchen 4, 90431 Nürnberg', 5200, 1, 1004),
(6, 'Simon Walpurgis', 'Schläferweg 22, 90423 Nürnberg', 2775, 1, 1005),
(7, 'Sarah Maischdorfer', 'Heuweg 33, 90427 Nürnberg', 3300, 1, 1006),
(8, 'Muhammad Ali', 'Boxgasse 15, 90457 Nürnberg', 4400, 1, 1007),
(9, 'Elza Mirai', 'Stodlweg 1, 90443 Nürnberg', 1950, 1, 1008),
(10, 'Steve Jobs', 'Schließerstr. 55, 90466 Nürnberg', 1400, 1, 1009),
(20, 'Chihiro Zauberberg', 'Im Wäldle 40, 80123 München', 3200, 2, 2000),
(21, 'Klaus Wegener', 'Stephen-Hawking-str. 21, 80123 München', 2200, 2, 2001),
(22, 'Mirko Siebert', 'Taubengasse 120, 81243 München', 5400, 2, 2002),
(23, 'Raune Allerlei', 'Fichtenallee 100, 82353 München', 1900, 2, 2003),
(24, 'Adler Olson', 'Habichtstr. 63, 82123 München', 2600, 2, 2004),
(25, 'Lisbeth Salander', 'Allee-Allee 7, 81456 München', 3650, 2, 2005);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiterausweis`
--

CREATE TABLE `mitarbeiterausweis` (
  `ausweisNr` int(11) NOT NULL,
  `aktiv` tinyint(1) NOT NULL,
  `guthaben` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mitarbeiterausweis`
--

INSERT INTO `mitarbeiterausweis` (`ausweisNr`, `aktiv`, `guthaben`) VALUES
(1000, 1, 50),
(1001, 1, 0),
(1002, 0, 25.5),
(1003, 1, 100),
(1004, 0, 0),
(1005, 1, 17.33),
(1006, 1, 120),
(1007, 0, 0.78),
(1008, 1, 33.56),
(1009, 1, 15),
(2000, 1, 75),
(2001, 0, 0.01),
(2002, 1, 12.99),
(2003, 0, 0.9),
(2004, 1, 45),
(2005, 1, 27.3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tier`
--

CREATE TABLE `tier` (
  `tierNr` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gehege` varchar(255) NOT NULL,
  `futter` varchar(255) NOT NULL,
  `tiergartenNr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tier`
--

INSERT INTO `tier` (`tierNr`, `name`, `gehege`, `futter`, `tiergartenNr`) VALUES
(1, 'Simba', 'Löwen', 'Fleisch', 1),
(2, 'Nala', 'Löwen', 'Fleisch', 1),
(3, 'Sarabi', 'Löwen', 'Fleisch', 1),
(4, 'Mufasa', 'Löwen', 'Fleisch', 1),
(5, 'Scar', 'Löwen', 'Fleisch', 1),
(6, 'Djego', 'Löwen', 'Fleisch', 1),
(7, 'Lilo', 'Affen', 'Pflanzen', 1),
(8, 'Stitch', 'Affen', 'Pflanzen', 1),
(9, 'Jumba', 'Affen', 'Pflanzen', 1),
(10, 'Pleakley', 'Affen', 'Pflanzen', 1),
(11, 'Nani', 'Affen', 'Pflanzen', 1),
(12, 'Kevin', 'Erdmännchen', 'Insekten', 2),
(13, 'Stuart', 'Erdmännchen', 'Insekten', 2),
(14, 'Bob', 'Erdmännchen', 'Insekten', 2),
(15, 'Dave', 'Erdmännchen', 'Insekten', 2),
(16, 'Jerry', 'Erdmännchen', 'Insekten', 2),
(17, 'Phil', 'Erdmännchen', 'Insekten', 2),
(18, 'John', 'Erdmännchen', 'Insekten', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tiergarten`
--

CREATE TABLE `tiergarten` (
  `tiergartenNr` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tiergarten`
--

INSERT INTO `tiergarten` (`tiergartenNr`, `name`, `adresse`) VALUES
(1, 'Tiergarten Nürnberg', 'Am Tiergarten 30, 90480 Nürnberg'),
(2, 'Tierpark Hellabrunn', 'Tierparkstraße 30, 81543 München');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `betreut`
--
ALTER TABLE `betreut`
  ADD PRIMARY KEY (`tierNr`,`mitarbeiterNr`),
  ADD KEY `mitarbeiterNr` (`mitarbeiterNr`);

--
-- Indizes für die Tabelle `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
  ADD PRIMARY KEY (`mitarbeiterNr`),
  ADD KEY `tiergartenNr` (`tiergartenNr`),
  ADD KEY `ausweisNr` (`ausweisNr`);

--
-- Indizes für die Tabelle `mitarbeiterausweis`
--
ALTER TABLE `mitarbeiterausweis`
  ADD PRIMARY KEY (`ausweisNr`);

--
-- Indizes für die Tabelle `tier`
--
ALTER TABLE `tier`
  ADD PRIMARY KEY (`tierNr`),
  ADD KEY `tiergartenNr` (`tiergartenNr`);

--
-- Indizes für die Tabelle `tiergarten`
--
ALTER TABLE `tiergarten`
  ADD PRIMARY KEY (`tiergartenNr`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `betreut`
--
ALTER TABLE `betreut`
  ADD CONSTRAINT `betreut_ibfk_1` FOREIGN KEY (`mitarbeiterNr`) REFERENCES `mitarbeiter` (`mitarbeiterNr`),
  ADD CONSTRAINT `betreut_ibfk_2` FOREIGN KEY (`tierNr`) REFERENCES `tier` (`tierNr`);

--
-- Constraints der Tabelle `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
  ADD CONSTRAINT `mitarbeiter_ibfk_1` FOREIGN KEY (`tiergartenNr`) REFERENCES `tiergarten` (`tiergartenNr`),
  ADD CONSTRAINT `mitarbeiter_ibfk_2` FOREIGN KEY (`ausweisNr`) REFERENCES `mitarbeiterausweis` (`ausweisNr`);

--
-- Constraints der Tabelle `tier`
--
ALTER TABLE `tier`
  ADD CONSTRAINT `tier_ibfk_1` FOREIGN KEY (`tiergartenNr`) REFERENCES `tiergarten` (`tiergartenNr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

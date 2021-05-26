-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2021 m. Geg 15 d. 20:25
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `projects`
--

CREATE TABLE `projects` (
  `ID` int(8) NOT NULL,
  `name` varchar(64) COLLATE utf32_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf32_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_swedish_ci;

--
-- Sukurta duomenų kopija lentelei `projects`
--

INSERT INTO `projects` (`ID`, `name`, `description`) VALUES
(1, 'Laisez Faire', 'It\'s all about money, kaa ching kaa ching cash, my blood money and my little stash.'),
(2, 'Barbarossa', 'Gott mit uns.'),
(3, 'Vaccination', 'That will hurt just a little...'),
(4, 'In-Fidelity?', 'I did not have any sexual relations with that woman!'),
(6, 'Touch that leather', 'Leather to leather.'),
(7, 'Veryga', 'Take all drinks from baryga.'),
(8, 'Sultan', 'Erdogan strikes back.'),
(9, 'Christmas', 'Satan Klaus is comming.'),
(10, 'Biker Girl', 'She rode into town. She rode the town.'),
(11, 'Bangkok Nights', 'Ladyboys Delight, ft. DJ Vedaras.'),
(13, 'Test', 'What test !?');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `tasks`
--

CREATE TABLE `tasks` (
  `projectID` int(8) DEFAULT NULL,
  `ID` int(8) NOT NULL,
  `name` varchar(64) COLLATE utf32_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf32_swedish_ci DEFAULT NULL,
  `priority` varchar(32) COLLATE utf32_swedish_ci NOT NULL,
  `status` varchar(32) COLLATE utf32_swedish_ci NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_swedish_ci;

--
-- Sukurta duomenų kopija lentelei `tasks`
--

INSERT INTO `tasks` (`projectID`, `ID`, `name`, `description`, `priority`, `status`, `startDate`, `modifiedDate`) VALUES
(1, 1, 'first', 'desription desription desription', 'low', 'todo', NULL, NULL),
(1, 2, 'second', 'desription desription desription', 'hight', 'completed', NULL, NULL),
(2, 3, 'third', 'desription desription desription', 'medium', 'in progress', NULL, NULL),
(3, 4, '4-th', 'desription desription desription', 'low', 'todo', NULL, NULL),
(3, 5, '5-th', 'desription desription desription', 'low', 'completed', NULL, NULL),
(3, 6, '6-th', 'desription desription desription', 'low', 'todo', NULL, NULL),
(3, 7, '7-th', 'desription desription desription', 'medium', 'todo', NULL, NULL),
(4, 8, '8-th', 'desription desription desription', 'hight', 'todo', NULL, NULL),
(4, 9, '9-th', 'desription desription desription', 'medium', 'completed', NULL, NULL),
(4, 10, '10-th', 'desription desription desription', 'low', 'completed', NULL, NULL),
(1, 21, 'asdg', 'asgf', 'high', 'todo', '2021-05-13 20:28:54', '2021-05-13 20:28:54'),
(1, 22, 'dh', 'dsfh', 'high', 'todo', '2021-05-15 20:23:59', '2021-05-15 20:23:59');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE `users` (
  `ID` int(8) NOT NULL,
  `login` varchar(64) COLLATE utf32_swedish_ci NOT NULL,
  `password` varchar(64) COLLATE utf32_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_swedish_ci;

--
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`ID`, `login`, `password`) VALUES
(2, 'test@gmail.com', '2ec31a37dffab3bc8bf189775fcb8b64'),
(3, '', 'd41d8cd98f00b204e9800998ecf8427e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

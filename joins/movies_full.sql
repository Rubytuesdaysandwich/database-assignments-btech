-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 12:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--
CREATE DATABASE IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `movies`;

-- --------------------------------------------------------

--
-- Table structure for table `critc_rating`
--

DROP TABLE IF EXISTS `critc_rating`;
CREATE TABLE `critc_rating` (
  `id` int(11) NOT NULL,
  `titles_id` int(11) NOT NULL,
  `critics_rating` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `critc_rating`
--

INSERT INTO `critc_rating` (`id`, `titles_id`, `critics_rating`) VALUES
(1, 50, '3.1'),
(2, 49, '4.6'),
(3, 48, '6.4'),
(4, 47, '3.1'),
(5, 46, '6.7'),
(6, 45, '7.2'),
(7, 44, '4.4'),
(8, 43, '9.8'),
(9, 42, '9.1'),
(10, 41, '8.8'),
(11, 40, '8.3'),
(12, 39, '3.1'),
(13, 38, '4.3'),
(14, 37, '9.4'),
(15, 36, '6.5'),
(16, 35, '5.6'),
(17, 34, '5.5'),
(18, 33, '8.0'),
(19, 32, '5.4'),
(20, 31, '6.5'),
(21, 30, '5.0'),
(22, 29, '3.7'),
(23, 28, '7.3'),
(24, 27, '6.8'),
(25, 26, '5.2'),
(26, 25, '6.4'),
(27, 24, '3.7'),
(28, 23, '7.7'),
(29, 22, '6.6'),
(30, 21, '4.2'),
(31, 20, '3.2'),
(32, 19, '3.8'),
(33, 18, '9.8'),
(34, 17, '9.8'),
(35, 16, '3.4'),
(36, 15, '9.0'),
(37, 14, '6.6'),
(38, 13, '7.9'),
(39, 12, '3.6'),
(40, 11, '5.4'),
(41, 10, '4.3'),
(42, 9, '6.6'),
(43, 8, '6.1'),
(44, 7, '6.0'),
(45, 6, '8.4'),
(46, 5, '3.2'),
(47, 4, '5.7'),
(48, 3, '6.4'),
(49, 2, '5.9'),
(50, 1, '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `dir_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id`, `dir_name`) VALUES
(1, 'Abigail Payne'),
(2, 'Sophia Baker'),
(3, 'Alina Morgan'),
(4, 'Thomas Wright'),
(5, 'Arthur Evans'),
(6, 'Amy Armstrong'),
(7, 'Samantha Clark'),
(8, 'Violet Wells'),
(9, 'Julia Robinson'),
(10, 'Catherine Gibson'),
(11, 'Emma Russell'),
(12, 'Kristian Foster'),
(13, 'Julian Fowler'),
(14, 'Violet Scott'),
(15, 'Jared Cooper'),
(16, 'Steven Spencer'),
(17, 'Tiana Hunt'),
(18, 'Paige Watson'),
(19, 'Henry Murray'),
(20, 'Sienna Warren'),
(21, 'Stuart Scott'),
(22, 'Darcy Morgan'),
(23, 'Ryan Wright'),
(24, 'Elise Harper'),
(25, 'Hailey Robinson'),
(26, 'Lucia Morrison'),
(27, 'Aiden Foster'),
(28, 'Kelvin Martin'),
(29, 'Amy Howard'),
(30, 'Dominik Nelson'),
(31, 'Ryan Ross'),
(32, 'Sarah Adams'),
(33, 'Victor Elliott'),
(34, 'Alisa Barrett'),
(35, 'Rebecca Adams');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'Adventure'),
(2, 'Children'),
(3, 'Drama'),
(4, 'Horror'),
(5, 'Sci-Fi');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
CREATE TABLE `studio` (
  `id` int(11) NOT NULL,
  `studio_name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`id`, `studio_name`, `city`) VALUES
(1, 'Lionel Brownstone', 'London'),
(2, 'Torchwood', 'New York City'),
(3, 'Falstead Group', 'Hollywood'),
(4, 'Arpeggio Brothers', 'Hollywood'),
(5, 'Bix', 'Paris'),
(6, 'Studio 60', 'New York City');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `release_year` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `title`, `genre_id`, `release_year`, `director_id`, `studio_id`) VALUES
(1, 'Agent Of Perfection', 1, 1901, 1, 1),
(2, 'Savior Of The End', 1, 1903, 2, 2),
(3, 'Turtles Of Next Year', 1, 1910, 3, 3),
(4, 'Thieves Of Eternity', 1, 1912, 4, 4),
(5, 'Descendants And Wives', 1, 1913, 5, 2),
(6, 'Gangsters And Blacksmiths', 1, 1914, 3, 5),
(7, 'Perfection Of Rainbows', 1, 1915, 6, 4),
(8, 'Surprise Without Fear', 1, 1914, 7, 1),
(9, 'Blinded By The Ashes', 1, 1915, 4, 1),
(10, 'Vanish In The Slaves', 1, 1919, 8, 3),
(11, 'Little Girl Of The Sun', 2, 1921, 9, 3),
(12, 'Bird Of Yesterday', 2, 1924, 10, 6),
(13, 'Wizards Of Riddles', 2, 1925, 11, 1),
(14, 'Bunnies In The River', 2, 1930, 12, 1),
(15, 'Cows And Chickens', 2, 1931, 3, 2),
(16, 'Little Dragons And Dogs', 2, 1932, 1, 1),
(17, 'Coat Of Mysteries', 2, 1935, 13, 6),
(18, 'Shield Of Dreams', 2, 1935, 3, 4),
(19, 'Present From Petals', 2, 1937, 14, 6),
(20, 'Cleaning With The Neighbor', 2, 1938, 15, 1),
(21, 'Opponent Of Fortune', 3, 1941, 16, 1),
(22, 'Peasant Of Dawn', 3, 1943, 17, 3),
(23, 'Armies Without A Home', 3, 1946, 3, 4),
(24, 'Rebels Of The Void', 3, 1947, 18, 1),
(25, 'Heirs And Farmers', 3, 1949, 19, 2),
(26, 'Supporters And Bearers', 3, 1955, 1, 6),
(27, 'Homes Of Remorse', 3, 1960, 20, 5),
(28, 'Creation Of Bad News', 3, 1962, 21, 4),
(29, 'Starting The East', 3, 1974, 22, 6),
(30, 'Death In The Elements', 3, 1974, 23, 3),
(31, 'Tree Behind The Counter', 4, 1980, 4, 5),
(32, 'Friend Of The Forest', 4, 1983, 24, 4),
(33, 'Guests In The Cabin', 4, 1983, 3, 2),
(34, 'Students With Black Hair', 4, 1985, 1, 3),
(35, 'Students And Boys', 4, 1986, 25, 5),
(36, 'Monsters And Wolves', 4, 1988, 26, 1),
(37, 'Music In The Crypts', 4, 1991, 27, 6),
(38, 'Captured In The Attic', 4, 1991, 28, 2),
(39, 'Defiant In The North', 4, 1991, 29, 5),
(40, 'Helpless In The Shadows', 4, 1992, 1, 5),
(41, 'Officer Of The Ocean', 5, 1994, 30, 3),
(42, 'Spy Of The Sands', 5, 1994, 4, 3),
(43, 'Hunters Of Eternity', 5, 1995, 31, 2),
(44, 'Clones Of Honor', 5, 1998, 3, 1),
(45, 'Women And Mercenaries', 5, 1998, 32, 3),
(46, 'Men And Traitors', 5, 2003, 33, 4),
(47, 'Origin Of Nowhere', 5, 2012, 4, 1),
(48, 'Extermination Of New Earth', 5, 2014, 34, 4),
(49, 'Created By The End', 5, 2017, 35, 3),
(50, 'Intelligence In Technolic Advancements', 5, 2020, 19, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `critc_rating`
--
ALTER TABLE `critc_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title_id_fk` (`titles_id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id_fk` (`genre_id`),
  ADD KEY `studio_id_fk` (`studio_id`),
  ADD KEY `director_id_fk` (`director_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `critc_rating`
--
ALTER TABLE `critc_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studio`
--
ALTER TABLE `studio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `critc_rating`
--
ALTER TABLE `critc_rating`
  ADD CONSTRAINT `title_id_fk` FOREIGN KEY (`titles_id`) REFERENCES `titles` (`id`);

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `director_id_fk` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`),
  ADD CONSTRAINT `genre_id_fk` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `studio_id_fk` FOREIGN KEY (`studio_id`) REFERENCES `studio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 25, 2022 at 08:29 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grade-keeping`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

DROP TABLE IF EXISTS `absence`;
CREATE TABLE IF NOT EXISTS `absence` (
  `student_id` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`student_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`student_id`, `date`) VALUES
(3, '2012-09-03'),
(5, '2012-09-03'),
(10, '2012-09-06'),
(10, '2012-09-09'),
(17, '2012-09-07'),
(20, '2012-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `student` int(11) NOT NULL,
  `grade_event` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `absence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade_event`
--

DROP TABLE IF EXISTS `grade_event`;
CREATE TABLE IF NOT EXISTS `grade_event` (
  `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `category` enum('t','q') NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_event`
--

INSERT INTO `grade_event` (`event_id`, `date`, `category`) VALUES
(1, '2012-09-03', 'q'),
(2, '2012-09-06', 'q'),
(3, '2012-09-09', 't'),
(4, '2012-09-16', 'q'),
(5, '2012-09-23', 'q'),
(6, '2012-10-01', 't');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`event_id`),
  KEY `evt_id_fk` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`student_id`, `event_id`, `score`) VALUES
(1, 1, 20),
(1, 2, 17),
(1, 3, 88),
(1, 5, 15),
(1, 6, 100),
(2, 2, 8),
(2, 3, 84),
(2, 4, 7),
(2, 5, 12),
(2, 6, 91),
(3, 1, 20),
(3, 2, 13),
(3, 3, 69),
(3, 4, 17),
(3, 5, 11),
(3, 6, 94),
(4, 1, 18),
(4, 2, 13),
(4, 3, 71),
(4, 4, 16),
(4, 6, 74),
(5, 1, 13),
(5, 2, 17),
(5, 3, 97),
(5, 4, 20),
(5, 5, 13),
(5, 6, 97),
(6, 1, 18),
(6, 2, 13),
(6, 3, 83),
(6, 4, 9),
(6, 5, 18),
(6, 6, 89),
(7, 1, 14),
(7, 2, 17),
(7, 3, 88),
(7, 4, 19),
(7, 5, 14),
(7, 6, 76),
(8, 1, 14),
(8, 2, 8),
(8, 3, 75),
(8, 4, 12),
(8, 5, 18),
(8, 6, 65),
(9, 1, 11),
(9, 2, 19),
(9, 3, 83),
(9, 4, 17),
(9, 5, 13),
(9, 6, 73),
(10, 1, 19),
(10, 2, 18),
(10, 3, 72),
(10, 4, 12),
(10, 5, 14),
(10, 6, 63),
(11, 1, 18),
(11, 2, 15),
(11, 3, 74),
(11, 4, 16),
(11, 5, 18),
(11, 6, 98),
(12, 1, 19),
(12, 2, 19),
(12, 3, 77),
(12, 4, 13),
(12, 5, 8),
(12, 6, 75),
(13, 2, 18),
(13, 3, 67),
(13, 4, 8),
(13, 5, 8),
(14, 1, 11),
(14, 2, 18),
(14, 3, 68),
(14, 4, 11),
(14, 5, 16),
(14, 6, 77),
(15, 1, 20),
(15, 2, 16),
(15, 3, 75),
(15, 4, 9),
(15, 5, 13),
(15, 6, 62),
(16, 1, 18),
(16, 2, 9),
(16, 3, 60),
(16, 4, 20),
(16, 5, 15),
(16, 6, 98),
(17, 1, 9),
(17, 2, 13),
(17, 3, 79),
(17, 5, 11),
(17, 6, 94),
(18, 1, 20),
(18, 2, 9),
(18, 3, 96),
(18, 4, 11),
(18, 5, 18),
(18, 6, 94),
(19, 1, 9),
(19, 2, 11),
(19, 3, 79),
(19, 4, 15),
(19, 5, 18),
(19, 6, 74),
(20, 1, 9),
(20, 3, 76),
(20, 4, 17),
(20, 5, 14),
(20, 6, 62),
(21, 1, 13),
(21, 2, 12),
(21, 3, 91),
(21, 4, 13),
(21, 5, 17),
(21, 6, 73),
(22, 1, 13),
(22, 2, 10),
(22, 3, 81),
(22, 4, 20),
(22, 5, 17),
(22, 6, 95),
(23, 1, 16),
(23, 2, 17),
(23, 3, 81),
(23, 4, 13),
(23, 5, 15),
(24, 1, 11),
(24, 2, 19),
(24, 3, 62),
(24, 4, 12),
(24, 6, 68),
(25, 1, 19),
(25, 2, 10),
(25, 3, 79),
(25, 4, 10),
(25, 5, 14),
(25, 6, 85),
(26, 1, 10),
(26, 2, 18),
(26, 3, 86),
(26, 4, 15),
(26, 5, 8),
(26, 6, 91),
(27, 1, 15),
(27, 2, 8),
(27, 3, 90),
(27, 6, 70),
(28, 1, 15),
(28, 2, 13),
(28, 3, 68),
(28, 4, 17),
(28, 5, 20),
(28, 6, 77),
(29, 1, 19),
(29, 2, 16),
(29, 3, 66),
(29, 5, 16),
(29, 6, 66),
(30, 1, 17),
(30, 2, 12),
(30, 3, 79),
(30, 4, 11),
(30, 6, 68),
(31, 1, 11),
(31, 2, 19),
(31, 3, 81),
(31, 4, 19),
(31, 5, 9),
(31, 6, 76);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sex` enum('F','M') NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `sex`) VALUES
(1, 'Megan', 'F'),
(2, 'Joseph', 'M'),
(3, 'Kyle', 'M'),
(4, 'Katie', 'F'),
(5, 'Abby', 'F'),
(6, 'Nathan', 'M'),
(7, 'Liesl', 'F'),
(8, 'Ian', 'M'),
(9, 'Colin', 'M'),
(10, 'Peter', 'M'),
(11, 'Michael', 'M'),
(12, 'Thomas', 'M'),
(13, 'Devri', 'F'),
(14, 'Ben', 'M'),
(15, 'Aubrey', 'F'),
(16, 'Rebecca', 'F'),
(17, 'Will', 'M'),
(18, 'Max', 'M'),
(19, 'Rianne', 'F'),
(20, 'Avery', 'F'),
(21, 'Lauren', 'F'),
(22, 'Becca', 'F'),
(23, 'Gregory', 'M'),
(24, 'Sarah', 'F'),
(25, 'Robbie', 'M'),
(26, 'Keaton', 'M'),
(27, 'Carter', 'M'),
(28, 'Teddy', 'M'),
(29, 'Gabrielle', 'F'),
(30, 'Grace', 'F'),
(31, 'Emily', 'F');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `studen_id_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `evt_id_fk` FOREIGN KEY (`event_id`) REFERENCES `grade_event` (`event_id`),
  ADD CONSTRAINT `stud_id_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

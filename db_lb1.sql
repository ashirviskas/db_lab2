-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017 m. Kov 21 d. 02:41
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lb1`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `academy`
--
drop DATABASE db_lb1;
create database db_lb1;
use db_lb1;


CREATE TABLE `academy` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `academy`
--

INSERT INTO `academy` (`id`, `name`, `city`) VALUES
(1, 'Channing', 'Puerto Montt'),
(2, 'Barclay', 'Groenlo'),
(3, 'Lee', 'Creil'),
(4, 'Dexter', 'Lacombe County'),
(5, 'Blaze', 'Zwettl-Niederösterreich'),
(6, 'Magee', 'Altmünster'),
(7, 'Jelani', 'Ortonovo'),
(8, 'Nolan', 'Fernie'),
(9, 'Zachary', 'Pietracatella'),
(10, 'Ali', 'Neerglabbeek'),
(11, 'Rafael', 'Linton'),
(12, 'Brody', 'Polatlı'),
(13, 'Brett', 'Gliwice'),
(14, 'Joseph', 'Ville de Maniwaki'),
(15, 'Nolan', 'Murwara'),
(16, 'Kieran', 'Juneau'),
(17, 'Mason', 'Alcalá de Henares'),
(18, 'Hunter', 'Helena'),
(19, 'Fritz', 'Middelkerke'),
(20, 'Marvin', 'Gulfport'),
(21, 'Lyle', 'Corbara'),
(22, 'Gregory', 'Waiuku'),
(23, 'Fitzgerald', 'Swan'),
(24, 'Hammett', 'King\'s Lynn'),
(25, 'Nathan', 'Salem'),
(26, 'Colt', 'Midnapore'),
(27, 'Clark', 'Denver'),
(28, 'David', 'Khanewal'),
(29, 'Elmo', 'Hamilton'),
(30, 'Abraham', 'Gwalior'),
(31, 'Damon', 'Veenendaal'),
(32, 'Arden', 'Hoorn'),
(33, 'Erasmus', 'Catemu'),
(34, 'Barrett', 'Comox'),
(35, 'Ethan', 'Kitchener'),
(36, 'Yardley', 'Tampa'),
(37, 'Ishmael', 'Sevilla'),
(38, 'Mark', 'Kent'),
(39, 'Ashton', 'Rio de Janeiro'),
(40, 'Ira', 'Columbia'),
(41, 'Theodore', 'Adria'),
(42, 'Perry', 'Berlin'),
(43, 'Barclay', 'Roveredo in Piano'),
(44, 'Abraham', 'Sainte-Flavie'),
(45, 'Hamilton', 'Salzburg'),
(46, 'Chaney', 'La Thuile'),
(47, 'Acton', 'Nanton'),
(48, 'Kasper', 'Ottawa'),
(49, 'Castor', 'Vegreville'),
(50, 'Simon', 'Shawinigan'),
(51, 'Kennedy', 'Yellowknife'),
(52, 'Wade', 'Newtown'),
(53, 'Alvin', 'Saguenay'),
(54, 'Ethan', 'Dalcahue'),
(55, 'Gary', 'Tolentino'),
(56, 'Malcolm', 'Merbes-le-Ch‰teau'),
(57, 'Laith', 'Redlands'),
(58, 'Ryder', 'Rocky Mountain House'),
(59, 'Abdul', 'Stirling'),
(60, 'Malachi', 'Castellafiume'),
(61, 'Baker', 'Bansberia'),
(62, 'Nero', 'Châlons-en-Champagne'),
(63, 'Mufutau', 'Herentals'),
(64, 'Colin', 'Sulzbach'),
(65, 'Griffin', 'Mount Gambier'),
(66, 'Brent', 'West Valley City'),
(67, 'Kasimir', 'Melilla'),
(68, 'Brian', 'Tenby'),
(69, 'Calvin', 'Konin'),
(70, 'Burke', 'Logroño'),
(71, 'Valentine', 'Fossato di Vico'),
(72, 'Grady', 'Raichur'),
(73, 'Stewart', 'Itajaí'),
(74, 'Baxter', 'Caledon'),
(75, 'Brody', 'Litueche'),
(76, 'Tyrone', 'Toronto'),
(77, 'Travis', 'Williams Lake'),
(78, 'Cole', 'Meldert'),
(79, 'Phillip', 'Voitsberg'),
(80, 'Todd', 'Castelluccio Inferiore'),
(81, 'Noble', 'Prince Albert'),
(82, 'Russell', 'San Francisco'),
(83, 'Cruz', 'Lompret'),
(84, 'Forrest', 'Lampeter'),
(85, 'Hilel', 'Casanova Elvo'),
(86, 'Kane', 'Albacete'),
(87, 'Jack', 'Lidingo'),
(88, 'Samuel', 'Coihaique'),
(89, 'Jared', 'Rae Bareli'),
(90, 'Garrison', 'Herdersem'),
(91, 'Brenden', 'Ham-sur-Heure'),
(92, 'Kuame', 'Açailândia'),
(93, 'Nigel', 'Açailândia'),
(94, 'Isaac', 'Monceau-Imbrechies'),
(95, 'Hu', 'Milton Keynes'),
(96, 'Cairo', 'Kumluca'),
(97, 'Davis', 'Stockton-on-Tees'),
(98, 'Harlan', 'St. Ives'),
(99, 'Leonard', 'Santa Bárbara'),
(100, 'Zeph', 'Vichte');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `fk_Workshopid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `assignment`
--

INSERT INTO `assignment` (`id`, `title`, `description`, `deadline`, `fk_Workshopid`) VALUES
(1, 'ac mattis', 'velit. Sed malesuada', '2017-05-20', 1),
(2, 'Cras dolor', 'rutrum non, hendrerit id, ante. Nunc', '2017-01-04', 2),
(3, 'purus, in', 'interdum enim non nisi. Aenean eget metus. In nec orci.', '2016-04-04', 3),
(4, 'lacus, varius', 'sagittis felis. Donec tempor, est ac mattis semper,', '2017-10-18', 4),
(5, 'vestibulum lorem,', 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis', '2017-10-27', 5),
(6, 'ligula. Aliquam', 'mauris ut mi. Duis risus odio, auctor vitae, aliquet nec,', '2017-08-25', 6),
(7, 'orci, consectetuer', 'auctor ullamcorper, nisl arcu iaculis enim, sit', '2017-07-27', 7),
(8, 'tempus scelerisque,', 'tristique senectus', '2016-04-22', 8),
(9, 'elementum at,', 'vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at', '2017-08-10', 9),
(10, 'sociis natoque', 'feugiat. Sed nec', '2016-11-15', 10),
(11, 'fringilla, porttitor', 'facilisis, magna tellus', '2017-10-26', 11),
(12, 'scelerisque scelerisque', 'molestie pharetra nibh. Aliquam ornare, libero at auctor', '2016-04-16', 12),
(13, 'nec, cursus', 'felis purus', '2018-01-15', 13),
(14, 'nec urna', 'porta elit, a feugiat tellus lorem eu metus. In lorem.', '2016-11-18', 14),
(15, 'mauris ut', 'hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu', '2016-12-08', 15),
(16, 'augue ac', 'ultrices a, auctor non,', '2017-12-06', 16),
(17, 'Aliquam tincidunt,', 'Donec non justo. Proin non massa non ante bibendum', '2016-09-13', 17),
(18, 'adipiscing lobortis', 'elit sed consequat auctor, nunc nulla vulputate dui,', '2016-12-31', 18),
(19, 'scelerisque neque.', 'elit, dictum', '2016-07-30', 19),
(20, 'lectus justo', 'vestibulum nec, euismod in, dolor. Fusce', '2016-10-13', 20),
(21, 'ornare, facilisis', 'fames ac turpis egestas. Aliquam fringilla', '2017-09-30', 21),
(22, 'velit eget', 'orci', '2016-10-26', 22),
(23, 'vel lectus.', 'Nulla semper tellus id nunc interdum feugiat. Sed', '2018-01-07', 23),
(24, 'augue eu', 'tellus faucibus leo, in lobortis tellus', '2016-12-29', 24),
(25, 'sem mollis', 'erat neque non quam. Pellentesque', '2017-07-08', 25),
(26, 'et netus', 'porttitor scelerisque neque. Nullam', '2017-04-07', 26),
(27, 'consectetuer adipiscing', 'lacinia. Sed', '2016-11-05', 27),
(28, 'aliquam, enim', 'posuere at, velit. Cras lorem lorem, luctus', '2017-11-29', 28),
(29, 'tellus eu', 'nibh. Aliquam ornare, libero', '2017-03-02', 29),
(30, 'erat volutpat.', 'Ut sagittis', '2016-10-29', 30),
(31, 'litora torquent', 'lobortis. Class aptent taciti sociosqu ad litora torquent', '2016-10-13', 31),
(32, 'viverra. Donec', 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.', '2017-11-15', 32),
(33, 'ullamcorper eu,', 'in, cursus et, eros. Proin ultrices. Duis volutpat nunc', '2017-06-15', 33),
(34, 'penatibus et', 'amet, dapibus id, blandit at,', '2017-10-03', 34),
(35, 'sit amet', 'gravida mauris ut mi.', '2016-04-17', 35),
(36, 'est tempor', 'In ornare', '2017-11-24', 36),
(37, 'Morbi sit', 'aliquam iaculis, lacus pede sagittis augue,', '2017-02-21', 37),
(38, 'erat volutpat.', 'Nunc mauris. Morbi non sapien', '2016-08-12', 38),
(39, 'eget magna.', 'felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.', '2016-10-29', 39),
(40, 'non, feugiat', 'mauris. Suspendisse aliquet molestie tellus.', '2016-03-24', 40),
(41, 'Donec est.', 'quis, pede. Praesent eu dui. Cum sociis', '2017-10-18', 41),
(42, 'scelerisque sed,', 'Nunc mauris sapien, cursus in,', '2016-03-20', 42),
(43, 'Phasellus elit', 'non quam. Pellentesque habitant morbi tristique senectus et', '2017-09-14', 43),
(44, 'Integer sem', 'Nulla tincidunt,', '2017-07-04', 44),
(45, 'et arcu', 'id, ante.', '2016-07-12', 45),
(46, 'pede. Cum', 'tempor, est ac mattis', '2017-07-03', 46),
(47, 'tincidunt orci', 'erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin', '2016-10-09', 47),
(48, 'vitae aliquam', 'faucibus ut, nulla. Cras eu', '2017-09-15', 48),
(49, 'inceptos hymenaeos.', 'tempus non, lacinia at,', '2018-02-01', 49),
(50, 'Etiam gravida', 'Morbi sit amet massa. Quisque porttitor eros', '2016-08-19', 50),
(51, 'mollis non,', 'nec enim. Nunc ut erat.', '2017-12-15', 51),
(52, 'lectus justo', 'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', '2016-03-27', 52),
(53, 'Sed pharetra,', 'natoque penatibus', '2017-01-25', 53),
(54, 'non nisi.', 'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent', '2017-09-25', 54),
(55, 'sed sem', 'vehicula aliquet libero.', '2016-05-16', 55),
(56, 'egestas a,', 'eu neque pellentesque massa lobortis ultrices. Vivamus', '2017-10-30', 56),
(57, 'molestie dapibus', 'non, lobortis quis, pede. Suspendisse', '2017-06-26', 57),
(58, 'Donec nibh.', 'ut, pharetra sed,', '2016-08-20', 58),
(59, 'sit amet,', 'ligula. Aliquam erat volutpat. Nulla dignissim.', '2017-08-21', 59),
(60, 'Mauris non', 'at, velit. Cras lorem lorem, luctus ut,', '2016-11-24', 60),
(61, 'sed pede', 'Nullam scelerisque neque sed', '2017-08-18', 61),
(62, 'commodo auctor', 'iaculis odio. Nam interdum enim', '2016-11-08', 62),
(63, 'aliquet lobortis,', 'arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing.', '2017-10-22', 63),
(64, 'Proin dolor.', 'pellentesque massa', '2016-08-30', 64),
(65, 'ipsum nunc', 'posuere, enim nisl elementum purus, accumsan interdum libero dui', '2017-12-07', 65),
(66, 'egestas lacinia.', 'Nullam', '2017-08-19', 66),
(67, 'posuere vulputate,', 'purus gravida sagittis. Duis gravida.', '2017-03-05', 67),
(68, 'orci luctus', 'metus. In lorem. Donec elementum, lorem ut aliquam', '2017-07-04', 68),
(69, 'ante dictum', 'Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam', '2018-03-17', 69),
(70, 'neque non', 'In mi pede, nonummy ut, molestie in, tempus eu,', '2017-07-08', 70),
(71, 'Duis ac', 'Curabitur egestas nunc sed', '2016-04-03', 71),
(72, 'vulputate mauris', 'sit amet massa.', '2017-09-16', 72),
(73, 'semper cursus.', 'fringilla euismod', '2016-09-15', 73),
(74, 'rutrum non,', 'sit amet, risus. Donec nibh enim,', '2016-05-25', 74),
(75, 'dui. Suspendisse', 'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada', '2017-04-12', 75),
(76, 'ante dictum', 'est, vitae sodales nisi', '2017-12-09', 76),
(77, 'pede nec', 'imperdiet ullamcorper. Duis at', '2017-01-14', 77),
(78, 'lorem ipsum', 'magna sed dui. Fusce aliquam, enim', '2016-05-07', 78),
(79, 'pharetra. Quisque', 'lectus. Nullam', '2018-02-04', 79),
(80, 'laoreet posuere,', 'justo eu arcu. Morbi sit', '2016-07-07', 80),
(81, 'diam dictum', 'ipsum leo elementum sem,', '2018-02-08', 81),
(82, 'Morbi quis', 'augue, eu tempor erat neque non quam. Pellentesque habitant morbi', '2016-09-13', 82),
(83, 'risus. Nunc', 'id, mollis nec, cursus a, enim.', '2016-06-11', 83),
(84, 'molestie pharetra', 'metus.', '2017-06-11', 84),
(85, 'sed leo.', 'a, facilisis non, bibendum sed, est. Nunc laoreet lectus', '2017-09-15', 85),
(86, 'nunc nulla', 'dictum. Proin eget odio. Aliquam vulputate ullamcorper', '2016-08-12', 86),
(87, 'et ultrices', 'egestas. Aliquam nec enim. Nunc ut', '2016-05-12', 87),
(88, 'ante. Nunc', 'In tincidunt congue turpis.', '2017-06-10', 88),
(89, 'amet massa.', 'arcu. Aliquam ultrices', '2017-01-19', 89),
(90, 'orci lacus', 'metus. In nec orci. Donec', '2016-11-08', 90),
(91, 'id ante', 'Ut nec urna et arcu imperdiet ullamcorper. Duis', '2017-05-06', 91),
(92, 'fringilla ornare', 'habitant morbi tristique senectus et netus et', '2016-07-07', 92),
(93, 'convallis, ante', 'tincidunt pede ac urna. Ut tincidunt', '2016-08-08', 93),
(94, 'odio semper', 'libero', '2017-07-14', 94),
(95, 'metus. Vivamus', 'tellus', '2017-02-07', 95),
(96, 'vulputate, posuere', 'fringilla', '2016-05-26', 96),
(97, 'interdum libero', 'Maecenas iaculis aliquet diam. Sed', '2018-02-19', 97),
(98, 'ultricies ornare,', 'scelerisque', '2018-02-02', 98),
(99, 'et magnis', 'augue scelerisque mollis. Phasellus', '2017-05-06', 99),
(100, 'Ut sagittis', 'eget lacus. Mauris non dui', '2017-03-20', 100);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `present` tinyint(1) NOT NULL,
  `fk_Studentid` int(11) NOT NULL,
  `fk_Workshopid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `attendance`
--

INSERT INTO `attendance` (`id`, `present`, `fk_Studentid`, `fk_Workshopid`) VALUES
(1, 1, 8, 1),
(2, 1, 40, 2),
(3, 0, 31, 3),
(4, 0, 32, 4),
(5, 0, 9, 5),
(6, 1, 22, 6),
(7, 1, 29, 7),
(8, 1, 19, 8),
(9, 1, 18, 9),
(10, 1, 23, 10),
(11, 1, 11, 11),
(12, 0, 39, 12),
(13, 0, 4, 13),
(14, 1, 27, 14),
(15, 1, 8, 15),
(16, 0, 36, 16),
(17, 1, 34, 17),
(18, 1, 5, 18),
(19, 0, 36, 19),
(20, 0, 28, 20),
(21, 0, 26, 21),
(22, 0, 19, 22),
(23, 1, 32, 23),
(24, 1, 12, 24),
(25, 1, 3, 25),
(26, 1, 22, 26),
(27, 1, 32, 27),
(28, 0, 3, 28),
(29, 1, 38, 29),
(30, 1, 26, 30),
(31, 0, 13, 31),
(32, 0, 37, 32),
(33, 1, 17, 33),
(34, 1, 28, 34),
(35, 0, 26, 35),
(36, 0, 3, 36),
(37, 1, 6, 37),
(38, 0, 20, 38),
(39, 0, 26, 39),
(40, 1, 9, 40),
(41, 1, 2, 41),
(42, 1, 30, 42),
(43, 1, 5, 43),
(44, 1, 28, 44),
(45, 0, 40, 45),
(46, 0, 1, 46),
(47, 0, 30, 47),
(48, 1, 37, 48),
(49, 1, 21, 49),
(50, 0, 3, 50),
(51, 1, 28, 51),
(52, 1, 35, 52),
(53, 0, 36, 53),
(54, 1, 35, 54),
(55, 1, 17, 55),
(56, 0, 35, 56),
(57, 1, 5, 57),
(58, 0, 18, 58),
(59, 1, 23, 59),
(60, 1, 18, 60),
(61, 1, 30, 61),
(62, 1, 11, 62),
(63, 0, 18, 63),
(64, 0, 22, 64),
(65, 0, 34, 65),
(66, 1, 23, 66),
(67, 1, 15, 67),
(68, 1, 14, 68),
(69, 1, 11, 69),
(70, 1, 22, 70),
(71, 1, 32, 71),
(72, 0, 6, 72),
(73, 1, 38, 73),
(74, 1, 37, 74),
(75, 0, 1, 75),
(76, 0, 23, 76),
(77, 1, 23, 77),
(78, 0, 38, 78),
(79, 0, 32, 79),
(80, 0, 17, 80),
(81, 1, 29, 81),
(82, 1, 22, 82),
(83, 1, 33, 83),
(84, 1, 24, 84),
(85, 1, 10, 85),
(86, 0, 30, 86),
(87, 0, 7, 87),
(88, 0, 15, 88),
(89, 1, 14, 89),
(90, 1, 24, 90),
(91, 0, 33, 91),
(92, 1, 27, 92),
(93, 0, 19, 93),
(94, 1, 14, 94),
(95, 0, 33, 95),
(96, 1, 13, 96),
(97, 0, 10, 97),
(98, 0, 37, 98),
(99, 1, 11, 99),
(100, 1, 40, 100);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `grade` char(2) COLLATE utf16_unicode_ci NOT NULL,
  `fk_Studentid` int(11) NOT NULL,
  `fk_Assignmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `grade`
--

INSERT INTO `grade` (`id`, `created`, `modified`, `grade`, `fk_Studentid`, `fk_Assignmentid`) VALUES
(1, '0000-00-00', '0000-00-00', '7', 30, 1),
(2, '0000-00-00', '0000-00-00', '7', 4, 2),
(3, '0000-00-00', '0000-00-00', '9', 35, 3),
(4, '0000-00-00', '0000-00-00', '2', 23, 4),
(5, '0000-00-00', '0000-00-00', '5', 32, 5),
(6, '0000-00-00', '0000-00-00', '8', 38, 6),
(7, '0000-00-00', '0000-00-00', '3', 8, 7),
(8, '0000-00-00', '0000-00-00', '9', 25, 8),
(9, '0000-00-00', '0000-00-00', '7', 27, 9),
(10, '0000-00-00', '0000-00-00', '8', 40, 10),
(11, '0000-00-00', '0000-00-00', '3', 2, 11),
(12, '0000-00-00', '0000-00-00', '2', 12, 12),
(13, '0000-00-00', '0000-00-00', '9', 34, 13),
(14, '0000-00-00', '0000-00-00', '8', 19, 14),
(15, '0000-00-00', '0000-00-00', '7', 37, 15),
(16, '0000-00-00', '0000-00-00', '2', 36, 16),
(17, '0000-00-00', '0000-00-00', '9', 19, 17),
(18, '0000-00-00', '0000-00-00', '2', 34, 18),
(19, '0000-00-00', '0000-00-00', '2', 10, 19),
(20, '0000-00-00', '0000-00-00', '2', 17, 20),
(21, '0000-00-00', '0000-00-00', '8', 18, 21),
(22, '0000-00-00', '0000-00-00', '2', 31, 22),
(23, '0000-00-00', '0000-00-00', '2', 19, 23),
(24, '0000-00-00', '0000-00-00', '8', 37, 24),
(25, '0000-00-00', '0000-00-00', '9', 24, 25),
(26, '0000-00-00', '0000-00-00', '9', 15, 26),
(27, '0000-00-00', '0000-00-00', '3', 19, 27),
(28, '0000-00-00', '0000-00-00', '8', 25, 28),
(29, '0000-00-00', '0000-00-00', '2', 33, 29),
(30, '0000-00-00', '0000-00-00', '4', 36, 30),
(31, '0000-00-00', '0000-00-00', '7', 6, 31),
(32, '0000-00-00', '0000-00-00', '7', 9, 32),
(33, '0000-00-00', '0000-00-00', '1', 8, 33),
(34, '0000-00-00', '0000-00-00', '2', 39, 34),
(35, '0000-00-00', '0000-00-00', '3', 8, 35),
(36, '0000-00-00', '0000-00-00', '2', 7, 36),
(37, '0000-00-00', '0000-00-00', '10', 14, 37),
(38, '0000-00-00', '0000-00-00', '1', 8, 38),
(39, '0000-00-00', '0000-00-00', '10', 36, 39),
(40, '0000-00-00', '0000-00-00', '9', 6, 40),
(41, '0000-00-00', '0000-00-00', '9', 35, 41),
(42, '0000-00-00', '0000-00-00', '8', 21, 42),
(43, '0000-00-00', '0000-00-00', '6', 38, 43),
(44, '0000-00-00', '0000-00-00', '10', 1, 44),
(45, '0000-00-00', '0000-00-00', '1', 1, 45),
(46, '0000-00-00', '0000-00-00', '4', 32, 46),
(47, '0000-00-00', '0000-00-00', '3', 15, 47),
(48, '0000-00-00', '0000-00-00', '2', 19, 48),
(49, '0000-00-00', '0000-00-00', '5', 17, 49),
(50, '0000-00-00', '0000-00-00', '8', 30, 50),
(51, '0000-00-00', '0000-00-00', '10', 2, 51),
(52, '0000-00-00', '0000-00-00', '5', 12, 52),
(53, '0000-00-00', '0000-00-00', '5', 15, 53),
(54, '0000-00-00', '0000-00-00', '4', 10, 54),
(55, '0000-00-00', '0000-00-00', '10', 37, 55),
(56, '0000-00-00', '0000-00-00', '2', 10, 56),
(57, '0000-00-00', '0000-00-00', '1', 12, 57),
(58, '0000-00-00', '0000-00-00', '1', 31, 58),
(59, '0000-00-00', '0000-00-00', '1', 3, 59),
(60, '0000-00-00', '0000-00-00', '8', 29, 60),
(61, '0000-00-00', '0000-00-00', '5', 8, 61),
(62, '0000-00-00', '0000-00-00', '1', 5, 62),
(63, '0000-00-00', '0000-00-00', '6', 23, 63),
(64, '0000-00-00', '0000-00-00', '6', 32, 64),
(65, '0000-00-00', '0000-00-00', '9', 13, 65),
(66, '0000-00-00', '0000-00-00', '5', 14, 66),
(67, '0000-00-00', '0000-00-00', '6', 26, 67),
(68, '0000-00-00', '0000-00-00', '4', 12, 68),
(69, '0000-00-00', '0000-00-00', '6', 2, 69),
(70, '0000-00-00', '0000-00-00', '4', 40, 70),
(71, '0000-00-00', '0000-00-00', '4', 28, 71),
(72, '0000-00-00', '0000-00-00', '9', 34, 72),
(73, '0000-00-00', '0000-00-00', '8', 5, 73),
(74, '0000-00-00', '0000-00-00', '2', 19, 74),
(75, '0000-00-00', '0000-00-00', '2', 20, 75),
(76, '0000-00-00', '0000-00-00', '7', 32, 76),
(77, '0000-00-00', '0000-00-00', '1', 3, 77),
(78, '0000-00-00', '0000-00-00', '8', 4, 78),
(79, '0000-00-00', '0000-00-00', '8', 1, 79),
(80, '0000-00-00', '0000-00-00', '10', 19, 80),
(81, '0000-00-00', '0000-00-00', '2', 40, 81),
(82, '0000-00-00', '0000-00-00', '5', 28, 82),
(83, '0000-00-00', '0000-00-00', '3', 24, 83),
(84, '0000-00-00', '0000-00-00', '10', 30, 84),
(85, '0000-00-00', '0000-00-00', '6', 6, 85),
(86, '0000-00-00', '0000-00-00', '1', 11, 86),
(87, '0000-00-00', '0000-00-00', '6', 25, 87),
(88, '0000-00-00', '0000-00-00', '2', 17, 88),
(89, '0000-00-00', '0000-00-00', '7', 21, 89),
(90, '0000-00-00', '0000-00-00', '3', 40, 90),
(91, '0000-00-00', '0000-00-00', '4', 11, 91),
(92, '0000-00-00', '0000-00-00', '4', 31, 92),
(93, '0000-00-00', '0000-00-00', '10', 25, 93),
(94, '0000-00-00', '0000-00-00', '4', 38, 94),
(95, '0000-00-00', '0000-00-00', '7', 8, 95),
(96, '0000-00-00', '0000-00-00', '5', 4, 96),
(97, '0000-00-00', '0000-00-00', '1', 10, 97),
(98, '0000-00-00', '0000-00-00', '8', 14, 98),
(99, '0000-00-00', '0000-00-00', '2', 32, 99),
(100, '0000-00-00', '0000-00-00', '9', 34, 100);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `has`
--

CREATE TABLE `has` (
  `fk_Lectorid` int(11) NOT NULL,
  `fk_Workshopid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `has`
--

INSERT INTO `has` (`fk_Lectorid`, `fk_Workshopid`) VALUES
(1, 23),
(1, 24),
(1, 25),
(1, 45),
(1, 87),
(2, 6),
(2, 8),
(2, 30),
(2, 32),
(2, 42),
(2, 53),
(2, 54),
(2, 64),
(2, 98),
(3, 2),
(3, 18),
(3, 43),
(3, 47),
(3, 55),
(3, 63),
(3, 84),
(3, 96),
(4, 48),
(4, 49),
(4, 66),
(4, 86),
(4, 94),
(5, 5),
(5, 10),
(5, 16),
(5, 95),
(6, 4),
(6, 17),
(6, 29),
(6, 67),
(6, 73),
(7, 12),
(7, 40),
(8, 46),
(8, 50),
(8, 65),
(8, 68),
(9, 21),
(9, 26),
(9, 31),
(9, 58),
(9, 59),
(9, 62),
(9, 71),
(9, 78),
(9, 80),
(9, 90),
(9, 97),
(9, 99),
(10, 56),
(10, 81),
(10, 88),
(11, 15),
(11, 44),
(12, 36),
(12, 51),
(12, 72),
(13, 28),
(13, 37),
(13, 52),
(13, 57),
(13, 60),
(13, 75),
(14, 9),
(14, 33),
(14, 89),
(14, 92),
(15, 7),
(15, 13),
(15, 19),
(15, 27),
(15, 35),
(15, 41),
(15, 61),
(15, 77),
(15, 79),
(15, 100),
(16, 11),
(16, 14),
(16, 20),
(16, 38),
(16, 69),
(16, 70),
(16, 85),
(17, 34),
(17, 93),
(18, 3),
(18, 39),
(19, 1),
(19, 22),
(19, 82),
(19, 91),
(20, 74),
(20, 76),
(20, 83);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `lector`
--

CREATE TABLE `lector` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `biography` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `fk_Userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `lector`
--

INSERT INTO `lector` (`id`, `biography`, `fk_Userid`) VALUES
(1, 'rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales', 41),
(2, 'rutrum eu, ultrices sit amet, risus. Donec nibh', 42),
(3, 'in consequat enim diam vel arcu. Curabitur', 43),
(4, 'dictum magna. Ut tincidunt orci quis lectus. Nullam', 44),
(5, 'magnis dis parturient montes,', 45),
(6, 'a, magna. Lorem ipsum', 46),
(7, 'amet', 47),
(8, 'lectus sit amet luctus vulputate,', 48),
(9, 'dignissim magna a', 49),
(10, 'Mauris molestie pharetra nibh. Aliquam ornare,', 50),
(11, 'interdum', 51),
(12, 'eros. Nam', 52),
(13, 'id nunc interdum', 53),
(14, 'diam dictum', 54),
(15, 'Suspendisse', 55),
(16, 'lacinia', 56),
(17, 'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id', 57),
(18, 'pede. Cum sociis natoque', 58),
(19, 'eu tempor erat neque non quam. Pellentesque habitant morbi tristique', 59),
(20, 'velit justo nec ante. Maecenas mi', 60);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `mentor`
--

CREATE TABLE `mentor` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `fk_Teamid` int(11) NOT NULL,
  `fk_Userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `mentor`
--

INSERT INTO `mentor` (`id`, `fk_Teamid`, `fk_Userid`) VALUES
(1, 1, 100),
(2, 2, 99),
(3, 3, 98),
(4, 4, 97),
(5, 5, 96),
(6, 6, 95),
(7, 7, 94),
(8, 8, 93),
(9, 9, 92),
(10, 10, 91),
(11, 11, 90),
(12, 12, 89),
(13, 13, 88),
(14, 14, 87),
(15, 15, 86),
(16, 16, 85),
(17, 17, 84),
(18, 18, 83),
(19, 19, 82),
(20, 20, 81),
(21, 21, 80),
(22, 22, 79),
(23, 23, 78),
(24, 24, 77),
(25, 25, 76),
(26, 26, 75),
(27, 27, 74),
(28, 28, 73),
(29, 29, 72),
(30, 30, 71),
(31, 31, 70),
(32, 32, 69),
(33, 33, 68),
(34, 34, 67),
(35, 35, 66),
(36, 36, 65),
(37, 37, 64),
(38, 38, 63),
(39, 39, 62),
(40, 40, 61),
(41, 41, 60),
(42, 42, 59),
(43, 43, 58),
(44, 44, 57),
(45, 45, 56),
(46, 46, 55),
(47, 47, 54),
(48, 48, 53),
(49, 49, 52),
(50, 50, 51),
(51, 51, 50),
(52, 52, 49),
(53, 53, 48),
(54, 54, 47),
(55, 55, 46),
(56, 56, 45),
(57, 57, 44),
(58, 58, 43),
(59, 59, 42),
(60, 60, 41),
(61, 61, 40),
(62, 62, 39),
(63, 63, 38),
(64, 64, 37),
(65, 65, 36),
(66, 66, 35),
(67, 67, 34),
(68, 68, 33),
(69, 69, 32),
(70, 70, 31),
(71, 71, 30),
(72, 72, 29),
(73, 73, 28),
(74, 74, 27),
(75, 75, 26),
(76, 76, 25),
(77, 77, 24),
(78, 78, 23),
(79, 79, 22),
(80, 80, 21),
(81, 81, 20),
(82, 82, 19),
(83, 83, 18),
(84, 84, 17),
(85, 85, 16),
(86, 86, 15),
(87, 87, 14),
(88, 88, 13),
(89, 89, 12),
(90, 90, 11),
(91, 91, 10),
(92, 92, 9),
(93, 93, 8),
(94, 94, 7),
(95, 95, 6),
(96, 96, 5),
(97, 97, 4),
(98, 98, 3),
(99, 99, 2),
(100, 100, 1);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `fk_Teamid` int(11) NOT NULL,
  `fk_Userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `student`
--

INSERT INTO `student` (`id`, `fk_Teamid`, `fk_Userid`) VALUES
(1, 30, 1),
(2, 50, 2),
(3, 92, 3),
(4, 86, 4),
(5, 22, 5),
(6, 66, 6),
(7, 63, 7),
(8, 30, 8),
(9, 63, 9),
(10, 98, 10),
(11, 39, 11),
(12, 3, 12),
(13, 47, 13),
(14, 84, 14),
(15, 48, 15),
(16, 21, 16),
(17, 1, 17),
(18, 45, 18),
(19, 59, 19),
(20, 65, 20),
(21, 1, 21),
(22, 22, 22),
(23, 45, 23),
(24, 54, 24),
(25, 70, 25),
(26, 96, 26),
(27, 67, 27),
(28, 90, 28),
(29, 17, 29),
(30, 14, 30),
(31, 4, 31),
(32, 79, 32),
(33, 15, 33),
(34, 42, 34),
(35, 7, 35),
(36, 51, 36),
(37, 69, 37),
(38, 5, 38),
(39, 58, 39),
(40, 88, 40);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `fk_Academyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `team`
--

INSERT INTO `team` (`id`, `name`, `fk_Academyid`) VALUES
(1, 'Colette C. Reynolds', 16),
(2, 'Ina Mcbride', 17),
(3, 'Tashya Decker', 7),
(4, 'Leslie K. Richmond', 86),
(5, 'Stephen Foreman', 8),
(6, 'Ferris Mercado', 89),
(7, 'Courtney Palmer', 41),
(8, 'Jael H. Church', 57),
(9, 'September Bird', 37),
(10, 'Aubrey F. Wilder', 70),
(11, 'Kareem Neal', 75),
(12, 'Rajah V. Tillman', 27),
(13, 'Alvin Keller', 62),
(14, 'Jamal Harper', 4),
(15, 'Gavin Perez', 48),
(16, 'Rylee Spears', 5),
(17, 'Hope Cardenas', 29),
(18, 'Linus Herring', 11),
(19, 'Sybil Gallagher', 73),
(20, 'Zachary G. Gentry', 69),
(21, 'Calvin Hopper', 39),
(22, 'Victor Cooper', 100),
(23, 'Zahir T. Singleton', 85),
(24, 'Daniel C. Molina', 37),
(25, 'Vladimir F. Moody', 42),
(26, 'Michelle F. Cortez', 67),
(27, 'Lionel N. Winters', 36),
(28, 'Josephine Taylor', 60),
(29, 'Arden Q. Estrada', 37),
(30, 'Yael Douglas', 3),
(31, 'Shelby G. Dawson', 62),
(32, 'Graiden Salinas', 47),
(33, 'Elaine X. West', 88),
(34, 'Fatima Foster', 80),
(35, 'Cherokee C. Carter', 89),
(36, 'Amaya I. Grant', 73),
(37, 'Daryl Walter', 49),
(38, 'Eve I. Chapman', 63),
(39, 'Elijah A. Mendez', 75),
(40, 'Garth Guzman', 46),
(41, 'Glenna R. Coleman', 98),
(42, 'Ocean Osborn', 53),
(43, 'Adara P. Sharpe', 55),
(44, 'Martha S. Barrera', 18),
(45, 'Gretchen Reed', 14),
(46, 'Cedric Z. Vaughn', 21),
(47, 'Levi Colon', 54),
(48, 'Lucy T. Harris', 15),
(49, 'Kathleen Weaver', 52),
(50, 'Zorita J. Hodges', 9),
(51, 'Kai Benjamin', 72),
(52, 'Quinn Flores', 68),
(53, 'Juliet M. Rhodes', 94),
(54, 'Sheila Lambert', 91),
(55, 'Freya O. Puckett', 33),
(56, 'Barclay C. Camacho', 97),
(57, 'Jeremy Hancock', 93),
(58, 'Brett Munoz', 15),
(59, 'Jarrod Glass', 42),
(60, 'Drake Estes', 43),
(61, 'Stephanie H. Bauer', 72),
(62, 'Rana Romero', 31),
(63, 'MacKensie Hutchinson', 93),
(64, 'Daryl U. Tyler', 67),
(65, 'Tucker Anthony', 51),
(66, 'Kessie K. Navarro', 60),
(67, 'Justine D. Barrett', 100),
(68, 'Rina Frost', 8),
(69, 'Murphy P. Gilbert', 9),
(70, 'Montana I. Dalton', 60),
(71, 'Casey B. Beard', 44),
(72, 'Kendall Petty', 96),
(73, 'Neve A. Barker', 15),
(74, 'Carissa Rocha', 78),
(75, 'Ariana Hahn', 34),
(76, 'Allen U. Mejia', 5),
(77, 'Daria Diaz', 73),
(78, 'Malik Walter', 65),
(79, 'Selma Parker', 67),
(80, 'Joseph D. Wynn', 13),
(81, 'Ahmed Mitchell', 53),
(82, 'Talon Dawson', 51),
(83, 'Ora V. Zimmerman', 35),
(84, 'Justine Miles', 96),
(85, 'Emily O. Hays', 87),
(86, 'Nora Curry', 65),
(87, 'Hammett I. Banks', 34),
(88, 'Shelley X. Humphrey', 48),
(89, 'Madonna L. Davenport', 62),
(90, 'MacKenzie N. Lynch', 85),
(91, 'Lacey Waller', 14),
(92, 'Jasmine Marquez', 13),
(93, 'Ori Woodard', 32),
(94, 'Maite Boone', 32),
(95, 'Lester M. Cohen', 16),
(96, 'Audra Duke', 39),
(97, 'Trevor L. Robinson', 67),
(98, 'Coby Swanson', 96),
(99, 'Brady Fitzpatrick', 62),
(100, 'James J. Munoz', 23);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `name`) VALUES
(1, 'Ciaran', 'dolor.tempus.non@metus.net', 'Quincy R. Becker'),
(2, 'Derek', 'rhoncus@bibendumsed.com', 'Eric Q. Acosta'),
(3, 'Drake', 'molestie.in.tempus@Proin.edu', 'James E. Whitney'),
(4, 'Knox', 'Sed@ante.ca', 'Timon V. Cervantes'),
(5, 'Michael', 'Quisque.varius.Nam@quisdiamluctus.co.uk', 'Wayne Huber'),
(6, 'Kennan', 'ornare.lectus.justo@Pellentesqueultricies.edu', 'Dacey Pacheco'),
(7, 'Clinton', 'est.ac.facilisis@pulvinararcu.com', 'Lila R. Clements'),
(8, 'Raja', 'Vestibulum.ut.eros@loremDonec.edu', 'Callie Crosby'),
(9, 'Fitzgerald', 'nisi.sem@Praesenteunulla.net', 'Abel Huff'),
(10, 'Tate', 'posuere.cubilia@facilisisfacilisis.ca', 'Jade Clemons'),
(11, 'Brady', 'nec@faucibusorci.net', 'Gannon Christian'),
(12, 'Kyle', 'dis.parturient.montes@erat.ca', 'Cassady B. Harrell'),
(13, 'Stewart', 'mollis@hendrerit.com', 'Clio Chase'),
(14, 'Hedley', 'arcu.Vestibulum.ut@risusatfringilla.edu', 'Steven R. Estrada'),
(15, 'Bernard', 'Mauris.nulla.Integer@ligulaelit.net', 'Leslie I. Whitley'),
(16, 'Griffith', 'ac.feugiat@non.edu', 'Acton Jacobs'),
(17, 'Cullen', 'sem.eget.massa@rhoncusidmollis.net', 'Len Pace'),
(18, 'Silas', 'vitae.velit.egestas@molestiearcuSed.edu', 'Russell M. Fitzpatrick'),
(19, 'Ryan', 'ipsum.Donec.sollicitudin@Sedcongueelit.edu', 'Lillith Mclaughlin'),
(20, 'Barclay', 'nec@laoreetipsumCurabitur.com', 'Kaitlin G. Zimmerman'),
(21, 'Lucian', 'velit.Pellentesque@semperet.co.uk', 'Phillip Y. Aguirre'),
(22, 'Clarke', 'Donec@Lorem.net', 'Ferris Craig'),
(23, 'Xavier', 'dolor.Quisque@semmagna.org', 'Phoebe Frederick'),
(24, 'Aidan', 'tempus.non@disparturient.edu', 'Prescott Wood'),
(25, 'Baxter', 'Proin.ultrices@pharetranibhAliquam.edu', 'Aurora S. Alvarado'),
(26, 'Zeus', 'ante.Maecenas.mi@enimnonnisi.net', 'Rebekah K. Key'),
(27, 'Hunter', 'Proin@consectetueradipiscingelit.edu', 'Dahlia Riley'),
(28, 'Hall', 'cubilia.Curae@eros.ca', 'Tad L. Sparks'),
(29, 'Kibo', 'tristique.senectus@purusgravidasagittis.edu', 'Odette R. Dyer'),
(30, 'Davis', 'ornare@lacusQuisque.co.uk', 'Samantha V. Hurst'),
(31, 'Armando', 'magna@semutdolor.edu', 'Jorden X. Quinn'),
(32, 'Neville', 'Nullam@pede.net', 'Quinn Mejia'),
(33, 'Clinton', 'eu@quamelementumat.edu', 'Madison Y. Tyson'),
(34, 'Xavier', 'Ut.sagittis@posuere.net', 'Debra T. Matthews'),
(35, 'Keaton', 'pede.sagittis.augue@felis.co.uk', 'Vanna Perez'),
(36, 'Lester', 'purus.Nullam@eratsemperrutrum.co.uk', 'Summer O. Key'),
(37, 'Gavin', 'nisl.Quisque@Naminterdum.co.uk', 'Martina Macdonald'),
(38, 'Daniel', 'lectus.Nullam@pellentesquemassalobortis.ca', 'Rigel I. Hebert'),
(39, 'Gabriel', 'Duis.risus@consequatenim.net', 'Felicia Humphrey'),
(40, 'Kato', 'Nunc.lectus.pede@seddictumeleifend.org', 'Ifeoma Good'),
(41, 'Kennan', 'sed@metusvitaevelit.net', 'Louis Q. Donaldson'),
(42, 'Maxwell', 'tincidunt.pede@diamvel.co.uk', 'Iris Marks'),
(43, 'Colby', 'amet.lorem@euneque.com', 'Jemima Q. Callahan'),
(44, 'Jameson', 'amet.luctus@Vivamus.net', 'Yoshio D. Middleton'),
(45, 'Henry', 'tristique.senectus.et@musProinvel.ca', 'Jerry Cabrera'),
(46, 'Jamal', 'ornare@enim.net', 'Zoe Z. Marsh'),
(47, 'Harrison', 'imperdiet.ornare@Fuscediamnunc.org', 'Merrill C. Bullock'),
(48, 'Devin', 'mauris.eu.elit@pedeCras.ca', 'Kaseem Mathis'),
(49, 'Ezekiel', 'egestas@nisinibhlacinia.edu', 'Jerome Nguyen'),
(50, 'Duncan', 'mus.Aenean@ettristiquepellentesque.edu', 'Darius E. Cannon'),
(51, 'Oscar', 'sem.egestas.blandit@Aliquamtinciduntnunc.org', 'Kylynn D. Blackwell'),
(52, 'Dolan', 'habitant.morbi.tristique@ornareliberoat.net', 'Halee A. Livingston'),
(53, 'Myles', 'Lorem.ipsum@sedconsequat.ca', 'Macon F. Cline'),
(54, 'Brent', 'Phasellus.nulla.Integer@tempusloremfringilla.ca', 'Kai Wheeler'),
(55, 'Calvin', 'magna.Lorem@tortoratrisus.org', 'Thane Ortiz'),
(56, 'Fletcher', 'amet.risus.Donec@nequeIn.com', 'Jael L. Tanner'),
(57, 'Kaseem', 'bibendum.Donec@molestie.edu', 'Harlan L. Cantu'),
(58, 'Cole', 'a.odio@duiCum.co.uk', 'Keiko Y. Perry'),
(59, 'Hall', 'mi.Duis.risus@auctor.com', 'Raja Cote'),
(60, 'Jesse', 'eros.non.enim@Duisvolutpatnunc.edu', 'Stone Warner'),
(61, 'Brady', 'felis.adipiscing@ullamcorper.co.uk', 'Kai E. Jefferson'),
(62, 'Jerry', 'massa@lacus.net', 'Hadley Green'),
(63, 'Callum', 'diam@nonegestas.edu', 'Jesse F. Kaufman'),
(64, 'Abraham', 'faucibus@ullamcorpernislarcu.org', 'Orli Weiss'),
(65, 'Ezra', 'Proin@facilisi.com', 'Vernon Shannon'),
(66, 'Jonah', 'neque@commodo.ca', 'Sharon A. Chen'),
(67, 'Callum', 'commodo.auctor@mattis.co.uk', 'Adena J. Holland'),
(68, 'Keegan', 'amet.faucibus.ut@nisi.com', 'Holmes Kerr'),
(69, 'Kelly', 'id.mollis@nibh.co.uk', 'Marsden Dixon'),
(70, 'Christopher', 'elit.Nulla.facilisi@necdiamDuis.net', 'Ava U. Vaughan'),
(71, 'Dennis', 'convallis@atpede.com', 'Gannon Herring'),
(72, 'Harding', 'Nulla.eu.neque@loremluctusut.com', 'Iona Coffey'),
(73, 'Trevor', 'eget.ipsum@elit.com', 'Lucian W. Good'),
(74, 'Peter', 'Suspendisse.non.leo@pellentesqueafacilisis.edu', 'Lucas J. Cabrera'),
(75, 'Brock', 'lacus.Aliquam.rutrum@aptent.org', 'Dylan W. Leon'),
(76, 'Hedley', 'hendrerit.Donec.porttitor@luctusCurabitur.co.uk', 'Calvin Crosby'),
(77, 'Carter', 'tincidunt@rutrumurnanec.ca', 'Shaine V. Pickett'),
(78, 'Walker', 'Aliquam.tincidunt.nunc@tinciduntdui.ca', 'Honorato I. Estes'),
(79, 'Charles', 'id@ante.net', 'Brandon O. Chang'),
(80, 'Hamilton', 'aliquet.odio@Phasellus.ca', 'Odessa U. Mooney'),
(81, 'Jordan', 'placerat.eget.venenatis@rutrumFusce.org', 'Jillian Harrell'),
(82, 'Amal', 'risus.Morbi@nibh.org', 'Sloane Y. Larsen'),
(83, 'Aaron', 'fringilla.cursus@adui.net', 'Lester Hughes'),
(84, 'Rajah', 'ipsum.Phasellus@aliquetlobortisnisi.ca', 'Melvin J. Hood'),
(85, 'Acton', 'varius.orci.in@temporbibendumDonec.com', 'Macy Hewitt'),
(86, 'Zachary', 'fermentum.vel.mauris@gravida.com', 'Lavinia Newman'),
(87, 'Xander', 'mauris.elit@sed.co.uk', 'Amir J. Berg'),
(88, 'Trevor', 'ligula@in.com', 'Claire Webb'),
(89, 'Tarik', 'purus.accumsan@elitCurabitursed.com', 'Hillary X. Harris'),
(90, 'Tanek', 'at.iaculis.quis@tristique.ca', 'Kareem H. Ward'),
(91, 'Arsenio', 'penatibus@aaliquet.ca', 'Samantha Parsons'),
(92, 'Jasper', 'ultricies.sem.magna@semmolestie.co.uk', 'Kendall Hampton'),
(93, 'Herman', 'sagittis@consectetuereuismodest.org', 'Rooney U. Morgan'),
(94, 'Ezra', 'nibh.Donec@erat.org', 'Rhiannon K. Gibson'),
(95, 'Slade', 'Duis.gravida.Praesent@nuncinterdum.edu', 'Tarik M. Whitehead'),
(96, 'Louis', 'lectus@tortordictum.ca', 'Jolie R. Schwartz'),
(97, 'Dante', 'eget@orci.ca', 'Selma K. Mercado'),
(98, 'Aladdin', 'Nam.consequat.dolor@et.net', 'Cassady Calderon'),
(99, 'Amir', 'commodo.at@CrasinterdumNunc.ca', 'Uriel Olson'),
(100, 'Vincent', 'ut.aliquam.iaculis@magnisdisparturient.co.uk', 'Harriet Robinson');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `workshop`
--

CREATE TABLE `workshop` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `fk_Academyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `workshop`
--

INSERT INTO `workshop` (`id`, `date`, `description`, `fk_Academyid`) VALUES
(1, '2017-10-11', 'dis parturient montes, nascetur ridiculus mus. Donec dignissim magna', 30),
(2, '2016-05-31', 'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', 7),
(3, '2017-02-05', 'dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit', 56),
(4, '2017-02-10', 'dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,', 93),
(5, '2016-11-26', 'ut, nulla. Cras eu tellus eu', 72),
(6, '2017-08-04', 'Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem', 50),
(7, '2017-03-27', 'vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis', 49),
(8, '2016-09-29', 'pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.', 42),
(9, '2017-07-21', 'nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis', 86),
(10, '2017-09-30', 'Integer in magna. Phasellus dolor elit, pellentesque a,', 54),
(11, '2016-11-03', 'sit amet lorem semper auctor. Mauris', 79),
(12, '2016-04-08', 'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis.', 94),
(13, '2017-12-04', 'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum', 64),
(14, '2017-10-31', 'dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu', 85),
(15, '2017-12-06', 'et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a', 81),
(16, '2017-08-19', 'a, arcu. Sed et libero. Proin', 96),
(17, '2017-07-26', 'ultricies ornare, elit elit fermentum risus, at', 51),
(18, '2017-03-17', 'nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et', 30),
(19, '2016-12-15', 'justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.', 36),
(20, '2017-10-21', 'Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,', 19),
(21, '2017-05-26', 'Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean', 28),
(22, '2018-02-09', 'vitae erat vel pede blandit congue.', 24),
(23, '2017-09-16', 'magnis dis parturient montes, nascetur ridiculus mus.', 24),
(24, '2016-09-27', 'tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui,', 2),
(25, '2018-03-10', 'feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', 66),
(26, '2017-06-23', 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque', 53),
(27, '2017-11-04', 'quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam', 42),
(28, '2016-05-21', 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci', 50),
(29, '2017-01-30', 'Donec porttitor tellus non magna. Nam ligula elit, pretium', 30),
(30, '2016-06-07', 'Phasellus in felis. Nulla tempor augue', 41),
(31, '2016-03-21', 'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum', 17),
(32, '2017-11-18', 'Suspendisse aliquet molestie tellus. Aenean egestas hendrerit', 30),
(33, '2016-12-22', 'imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit', 5),
(34, '2016-12-15', 'neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam', 85),
(35, '2017-01-05', 'ipsum. Suspendisse non leo. Vivamus nibh dolor,', 10),
(36, '2016-08-05', 'lorem, auctor quis, tristique ac, eleifend vitae,', 60),
(37, '2016-05-25', 'orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam', 29),
(38, '2016-12-07', 'sociis natoque penatibus et magnis dis parturient montes, nascetur', 24),
(39, '2017-07-04', 'dui augue eu tellus. Phasellus elit pede,', 8),
(40, '2018-01-17', 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu.', 1),
(41, '2016-09-13', 'In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus', 61),
(42, '2017-11-12', 'semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', 82),
(43, '2016-05-31', 'vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,', 85),
(44, '2017-08-16', 'ultricies adipiscing, enim mi tempor lorem,', 50),
(45, '2016-12-31', 'egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus', 59),
(46, '2018-02-06', 'arcu imperdiet ullamcorper. Duis at lacus.', 29),
(47, '2016-10-19', 'arcu. Sed et libero. Proin mi.', 25),
(48, '2017-06-12', 'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,', 36),
(49, '2017-02-15', 'orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus', 65),
(50, '2017-05-16', 'elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 49),
(51, '2018-01-09', 'neque tellus, imperdiet non, vestibulum', 70),
(52, '2017-01-02', 'lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis', 30),
(53, '2018-02-07', 'dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio', 90),
(54, '2016-06-13', 'ante, iaculis nec, eleifend non,', 94),
(55, '2016-10-01', 'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam', 12),
(56, '2016-08-13', 'felis orci, adipiscing non, luctus sit', 55),
(57, '2016-12-11', 'fringilla mi lacinia mattis. Integer eu lacus. Quisque', 96),
(58, '2017-01-16', 'lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec', 76),
(59, '2017-03-23', 'enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo', 61),
(60, '2016-05-06', 'et magnis dis parturient montes, nascetur ridiculus mus.', 73),
(61, '2016-04-28', 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet', 7),
(62, '2016-06-21', 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', 90),
(63, '2017-06-24', 'Quisque ornare tortor at risus. Nunc ac sem ut', 95),
(64, '2017-07-21', 'ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in', 47),
(65, '2016-05-19', 'Cras pellentesque. Sed dictum. Proin', 5),
(66, '2016-05-08', 'interdum feugiat. Sed nec metus', 53),
(67, '2016-06-07', 'elit. Etiam laoreet, libero et', 69),
(68, '2018-03-01', 'fringilla, porttitor vulputate, posuere vulputate, lacus. Cras', 52),
(69, '2017-03-22', 'viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit', 84),
(70, '2017-04-12', 'mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu', 83),
(71, '2016-05-17', 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 88),
(72, '2017-05-27', 'natoque penatibus et magnis dis parturient montes, nascetur', 19),
(73, '2016-12-30', 'feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing', 48),
(74, '2017-08-31', 'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', 59),
(75, '2018-02-04', 'lectus pede et risus. Quisque libero lacus, varius', 50),
(76, '2018-02-15', 'Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor,', 41),
(77, '2016-06-14', 'Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem,', 39),
(78, '2016-10-18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque.', 17),
(79, '2017-06-19', 'semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis', 44),
(80, '2017-03-12', 'dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum', 99),
(81, '2016-09-09', 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris', 98),
(82, '2017-12-10', 'neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec', 4),
(83, '2017-01-05', 'turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna', 10),
(84, '2017-08-06', 'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', 99),
(85, '2016-11-28', 'Nulla eget metus eu erat semper rutrum. Fusce', 77),
(86, '2016-05-06', 'risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi', 79),
(87, '2017-06-23', 'congue, elit sed consequat auctor, nunc nulla', 9),
(88, '2017-03-23', 'turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in,', 11),
(89, '2017-11-03', 'ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt', 41),
(90, '2018-03-02', 'sed leo. Cras vehicula aliquet', 6),
(91, '2017-04-05', 'vitae, erat. Vivamus nisi. Mauris nulla.', 59),
(92, '2017-11-13', 'at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac', 94),
(93, '2017-10-13', 'lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant', 93),
(94, '2017-02-22', 'quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per', 54),
(95, '2017-07-24', 'nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna.', 36),
(96, '2016-06-15', 'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc', 12),
(97, '2017-12-28', 'vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam', 58),
(98, '2017-12-03', 'Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a,', 87),
(99, '2017-08-10', 'tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor', 69),
(100, '2017-03-25', 'lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy`
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD KEY `fkc_workshop_assignment` (`fk_Workshopid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `fkc_student_attendance` (`fk_Studentid`),
  ADD KEY `fkc_workshop_of_attendance` (`fk_Workshopid`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD KEY `Belongs_to_a` (`fk_Studentid`),
  ADD KEY `fkc_assignment_grade` (`fk_Assignmentid`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`fk_Lectorid`,`fk_Workshopid`),
  ADD KEY `fkc_workchop` (`fk_Workshopid`);

--
-- Indexes for table `lector`
--
ALTER TABLE `lector`
  ADD UNIQUE KEY `fk_Userid` (`fk_Userid`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD KEY `fk_Teamid` (`fk_Teamid`),
  ADD KEY `fk_Userid` (`fk_Userid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD KEY `fk_Userid` (`fk_Userid`),
  ADD KEY `Is_in_a` (`fk_Teamid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD KEY `fkc_academy_team` (`fk_Academyid`);

--
-- Indexes for table `users`
--

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD KEY `fkc_academy_of_workshop` (`fk_Academyid`);

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `fkc_workshop_assignment` FOREIGN KEY (`fk_Workshopid`) REFERENCES `workshop` (`id`);

--
-- Apribojimai lentelei `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `fkc_student_attendance` FOREIGN KEY (`fk_Studentid`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `fkc_workshop_of_attendance` FOREIGN KEY (`fk_Workshopid`) REFERENCES `workshop` (`id`);

--
-- Apribojimai lentelei `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `Belongs_to_a` FOREIGN KEY (`fk_Studentid`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `fkc_assignment_grade` FOREIGN KEY (`fk_Assignmentid`) REFERENCES `assignment` (`id`);

--
-- Apribojimai lentelei `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `fkc_lector_has` FOREIGN KEY (`fk_Lectorid`) REFERENCES `lector` (`id`),
  ADD CONSTRAINT `fkc_workchop` FOREIGN KEY (`fk_Workshopid`) REFERENCES `workshop` (`id`);

--
-- Apribojimai lentelei `lector`
--
ALTER TABLE `lector`
  ADD CONSTRAINT `is_a` FOREIGN KEY (`fk_Userid`) REFERENCES `users` (`id`);

--
-- Apribojimai lentelei `mentor`
--
ALTER TABLE `mentor`
  ADD CONSTRAINT `fkc_team_mentor` FOREIGN KEY (`fk_Teamid`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `fkc_user_mentor` FOREIGN KEY (`fk_Userid`) REFERENCES `users` (`id`);

--
-- Apribojimai lentelei `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Is_in_a` FOREIGN KEY (`fk_Teamid`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `fkc_user_student` FOREIGN KEY (`fk_Userid`) REFERENCES `users` (`id`);

--
-- Apribojimai lentelei `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `fkc_academy_team` FOREIGN KEY (`fk_Academyid`) REFERENCES `academy` (`id`);

--
-- Apribojimai lentelei `workshop`
--
ALTER TABLE `workshop`
  ADD CONSTRAINT `fkc_academy_of_workshop` FOREIGN KEY (`fk_Academyid`) REFERENCES `academy` (`id`);



-- MANO STUFF

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

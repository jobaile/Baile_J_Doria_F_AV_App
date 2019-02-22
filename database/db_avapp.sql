-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2018 at 09:36 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_avapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) NOT NULL,
  `director` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `img` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imdb_rate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `title`, `director`, `description`, `img`, `url`, `imdb_rate`) VALUES
(1, 'Back To The Future', 'Robert Zemeckis', 'California teen Marty McFly is thrown back into the \'50s when an experiment by his eccentric scientist friend Doc Brown.', 'backtothefuture.jpg', 'http://google.ca', '8.5'),
(2, 'Psycho', 'Alfred Hitchcock', 'Phoenix secretary Marion Crane (Janet Leigh), on the lam after stealing $40,000 from her employer in order to run away with her boyfriend, Sam Loomis (John Gavin), is overcome by exhaustion during a heavy rainstorm.', 'psycho.jpg', 'https://google.ca', '8.5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2019 at 10:42 AM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Comedy'),
(2, 'Drama'),
(3, 'Family'),
(4, 'Fantasy'),
(5, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_decade` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_desc` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_decade`, `movies_runtime`, `movies_desc`, `movies_trailer`) VALUES
(1, 'ironman.jpg', 'Iron Man', '1', '', '', 'ironman.mp4'),
(2, 'deadpool.jpg', 'Deadpool', '1', '', '', 'deadpool.mp4'),
(3, 'trolls.jpg', 'Trolls', '1', '', '', 'trolls.mp4'),
(4, 'harrypotter.jpg', 'Harry Potter', '1', '', '', 'harrypotter.mp4'),
(5, 'lalaland.jpg', 'La La Land', '1', '', '', 'lalaland.mp4'),
(6, 'matrix.jpg', 'The Matrix', '2', '', '', 'matrix.mp4'),
(7, 'mask.jpg', 'The Mask', '2', '', '', 'mask.mp4'),
(8, 'toystory.jpg', 'Toy Story', '2', '', '', 'toystory.mp4'),
(9, 'hook.jpg', 'Hook', '2', '', '', 'hook.mp4'),
(10, 'forrest.jpg', 'Forrest Gump', '2', '', '', 'forrest.mp4'),
(11, 'topgun.jpg', 'Top Gun', '3', '', '', 'topgun.mp4'),
(12, 'future.jpg', 'Back to the Future', '3', '', '', 'future.mp4'),
(13, 'goonies.jpg', 'The Goonies', '3', '', '', 'goonies.mp4'),
(14, 'ghostbusters.jpg', 'Ghostbusters', '3', '', '', 'ghostbusters.mp4'),
(15, 'breakfast.jpg', 'The Breakfast Club', '3', '', '', 'breakfast.mp4'),
(16, 'jaws.jpg', 'Jaws', '4', '', '', 'jaws.mp4'),
(17, 'animal.jpg', 'Animal House', '4', '', '', 'animal.mp4'),
(18, 'charlotte.jpg', 'Charlottes Web', '4', '', '', 'charlotte.mp4'),
(19, 'alien.jpg', 'Alien', '4', '', '', 'alien.mp4'),
(20, 'godfather.jpg', 'The Godfather', '4', '', '', 'godfather.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(10) UNSIGNED NOT NULL,
  `music_cover` varchar(25) NOT NULL,
  `music_title` varchar(50) NOT NULL,
  `music_artist` varchar(35) NOT NULL,
  `music_decade` mediumint(9) NOT NULL,
  `music_audio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_cover`, `music_title`, `music_artist`, `music_decade`, `music_audio`) VALUES
(1, 'kanye.jpg', 'Famous', 'Kanye West', 1, 'famous.mp3'),
(2, 'edsheeran.jpg', 'Perfect', 'Ed Sheeran', 1, 'edsheeran.jpg'),
(3, 'ariana.jpg', 'Thank U Next', 'Ariana Grande', 1, 'thanku.mp3'),
(4, 'adele.jpg', 'Rolling in the Deep', 'Adele', 1, 'rolling.mp3'),
(5, 'jackson.jpg', 'Billie Jean', 'Michael Jackson', 3, 'billiejean.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` int(10) UNSIGNED NOT NULL,
  `tv_cover` varchar(30) NOT NULL,
  `tv_title` varchar(50) NOT NULL,
  `tv_decade` int(11) NOT NULL,
  `tv_desc` text NOT NULL,
  `tv_trailer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_cover`, `tv_title`, `tv_decade`, `tv_desc`, `tv_trailer`) VALUES
(1, 'got.jpg', 'Game of Thrones', 1, '', 'got.mp4'),
(2, 'criminalminds.jpg', 'Criminal Minds', 1, '', 'criminalminds.mp4'),
(3, 'sheldon.jpg', 'Young Sheldon', 1, '', 'sheldon.mp4'),
(4, 'rickandmorty.jpg', 'Rick and Morty', 1, '', 'rickandmorty.mp4'),
(5, 'modern.jpg', 'Modern Family', 1, '', 'modern.mp4'),
(6, 'pawpatrol.jpg', 'Paw Patrol', 1, '', 'pawpatrol.mp4'),
(7, 'doctorwho.jpg', 'Doctor Who', 2, '', 'doctorwho.mp4'),
(8, 'adventuretime.jpg', 'Adventure Time', 1, '', 'adventuretime.jpg'),
(9, 'greys.jpg', 'Greys Anatomy', 1, '', 'greys.mp4'),
(10, 'strangerthings.jpg', 'Stranger Things', 1, '', 'strangerthings.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) NOT NULL,
  `user_access` tinyint(4) NOT NULL,
  `user_avatar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_login`, `user_ip`, `user_admin`, `user_access`, `user_avatar`) VALUES
(1, 'Joanna', 'user', '123', 'joanna@hello.ca', '2019-03-13 00:00:18', '0000-00-00 00:00:00', '::1', 1, 5, 'user1.png'),
(2, 'Kid', 'user2', '123', 'kid@hello.ca', '2019-03-13 00:00:21', '0000-00-00 00:00:00', 'no', 0, 3, 'user3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  ADD PRIMARY KEY (`arating_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  MODIFY `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

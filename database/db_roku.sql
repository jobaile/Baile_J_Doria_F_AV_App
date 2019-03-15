-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2019 at 01:19 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
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
(1, 'ironman.jpg', 'Iron Man', '1', '', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.\r\n', 'ironman.mp4'),
(2, 'deadpool.jpg', 'Deadpool', '1', '', 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.\r\n', 'deadpool.mp4'),
(3, 'trolls.jpg', 'Trolls', '1', '', 'After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.\r\n', 'trolls.mp4'),
(4, 'harrypotter.jpg', 'Harry Potter', '1', '', 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.\r\n', 'harrypotter.mp4'),
(5, 'lalaland.jpg', 'La La Land', '1', '', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 'lalaland.mp4'),
(6, 'matrix.jpg', 'The Matrix', '2', '', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.\r\n', 'matrix.mp4'),
(7, 'mask.jpg', 'The Mask', '2', '', 'Bank clerk Stanley Ipkiss is transformed into a manic superhero when he wears a mysterious mask.\r\n', 'mask.mp4'),
(8, 'toystory.jpg', 'Toy Story', '2', '', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.\r\n', 'toystory.mp4'),
(9, 'hook.jpg', 'Hook', '2', '', 'When Captain Hook kidnaps his children, an adult Peter Pan must return to Neverland and reclaim his youthful spirit in order to challenge his old enemy.\r\n', 'hook.mp4'),
(10, 'forrest.jpg', 'Forrest Gump', '2', '', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.\r\n', 'forrest.mp4'),
(11, 'topgun.jpg', 'Top Gun', '3', '', 'As students at the United States Navy\'s elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom.\r\n', 'topgun.mp4'),
(12, 'future.jpg', 'Back to the Future', '3', '', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.\r\n', 'future.mp4'),
(13, 'goonies.jpg', 'The Goonies', '3', '', 'In order to save their home from foreclosure, a group of misfits set out to find a pirate\'s ancient valuable treasure.\r\n', 'goonies.mp4'),
(14, 'ghostbusters.jpg', 'Ghostbusters', '3', '', 'Three former parapsychology professors set up shop as a unique ghost removal service.\r\n', 'ghostbusters.mp4'),
(15, 'breakfast.jpg', 'The Breakfast Club', '3', '', 'Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.\r\n', 'breakfast.mp4'),
(16, 'jaws.jpg', 'Jaws', '4', '', 'When a killer shark unleashes chaos on a beach resort, it\'s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.\r\n', 'jaws.mp4'),
(17, 'animal.jpg', 'Animal House', '4', '', 'At a 1962 college, Dean Vernon Wormer is determined to expel the entire Delta Tau Chi Fraternity, but those troublemakers have other plans for him.\r\n', 'animal.mp4'),
(18, 'charlotte.jpg', 'Charlottes Web', '4', '', 'A gentle and wise grey spider with a flair for promotion pledges to save a young pig from slaughter for dinner food.\r\n', 'charlotte.mp4'),
(19, 'alien.jpg', 'Alien', '4', '', 'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.\r\n', 'alien.mp4'),
(20, 'godfather.jpg', 'The Godfather', '4', '', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.\r\n', 'godfather.mp4');

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
(1, 'got.jpg', 'Game of Thrones', 1, 'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.\r\n', 'got.mp4'),
(2, 'criminalminds.jpg', 'Criminal Minds', 1, 'The cases of the F.B.I. Behavioral Analysis Unit (B.A.U.), an elite group of profilers who analyze the nation\'s most dangerous serial killers and individual heinous crimes in an effort to anticipate their next moves before they strike again.\r\n', 'criminalminds.mp4'),
(3, 'sheldon.jpg', 'Young Sheldon', 1, 'Meet a child genius named Sheldon Cooper; (already seen as an adult in The Big Bang Theory(2007)) and his family. Some unique challenges face Sheldon who seems socially impaired.\r\n', 'sheldon.mp4'),
(4, 'rickandmorty.jpg', 'Rick and Morty', 1, 'An animated series that follows the exploits of a super scientist and his not-so-bright grandson.\r\n', 'rickandmorty.mp4'),
(5, 'modern.jpg', 'Modern Family', 1, 'Three different but related families face trials and tribulations in their own uniquely comedic ways.\r\n', 'modern.mp4'),
(6, 'pawpatrol.jpg', 'PAW Patrol', 1, 'Led by a boy named Ryder, a team of six playful rescue dogs use their individual talents to protect the seaside town of Adventure Bay. The pups are occasionally joined by newer helpers: Cap\'n Turbot, Robo-Dog, Everest, and Tracker.\r\n', 'pawpatrol.mp4'),
(7, 'doctorwho.jpg', 'Doctor Who', 2, 'The further adventures in time and space of the alien adventurer known as the Doctor, a Time Lord or Lady who can change appearance and gender by regenerating when near death, and his or her human companions.\r\n', 'doctorwho.mp4'),
(8, 'adventuretime.jpg', 'Adventure Time', 1, 'A 12-year-old boy and his best friend, wise 28-year-old dog with magical powers, go on a series of surreal adventures with each other.\r\n', 'adventuretime.jpg'),
(9, 'greys.jpg', 'Greys Anatomy', 1, 'A drama centered on the personal and professional lives of five surgical interns and their supervisors.\r\n', 'greys.mp4'),
(10, 'strangerthings.jpg', 'Stranger Things', 1, 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying forces in order to get him back.\r\n\r\n', 'strangerthings.mp4');

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
(2, 'Kid', 'user2', '123', 'kid@hello.ca', '2019-03-13 00:00:21', '0000-00-00 00:00:00', '::1', 0, 3, 'user3.png');

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

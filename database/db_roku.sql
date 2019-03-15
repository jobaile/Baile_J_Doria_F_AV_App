-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2019 at 03:50 PM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

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
-- Table structure for table `tbl_decade`
--

CREATE TABLE `tbl_decade` (
  `decade_id` int(10) UNSIGNED NOT NULL,
  `decade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_decade`
--

INSERT INTO `tbl_decade` (`decade_id`, `decade_name`) VALUES
(1, '2000'),
(2, '1990'),
(3, '1980'),
(4, '1970'),
(5, '1960');

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
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_decade`, `movies_runtime`, `movies_desc`, `movies_trailer`, `movies_permission`) VALUES
(1, 'ironman.jpg', 'Iron Man', '1', '', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.\r\n', 'ironman.mp4', 1),
(2, 'deadpool.jpg', 'Deadpool', '1', '', 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.\r\n', 'deadpool.mp4', 1),
(3, 'trolls.jpg', 'Trolls', '1', '', 'After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.\r\n', 'trolls.mp4', 2),
(4, 'harrypotter.jpg', 'Harry Potter', '1', '', 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.\r\n', 'harrypotter.mp4', 2),
(5, 'lalaland.jpg', 'La La Land', '1', '', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 'lalaland.mp4', 1),
(6, 'matrix.jpg', 'The Matrix', '2', '', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.\r\n', 'matrix.mp4', 1),
(7, 'mask.jpg', 'The Mask', '2', '', 'Bank clerk Stanley Ipkiss is transformed into a manic superhero when he wears a mysterious mask.\r\n', 'mask.mp4', 1),
(8, 'toystory.jpg', 'Toy Story', '2', '', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.\r\n', 'toystory.mp4', 2),
(9, 'hook.jpg', 'Hook', '2', '', 'When Captain Hook kidnaps his children, an adult Peter Pan must return to Neverland and reclaim his youthful spirit in order to challenge his old enemy.\r\n', 'hook.mp4', 2),
(10, 'forrest.jpg', 'Forrest Gump', '2', '', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.\r\n', 'forrest.mp4', 1),
(11, 'topgun.jpg', 'Top Gun', '3', '', 'As students at the United States Navy\'s elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom.\r\n', 'topgun.mp4', 1),
(12, 'future.jpg', 'Back to the Future', '3', '', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.\r\n', 'future.mp4', 1),
(13, 'goonies.jpg', 'The Goonies', '3', '', 'In order to save their home from foreclosure, a group of misfits set out to find a pirate\'s ancient valuable treasure.\r\n', 'goonies.mp4', 1),
(14, 'ghostbusters.jpg', 'Ghostbusters', '3', '', 'Three former parapsychology professors set up shop as a unique ghost removal service.\r\n', 'ghostbusters.mp4', 2),
(15, 'breakfast.jpg', 'The Breakfast Club', '3', '', 'Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.\r\n', 'breakfast.mp4', 1),
(16, 'jaws.jpg', 'Jaws', '4', '', 'When a killer shark unleashes chaos on a beach resort, it\'s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.\r\n', 'jaws.mp4', 1),
(17, 'animal.jpg', 'Animal House', '4', '', 'At a 1962 college, Dean Vernon Wormer is determined to expel the entire Delta Tau Chi Fraternity, but those troublemakers have other plans for him.\r\n', 'animal.mp4', 1),
(18, 'charlotte.jpg', 'Charlottes Web', '4', '', 'A gentle and wise grey spider with a flair for promotion pledges to save a young pig from slaughter for dinner food.\r\n', 'charlotte.mp4', 2),
(19, 'alien.jpg', 'Alien', '4', '', 'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.\r\n', 'alien.mp4', 1),
(20, 'godfather.jpg', 'The Godfather', '4', '', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.\r\n', 'godfather.mp4', 1),
(21, 'psycho.jpg', 'Psycho', '5', '', 'Psycho tells the story of Marion Crane, who steals money from her employer. She leaves her home in Phoenix, Arizona and ends up at the Bates Motel in Fairvale, California. ', 'psycho.mp4', 1),
(22, 'poppins.jpg', 'Mary Poppins', '5', '', 'Decades after her original visit, the magical nanny returns to help the Banks siblings and Michael\'s children through a difficult time in their lives.', 'poppins.mp4', 2),
(23, 'apes.jpg', 'Planet of the Apes', '5', '', 'The film tells the story of an astronaut crew who crash-lands on a strange planet in the distant future.', 'apes.mp4', 1),
(24, 'escape.jpg', 'The Great Escape', '5', '', 'Imprisoned during World War II in a German POW camp, a group of Allied soldiers are intent on breaking out, not only to escape, but also to draw Nazi forces away from battle to search for fugitives.', 'escape.mp4', 1),
(25, 'birds.jpg', 'The Birds', '5', '', 'Melanie Daniels meets Mitch Brenner in a San Francisco pet store and decides to follow him home. She brings with her the gift of two love birds and they strike up a romance. One day birds start attacking children at Mitch\'s sisters party. A huge assault starts on the town by attacking birds.', 'birds.mp4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies_decade`
--

CREATE TABLE `tbl_movies_decade` (
  `movies_decade_id` int(10) UNSIGNED NOT NULL,
  `movies_id` int(11) NOT NULL,
  `decade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies_decade`
--

INSERT INTO `tbl_movies_decade` (`movies_decade_id`, `movies_id`, `decade_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5);

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
  `music_audio` varchar(50) NOT NULL,
  `music_time` varchar(10) NOT NULL,
  `music_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_cover`, `music_title`, `music_artist`, `music_decade`, `music_audio`, `music_time`, `music_permission`) VALUES
(1, 'kanye.jpg', 'Famous', 'Kanye West', 1, 'famous.mp3', '', 1),
(2, 'edsheeran.jpg', 'Perfect', 'Ed Sheeran', 1, 'edsheeran.jpg', '', 2),
(3, 'ariana.jpg', 'Thank U Next', 'Ariana Grande', 1, 'thanku.mp3', '', 1),
(4, 'adele.jpg', 'Rolling in the Deep', 'Adele', 1, 'rolling.mp3', '', 1),
(5, 'jackson.jpg', 'Billie Jean', 'Michael Jackson', 3, 'billiejean.mp3', '', 2),
(6, 'teenspirit.jpg', 'Smells Like Teen Spirit', 'Nirvana', 2, 'teenspirit.mp3', '', 1),
(7, 'allstar.jpg', 'All Star', 'Smash Mouth', 2, 'allstar.mp3', '', 2),
(8, 'takeonme.jpg', 'Take On Me', 'A-Ha', 3, 'takeonme.mp3', '', 1),
(9, 'imagine.jpg', 'Imagine', 'John Lennon', 4, 'imagine.mp3', '', 2),
(10, 'ownway.jpg', 'Go Your Own Way', 'Fleetwood Mac', 4, 'ownway.mp3', '', 1),
(11, 'standbyme.jpg', 'Stand By Me', 'Ben E. King', 5, 'standbyme.mp3', '', 2),
(12, 'wantyouback.jpg', 'I Want You Back', 'The Jackson 5', 5, 'wantyouback.mp3', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music_decade`
--

CREATE TABLE `tbl_music_decade` (
  `music_decade_id` int(10) UNSIGNED NOT NULL,
  `music_id` int(11) NOT NULL,
  `decade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music_decade`
--

INSERT INTO `tbl_music_decade` (`music_decade_id`, `music_id`, `decade_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 3),
(6, 6, 2),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 4),
(11, 11, 5),
(12, 12, 5);

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
  `tv_trailer` varchar(50) NOT NULL,
  `tv_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_cover`, `tv_title`, `tv_decade`, `tv_desc`, `tv_trailer`, `tv_permission`) VALUES
(1, 'got.jpg', 'Game of Thrones', 1, 'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.\r\n', 'got.mp4', 1),
(2, 'pawpatrol.jpg', 'PAW Patrol', 1, 'Led by a boy named Ryder, a team of six playful rescue dogs use their individual talents to protect the seaside town of Adventure Bay. The pups are occasionally joined by newer helpers: Cap\'n Turbot, Robo-Dog, Everest, and Tracker.', 'pawpatrol.mp4', 2),
(3, 'buffy.jpg', 'Buffy the Vampire Slayer', 2, 'A young woman, destined to slay vampires, demons and other infernal creatures, deals with her life fighting evil, with the help of her friends.', 'buffy.mp4', 1),
(4, 'rugrats.jpg', 'Rugrats', 2, '`Rugrats\' reveals the world from a baby\'s point of view. Everything looks bigger, more mysterious and uncontrollable. ', 'rugrats.mp4', 2),
(5, 'startrek.jpg', 'Star Trek: The Next Generation', 3, 'Featuring a bigger and better USS Enterprise, this series is set 78 years after the original series -- in the 24th century. Instead of Capt. James Kirk, a less volatile and more mature Capt. Jean-Luc Picard heads the crew of various humans and alien creatures in their adventures in space -- the final frontier.', 'startrek.mp4', 1),
(6, 'heman.jpg', 'He-Man', 3, 'He-Man is the principal superhero of a series of comic books and several animated television series, characterized by his superhuman strength. In most variations, he is the alter ego of Prince Adam. ', 'heman.mp4', 2),
(7, 'bradybunch.jpg', 'The Brady Bunch', 4, 'Here\'s the story ... of a man named Brady, an architect widower with three sons: oldest Greg, middle son Peter and youngest Bobby. He meets and marries Carol, with three daughters of her own: oldest Marcia, middle girl Jan and little one Cindy. Tending to them is a wacky maid named Alice. They all live in a four-bedroom, two-bathroom house in the Los Angeles suburbs. ', 'bradybunch.mp4', 1),
(8, 'jetsons.jpg', 'The Jetsons', 4, '\"Meet George Jetson.\" Just those words will prompt viewers of a certain age to join in singing the show\'s catchy theme song. This popular primetime cartoon show features the Jetson family living in a utopian future. ', 'jetsons.jpg', 2),
(9, 'doctorwho.jpg', 'Doctor Who', 5, 'The further adventures in time and space of the alien adventurer known as the Doctor, a Time Lord or Lady who can change appearance and gender by regenerating when near death, and his or her human companions.', 'doctorwho.mp4', 1),
(10, 'addams.jpg', 'The Addams Family', 5, 'Morticia and Gomez Addams head a perplexingly macabre family whose members include a giant named Lurch, who acts as doorman, a disembodied hand named Thing, not-quite-right son Pugsley and morose daughter Wednesday.', 'addams.mp4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_decade`
--

CREATE TABLE `tbl_tv_decade` (
  `tv_decade_id` int(10) UNSIGNED NOT NULL,
  `tv_id` int(11) NOT NULL,
  `decade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv_decade`
--

INSERT INTO `tbl_tv_decade` (`tv_decade_id`, `tv_id`, `decade_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5);

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
-- Indexes for table `tbl_decade`
--
ALTER TABLE `tbl_decade`
  ADD PRIMARY KEY (`decade_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_movies_decade`
--
ALTER TABLE `tbl_movies_decade`
  ADD PRIMARY KEY (`movies_decade_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_music_decade`
--
ALTER TABLE `tbl_music_decade`
  ADD PRIMARY KEY (`music_decade_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_tv_decade`
--
ALTER TABLE `tbl_tv_decade`
  ADD PRIMARY KEY (`tv_decade_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_decade`
--
ALTER TABLE `tbl_decade`
  MODIFY `decade_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_movies_decade`
--
ALTER TABLE `tbl_movies_decade`
  MODIFY `movies_decade_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_music_decade`
--
ALTER TABLE `tbl_music_decade`
  MODIFY `music_decade_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tv_decade`
--
ALTER TABLE `tbl_tv_decade`
  MODIFY `tv_decade_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

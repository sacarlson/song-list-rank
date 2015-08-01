-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2015 at 06:09 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `band_song_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `member_list`
--

CREATE TABLE IF NOT EXISTS `member_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(50) NOT NULL,
  `band_name` varchar(50) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `member_list`
--

INSERT INTO `member_list` (`ID`, `member_name`, `band_name`, `date_joined`) VALUES
(1, 'Scotty', 'Wesuk Band', '2015-07-29 18:40:45'),
(7, 'Mick', 'Wesuk Band', '2015-07-29 20:31:49'),
(8, 'Raf', 'Wesuk Band', '2015-07-29 20:35:07'),
(9, 'Jon', 'Wesuk Band', '2015-07-29 20:35:27'),
(10, 'Angie', 'Wesuk Band', '2015-07-29 20:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `song_list`
--

CREATE TABLE IF NOT EXISTS `song_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(80) NOT NULL,
  `artist` varchar(80) NOT NULL,
  `youtube_url` varchar(100) NOT NULL,
  `adder_nickname` varchar(30) NOT NULL,
  `rank` int(11) NOT NULL,
  `total_rank` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `Scotty_rank` int(11) NOT NULL DEFAULT '0',
  `Mick_rank` int(11) NOT NULL DEFAULT '0',
  `Raf_rank` int(11) NOT NULL DEFAULT '0',
  `Jon_rank` int(11) NOT NULL DEFAULT '0',
  `Angie_rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `song_list`
--

INSERT INTO `song_list` (`ID`, `song_name`, `artist`, `youtube_url`, `adder_nickname`, `rank`, `total_rank`, `date_added`, `hide`, `Scotty_rank`, `Mick_rank`, `Raf_rank`, `Jon_rank`, `Angie_rank`) VALUES
(1, 'Devil Woman', 'Cliff Richard', 'https://www.youtube.com/watch?v=7tuAkdlLhTE', 'Scotty', 5, 0, '2015-07-28 00:00:00', 0, 0, 0, 0, 0, 0),
(2, 'Beyond Here Lies Nothin', 'Bob Dilan', 'https://www.youtube.com/watch?v=7TbmP2vXeQs', 'Scotty', 5, 0, '2015-07-28 00:00:00', 0, 0, 0, 0, 0, 0),
(7, 'Hypnotized', 'Fleetwood mac', 'https://www.youtube.com/watch?v=ZsWR6Oou7_0', 'Raf', 3, 0, '2015-07-29 17:56:39', 0, 0, 0, 0, 0, 0),
(8, '', '', '', 'test', 0, 0, '2015-07-29 11:18:31', 1, 0, 0, 0, 0, 0),
(15, 'Go Your Own Way', 'Fleetwood mac', 'https://www.youtube.com/watch?v=clCYmvmpIsA', 'Raf', 3, 0, '2015-07-29 18:57:31', 0, 0, 0, 0, 0, 0),
(16, 'Zombie', 'The Cranberies', 'https://www.youtube.com/watch?v=6Ejga4kJUts&list=PL8c1fv1eldAuIYeMzM00A8uvKJSMMryUw&index=3', 'Mick', 5, 1, '2015-07-29 20:30:41', 0, 0, 3, 0, 0, 0),
(18, 'Its My Life', 'Bon Jovi', 'https://www.youtube.com/watch?v=vx2u5uUu3DE&list=PL8c1fv1eldAuIYeMzM00A8uvKJSMMryUw&index=4', 'Mick', 5, 1, '2015-07-30 08:02:32', 0, 0, 3, 0, 0, 0),
(19, 'My City Of Ruins', 'Bruce Springsteen', 'https://www.youtube.com/watch?v=RnkJa6HdgJw&list=PL8c1fv1eldAuIYeMzM00A8uvKJSMMryUw&index=35', 'Mick', 3, 0, '2015-07-30 08:09:36', 0, 0, 0, 0, 0, 0),
(22, 'Evenin', 'Gary Moore ', 'https://www.youtube.com/watch?v=I6bP2d5UzvM&amp;amp;index=65&amp;amp;list=PLDDE8A429F49407F3', 'Raf', 0, 0, '2015-07-30 16:07:30', 0, 0, 0, 0, 0, 0),
(23, 'DIVISION BELL-FULL ALBUM.PART5/6 ', 'PINK FLOYD', ' https://www.youtube.com/watch?v=92vPZWTHMao', 'Scotty', 0, 1, '2015-07-30 16:09:18', 0, 3, 0, 0, 0, 0),
(24, 'DIVISION BELL-FULL ALBUM.PART 3/6 ', 'PINK FLOYD', 'https://www.youtube.com/watch?v=MZw69IgvSjk&amp;amp;list=PLE23A53C3C0F3A0FE&amp;amp;index=3', 'Scotty', 0, 1, '2015-07-30 16:10:29', 0, 3, 0, 0, 0, 0),
(25, 'Home', 'Sheryl Crow', 'https://www.youtube.com/watch?v=2fDn_JdGY_4', 'Scotty', 0, 1, '2015-07-30 16:11:28', 0, 5, 0, 0, 0, 0),
(26, 'Maybe Angels ', 'Sheryl Crow', ' https://www.youtube.com/watch?v=ui5iaGmMGWI', 'Scotty', 0, 1, '2015-07-30 16:12:46', 0, 5, 0, 0, 0, 0),
(27, 'When The Music&#039;s Over ', 'The Doors', 'https://www.youtube.com/watch?v=jLAr-WlxMZY', 'Raf', 0, 0, '2015-07-30 16:13:36', 0, 0, 0, 0, 0, 0),
(28, 'The End (original) ', 'The Doors', 'https://www.youtube.com/watch?v=JSUIQgEVDM4 ', 'Raf', 0, 1, '2015-07-30 16:14:22', 0, 2, 0, 2, 0, 0),
(29, ' Wild Horses (Acoustic / Lyric Video) ', 'The Rolling Stones', 'https://www.youtube.com/watch?v=SQTHB4jM-KQ&amp;amp;list=PL7sBCGkQNm0AnGpgm3kxVFTq5M-V24LcZ', 'Raf', 0, 0, '2015-07-30 16:15:21', 0, 0, 0, 0, 0, 0),
(30, 'You Can&#039;t Always Get What You Want (lyrics) ', 'The Rolling Stones', 'https://www.youtube.com/watch?v=j7leQB_Oe_k&amp;amp;index=11&amp;amp;list=PL7sBCGkQNm0AnGpgm3kxVFTq5', 'Raf', 0, 0, '2015-07-30 16:16:02', 0, 0, 0, 0, 0, 0),
(31, 'Glory Box ', 'Portishead', 'https://www.youtube.com/watch?v=4qQyUi4zfDs', 'Raf', 0, 0, '2015-07-30 16:16:36', 0, 0, 0, 0, 0, 0),
(32, 'While My Guitar Gently Weeps ', 'The Beatles', 'https://www.youtube.com/watch?v=F3RYvO2X0Oo&amp;amp;index=1&amp;amp;list=PL8c1fv1eldAtxgZ7EOTKZL8Ozk', 'Raf', 0, 0, '2015-07-30 16:17:20', 0, 0, 0, 0, 0, 0),
(33, 'Here Comes The Sun ', 'The Beatles', 'https://www.youtube.com/watch?v=C5E_zXbmrlM', 'Raf', 0, 1, '2015-07-30 16:17:59', 0, 4, 0, 0, 0, 0),
(34, 'All Along The Watchtower (Official Audio) ', 'The Jimi Hendrix Experience  ', 'https://www.youtube.com/watch?v=TLV4_xaYynY&amp;amp;index=1&amp;amp;list=PL8c1fv1eldAs6-hs4N408UoohS', 'Raf', 0, 0, '2015-07-30 16:19:08', 0, 0, 0, 0, 0, 0),
(35, 'Speak To Me/Breathe/On The Run/Time/', 'Pink Floyd', 'https://www.youtube.com/watch?v=CqswNr2B874', 'Scotty', 0, 0, '2015-07-30 16:20:43', 0, 0, 0, 0, 0, 0),
(36, 'list of stuff', 'many artists', 'https://www.youtube.com/playlist?list=PL8c1fv1eldAs6-hs4N408UoohS0nAqhSw', 'Raf', 0, 0, '2015-07-30 16:22:16', 0, 0, 0, 0, 0, 0),
(37, 'Cortez The Killer (Studio Version) ', 'Neil Young', 'https://www.youtube.com/watch?v=6G0qroTL51U', 'Raf', 0, 0, '2015-07-30 16:22:53', 0, 0, 0, 0, 0, 0),
(38, 'Let it Bleed lyrics ', 'Rolling Stones', 'https://www.youtube.com/watch?v=GNTH9zmleBE', 'Raf', 0, 0, '2015-07-30 16:24:02', 0, 0, 0, 0, 0, 0),
(39, 'Hide from the Sun (not the video) ', 'Goat', 'https://www.youtube.com/watch?v=6z-CNxLeItw&amp;amp;feature=youtu.be', 'Raf', 0, 0, '2015-07-30 16:24:43', 0, 0, 0, 0, 0, 0),
(40, 'Astral Plane ', 'Blues Pills', 'https://www.youtube.com/watch?v=m_XcpHE3hIw', 'Raf', 0, 0, '2015-07-30 16:26:22', 0, 0, 0, 0, 0, 0),
(41, 'How Soon Is Now? ', 'The Smiths', 'https://www.youtube.com/watch?v=pEq8DBxm0J4', 'Raf', 0, 0, '2015-07-30 16:26:57', 0, 0, 0, 0, 0, 0),
(42, 'Certain People I Know ', 'Morrissey ', 'https://www.youtube.com/watch?v=1cvr3focVF0', 'Raf', 0, 0, '2015-07-30 16:27:37', 0, 0, 0, 0, 0, 0),
(43, '505 lyrics', ' Arctic Monkeys ', 'https://www.youtube.com/watch?v=iV5VKdcQOJE&amp;amp;index=13&amp;amp;list=PLT4xgLKtTL06arp6P6wSEW_IZ', 'Raf', 0, 0, '2015-07-30 16:28:21', 0, 0, 0, 0, 0, 0),
(44, 'Hold On My Heart ', 'Genesis', 'https://www.youtube.com/watch?v=V4pLqznEe3I', 'Raf', 0, 0, '2015-07-30 16:28:52', 0, 0, 0, 0, 0, 0),
(45, '', '', 'https://www.youtube.com/watch?v=AClsw4n1dMo', '', 0, 0, '2015-07-30 16:03:05', 1, 0, 0, 0, 0, 0),
(46, 'I Wish It Would Rain Down *HQ* ', 'Phil Collins', 'https://www.youtube.com/watch?v=Hv0PqSW59aI', 'Raf', 0, 0, '2015-07-30 16:29:53', 0, 0, 0, 0, 0, 0),
(47, '', '', 'https://drive.google.com/file/d/0B4pSHwxHXW9SVXlxVHZFNkNlcU0/view?usp=sharing', '', 0, 0, '2015-07-30 16:03:30', 1, 0, 0, 0, 0, 0),
(48, 'Stairway to Heaven Live (HD) ', 'Led Zeppelin', 'https://www.youtube.com/watch?v=9Q7Vr3yQYWQ', 'Raf', 0, 0, '2015-07-30 16:30:48', 0, 2, 0, 0, 0, 0),
(49, 'Livin&#039; On A Prayer ', 'Bon Jovi', 'https://www.youtube.com/watch?v=lDK9QqIzhwk', 'Mick', 0, 0, '2015-07-30 16:31:56', 0, 0, 0, 0, 0, 0),
(50, 'Free bird ', 'Lynyrd Skynyrd', 'https://www.youtube.com/watch?v=np0solnL1XY', 'Raf', 0, 1, '2015-07-30 16:32:43', 0, 3, 0, 0, 0, 0),
(51, 'Lonesome day (The Rising Album) ', 'Bruce Springsteen', 'https://www.youtube.com/watch?v=VuBRgq6nT7s', 'Raf', 0, 0, '2015-07-30 16:33:23', 0, 0, 0, 0, 0, 0),
(52, 'My City Of Ruins (With Lyrics) ', 'Bruce Springsteen', 'https://www.youtube.com/watch?v=RnkJa6HdgJw', 'Raf', 0, 0, '2015-07-30 16:34:04', 0, 0, 0, 0, 0, 0),
(53, 'Kate Bush ft. Snowed In At Wheeler Street - Chronicles of the Snow Globe - Chapt', 'Kate Bush ft. Elton John', 'https://www.youtube.com/watch?v=GLAimTCD-Ok', 'Raf', 0, 0, '2015-07-30 16:35:48', 0, 0, 0, 0, 0, 0),
(54, 'The Thrill Is Gone (Live at Montreux 1993) ', 'B. B. King', 'https://www.youtube.com/watch?v=4fk2prKnYnI', 'Scotty', 0, 0, '2015-07-30 16:36:26', 0, 0, 0, 0, 0, 0),
(55, 'Ready For Love ', 'Bad Company ', 'https://www.youtube.com/watch?v=nbqjBpNT1sc', 'Scotty', 0, 0, '2015-07-30 16:36:59', 0, 0, 0, 0, 0, 0),
(56, 'Something ', 'The Beatles', 'https://www.youtube.com/watch?v=IrW7dlDHH28', 'Raf', 0, 0, '2015-07-30 16:37:35', 0, 0, 0, 0, 0, 0),
(57, 'black magic woman ', 'santana', 'https://www.youtube.com/watch?v=wyQUCYl-ocs', 'Jon', 0, 0, '2015-07-30 16:49:47', 0, 0, 0, 0, 0, 0),
(58, 'On The Beach ', 'Neil Young', 'https://www.youtube.com/watch?v=CKgj1FNToWY', 'Raf', 0, 0, '2015-07-30 16:53:52', 0, 0, 0, 0, 0, 0),
(59, 'I&#039;m Gonna Take You Home ~ Ya Ho Wa 13 ~ ', 'Father Yod &amp; Yahowha  ', 'https://www.youtube.com/watch?v=19Knfvn-g-E', 'Raf', 0, 0, '2015-07-30 16:55:43', 0, 0, 0, 0, 0, 0),
(60, 'Life&#039;s Been Good ', 'Joe Walsh', 'https://www.youtube.com/watch?v=BXWvKDSwvls', 'Scotty', 0, 0, '2015-07-30 16:56:47', 0, 0, 0, 0, 0, 0),
(61, 'Do you feel like we do Full Version ', 'Peter Framton', 'https://www.youtube.com/watch?v=V9Yq5m9eLIQ', 'Scotty', 0, 0, '2015-07-30 16:58:12', 0, 0, 0, 0, 0, 0),
(62, 'Puttin&#039; On the Style ', 'Lonnie Donegan', 'https://www.youtube.com/watch?v=TW9KUeMaJRQ', 'Raf', 0, 0, '2015-07-30 17:00:57', 0, 0, 0, 0, 0, 0),
(63, 'Rockin Medley.. (1969) ', 'Tom Jones, Jerry Lee Lewis', 'https://www.youtube.com/watch?v=Fa5kKnRwgcc', 'Raf', 0, 0, '2015-07-30 17:03:41', 0, 0, 0, 0, 0, 0),
(64, ' Since I&#039;ve Been Loving You* ', 'Led Zeppelin', 'https://www.youtube.com/watch?v=5tUHmHaa2Mg', 'Raf', 0, 0, '2015-07-30 17:05:48', 0, 0, 0, 0, 0, 0),
(65, 'Red house ', 'The Jimi Hendrix experience', 'https://www.youtube.com/watch?v=c6luvm1LGaE', 'Raf', 0, 0, '2015-07-30 17:07:24', 0, 0, 0, 0, 0, 0),
(66, 'Sweet Home Chicago ', 'Sweet Home Chicago ', 'https://www.youtube.com/watch?v=O8hqGu-leFc', 'Raf', 0, 0, '2015-07-30 17:08:48', 0, 0, 0, 0, 0, 0),
(67, 'Blind Willie McTell Original Version 1983 ', 'Bob Dylan', 'https://www.youtube.com/watch?v=a1ewJYxT0ZQ', 'Raf', 0, 0, '2015-07-30 17:09:54', 0, 0, 0, 0, 0, 0),
(68, 'Ain`t No Sunshine When She`s Gone. ', 'Freddie King', 'https://www.youtube.com/watch?v=16AnGcB7MHA', 'Mick', 0, 0, '2015-07-30 17:10:46', 0, 0, 0, 0, 0, 0),
(69, '3 Chords, 30 Songs on Guitar ', '', 'https://www.youtube.com/watch?v=i_jlPN1a2Xk', 'Raf', 0, 0, '2015-07-30 17:17:11', 0, 0, 0, 0, 0, 0),
(70, 'One ', 'U2', 'https://www.youtube.com/watch?v=BgZ4ammawyI', 'Raf', 0, 0, '2015-07-30 17:18:58', 0, 0, 0, 0, 0, 0),
(71, ' How Blue Can You Get (Legends of Rock &#039;n&#039; Roll) ', 'BB King', 'https://www.youtube.com/watch?v=6jCNXASjzMY&amp;list=RDMMeAfyFTzZDMM&amp;index=13', 'Scotty', 0, 0, '2015-07-30 17:21:10', 0, 0, 0, 0, 0, 0),
(72, 'With Or Without You ( live 1987 )[ lyrics ] ', 'U2', 'https://www.youtube.com/watch?v=WZKnQRkWzLI', 'Raf', 0, 0, '2015-07-30 17:42:24', 0, 0, 0, 0, 0, 0),
(73, ' Who Are You (Glastonbury Festival 2015) ', 'The Who', 'https://www.youtube.com/watch?v=ipQ9bM_qekI', 'Raf', 0, 0, '2015-07-30 17:44:07', 0, 0, 0, 0, 0, 0),
(74, 'Read All About It (pt III) [Lyrics On Screen]', 'Emeli Sande', 'https://www.youtube.com/watch?v=vaAVByGaON0', 'Angie', 0, 0, '2015-07-30 17:49:17', 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

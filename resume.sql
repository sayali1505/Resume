-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2020 at 02:34 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `education` text NOT NULL,
  `year` date NOT NULL,
  `college` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`education_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `education`, `year`, `college`, `p_id`) VALUES
(1, 'MCA', '2021-04-15', 'MIT WPU', 1),
(2, 'BSC', '2018-04-30', 'Shivaji University', 1),
(3, 'BCA', '2018-04-07', 'KIIT', 2);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
CREATE TABLE IF NOT EXISTS `interest` (
  `interest_id` int(11) NOT NULL AUTO_INCREMENT,
  `interest_name` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`interest_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`interest_id`, `interest_name`, `p_id`) VALUES
(1, 'Reading', 1),
(2, 'Watching Movies', 1),
(3, 'Drawing', 2),
(4, 'Travelling', 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_location`
--

DROP TABLE IF EXISTS `job_location`;
CREATE TABLE IF NOT EXISTS `job_location` (
  `loc_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`loc_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_location`
--

INSERT INTO `job_location` (`loc_id`, `city`, `p_id`) VALUES
(1, 'Pune', 1),
(2, 'Mumbai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `language` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`lang_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `language`, `p_id`) VALUES
(1, 'English', 1),
(2, 'Marathi', 1),
(3, 'Hindi', 1),
(4, 'English', 2),
(5, 'Hindi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
CREATE TABLE IF NOT EXISTS `personal_info` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Nick_name` text NOT NULL,
  `Tag_line` text NOT NULL,
  `Email` text NOT NULL,
  `Mobile_no` bigint(20) NOT NULL,
  `Location` text NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`p_id`, `Name`, `Nick_name`, `Tag_line`, `Email`, `Mobile_no`, `Location`, `Address`) VALUES
(1, 'Sayali Prakash Patil', 'Sayali', 'Seeking to join an organization where I can get a complete exposure to the technical world and contribute for development of organization as well as\r\npersonal development,', 'sayali@gmail.com', 9089788990, 'Kolhapur', 'F-104,Gandhi Nagar,Gadhinglaj'),
(2, 'Abhilasha Kumari', 'Abhilasha', 'Seeking to join an organization where I can get a complete exposure to the technical world.', 'abhilasha@gmail.com', 7788667788, 'Pune', 'Kothrud,Pune');

-- --------------------------------------------------------

--
-- Table structure for table `profile_summary`
--

DROP TABLE IF EXISTS `profile_summary`;
CREATE TABLE IF NOT EXISTS `profile_summary` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `current_role` text NOT NULL,
  `experience` text NOT NULL,
  `summary` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_summary`
--

INSERT INTO `profile_summary` (`profile_id`, `current_role`, `experience`, `summary`, `p_id`) VALUES
(1, 'Intern', '0', 'Intern at Samsan Labs', 1),
(2, 'Intern', '1', 'Intern at Huda Technology', 2);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `achivement` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `start_date`, `end_date`, `achivement`, `p_id`) VALUES
(1, 'Voyage', '2019-06-01', '2019-09-15', 'It is a Travel website developed using PHP and MySQL to provide users with all information about a city and places in a city. The system helps to\r\nexplore interesting and different places of attractions. ', 1),
(2, 'E-Voting', '2019-06-01', '2019-09-15', 'An Android Application which helps the user to cast the vote without visiting the polling booth.The E-voting promises the possibility of convenient and\r\nsafe way to capture and count the votes in an election.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
CREATE TABLE IF NOT EXISTS `publication` (
  `publication_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`publication_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publication_id`, `title`, `url`, `p_id`) VALUES
(1, 'A study On Cassandra: Data Model', 'https://A-study-on-cassandra-data-model', 1),
(2, 'Blockchain', 'https://journal/Blockcain-101', 2);

-- --------------------------------------------------------

--
-- Table structure for table `resume_info`
--

DROP TABLE IF EXISTS `resume_info`;
CREATE TABLE IF NOT EXISTS `resume_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Career_Objective` text NOT NULL,
  `Key_skills` text NOT NULL,
  `Education` text NOT NULL,
  `Education_year` text NOT NULL,
  `Projects` text NOT NULL,
  `project_name` text NOT NULL,
  `Project_skills` text NOT NULL,
  `project_desc` text NOT NULL,
  `Publication` text NOT NULL,
  `publication_url` text NOT NULL,
  `Address` text NOT NULL,
  `Hobbies` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume_info`
--

INSERT INTO `resume_info` (`id`, `Name`, `Career_Objective`, `Key_skills`, `Education`, `Education_year`, `Projects`, `project_name`, `Project_skills`, `project_desc`, `Publication`, `publication_url`, `Address`, `Hobbies`) VALUES
(1, 'Sayali Prakash Patil', 'To contribute for development of\r\norganization as well as\r\npersonal development.', 'C,Cpp,Java,Sql,Php,Android,Python', 'Master Of Computer Application', '2018-2019', '', 'online Charity Management', 'Html,Css,Php,Mysql,Xamp', 'It will help NGO’s to raise their funds.', 'A Study on Cassandra: Data Model', 'https://www.ijert.org/a-study-on-cassandra', 'Kadgoan Road,Gadhinglaj, Dist- Kolhapur', 'Reading, Trekking');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` text NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`skill_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`, `p_id`) VALUES
(1, 'C', 1),
(2, 'Cpp', 1),
(3, 'Java', 1),
(4, 'Android', 1),
(5, 'Html', 2),
(6, 'CSS', 2),
(7, 'Java', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
  ADD CONSTRAINT `interest_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);

--
-- Constraints for table `job_location`
--
ALTER TABLE `job_location`
  ADD CONSTRAINT `job_location_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);

--
-- Constraints for table `profile_summary`
--
ALTER TABLE `profile_summary`
  ADD CONSTRAINT `profile_summary_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `personal_info` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

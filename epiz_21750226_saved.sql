-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql111.byetcluster.com
-- Generation Time: Feb 02, 2019 at 08:36 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_21750226_saved`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `userName` varchar(40) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `companyuniqueno` int(10) NOT NULL,
  UNIQUE KEY `unique` (`userName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`userName`, `pass`, `Name`, `companyuniqueno`) VALUES
('1606810215', 'nishu311', 'Nishant Sharma', 121212),
('nishu', 'nishu', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `python`
--

CREATE TABLE IF NOT EXISTS `python` (
  `name` varchar(100) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `day` int(100) NOT NULL AUTO_INCREMENT,
  `info` varchar(500) DEFAULT NULL,
  `extra` varchar(500) DEFAULT NULL,
  `ques` varchar(500) DEFAULT NULL,
  `mc1` varchar(100) DEFAULT NULL,
  `mc2` varchar(100) DEFAULT NULL,
  `mc3` varchar(100) DEFAULT NULL,
  `mc4` varchar(100) DEFAULT NULL,
  `ans` int(10) DEFAULT NULL,
  `embed` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`day`),
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `python`
--

INSERT INTO `python` (`name`, `link`, `day`, `info`, `extra`, `ques`, `mc1`, `mc2`, `mc3`, `mc4`, `ans`, `embed`) VALUES
('Python Tutorial-1 Introduction ', '<iframe class="iframe1" src="https://www.youtube.com/embed/TK_iqVinAf8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 1, '<ul><li>Python is a widely used general-purpose, high level programming language. Python is a programming language that lets you work quickly and integrate systems more efficiently.  There are two major Python versions- Python 2 and Python 3.</li></ul></br>', '</br><ul><li>In a Python script to print something on the console print() function is used – it simply prints out a line ( and also includes a newline unlike in C ).</li></br></ul>', 'what is the output of the given code </br> #this is a comment </br>print("hello i am")</br>print("a programmer")</br>', 'hello i ama programmer', 'hello i am  a programmer', 'hello i am</br>a programmer', 'hello i am', 3, '<div data-pym-src="https://www.jdoodle.com/embed/v0/wLu"></div>'),
('Python Tutorial-2 Variables', '<iframe class="iframe1" src="https://www.youtube.com/embed/OhA47e9UiTw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 2, '</br><ul><li> A Python variable is a reserved memory location to store values. In other words, a variable in a python program gives data to the computer for processing.</li></br><li>A variable name must start with a letter or the underscore character.</li></ul></br>', '<ul><li>A variable name cannot start with a number.</li></br><li>Variable names are case-sensitive (age, Age and AGE are three different variables)</li></ul>', 'what is the output of the given code </br> #this is a comment </br>z=4.5</br>x=int(z)</br>print(x)</br>', '4.5', '4', '4.00', '4.55', 2, '<div data-pym-src="https://www.jdoodle.com/embed/v0/wNI"></div>');

-- --------------------------------------------------------

--
-- Table structure for table `ser`
--

CREATE TABLE IF NOT EXISTS `ser` (
  `companyname` varchar(30) CHARACTER SET ascii NOT NULL,
  `cono` varchar(13) CHARACTER SET ascii NOT NULL,
  `mail` varchar(40) CHARACTER SET ascii NOT NULL,
  `skillrequire` varchar(100) CHARACTER SET ascii NOT NULL,
  `description` varchar(100) NOT NULL,
  `applyier` varchar(100) NOT NULL,
  `internindex` int(100) NOT NULL AUTO_INCREMENT COMMENT 'that give unique index to every Internship',
  KEY `internindex` (`internindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ser`
--

INSERT INTO `ser` (`companyname`, `cono`, `mail`, `skillrequire`, `description`, `applyier`, `internindex`) VALUES
('', '', '', '', '', '', 12),
('', '', '', '', '', '', 10),
('Tarun Sharma', '8864948899', 'tarunkc50@gmail.com', '', 'Medical', '', 11),
('Nishant Sharma', '8265853848', 'nishant.sharma.cs.2016@miet.ac.in', '', 'website designing', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `UserName`
--

CREATE TABLE IF NOT EXISTS `UserName` (
  `userName` varchar(40) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `userName` (`userName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserName`
--

INSERT INTO `UserName` (`userName`, `pass`, `first`, `last`, `flag`) VALUES
('nishu', 'nishu', 'Nishu', 'Sharma', 0),
('nishant.sharma.cs.2016@miet.ac.in', 'nishu311', 'Nishant', 'Sharma', 0),
('megha.singhal', 'megha8266', 'Megha', 'Singhal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `webdevelopment`
--

CREATE TABLE IF NOT EXISTS `webdevelopment` (
  `name` varchar(30) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `day` int(100) NOT NULL AUTO_INCREMENT,
  `intro` varchar(300) DEFAULT NULL,
  `extra` varchar(300) DEFAULT NULL,
  `ques` varchar(500) DEFAULT NULL,
  `mc1` varchar(300) DEFAULT NULL,
  `mc2` varchar(300) DEFAULT NULL,
  `mc3` varchar(300) DEFAULT NULL,
  `mc4` varchar(300) DEFAULT NULL,
  `ans` int(10) DEFAULT NULL,
  `embed` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`day`),
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `webdevelopment`
--

INSERT INTO `webdevelopment` (`name`, `link`, `day`, `intro`, `extra`, `ques`, `mc1`, `mc2`, `mc3`, `mc4`, `ans`, `embed`) VALUES
('Chapter-1 Introduction ', '<iframe class="iframe1" src="https://www.youtube.com/embed/RXIEP_VgCkI" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 1, '<ul><li>Web development is a broad term for the work involved in developing a web site for the Internet (World Wide Web) or an intranet (a private network).</li></ul></br>', '</br><ul><li>Languages uses for front end  is HTML, CSS, Javascript</li></br><li>Languages Used for back end process is php,java,python</li></ul>', 'Languages uses for Website Designing are', 'html,css,php', 'html,css,javascript', 'php,mysql', 'java,html,php', 2, NULL),
('Chapter 2 Introduction of HTML', '</br><iframe style="iframe1" src="https://www.youtube.com/embed/VX24ebO28Qc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 2, '<ul><li>HTML stands for Hyper Text Markup Language</li></br><li>HTML is used to build the basic structure of web page</li></ul>', '<ul><li>All the code of HTML are written inside the html tag</li></br><li>HTML is the standard markup language for creating Web pages</li></ul></br>', 'which heading tag give the  highest font size', '&lt;h3&gt;', '&lt;h6&gt;', '&lt;h5&gt;', '&lt;h1&gt;', 4, '<div style="color:white;"> <p> &lt;html&gt;</br>&lt;head&gt;</br>&lt;title&gt;title of page&lt;/title&gt;</br>&lt;/head&gt;</br>&lt;body&gt;</br>&lt;h1&gt;This is heading 1 type&lt;/h3&gt;</br>&lt;/body&gt;</br>&lt;/html&gt;</div></br>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2013 at 05:34 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cleanplate`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique user identifier',
  `email` varchar(50) NOT NULL COMMENT 'Unique user email address',
  `password` varchar(255) NOT NULL COMMENT 'Hashed user password',
  `display_name` varchar(20) NOT NULL COMMENT 'User''s display name',
  `created` int(11) NOT NULL COMMENT 'User created time',
  `status` tinyint(1) NOT NULL COMMENT 'status of user',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='User table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `display_name`, `created`, `status`) VALUES
(1, 'amitavroy@gmail.com', '2226af25c35315affe94af2dd9bfd87b926a8b44f17e418f337938aa9755c2ce', 'Amitav', 1377535451, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DROP DATABASE IF EXISTS `schema`;
CREATE DATABASE IF NOT EXISTS `schema` DEFAULT CHARACTER SET utf32 COLLATE utf32_general_ci;
USE `schema`;





CREATE TABLE issues (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('Bug','Proposal','Task') DEFAULT NULL,
  `description` int(11) NOT NULL,
  `priority` enum('Minor','Major','Critical') DEFAULT NULL,
  `status` enum('Open','Closed','In Progress') DEFAULT NULL,
  `assigned_to` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_to` (`assigned_to`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;


 
CREATE TABLE  users (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_joined` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf32;



INSERT INTO `users` (`id`, `firstname`, `lastname`, `password`, `email`, `date_joined`) VALUES
(1, 'ADMIN', 'ADMIN', MD5('password123'), 'admin@project2.com', '2020-12-02 13:05:39');


ALTER TABLE `issues`
  ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
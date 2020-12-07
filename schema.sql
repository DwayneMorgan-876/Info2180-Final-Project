DROP DATABASE IF EXISTS `schema1`;
CREATE DATABASE IF NOT EXISTS `schema1` DEFAULT CHARACTER SET utf32 COLLATE utf32_general_ci;
USE `schema1`;

--NOTE:when using "schema" we got some issues importing the SQL tables and granting permission so we tried schema1.--
-- --------------------------------------------------------


-- Table structure for table `issues`:\

DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
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


-- Table structure for table `users`:

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_joined` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf32;


-- RELATIONSHIPS FOR TABLE `users`:

INSERT INTO `users` (`id`, `firstname`, `lastname`, `password`, `email`, `date_joined`) VALUES
(1, 'ADMIN', 'ADMIN', MD5('password123'), 'admin@project2.com', '2020-12-02 20:23:39');


-- Permission for user--

GRANT ALL PRIVILEGES ON schema1.* TO 'admin@project2.com'@'localhost'IDENTIFIED BY 'password123';


-- Constraints for table `issues`

ALTER TABLE `issues`
  ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
CREATE DATABASE  IF NOT EXISTS `secure_users_directory`;
USE `secure_users_directory`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;


CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


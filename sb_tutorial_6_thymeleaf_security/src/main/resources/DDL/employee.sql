CREATE DATABASE  IF NOT EXISTS `secure_employee_directory_with_users`;
USE `secure_employee_directory_with_users`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;


create table `users` (
    username varchar(50) not null primary key,
    password varchar(120) not null,
    enabled boolean not null
);

create table `authorities` (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references users (username)
);

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for `users`
--

insert into users(username, password, enabled)values('zarras','{noop}zarras',true);
insert into users(username, password, enabled)values('pvassil','{noop}pvassil',true);
 
insert into authorities(username,authority)values('zarras','ADMIN');
insert into authorities(username,authority)values('zarras','USER');
insert into authorities(username,authority)values('pvassil','USER');

 
--
-- Data for table `employee`
--

INSERT INTO `employee` VALUES 
	(1,'Leslie','Andrews','leslie@luv2code.com'),
	(2,'Emma','Baumgarten','emma@luv2code.com'),
	(3,'Avani','Gupta','avani@luv2code.com'),
	(4,'Yuri','Petrov','yuri@luv2code.com'),
	(5,'Juan','Vega','juan@luv2code.com');


CREATE DATABASE  IF NOT EXISTS `myy803_diplomas_mgt_app_schema_2023`;
USE `myy803_diplomas_mgt_app_schema_2023`;

DROP TABLE IF EXISTS `applications`;
DROP TABLE IF EXISTS `theses`;
DROP TABLE IF EXISTS `student_profiles`;
DROP TABLE IF EXISTS `subjects`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `first_name` TEXT NOT NULL,
  `last_name` TEXT NOT NULL,
  `role` text DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `subjects` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `professor_id` int NOT NULL,
  `subject_name` TEXT NOT NULL,
  `subject_description` TEXT DEFAULT NULL,
  `subject_available` boolean DEFAULT true,
  
  PRIMARY KEY (`subject_id`),
  
  CONSTRAINT `subjects_FKey_to_users` 
      FOREIGN KEY (`professor_id`) REFERENCES `users` (`id`)
      
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `student_profiles` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `student_AM` int NOT NULL,
  `student_year_of_studies` int NOT NULL,
  `student_average_grade` double NOT NULL,
  
  PRIMARY KEY (`profile_id`),
  
  CONSTRAINT `profiles_FKey_to_users` 
      FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
      
) ENGINE=InnoDB AUTO_INCREMENT=1;


CREATE TABLE `applications` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `applicant_profile_id` int NOT NULL,
  `application_subject_id` int NOT NULL,
  
  PRIMARY KEY (`application_id`),
  
  CONSTRAINT `applications_FKey_to_students` 
      FOREIGN KEY (`applicant_profile_id`) REFERENCES `student_profiles` (`profile_id`),
      
  CONSTRAINT `applications_FKey_to_subjects` 
      FOREIGN KEY (`application_subject_id`) REFERENCES `subjects` (`subject_id`) 
  
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `theses` (
  `thesis_id` int NOT NULL AUTO_INCREMENT,
  `thesis_student_profile_id` int NOT NULL,
  `thesis_subject_id` int NOT NULL,
  `thesis_report_grade` double DEFAULT NULL,
  `thesis_presentation_grade` double DEFAULT NULL,
  `thesis_implementation_grade` double DEFAULT NULL,
  `thesis_total_grade` double DEFAULT NULL,

  PRIMARY KEY (`thesis_id`),
  
  CONSTRAINT `theses_FKey_to_students` 
      FOREIGN KEY (`thesis_student_profile_id`) REFERENCES `student_profiles` (`profile_id`),
      
  CONSTRAINT `theses_FKey_to_subjects` 
      FOREIGN KEY (`thesis_subject_id`) REFERENCES `subjects` (`subject_id`) 
  
) ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Data for `users`
--

-- insert into users(username, password, enabled)values('zarras','{noop}zarras',true);
-- insert into users(username, password, enabled)values('kstarida','{noop}kstarida',true);
 
-- insert into authorities(username,authority)values('zarras','ROLE_ADMIN');
-- insert into authorities(username,authority)values('zarras','ROLE_PROF');
-- insert into authorities(username,authority)values('kstarida','ROLE_STUDENT');

-- INSERT INTO `subjects` VALUES 
-- 	(1,'Smart City Bus Driver App','Develop an application to help bus drivers',true,'zarras'),
-- (2,'SQL debugger','Develop an application to debug sql scripts',false,'zarras'),
-- (3,'Smart City Bus Passenger App','Develop an application to help bus passengers',true,'pvassil'),
-- (4,'UML Plugin','Develop an Eclipse plugin for eclipse',false,'pvassil');

	
-- INSERT INTO `students` VALUES
-- (1, 'John', 'Dom', '1110', 5, 6.5),
-- (2, 'Jack', 'Bam', '2310', 6, 7.5),
-- (3, 'Jim', 'Dan', '1710', 8, 5.5),
-- (4, 'Trin', 'Tsim', '5610', 6, 8.5),
-- (5, 'John', 'Wick', '6110', 7, 8.5),
-- (6, 'Klaid', 'Beam', '1678', 5, 6.5);

-- INSERT INTO `applications` VALUES
-- (1, 1, 1), (2, 2, 1),
-- (3, 3, 3), (4, 4, 3);

-- INSERT INTO `theses` VALUES
-- (1, 5, 2, NULL, NULL, NULL, NULL), (2, 6, 4, NULL, NULL, NULL, NULL);
	
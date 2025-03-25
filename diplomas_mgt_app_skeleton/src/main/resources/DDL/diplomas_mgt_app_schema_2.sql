CREATE DATABASE  IF NOT EXISTS `myy803_diplomas_mgt_app_schema_2023`;
USE `myy803_diplomas_mgt_app_schema_2023`;

DROP TABLE IF EXISTS `applications`;
DROP TABLE IF EXISTS `theses`;
DROP TABLE IF EXISTS `subjects`;
DROP TABLE IF EXISTS `students`;
DROP TABLE IF EXISTS `professors`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  
  PRIMARY KEY (`username`)
);

CREATE TABLE `students` (
  `username` varchar(255) NOT NULL,
  `full_name` TEXT NOT NULL,
  `AM` int NOT NULL,
  `year_of_studies` int NOT NULL,
  `average_grade` double NOT NULL,
  
  PRIMARY KEY (`username`)     
);

CREATE TABLE `professors` (
  `username` varchar(255) NOT NULL,
  `full_name` TEXT NOT NULL,
  `specialty` TEXT NOT NULL,
  PRIMARY KEY (`username`)     
);


CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supervisor_username` varchar(255) NOT NULL,
  `title` TEXT NOT NULL,
  `description` TEXT DEFAULT NULL,
  `available` boolean DEFAULT true,
  
  PRIMARY KEY (`id`),
  
  CONSTRAINT `subjects_FKey_to_professors` 
      FOREIGN KEY (`supervisor_username`) REFERENCES `professors` (`username`)
      
);


CREATE TABLE `applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_username` varchar(255) NOT NULL,
  `subject_id` int NOT NULL,
  
  PRIMARY KEY (`id`),
  
  CONSTRAINT `applications_FKey_to_students` 
      FOREIGN KEY (`student_username`) REFERENCES `students` (`username`),
      
  CONSTRAINT `applications_FKey_to_subjects` 
      FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) 
  
);

CREATE TABLE `theses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `professor_username` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `subject_id` int NOT NULL,
  `report_grade` double DEFAULT NULL,
  `presentation_grade` double DEFAULT NULL,
  `implementation_grade` double DEFAULT NULL,
  `total_grade` double DEFAULT NULL,

  PRIMARY KEY (`id`),
  
  CONSTRAINT `theses_FKey_to_professors` 
      FOREIGN KEY (`professor_username`) REFERENCES `professors` (`username`),
  
  CONSTRAINT `theses_FKey_to_students` 
      FOREIGN KEY (`student_id`) REFERENCES `students` (`username`),
      
  CONSTRAINT `theses_FKey_to_subjects` 
      FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) 
  
);

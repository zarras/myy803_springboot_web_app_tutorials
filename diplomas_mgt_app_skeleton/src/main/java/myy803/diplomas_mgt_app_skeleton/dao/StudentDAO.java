package myy803.diplomas_mgt_app_skeleton.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.diplomas_mgt_app_skeleton.model.Student;

public interface StudentDAO extends JpaRepository<Student, String>{}

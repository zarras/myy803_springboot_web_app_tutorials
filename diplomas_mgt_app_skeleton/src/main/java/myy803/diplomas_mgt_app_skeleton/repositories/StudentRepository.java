package myy803.diplomas_mgt_app_skeleton.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.diplomas_mgt_app_skeleton.model.Student;

public interface StudentRepository extends JpaRepository<Student, String>{}

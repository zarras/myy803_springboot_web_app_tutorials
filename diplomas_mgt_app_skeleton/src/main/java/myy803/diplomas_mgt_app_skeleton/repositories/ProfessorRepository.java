package myy803.diplomas_mgt_app_skeleton.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.diplomas_mgt_app_skeleton.model.Professor;

public interface ProfessorRepository extends JpaRepository<Professor, String>{}

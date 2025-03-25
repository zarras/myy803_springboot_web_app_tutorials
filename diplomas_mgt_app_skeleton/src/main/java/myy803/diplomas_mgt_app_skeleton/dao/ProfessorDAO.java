package myy803.diplomas_mgt_app_skeleton.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.diplomas_mgt_app_skeleton.model.Professor;

public interface ProfessorDAO extends JpaRepository<Professor, String>{}

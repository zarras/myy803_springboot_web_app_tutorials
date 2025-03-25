package myy803.diplomas_mgt_app_skeleton.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.diplomas_mgt_app_skeleton.model.Thesis;

public interface ThesisDAO extends JpaRepository<Thesis, Integer>{}

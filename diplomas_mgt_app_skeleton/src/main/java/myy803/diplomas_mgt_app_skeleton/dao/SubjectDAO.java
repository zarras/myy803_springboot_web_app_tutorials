package myy803.diplomas_mgt_app_skeleton.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.diplomas_mgt_app_skeleton.model.Subject;

import java.util.List;


public interface SubjectDAO extends JpaRepository<Subject, Integer>{

    /**
     * Issues the following jpql query:
     *
     * select s from Subject s where s.supervisor.username = username
     *
     */
    List<Subject> findBySupervisorUsername(String username);

}

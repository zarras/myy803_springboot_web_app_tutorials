package myy803.diplomas_mgt_app_skeleton.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.diplomas_mgt_app_skeleton.model.Professor;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface ProfessorRepository extends JpaRepository<Professor, String>{

    /**
     *  Fetch a professor along with its assigned subjects (join fetch).
     *  Fetch a professor even in case of no assigned subjects (left join fetch)
     *
     * @param username
     * @return
     */
    @Query("select p from Professor p left join fetch p.subjects where p.id = :username")
    Optional<Professor> findByIdWithSubjects(String username);


}

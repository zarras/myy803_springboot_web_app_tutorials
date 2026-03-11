package myy803.diplomas_mgt_app_skeleton.dao;

import myy803.diplomas_mgt_app_skeleton.model.Professor;
import myy803.diplomas_mgt_app_skeleton.model.Subject;
import org.hibernate.LazyInitializationException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@Sql(
        scripts = "/import.sql",
        executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD
)
@SpringBootTest
class ProfessorDAOTest {

    @Autowired
    ProfessorDAO professorDAO;

    @Test
    void findByIdWithSubjects(){

        Optional<Professor> saved = professorDAO.findByIdWithSubjects("christos");
        assertTrue(saved.isPresent());
        assertEquals(2, saved.get().getSubjects().size());

    }

    @Test
    void findById_raises_exception_when_subjects_accessed(){
        Optional<Professor> saved = professorDAO.findById("christos");
        assertTrue(saved.isPresent());

        /*
        FindById fetches professor without subjects due to Lazy fetch type.
        If you try to access professor.getSubjects() on a detached entity (EntityManager closed)
        then LazyInitializationException is raised
         */
        Assertions.assertThrows(LazyInitializationException.class, () -> {
            int subjectsCount = saved.get().getSubjects().size();
        });
    }

}
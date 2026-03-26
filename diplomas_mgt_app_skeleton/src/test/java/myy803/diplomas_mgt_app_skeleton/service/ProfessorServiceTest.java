package myy803.diplomas_mgt_app_skeleton.service;


import myy803.diplomas_mgt_app_skeleton.model.Professor;
import myy803.diplomas_mgt_app_skeleton.model.Subject;
import myy803.diplomas_mgt_app_skeleton.repositories.ProfessorRepository;
import myy803.diplomas_mgt_app_skeleton.repositories.SubjectRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@Sql(
        scripts = "/import.sql",
        executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD
)
@SpringBootTest
class ProfessorServiceTest {

    @Autowired
    ProfessorService professorService;

    @Autowired
    ProfessorRepository professorDAO;

    @Autowired
    SubjectRepository subjectDAO;


    @Test
    void retrieveProfile() {

        Professor professor = professorService.retrieveProfile("christos");
        assertEquals("Christos Papadimitriou", professor.getFullName());

    }

    @Test
    void saveProfile() {

        Professor professor = new Professor("nikos", "Nikos Diamantidis", "Software Engineering",
                new ArrayList<>(), new ArrayList<>());
        professorService.saveProfile(professor);

        Optional<Professor> saved = professorDAO.findById("nikos");
        assertTrue(saved.isPresent());
        assertEquals("Nikos Diamantidis", saved.get().getFullName());

    }

    @Test
    void listProfessorSubjects() {

        List<Subject> subjectList = professorService.listProfessorSubjects("christos");
        assertEquals(2, subjectList.size());

    }

    @Test
    void add_new_subject() {

        // initially 2 assigned subjects
        List<Subject> subjects = subjectDAO.findBySupervisorUsername("kgeorgiou");
        assertEquals(2, subjects.size());

        Subject subject = new Subject("Software testing", "Software testing course", true, new ArrayList<>());
        professorService.addSubject("kgeorgiou", subject);

        // after service call, assigned subjects should be 3
        subjects = subjectDAO.findBySupervisorUsername("kgeorgiou");
        assertEquals(3, subjects.size());


    }

    @Test
    void listApplications() {
    }

    @Test
    void listProfessorTheses() {
    }

    @Test
    void assignSubject() {
    }
}
package myy803.diplomas_mgt_app_skeleton.service;

import myy803.diplomas_mgt_app_skeleton.dao.StudentDAO;
import myy803.diplomas_mgt_app_skeleton.model.Student;
import myy803.diplomas_mgt_app_skeleton.model.Subject;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@Sql(
        scripts = "/import.sql",
        executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD
)
@SpringBootTest
class StudentServiceImplTest {

    @Autowired
    StudentService studentService;

    @Autowired
    StudentDAO studentDAO;

    @Test
    void saveProfile() {

        Student student = new Student("gerard", "Gerard Meszaros", "1240", 3, 6.7, new ArrayList<>());
        studentService.saveProfile(student);

        Optional<Student> saved = studentDAO.findById("gerard");
        assertTrue(saved.isPresent());
        assertEquals("Gerard Meszaros", saved.get().getFullName());

    }

    @Test
    void retrieve_existing_profile(){

        Student student = studentService.retrieveProfile("martin");
        assertNotNull(student);
        assertEquals("Martin Fowler", student.getFullName());

    }

    @Test
    void retrieve_non_existing_profile_returns_empty_student(){
        Student student = studentService.retrieveProfile("john");
        assertNotNull(student);
        assertEquals("john", student.getUsername());
        assertNull(student.getFullName());
    }

    @Test
    void list_available_subjects(){

        List<Subject> subjectList = studentService.listStudentSubjects();
        assertEquals(5, subjectList.size());

    }

    @Test
    @Transactional
    void apply_to_subject_creates_application(){

        // initial state of student - 2 applications
        Student martin = studentService.retrieveProfile("martin");
        assertNotNull(martin);
        assertEquals(2, martin.getApplications().size());

        studentService.applyToSubject("martin", 6);

        // final state of student - 3 applications
        martin = studentService.retrieveProfile("martin");
        assertNotNull(martin);
        assertEquals(3, martin.getApplications().size());

    }


}
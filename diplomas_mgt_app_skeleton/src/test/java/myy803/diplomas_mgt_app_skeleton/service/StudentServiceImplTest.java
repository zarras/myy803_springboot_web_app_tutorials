package myy803.diplomas_mgt_app_skeleton.service;

import myy803.diplomas_mgt_app_skeleton.model.Student;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Service;
import org.springframework.test.context.jdbc.Sql;

import javax.persistence.EntityManager;
import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.*;

@Sql(
        scripts = "/import.sql",
        executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD
)
@SpringBootTest
class StudentServiceImplTest {

    @Autowired
    StudentServiceImpl studentService;

    @Autowired
    EntityManager em;

    @Test
    void saveProfile() {

        Student student = new Student("gerard", "Gerard Meszaros", "1240", 3, 6.7, new ArrayList<>());
        studentService.saveProfile(student);

        Student saved = em.find(Student.class, "gerard");
        assertNotNull(saved);
        assertEquals("Gerard Meszaros", saved.getFullName());


    }

    @Test
    void retrieve_existing_profile() {

        Student student = studentService.retrieveProfile("martin");
        assertNotNull(student);


    }
}
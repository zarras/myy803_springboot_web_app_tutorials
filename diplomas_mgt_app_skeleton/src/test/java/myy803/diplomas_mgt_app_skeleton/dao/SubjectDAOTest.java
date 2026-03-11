package myy803.diplomas_mgt_app_skeleton.dao;

import myy803.diplomas_mgt_app_skeleton.model.Subject;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Sql(
        scripts = "/import.sql",
        executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD
)
@SpringBootTest
class SubjectDAOTest {

    @Autowired
    SubjectDAO subjectDAO;

    @Test
    void findByProfessorUsername(){

        List<Subject> subjectList = subjectDAO.findBySupervisorUsername("christos");
        assertEquals(2, subjectList.size());

    }

}
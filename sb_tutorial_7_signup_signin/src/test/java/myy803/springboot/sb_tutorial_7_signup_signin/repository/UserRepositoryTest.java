package myy803.springboot.sb_tutorial_7_signup_signin.repository;

import myy803.springboot.sb_tutorial_7_signup_signin.model.Role;
import myy803.springboot.sb_tutorial_7_signup_signin.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@Sql(
        scripts = "/import.sql",
        executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD
)
@SpringBootTest
class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    @Test
    public void testFindExistingUser(){

        Optional<User> result = userRepository.findByUsername("christos");
        assertTrue(result.isPresent());

        assertEquals(Role.ADMIN, result.get().getRole());
        assertEquals("christos", result.get().getUsername());

    }

    @Test
    public void testFindNonExistingUser(){
        Optional<User> result = userRepository.findByUsername("random");
        assertFalse(result.isPresent());
    }


}
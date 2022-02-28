package myy803.springboot.sb_tutorial_3_thymeleaf;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import myy803.springboot.sb_tutorial_3_thymeleaf.dao.EmployeeDAO;
import myy803.springboot.sb_tutorial_3_thymeleaf.dao.EmployeeDAOJpaImpl;
import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;

@SpringBootTest
@TestPropertySource(
  locations = "classpath:application.properties")
class TestEmployeeDAOJpa {
	
	@Autowired 
	@Qualifier("employeeDAOJpaImpl")
	EmployeeDAO employeeDAO;
	
	
		
	@Test
	void testEmployeeDAOJpaImplIsNotNull() {
		Assertions.assertNotNull(employeeDAO);
	}

	@Test
	void testFindByIdReturnsEmployee() {
		Employee storedEmployee = employeeDAO.findById(1);
		Assertions.assertNotNull(storedEmployee);
		Assertions.assertEquals("Andrews", storedEmployee.getLastName());
	}
}
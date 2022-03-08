package myy803.springboot.sb_tutorial_4_thymeleaf_security;


import javax.transaction.Transactional;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import myy803.springboot.sb_tutorial_4_thymeleaf_security.dao.*;
import myy803.springboot.sb_tutorial_4_thymeleaf_security.entity.Employee;

@SpringBootTest
@TestPropertySource(
  locations = "classpath:application.properties")
class TestEmployeeDAOJpa {
	@Autowired 
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

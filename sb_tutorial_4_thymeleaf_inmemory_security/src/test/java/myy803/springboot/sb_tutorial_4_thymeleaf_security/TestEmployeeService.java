package myy803.springboot.sb_tutorial_4_thymeleaf_security;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import myy803.springboot.sb_tutorial_4_thymeleaf_security.entity.Employee;
import myy803.springboot.sb_tutorial_4_thymeleaf_security.service.EmployeeService;

@SpringBootTest
@TestPropertySource(
  locations = "classpath:application.properties")
class TestEmployeeService {

	@Autowired 
	EmployeeService employeeService;
	
	@Test
	void testEmployeeDAOJpaImplIsNotNull() {
		Assertions.assertNotNull(employeeService);
	}

	@Test
	void testFindByIdReturnsEmployee() {
		Employee storedEmployee = employeeService.findById(1);
		Assertions.assertNotNull(storedEmployee);
		Assertions.assertEquals("Andrews", storedEmployee.getLastName());
	}
}

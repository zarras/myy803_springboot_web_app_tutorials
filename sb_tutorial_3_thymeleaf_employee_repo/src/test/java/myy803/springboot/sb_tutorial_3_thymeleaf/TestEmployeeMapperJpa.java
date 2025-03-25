package myy803.springboot.sb_tutorial_3_thymeleaf;


import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;
import myy803.springboot.sb_tutorial_3_thymeleaf.mappers.EmployeeMapper;

@SpringBootTest
@TestPropertySource(
  locations = "classpath:application.properties")
class TestEmployeeMapperJpa {
	
	@Autowired 
	EmployeeMapper employeeMapper;
		
	@Test
	void testEmployeeDAOJpaImplIsNotNull() {
		Assertions.assertNotNull(employeeMapper);
	}

	@Test
	void testFindByIdReturnsEmployee() {
		Employee storedEmployee = employeeMapper.findById(1);
		Assertions.assertNotNull(storedEmployee);
		Assertions.assertEquals("Andrews", storedEmployee.getLastName());
	}
}

package myy803.springboot.sb_tutorial_6_thymeleaf_security;

import org.junit.jupiter.api.Assertions;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.junit4.SpringRunner;

import myy803.springboot.sb_tutorial_6_thymeleaf_security.dao.*;
import myy803.springboot.sb_tutorial_6_thymeleaf_security.entity.Employee;
import myy803.springboot.sb_tutorial_6_thymeleaf_security.service.EmployeeService;
import myy803.springboot.sb_tutorial_6_thymeleaf_security.service.EmployeeServiceImpl;


//@SpringBootTest
//@TestPropertySource(
//  locations = "classpath:application.properties")
//@RunWith(SpringRunner.class)
@ExtendWith(SpringExtension.class)
class TestEmployeeServiceWithMocks {

	@TestConfiguration
    static class EmployeeServiceImplTestContextConfiguration {
 
        @Bean
        public EmployeeService employeeService() {
            return new EmployeeServiceImpl();
        }
    }

	@Autowired 
	EmployeeService employeeService;
	
	@MockBean
	EmployeeDAO employeeDAO;
	
	@Test
	void testEmployeeDAOJpaImplIsNotNull() {
		Assertions.assertNotNull(employeeService);
	}

	@Test
	void testFindByIdReturnsEmployee() {
		Mockito.when(employeeDAO.findById(1)).thenReturn(new Employee(1, "", "Andrews", ""));
		Employee storedEmployee = employeeService.findById(1);
		Assertions.assertNotNull(storedEmployee);
		Assertions.assertEquals("Andrews", storedEmployee.getLastName());
	}
	/*
	 * See also Mockito.mock(), Mockito.spy(), Mockito.verify(<objectCalled>).<methodCalled>()
	 * 
	 */
}

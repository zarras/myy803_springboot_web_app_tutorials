package myy803.springboot.sb_tutorial_3_thymeleaf;

import org.junit.jupiter.api.Assertions;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit.jupiter.SpringExtension;


import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;
import myy803.springboot.sb_tutorial_3_thymeleaf.service.EmployeeService;
import myy803.springboot.sb_tutorial_3_thymeleaf.service.EmployeeServiceImpl;
import myy803.springboot.sb_tutorial_3_thymeleaf.dao.*;


@ExtendWith(SpringExtension.class) // extends junit with spring test capabilities
class TestEmployeeServiceWithMocks {

	/*
	 * @TestConfiguration can be used to 
	 * define additional beans or customizations for a test
	 */
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
	EmployeeDAO employeeRepository;
	
	@Test
	void testEmployeeDAOJpaImplIsNotNull() {
		Assertions.assertNotNull(employeeService);
	}

	@Test
	void testFindByIdReturnsEmployee() {
		Mockito.when(employeeRepository.findById(2)).thenReturn(new Employee(2, "", "Andrews", ""));
		
		Employee storedEmployee = employeeService.findById(2);
		Assertions.assertNotNull(storedEmployee);
		Assertions.assertEquals("Andrews", storedEmployee.getLastName());
	}
}

package myy803.springboot.sb_tutorial_6_thymeleaf_security;

import org.junit.jupiter.api.Assertions;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import myy803.springboot.sb_tutorial_6_thymeleaf_security.dao.*;
import myy803.springboot.sb_tutorial_6_thymeleaf_security.entity.Employee;
import myy803.springboot.sb_tutorial_6_thymeleaf_security.service.EmployeeService;
import myy803.springboot.sb_tutorial_6_thymeleaf_security.service.EmployeeServiceImpl;


@ExtendWith(SpringExtension.class)
class TestEmployeeServiceWithMocks {

	@TestConfiguration
    static class EmployeeServiceImplTestContextConfiguration {
 
        @Bean
        public EmployeeService employeeService() {
            return new EmployeeServiceImpl();
        }
    }

	/*
	 *  Normally with @SpringBootTest this attribute 
	 *  would have been automatically created by the spring container 
	 *  with all its constituent objects. 
	 *  
	 *  Here this is not the case because we do not rely on the spring container. 
	 *  Instead, we want to unit test. So WE have to create this attribute 
	 *  and bind it with a Mock JPA repository bean. How ? using 
	 *  the @TestConfiguration class 
	 */
	@Autowired 
	EmployeeService employeeService = new EmployeeServiceImpl();
	
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

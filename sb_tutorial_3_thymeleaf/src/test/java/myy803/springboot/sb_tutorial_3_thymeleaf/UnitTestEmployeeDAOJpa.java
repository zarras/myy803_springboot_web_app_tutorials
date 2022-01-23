package myy803.springboot.sb_tutorial_3_thymeleaf;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;

import org.junit.Before;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import org.springframework.test.context.junit.jupiter.SpringExtension;

import myy803.springboot.sb_tutorial_3_thymeleaf.dao.EmployeeDAO;
import myy803.springboot.sb_tutorial_3_thymeleaf.dao.EmployeeDAOJpaImpl;
import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;

//@RunWith(SpringRunner.class)
@ExtendWith(SpringExtension.class)
//@Import(EmployeeServiceImplTestContextConfiguration.class)
class UnitTestEmployeeDAOJpa {
	
	@MockBean
	private EntityManager entityManager;

	@Autowired 
	EmployeeDAO employeeDAO;
	
	Employee employee = new Employee(1, "a", "b", "c");
	
	@TestConfiguration
    static class EmployeeDAOImplTestConfiguration {
 
        @Bean
        public EmployeeDAO employeeDAO() {
            return new EmployeeDAOJpaImpl();
        }
    }
	
	@Test
	void testEmployeeDAOJpaImplIsNotNull() {
		Assertions.assertNotNull(employeeDAO);
	}
	
	
	@Before
	public void setUp() {
		//Employee employee = new Employee(1, "a", "b", "c");
		Mockito.when(entityManager.find(Employee.class, 1))
	      .thenReturn(employee);
	}
	 
	@Test
	void testFindByIdReturnsEmployee() {		
		Employee storedEmployee = entityManager.find(Employee.class, 1);
				//employeeDAO.findById(1);
		//Assertions.assertNotNull(employeeDAO.getEntityManager().find(Employee.class, 1));
		Assertions.assertNotNull(storedEmployee);
		Assertions.assertEquals("b", storedEmployee.getLastName());
	}
}

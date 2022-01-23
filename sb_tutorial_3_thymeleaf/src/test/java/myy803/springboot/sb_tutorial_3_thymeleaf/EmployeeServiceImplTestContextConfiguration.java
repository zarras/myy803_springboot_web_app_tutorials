package myy803.springboot.sb_tutorial_3_thymeleaf;

import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.context.annotation.Bean;

import myy803.springboot.sb_tutorial_3_thymeleaf.dao.EmployeeDAO;
import myy803.springboot.sb_tutorial_3_thymeleaf.dao.EmployeeDAOJpaImpl;

@TestConfiguration
class EmployeeServiceImplTestContextConfiguration {
    @Bean
    public EmployeeDAO employeeDAO() {
        return new EmployeeDAOJpaImpl();
    }
}
	

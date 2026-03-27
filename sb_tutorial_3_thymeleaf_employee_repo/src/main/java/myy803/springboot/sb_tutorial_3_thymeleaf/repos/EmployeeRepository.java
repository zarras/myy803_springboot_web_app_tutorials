package myy803.springboot.sb_tutorial_3_thymeleaf.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import myy803.springboot.sb_tutorial_3_thymeleaf.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
	
	public Employee findById(int theId);
		
}

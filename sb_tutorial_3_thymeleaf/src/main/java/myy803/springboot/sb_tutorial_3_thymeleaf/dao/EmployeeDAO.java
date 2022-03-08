package myy803.springboot.sb_tutorial_3_thymeleaf.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;

@Repository
public interface EmployeeDAO extends JpaRepository<Employee, Integer> {
	
	public Employee findById(int theId);
		
}

package myy803.springboot.sb_tutorial_4_thymeleaf_security.service;

import java.util.List;

import myy803.springboot.sb_tutorial_4_thymeleaf_security.entity.Employee;

public interface EmployeeService {

	public List<Employee> findAll();
	
	public Employee findById(int theId);
	
	public void save(Employee theEmployee);
	
	public void deleteById(int theId);
	
}

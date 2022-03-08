package myy803.springboot.sb_tutorial_4_thymeleaf_security.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import myy803.springboot.sb_tutorial_4_thymeleaf_security.dao.EmployeeDAO;
import myy803.springboot.sb_tutorial_4_thymeleaf_security.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeRepository;
	
	public EmployeeServiceImpl() {
		super();
	}

	@Autowired
	public EmployeeServiceImpl(EmployeeDAO theEmployeeRepository) {
		employeeRepository = theEmployeeRepository;
	}
	
	@Override
	@Transactional
	public List<Employee> findAll() {
		return employeeRepository.findAll();
	}

	@Override
	@Transactional
	public Employee findById(int theId) {
		Employee result = employeeRepository.findById(theId);
				
		if (result != null ) {
			return result;
		}
		else {
			// we didn't find the employee
			throw new RuntimeException("Did not find employee id - " + theId);
		}
	}

	@Override
	@Transactional
	public void save(Employee theEmployee) {
		employeeRepository.save(theEmployee);
	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		employeeRepository.deleteById(theId);
	}
}







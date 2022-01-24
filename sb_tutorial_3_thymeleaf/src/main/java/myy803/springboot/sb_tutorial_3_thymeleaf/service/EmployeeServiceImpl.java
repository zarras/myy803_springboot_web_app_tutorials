package myy803.springboot.sb_tutorial_3_thymeleaf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import myy803.springboot.sb_tutorial_3_thymeleaf.dao.EmployeeDAO;
import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	@Qualifier("employeeDAOJpaImpl")
	private EmployeeDAO employeeRepository;
	
	@Autowired
	public EmployeeServiceImpl(@Qualifier("employeeDAOHibernateImpl") EmployeeDAO theEmployeeRepository) {
		employeeRepository = theEmployeeRepository;
	}
	
	public EmployeeServiceImpl() {
		// TODO Auto-generated constructor stub
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







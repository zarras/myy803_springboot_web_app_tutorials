package myy803.springboot.sb_tutorial_3_thymeleaf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;
import myy803.springboot.sb_tutorial_3_thymeleaf.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	public EmployeeController(EmployeeService theEmployeeService) {
		employeeService = theEmployeeService;
	}
	
	// add mapping for "/list"

	@RequestMapping("/list")
	public String listEmployees(Model theModel) {
		
		// get employees from db
		List<Employee> theEmployees = employeeService.findAll();
		
		// add to the spring model
		theModel.addAttribute("employees", theEmployees);
		
		return "employees/list-employees";
	}
	
	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		Employee theEmployee = new Employee();
		
		theModel.addAttribute("employee", theEmployee);

		return "employees/employee-form";
	}

	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("employeeId") int theId,
									Model theModel) {
		
		// get the employee from the service
		Employee theEmployee = employeeService.findById(theId);
		
		// set employee as a model attribute to pre-populate the form
		theModel.addAttribute("employee", theEmployee);
		
		
		// send over to our form
		return "employees/employee-form";			
	}
	
	
	@RequestMapping("/save")
	public String saveEmployee(Employee theEmployee){
		
		// save the employee
		employeeService.save(theEmployee);
		// redirect to /employees/list ACTION
		return "redirect:/employees/list";
	}
	
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("employeeId") int theId) {
		
		// delete the employee
		employeeService.deleteById(theId);
		
		// redirect to /employees/list ACTION
		return "redirect:/employees/list";
		
	}
}



















package myy803.springboot.sb_tutorial_4_thymeleaf_security.controller;

import java.util.List;

import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;

import myy803.springboot.sb_tutorial_4_thymeleaf_security.entity.Employee;
import myy803.springboot.sb_tutorial_4_thymeleaf_security.service.EmployeeService;

@Controller
@RequestMapping("/employees")
//@SessionAttributes("employees")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
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
		
		/* Simple test this is how to get the 
		 * name of the person logged in to be used for other purposes 
		 * Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		 * String currentPrincipalName = authentication.getName();
		 * System.out.println(currentPrincipalName);
		*/
		
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
		
		List<Employee> theEmployees = (List<Employee>) theModel.getAttribute("employees");
		theEmployees.size();
		
		// get the employee from the service
		Employee theEmployee = employeeService.findById(theId);
		
		// set employee as a model attribute to pre-populate the form
		theModel.addAttribute("employee", theEmployee);
		
		// send over to our form
		return "employees/employee-form";			
	}
	
	
	@RequestMapping("/save")
	public String saveEmployee(@ModelAttribute("employee") Employee theEmployee, Model theModel) {
		
		// save the employee
		employeeService.save(theEmployee);
		
		// use a redirect to prevent duplicate submissions
		return "redirect:/employees/list";
	}
	
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("employeeId") int theId) {
		
		// delete the employee
		employeeService.deleteById(theId);
		
		// redirect to /employees/list
		return "redirect:/employees/list";
		
	}
}



















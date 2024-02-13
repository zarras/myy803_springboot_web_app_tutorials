package myy803.springboot.sb_tutorial_3_thymeleaf;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import myy803.springboot.sb_tutorial_3_thymeleaf.controller.EmployeeController;
import myy803.springboot.sb_tutorial_3_thymeleaf.entity.Employee;


@SpringBootTest
@TestPropertySource(
  locations = "classpath:application.properties")
@AutoConfigureMockMvc
class TestEmployeeController {
	
	@Autowired
    private WebApplicationContext context;
	
	@Autowired
	private MockMvc mockMvc;
	
	@Autowired
	EmployeeController employeeController;

	@BeforeEach
    public void setup() {
		mockMvc = MockMvcBuilders
          .webAppContextSetup(context)
          .build();
    }
	
	@Test
	void testEmployeeControllerIsNotNull() {
		Assertions.assertNotNull(employeeController);
	}
	
	@Test
	void testMockMvcIsNotNull() {
		Assertions.assertNotNull(mockMvc);
	}
	
	
	@Test 
	void testListEmployeesReturnsPage() throws Exception {
		mockMvc.perform(get("/employees/list")).
		andExpect(status().isOk()). // adds result matchers that check some property
		andExpect(view().name("employees/list-employees")); // adds view matchers that check some property		
	}

	@Test 
	void testSaveEmployeeReturnsPage() throws Exception {
		
	    Employee employee = new Employee("Lola", "Lola", "Lola@mail");
	    	    
	    MultiValueMap<String, String> multiValueMap = new LinkedMultiValueMap<>();
	    multiValueMap.add("id", Integer.toString(employee.getId()));
	    multiValueMap.add("firstName", employee.getFirstName());
	    multiValueMap.add("lastName", employee.getLastName());
	    multiValueMap.add("email", employee.getEmail());
	    
		mockMvc.perform(
				post("/employees/save")
			    .params(multiValueMap))
				.andExpect(status().isFound()) // the resource (i.e. the list action) after redirection is found
				.andExpect(view().name("redirect:/employees/list"));
						
	}
}

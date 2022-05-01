package myy803.springboot.sb_tutorial_6_thymeleaf_security;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.context.WebApplicationContext;

import myy803.springboot.sb_tutorial_6_thymeleaf_security.controller.EmployeeController;
import myy803.springboot.sb_tutorial_6_thymeleaf_security.entity.Employee;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

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
	
	
	@WithMockUser(value = "zarras")
	@Test 
	void testListEmployeesReturnsPage() throws Exception {
		mockMvc.perform(get("/employees/list")).
		andExpect(status().isOk()).
		andExpect(model().attributeExists("employees")).
		andExpect(view().name("employees/list-employees"));		
		
		/*
		 * A way to check stuff that are in the model
		 * andExpect(MockMvcResultMatchers.model().attribute("msg", "Hi there, Joe."))
		 */
	}

	@WithMockUser(value = "zarras")
	@Test 
	void testSaveEmployeeReturnsPage() throws Exception {
		
	    Employee employee = new Employee("Lola", "Lola", "Lola@mail");
	    	    
	    MultiValueMap<String, String> multiValueMap = new LinkedMultiValueMap<>();
	    multiValueMap.add("id", Integer.toString(employee.getId()));
	    multiValueMap.add("firstName", employee.getFirstName());
	    multiValueMap.add("lastName", employee.getLastName());
	    multiValueMap.add("email", employee.getEmail());
	    
		mockMvc.perform(
				post("/employees/save").
			    params(multiValueMap)).
				andExpect(status().isFound()).
				andExpect(view().name("redirect:/employees/list"));	
	}
	
	
}

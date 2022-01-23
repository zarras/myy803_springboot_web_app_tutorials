package myy803.springboot.sb_tutorial_3_thymeleaf;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.web.servlet.MockMvc;
//import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.ResultActions;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.*;

import myy803.springboot.sb_tutorial_3_thymeleaf.controller.EmployeeController;

@SpringBootTest
@TestPropertySource(
  locations = "classpath:application.properties")
@AutoConfigureMockMvc
class TestEmployeeController {
	
	@Autowired
	private MockMvc mockMvc;
	
	@Autowired
	EmployeeController employeeController;
	
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
		mockMvc.perform(get("/employees/list")).andExpect(status().isOk());		
	}

}

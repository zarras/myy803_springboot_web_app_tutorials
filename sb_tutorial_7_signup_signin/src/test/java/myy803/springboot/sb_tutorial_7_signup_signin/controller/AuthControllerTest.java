package myy803.springboot.sb_tutorial_7_signup_signin.controller;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;


@SpringBootTest
@TestPropertySource(
        locations = "classpath:application.properties")
@AutoConfigureMockMvc
class AuthControllerTest {

    @Autowired
    private WebApplicationContext context;

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    AuthController authController;

    @BeforeEach
    public void setup() {
        mockMvc = MockMvcBuilders
                .webAppContextSetup(context)
                .build();
    }

    @Test
    void testAuthControllerIsNotNull() {
        Assertions.assertNotNull(authController);
    }

    @Test
    void testMockMvcIsNotNull() {
        Assertions.assertNotNull(mockMvc);
    }


    @Test
    void loginRedirectsToSigninPage() throws Exception {
        mockMvc.perform(get("/login"))
                        .andExpect(status().isOk())
                        .andExpect(view()
                                .name("auth/signin"));
    }


    @Test
    void registerExistingUser() throws Exception {
        mockMvc.perform(post("/save")
                        .formField("username", "christos")
                        .formField("password", "pass123"))
                .andExpect(status().isOk())
                .andExpect(view()
                        .name("auth/signin"))
                .andExpect(model().attribute("successMessage", "User already registered!"));
    }

    @Test
    void registerNonExistingUser() throws Exception {
        mockMvc.perform(post("/save")
                        .formField("username", "johndoe")
                        .formField("password", "pass123"))
                .andExpect(status().isOk())
                .andExpect(view()
                        .name("auth/signin"))
                .andExpect(model().attribute("successMessage", "User registered successfully!"));
    }


}
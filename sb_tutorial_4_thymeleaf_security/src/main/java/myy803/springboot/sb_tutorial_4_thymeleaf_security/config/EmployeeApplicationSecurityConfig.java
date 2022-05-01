package myy803.springboot.sb_tutorial_4_thymeleaf_security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/*
 * @Configuration Indicates that a class declares one or more 
 * @Bean methods and may be processed by the 
 * Spring container to generate bean definitions 
 * and service requests for those beans at runtime. 
 * The class may also have code that configures other 
 * spring functionalities. 
 */
@Configuration
@EnableWebSecurity
public class EmployeeApplicationSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		
		// bcrypt online https://bcrypt-generator.com/
		
		// password "john" is externally encrypted to the following
		UserDetails user1 = User.withUsername("john")
			     .password("$2a$12$aDpjiq8LVlZTUI8lL1VSA.Wk5sCct3tzXRfyHoK7tPvWdiH8MF3Y.")
			     .roles("EMPLOYEE")
			     .build();
		
		// password "mary123" is externally encrypted to the following
		UserDetails user2 = User.withUsername("mary")
			     .password("$2a$12$W93sFyOgycXNkFoLQUWaNO/Z8eBVaJ9f9ZjoAwnax7UgMTvAHVgyG")
			     .roles("EMPLOYEE", "ADMIN")
			     .build();
		
		auth.inMemoryAuthentication().withUser(user1).withUser(user2);
		
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
	    return new BCryptPasswordEncoder();
	}	
}







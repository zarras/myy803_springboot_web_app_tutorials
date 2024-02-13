package myy803.springboot.sb_tutorial_4_thymeleaf_security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

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
public class EmployeeSecurityConfig {

	@Bean
    public static PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests((authorize) -> {
            authorize.anyRequest().authenticated();
        }).httpBasic(Customizer.withDefaults());
        return http.build();
    }
        
    @Bean
    public UserDetailsService userDetailsService() {
        
        UserDetails peter = User.builder().username("peter").password(passwordEncoder().encode("peter@123")).roles("USER")
                .build();
        
        UserDetails admin = User.builder().username("admin").password(passwordEncoder().encode("admin")).roles("ADMIN")
                .build();
        return new InMemoryUserDetailsManager(peter,admin);
    }
}







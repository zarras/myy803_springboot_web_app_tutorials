package myy803.springboot.sb_tutorial_6_thymeleaf_security.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class EmployeeApplicationSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
    DataSource dataSource;

	//Enable jdbc authentication
    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource);
    }

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests() // the requests will be authenticated
		.antMatchers("/*").hasAnyRole("USER", "ADMIN") // match specific apache ant reg exprs for urls and specify rights
		.antMatchers("/login*").permitAll()
		.anyRequest().authenticated()
		.and() // get back the http security object and chain configurations 
		.formLogin(); // specifically generate a default login page
	}
	
		
}






